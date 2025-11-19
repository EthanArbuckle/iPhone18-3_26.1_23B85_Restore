unint64_t sub_1D4F2FB80()
{
  result = qword_1EC7EB888;
  if (!qword_1EC7EB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB888);
  }

  return result;
}

unint64_t sub_1D4F2FBD4()
{
  result = qword_1EC7EB898;
  if (!qword_1EC7EB898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F39A68(&qword_1EC7EB8A0, MEMORY[0x1E69774C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB898);
  }

  return result;
}

void VideoLocale.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  v7 = *(v0 + 34);
  v8 = *(v0 + 35);
  v9 = *(v0 + 36);
  v10 = *(v0 + 37);
  v11 = *(v0 + 38);
  v12 = *(v0 + 39);
  v13 = v0[5];
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();

  sub_1D4F31AC0();
}

uint64_t VideoLocale.hashValue.getter()
{
  sub_1D56162D8();
  VideoLocale.hash(into:)();
  return sub_1D5616328();
}

uint64_t VideoLocale.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8A8, &qword_1D561EE70);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F2FB80();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v10 = sub_1D5615F98();
  v12 = v11;
  v32 = v10;
  OUTLINED_FUNCTION_44_7(1);
  v13 = sub_1D5615F98();
  v15 = v14;
  v31 = v13;
  OUTLINED_FUNCTION_44_7(2);
  v30 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(3);
  v28 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(4);
  v27 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(5);
  v25 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(6);
  v24 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(7);
  v23 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(8);
  v22 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(9);
  v21 = sub_1D5615FA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  v46 = 10;
  sub_1D4F31CF4();
  sub_1D5615FD8();
  v20 = v28 & 1;
  v29 = v25 & 1;
  v16 = OUTLINED_FUNCTION_109_0();
  v17(v16);
  v26 = v47;
  *&v33 = v32;
  *(&v33 + 1) = v12;
  *&v34 = v31;
  *(&v34 + 1) = v15;
  LOBYTE(v35) = v30 & 1;
  BYTE1(v35) = v20;
  BYTE2(v35) = v27 & 1;
  BYTE3(v35) = v29;
  BYTE4(v35) = v24 & 1;
  BYTE5(v35) = v23 & 1;
  BYTE6(v35) = v22 & 1;
  BYTE7(v35) = v21 & 1;
  *(&v35 + 1) = v47;
  v18 = v34;
  *a2 = v33;
  a2[1] = v18;
  a2[2] = v35;
  sub_1D4F0A60C(&v33, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v32;
  v36[1] = v12;
  v36[2] = v31;
  v36[3] = v15;
  v37 = v30 & 1;
  v38 = v20;
  v39 = v27 & 1;
  v40 = v29;
  v41 = v24 & 1;
  v42 = v23 & 1;
  v43 = v22 & 1;
  v44 = v21 & 1;
  v45 = v26;
  return sub_1D4F0A668(v36);
}

uint64_t sub_1D4F30204()
{
  sub_1D56162D8();
  VideoLocale.hash(into:)();
  return sub_1D5616328();
}

void sub_1D4F30240()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = sub_1D560F988();
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDB8, &qword_1D561F328);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_17(v12, v35);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v15 = OUTLINED_FUNCTION_1_28(v1);
    v16(v15);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDC0, &qword_1D561F330);
    v18 = OUTLINED_FUNCTION_5_13(v17);
    v19(v18);
    v20 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v20, v21, v22, v23);
LABEL_7:
    v24 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v24, v25, &qword_1EC7EBDB8, &qword_1D561F328);
    v26 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v26);
    if (v27)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v28 = OUTLINED_FUNCTION_11_14();
    v29(v28);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    OUTLINED_FUNCTION_133_1();
    sub_1D4F39A68(&qword_1EC7EBDC8, v30);
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v14 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v14 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDC0, &qword_1D561F330);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v14);
  }

  __break(1u);
}

void sub_1D4F30474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v100 = v24;
  v25 = type metadata accessor for StorePlatformGenericMusicItem();
  v26 = OUTLINED_FUNCTION_69(v25);
  v105 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v107 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB918, &qword_1D561F0F8);
  v32 = OUTLINED_FUNCTION_22(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  v106 = v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v98 - v37);
  v40 = v23 + 64;
  v39 = *(v23 + 64);
  v41 = *(v23 + 32);
  OUTLINED_FUNCTION_46_2();
  v44 = v43 & v42;
  v46 = (v45 + 63) >> 6;
  OUTLINED_FUNCTION_179_0(&a11);

  v47 = 0;
  v48 = 0;
  v99 = v40;
  v98 = v46;
  v104 = v38;
  if (v44)
  {
LABEL_2:
    v103 = v47;
    v49 = v48;
LABEL_7:
    v102 = (v44 - 1) & v44;
    v101 = v49;
    OUTLINED_FUNCTION_96_1();
    v51 = *v50;
    v52 = v50[1];
    v55 = *(v54 + 8 * v53);
    memcpy(v109, v100, sizeof(v109));

    OUTLINED_FUNCTION_202_0();
    sub_1D5614E28();

    v57 = v55 + 64;
    v56 = *(v55 + 64);
    v58 = *(v55 + 32);
    OUTLINED_FUNCTION_46_2();
    v61 = v60 & v59;
    v63 = (v62 + 63) >> 6;
    OUTLINED_FUNCTION_179_0(&a18);
    swift_bridgeObjectRetain_n();
    v64 = 0;
    v65 = 0;
    while (1)
    {
      v108 = v64;
      if (!v61)
      {
        break;
      }

LABEL_14:
      v61 &= v61 - 1;
      OUTLINED_FUNCTION_96_1();
      v70 = *v68;
      v69 = v68[1];
      v71 = *(v105 + 72);
      OUTLINED_FUNCTION_54_7();
      v72 = v107;
      sub_1D4F399C0(v73, v107, v74);
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB920, &qword_1D561F100);
      v76 = *(v75 + 48);
      v77 = v106;
      *v106 = v70;
      v77[1] = v69;
      v66 = v77;
      OUTLINED_FUNCTION_30_7();
      sub_1D4F39AFC(v72, v79 + v78, v80);
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_151_2(v81, v82, v83, v75);
      v38 = v104;
LABEL_15:
      sub_1D4F39A1C(v66, v38, &qword_1EC7EB918, &qword_1D561F0F8);
      v84 = OUTLINED_FUNCTION_159_0();
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(v84, v85);
      OUTLINED_FUNCTION_10(v38);
      if (v87)
      {

        MEMORY[0x1DA6EC0D0](v108);
        swift_bridgeObjectRelease_n();
        v47 = sub_1D5616328() ^ v103;
        v48 = v101;
        v40 = v99;
        v46 = v98;
        v44 = v102;
        if (!v102)
        {
          goto LABEL_3;
        }

        goto LABEL_2;
      }

      v88 = *(v86 + 48);
      v89 = *v38;
      v90 = v38[1];
      OUTLINED_FUNCTION_30_7();
      sub_1D4F39AFC(v38 + v91, v107, v92);
      OUTLINED_FUNCTION_187_0();
      sub_1D5614E28();

      sub_1D56070E8();
      OUTLINED_FUNCTION_141_1();
      v64 = sub_1D5616328() ^ v108;
    }

    v66 = v106;
    while (1)
    {
      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v67 >= v63)
      {
        v93 = OUTLINED_FUNCTION_159_0();
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(v93, v94);
        OUTLINED_FUNCTION_146_0(v66, v96, v97, v95);
        v61 = 0;
        goto LABEL_15;
      }

      v61 = *(v57 + 8 * v67);
      ++v65;
      if (v61)
      {
        v65 = v67;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v49 >= v46)
      {

        MEMORY[0x1DA6EC0D0](v47);
        OUTLINED_FUNCTION_46();
        return;
      }

      v44 = *(v40 + 8 * v49);
      ++v48;
      if (v44)
      {
        v103 = v47;
        goto LABEL_7;
      }
    }
  }

  __break(1u);
}

void sub_1D4F308AC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_105_2(v4);
  v5 = type metadata accessor for StorePlatformGenericMusicItem();
  v6 = OUTLINED_FUNCTION_69(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_177(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB918, &qword_1D561F0F8);
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_175_0();
  if (v0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_174_0();
      OUTLINED_FUNCTION_39_8(v16);
      OUTLINED_FUNCTION_54_7();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F399C0(v17, v18, v19);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB920, &qword_1D561F100);
      OUTLINED_FUNCTION_79_2(v20);
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_189_1(v21, v22);
      v23 = OUTLINED_FUNCTION_74_5();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);

      OUTLINED_FUNCTION_186_1();
LABEL_6:
      v27 = OUTLINED_FUNCTION_184();
      sub_1D4F39A1C(v27, v28, &qword_1EC7EB918, &qword_1D561F0F8);
      v29 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_20_23(v29);
      if (v30)
      {
        break;
      }

      OUTLINED_FUNCTION_171_0();
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F39AFC(v31, v32, v33);
      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_153_2();

      OUTLINED_FUNCTION_185_0();
      sub_1D56070E8();
      OUTLINED_FUNCTION_141_1();
      v3 ^= sub_1D5616328();
      if (!v0)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_191_0();
    OUTLINED_FUNCTION_46();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v15 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v15 >= v1)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB920, &qword_1D561F100);
        OUTLINED_FUNCTION_82_3(v34);
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_172_1(v15);
    }

    __break(1u);
  }
}

void sub_1D4F30ABC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_105_2(v4);
  v5 = type metadata accessor for MusicDownloadedSongCatalogProperties();
  v6 = OUTLINED_FUNCTION_69(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_177(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDD8, &qword_1D561F338);
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_175_0();
  if (v0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_174_0();
      OUTLINED_FUNCTION_39_8(v16);
      OUTLINED_FUNCTION_68_6();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F399C0(v17, v18, v19);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE0, &unk_1D561F340);
      OUTLINED_FUNCTION_79_2(v20);
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_189_1(v21, v22);
      v23 = OUTLINED_FUNCTION_74_5();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);

      OUTLINED_FUNCTION_186_1();
LABEL_6:
      v27 = OUTLINED_FUNCTION_184();
      sub_1D4F39A1C(v27, v28, &qword_1EC7EBDD8, &qword_1D561F338);
      v29 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_20_23(v29);
      if (v30)
      {
        break;
      }

      OUTLINED_FUNCTION_171_0();
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F39AFC(v31, v32, v33);
      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_153_2();

      v34 = OUTLINED_FUNCTION_185_0();
      MusicDownloadedSongCatalogProperties.hash(into:)(v34);
      OUTLINED_FUNCTION_157_3();
      sub_1D4F39B58();
      v3 ^= sub_1D5616328();
      if (!v0)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_191_0();
    OUTLINED_FUNCTION_46();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v15 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v15 >= v1)
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE0, &unk_1D561F340);
        OUTLINED_FUNCTION_82_3(v35);
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_172_1(v15);
    }

    __break(1u);
  }
}

void sub_1D4F30CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v146 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_48(&v132 - v30);
  v141 = sub_1D5610088();
  v31 = OUTLINED_FUNCTION_4(v141);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v36);
  v148 = sub_1D560D9A8();
  v37 = OUTLINED_FUNCTION_4(v148);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13();
  v150 = v42;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v132 - v44;
  v46 = type metadata accessor for GenericMusicItem();
  v47 = OUTLINED_FUNCTION_69(v46);
  v139 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_59_0();
  v53 = v51 - v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v55);
  v153 = type metadata accessor for LooselyComparableTypedIdentifier();
  v56 = OUTLINED_FUNCTION_4(v153);
  v137 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_59_0();
  v62 = (v60 - v61);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_2();
  v136 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB218, &unk_1D561F360);
  v66 = OUTLINED_FUNCTION_22(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13();
  v149 = v69;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v132 - v71;
  v73 = *(v24 + 64);
  v147 = v24 + 64;
  v74 = *(v24 + 32);
  OUTLINED_FUNCTION_15_0();
  v77 = v76 & v75;
  OUTLINED_FUNCTION_142_1();
  v145 = (v39 + 16);
  v134 = v33 + 32;
  v133 = v33 + 8;
  OUTLINED_FUNCTION_179_0(&a15);

  v78 = 0;
  v79 = 0;
  v151 = v72;
  v152 = v62;
  v154 = v53;
  v144 = (v39 + 8);
  v143 = v20;
  while (1)
  {
    v155 = v78;
    if (!v77)
    {
      break;
    }

    v80 = v45;
LABEL_9:
    OUTLINED_FUNCTION_200_0();
    v84 = v140;
    OUTLINED_FUNCTION_198_0(*(v140 + 48));
    OUTLINED_FUNCTION_128_3();
    v85 = v136;
    sub_1D4F399C0(v86, v136, v87);
    OUTLINED_FUNCTION_198_0(*(v84 + 56));
    OUTLINED_FUNCTION_67_7();
    v88 = v138;
    sub_1D4F399C0(v89, v138, v90);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB210, &unk_1D561DF60);
    v92 = *(v91 + 48);
    OUTLINED_FUNCTION_51_9();
    v93 = v85;
    v94 = v149;
    sub_1D4F39AFC(v93, v149, v95);
    OUTLINED_FUNCTION_50_6();
    sub_1D4F39AFC(v88, v94 + v92, v96);
    OUTLINED_FUNCTION_64_0();
    v97 = v91;
    v81 = v94;
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v97);
    v62 = v152;
    v45 = v80;
    v82 = v150;
    v72 = v151;
LABEL_10:
    sub_1D4F39A1C(v81, v72, &qword_1EC7EB218, &unk_1D561F360);
    v101 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_10(v72);
    if (v102)
    {

      MEMORY[0x1DA6EC0D0](v155);
      OUTLINED_FUNCTION_46();
      return;
    }

    v103 = *(v101 + 48);
    OUTLINED_FUNCTION_51_9();
    sub_1D4F39AFC(v72, v62, v104);
    OUTLINED_FUNCTION_50_6();
    sub_1D4F39AFC(&v72[v103], v154, v105);
    memcpy(v156, v146, sizeof(v156));
    v106 = *v62;
    v107 = v62[1];
    sub_1D5614E28();
    v108 = v148;
    (*v145)(v45, v62 + *(v153 + 20), v148);
    sub_1D560D948();
    OUTLINED_FUNCTION_134_1();
    sub_1D4F39A68(&qword_1EDD53C20, v109);
    v110 = v45;
    v111 = sub_1D5614D18();
    v112 = *v144;
    (*v144)(v82, v108);
    if (v111 & 1) != 0 || (sub_1D560D998(), v113 = OUTLINED_FUNCTION_203_1(), v112(v82, v108), (v113))
    {
      v112(v110, v108);
      v45 = v110;
    }

    else
    {
      sub_1D560D918();
      v129 = OUTLINED_FUNCTION_203_1();
      v112(v82, v108);
      v112(v110, v108);
      v45 = v110;
      if ((v129 & 1) == 0)
      {
        OUTLINED_FUNCTION_134_1();
        sub_1D4F39A68(&qword_1EDD53C28, v130);
        OUTLINED_FUNCTION_99_0();
        v62 = v152;
        sub_1D5614CB8();
        OUTLINED_FUNCTION_49_5();
        sub_1D4F39B58();
        v72 = v151;
        v20 = v143;
        goto LABEL_18;
      }
    }

    v62 = v152;
    v114 = v142;
    sub_1D4F39AB0(v152 + *(v153 + 24), v142, &qword_1EC7EA358, &unk_1D561DF50);
    v115 = v141;
    OUTLINED_FUNCTION_57(v114, 1, v141);
    v20 = v143;
    if (v102)
    {
      OUTLINED_FUNCTION_49_5();
      sub_1D4F39B58();
      OUTLINED_FUNCTION_202_0();
      sub_1D4E50004(v116, v117, v118);
    }

    else
    {
      OUTLINED_FUNCTION_195(&a9);
      v119 = v135;
      v120(v135, v114, v115);
      sub_1D4F39A68(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
      OUTLINED_FUNCTION_99_0();
      sub_1D5614CB8();
      OUTLINED_FUNCTION_195(&v157);
      v121(v119, v115);
      OUTLINED_FUNCTION_49_5();
      sub_1D4F39B58();
    }

    v72 = v151;
LABEL_18:
    GenericMusicItem.hash(into:)(v156, v122, v123, v124, v125, v126, v127, v128, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143);
    sub_1D4F39B58();
    v78 = sub_1D5616328() ^ v155;
  }

  v81 = v149;
  v82 = v150;
  while (1)
  {
    v83 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v83 >= v20)
    {
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB210, &unk_1D561DF60);
      OUTLINED_FUNCTION_97_4(v131);
      v77 = 0;
      goto LABEL_10;
    }

    v77 = *(v147 + 8 * v83);
    ++v79;
    if (v77)
    {
      v80 = v45;
      v79 = v83;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1D4F3148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v103 = sub_1D5614408();
  v25 = OUTLINED_FUNCTION_4(v103);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v102 = v30;
  OUTLINED_FUNCTION_70_0();
  v101 = sub_1D5614898();
  v31 = OUTLINED_FUNCTION_4(v101);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v36);
  v99 = sub_1D5613AF8();
  v37 = OUTLINED_FUNCTION_4(v99);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v40);
  v106 = type metadata accessor for MusicSuggestedPivotContainer();
  v41 = OUTLINED_FUNCTION_14(v106);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  v109 = v44;
  OUTLINED_FUNCTION_70_0();
  v45 = type metadata accessor for MusicSuggestedPivotEntry();
  v46 = OUTLINED_FUNCTION_69(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_2();
  v104 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD28, &unk_1D561F2F0);
  v52 = OUTLINED_FUNCTION_22(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_59_0();
  v57 = v55 - v56;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_2();
  v107 = v59;
  v61 = v24 + 64;
  v60 = *(v24 + 64);
  v62 = *(v24 + 32);
  OUTLINED_FUNCTION_15_0();
  v65 = v64 & v63;
  v67 = (v66 + 63) >> 6;
  v105 = v24;

  OUTLINED_FUNCTION_103_1();
  v108 = v20;
  while (1)
  {
    v110 = v68;
    if (!v65)
    {
      break;
    }

LABEL_8:
    OUTLINED_FUNCTION_199_0();
    v73 = v72 | (v71 << 6);
    OUTLINED_FUNCTION_198_0(*(v105 + 48));
    OUTLINED_FUNCTION_127_2();
    sub_1D4F399C0(v74, v104, v75);
    v76 = *(*(v105 + 56) + v73);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD30, &unk_1D562F070);
    v77 = *(v27 + 12);
    OUTLINED_FUNCTION_48_5();
    sub_1D4F39AFC(v104, v57, v78);
    *(v57 + v77) = v76;
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v27);
    v69 = v107;
LABEL_9:
    v82 = OUTLINED_FUNCTION_159_0();
    sub_1D4F39A1C(v82, v83, &qword_1EC7EBD28, &unk_1D561F2F0);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD30, &unk_1D562F070);
    OUTLINED_FUNCTION_20_23(v84);
    if (v85)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v86 = *(v27 + 12);
    OUTLINED_FUNCTION_48_5();
    sub_1D4F39AFC(v69, v108, v87);
    v88 = *(v69 + v86);
    OUTLINED_FUNCTION_92_1();
    sub_1D4F399C0(v108, v109, type metadata accessor for MusicSuggestedPivotContainer);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_195(&a12);
        v90 = v100;
        v91 = v101;
        v92(v100, v109, v101);
        MEMORY[0x1DA6EC0D0](1);
        sub_1D4F39A68(&qword_1EC7EB6C8, MEMORY[0x1E69773E0]);
        OUTLINED_FUNCTION_99_0();
        sub_1D5614CB8();
        v93 = &a11;
      }

      else
      {
        OUTLINED_FUNCTION_195(&a14);
        v90 = v102;
        v91 = v103;
        v95(v102, v109, v103);
        MEMORY[0x1DA6EC0D0](2);
        sub_1D4F39A68(&qword_1EC7EBD38, MEMORY[0x1E6977180]);
        OUTLINED_FUNCTION_99_0();
        sub_1D5614CB8();
        v93 = &a13;
      }
    }

    else
    {
      OUTLINED_FUNCTION_195(&a10);
      v90 = v98;
      v91 = v99;
      v94(v98, v109, v99);
      MEMORY[0x1DA6EC0D0](0);
      sub_1D4F39A68(&qword_1EC7EB598, MEMORY[0x1E6976D28]);
      OUTLINED_FUNCTION_99_0();
      sub_1D5614CB8();
      v93 = &a9;
    }

    OUTLINED_FUNCTION_195(v93);
    v96(v90, v91);
    OUTLINED_FUNCTION_126_1();
    sub_1D4F39B58();
    v27 = &v111;
    MEMORY[0x1DA6EC0D0](v88);
    v68 = sub_1D5616328() ^ v110;
  }

  v69 = v107;
  while (1)
  {
    v70 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v70 >= v67)
    {
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD30, &unk_1D562F070);
      OUTLINED_FUNCTION_140_2(v97);
      v65 = 0;
      goto LABEL_9;
    }

    v65 = *(v61 + 8 * v70);
    ++v33;
    if (v65)
    {
      v33 = v70;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1D4F31AC0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = sub_1D5614A88();
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB928, &qword_1D561F108);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_17(v12, v35);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v15 = OUTLINED_FUNCTION_1_28(v1);
    v16(v15);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB930, &unk_1D561F110);
    v18 = OUTLINED_FUNCTION_5_13(v17);
    v19(v18);
    v20 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v20, v21, v22, v23);
LABEL_7:
    v24 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v24, v25, &qword_1EC7EB928, &qword_1D561F108);
    v26 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v26);
    if (v27)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v28 = OUTLINED_FUNCTION_11_14();
    v29(v28);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    OUTLINED_FUNCTION_73_4();
    sub_1D4F39A68(&qword_1EC7EB938, v30);
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v14 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v14 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB930, &unk_1D561F110);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v14);
  }

  __break(1u);
}

unint64_t sub_1D4F31CF4()
{
  result = qword_1EDD528E8;
  if (!qword_1EDD528E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F39A68(&qword_1EDD52A38, MEMORY[0x1E69774C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD528E8);
  }

  return result;
}

unint64_t sub_1D4F31DB4()
{
  result = qword_1EC7EB8B0;
  if (!qword_1EC7EB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB8B0);
  }

  return result;
}

uint64_t sub_1D4F31E08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1D4F31E48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoLocale.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VideoLocale.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4F3200C()
{
  result = qword_1EC7EB8B8;
  if (!qword_1EC7EB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB8B8);
  }

  return result;
}

unint64_t sub_1D4F32064()
{
  result = qword_1EC7EB8C0;
  if (!qword_1EC7EB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB8C0);
  }

  return result;
}

unint64_t sub_1D4F320BC()
{
  result = qword_1EC7EB8C8;
  if (!qword_1EC7EB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB8C8);
  }

  return result;
}

void sub_1D4F32110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v94 = v26;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  OUTLINED_FUNCTION_4(v103);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v102 = &v91 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD40, &unk_1D563AE30);
  v32 = OUTLINED_FUNCTION_22(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  v101 = v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v91 - v37;
  v40 = v25 + 64;
  v39 = *(v25 + 64);
  v41 = *(v25 + 32);
  OUTLINED_FUNCTION_46_2();
  v44 = v43 & v42;
  v46 = (v45 + 63) >> 6;
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_179_0(&v106[56]);

  v47 = 0;
  v48 = 0;
  v99 = v38;
  v93 = v40;
  v92 = v46;
  v98 = v21;
  if (v44)
  {
LABEL_2:
    v97 = v47;
    v49 = v48;
LABEL_7:
    v50 = (v44 - 1) & v44;
    v96 = v50;
    v95 = v49;
    OUTLINED_FUNCTION_96_1();
    v52 = *v51;
    v53 = v51[1];
    v56 = *(v55 + 8 * v54);
    memcpy(v106, v94, 0x48uLL);

    OUTLINED_FUNCTION_93_3();

    OUTLINED_FUNCTION_201_0();
    v57 = *(v56 + 32);
    OUTLINED_FUNCTION_46_2();
    v60 = v59 & v58;
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_179_0(&a16);

    v61 = 0;
    v62 = 0;
    v100 = v20;
    while (1)
    {
      v104 = v61;
      if (!v60)
      {
        break;
      }

LABEL_14:
      OUTLINED_FUNCTION_199_0();
      OUTLINED_FUNCTION_96_1();
      v66 = *v65;
      v52 = v65[1];
      OUTLINED_FUNCTION_178_0(v67);
      v69 = v102;
      v68 = v103;
      v70(v102);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
      v72 = *(v71 + 48);
      v73 = v101;
      *v101 = v66;
      *(v73 + 1) = v52;
      v74 = v69;
      v21 = v98;
      (*(v38 + 4))(&v73[v72], v74, v68);
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_151_2(v75, v76, v77, v71);
      v38 = v99;
      v20 = v100;
LABEL_15:
      v78 = OUTLINED_FUNCTION_90_2();
      sub_1D4F39A1C(v78, v79, &qword_1EC7EBD40, &unk_1D563AE30);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
      OUTLINED_FUNCTION_20_23(v80);
      if (v81)
      {

        MEMORY[0x1DA6EC0D0](v104);

        v47 = sub_1D5616328() ^ v97;
        v48 = v95;
        v40 = v93;
        v46 = v92;
        v44 = v96;
        if (!v96)
        {
          goto LABEL_3;
        }

        goto LABEL_2;
      }

      v82 = *(v52 + 12);
      v83 = *v38;
      v84 = *(v38 + 1);
      v86 = v102;
      v85 = v103;
      (*v21)(v102, &v38[v82], v103);
      OUTLINED_FUNCTION_187_0();
      sub_1D5614E28();

      sub_1D4F38C38();
      sub_1D5614CB8();
      OUTLINED_FUNCTION_195(&a17);
      v87(v86, v85);
      v52 = &v105;
      v61 = sub_1D5616328() ^ v104;
    }

    v63 = v101;
    while (1)
    {
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v64 >= v50)
      {
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
        OUTLINED_FUNCTION_146_0(v63, v89, v90, v88);
        v60 = 0;
        goto LABEL_15;
      }

      v60 = *(v20 + 8 * v64);
      ++v62;
      if (v60)
      {
        v62 = v64;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v49 >= v46)
      {

        MEMORY[0x1DA6EC0D0](v47);
        OUTLINED_FUNCTION_46();
        return;
      }

      v44 = *(v40 + 8 * v49);
      ++v48;
      if (v44)
      {
        v97 = v47;
        goto LABEL_7;
      }
    }
  }

  __break(1u);
}

void sub_1D4F325AC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE40, &qword_1D561F370);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE48, &qword_1D561F378);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE50, &unk_1D561F380);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBE48, &qword_1D561F378);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F39540();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE50, &unk_1D561F380);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F327C4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE68, &qword_1D561F390);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE70, &qword_1D561F398);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBE68, &qword_1D561F390);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F395F4();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE70, &qword_1D561F398);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

uint64_t sub_1D4F329DC(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_15_0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  v13 = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  do
  {
    v25 = v12;
LABEL_7:
    v15 = __clz(__rbit64(v8)) | (v13 << 6);
    v16 = (*(a2 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(a2 + 56) + 8 * v15);
    memcpy(__dst, a1, sizeof(__dst));

    OUTLINED_FUNCTION_202_0();
    sub_1D5614E28();

    MEMORY[0x1DA6EC0D0](*(v19 + 16));
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 40);
      do
      {
        v22 = *(v21 - 1);
        v23 = *v21;

        OUTLINED_FUNCTION_202_0();
        sub_1D5614E28();

        v21 += 2;
        --v20;
      }

      while (v20);
    }

    v8 &= v8 - 1;

    result = sub_1D5616328();
    v12 = result ^ v25;
  }

  while (v8);
LABEL_3:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return MEMORY[0x1DA6EC0D0](v12);
    }

    v8 = *(v4 + 8 * v14);
    ++v13;
    if (v8)
    {
      v25 = v12;
      v13 = v14;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4F32B80()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB20, &unk_1D561F250);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB28, &unk_1D5623440);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB30, &unk_1D561F260);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBB28, &unk_1D5623440);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F3759C();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB30, &unk_1D561F260);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F32D98()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAF8, &qword_1D563B230);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB00, &qword_1D561F240);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB08, &qword_1D561F248);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBB00, &qword_1D561F240);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F37650();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB08, &qword_1D561F248);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F32FB0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD0, &qword_1D561F220);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD8, &qword_1D561F228);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAE0, &unk_1D561F230);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBAD8, &qword_1D561F228);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F37704();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAE0, &unk_1D561F230);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F331C8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAA8, &unk_1D56223D0);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB0, &qword_1D561F210);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB8, &qword_1D561F218);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBAB0, &qword_1D561F210);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F377B8();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB8, &qword_1D561F218);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F333E0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA88, &qword_1D561F1F8);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA90, &unk_1D561F200);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBA88, &qword_1D561F1F8);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F3786C();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA90, &unk_1D561F200);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F335F8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA60, &qword_1D561F1E0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA68, &qword_1D561F1E8);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBA60, &qword_1D561F1E0);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F37920();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA68, &qword_1D561F1E8);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F33810()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBE8, &unk_1D561F2D0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBF0, &unk_1D5623470);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBBE8, &unk_1D561F2D0);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F0AFD4();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBF0, &unk_1D5623470);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F33A28()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA38, &unk_1D5623480);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA40, &unk_1D561F1D0);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBA38, &unk_1D5623480);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F379D4();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA40, &unk_1D561F1D0);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F33C40()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA10, &unk_1D5623490);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA18, &unk_1D561F1B0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA20, &unk_1D56234A0);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBA18, &unk_1D561F1B0);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F37A88();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA20, &unk_1D56234A0);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F33E58()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC8, &unk_1D56234B0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBD0, &unk_1D561F2C0);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBBC8, &unk_1D56234B0);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F37B3C();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBD0, &unk_1D561F2C0);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F34070()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB98, &unk_1D56234C0);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA0, &unk_1D561F2A0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA8, &unk_1D56234D0);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBBA0, &unk_1D561F2A0);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F37BF0();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA8, &unk_1D56234D0);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F34288()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9E8, &unk_1D561F190);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F0, &unk_1D56234E0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F8, &unk_1D561F1A0);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EB9F0, &unk_1D56234E0);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F37CA4();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F8, &unk_1D561F1A0);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F344A0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9C8, &unk_1D561F180);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9D0, &qword_1D56234F0);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EB9C8, &unk_1D561F180);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F37D58();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9D0, &qword_1D56234F0);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F346B8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9A0, &qword_1D561F160);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9A8, &qword_1D561F168);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9B0, &unk_1D561F170);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EB9A8, &qword_1D561F168);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F37E0C();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9B0, &unk_1D561F170);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F348D0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB980, &unk_1D561F150);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB988, &unk_1D5623510);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EB980, &unk_1D561F150);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F37EC0();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB988, &unk_1D5623510);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F34AE8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C8, &unk_1D561F130);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB960, &unk_1D5623520);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB968, &unk_1D561F140);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EB960, &unk_1D5623520);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F37F74();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB968, &unk_1D561F140);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F34D00()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB940, &qword_1D561F120);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB948, &qword_1D561F128);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EB940, &qword_1D561F120);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F38028();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB948, &qword_1D561F128);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F34F18()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB70, &qword_1D561F280);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB78, &qword_1D561F288);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB80, &unk_1D561F290);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBB78, &qword_1D561F288);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F380DC();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB80, &unk_1D561F290);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F35130()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB50, &qword_1D561F270);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB58, &qword_1D561F278);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBB50, &qword_1D561F270);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F38190();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB58, &qword_1D561F278);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F35348()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE80, &qword_1D561F3A0);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE88, &qword_1D561F3A8);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE90, &unk_1D561F3B0);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBE88, &qword_1D561F3A8);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F396A8();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE90, &unk_1D561F3B0);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F35560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v114 = v26;
  v128 = sub_1D5614A88();
  v27 = OUTLINED_FUNCTION_4(v128);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v127 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB928, &qword_1D561F108);
  v32 = OUTLINED_FUNCTION_22(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v105 - v36;
  v38 = type metadata accessor for VideoCredit();
  v39 = OUTLINED_FUNCTION_4(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v45 = (v105 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = *(v25 + 64);
  v110 = v25 + 64;
  v47 = *(v25 + 32);
  OUTLINED_FUNCTION_46_2();
  v50 = v49 & v48;
  v109 = (v51 + 63) >> 6;
  OUTLINED_FUNCTION_143_1();

  v113 = 0;
  v52 = 0;
  v123 = v37;
  v122 = v21;
  if (!v50)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v111 = v52;
    v112 = v50;
    v54 = __clz(__rbit64(v50)) | (v52 << 6);
    v55 = (*(v25 + 48) + 16 * v54);
    v57 = *v55;
    v56 = v55[1];
    v58 = *(*(v25 + 56) + 8 * v54);

    if (!v56)
    {
LABEL_25:

      MEMORY[0x1DA6EC0D0](v113);
      OUTLINED_FUNCTION_46();
      return;
    }

    memcpy(v131, v114, sizeof(v131));
    sub_1D5614E28();

    MEMORY[0x1DA6EC0D0](*(v58 + 16));
    v116 = *(v58 + 16);
    if (v116)
    {
      v126 = v20;
      v108 = v25;
      v59 = 0;
      v120 = *(v38 + 20);
      v107 = v38;
      v119 = *(v38 + 24);
      v60 = *(v41 + 80);
      OUTLINED_FUNCTION_43_3();
      v105[1] = v61;
      v118 = v61 + v62;
      v106 = v41;
      v117 = *(v41 + 72);
      v115 = v45;
      while (2)
      {
        v121 = v59;
        OUTLINED_FUNCTION_129_1();
        sub_1D4F399C0(v63, v45, v64);
        v65 = *v45;
        v66 = v45[1];
        sub_1D5614E28();
        sub_1D560C0A8();
        sub_1D4F39A68(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
        OUTLINED_FUNCTION_99_0();
        v67 = (v45 + v120);
        sub_1D5614CB8();
        v68 = *(v45 + v119);
        v70 = v68 + 64;
        v69 = *(v68 + 64);
        v71 = *(v68 + 32);
        OUTLINED_FUNCTION_46_2();
        v74 = v73 & v72;
        v76 = (v75 + 63) >> 6;
        v125 = v77;

        OUTLINED_FUNCTION_103_1();
        v124 = v70;
        while (1)
        {
          v129 = v78;
          if (!v74)
          {
            while (1)
            {
              v79 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                break;
              }

              if (v79 >= v76)
              {
                v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB930, &unk_1D561F110);
                OUTLINED_FUNCTION_140_2(v104);
                v74 = 0;
                goto LABEL_16;
              }

              v74 = *(v70 + 8 * v79);
              ++v38;
              if (v74)
              {
                v38 = v79;
                goto LABEL_15;
              }
            }

            __break(1u);
            goto LABEL_25;
          }

LABEL_15:
          OUTLINED_FUNCTION_200_0();
          OUTLINED_FUNCTION_96_1();
          v81 = *v80;
          v67 = v80[1];
          OUTLINED_FUNCTION_178_0(v82);
          v84 = v127;
          v83 = v128;
          v85(v127);
          v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB930, &unk_1D561F110);
          v87 = *(v86 + 48);
          v88 = v126;
          *v126 = v81;
          *(v88 + 1) = v67;
          v89 = v84;
          v21 = v122;
          (*(v37 + 4))(&v88[v87], v89, v83);
          OUTLINED_FUNCTION_64_0();
          OUTLINED_FUNCTION_151_2(v90, v91, v92, v86);
          v37 = v123;
          v70 = v124;
LABEL_16:
          v93 = OUTLINED_FUNCTION_159_0();
          sub_1D4F39A1C(v93, v94, &qword_1EC7EB928, &qword_1D561F108);
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB930, &unk_1D561F110);
          OUTLINED_FUNCTION_20_23(v95);
          if (v96)
          {
            break;
          }

          v97 = *(v67 + 12);
          v98 = *v37;
          v99 = *(v37 + 1);
          v101 = v127;
          v100 = v128;
          (*v21)(v127, &v37[v97], v128);
          OUTLINED_FUNCTION_187_0();
          sub_1D5614E28();

          OUTLINED_FUNCTION_73_4();
          sub_1D4F39A68(&qword_1EC7EB938, v102);
          sub_1D5614CB8();
          OUTLINED_FUNCTION_195(&a17);
          v103(v101, v100);
          v67 = &v130;
          v78 = sub_1D5616328() ^ v129;
        }

        v59 = v121 + 1;
        MEMORY[0x1DA6EC0D0](v129);
        v45 = v115;
        sub_1D4F39B58();
        if (v59 != v116)
        {
          continue;
        }

        break;
      }

      v25 = v108;
      v20 = v126;
      v38 = v107;
      v41 = v106;
    }

    else
    {
    }

    v50 = (v112 - 1) & v112;
    v113 ^= sub_1D5616328();
    v52 = v111;
  }

  while (v50);
LABEL_2:
  while (1)
  {
    v53 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v53 >= v109)
    {
      goto LABEL_25;
    }

    v50 = *(v110 + 8 * v53);
    ++v52;
    if (v50)
    {
      v52 = v53;
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_1D4F35C24()
{
  OUTLINED_FUNCTION_47();
  v39[0] = v1;
  v3 = v2;
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v39 - v12;
  v15 = v3 + 64;
  v14 = *(v3 + 64);
  v16 = *(v3 + 32);
  OUTLINED_FUNCTION_15_0();
  v19 = v18 & v17;
  OUTLINED_FUNCTION_163_3();
  v39[1] = v20 + 16;
  v40 = v20;
  v21 = (v20 + 8);

  v22 = 0;
  v23 = 0;
  v43 = v0;
  v44 = v3 + 64;
  v41 = v3;
  v42 = v5;
  if (!v19)
  {
    goto LABEL_3;
  }

  do
  {
    v47 = v22;
LABEL_7:
    v46 = v19;
    v25 = __clz(__rbit64(v19)) | (v23 << 6);
    v26 = (*(v3 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(*(v3 + 56) + 8 * v25);
    memcpy(v48, v5, sizeof(v48));

    sub_1D5614E28();

    MEMORY[0x1DA6EC0D0](*(v29 + 16));
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = *(v40 + 80);
      OUTLINED_FUNCTION_43_3();
      v45 = v29;
      v33 = v29 + v32;
      v35 = *(v34 + 72);
      v36 = *(v34 + 16);
      v37 = v39[0];
      do
      {
        v38 = v36(v13, v33, v8);
        v37(v38);
        OUTLINED_FUNCTION_99_0();
        sub_1D5614CB8();
        (*v21)(v13, v8);
        v33 += v35;
        --v30;
      }

      while (v30);

      v3 = v41;
      v5 = v42;
    }

    else
    {
    }

    v19 = (v46 - 1) & v46;
    v22 = sub_1D5616328() ^ v47;
    v0 = v43;
    v15 = v44;
  }

  while (v19);
LABEL_3:
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v0)
    {

      MEMORY[0x1DA6EC0D0](v22);
      OUTLINED_FUNCTION_46();
      return;
    }

    v19 = *(v15 + 8 * v24);
    ++v23;
    if (v19)
    {
      v47 = v22;
      v23 = v24;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1D4F35E74()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_105_2(v4);
  v5 = type metadata accessor for StorePlatformTVEpisode();
  v6 = OUTLINED_FUNCTION_69(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_177(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8D0, &qword_1D561F0B0);
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_175_0();
  if (v0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_174_0();
      OUTLINED_FUNCTION_39_8(v16);
      OUTLINED_FUNCTION_72_8();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F399C0(v17, v18, v19);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8D8, &qword_1D561F0B8);
      OUTLINED_FUNCTION_79_2(v20);
      OUTLINED_FUNCTION_57_9();
      OUTLINED_FUNCTION_189_1(v21, v22);
      v23 = OUTLINED_FUNCTION_74_5();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);

      OUTLINED_FUNCTION_186_1();
LABEL_6:
      v27 = OUTLINED_FUNCTION_184();
      sub_1D4F39A1C(v27, v28, &qword_1EC7EB8D0, &qword_1D561F0B0);
      v29 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_20_23(v29);
      if (v30)
      {
        break;
      }

      OUTLINED_FUNCTION_171_0();
      OUTLINED_FUNCTION_57_9();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F39AFC(v31, v32, v33);
      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_153_2();

      OUTLINED_FUNCTION_185_0();
      sub_1D500D4CC();
      OUTLINED_FUNCTION_157_3();
      sub_1D4F39B58();
      v3 ^= sub_1D5616328();
      if (!v0)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_191_0();
    OUTLINED_FUNCTION_46();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v15 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v15 >= v1)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8D8, &qword_1D561F0B8);
        OUTLINED_FUNCTION_82_3(v34);
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_172_1(v15);
    }

    __break(1u);
  }
}

void sub_1D4F36098()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_105_2(v4);
  v5 = type metadata accessor for StorePlatformPlaylistEntry();
  v6 = OUTLINED_FUNCTION_69(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_177(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8E0, &qword_1D561F0C0);
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_175_0();
  if (v0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_174_0();
      OUTLINED_FUNCTION_39_8(v16);
      OUTLINED_FUNCTION_70_5();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F399C0(v17, v18, v19);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8E8, &qword_1D561F0C8);
      OUTLINED_FUNCTION_79_2(v20);
      OUTLINED_FUNCTION_56_7();
      OUTLINED_FUNCTION_189_1(v21, v22);
      v23 = OUTLINED_FUNCTION_74_5();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);

      OUTLINED_FUNCTION_186_1();
LABEL_6:
      v27 = OUTLINED_FUNCTION_184();
      sub_1D4F39A1C(v27, v28, &qword_1EC7EB8E0, &qword_1D561F0C0);
      v29 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_20_23(v29);
      if (v30)
      {
        break;
      }

      OUTLINED_FUNCTION_171_0();
      OUTLINED_FUNCTION_56_7();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F39AFC(v31, v32, v33);
      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_153_2();

      OUTLINED_FUNCTION_185_0();
      sub_1D4ECD60C();
      OUTLINED_FUNCTION_157_3();
      sub_1D4F39B58();
      v3 ^= sub_1D5616328();
      if (!v0)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_191_0();
    OUTLINED_FUNCTION_46();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v15 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v15 >= v1)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8E8, &qword_1D561F0C8);
        OUTLINED_FUNCTION_82_3(v34);
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_172_1(v15);
    }

    __break(1u);
  }
}

void sub_1D4F362BC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_105_2(v4);
  v5 = type metadata accessor for StorePlatformTVSeason();
  v6 = OUTLINED_FUNCTION_69(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_177(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB908, &qword_1D561F0E8);
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_175_0();
  if (v0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_174_0();
      OUTLINED_FUNCTION_39_8(v16);
      OUTLINED_FUNCTION_69_5();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F399C0(v17, v18, v19);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB910, &qword_1D561F0F0);
      OUTLINED_FUNCTION_79_2(v20);
      OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_189_1(v21, v22);
      v23 = OUTLINED_FUNCTION_74_5();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);

      OUTLINED_FUNCTION_186_1();
LABEL_6:
      v27 = OUTLINED_FUNCTION_184();
      sub_1D4F39A1C(v27, v28, &qword_1EC7EB908, &qword_1D561F0E8);
      v29 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_20_23(v29);
      if (v30)
      {
        break;
      }

      OUTLINED_FUNCTION_171_0();
      OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F39AFC(v31, v32, v33);
      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_153_2();

      OUTLINED_FUNCTION_185_0();
      sub_1D55ECE38();
      OUTLINED_FUNCTION_157_3();
      sub_1D4F39B58();
      v3 ^= sub_1D5616328();
      if (!v0)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_191_0();
    OUTLINED_FUNCTION_46();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v15 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v15 >= v1)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB910, &qword_1D561F0F0);
        OUTLINED_FUNCTION_82_3(v34);
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_172_1(v15);
    }

    __break(1u);
  }
}

void sub_1D4F364E0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_105_2(v2);
  v3 = type metadata accessor for StorePlatformSong();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v70 = v7;
  OUTLINED_FUNCTION_70_0();
  v8 = type metadata accessor for StorePlatformMusicVideo();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v69 = v12;
  OUTLINED_FUNCTION_70_0();
  v77 = type metadata accessor for StorePlatformTrack();
  v13 = OUTLINED_FUNCTION_4(v77);
  v75 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v19 = v17 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v69 - v22;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_2();
  v73 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8F8, &unk_1D565CF80);
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  v79 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v69 - v31);
  v34 = v0 + 64;
  v33 = *(v0 + 64);
  OUTLINED_FUNCTION_10_12();
  v37 = v36 & v35;
  OUTLINED_FUNCTION_142_1();
  v76 = v0;

  v38 = 0;
  v39 = 0;
  v74 = v19;
  v71 = v32;
  v72 = v23;
  while (1)
  {
    v80 = v38;
    if (!v37)
    {
      break;
    }

LABEL_8:
    v37 &= v37 - 1;
    OUTLINED_FUNCTION_96_1();
    v44 = *v42;
    v43 = v42[1];
    v45 = *(v75 + 72);
    OUTLINED_FUNCTION_42_10();
    v46 = v73;
    sub_1D4F399C0(v47, v73, v48);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB900, &qword_1D561F0E0) + 48);
    v40 = v79;
    *v79 = v44;
    *(v40 + 8) = v43;
    OUTLINED_FUNCTION_58_5();
    sub_1D4F39AFC(v46, v40 + v50, v51);
    v52 = OUTLINED_FUNCTION_74_5();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);

    v19 = v74;
    v32 = v71;
    v23 = v72;
LABEL_9:
    sub_1D4F39A1C(v40, v32, &qword_1EC7EB8F8, &unk_1D565CF80);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB900, &qword_1D561F0E0);
    OUTLINED_FUNCTION_22_11(v56);
    if (v57)
    {

      MEMORY[0x1DA6EC0D0](v80);
      OUTLINED_FUNCTION_46();
      return;
    }

    v58 = *(v40 + 48);
    v59 = *v32;
    v60 = v32[1];
    OUTLINED_FUNCTION_58_5();
    sub_1D4F39AFC(v32 + v61, v23, v62);
    memcpy(v81, v78, sizeof(v81));
    sub_1D5614E28();

    OUTLINED_FUNCTION_42_10();
    v63 = OUTLINED_FUNCTION_176();
    sub_1D4F399C0(v63, v64, v65);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_138_3();
      sub_1D4F39AFC(v19, v70, v66);
      MEMORY[0x1DA6EC0D0](1);
      sub_1D50F7428();
    }

    else
    {
      OUTLINED_FUNCTION_135_4();
      sub_1D4F39AFC(v19, v69, v67);
      MEMORY[0x1DA6EC0D0](0);
      sub_1D5383FB0();
    }

    sub_1D4F39B58();
    OUTLINED_FUNCTION_71_5();
    sub_1D4F39B58();
    v38 = sub_1D5616328() ^ v80;
  }

  v40 = v79;
  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v1)
    {
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB900, &qword_1D561F0E0);
      OUTLINED_FUNCTION_97_4(v68);
      v37 = 0;
      goto LABEL_9;
    }

    v37 = *(v34 + 8 * v41);
    ++v39;
    if (v37)
    {
      v39 = v41;
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t sub_1D4F368F4()
{
  result = qword_1EC7EB950;
  if (!qword_1EC7EB950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA768, &qword_1D5623380);
    sub_1D4F39A68(&qword_1EC7EB958, MEMORY[0x1E6975F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB950);
  }

  return result;
}

unint64_t sub_1D4F369A8()
{
  result = qword_1EC7EB970;
  if (!qword_1EC7EB970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB5C8, &unk_1D561F130);
    sub_1D4F39A68(&qword_1EC7EB978, MEMORY[0x1E6976090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB970);
  }

  return result;
}

unint64_t sub_1D4F36A5C()
{
  result = qword_1EC7EB990;
  if (!qword_1EC7EB990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA820, &unk_1D5623370);
    sub_1D4F39A68(&qword_1EC7EB998, MEMORY[0x1E6975A30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB990);
  }

  return result;
}

unint64_t sub_1D4F36B10()
{
  result = qword_1EC7EB9B8;
  if (!qword_1EC7EB9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB9A0, &qword_1D561F160);
    sub_1D4F39A68(&qword_1EC7EB9C0, type metadata accessor for CloudEditorialItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB9B8);
  }

  return result;
}

unint64_t sub_1D4F36BC4()
{
  result = qword_1EC7EB9D8;
  if (!qword_1EC7EB9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA828, &qword_1D5623400);
    sub_1D4F39A68(&qword_1EC7EB9E0, MEMORY[0x1E69756E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB9D8);
  }

  return result;
}

unint64_t sub_1D4F36C78()
{
  result = qword_1EC7EBA00;
  if (!qword_1EC7EBA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB9E8, &unk_1D561F190);
    sub_1D4F39A68(&qword_1EC7EBA08, type metadata accessor for CloudMusicMovie);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBA00);
  }

  return result;
}

unint64_t sub_1D4F36D2C()
{
  result = qword_1EC7EBA28;
  if (!qword_1EC7EBA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA10, &unk_1D5623490);
    sub_1D4F39A68(&qword_1EC7EBA30, MEMORY[0x1E6975FE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBA28);
  }

  return result;
}

unint64_t sub_1D4F36DE0()
{
  result = qword_1EC7EBA48;
  if (!qword_1EC7EBA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA770, &unk_1D561F1C0);
    sub_1D4F39A68(&qword_1EC7EBA50, MEMORY[0x1E69762A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBA48);
  }

  return result;
}

unint64_t sub_1D4F36E94()
{
  result = qword_1EC7EBA70;
  if (!qword_1EC7EBA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA58, &unk_1D5634110);
    sub_1D4F39A68(&qword_1EC7EBA78, MEMORY[0x1E6975B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBA70);
  }

  return result;
}

unint64_t sub_1D4F36F48()
{
  result = qword_1EC7EBA98;
  if (!qword_1EC7EBA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA80, &qword_1D561F1F0);
    sub_1D4F39A68(&qword_1EC7EBAA0, type metadata accessor for CloudTVEpisode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBA98);
  }

  return result;
}

unint64_t sub_1D4F36FFC()
{
  result = qword_1EC7EBAC0;
  if (!qword_1EC7EBAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAA8, &unk_1D56223D0);
    sub_1D4F39A68(&qword_1EC7EBAC8, type metadata accessor for CloudTVSeason);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBAC0);
  }

  return result;
}

unint64_t sub_1D4F370B0()
{
  result = qword_1EC7EBAE8;
  if (!qword_1EC7EBAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAD0, &qword_1D561F220);
    sub_1D4F39A68(&qword_1EC7EBAF0, type metadata accessor for CloudTVShow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBAE8);
  }

  return result;
}

unint64_t sub_1D4F37164()
{
  result = qword_1EC7EBB10;
  if (!qword_1EC7EBB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAF8, &qword_1D563B230);
    sub_1D4F39A68(&qword_1EC7EBB18, type metadata accessor for CloudUploadedAudio);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBB10);
  }

  return result;
}

unint64_t sub_1D4F37218()
{
  result = qword_1EC7EBB38;
  if (!qword_1EC7EBB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB20, &unk_1D561F250);
    sub_1D4F39A68(&qword_1EC7EBB40, type metadata accessor for CloudUploadedVideo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBB38);
  }

  return result;
}

unint64_t sub_1D4F372CC()
{
  result = qword_1EC7EBB60;
  if (!qword_1EC7EBB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB48, &unk_1D5630FE0);
    sub_1D4F39A68(&qword_1EC7EBB68, MEMORY[0x1E6975660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBB60);
  }

  return result;
}

unint64_t sub_1D4F37380()
{
  result = qword_1EC7EBB88;
  if (!qword_1EC7EBB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB70, &qword_1D561F280);
    sub_1D4F39A68(&qword_1EC7EBB90, MEMORY[0x1E6975808]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBB88);
  }

  return result;
}

unint64_t sub_1D4F37434()
{
  result = qword_1EC7EBBB0;
  if (!qword_1EC7EBBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB98, &unk_1D56234C0);
    sub_1D4F39A68(&qword_1EC7EBBB8, MEMORY[0x1E6974DD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBBB0);
  }

  return result;
}

unint64_t sub_1D4F374E8()
{
  result = qword_1EC7EBBD8;
  if (!qword_1EC7EBBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
    sub_1D4F39A68(&qword_1EC7EBBE0, MEMORY[0x1E6975CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBBD8);
  }

  return result;
}

unint64_t sub_1D4F3759C()
{
  result = qword_1EC7EBBF8;
  if (!qword_1EC7EBBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB20, &unk_1D561F250);
    sub_1D4F39A68(&qword_1EC7EBC00, type metadata accessor for CloudUploadedVideo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBBF8);
  }

  return result;
}

unint64_t sub_1D4F37650()
{
  result = qword_1EC7EBC08;
  if (!qword_1EC7EBC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAF8, &qword_1D563B230);
    sub_1D4F39A68(&qword_1EC7EBC10, type metadata accessor for CloudUploadedAudio);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC08);
  }

  return result;
}

unint64_t sub_1D4F37704()
{
  result = qword_1EC7EBC18;
  if (!qword_1EC7EBC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAD0, &qword_1D561F220);
    sub_1D4F39A68(&qword_1EC7EBC20, type metadata accessor for CloudTVShow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC18);
  }

  return result;
}

unint64_t sub_1D4F377B8()
{
  result = qword_1EC7EBC28;
  if (!qword_1EC7EBC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAA8, &unk_1D56223D0);
    sub_1D4F39A68(&qword_1EC7EBC30, type metadata accessor for CloudTVSeason);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC28);
  }

  return result;
}

unint64_t sub_1D4F3786C()
{
  result = qword_1EC7EBC38;
  if (!qword_1EC7EBC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA80, &qword_1D561F1F0);
    sub_1D4F39A68(&qword_1EC7EBC40, type metadata accessor for CloudTVEpisode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC38);
  }

  return result;
}

unint64_t sub_1D4F37920()
{
  result = qword_1EC7EBC48;
  if (!qword_1EC7EBC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA58, &unk_1D5634110);
    sub_1D4F39A68(&qword_1EC7EBC50, MEMORY[0x1E6975B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC48);
  }

  return result;
}

unint64_t sub_1D4F379D4()
{
  result = qword_1EC7EBC58;
  if (!qword_1EC7EBC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA770, &unk_1D561F1C0);
    sub_1D4F39A68(&qword_1EC7EBC60, MEMORY[0x1E69762A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC58);
  }

  return result;
}

unint64_t sub_1D4F37A88()
{
  result = qword_1EC7EBC68;
  if (!qword_1EC7EBC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA10, &unk_1D5623490);
    sub_1D4F39A68(&qword_1EC7EBC70, MEMORY[0x1E6975FE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC68);
  }

  return result;
}

unint64_t sub_1D4F37B3C()
{
  result = qword_1EC7EBC78;
  if (!qword_1EC7EBC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
    sub_1D4F39A68(&qword_1EC7EBC80, MEMORY[0x1E6975CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC78);
  }

  return result;
}

unint64_t sub_1D4F37BF0()
{
  result = qword_1EC7EBC88;
  if (!qword_1EC7EBC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB98, &unk_1D56234C0);
    sub_1D4F39A68(&qword_1EC7EBC90, MEMORY[0x1E6974DD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC88);
  }

  return result;
}

unint64_t sub_1D4F37CA4()
{
  result = qword_1EC7EBC98;
  if (!qword_1EC7EBC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB9E8, &unk_1D561F190);
    sub_1D4F39A68(&qword_1EC7EBCA0, type metadata accessor for CloudMusicMovie);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC98);
  }

  return result;
}

unint64_t sub_1D4F37D58()
{
  result = qword_1EC7EBCA8;
  if (!qword_1EC7EBCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA828, &qword_1D5623400);
    sub_1D4F39A68(&qword_1EC7EBCB0, MEMORY[0x1E69756E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBCA8);
  }

  return result;
}

unint64_t sub_1D4F37E0C()
{
  result = qword_1EC7EBCB8;
  if (!qword_1EC7EBCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB9A0, &qword_1D561F160);
    sub_1D4F39A68(&qword_1EC7EBCC0, type metadata accessor for CloudEditorialItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBCB8);
  }

  return result;
}

unint64_t sub_1D4F37EC0()
{
  result = qword_1EC7EBCC8;
  if (!qword_1EC7EBCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA820, &unk_1D5623370);
    sub_1D4F39A68(&qword_1EC7EBCD0, MEMORY[0x1E6975A30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBCC8);
  }

  return result;
}

unint64_t sub_1D4F37F74()
{
  result = qword_1EC7EBCD8;
  if (!qword_1EC7EBCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB5C8, &unk_1D561F130);
    sub_1D4F39A68(&qword_1EC7EBCE0, MEMORY[0x1E6976090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBCD8);
  }

  return result;
}

unint64_t sub_1D4F38028()
{
  result = qword_1EC7EBCE8;
  if (!qword_1EC7EBCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA768, &qword_1D5623380);
    sub_1D4F39A68(&qword_1EC7EBCF0, MEMORY[0x1E6975F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBCE8);
  }

  return result;
}

unint64_t sub_1D4F380DC()
{
  result = qword_1EC7EBCF8;
  if (!qword_1EC7EBCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB70, &qword_1D561F280);
    sub_1D4F39A68(&qword_1EC7EBD00, MEMORY[0x1E6975808]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBCF8);
  }

  return result;
}

unint64_t sub_1D4F38190()
{
  result = qword_1EC7EBD08;
  if (!qword_1EC7EBD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB48, &unk_1D5630FE0);
    sub_1D4F39A68(&qword_1EC7EBD10, MEMORY[0x1E6975660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD08);
  }

  return result;
}

void sub_1D4F38244()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDF0, &unk_1D561F350);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDF8, &qword_1D5633700);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBDF0, &unk_1D561F350);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F39270();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDF8, &qword_1D5633700);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

void sub_1D4F3845C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v2);
  v79 = _s13PersistedDateVMa();
  v3 = OUTLINED_FUNCTION_14(v79);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v72 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v71 - v11;
  OUTLINED_FUNCTION_70_0();
  v77 = _s10DescriptorVMa();
  v12 = OUTLINED_FUNCTION_4(v77);
  v74 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_2();
  v73 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBED8, &qword_1D561F3C0);
  v22 = OUTLINED_FUNCTION_22(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v71 - v26;
  v29 = v0 + 64;
  v28 = *(v0 + 64);
  OUTLINED_FUNCTION_10_12();
  v32 = v31 & v30;
  v34 = (v33 + 63) >> 6;
  v75 = v0;

  v35 = 0;
  v36 = 0;
  v80 = v1;
  v81 = v27;
  v76 = v0 + 64;
  while (1)
  {
    v83 = v35;
    if (!v32)
    {
      break;
    }

    v37 = v36;
LABEL_8:
    v38 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v39 = v38 | (v37 << 6);
    v40 = v75;
    OUTLINED_FUNCTION_198_0(*(v75 + 48));
    OUTLINED_FUNCTION_132_2();
    v41 = v73;
    sub_1D4F399C0(v42, v73, v43);
    v44 = *(*(v40 + 56) + 8 * v39);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE0, &qword_1D561F3C8);
    v46 = *(v45 + 48);
    OUTLINED_FUNCTION_52_7();
    v47 = v41;
    v48 = v80;
    sub_1D4F39AFC(v47, v80, v49);
    *(v48 + v46) = v44;
    v1 = v48;
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v45);
    v27 = v81;
LABEL_9:
    v53 = OUTLINED_FUNCTION_93();
    sub_1D4F39A1C(v53, v54, &qword_1EC7EBED8, &qword_1D561F3C0);
    v55 = OUTLINED_FUNCTION_200();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(v55, v56);
    OUTLINED_FUNCTION_10(v27);
    if (v58)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v59 = *(v57 + 48);
    OUTLINED_FUNCTION_52_7();
    sub_1D4F39AFC(v27, v18, v60);
    v82 = *&v27[v59];
    OUTLINED_FUNCTION_92_1();
    v61 = *v18;
    v62 = v18[1];
    sub_1D5614E28();
    v63 = v77;
    v64 = v77[5];
    sub_1D560C328();
    sub_1D4F39A68(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
    sub_1D5614CB8();
    v65 = *(v18 + v63[6]);
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](*(v18 + v63[7]));
    MEMORY[0x1DA6EC0D0](*(v18 + v63[8]));
    v66 = v18 + v63[9];
    sub_1D5614CB8();
    v67 = v78;
    sub_1D4F39AB0(v18 + v63[10], v78, &qword_1EC7EB470, &qword_1D561F3D0);
    OUTLINED_FUNCTION_57(v67, 1, v79);
    if (v58)
    {
      sub_1D56162F8();
    }

    else
    {
      sub_1D4F39AFC(v67, v72, _s13PersistedDateVMa);
      sub_1D56162F8();
      sub_1D5614CB8();
      OUTLINED_FUNCTION_157_3();
      v1 = v80;
      sub_1D4F39B58();
    }

    v29 = v76;
    OUTLINED_FUNCTION_131_2();
    sub_1D4F39B58();
    MEMORY[0x1DA6EC0D0](v82);
    v35 = sub_1D5616328() ^ v83;
    v27 = v81;
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE0, &qword_1D561F3C8);
      OUTLINED_FUNCTION_146_0(v1, v69, v70, v68);
      v32 = 0;
      goto LABEL_9;
    }

    v32 = *(v29 + 8 * v37);
    ++v36;
    if (v32)
    {
      v36 = v37;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1D4F38908()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v57 = v3;
  v56 = type metadata accessor for MusicSuggestedSongsEntry();
  v4 = OUTLINED_FUNCTION_4(v56);
  v54 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD18, &unk_1D561F2E0);
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v58 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v19 = v2 + 64;
  v18 = *(v2 + 64);
  v20 = *(v2 + 32);
  OUTLINED_FUNCTION_15_0();
  v23 = v22 & v21;
  OUTLINED_FUNCTION_142_1();
  v55 = v2;

  v24 = 0;
  v25 = 0;
  v53 = v17;
  while (1)
  {
    v59 = v24;
    if (!v23)
    {
      break;
    }

    v26 = v25;
LABEL_9:
    v28 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v29 = v28 | (v26 << 6);
    v30 = v55;
    v31 = *(v55 + 48);
    v32 = *(v54 + 72);
    OUTLINED_FUNCTION_125_1();
    sub_1D4F399C0(v33, v9, v34);
    v35 = *(*(v30 + 56) + 8 * v29);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD20, &unk_1D5660BA0) + 48);
    OUTLINED_FUNCTION_47_9();
    v27 = v58;
    sub_1D4F39AFC(v9, v58, v37);
    *(v27 + v36) = v35;
    v38 = OUTLINED_FUNCTION_34_10();
    OUTLINED_FUNCTION_151_2(v38, v39, v40, v41);
    v17 = v53;
LABEL_10:
    sub_1D4F39A1C(v27, v17, &qword_1EC7EBD18, &unk_1D561F2E0);
    v42 = OUTLINED_FUNCTION_90_2();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
    OUTLINED_FUNCTION_10(v17);
    if (v45)
    {

      MEMORY[0x1DA6EC0D0](v59);
      OUTLINED_FUNCTION_46();
      return;
    }

    v46 = *(v44 + 48);
    OUTLINED_FUNCTION_47_9();
    sub_1D4F39AFC(v17, v9, v47);
    v48 = *&v17[v46];
    memcpy(v60, v57, sizeof(v60));
    sub_1D5613838();
    sub_1D4F39A68(&qword_1EC7EB458, MEMORY[0x1E6976BE8]);
    sub_1D5614CB8();
    v49 = &v9[*(v56 + 20)];
    v50 = *v49;
    v51 = *(v49 + 1);
    sub_1D5614E28();
    OUTLINED_FUNCTION_124_1();
    sub_1D4F39B58();
    sub_1D4FB7BDC(v60, v48);

    v24 = sub_1D5616328() ^ v59;
  }

  v27 = v58;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v0)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD20, &unk_1D5660BA0);
      OUTLINED_FUNCTION_64_7(v52);
      v23 = 0;
      goto LABEL_10;
    }

    v23 = *(v19 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1D4F38C38()
{
  result = qword_1EC7EBD50;
  if (!qword_1EC7EBD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA758, &unk_1D561CA20);
    sub_1D4F39A68(&qword_1EC7EBD58, type metadata accessor for CloudGenericMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD50);
  }

  return result;
}

void sub_1D4F38CEC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
  OUTLINED_FUNCTION_26_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_12(v8, v35);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD60, &unk_1D561F310);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_17(v13, v36);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v16 = OUTLINED_FUNCTION_1_28(v1);
    v17(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD68, &qword_1D56492F0);
    v19 = OUTLINED_FUNCTION_5_13(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v21, v22, v23, v24);
LABEL_7:
    v25 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v25, v26, &qword_1EC7EBD60, &unk_1D561F310);
    v27 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v27);
    if (v28)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v29 = OUTLINED_FUNCTION_11_14();
    v30(v29);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    sub_1D4F38F04();
    OUTLINED_FUNCTION_65_9();
    v31 = OUTLINED_FUNCTION_36_7();
    v32(v31);
    v33 = sub_1D5616328();
    OUTLINED_FUNCTION_59_6(v33);
  }

  while (1)
  {
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v15 >= v0)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD68, &qword_1D56492F0);
      OUTLINED_FUNCTION_23_14(v34);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2(v15);
  }

  __break(1u);
}

unint64_t sub_1D4F38F04()
{
  result = qword_1EC7EBD70;
  if (!qword_1EC7EBD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB3E8, &qword_1D561E208);
    sub_1D4F38F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD70);
  }

  return result;
}

unint64_t sub_1D4F38F88()
{
  result = qword_1EC7EBD78;
  if (!qword_1EC7EBD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBD80, &qword_1D561F320);
    sub_1D4F3900C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD78);
  }

  return result;
}

unint64_t sub_1D4F3900C()
{
  result = qword_1EC7EBD88;
  if (!qword_1EC7EBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD88);
  }

  return result;
}

unint64_t sub_1D4F39060()
{
  result = qword_1EC7EBD90;
  if (!qword_1EC7EBD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB3E8, &qword_1D561E208);
    sub_1D4F390E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD90);
  }

  return result;
}

unint64_t sub_1D4F390E4()
{
  result = qword_1EC7EBD98;
  if (!qword_1EC7EBD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBD80, &qword_1D561F320);
    sub_1D4F39168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD98);
  }

  return result;
}

unint64_t sub_1D4F39168()
{
  result = qword_1EC7EBDA0;
  if (!qword_1EC7EBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBDA0);
  }

  return result;
}

unint64_t sub_1D4F391BC()
{
  result = qword_1EC7EBDA8;
  if (!qword_1EC7EBDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA758, &unk_1D561CA20);
    sub_1D4F39A68(&qword_1EC7EBDB0, type metadata accessor for CloudGenericMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBDA8);
  }

  return result;
}

unint64_t sub_1D4F39270()
{
  result = qword_1EC7EBE00;
  if (!qword_1EC7EBE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
    sub_1D4F39A68(&qword_1EC7EBE08, type metadata accessor for CloudEditorialCard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE00);
  }

  return result;
}

unint64_t sub_1D4F39324()
{
  result = qword_1EC7EBE10;
  if (!qword_1EC7EBE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB160, &qword_1D561DEE0);
    sub_1D4F39A68(&qword_1EC7EBE18, type metadata accessor for CloudVideoCredit);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE10);
  }

  return result;
}

unint64_t sub_1D4F393D8()
{
  result = qword_1EC7EBE20;
  if (!qword_1EC7EBE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB160, &qword_1D561DEE0);
    sub_1D4F39A68(&qword_1EC7EBE28, type metadata accessor for CloudVideoCredit);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE20);
  }

  return result;
}

unint64_t sub_1D4F3948C()
{
  result = qword_1EC7EBE30;
  if (!qword_1EC7EBE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
    sub_1D4F39A68(&qword_1EC7EBE38, type metadata accessor for CloudEditorialCard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE30);
  }

  return result;
}

unint64_t sub_1D4F39540()
{
  result = qword_1EC7EBE58;
  if (!qword_1EC7EBE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBE40, &qword_1D561F370);
    sub_1D4F39A68(&qword_1EC7EBE60, MEMORY[0x1E6976138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE58);
  }

  return result;
}

unint64_t sub_1D4F395F4()
{
  result = qword_1EC7EBE78;
  if (!qword_1EC7EBE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F39A68(&qword_1EC7EBDC8, MEMORY[0x1E6975968]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE78);
  }

  return result;
}

unint64_t sub_1D4F396A8()
{
  result = qword_1EC7EBE98;
  if (!qword_1EC7EBE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBE80, &qword_1D561F3A0);
    sub_1D4F3972C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE98);
  }

  return result;
}

unint64_t sub_1D4F3972C()
{
  result = qword_1EC7EBEA0;
  if (!qword_1EC7EBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBEA0);
  }

  return result;
}

unint64_t sub_1D4F39780()
{
  result = qword_1EC7EBEA8;
  if (!qword_1EC7EBEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBE80, &qword_1D561F3A0);
    sub_1D4F39804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBEA8);
  }

  return result;
}

unint64_t sub_1D4F39804()
{
  result = qword_1EC7EBEB0;
  if (!qword_1EC7EBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBEB0);
  }

  return result;
}

unint64_t sub_1D4F39858()
{
  result = qword_1EC7EBEB8;
  if (!qword_1EC7EBEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F39A68(&qword_1EC7EBDD0, MEMORY[0x1E6975968]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBEB8);
  }

  return result;
}

unint64_t sub_1D4F3990C()
{
  result = qword_1EC7EBEC0;
  if (!qword_1EC7EBEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBE40, &qword_1D561F370);
    sub_1D4F39A68(&qword_1EC7EBEC8, MEMORY[0x1E6976138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBEC0);
  }

  return result;
}

uint64_t sub_1D4F399C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D4F39A1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return v4;
}

uint64_t sub_1D4F39A68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4F39AB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return v4;
}

uint64_t sub_1D4F39AFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D4F39B58()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_61_13()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_62_9()
{
  v3 = *(v2 - 120);
  v4 = (*(v3 + 48) + 16 * v0);
  v5 = *v4;
  v6 = v4[1];
  return *(v3 + 56) + *(v1 + 72) * v0;
}

uint64_t OUTLINED_FUNCTION_65_9()
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_66_5()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_76_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
  *(v4 - 88) = 0;
  return result;
}

void OUTLINED_FUNCTION_80_3()
{
  v2 = *(v1 + 48);
  v4 = *v0;
  v3 = v0[1];
}

uint64_t OUTLINED_FUNCTION_91_2()
{
  *(v1 - 192) = v0;
}

uint64_t OUTLINED_FUNCTION_93_3()
{

  return sub_1D5614E28();
}

uint64_t OUTLINED_FUNCTION_94_2()
{
}

uint64_t OUTLINED_FUNCTION_97_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_111_3()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_116_2(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_121_1@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 | (v2 << 6);
  v5 = (*(v1 + 48) + 16 * v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(*(v1 + 56) + 8 * v4);
}

uint64_t OUTLINED_FUNCTION_140_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_141_1()
{

  return sub_1D4F39B58();
}

void OUTLINED_FUNCTION_143_1()
{
  *(v1 - 312) = v0 + 16;
  *(v1 - 296) = v0;
  *(v1 - 272) = v0 + 8;
}

uint64_t OUTLINED_FUNCTION_147_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

uint64_t OUTLINED_FUNCTION_150_4()
{
  v3 = *(v2 - 88);
  v4 = *(v0 + 56) + *(v3 + 72) * v1;
  v5 = *(v3 + 16);
  result = *(v2 - 96);
  v7 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_151_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_152_2()
{
}

uint64_t OUTLINED_FUNCTION_153_2()
{

  return sub_1D5614E28();
}

void *OUTLINED_FUNCTION_154_2()
{
  v2 = *(v0 - 184);

  return memcpy((v0 - 152), v2, 0x48uLL);
}

void OUTLINED_FUNCTION_155_2()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 200);

  JUMPOUT(0x1DA6EC0D0);
}

uint64_t OUTLINED_FUNCTION_156_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

char *OUTLINED_FUNCTION_160_1@<X0>(uint64_t a1@<X8>)
{
  *v4 = v1;
  v4[1] = v2;
  v6 = *(v3 + 32);
  result = v4 + a1;
  v8 = *(v5 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_170_0()
{

  return sub_1D5616098();
}

void OUTLINED_FUNCTION_171_0()
{
  v2 = *(v0 + 48);
  v3 = *v1;
  v4 = v1[1];
}

void OUTLINED_FUNCTION_178_0(uint64_t a1@<X8>)
{
  v3 = *(v2 - 296);
  v4 = v1 + *(v3 + 72) * a1;
  v5 = *(v3 + 16);
}

void OUTLINED_FUNCTION_180_0()
{
  v2 = *(v0 - 104);
  v1 = *(v0 - 96);
  v3 = *(v0 - 128);
}

uint64_t OUTLINED_FUNCTION_181_0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 160);
  return result;
}

void *OUTLINED_FUNCTION_187_0()
{

  return memcpy((v0 - 232), (v0 - 160), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_188_1()
{
}

uint64_t OUTLINED_FUNCTION_189_1@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1D4F39AFC(v3, v2 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_190_0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1D4F39AFC(v3, v2 + a2, a1);
}

void OUTLINED_FUNCTION_191_0()
{
  v2 = *(v0 - 184);

  JUMPOUT(0x1DA6EC0D0);
}

uint64_t OUTLINED_FUNCTION_192_0()
{

  return sub_1D4F39B58();
}

uint64_t OUTLINED_FUNCTION_193_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_1D4F399C0(a1, v3, a3);
}

uint64_t OUTLINED_FUNCTION_194_0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1D4F39AFC(v2 + a2, v3, a1);
}

uint64_t OUTLINED_FUNCTION_195_0()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_203_1()
{

  return sub_1D5614D18();
}

uint64_t sub_1D4F3A44C(uint64_t a1)
{
  v2 = sub_1D560C0A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  v58 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v51 = v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE8, &qword_1D561F3D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_13();
  v54 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v56 = v50 - v12;
  sub_1D4F3A930();
  v13 = sub_1D5614BD8();
  v14 = *(a1 + 64);
  v55 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v50[2] = v3 + 16;
  v59 = v13;
  v60 = (v3 + 32);
  v57 = v3;
  v50[0] = (v15 + 63) >> 6;
  v50[1] = v3 + 40;
  v52 = a1;

  v18 = 0;
  v53 = v2;
  while (v17)
  {
    v19 = v18;
LABEL_11:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = v21 | (v19 << 6);
    v23 = v51;
    v24 = (*(v52 + 48) + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v57;
    (*(v57 + 16))(v51, *(v52 + 56) + *(v57 + 72) * v22, v2);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEF8, &qword_1D561F3E0);
    v29 = *(v28 + 48);
    v30 = v54;
    *v54 = v26;
    v30[1] = v25;
    v31 = v30;
    (*(v27 + 32))(v30 + v29, v23, v2);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v28);

    v20 = v56;
LABEL_12:
    sub_1D4F3A984(v31, v20);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEF8, &qword_1D561F3E0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v32) == 1)
    {

      return v59;
    }

    v34 = *v20;
    v33 = *(v20 + 1);
    v35 = *v60;
    (*v60)(v58, &v20[*(v32 + 48)], v2);
    v36 = v59;
    swift_isUniquelyReferenced_nonNull_native();
    v61 = v36;
    v37 = sub_1D4F15A78(v34, v33);
    if (__OFADD__(v36[2], (v38 & 1) == 0))
    {
      goto LABEL_24;
    }

    v39 = v37;
    v40 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF00, &qword_1D561F3E8);
    if (sub_1D5615D78())
    {
      v41 = sub_1D4F15A78(v34, v33);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_26;
      }

      v39 = v41;
      if (v40)
      {
        goto LABEL_20;
      }

LABEL_17:
      v43 = v61;
      v61[(v39 >> 6) + 8] |= 1 << v39;
      v44 = (v43[6] + 16 * v39);
      *v44 = v34;
      v44[1] = v33;
      v2 = v53;
      v35(v43[7] + *(v57 + 72) * v39, v58, v53);
      v45 = v43[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_25;
      }

      v59 = v43;
      v43[2] = v47;
    }

    else
    {
      if ((v40 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_20:

      v59 = v61;
      v2 = v53;
      (*(v57 + 40))(v61[7] + *(v57 + 72) * v39, v58, v53);
    }
  }

  v20 = v56;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v50[0])
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEF8, &qword_1D561F3E0);
      v31 = v54;
      __swift_storeEnumTagSinglePayload(v54, 1, 1, v48);
      v17 = 0;
      goto LABEL_12;
    }

    v17 = *(v55 + 8 * v19);
    ++v18;
    if (v17)
    {
      v18 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

unint64_t sub_1D4F3A930()
{
  result = qword_1EC7EBEF0;
  if (!qword_1EC7EBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBEF0);
  }

  return result;
}

uint64_t sub_1D4F3A984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE8, &qword_1D561F3D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F3A9F4()
{
  v0 = sub_1D5614D68();
  v2 = v1;
  if (v0 == sub_1D5614D68() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_21();
  }

  return v5 & 1;
}

uint64_t sub_1D4F3AA6C(char a1)
{
  v2 = "sdVideoWithPlusAudio";
  switch(a1)
  {
    case 1:
      v2 = "laylistEntryReactionDate";
      break;
    case 2:
      v2 = "laylistEntryReactionText";
      break;
    case 3:
      v2 = "ReactionPlaylistEntry";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_31_13();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_21();
  }

  return v5 & 1;
}

uint64_t sub_1D4F3AB74(char a1)
{
  v2 = "AL";
  switch(a1)
  {
    case 1:
      v2 = "laylistAuthorIsPendingApproval";
      break;
    case 2:
      v2 = "laylistAuthorRole";
      break;
    case 3:
      v2 = "hipPlaylistAuthorPlaylist";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_31_13();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_21();
  }

  return v5 & 1;
}

uint64_t sub_1D4F3AC84(char a1)
{
  v2 = "previewed";
  switch(a1)
  {
    case 1:
      v2 = "laylistCollaborationSharingMode";
      break;
    case 2:
      v2 = "laylistCollaboratorStatus";
      break;
    case 3:
      v2 = "laylistIsCollaborative";
      break;
    case 4:
      v2 = "tionInvitationURL";
      break;
    case 5:
      v2 = "tionInvitationURLExpirationDate";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_43_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_21();
  }

  return v5 & 1;
}

uint64_t sub_1D4F3ADEC(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000074;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_22_12();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3AE80(unsigned __int8 a1, char a2)
{
  v2 = 6778986;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 6778480;
    }

    else
    {
      v4 = 1667851624;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 6778986;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 6778480;
    }

    else
    {
      v2 = 1667851624;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3AF6C(char a1)
{
  if (a1)
  {
    v2 = "clude";
  }

  else
  {
    v2 = "ocialPersonIsVerified";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_31_13();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_21();
  }

  return v5 & 1;
}

uint64_t sub_1D4F3AFFC(char a1)
{
  v2 = "MPModelPropertyPersonName";
  switch(a1)
  {
    case 1:
      v2 = "MPModelPropertyTVShowArtwork";
      break;
    case 2:
      v2 = "VShowEditorialArtwork";
      break;
    case 3:
      v2 = "VShowEditorNotes";
      break;
    case 4:
      v2 = "VShowEpisodeCount";
      break;
    case 5:
      v2 = "VShowShortEditorNotes";
      break;
    case 6:
      v2 = "MPModelPropertyTVShowShortTitle";
      break;
    case 7:
      v2 = "MPModelPropertyTVShowTagline";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_31_13();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_21();
  }

  return v5 & 1;
}

uint64_t sub_1D4F3B184(char a1)
{
  if (a1)
  {
    v1 = 0xEE0073656C69666FLL;
  }

  else
  {
    v1 = 0xEF73656972746E45;
  }

  OUTLINED_FUNCTION_22_12();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3B22C()
{
  sub_1D5610088();
  OUTLINED_FUNCTION_13_18();
  sub_1D4F408C0(v0, v1);
  OUTLINED_FUNCTION_46_1();
  sub_1D56150C8();
  OUTLINED_FUNCTION_46_1();
  sub_1D56150C8();
  if (v7 == v5 && v8 == v6)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_9_16();
  }

  return v3 & 1;
}

uint64_t sub_1D4F3B2E8(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6573736572706D69;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6577656976657270;
    }

    else
    {
      v5 = 0x64657463656C6573;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x6573736572706D69;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    v3 = a2 == 1 ? 0x6577656976657270 : 0x64657463656C6573;
    if (a2 != 1)
    {
      v2 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_16();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3B404(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 17459;
  switch(a1)
  {
    case 1:
      v4 = 19252;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v4 = 5391432;
      break;
    case 3:
      v4 = 0x6D744179626C6F64;
      v3 = 0xEA0000000000736FLL;
      break;
    case 4:
      v4 = 0x73695679626C6F64;
      v3 = 0xEB000000006E6F69;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 17459;
  switch(a2)
  {
    case 1:
      v6 = 19252;
      break;
    case 2:
      v5 = 0xE300000000000000;
      v6 = 5391432;
      break;
    case 3:
      v6 = 0x6D744179626C6F64;
      v5 = 0xEA0000000000736FLL;
      break;
    case 4:
      v6 = 0x73695679626C6F64;
      v5 = 0xEB000000006E6F69;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3B578(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x726F7461727563;
  }

  else
  {
    v2 = 0x73747369747261;
  }

  if (a2)
  {
    v3 = 0x726F7461727563;
  }

  else
  {
    v3 = 0x73747369747261;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D5616168();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D4F3B5F8(unsigned __int8 a1, char a2)
{
  v2 = 0xED00006F69647541;
  v3 = 0x647261646E617473;
  v4 = a1;
  v5 = 0x647261646E617473;
  v6 = 0xED00006F69647541;
  switch(v4)
  {
    case 1:
      v5 = 0x6964754173756C70;
      v6 = 0xE90000000000006FLL;
      break;
    case 2:
      v5 = 0x5664487030383031;
      v6 = 0xEC0000006F656469;
      break;
    case 3:
      v7 = 0x644870303237;
      goto LABEL_6;
    case 4:
      v7 = 0x703038346473;
LABEL_6:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x6956000000000000;
      v6 = 0xEB000000006F6564;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = 0x6F656469566473;
      break;
    case 6:
      v5 = 0xD000000000000014;
      v6 = 0x80000001D567D790;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6964754173756C70;
      v2 = 0xE90000000000006FLL;
      break;
    case 2:
      v3 = 0x5664487030383031;
      v2 = 0xEC0000006F656469;
      break;
    case 3:
      v8 = 0x644870303237;
      goto LABEL_14;
    case 4:
      v8 = 0x703038346473;
LABEL_14:
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x6956000000000000;
      v2 = 0xEB000000006F6564;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x6F656469566473;
      break;
    case 6:
      v3 = 0xD000000000000014;
      v2 = 0x80000001D567D790;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_16();
  }

  return v10 & 1;
}

uint64_t sub_1D4F3B7EC(char a1)
{
  v2 = "🟦    Saving Playlist";
  switch(a1)
  {
    case 1:
      v2 = "laybackPositionBookmarkTime";
      break;
    case 2:
      v2 = "laybackPositionHasBeenPlayed";
      break;
    case 3:
      v2 = "houldRememberBookmarkTime";
      break;
    case 4:
      v2 = "laybackPositionUserPlayCount";
      break;
    case 5:
      v2 = "laybackPositionStartTime";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_43_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_21();
  }

  return v5 & 1;
}

uint64_t sub_1D4F3B948(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x6565776F6C6C6F66;
  v4 = a1;
  v5 = 0x6565776F6C6C6F66;
  v6 = 0xE900000000000073;
  switch(v4)
  {
    case 1:
      v5 = 0x7265776F6C6C6F66;
      break;
    case 2:
      v6 = 0x80000001D567D570;
      v5 = 0xD000000000000011;
      break;
    case 3:
      v6 = 0x80000001D567D590;
      v5 = 0xD000000000000013;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v6 = 0x80000001D567D5B0;
      break;
    case 5:
      v5 = 0x702D6C6169636F73;
      v6 = 0xEE00656C69666F72;
      break;
    case 6:
      v5 = 0x726E65672D706F74;
      v6 = 0xEA00000000007365;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x7265776F6C6C6F66;
      break;
    case 2:
      v2 = 0x80000001D567D570;
      v3 = 0xD000000000000011;
      break;
    case 3:
      v2 = 0x80000001D567D590;
      v3 = 0xD000000000000013;
      break;
    case 4:
      v3 = 0xD000000000000010;
      v2 = 0x80000001D567D5B0;
      break;
    case 5:
      v3 = 0x702D6C6169636F73;
      v2 = 0xEE00656C69666F72;
      break;
    case 6:
      v3 = 0x726E65672D706F74;
      v2 = 0xEA00000000007365;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_16();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3BB48(char a1, char a2)
{
  v2 = 0x7365726E6567;
  if (a1)
  {
    OUTLINED_FUNCTION_47_10();
    if (v3)
    {
      v5 = 0x736E6F73616573;
    }

    else
    {
      v5 = 2003789939;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x7365726E6567;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_47_10();
    if (v7)
    {
      v2 = 0x736E6F73616573;
    }

    else
    {
      v2 = 2003789939;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_21();
  }

  return v11 & 1;
}

uint64_t sub_1D4F3BC1C()
{
  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_18_14();
  v4 = v3 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
  v5 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v6 = 0x70652D726568746FLL;
    }

    else
    {
      v6 = 0x7473696C79616C70;
    }

    if (v5 == 1)
    {
      v7 = 0xEE007365646F7369;
    }

    else
    {
      v7 = 0xE900000000000073;
    }
  }

  else
  {
    v6 = v4;
    v7 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v4 = 0x70652D726568746FLL;
    }

    else
    {
      v4 = 0x7473696C79616C70;
    }

    if (v2 == 1)
    {
      v0 = 0xEE007365646F7369;
    }

    else
    {
      v0 = 0xE900000000000073;
    }
  }

  if (v6 == v4 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_9_16();
  }

  return v9 & 1;
}

uint64_t sub_1D4F3BD20(char a1)
{
  v2 = "supports_smart_transitions";
  switch(a1)
  {
    case 1:
      v2 = "ocialPersonArtwork";
      break;
    case 2:
      v2 = "ocialPersonHandle";
      break;
    case 3:
      v2 = "ghtweightProfile";
      break;
    case 4:
      v2 = "ocialPersonIsPrivate";
      break;
    case 5:
      v2 = "ocialPersonIsVerified";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_43_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_21();
  }

  return v5 & 1;
}

uint64_t sub_1D4F3BE84(unsigned __int8 a1, char a2)
{
  v2 = 0x7365646F73697065;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x7365726E6567;
    }

    else
    {
      v4 = 2003789939;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x7365646F73697065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x7365726E6567;
    }

    else
    {
      v2 = 2003789939;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3BF5C(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "reditsArtistArtwork";
    }

    else
    {
      v2 = "reditsArtistName";
    }
  }

  else
  {
    v2 = "";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_31_13();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_21();
  }

  return v5 & 1;
}

uint64_t sub_1D4F3C02C(unsigned __int8 a1, char a2)
{
  v2 = 0x4554454C4544;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x4554454C4544;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x455441434E555254;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x54534953524550;
      break;
    case 3:
      v5 = 0x59524F4D454DLL;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 4997463;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v5 = 4605519;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x455441434E555254;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x54534953524550;
      break;
    case 3:
      v2 = 0x59524F4D454DLL;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 4997463;
      break;
    case 5:
      v6 = 0xE300000000000000;
      v2 = 4605519;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3C198(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000045;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_22_12();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3C228()
{
  OUTLINED_FUNCTION_22_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1D5616168();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1D4F3C2A4(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEA00000000007265;
  }

  OUTLINED_FUNCTION_22_12();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3C338(unsigned __int8 a1, char a2)
{
  v2 = 4804673;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 6775106;
    }

    else
    {
      v4 = 0x6F44746E65746E49;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xEE006E6F6974616ELL;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 4804673;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 6775106;
    }

    else
    {
      v2 = 0x6F44746E65746E49;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xEE006E6F6974616ELL;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3C42C(unsigned __int8 a1, char a2)
{
  v2 = 0x6564756C637865;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x676948636972796CLL;
    }

    else
    {
      v4 = 0x73636972796CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEF73746867696C68;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6564756C637865;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x676948636972796CLL;
    }

    else
    {
      v2 = 0x73636972796CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEF73746867696C68;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3C52C(unsigned __int8 a1, char a2)
{
  v2 = 1836213620;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1836213620;
  switch(v4)
  {
    case 1:
      v5 = 1954047342;
      break;
    case 2:
      v5 = 0x76697372656D6D69;
      v3 = 0xE900000000000065;
      break;
    case 3:
      v5 = 0x6F2D73636972796CLL;
      v3 = 0xED00006E6F697470;
      break;
    case 4:
      v5 = 0xD000000000000013;
      v3 = 0x80000001D567E0F0;
      break;
    case 5:
      v5 = 0x7079742D6D657469;
      v3 = 0xEA00000000007365;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1954047342;
      break;
    case 2:
      v2 = 0x76697372656D6D69;
      v6 = 0xE900000000000065;
      break;
    case 3:
      v2 = 0x6F2D73636972796CLL;
      v6 = 0xED00006E6F697470;
      break;
    case 4:
      v2 = 0xD000000000000013;
      v6 = 0x80000001D567E0F0;
      break;
    case 5:
      v2 = 0x7079742D6D657469;
      v6 = 0xEA00000000007365;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3C6F0(char a1)
{
  v2 = "viewers-also-bought";
  switch(a1)
  {
    case 1:
      v2 = "ibraryPinDefaultAction";
      break;
    case 2:
      v2 = "ibraryPinPosition";
      break;
    case 3:
      v2 = "ibraryPinEntityType";
      break;
    case 4:
      v2 = "ibraryPinPositionUUID";
      break;
    case 5:
      v2 = "hipLibraryPinAlbum";
      break;
    case 6:
      v2 = "hipLibraryPinArtist";
      break;
    case 7:
      v2 = "hipLibraryPinPlaylist";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_43_12();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_21();
  }

  return v5 & 1;
}

uint64_t sub_1D4F3C87C(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEB00000000636973;
  }

  OUTLINED_FUNCTION_22_12();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3C92C(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000737265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 1684957547;
    }

    else
    {
      v5 = 0x6564644165746164;
    }

    if (v4 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0xEB00000000737265;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1684957547;
    }

    else
    {
      v3 = 0x6564644165746164;
    }

    if (a2 == 1)
    {
      v2 = 0xE400000000000000;
    }

    else
    {
      v2 = 0xE900000000000064;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_16();
  }

  return v8 & 1;
}

uint64_t sub_1D4F3CA18(char a1, char a2)
{
  v2 = 1835365481;
  if (a1)
  {
    OUTLINED_FUNCTION_47_10();
    if (v3)
    {
      v5 = 0x7972617262696CLL;
    }

    else
    {
      v5 = 1684366707;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v5 = 1835365481;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_47_10();
    if (v7)
    {
      v2 = 0x7972617262696CLL;
    }

    else
    {
      v2 = 1684366707;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_21();
  }

  return v11 & 1;
}

uint64_t sub_1D4F3CAEC()
{
  OUTLINED_FUNCTION_22_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1D5616168();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1D4F3CB74(unsigned __int8 a1, char a2)
{
  v2 = 0x6D75626C61;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6D75626C61;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x747369747261;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x726F7461727563;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_33_15() & 0xFFFFFFFFFFFFLL | 0x6F6D000000000000;
      v7 = 6646134;
      goto LABEL_9;
    case 4:
      v5 = OUTLINED_FUNCTION_33_15() & 0xFFFFFFFFFFFFLL | 0x6976000000000000;
      v7 = 7300452;
LABEL_9:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 5:
      v5 = 0x6C616E6F73726570;
      v3 = 0xEC00000078696D2DLL;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_19();
      break;
    case 7:
      v3 = 0xE700000000000000;
      v6 = 0x6C69666F7270;
      goto LABEL_11;
    case 8:
      v5 = 0x6C6562616CLL;
      break;
    case 9:
      v3 = 0xE400000000000000;
      v5 = 1735290739;
      break;
    case 10:
      v3 = 0xE700000000000000;
      v5 = 0x6E6F6974617473;
      break;
    case 11:
      v3 = 0xE700000000000000;
      v6 = 0x646F73697065;
LABEL_11:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 12:
      v3 = 0xE400000000000000;
      v5 = 2003789939;
      break;
    case 13:
      v3 = 0xE400000000000000;
      v5 = 1953722224;
      break;
    default:
      break;
  }

  v8 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE600000000000000;
      v2 = 0x747369747261;
      break;
    case 2:
      v8 = 0xE700000000000000;
      v2 = 0x726F7461727563;
      break;
    case 3:
      OUTLINED_FUNCTION_18_14();
      v2 = v12 & 0xFFFFFFFFFFFFLL | 0x6F6D000000000000;
      v11 = 6646134;
      goto LABEL_25;
    case 4:
      OUTLINED_FUNCTION_18_14();
      v2 = v10 & 0xFFFFFFFFFFFFLL | 0x6976000000000000;
      v11 = 7300452;
LABEL_25:
      v8 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 5:
      v2 = 0x6C616E6F73726570;
      v8 = 0xEC00000078696D2DLL;
      break;
    case 6:
      v8 = 0xE800000000000000;
      OUTLINED_FUNCTION_17_9();
      break;
    case 7:
      v8 = 0xE700000000000000;
      v9 = 0x6C69666F7270;
      goto LABEL_27;
    case 8:
      v2 = 0x6C6562616CLL;
      break;
    case 9:
      v8 = 0xE400000000000000;
      v2 = 1735290739;
      break;
    case 10:
      v8 = 0xE700000000000000;
      v2 = 0x6E6F6974617473;
      break;
    case 11:
      v8 = 0xE700000000000000;
      v9 = 0x646F73697065;
LABEL_27:
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 12:
      v8 = 0xE400000000000000;
      v2 = 2003789939;
      break;
    case 13:
      v8 = 0xE400000000000000;
      v2 = 1953722224;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_7_21();
  }

  return v14 & 1;
}

uint64_t sub_1D4F3CE48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_21();
  }

  return v9 & 1;
}

uint64_t sub_1D4F3CEF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_7_21();
  }

  return v10 & 1;
}

uint64_t sub_1D4F3CF78(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "INPlayMediaIntent";
    }

    else
    {
      v2 = "INAddMediaIntent";
    }
  }

  else
  {
    v2 = "";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_31_13();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_21();
  }

  return v5 & 1;
}

uint64_t sub_1D4F3D048(unsigned __int8 a1, char a2)
{
  v2 = 0xED000065726E6567;
  v3 = 0x2D6E692D65726F6DLL;
  v4 = a1;
  v5 = "viewers-also-bought";
  v6 = 0x2D6E692D65726F6DLL;
  v7 = 0xED000065726E6567;
  v8 = "cross-merchandise";
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_33_15() & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
      v7 = 0xED00007374736974;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_19();
      v7 = 0xE900000000000073;
      break;
    case 4:
      v7 = 0x80000001D567D8B0;
      v6 = 0xD000000000000013;
      break;
    default:
      v6 = 0xD000000000000011;
      v7 = 0x80000001D567D890;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      OUTLINED_FUNCTION_18_14();
      OUTLINED_FUNCTION_44_8();
      break;
    case 3:
      OUTLINED_FUNCTION_17_9();
      v2 = 0xE900000000000073;
      break;
    case 4:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    default:
      v3 = 0xD000000000000011;
      v2 = (v8 - 32) | 0x8000000000000000;
      break;
  }

  if (v6 == v3 && v7 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_16();
  }

  return v10 & 1;
}

uint64_t MusicCatalogResourceRequest.source.setter(char *a1)
{
  v2 = sub_1D560D358();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  (*(v5 + 104))(v10, **(&unk_1E84C4730 + *a1), v2);
  (*(v5 + 32))(v13, v10, v2);
  return sub_1D560E2B8();
}

uint64_t MusicCatalogResourceRequest.configuration.setter(uint64_t a1)
{
  v2 = sub_1D560CD48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  type metadata accessor for MusicRequestConfiguration();
  sub_1D4F408C0(&qword_1EDD5B4E8, type metadata accessor for MusicRequestConfiguration);
  sub_1D560E6C8();
  (*(v5 + 16))(v10, v13, v2);
  sub_1D560E248();
  OUTLINED_FUNCTION_1_29();
  sub_1D4E583B4(a1, v14);
  return (*(v5 + 8))(v13, v2);
}

void MusicCatalogResourceRequest.configuration.getter()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = sub_1D560CD48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  sub_1D560E238();
  sub_1D560CCE8();
  v18 = *(v5 + 8);
  v19 = OUTLINED_FUNCTION_130();
  v20(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v21 = type metadata accessor for MusicRequestConfiguration();
  v22 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v17, v22 ^ 1u, 1, v21);
  v23 = OUTLINED_FUNCTION_46_1();
  sub_1D4E69910(v23, v24, &qword_1EC7EA838, &unk_1D561CB10);
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(v1);
    if (__swift_getEnumTagSinglePayload(v14, 1, v21) != 1)
    {
      sub_1D4E50004(v14, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D4E56C6C(v14, v1);
  }

  sub_1D4E50004(v17, &qword_1EC7EA838, &unk_1D561CB10);
  OUTLINED_FUNCTION_46();
}

void sub_1D4F3D654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 24);
  v5 = *(v3 - 16);
  v6 = *(v3 - 8);
  sub_1D560E328();
  MusicCatalogResourceRequest.configuration.getter();
}

uint64_t sub_1D4F3D694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for MusicRequestConfiguration();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F40860(a1, v11, type metadata accessor for MusicRequestConfiguration);
  sub_1D560E328();
  return MusicCatalogResourceRequest.configuration.setter(v11);
}

void (*MusicCatalogResourceRequest.configuration.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  v4 = type metadata accessor for MusicRequestConfiguration();
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  a1[2] = __swift_coroFrameAllocStub(v6);
  a1[3] = __swift_coroFrameAllocStub(v6);
  MusicCatalogResourceRequest.configuration.getter();
  return sub_1D4F3D7F0;
}

void sub_1D4F3D7F0(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    sub_1D4F40860(a1[3], v2, type metadata accessor for MusicRequestConfiguration);
    MusicCatalogResourceRequest.configuration.setter(v2);
    OUTLINED_FUNCTION_1_29();
    sub_1D4E583B4(v3, v6);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_46_1();
    MusicCatalogResourceRequest.configuration.setter(v7);
  }

  free(v3);

  free(v2);
}

uint64_t MusicCatalogResourceRequest.source.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_1D560D358();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1D560E2A8();
  result = (*(v5 + 88))(v10, v2);
  if (result != *MEMORY[0x1E6974E90])
  {
    if (result == *MEMORY[0x1E6974EA8])
    {
      v12 = 1;
      goto LABEL_9;
    }

    if (result == *MEMORY[0x1E6974E98])
    {
      v12 = 2;
      goto LABEL_9;
    }

    if (result == *MEMORY[0x1E6974E88])
    {
      v12 = 3;
      goto LABEL_9;
    }

    if (result != *MEMORY[0x1E6974EA0])
    {
      result = (*(v5 + 8))(v10, v2);
    }
  }

  v12 = 0;
LABEL_9:
  *a1 = v12;
  return result;
}

uint64_t sub_1D4F3D9E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 24);
  v6 = *(v4 - 16);
  v7 = *(v4 - 8);
  sub_1D560E328();
  result = MusicCatalogResourceRequest.source.getter(&v9);
  *a3 = v9;
  return result;
}

uint64_t sub_1D4F3DA34(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(v4 - 8);
  v9 = *a1;
  sub_1D560E328();
  return MusicCatalogResourceRequest.source.setter(&v9);
}

uint64_t (*MusicCatalogResourceRequest.source.modify(uint64_t a1, uint64_t a2))(uint64_t *a1, char a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  MusicCatalogResourceRequest.source.getter((a1 + 16));
  return sub_1D4F3DAD0;
}

uint64_t sub_1D4F3DAD0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  if (a2)
  {
    v8 = *(a1 + 16);
    v6 = &v8;
  }

  else
  {
    v9 = *(a1 + 16);
    v6 = &v9;
  }

  return MusicCatalogResourceRequest.source.setter(v6);
}

uint64_t MusicCatalogResourceRequest.performAutomaticLibraryMapping.getter()
{
  v0 = type metadata accessor for MusicRequestConfiguration();
  v1 = OUTLINED_FUNCTION_22(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  MusicCatalogResourceRequest.configuration.getter();
  v7 = *(v6 + 96);
  OUTLINED_FUNCTION_1_29();
  sub_1D4E583B4(v6, v8);
  return v7;
}

uint64_t MusicCatalogResourceRequest.performAutomaticLibraryMapping.setter(char a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  MusicCatalogResourceRequest.configuration.getter();
  *(v8 + 96) = a1;
  return MusicCatalogResourceRequest.configuration.setter(v8);
}

uint64_t (*MusicCatalogResourceRequest.performAutomaticLibraryMapping.modify(uint64_t a1, uint64_t a2))(uint64_t *a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = MusicCatalogResourceRequest.performAutomaticLibraryMapping.getter() & 1;
  return sub_1D4F3DC74;
}

uint64_t sub_1D4F3DC74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  return MusicCatalogResourceRequest.performAutomaticLibraryMapping.setter(*(a1 + 16));
}

uint64_t MusicCatalogResourceRequest.options.getter()
{
  v1 = sub_1D560E2C8();
  sub_1D5559F60(v1);
  OUTLINED_FUNCTION_82();

  return v0;
}

uint64_t sub_1D4F3DCD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 24);
  v6 = *(v4 - 16);
  v7 = *(v4 - 8);
  sub_1D560E328();
  result = MusicCatalogResourceRequest.options.getter();
  *a3 = result;
  return result;
}

uint64_t sub_1D4F3DD10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(v4 - 8);
  v8 = *a1;
  sub_1D560E328();

  return MusicCatalogResourceRequest.options.setter(v9);
}

uint64_t MusicCatalogResourceRequest.options.setter(uint64_t a1)
{
  sub_1D555A178(a1);

  return sub_1D560E2D8();
}

uint64_t (*MusicCatalogResourceRequest.options.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = MusicCatalogResourceRequest.options.getter();
  return sub_1D4F3DE04;
}

uint64_t sub_1D4F3DE04(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    MusicCatalogResourceRequest.options.setter(v6);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_128();
    return MusicCatalogResourceRequest.options.setter(v8);
  }
}

uint64_t sub_1D4F3DE74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, _BYTE *a4@<X8>)
{
  v6 = a1 + a2;
  v7 = *(a1 + a2 - 24);
  v8 = *(v6 - 16);
  v9 = *(v6 - 8);
  v10 = sub_1D560E328();
  result = a3(v10);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D4F3DEC8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a3 + a4;
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(v6 - 8);
  v10 = *a1;
  v11 = sub_1D560E328();
  return a5(v10, v11);
}

uint64_t (*MusicCatalogResourceRequest.prewarmForPlayback.modify(uint64_t a1, uint64_t a2))(uint64_t *a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = _s8MusicKit0A22CatalogResourceRequestV0aB8InternalE18prewarmForPlaybackSbvg_0() & 1;
  return sub_1D4F3DF70;
}

uint64_t sub_1D4F3DF70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  return _s8MusicKit0A22CatalogResourceRequestV0aB8InternalE18prewarmForPlaybackSbvs_0();
}

void MusicCatalogResourceRequest<>.init<A>(matching:equalTo:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v46 = v4;
  v5 = *v2;
  v6 = sub_1D5610F88();
  v7 = OUTLINED_FUNCTION_4(v6);
  v43 = v8;
  v44 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v45 = v12 - v11;
  v13 = sub_1D5610A18();
  v14 = OUTLINED_FUNCTION_4(v13);
  v41 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v42 = v19 - v18;
  v20 = v5;
  v40 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v21 = sub_1D560DDF8();
  OUTLINED_FUNCTION_4(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v38 - v27;
  KeyPath = swift_getKeyPath();
  v51 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF08, &qword_1D561F428);

  LOBYTE(v5) = sub_1D5614D18();

  if (v5)
  {
    v29 = v1;
    if (qword_1EC7E8B48 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v13, qword_1EC87BF98);
    v39 = sub_1D5614408();
    v31 = *(v20 + *MEMORY[0x1E69E77B0]);
    KeyPath = v39;
    v48 = v31;
    v32 = v40;
    v49 = v40;
    v50 = MEMORY[0x1E6977150];
    sub_1D560F168();
    v33 = *(v32 - 8);
    (*(v33 + 16))(v28, v29, v32);
    (*(v23 + 104))(v28, *MEMORY[0x1E6975090], v21);
    OUTLINED_FUNCTION_130();
    sub_1D560F178();
    (*(v41 + 16))(v42, v30, v13);
    sub_1D560F158();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
    v34 = *(sub_1D5610088() - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = xmmword_1D561C050;
    sub_1D5610008();
    (*(v43 + 104))(v45, *MEMORY[0x1E69760C0], v44);
    sub_1D4F408C0(&qword_1EC7EAAC0, MEMORY[0x1E6977180]);
    sub_1D560E258();

    (*(v33 + 8))(v29, v32);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    KeyPath = 0;
    v48 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
    v51 = v3;
    v37 = *(v20 + *MEMORY[0x1E69E77B0]);
    sub_1D56163E8();
    sub_1D5616138();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    sub_1D5615E08();
    __break(1u);
  }
}

void *sub_1D4F3E4D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

void MusicCatalogResourceRequest<>.init(catalogTypedIdentifiers:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v86 = sub_1D5610F88();
  v4 = OUTLINED_FUNCTION_4(v86);
  v85 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v87 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v81 - v14;
  v16 = sub_1D5610088();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_59_0();
  v98 = v22 - v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v97 = &v81 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v103 = &v81 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v105 = &v81 - v29;
  v96 = sub_1D5612478();
  v30 = OUTLINED_FUNCTION_4(v96);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v102 = v36 - v35;
  v37 = type metadata accessor for MusicItemTypedIdentifier();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v42 = &v81 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v1 + 16);
  if (!v43)
  {
    goto LABEL_32;
  }

  v84 = v3;
  v99 = 0;
  v82 = v41;
  v44 = *(v41 + 28);
  v45 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v83 = v1;
  v46 = v1 + v45;
  v47 = *(v39 + 72);
  v90 = (v19 + 8);
  v91 = (v19 + 32);
  v89 = (v19 + 16);
  v88 = v32 + 32;
  v104 = MEMORY[0x1E69E7CC0];
  v92 = v47;
  v93 = v44;
  v94 = v32;
  v95 = v15;
  v101 = &v81 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  do
  {
    sub_1D4F40860(v46, v42, type metadata accessor for MusicItemTypedIdentifier);
    sub_1D4E69910(&v42[v44], v15, &qword_1EC7EA358, &unk_1D561DF50);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      OUTLINED_FUNCTION_14_12();
      sub_1D4E583B4(v42, v48);
      sub_1D4E50004(v15, &qword_1EC7EA358, &unk_1D561DF50);
    }

    else
    {
      v49 = *v91;
      v50 = OUTLINED_FUNCTION_222();
      v51(v50);
      sub_1D560FF18();
      OUTLINED_FUNCTION_13_18();
      sub_1D4F408C0(&qword_1EDD53348, v52);
      OUTLINED_FUNCTION_130();
      sub_1D56150C8();
      OUTLINED_FUNCTION_130();
      sub_1D56150C8();
      if (v108 == v106 && v109 == v107)
      {
        v54 = 1;
      }

      else
      {
        v54 = sub_1D5616168();
      }

      v55 = *v90;
      (*v90)(v103, v16);

      v100 = v43;
      if (v54)
      {
        v99 = 1;
        v56 = v104;
      }

      else
      {
        sub_1D560FED8();
        OUTLINED_FUNCTION_130();
        sub_1D56150C8();
        OUTLINED_FUNCTION_130();
        sub_1D56150C8();
        if (v108 == v106 && v109 == v107)
        {
          v58 = 1;
        }

        else
        {
          v58 = sub_1D5616168() | v99;
        }

        v99 = v58;
        v56 = v104;
        v55(v97, v16);
      }

      v59 = v101;
      v60 = *v101;
      v61 = *(v101 + 1);
      v62 = v105;
      (*v89)(v98, v105, v16);

      sub_1D5612438();
      v55(v62, v16);
      OUTLINED_FUNCTION_14_12();
      sub_1D4E583B4(v59, v63);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = *(v56 + 16);
        sub_1D4F000F8();
        v56 = v69;
      }

      v44 = v93;
      v64 = v94;
      v47 = v92;
      v43 = v100;
      v65 = *(v56 + 16);
      if (v65 >= *(v56 + 24) >> 1)
      {
        sub_1D4F000F8();
        v56 = v70;
      }

      v42 = v101;
      v66 = v102;
      *(v56 + 16) = v65 + 1;
      v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v104 = v56;
      (*(v64 + 32))(v56 + v67 + *(v64 + 72) * v65, v66, v96);
      v15 = v95;
    }

    v46 += v47;
    --v43;
  }

  while (v43);
  if (v99)
  {
    if (qword_1EDD5D8A8 != -1)
    {
      OUTLINED_FUNCTION_0_23();
    }

    v71 = sub_1D560C758();
    __swift_project_value_buffer(v71, qword_1EDD76DC8);
    v72 = v83;

    v73 = sub_1D560C738();
    v74 = sub_1D56156C8();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_142();
      v76 = swift_slowAlloc();
      v108 = v76;
      *v75 = 136446210;
      v77 = MEMORY[0x1DA6EAF70](v72, v82);
      v79 = v78;

      v80 = sub_1D4E6835C(v77, v79, &v108);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_1D4E3F000, v73, v74, "MusicCatalogResourceRequest API misuse - unsupported resource types included in catalogTypedIdentifiers: %{public}s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {
    }
  }

  else
  {
LABEL_32:
  }

  (*(v85 + 104))(v87, *MEMORY[0x1E69760C0], v86);
  type metadata accessor for GenericMusicItem();
  sub_1D4F408C0(&qword_1EDD5C600, type metadata accessor for GenericMusicItem);
  sub_1D4F408C0(&qword_1EC7EAAE0, type metadata accessor for GenericMusicItem);
  sub_1D560E218();
  OUTLINED_FUNCTION_46();
}

void MusicCatalogResourceRequest.prewarmForPlayback<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = *(v24 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = OUTLINED_FUNCTION_222();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &a9 - v39;
  v41 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
  (*(v30 + 16))(v32, v29, v25);
  v42 = (*(v30 + 80) + 72) & ~*(v30 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = *(v27 + 16);
  *(v43 + 40) = v25;
  *(v43 + 48) = *(v27 + 24);
  *(v43 + 64) = v23;
  (*(v30 + 32))(v43 + v42, v32, v25);
  sub_1D4F405A0(0, 0, v40, &unk_1D561F450, v43);

  sub_1D4E50004(v40, &qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F3EF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a6;
  v6[21] = v21;
  v6[19] = a4;
  v7 = *(a6 - 8);
  v6[22] = v7;
  v8 = *(v7 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v9 = *(*(type metadata accessor for MusicRequestConfiguration() - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v10 = type metadata accessor for Bag();
  v6[26] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v13 = sub_1D560F148();
  v6[29] = v13;
  v14 = *(v13 - 8);
  v6[30] = v14;
  v15 = *(v14 + 64) + 15;
  v6[31] = swift_task_alloc();
  v16 = sub_1D560D838();
  v6[32] = v16;
  v17 = *(v16 - 8);
  v6[33] = v17;
  v18 = *(v17 + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F3F19C, 0, 0);
}

uint64_t sub_1D4F3F19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 280);
  v12 = *(v10 + 256);
  v13 = *(v10 + 264);
  v14 = *(v10 + 160);
  v15 = *(v10 + 168);
  v16 = *(v10 + 152);
  sub_1D560EC98();
  LOBYTE(v16) = sub_1D560D7E8();
  v17 = *(v13 + 8);
  v18 = OUTLINED_FUNCTION_128();
  v17(v18);
  if (v16)
  {
    goto LABEL_4;
  }

  v19 = *(v10 + 272);
  v20 = *(v10 + 256);
  v22 = *(v10 + 224);
  v21 = *(v10 + 232);
  v23 = *(v10 + 160);
  v24 = *(v10 + 168);
  v25 = *(v10 + 152);
  sub_1D560EC98();
  sub_1D560D7A8();
  v26 = OUTLINED_FUNCTION_128();
  v17(v26);
  if (__swift_getEnumTagSinglePayload(v22, 1, v21) == 1)
  {
    sub_1D4E50004(*(v10 + 224), &unk_1EC7F1970, &qword_1D561F4A0);
LABEL_4:
    if (qword_1EDD5D8A8 != -1)
    {
      OUTLINED_FUNCTION_0_23();
    }

    v27 = sub_1D560C758();
    __swift_project_value_buffer(v27, qword_1EDD76DC8);
    v28 = sub_1D560C738();
    v29 = sub_1D56156E8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D4E3F000, v28, v29, "Skipping server item database import due to no importable item being returned in the MusicCatalogResourceResponse.", v30, 2u);
      OUTLINED_FUNCTION_122();
    }

    OUTLINED_FUNCTION_4_16();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_25_3();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }

  v40 = *(v10 + 200);
  (*(*(v10 + 240) + 32))(*(v10 + 248), *(v10 + 224), *(v10 + 232));
  sub_1D502EF3C();
  v41 = *(v40 + 17);
  *(v10 + 352) = v41;
  if (v41 == 1)
  {
    v42 = swift_task_alloc();
    *(v10 + 288) = v42;
    *v42 = v10;
    OUTLINED_FUNCTION_42_11(v42);
    OUTLINED_FUNCTION_25_3();

    return sub_1D4F56EB4(v43);
  }

  else
  {
    v45 = swift_task_alloc();
    *(v10 + 304) = v45;
    *v45 = v10;
    OUTLINED_FUNCTION_42_11(v45);
    OUTLINED_FUNCTION_25_3();

    return sub_1D4F573D4();
  }
}

uint64_t sub_1D4F3F46C()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  v6 = *(v4 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v5 + 296) = v0;

  if (v0)
  {
    v9 = sub_1D4F3F93C;
  }

  else
  {
    *(v5 + 320) = v3;
    v9 = sub_1D4F3F69C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D4F3F584()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  v6 = *(v4 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v5 + 312) = v0;

  if (v0)
  {
    v9 = sub_1D4F3FD6C;
  }

  else
  {
    *(v5 + 328) = v3;
    v9 = sub_1D4F3FAE8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D4F3F69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 320);
  type metadata accessor for Bag.UnderlyingBagWrapper();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *(v10 + 296);
  v14 = *(v10 + 352);
  v15 = *(v10 + 216);
  v16 = *(v10 + 200);
  v17 = v15 + *(*(v10 + 208) + 20);
  *v17 = v12;
  *(v17 + 8) = (v14 & 1) == 0;
  sub_1D4E56C6C(v16, v15);
  v18 = OUTLINED_FUNCTION_51_10();
  if (v13)
  {

LABEL_11:
    OUTLINED_FUNCTION_45_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1D561C050;
    *(v42 + 32) = sub_1D560F138();
    *(v42 + 40) = v43;
    sub_1D4F40B98();
    v44 = sub_1D4F4049C();
    *(v10 + 336) = v44;
    *(v10 + 16) = v10;
    OUTLINED_FUNCTION_12_20();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB728, &qword_1D5642810);
    OUTLINED_FUNCTION_11_15(v45);
    *(v10 + 88) = 1107296256;
    OUTLINED_FUNCTION_10_13();
    [v44 performWithCompletionHandler_];
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DEC8](v46);
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  v19 = sub_1D560C758();
  __swift_project_value_buffer(v19, qword_1EDD76DC8);
  v20 = sub_1D560C738();
  v21 = sub_1D56156E8();
  v22 = os_log_type_enabled(v20, v21);
  v24 = *(v10 + 240);
  v23 = *(v10 + 248);
  v25 = *(v10 + 232);
  v26 = *(v10 + 216);
  if (v22)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_50_7(&dword_1D4E3F000, v27, v28, "Skipping server item database import due to bag value isPrewarmPlaybackDisabled being true.");
    OUTLINED_FUNCTION_122();
  }

  OUTLINED_FUNCTION_2_9();
  sub_1D4E583B4(v26, v29);
  v30 = *(v24 + 8);
  v31 = OUTLINED_FUNCTION_128();
  v32(v31);
  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t sub_1D4F3F93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = v10[37];
  v13 = v10[30];
  v12 = v10[31];
  v14 = v10[29];
  v15 = v10[25];
  OUTLINED_FUNCTION_1_29();
  sub_1D4E583B4(v16, v17);
  v19 = *(v13 + 8);
  v18 = v13 + 8;
  v20 = OUTLINED_FUNCTION_222();
  v21(v20);
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  v22 = sub_1D560C758();
  __swift_project_value_buffer(v22, qword_1EDD76DC8);
  v23 = OUTLINED_FUNCTION_82();
  v24 = sub_1D560C738();
  v25 = sub_1D56156C8();

  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_142();
    v26 = OUTLINED_FUNCTION_38_12();
    *v18 = 138543362;
    v27 = v11;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v28;
    *v26 = v28;
    OUTLINED_FUNCTION_26_7(&dword_1D4E3F000, v29, v30, "Unable to import item into the server item database due to error: %{public}@");
    sub_1D4E50004(v26, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_1D4F3FAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 312);
  v12 = *(v10 + 352);
  v13 = *(v10 + 216);
  v14 = *(v10 + 200);
  v15 = v13 + *(*(v10 + 208) + 20);
  *v15 = *(v10 + 328);
  *(v15 + 8) = (v12 & 1) == 0;
  sub_1D4E56C6C(v14, v13);
  v16 = OUTLINED_FUNCTION_51_10();
  if (v11)
  {

LABEL_11:
    OUTLINED_FUNCTION_45_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1D561C050;
    *(v40 + 32) = sub_1D560F138();
    *(v40 + 40) = v41;
    sub_1D4F40B98();
    v42 = sub_1D4F4049C();
    *(v10 + 336) = v42;
    *(v10 + 16) = v10;
    OUTLINED_FUNCTION_12_20();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB728, &qword_1D5642810);
    OUTLINED_FUNCTION_11_15(v43);
    *(v10 + 88) = 1107296256;
    OUTLINED_FUNCTION_10_13();
    [v42 performWithCompletionHandler_];
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DEC8](v44);
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  v17 = sub_1D560C758();
  __swift_project_value_buffer(v17, qword_1EDD76DC8);
  v18 = sub_1D560C738();
  v19 = sub_1D56156E8();
  v20 = os_log_type_enabled(v18, v19);
  v22 = *(v10 + 240);
  v21 = *(v10 + 248);
  v23 = *(v10 + 232);
  v24 = *(v10 + 216);
  if (v20)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_50_7(&dword_1D4E3F000, v25, v26, "Skipping server item database import due to bag value isPrewarmPlaybackDisabled being true.");
    OUTLINED_FUNCTION_122();
  }

  OUTLINED_FUNCTION_2_9();
  sub_1D4E583B4(v24, v27);
  v28 = *(v22 + 8);
  v29 = OUTLINED_FUNCTION_128();
  v30(v29);
  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_1D4F3FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = v10[39];
  v13 = v10[30];
  v12 = v10[31];
  v14 = v10[29];
  v15 = v10[25];
  OUTLINED_FUNCTION_1_29();
  sub_1D4E583B4(v16, v17);
  v19 = *(v13 + 8);
  v18 = v13 + 8;
  v20 = OUTLINED_FUNCTION_222();
  v21(v20);
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  v22 = sub_1D560C758();
  __swift_project_value_buffer(v22, qword_1EDD76DC8);
  v23 = OUTLINED_FUNCTION_82();
  v24 = sub_1D560C738();
  v25 = sub_1D56156C8();

  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_142();
    v26 = OUTLINED_FUNCTION_38_12();
    *v18 = 138543362;
    v27 = v11;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v28;
    *v26 = v28;
    OUTLINED_FUNCTION_26_7(&dword_1D4E3F000, v29, v30, "Unable to import item into the server item database due to error: %{public}@");
    sub_1D4E50004(v26, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_1D4F3FF18()
{
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 344) = v4;
  if (v4)
  {
    v5 = sub_1D4F402DC;
  }

  else
  {
    v5 = sub_1D4F40024;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D4F40024()
{
  v37 = v0;

  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = sub_1D560C758();
  __swift_project_value_buffer(v5, qword_1EDD76DC8);
  v6 = *(v2 + 16);
  v7 = OUTLINED_FUNCTION_222();
  v6(v7);
  v8 = sub_1D560C738();
  v9 = sub_1D56156E8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 240);
  v12 = *(v0 + 248);
  v13 = *(v0 + 232);
  v35 = *(v0 + 216);
  v14 = *(v0 + 192);
  if (v10)
  {
    log = v8;
    v31 = *(v0 + 336);
    v34 = *(v0 + 248);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    v29 = v9;
    v17 = *(v0 + 160);
    v33 = *(v0 + 232);
    v18 = OUTLINED_FUNCTION_142();
    v32 = v11;
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136446210;
    (v6)(v16, v14, v17);
    v20 = sub_1D5614DB8();
    v22 = v21;
    (*(v15 + 8))(v14, v17);
    sub_1D4E6835C(v20, v22, &v36);
    OUTLINED_FUNCTION_82();

    *(v18 + 4) = v17;
    _os_log_impl(&dword_1D4E3F000, log, v29, "Successfully imported item %{public}s into the server item database.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();

    OUTLINED_FUNCTION_2_9();
    sub_1D4E583B4(v35, v23);
    (*(v32 + 8))(v34, v33);
  }

  else
  {
    v24 = *(v0 + 176);
    v25 = *(v0 + 160);

    (*(v24 + 8))(v14, v25);
    OUTLINED_FUNCTION_2_9();
    sub_1D4E583B4(v35, v26);
    (*(v11 + 8))(v12, v13);
  }

  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_55();

  return v27();
}

uint64_t sub_1D4F402DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v12 = v10[42];
  v11 = v10[43];
  v14 = v10[30];
  v13 = v10[31];
  v15 = v10[29];
  v16 = v10[27];
  swift_willThrow();

  OUTLINED_FUNCTION_2_9();
  sub_1D4E583B4(v16, v17);
  (*(v14 + 8))(v13, v15);
  v18 = v10[43];
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  v19 = sub_1D560C758();
  __swift_project_value_buffer(v19, qword_1EDD76DC8);
  v20 = OUTLINED_FUNCTION_82();
  v21 = sub_1D560C738();
  v22 = sub_1D56156C8();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_142();
    v23 = OUTLINED_FUNCTION_38_12();
    *v16 = 138543362;
    v24 = v18;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v25;
    *v23 = v25;
    OUTLINED_FUNCTION_26_7(&dword_1D4E3F000, v26, v27, "Unable to import item into the server item database due to error: %{public}@");
    sub_1D4E50004(v23, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

id sub_1D4F4049C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1D5615158();

  v2 = [v0 initWithStoreIDs_];

  return v2;
}

uint64_t *sub_1D4F40510(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1D4F23514(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1D4F23510(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4F405A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v27 - v13;
  sub_1D4E69910(a3, v27 - v13, &qword_1EC7EB710, &qword_1D561F440);
  v15 = sub_1D5615458();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v14, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    sub_1D5615448();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1D5615338();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1D5614DE8() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v28[0] = 0;
        v28[1] = 0;
        v24 = v28;
        v28[2] = v19;
        v28[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v27[1] = 7;
      v27[2] = v24;
      v27[3] = v22;
      swift_task_create();
      OUTLINED_FUNCTION_82();

      return v19;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v19;
    v28[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1D4F40860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D4F408C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4F40908(uint64_t a1)
{
  v3 = v1[5];
  v15 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = (*(*(v3 - 8) + 80) + 72) & ~*(*(v3 - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_32(v10);
  *v11 = v12;
  v11[1] = sub_1D4F40A20;

  return sub_1D4F3EF78(a1, v8, v9, v1 + v7, v15, v3);
}

uint64_t sub_1D4F40A20()
{
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D4F40B04()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_23_8(v4);

  return v7(v6);
}

unint64_t sub_1D4F40B98()
{
  result = qword_1EC7EBF10;
  if (!qword_1EC7EBF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7EBF10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_51_10()
{

  return sub_1D51057D8();
}

void sub_1D4F40C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D4F03980();
    v5 = sub_1D53FF658(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_1D4F03980();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1D4ECC79C(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1D4ECC79C(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1D4F40E88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v349 = a2;
  v344 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v299 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v305 = v299 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v327 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v30);
  v340 = sub_1D560D4C8();
  v31 = OUTLINED_FUNCTION_4(v340);
  v300 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v36);
  v37 = sub_1D560E728();
  v38 = OUTLINED_FUNCTION_4(v37);
  v334 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v42);
  v336 = sub_1D560D9A8();
  v43 = OUTLINED_FUNCTION_4(v336);
  v338 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v48);
  v332 = sub_1D560F148();
  v49 = OUTLINED_FUNCTION_4(v332);
  v306 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v55);
  v359 = sub_1D560F0F8();
  v56 = OUTLINED_FUNCTION_4(v359);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13();
  v358 = v61;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_2();
  v355 = v63;
  v361 = sub_1D560D9E8();
  v64 = OUTLINED_FUNCTION_4(v361);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  v370 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF40, &unk_1D561F540);
  v71 = OUTLINED_FUNCTION_22(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_135();
  v363 = v75;
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_135();
  v360 = v77;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13_2();
  v372 = v80;
  v81 = sub_1D560DB08();
  v82 = OUTLINED_FUNCTION_4(v81);
  v84 = v83;
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v89);
  v91 = v299 - v90;
  v92 = *(v84 + 104);
  v303 = *MEMORY[0x1E6975030];
  v335 = v93;
  v323 = v84 + 104;
  v322 = v92;
  v92(v299 - v90);
  v94 = sub_1D4F43FB8(&qword_1EDD5D748, MEMORY[0x1E6975358]);
  v345 = a3;
  v341 = v37;
  v321 = v94;
  sub_1D5614FC8();
  OUTLINED_FUNCTION_33_16();
  v328 = v13;
  if (v214)
  {
    MEMORY[0x1EEE9AC00](v95);
    OUTLINED_FUNCTION_16_16();
    *(v96 - 16) = v91;
    OUTLINED_FUNCTION_17_10();
    sub_1D4F257A8();
  }

  v97 = v95;
  v319 = 0;
  v98 = *(v84 + 8);
  v324 = v84 + 8;
  v320 = v98;
  v98(v91, v335);
  if ((v97 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_17();
    v298 = 36;
LABEL_148:
    v299[0] = v298;
LABEL_149:
    result = sub_1D5615E08();
    __break(1u);
    return result;
  }

  v366 = [a1 musicKit_catalogID];
  v99 = [a1 musicKit_libraryID];
  v100 = v361;
  if (v99)
  {
    v101 = v99;
    v339 = sub_1D5614D68();
    v103 = v102;
  }

  else
  {
    v339 = 0;
    v103 = 0;
  }

  v104 = [a1 musicKit_cloudAlbumLibraryID];
  if (v104)
  {
    v105 = v104;
    v307 = sub_1D5614D68();
    v337 = v106;
  }

  else
  {
    v307 = 0;
    v337 = 0;
  }

  v364 = [a1 musicKit_deviceLocalID];
  v107 = [a1 musicKit_occurrenceID];
  if (v107)
  {
    v108 = v107;
    v330 = sub_1D5614D68();
    v348 = v109;
  }

  else
  {
    v330 = 0;
    v348 = 0;
  }

  v343 = v103;
  v329 = a4;
  v110 = sub_1D560D518();
  v111 = type metadata accessor for MusicPreferredID();
  __swift_storeEnumTagSinglePayload(v372, 1, 1, v111);
  v112 = 0;
  v371 = *(v110 + 16);
  v369 = v66 + 16;
  v368 = v66 + 88;
  v367 = *MEMORY[0x1E6974FD0];
  v362 = *MEMORY[0x1E6974FC8];
  v347 = *MEMORY[0x1E6974FD8];
  v333 = *MEMORY[0x1E6974FC0];
  v316 = *MEMORY[0x1E69755A0];
  v357 = (v58 + 104);
  v315 = *MEMORY[0x1E69755C0];
  v314 = *MEMORY[0x1E69755A8];
  v313 = *MEMORY[0x1E69755B8];
  v312 = *MEMORY[0x1E69755C8];
  v352 = (v58 + 16);
  v351 = (v58 + 8);
  v311 = *MEMORY[0x1E69755B0];
  v113 = &unk_1EC7EBF40;
  v310 = *MEMORY[0x1E69755E0];
  v114 = &unk_1D561F540;
  v356 = *MEMORY[0x1E69755D0];
  v342 = a1;
  v115 = v363;
  v365 = v110;
  v353 = v66;
  v350 = v111;
  while (1)
  {
    if (v371 == v112)
    {

      goto LABEL_45;
    }

    if (v112 >= *(v110 + 16))
    {
      __break(1u);
      goto LABEL_144;
    }

    v116 = v114;
    v117 = v370;
    (*(v66 + 16))(v370, v110 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v112, v100);
    v118 = (*(v66 + 88))(v117, v100);
    if (v118 == v367)
    {
      v114 = v116;
      if (!v366)
      {
        goto LABEL_41;
      }

      v119 = v366;
      v120 = [v119 value];
      sub_1D5614D68();

      sub_1D560EED8();
      v121 = [v119 kind];
      v122 = a1;
      v123 = v356;
      switch(v121)
      {
        case 0uLL:
          goto LABEL_39;
        case 1uLL:
          v124 = &v343 + 4;
          goto LABEL_38;
        case 2uLL:
          v124 = &v344;
          goto LABEL_38;
        case 3uLL:
          v124 = &v344 + 4;
          goto LABEL_38;
        case 4uLL:
          v124 = &v345;
          goto LABEL_38;
        case 5uLL:
          v124 = &v345 + 4;
          goto LABEL_38;
        case 6uLL:
          v124 = v346;
          goto LABEL_38;
        case 7uLL:
          v124 = v346 + 4;
LABEL_38:
          v123 = *(v124 - 64);
LABEL_39:
          v137 = v355;
          v138 = v359;
          (*v357)(v355, v123, v359);
          (*v352)(v358, v137, v138);
          v131 = v354;
          sub_1D560F118();

          (*v351)(v137, v138);
          v113 = &unk_1EC7EBF40;
          v114 = v116;
          sub_1D4E7661C(v372, &unk_1EC7EBF40, v116);
          v111 = v350;
          swift_storeEnumTagMultiPayload();
          a1 = v122;
          v100 = v361;
          v115 = v363;
          v66 = v353;
          break;
        case 8uLL:
          OUTLINED_FUNCTION_15_17();
          v299[0] = 49;
          goto LABEL_149;
        default:
          goto LABEL_149;
      }

      goto LABEL_40;
    }

    v114 = v116;
    if (v118 == v362)
    {
      if (!v364)
      {
        goto LABEL_41;
      }

      v125 = v364;
      [v125 value];
      v346[1] = sub_1D560EF08();
      v346[0] = v126;
      v127 = [v125 databaseID];
      sub_1D5614D68();

      v113 = &unk_1EC7EBF40;
      v115 = v363;
      v128 = v100;
      v129 = v342;
      sub_1D560EED8();
      v130 = v360;
      sub_1D560D4A8();

      OUTLINED_FUNCTION_28_12();
      swift_storeEnumTagMultiPayload();
      v131 = v130;
      a1 = v129;
      v100 = v128;
      v114 = v116;
      goto LABEL_40;
    }

    if (v118 == v347)
    {
      if (v343)
      {

        v132 = sub_1D560EED8();
        v133 = v100;
        v134 = a1;
        v136 = v135;
        sub_1D4E7661C(v372, &unk_1EC7EBF40, v116);
        v131 = v360;
        *v360 = v132;
        *(v131 + 8) = v136;
        v114 = v116;
        a1 = v134;
        v100 = v133;
        v113 = &unk_1EC7EBF40;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v114 = v116;
        if (!v337)
        {
          goto LABEL_41;
        }

LABEL_31:

        v114 = sub_1D560EED8();
        OUTLINED_FUNCTION_28_12();
        OUTLINED_FUNCTION_18_15();
        swift_storeEnumTagMultiPayload();
        v131 = a1;
        a1 = v100;
        v100 = &unk_1EC7EBF40;
        v113 = &unk_1EC7EBF40;
      }

LABEL_40:
      __swift_storeEnumTagSinglePayload(v131, 0, 1, v111);
      sub_1D4F43DC0(v131, v372);
      v110 = v365;
      goto LABEL_41;
    }

    if (v118 != v333)
    {
      OUTLINED_FUNCTION_15_17();
      v298 = 70;
      goto LABEL_148;
    }

    if (v348)
    {
      goto LABEL_31;
    }

LABEL_41:
    sub_1D4F43D5C(v372, v115, &unk_1EC7EBF40, v114);
    if (__swift_getEnumTagSinglePayload(v115, 1, v111) != 1)
    {
      break;
    }

    sub_1D4E7661C(v115, &unk_1EC7EBF40, v114);
    ++v112;
  }

  sub_1D4E7661C(v115, &unk_1EC7EBF40, &unk_1D561F540);
LABEL_45:
  v139 = v325;
  sub_1D4F43D5C(v372, v325, &unk_1EC7EBF40, &unk_1D561F540);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v139, 1, v111);
  v141 = v343;
  if (EnumTagSinglePayload == 1)
  {
    v142 = *MEMORY[0x1E6975050];
    v143 = v308;
    OUTLINED_FUNCTION_11_16();
    v144();
    OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_33_16();
    if (v214)
    {
      MEMORY[0x1EEE9AC00](v145);
      OUTLINED_FUNCTION_16_16();
      *(v146 - 16) = v143;
      OUTLINED_FUNCTION_17_10();
      v147 = v319;
      sub_1D4F257A8();
      v156 = v148;
      v319 = v147;
    }

    else
    {
      v156 = v145;
    }

    v157 = v317;
    OUTLINED_FUNCTION_10_14();
    v158();
    if (v156)
    {
      goto LABEL_152;
    }

    OUTLINED_FUNCTION_11_16();
    v165();
    OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_33_16();
    if (v214)
    {
      MEMORY[0x1EEE9AC00](v166);
      OUTLINED_FUNCTION_16_16();
      *(v167 - 16) = v318;
      OUTLINED_FUNCTION_17_10();
      v168 = v319;
      sub_1D4F257A8();
      v170 = v169;
      v319 = v168;
      v157 = v317;
    }

    else
    {
      v170 = v166;
    }

    OUTLINED_FUNCTION_10_14();
    v171();
    if (v170)
    {
      v172 = *MEMORY[0x1E6975040];
      OUTLINED_FUNCTION_11_16();
      v173();
      OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_33_16();
      if (v214)
      {
        MEMORY[0x1EEE9AC00](v174);
        OUTLINED_FUNCTION_16_16();
        *(v175 - 16) = v157;
        OUTLINED_FUNCTION_17_10();
        sub_1D4F257A8();
      }

      v205 = v174;
      OUTLINED_FUNCTION_10_14();
      v206();
      if ((v205 & 1) == 0)
      {
LABEL_152:
        v159 = [a1 musicKit_playbackID];
        if (v159)
        {
          v160 = v159;
          sub_1D5614D68();
          OUTLINED_FUNCTION_22_13();

          OUTLINED_FUNCTION_222();
          sub_1D560EED8();
          v161 = OUTLINED_FUNCTION_1_30();
          v162(v161);
          v163 = OUTLINED_FUNCTION_0_24();
          v164(v163);
          OUTLINED_FUNCTION_7_22();
          sub_1D560D538();
          goto LABEL_100;
        }
      }
    }

    v207 = [a1 musicKit_playbackID];
    v110 = v336;
    if (v207)
    {
      v208 = v207;
      sub_1D5614D68();

      v209 = [a1 musicKit_identifierSetSources];
      if (v209)
      {
        v210 = v209;
        v211 = sub_1D5615168();

        if (v211[2])
        {
          a1 = 0xD000000000000010;
          v213 = v211[4];
          v212 = v211[5];

          v214 = v213 == 0xD000000000000010 && 0x80000001D567F190 == v212;
          if (v214)
          {

            OUTLINED_FUNCTION_26_8();
          }

          else
          {
            v215 = sub_1D5616168();

            OUTLINED_FUNCTION_26_8();
            if ((v215 & 1) == 0)
            {

              v110 = v336;
              goto LABEL_78;
            }
          }

          sub_1D560EED8();
          v240 = OUTLINED_FUNCTION_1_30();
          v241(v240);
          v242 = OUTLINED_FUNCTION_0_24();
          v243(v242);
          OUTLINED_FUNCTION_21_14();
          OUTLINED_FUNCTION_7_22();
          sub_1D560D538();
LABEL_99:
          v141 = v343;
          goto LABEL_100;
        }
      }
    }

LABEL_78:
    v216 = v331;
    sub_1D560D898();
    v217 = sub_1D560D8C8();
    v113 = *(v338 + 8);
    v113(v216, v110);
    if (v217)
    {
      v218 = [a1 musicKit_containedDeviceLocalID];
      if (v218)
      {
        v219 = v218;
        [v219 value];
        sub_1D560EF08();
        OUTLINED_FUNCTION_22_13();
        v220 = [v219 databaseID];
        sub_1D5614D68();
        OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_85_0();
        sub_1D560EED8();
        OUTLINED_FUNCTION_222();
        sub_1D560D4A8();

        OUTLINED_FUNCTION_5_14();
        v221 = OUTLINED_FUNCTION_31_14();
        v222(v221);
        OUTLINED_FUNCTION_3_16();
        v224 = *(v223 - 256);
        OUTLINED_FUNCTION_2_10();
        v225();
        OUTLINED_FUNCTION_21_14();
        OUTLINED_FUNCTION_61();
        sub_1D560D6B8();

        goto LABEL_99;
      }
    }

    sub_1D560EED8();
    (*v357)(v358, v356, v359);
    sub_1D560F118();
    v226 = *(v306 + 16);
    v227 = OUTLINED_FUNCTION_61();
    v228(v227);
    v229 = a1;
    a1 = *(v338 + 16);
    (a1)(v331, v349, v110);
    OUTLINED_FUNCTION_3_16();
    v231 = *(v230 - 256);
    OUTLINED_FUNCTION_2_10();
    v232();
    OUTLINED_FUNCTION_61();
    sub_1D560D798();
    if (([v229 musicKit_hasValidIdentifier] & 1) == 0)
    {
      v233 = [v342 musicKit_identifierSetSources];
      if (v233)
      {
        v234 = v233;
        v235 = sub_1D5615168();

        if (v235[2])
        {
          v237 = v235[4];
          v236 = v235[5];

          if (v237 == 0x6D6552616964654DLL && v236 == 0xEB0000000065746FLL)
          {

            goto LABEL_142;
          }

          v239 = sub_1D5616168();

          v110 = v336;
          if (v239)
          {
LABEL_142:
            v296 = OUTLINED_FUNCTION_24_15();
            v297(v296);
            OUTLINED_FUNCTION_26_8();
LABEL_98:
            OUTLINED_FUNCTION_21_14();
            goto LABEL_99;
          }
        }

        else
        {
        }
      }
    }

    if (qword_1EDD5D8A8 == -1)
    {
LABEL_94:
      v244 = sub_1D560C758();
      __swift_project_value_buffer(v244, qword_1EDD76DC8);
      v245 = v301;
      (a1)(v301, v349, v110);
      OUTLINED_FUNCTION_26_8();
      swift_unknownObjectRetain();
      v246 = sub_1D560C738();
      v247 = sub_1D56156C8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v246, v247))
      {
        v248 = swift_slowAlloc();
        v249 = swift_slowAlloc();
        v373 = a1;
        v374 = v249;
        *v248 = 136315394;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF50, &unk_1D561F550);
        v250 = sub_1D5614DB8();
        v252 = sub_1D4E6835C(v250, v251, &v374);

        *(v248 + 4) = v252;
        *(v248 + 12) = 2080;
        v253 = sub_1D560D8A8();
        v255 = v254;
        v113(v245, v336);
        v256 = sub_1D4E6835C(v253, v255, &v374);

        *(v248 + 14) = v256;
        _os_log_impl(&dword_1D4E3F000, v246, v247, "No catalogID, libraryID, or deviceLocalID was found from underlying identifier set %s. A MusicIdentifierSet with empty string, for type %s, is being used.", v248, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v249, -1, -1);
        MEMORY[0x1DA6ED200](v248, -1, -1);
      }

      else
      {

        v113(v245, v110);
      }

      v257 = OUTLINED_FUNCTION_24_15();
      v258(v257);
      goto LABEL_98;
    }

LABEL_144:
    swift_once();
    goto LABEL_94;
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v199 = *v139;
      v200 = v139[1];
      v201 = OUTLINED_FUNCTION_1_30();
      v202(v201);
      v203 = OUTLINED_FUNCTION_0_24();
      v204(v203);
      OUTLINED_FUNCTION_7_22();
      sub_1D560D7F8();
      break;
    case 2u:
      v182 = *v139;
      v183 = v139[1];
      v184 = OUTLINED_FUNCTION_1_30();
      v185(v184);
      v186 = OUTLINED_FUNCTION_0_24();
      v187(v186);
      OUTLINED_FUNCTION_7_22();
      sub_1D560D678();
      break;
    case 3u:
      v188 = v300;
      v189 = *(v300 + 32);
      v190 = v302;
      v191 = OUTLINED_FUNCTION_61();
      v192 = v340;
      v193(v191);
      (*(v188 + 16))(v299[1], v190, v192);
      OUTLINED_FUNCTION_5_14();
      v194 = OUTLINED_FUNCTION_31_14();
      v195(v194);
      OUTLINED_FUNCTION_3_16();
      v197 = *(v196 - 256);
      OUTLINED_FUNCTION_2_10();
      v198();
      sub_1D560D5B8();
      (*(v188 + 8))(v190, v192);
      break;
    case 4u:
      v176 = *v139;
      v177 = v139[1];
      v178 = OUTLINED_FUNCTION_1_30();
      v179(v178);
      v180 = OUTLINED_FUNCTION_0_24();
      v181(v180);
      OUTLINED_FUNCTION_7_22();
      sub_1D560D598();
      break;
    default:
      v149 = v306;
      v150 = v304;
      v151 = v332;
      (*(v306 + 32))(v304, v139, v332);
      (*(v149 + 16))(v299[0], v150, v151);
      v152 = OUTLINED_FUNCTION_1_30();
      v153(v152);
      v154 = OUTLINED_FUNCTION_0_24();
      v155(v154);
      sub_1D560D798();
      (*(v149 + 8))(v150, v151);
      break;
  }

LABEL_100:
  sub_1D560D808();
  if (v259)
  {
  }

  else if (v141)
  {
    sub_1D560EED8();
    sub_1D560D818();
  }

  v260 = v326;
  sub_1D560D7A8();
  v261 = v332;
  v262 = __swift_getEnumTagSinglePayload(v260, 1, v332);
  sub_1D4E7661C(v260, &unk_1EC7F1970, &qword_1D561F4A0);
  if (v262 == 1 && v366)
  {
    v263 = v366;
    v264 = v309;
    sub_1D517FD2C(v263);
    __swift_storeEnumTagSinglePayload(v264, 0, 1, v261);
    sub_1D560D7B8();
  }

  v265 = v327;
  sub_1D560D5C8();
  v266 = __swift_getEnumTagSinglePayload(v265, 1, v340);
  sub_1D4E7661C(v265, &unk_1EC7EBF20, &unk_1D561F530);
  if (v266 == 1 && v364)
  {
    v267 = v364;
    [v267 value];
    sub_1D560EF08();
    OUTLINED_FUNCTION_22_13();
    v268 = [v267 databaseID];
    sub_1D5614D68();
    OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_21_14();
    sub_1D560EED8();
    OUTLINED_FUNCTION_9_17();

    OUTLINED_FUNCTION_14_13();
    sub_1D560D5D8();
  }

  if ([a1 musicKit_cloudID])
  {
    sub_1D560EF08();
    sub_1D560D778();
  }

  v269 = [a1 musicKit_cloudAlbumLibraryID];
  if (v269)
  {
    v270 = v269;
    sub_1D5614D68();
    OUTLINED_FUNCTION_22_13();

    OUTLINED_FUNCTION_222();
    sub_1D560EED8();
    sub_1D560D698();
  }

  if ([a1 musicKit_reportingAdamID])
  {
    sub_1D560EF08();
    sub_1D560D658();
  }

  if ([a1 musicKit_purchasedAdamID])
  {
    sub_1D560EF08();
    sub_1D560D638();
  }

  if ([a1 musicKit_assetAdamID])
  {
    sub_1D560EF08();
    sub_1D560D578();
  }

  v271 = [a1 musicKit_deviceLocalID];
  if (v271)
  {
    v272 = v271;
    [v272 value];
    sub_1D560EF08();
    OUTLINED_FUNCTION_22_13();
    v273 = [v272 databaseID];
    sub_1D5614D68();
    OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_21_14();
    sub_1D560EED8();
    OUTLINED_FUNCTION_9_17();

    OUTLINED_FUNCTION_14_13();
    sub_1D560D5D8();
  }

  v274 = [a1 musicKit_formerIDs];
  if (v274)
  {
    v275 = v274;
    v276 = sub_1D5615168();

    v277 = *(v276 + 16);
    if (v277)
    {
      v374 = MEMORY[0x1E69E7CC0];
      sub_1D4F03CA4();
      v278 = v374;
      a1 = (v276 + 40);
      do
      {
        v279 = *(a1 - 1);
        v280 = *a1;

        v281 = sub_1D560EED8();
        v283 = v282;
        v374 = v278;
        v284 = *(v278 + 16);
        if (v284 >= *(v278 + 24) >> 1)
        {
          sub_1D4F03CA4();
          v278 = v374;
        }

        *(v278 + 16) = v284 + 1;
        v285 = v278 + 16 * v284;
        *(v285 + 32) = v281;
        *(v285 + 40) = v283;
        a1 += 2;
        --v277;
      }

      while (v277);

      OUTLINED_FUNCTION_26_8();
      OUTLINED_FUNCTION_21_14();
    }

    else
    {

      v278 = MEMORY[0x1E69E7CC0];
    }

    sub_1D52B595C(v278);
    sub_1D560D7D8();
  }

  v286 = [a1 musicKit_containedDeviceLocalID];
  if (v286)
  {
    v287 = v286;
    [v287 value];
    sub_1D560EF08();
    OUTLINED_FUNCTION_22_13();
    v288 = [v287 databaseID];
    sub_1D5614D68();
    OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_21_14();
    sub_1D560EED8();
    OUTLINED_FUNCTION_9_17();

    OUTLINED_FUNCTION_14_13();
    sub_1D560D6D8();
  }

  v289 = [a1 musicKit_playbackID];
  if (v289)
  {
    v290 = v289;
    sub_1D5614D68();
    OUTLINED_FUNCTION_22_13();

    OUTLINED_FUNCTION_222();
    sub_1D560EED8();
    sub_1D560D558();
  }

  if ([a1 musicKit_syncID])
  {
    sub_1D560EF08();
    sub_1D560D738();
  }

  v291 = sub_1D560D8F8();
  if (dynamic_cast_existential_1_conditional(v291))
  {
    v292 = [a1 musicKit_modelKind];
    if (v292)
    {
      v293 = v292;
      sub_1D560D268();

      sub_1D560D5F8();
    }
  }

  v294 = v329;
  sub_1D4F43D5C(v329, v328, &unk_1EC7EBF30, &qword_1D561C8C0);
  sub_1D560D508();
  swift_unknownObjectRelease();

  sub_1D4E7661C(v294, &unk_1EC7EBF30, &qword_1D561C8C0);
  (*(v334 + 8))(v345, v341);
  (*(v338 + 8))(v349, v336);
  return sub_1D4E7661C(v372, &unk_1EC7EBF40, &unk_1D561F540);
}