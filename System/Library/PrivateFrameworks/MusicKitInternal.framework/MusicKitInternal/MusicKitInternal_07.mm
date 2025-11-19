void sub_1D4EFA358()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_66_3();
  v5 = type metadata accessor for InternalMusicPlayer.Queue.Entry();
  v6 = OUTLINED_FUNCTION_7_17(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_56_5();
  OUTLINED_FUNCTION_152_1();
  if (v14 && v4 && v2 != v3)
  {
    OUTLINED_FUNCTION_27_4(v10);
    OUTLINED_FUNCTION_159_2(v11);
    while (1)
    {
      OUTLINED_FUNCTION_61();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_109();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_158();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      v15 = sub_1D5104E50((v1 + *(v5 + 20)), (v0 + *(v5 + 20)));
      sub_1D4E58360();
      OUTLINED_FUNCTION_234();
      if (v15)
      {
        OUTLINED_FUNCTION_72_6();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_1D4E58360();
    OUTLINED_FUNCTION_98();
    sub_1D4E58360();
  }

LABEL_17:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_46();
}

void sub_1D4EFA4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = OUTLINED_FUNCTION_46_7();
  v26 = type metadata accessor for InternalMusicPlayer.Dialog.Action(v25);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  OUTLINED_FUNCTION_28_9();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &a9 - v33;
  v35 = *(v20 + 16);
  if (v35 == *(v24 + 16) && v35 && v20 != v24)
  {
    OUTLINED_FUNCTION_27_4(v32);
    v37 = v20 + v36;
    v38 = v24 + v36;
    v40 = *(v39 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_63_1();
      sub_1D4F0B238();
      if (!v35)
      {
        break;
      }

      OUTLINED_FUNCTION_134_0();
      sub_1D4F0B238();
      v41 = *v34 == *v30 && *(v34 + 1) == *(v30 + 8);
      if (!v41 && (sub_1D5616168() & 1) == 0)
      {
        sub_1D4E58360();
        OUTLINED_FUNCTION_222();
        sub_1D4E58360();
        goto LABEL_19;
      }

      v42 = v34[16];
      v43 = *(v30 + 16);
      sub_1D4E58360();
      OUTLINED_FUNCTION_68_4();
      sub_1D4E58360();
      v44 = v42 != v43 || v35-- == 1;
      v38 += v40;
      v37 += v40;
      if (v44)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4EFA6B4()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560C0A8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v46 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v48 = v18;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v49);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_41_6();
  v50 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation();
  v22 = OUTLINED_FUNCTION_7_17(v50);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_28_9();
  OUTLINED_FUNCTION_156_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_165_1();
  v27 = *(v6 + 16);
  if (v27 == *(v4 + 16) && v27 && v6 != v4)
  {
    OUTLINED_FUNCTION_27_4(v26);
    v29 = v6 + v28;
    v30 = v4 + v28;
    v43 = v0;
    v44 = (v10 + 8);
    v47 = *(v31 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_130();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_216();
      sub_1D4F0B238();
      v32 = *v2 == *v1 && v2[1] == v1[1];
      if (!v32 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      v33 = v2[2] == v1[2] && v2[3] == v1[3];
      if (!v33 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      v34 = *(v50 + 24);
      v35 = *(v49 + 48);
      sub_1D4F0AE7C();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_10(v0);
      if (v32)
      {
        OUTLINED_FUNCTION_10(v0 + v35);
        if (!v32)
        {
          goto LABEL_27;
        }

        v36 = OUTLINED_FUNCTION_61();
        sub_1D4E50004(v36, v37, &unk_1D561D1D0);
      }

      else
      {
        sub_1D4F0AE7C();
        OUTLINED_FUNCTION_10(v0 + v35);
        if (v38)
        {
          (*v44)(v48, v7);
LABEL_27:
          sub_1D4E50004(v0, &qword_1EC7E9FB0, &qword_1D562C590);
          break;
        }

        OUTLINED_FUNCTION_203();
        v39(v46, v0 + v35, v7);
        OUTLINED_FUNCTION_0_15();
        sub_1D4F0B28C(&qword_1EDD5CF90, v40);
        v45 = sub_1D5614D18();
        v41 = *v44;
        v0 = v43;
        (*v44)(v46, v7);
        v41(v48, v7);
        sub_1D4E50004(v43, &unk_1EC7E9CA8, &unk_1D561D1D0);
        if ((v45 & 1) == 0)
        {
          break;
        }
      }

      v42 = *(v2 + *(v50 + 28)) ^ *(v1 + *(v50 + 28));
      sub_1D4E58360();
      OUTLINED_FUNCTION_132_1();
      sub_1D4E58360();
      if ((v42 & 1) == 0)
      {
        v30 += v47;
        v29 += v47;
        if (--v27)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    sub_1D4E58360();
    OUTLINED_FUNCTION_214();
    sub_1D4E58360();
  }

LABEL_29:
  OUTLINED_FUNCTION_46();
}

void sub_1D4EFAB38()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_66_3();
  v5 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink();
  v6 = OUTLINED_FUNCTION_7_17(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_56_5();
  OUTLINED_FUNCTION_152_1();
  if (v14 && v4 && v2 != v3)
  {
    OUTLINED_FUNCTION_27_4(v10);
    OUTLINED_FUNCTION_159_2(v11);
    while (1)
    {
      OUTLINED_FUNCTION_61();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_109();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_158();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      v15 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
      if (!v15 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      v16 = *(v5 + 24);
      v17 = sub_1D560BFB8();
      sub_1D4E58360();
      OUTLINED_FUNCTION_234();
      if (v17)
      {
        OUTLINED_FUNCTION_72_6();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1D4E58360();
    OUTLINED_FUNCTION_98();
    sub_1D4E58360();
  }

LABEL_22:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4EFACE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1D4EFAD58(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_29_4();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4EFADF4()
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  v7 = v6;
  v8 = sub_1D5610088();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v54 = v18;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB208, &qword_1D562F5E0);
  OUTLINED_FUNCTION_14(v55);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_41_6();
  v56 = type metadata accessor for MusicItemTypedIdentifier();
  v22 = OUTLINED_FUNCTION_7_17(v56);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_28_9();
  OUTLINED_FUNCTION_156_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_165_1();
  v27 = *(v7 + 16);
  if (v27 == *(v5 + 16) && v27 && v7 != v5)
  {
    v50 = v1;
    v51 = v0;
    v28 = 0;
    OUTLINED_FUNCTION_27_4(v26);
    v52 = (v11 + 8);
    v53 = *(v29 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_90_3();
      sub_1D4F0B238();
      if (v28 == v27)
      {
        break;
      }

      sub_1D4F0B238();
      v30 = *v3 == *v2 && v3[1] == v2[1];
      if (!v30 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_37;
      }

      v31 = v3[2];
      v32 = v2[2];
      v33 = *(v31 + 16);
      if (v33 != *(v32 + 16))
      {
        goto LABEL_37;
      }

      if (v33)
      {
        v34 = v31 == v32;
      }

      else
      {
        v34 = 1;
      }

      if (!v34)
      {
        v35 = (v31 + 40);
        v36 = (v32 + 40);
        while (v33)
        {
          v37 = *(v35 - 1) == *(v36 - 1) && *v35 == *v36;
          if (!v37 && (sub_1D5616168() & 1) == 0)
          {
            goto LABEL_37;
          }

          v35 += 2;
          v36 += 2;
          if (!--v33)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        break;
      }

LABEL_24:
      v38 = *(v56 + 24);
      if ((sub_1D560D8C8() & 1) == 0)
      {
        goto LABEL_37;
      }

      v39 = *(v56 + 28);
      v40 = *(v55 + 48);
      sub_1D4F0AE7C();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_10(v1);
      if (v30)
      {
        OUTLINED_FUNCTION_10(v1 + v40);
        if (!v30)
        {
          goto LABEL_36;
        }

        v41 = OUTLINED_FUNCTION_224();
        sub_1D4E50004(v41, v42, &unk_1D561DF50);
        sub_1D4E58360();
        OUTLINED_FUNCTION_132_1();
        sub_1D4E58360();
      }

      else
      {
        sub_1D4F0AE7C();
        OUTLINED_FUNCTION_10(v1 + v40);
        if (v43)
        {
          (*v52)(v54, v8);
LABEL_36:
          sub_1D4E50004(v1, &qword_1EC7EB208, &qword_1D562F5E0);
LABEL_37:
          sub_1D4E58360();
          OUTLINED_FUNCTION_214();
          sub_1D4E58360();
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_203();
        v44(v51, v1 + v40, v8);
        OUTLINED_FUNCTION_1_23();
        sub_1D4F0B28C(&qword_1EDD53350, v45);
        v46 = sub_1D5614D18();
        v47 = *v52;
        (*v52)(v51, v8);
        v47(v54, v8);
        v1 = v50;
        v48 = OUTLINED_FUNCTION_224();
        sub_1D4E50004(v48, v49, &unk_1D561DF50);
        sub_1D4E58360();
        sub_1D4E58360();
        if ((v46 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      if (++v28 == v27)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_38:
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4EFB55C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_106_0();
  v4 = type metadata accessor for MusicSuggestedPivotEntry();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v75 = v8;
  OUTLINED_FUNCTION_70_0();
  v80 = type metadata accessor for MusicSuggestedPivotContainer();
  v9 = OUTLINED_FUNCTION_14(v80);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v78 = v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD8, &unk_1D561DBD0);
  OUTLINED_FUNCTION_14(v73);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v74 = v20;
  OUTLINED_FUNCTION_70_0();
  v72 = type metadata accessor for MusicSuggestedPivotSeed();
  v21 = OUTLINED_FUNCTION_14(v72);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3_8();
  v24 = type metadata accessor for MusicSuggestedPivotNode();
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v76 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  v81 = v67 - v30;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADE0, &qword_1D562EF10);
  OUTLINED_FUNCTION_14(v82);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_114();
  v79 = type metadata accessor for MusicSuggestedPivotRound();
  v34 = OUTLINED_FUNCTION_7_17(v79);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_28_9();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v43 = v67 - v42;
  v44 = *(v1 + 16);
  if (v44 != *(v0 + 16) || !v44 || v1 == v0)
  {
    goto LABEL_29;
  }

  v67[1] = v2;
  OUTLINED_FUNCTION_27_4(v41);
  v46 = v1 + v45;
  v47 = v0 + v45;
  v49 = *(v48 + 72);
  v70 = v39;
  v71 = v49;
  v77 = v43;
  v69 = v24;
  while (1)
  {
    sub_1D4F0B238();
    OUTLINED_FUNCTION_141();
    sub_1D4F0B238();
    v50 = *(v82 + 48);
    sub_1D4F0B238();
    sub_1D4F0B238();
    OUTLINED_FUNCTION_209();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    OUTLINED_FUNCTION_74_3();
    sub_1D4F0B238();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_23;
    }

    sub_1D4F0AECC();
    OUTLINED_FUNCTION_61();
    static MusicSuggestedPivotContainer.== infix(_:_:)();
    v52 = v51;
    sub_1D4E58360();
    sub_1D4E58360();
    if ((v52 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_19:
    OUTLINED_FUNCTION_101_0();
    v62 = *(v79 + 20);
    v63 = *&v77[v62];
    v64 = *(v39 + v62);
    sub_1D4F2E468();
    v66 = v65;
    sub_1D4E58360();
    OUTLINED_FUNCTION_217();
    sub_1D4E58360();
    if (v66)
    {
      v47 += v71;
      v46 += v71;
      if (--v44)
      {
        continue;
      }
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_74_3();
  sub_1D4F0B238();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_23:
    sub_1D4E58360();
    sub_1D4E50004(v3, &qword_1EC7EADE0, &qword_1D562EF10);
    goto LABEL_28;
  }

  sub_1D4F0AECC();
  OUTLINED_FUNCTION_61();
  if ((sub_1D5613CF8() & 1) == 0)
  {
    goto LABEL_26;
  }

  v53 = *(v72 + 20);
  v54 = *(v73 + 48);
  v55 = v74;
  sub_1D4F0AE7C();
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_57(v55, 1, v80);
  if (v58)
  {
    OUTLINED_FUNCTION_57(v55 + v54, 1, v80);
    if (!v58)
    {
      goto LABEL_25;
    }

    v56 = OUTLINED_FUNCTION_200();
    sub_1D4E50004(v56, v57, &qword_1D56331E0);
    v39 = v70;
    goto LABEL_18;
  }

  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_57(v55 + v54, 1, v80);
  if (!v58)
  {
    sub_1D4F0AECC();
    static MusicSuggestedPivotContainer.== infix(_:_:)();
    v68 = v59;
    sub_1D4E58360();
    sub_1D4E58360();
    v60 = OUTLINED_FUNCTION_200();
    sub_1D4E50004(v60, v61, &qword_1D56331E0);
    v39 = v70;
    if ((v68 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1D4E58360();
    sub_1D4E58360();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_160_0();
LABEL_25:
  sub_1D4E50004(v55, &qword_1EC7EADD8, &unk_1D561DBD0);
LABEL_26:
  sub_1D4E58360();
  OUTLINED_FUNCTION_134_0();
  sub_1D4E58360();
LABEL_27:
  OUTLINED_FUNCTION_101_0();
LABEL_28:
  sub_1D4E58360();
  sub_1D4E58360();
LABEL_29:
  OUTLINED_FUNCTION_46();
}

void sub_1D4EFBD24()
{
  OUTLINED_FUNCTION_206();
  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D5615A98())
  {
    v4 = v0 >> 62 ? sub_1D5615A98() : *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (i != v4 || !i)
    {
      break;
    }

    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_204_0();
    if (!v8)
    {
      v7 = v0;
    }

    if (v0 >> 62)
    {
      v6 = v7;
    }

    if (v5 == v6)
    {
      break;
    }

    if (i < 0)
    {
      __break(1u);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF10, &qword_1D561DCE0);
    v9 = 4;
    while (1)
    {
      v10 = v9 - 4;
      v11 = v9 - 3;
      if (__OFADD__(v9 - 4, 1))
      {
        break;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6EB9B0](v9 - 4, v1);
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          goto LABEL_29;
        }

        v12 = *(v1 + 8 * v9);
      }

      if ((v0 & 0xC000000000000001) != 0)
      {
        v13 = OUTLINED_FUNCTION_143();
        MEMORY[0x1DA6EB9B0](v13);
      }

      else
      {
        if (v10 >= *(v16 + 16))
        {
          goto LABEL_30;
        }

        v14 = *(v0 + 8 * v9);
      }

      sub_1D4E62A60(&qword_1EC7EAF20, &qword_1EC7EAF10, &qword_1D561DCE0);
      v15 = OUTLINED_FUNCTION_228();

      if (v15)
      {
        ++v9;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }
}

void sub_1D4EFBFD0()
{
  OUTLINED_FUNCTION_47();
  v72 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_64_1();
  v8 = sub_1D560FDA8();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v68 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v71 = v19;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB008, &qword_1D561DDC0);
  OUTLINED_FUNCTION_14(v70);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v69 = v5(0);
  v25 = OUTLINED_FUNCTION_7_17(v69);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_28_9();
  v30 = (v28 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v34 = (&v60 - v33);
  v35 = *(v0 + 16);
  if (v35 == *(v7 + 16) && v35 && v0 != v7)
  {
    OUTLINED_FUNCTION_27_4(v32);
    v37 = v0 + v36;
    v38 = v7 + v36;
    v61 = (v11 + 32);
    v62 = (v11 + 8);
    v65 = *(v39 + 72);
    v66 = v8;
    v40 = &qword_1D561DDB8;
    v67 = v3;
    while (1)
    {
      OUTLINED_FUNCTION_141();
      sub_1D4F0B238();
      if (!v35)
      {
        break;
      }

      OUTLINED_FUNCTION_220();
      sub_1D4F0B238();
      v41 = v34[1];
      v42 = v30[1];
      if (v41)
      {
        if (!v42)
        {
          goto LABEL_35;
        }

        v43 = *v34 == *v30 && v41 == v42;
        if (!v43 && (sub_1D5616168() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v42)
      {
        goto LABEL_35;
      }

      v44 = v34[3];
      v45 = v30[3];
      if (v44)
      {
        if (!v45)
        {
          goto LABEL_35;
        }

        v46 = v34[2] == v30[2] && v44 == v45;
        if (!v46 && (sub_1D5616168() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v45)
      {
        goto LABEL_35;
      }

      v73 = v35;
      v47 = *(v69 + 24);
      v48 = *(v70 + 48);
      v49 = v40;
      sub_1D4F0AE7C();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_10(v24);
      if (v43)
      {
        OUTLINED_FUNCTION_10(&v24[v48]);
        if (!v43)
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_29_3();
        sub_1D4E50004(v50, v51, v52);
        sub_1D4E58360();
        OUTLINED_FUNCTION_200();
        sub_1D4E58360();
      }

      else
      {
        OUTLINED_FUNCTION_189_0();
        OUTLINED_FUNCTION_10(&v24[v48]);
        if (v53)
        {
          (*v62)(v71, v8);
LABEL_34:
          sub_1D4E50004(v24, &qword_1EC7EB008, &qword_1D561DDC0);
LABEL_35:
          sub_1D4E58360();
          OUTLINED_FUNCTION_143();
          sub_1D4E58360();
          goto LABEL_36;
        }

        v54 = &v24[v48];
        v55 = v71;
        v56 = v68;
        (*v61)(v68, v54, v8);
        OUTLINED_FUNCTION_87_2();
        sub_1D4F0B28C(&qword_1EC7EB010, v57);
        OUTLINED_FUNCTION_132_1();
        v63 = sub_1D5614D18();
        v64 = v38;
        v58 = *v62;
        v59 = v56;
        v40 = v49;
        (*v62)(v59, v8);
        v58(v55, v8);
        v38 = v64;
        sub_1D4E50004(v24, &qword_1EC7EAFF8, v49);
        sub_1D4E58360();
        OUTLINED_FUNCTION_200();
        sub_1D4E58360();
        if ((v63 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v8 = v66;
      v38 += v65;
      v37 += v65;
      v35 = v73 - 1;
      if (v73 == 1)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_36:
    OUTLINED_FUNCTION_46();
  }
}

uint64_t sub_1D4EFC494(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_29_4();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4EFC53C(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_54_5(a1, a2);
  if (!v10)
  {
    return 0;
  }

  if (!v2 || result == v4)
  {
    return 1;
  }

  v5 = (v4 + 48);
  v6 = (result + 48);
  while (v2)
  {
    v8 = *v6;
    v6 += 3;
    v7 = v8;
    v9 = *v5;
    v5 += 3;
    result = [v7 isEqual_];
    if (result)
    {
      v10 = v2 == 1;
    }

    else
    {
      v10 = 1;
    }

    --v2;
    if (v10)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void MusicPersonalRecommendationsRequest.Content.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    MEMORY[0x1DA6EC0D0](1);
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1DA6EC0D0](v3);
  v4 = OUTLINED_FUNCTION_98();
  sub_1D4F08B38(v4, v5);
}

uint64_t MusicPersonalRecommendationsRequest.Content.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D56162D8();
  if (v3 == 1)
  {
    MEMORY[0x1DA6EC0D0](1);
    v4 = v1;
    v1 = v2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1DA6EC0D0](v4);
  sub_1D4F08B38(v6, v1);
  return sub_1D5616328();
}

uint64_t sub_1D4EFC6AC()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1D56162D8();
  MusicPersonalRecommendationsRequest.Content.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicPersonalRecommendationsRequest.extendedCatalogResponse(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D4EFC720, 0, 0);
}

uint64_t sub_1D4EFC720()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[4];
  if (sub_1D560E7C8())
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_1D4EFC820;
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return sub_1D4EFC900();
  }

  else
  {
    v7 = v0[2];
    v8 = v0[3];
    v9 = sub_1D560EA18();
    OUTLINED_FUNCTION_14(v9);
    v11 = *(v10 + 16);
    v12 = OUTLINED_FUNCTION_71();
    v13(v12);
    OUTLINED_FUNCTION_22_1();

    return v14();
  }
}

uint64_t sub_1D4EFC820()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D4EFC900()
{
  OUTLINED_FUNCTION_60();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_1D560EA18();
  v1[15] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[16] = v5;
  v7 = *(v6 + 64);
  v1[17] = OUTLINED_FUNCTION_127();
  v8 = sub_1D560BB98();
  v1[18] = v8;
  OUTLINED_FUNCTION_69(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = OUTLINED_FUNCTION_127();
  v12 = sub_1D560D348();
  v1[21] = v12;
  OUTLINED_FUNCTION_69(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = OUTLINED_FUNCTION_127();
  v16 = sub_1D560CD48();
  v1[24] = v16;
  OUTLINED_FUNCTION_69(v16);
  v1[25] = v17;
  v19 = *(v18 + 64);
  v1[26] = OUTLINED_FUNCTION_167();
  v1[27] = swift_task_alloc();
  v20 = type metadata accessor for MusicRequestConfiguration();
  v1[28] = v20;
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  v1[29] = OUTLINED_FUNCTION_127();
  v23 = sub_1D560E8E8();
  v1[30] = v23;
  OUTLINED_FUNCTION_69(v23);
  v1[31] = v24;
  v26 = *(v25 + 64);
  v1[32] = OUTLINED_FUNCTION_127();
  v27 = sub_1D560E408();
  v1[33] = v27;
  OUTLINED_FUNCTION_69(v27);
  v1[34] = v28;
  v30 = *(v29 + 64);
  v1[35] = OUTLINED_FUNCTION_127();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABB0, &qword_1D561D760);
  v1[36] = v31;
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  v1[37] = OUTLINED_FUNCTION_127();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABB8, &qword_1D561D768);
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  v1[38] = OUTLINED_FUNCTION_167();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v37 = sub_1D560E438();
  v1[41] = v37;
  OUTLINED_FUNCTION_69(v37);
  v1[42] = v38;
  v40 = *(v39 + 64);
  v1[43] = OUTLINED_FUNCTION_167();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB280, &qword_1D561DFB0);
  v1[46] = v41;
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  v1[47] = OUTLINED_FUNCTION_127();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB288, &qword_1D561DFB8);
  v1[48] = v44;
  OUTLINED_FUNCTION_69(v44);
  v1[49] = v45;
  v47 = *(v46 + 64);
  v1[50] = OUTLINED_FUNCTION_167();
  v1[51] = swift_task_alloc();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB290, &qword_1D561DFC0);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  v1[52] = OUTLINED_FUNCTION_167();
  v1[53] = swift_task_alloc();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABC8, &unk_1D561D770);
  OUTLINED_FUNCTION_22(v51);
  v53 = *(v52 + 64);
  v1[54] = OUTLINED_FUNCTION_167();
  v1[55] = swift_task_alloc();
  v54 = sub_1D560E8A8();
  v1[56] = v54;
  OUTLINED_FUNCTION_69(v54);
  v1[57] = v55;
  v57 = *(v56 + 64);
  v1[58] = OUTLINED_FUNCTION_167();
  v1[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EFCD90, 0, 0);
}

uint64_t sub_1D4EFCD90()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[14];
  sub_1D560E8B8();
  OUTLINED_FUNCTION_57(v2, 1, v1);
  if (v4)
  {
    sub_1D4E50004(v0[55], &qword_1EC7EABC8, &unk_1D561D770);
LABEL_19:
    (*(v0[16] + 16))(v0[12], v0[13], v0[15]);
    goto LABEL_31;
  }

  v5 = v0[57];
  v6 = *(v5 + 32);
  v6(v0[59], v0[55], v0[56]);
  sub_1D4EF4770();
  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_159();
  v7(v8);
  if (v190)
  {
    v9 = v189;
  }

  else
  {
    v9 = v188;
  }

  v10 = *(v9 + 16);
  sub_1D4F039B8();
  if (!v10)
  {
    goto LABEL_19;
  }

  v151 = v7;
  v152 = v6;
  v12 = v0[50];
  v11 = v0[51];
  v13 = v0[48];
  v14 = v0[49];
  v15 = v0[46];
  v16 = v0[47];
  v17 = v0[42];
  v161 = v0[36];
  v163 = v0 + 2;
  v174 = v0;
  v18 = v0[34];
  v19 = v0[13];
  sub_1D560E9F8();
  v20 = *(v14 + 16);
  v21 = OUTLINED_FUNCTION_86_0();
  v22(v21);
  v0[60] = sub_1D4E62A60(&qword_1EC7EB298, &qword_1EC7EB288, &qword_1D561DFB8);
  v169 = v16;
  sub_1D5614F98();
  v165 = (v17 + 16);
  v167 = *(v15 + 36);
  v171 = (v17 + 32);
  v159 = *MEMORY[0x1E69752C0];
  v153 = (v18 + 32);
  v154 = (v18 + 8);
  v155 = (v17 + 8);
  v157 = (v18 + 104);
  sub_1D4E62A60(&qword_1EC7EB2A0, &qword_1EC7EB288, &qword_1D561DFB8);
  while (1)
  {
    v24 = v0[47];
    v23 = v0[48];
    sub_1D5615648();
    if (*(v169 + v167) == v0[10])
    {
      v73 = v0[51];
      v74 = v0[48];
      v75 = v0[49];
      sub_1D4E50004(v0[47], &qword_1EC7EB280, &qword_1D561DFB0);
      v76 = *(v75 + 8);
      v77 = OUTLINED_FUNCTION_159();
      v76(v77);
      goto LABEL_22;
    }

    v25 = v0[47];
    v26 = v0[48];
    v27 = v0[44];
    v28 = v0[45];
    v29 = v0[41];
    v181 = v0[40];
    v30 = v0[39];
    v178 = v0[37];
    v184 = v0[33];
    v31 = sub_1D5615688();
    (*v165)(v28);
    v31(v163, 0);
    v0 = v174;
    sub_1D5615658();
    v32 = *v171;
    v33 = OUTLINED_FUNCTION_220();
    v32(v33);
    sub_1D560E418();
    (*v157)(v30, v159, v184);
    OUTLINED_FUNCTION_219();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    v38 = *(v161 + 48);
    OUTLINED_FUNCTION_141();
    OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_193();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v178, 1, v184);
    v40 = v174[33];
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    v49 = v174[37];
    v50 = v174[38];
    OUTLINED_FUNCTION_193();
    v51 = __swift_getEnumTagSinglePayload(v178 + v38, 1, v40);
    v52 = v174[39];
    v53 = v174[40];
    v54 = v174[38];
    if (v51 == 1)
    {
      v55 = v174[33];
      v56 = v174[39];
      OUTLINED_FUNCTION_131_1();
      sub_1D4E50004(v57, v58, v59);
      v60 = OUTLINED_FUNCTION_85_0();
      sub_1D4E50004(v60, v61, &qword_1D561D768);
      v62 = *v154;
      v63 = OUTLINED_FUNCTION_175();
      v64(v63);
LABEL_16:
      sub_1D4E50004(v174[37], &qword_1EC7EABB0, &qword_1D561D760);
      goto LABEL_18;
    }

    v185 = v174[37];
    v65 = v174[35];
    v66 = v174[33];
    (*v153)(v65, v178 + v38, v66);
    OUTLINED_FUNCTION_89_4();
    sub_1D4F0B28C(&qword_1EC7EABC0, v67);
    OUTLINED_FUNCTION_216();
    v68 = sub_1D5614D18();
    v69 = *v154;
    (*v154)(v65, v66);
    sub_1D4E50004(v52, &qword_1EC7EABB8, &qword_1D561D768);
    v70 = OUTLINED_FUNCTION_85_0();
    sub_1D4E50004(v70, v71, &qword_1D561D768);
    v72 = OUTLINED_FUNCTION_175();
    v69(v72);
    sub_1D4E50004(v185, &qword_1EC7EABB8, &qword_1D561D768);
    if (v68)
    {
      goto LABEL_21;
    }

LABEL_18:
    (*v155)(v174[44], v174[41]);
  }

  v41 = v174[39];
  v42 = v174[40];
  OUTLINED_FUNCTION_131_1();
  sub_1D4E50004(v43, v44, v45);
  OUTLINED_FUNCTION_131_1();
  sub_1D4E50004(v46, v47, v48);
  OUTLINED_FUNCTION_10(v178 + v38);
  if (!v4)
  {
    goto LABEL_16;
  }

  sub_1D4E50004(v174[37], &qword_1EC7EABB8, &qword_1D561D768);
LABEL_21:
  v78 = v174[53];
  v79 = v174[51];
  v80 = v174[48];
  v81 = v174[49];
  v82 = v174[44];
  v83 = v174[41];
  sub_1D4E50004(v174[47], &qword_1EC7EB280, &qword_1D561DFB0);
  v76 = *(v81 + 8);
  v84 = OUTLINED_FUNCTION_143();
  v76(v84);
  v85 = OUTLINED_FUNCTION_222();
  v32(v85);
LABEL_22:
  v0[61] = v76;
  v86 = v0 + 53;
  v88 = v0[52];
  v87 = v0[53];
  v89 = v0[41];
  OUTLINED_FUNCTION_218();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  OUTLINED_FUNCTION_68_4();
  sub_1D4F0AE7C();
  v94 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v94, v95, v89);
  if (v4)
  {
    sub_1D4E50004(*v86, &qword_1EC7EB290, &qword_1D561DFC0);
    v86 = v0 + 52;
  }

  else
  {
    (*v171)(v0[43], v0[52], v0[41]);
    v96 = sub_1D5292554();
    if (v96)
    {
      v182 = v0[54];
      v186 = v0[56];
      v97 = v0[42];
      v98 = v0[43];
      v99 = v0[41];
      v100 = v0[32];
      v101 = v0[29];
      v103 = v0[26];
      v102 = v0[27];
      v104 = v0[25];
      v176 = v0[28];
      v179 = v0[24];
      v172 = v0[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2A8, &qword_1D561DFC8);
      v105 = *(v97 + 72);
      v106 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_1D561C050;
      (*v165)(v107 + v106, v98, v99);
      v0[11] = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2B0, &qword_1D561DFD0);
      sub_1D4E62A60(&qword_1EC7EB2B8, &qword_1EC7EB2B0, &qword_1D561DFD0);
      sub_1D560E7D8();
      MusicPersonalRecommendationsRequest.configuration.getter();
      OUTLINED_FUNCTION_12_14();
      sub_1D4F0B28C(v108, v109);
      sub_1D560E6C8();
      v110 = *(v104 + 16);
      v111 = OUTLINED_FUNCTION_217();
      v112(v111);
      sub_1D560E7F8();
      v113 = *(v104 + 8);
      v114 = OUTLINED_FUNCTION_215();
      v115(v114);
      OUTLINED_FUNCTION_33_12();
      sub_1D4E58360();
      sub_1D560E8B8();
      OUTLINED_FUNCTION_57(v182, 1, v186);
      if (v4)
      {
        sub_1D4E50004(v174[54], &qword_1EC7EABC8, &unk_1D561D770);
      }

      else
      {
        v133 = v174[58];
        v134 = v174[56];
        v152(v133, v174[54], v134);
        sub_1D4EF4770();
        v151(v133, v134);
      }

      v135 = v174[32];
      v137 = v174[22];
      v136 = v174[23];
      v138 = v174[20];
      v139 = v174[21];
      v140 = v174[18];
      v141 = v174[19];
      MusicPersonalRecommendationsRequest.content.setter();
      (*(v137 + 104))(v136, *MEMORY[0x1E6974E80], v139);
      sub_1D560E7B8();
      sub_1D560BB28();
      v142 = sub_1D560E838();
      v144 = v143;
      sub_1D4EFF664(sub_1D4EFFE00);
      v145 = *(*v144 + 16);
      sub_1D4EFF89C(v145, sub_1D4EFFE00);
      v146 = *v144;
      *(v146 + 16) = v145 + 1;
      (*(v141 + 32))(v146 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v145, v138, v140);
      v142(v174 + 6, 0);
      v147 = *(MEMORY[0x1E6975380] + 4);
      v148 = swift_task_alloc();
      v174[62] = v148;
      *v148 = v174;
      v148[1] = sub_1D4EFD93C;
      v149 = v174[32];
      v150 = v174[17];

      return MEMORY[0x1EEDCF030](v150);
    }

    (*v155)(v0[43], v0[41]);
  }

  v116 = *v86;
  v117 = v0[15];
  v118 = v0[16];
  v119 = v0[12];
  v120 = v0[13];
  sub_1D4E50004(v116, &qword_1EC7EB290, &qword_1D561DFC0);
  (*(v118 + 16))(v119, v120, v117);
LABEL_31:
  v122 = v0[58];
  v121 = v0[59];
  v124 = v0[54];
  v123 = v0[55];
  v126 = v0[52];
  v125 = v0[53];
  v128 = v0[50];
  v127 = v0[51];
  v129 = v0[47];
  v130 = v0[45];
  v156 = v0[44];
  v158 = v0[43];
  v160 = v0[40];
  v162 = v0[39];
  v164 = v0[38];
  v166 = v0[37];
  v168 = v0[35];
  v170 = v0[32];
  v173 = v0[29];
  v175 = v0[27];
  v177 = v0[26];
  v180 = v0[23];
  v183 = v0[20];
  v187 = v0[17];

  OUTLINED_FUNCTION_22_1();

  return v131();
}

uint64_t sub_1D4EFD93C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 496);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 504) = v0;

  if (v0)
  {
    v7 = sub_1D4EFDCAC;
  }

  else
  {
    v7 = sub_1D4EFDA40;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D4EFDA40()
{
  v34 = v0[61];
  v28 = v0[60];
  v44 = v0[53];
  v1 = v0[50];
  v32 = v0[49];
  v2 = v0[48];
  v3 = v0[42];
  v42 = v0[43];
  v4 = v0[31];
  v38 = v0[32];
  v40 = v0[41];
  v36 = v0[30];
  v5 = v0[16];
  v6 = v0[17];
  v30 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  sub_1D560E9F8();
  OUTLINED_FUNCTION_85_0();
  sub_1D560EA08();
  v9 = OUTLINED_FUNCTION_85_0();
  v10(v9);
  (*(v5 + 8))(v6, v30);
  (*(v4 + 8))(v38, v36);
  (*(v3 + 8))(v42, v40);
  sub_1D4E50004(v44, &qword_1EC7EB290, &qword_1D561DFC0);
  v12 = v0[58];
  v11 = v0[59];
  v14 = v0[54];
  v13 = v0[55];
  v16 = v0[52];
  v15 = v0[53];
  v17 = v0[50];
  v18 = v0[51];
  v19 = v0[47];
  v20 = v0[45];
  v23 = v0[44];
  v24 = v0[43];
  v25 = v0[40];
  v26 = v0[39];
  v27 = v0[38];
  v29 = v0[37];
  v31 = v0[35];
  v33 = v0[32];
  v35 = v0[29];
  v37 = v0[27];
  v39 = v0[26];
  v41 = v0[23];
  v43 = v0[20];
  v45 = v0[17];

  OUTLINED_FUNCTION_22_1();

  return v21();
}

uint64_t sub_1D4EFDCAC()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[53];
  v15 = v0[52];
  v16 = v0[51];
  v17 = v0[50];
  v18 = v0[47];
  v19 = v0[45];
  v20 = v0[44];
  v6 = v0[42];
  v7 = v0[43];
  v8 = v0[41];
  v21 = v0[40];
  v22 = v0[39];
  v23 = v0[38];
  v24 = v0[37];
  v25 = v0[35];
  v26 = v0[29];
  v27 = v0[27];
  v28 = v0[26];
  v29 = v0[23];
  v30 = v0[20];
  v31 = v0[17];
  (*(v0[31] + 8))(v0[32], v0[30]);
  v9 = *(v6 + 8);
  v10 = OUTLINED_FUNCTION_109();
  v11(v10);
  sub_1D4E50004(v5, &qword_1EC7EB290, &qword_1D561DFC0);

  OUTLINED_FUNCTION_55();
  v13 = v0[63];

  return v12();
}

uint64_t sub_1D4EFDE8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4E73560;

  return MusicPersonalRecommendationsRequest.extendedCatalogResponse(for:)(a1, a2);
}

uint64_t MusicPersonalRecommendationsRequest.additionalInvalidators.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABE0, &qword_1D561D7E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C050;
  _s25RecentlyPlayedInvalidatorCMa();
  swift_allocObject();
  v1 = sub_1D535CE84();
  v2 = sub_1D4F0B28C(&qword_1EC7EABE8, _s25RecentlyPlayedInvalidatorCMa);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t MusicPersonalRecommendationsRequest.invalidationResult(for:previousResponse:)()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABF0, &qword_1D561D7F0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_127();
  v7 = sub_1D560EA18();
  v1[6] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_167();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EFE0DC, 0, 0);
}

uint64_t sub_1D4EFE0DC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_10(v1);
  if (v4)
  {
    sub_1D4E50004(v0[5], &qword_1EC7EABF0, &qword_1D561D7F0);
    v5 = v0[8];
    v6 = v0[9];
    v7 = v0[5];
    __swift_storeEnumTagSinglePayload(v0[2], 1, 1, v0[6]);

    OUTLINED_FUNCTION_22_1();

    return v8();
  }

  else
  {
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[7];
    v13 = v0[5];
    v14 = *(v12 + 32);
    v0[10] = v14;
    v0[11] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v14(v10, v13, v11);
    v15 = swift_task_alloc();
    v0[12] = v15;
    *v15 = v0;
    v15[1] = sub_1D4EFE248;
    v16 = v0[8];
    v17 = v0[9];
    v18 = v0[4];

    return sub_1D4EFC900();
  }
}

uint64_t sub_1D4EFE248()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 96);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    v7 = sub_1D4EFE410;
  }

  else
  {
    v7 = sub_1D4EFE34C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D4EFE34C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[2];
  (*(v0[7] + 8))(v0[9], v0[6]);
  v5 = OUTLINED_FUNCTION_63_1();
  v2(v5);
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[5];
  __swift_storeEnumTagSinglePayload(v0[2], 0, 1, v0[6]);

  OUTLINED_FUNCTION_22_1();

  return v9();
}

uint64_t sub_1D4EFE410()
{
  v1 = v0[8];
  v2 = v0[5];
  (*(v0[7] + 8))(v0[9], v0[6]);

  OUTLINED_FUNCTION_55();
  v4 = v0[13];

  return v3();
}

uint64_t sub_1D4EFE4C0()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v3 = *(MEMORY[0x1E69753C0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_1D4E73560;

  return MEMORY[0x1EEDCF088](v2);
}

uint64_t sub_1D4EFE558()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E6ED20;

  return MusicPersonalRecommendationsRequest.invalidationResult(for:previousResponse:)();
}

void sub_1D4EFE600()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v3 = sub_1D560E898();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v32 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_162_0();
  v11 = *(v2 + 16);
  if (v11)
  {
    v12 = (v2 + 32);
    v28 = *MEMORY[0x1E69753A0];
    v30 = *(v10 + 104);
    v27 = *MEMORY[0x1E6975388];
    v26 = *MEMORY[0x1E6975398];
    v29 = *MEMORY[0x1E6975390];
    v13 = (v10 + 32);
    v14 = MEMORY[0x1E69E7CC0];
    v31 = v10;
    do
    {
      v15 = *v12++;
      v16 = v29;
      switch(v15)
      {
        case 1:
          v16 = v26;
          break;
        case 2:
          v16 = v27;
          break;
        case 3:
          v16 = v28;
          break;
        default:
          break;
      }

      v30(v32, v16, v3);
      v17 = *v13;
      v18 = OUTLINED_FUNCTION_61();
      v17(v18);
      v19 = OUTLINED_FUNCTION_75_2();
      v17(v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D4EFFEFC(0, *(v14 + 16) + 1, 1, v14);
      }

      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        v25 = OUTLINED_FUNCTION_93_1(v20);
        v14 = sub_1D4EFFEFC(v25, v21 + 1, 1, v14);
      }

      *(v14 + 16) = v21 + 1;
      v22 = *(v31 + 80);
      OUTLINED_FUNCTION_43_3();
      (v17)(v14 + v23 + *(v24 + 72) * v21, v0, v3);
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4EFE864(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1D4EFE884(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1D4EFE8A8()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v2 == *(v1 + 16))
  {
    return 0;
  }

  result = sub_1D52403F8(v0[3], v1);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v0[3] = v2 + 1;
    v6 = v0[4];
    v7 = v0[5];
    v9[0] = result;
    v9[1] = v4;
    v10 = v5 & 1;
    v6(&v8, v9);

    return v8;
  }

  return result;
}

void sub_1D4EFE934()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB210, &unk_1D561DF60);
  OUTLINED_FUNCTION_14(v58);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_41_6();
  v7 = type metadata accessor for GenericMusicItem();
  v8 = OUTLINED_FUNCTION_69(v7);
  v55 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_11();
  v12 = type metadata accessor for LooselyComparableTypedIdentifier();
  v13 = OUTLINED_FUNCTION_69(v12);
  v54 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB218, &unk_1D561F360);
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  v24 = *v0;
  v25 = v0[1];
  v26 = v0[2];
  v27 = v0[3];
  v28 = v0[4];
  v56 = v26;
  v57 = v3;
  v52 = v1;
  if (v28)
  {
LABEL_7:
    v53 = (v28 - 1) & v28;
    v31 = *(v24 + 48);
    v32 = *(v54 + 72);
    sub_1D4F0B238();
    v33 = *(v24 + 56);
    v34 = *(v55 + 72);
    sub_1D4F0B238();
    v35 = v58;
    v36 = *(v58 + 48);
    OUTLINED_FUNCTION_130();
    sub_1D4F0AECC();
    sub_1D4F0AECC();
    v29 = v35;
    v37 = v53;
    v38 = 0;
LABEL_8:
    v39 = 1;
    v40 = v29;
    __swift_storeEnumTagSinglePayload(v23, v38, 1, v29);
    *v0 = v24;
    v0[1] = v25;
    v0[2] = v56;
    v0[3] = v27;
    v0[4] = v37;
    v41 = v0[5];
    v42 = v0[6];
    OUTLINED_FUNCTION_132_1();
    sub_1D4F0AB3C();
    v43 = OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_57(v43, v44, v40);
    v45 = v57;
    if (!v46)
    {
      v47 = v52;
      sub_1D4F0AB3C();
      v41(v47);
      v48 = OUTLINED_FUNCTION_75_2();
      sub_1D4E50004(v48, v49, &unk_1D561DF60);
      v39 = 0;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB220, &qword_1D561DF70);
    __swift_storeEnumTagSinglePayload(v45, v39, 1, v50);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    v29 = v58;
    while (1)
    {
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v30 >= ((v26 + 64) >> 6))
      {
        v37 = 0;
        v38 = 1;
        goto LABEL_8;
      }

      v28 = *(v25 + 8 * v30);
      ++v27;
      if (v28)
      {
        v27 = v30;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D4EFECA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_10:
    *result = a4;
    *(result + 8) = a5 & 1;
    *(result + 16) = a6;
    *(result + 24) = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = *(a6 + 16);
    while (v7 != v6)
    {
      *(a2 + 8 * v6) = *(a6 + 32 + 8 * v6);
      if (a3 == ++v6)
      {
        goto LABEL_10;
      }
    }

    a3 = v7;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *sub_1D4EFED04(void *result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  if (!a2)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v9 = a3;
  if (!a3)
  {
LABEL_12:
    *result = v4;
    result[1] = v5;
    result[2] = v7;
    result[3] = v9;
    result[4] = v6;
    result[5] = v8;
    return v9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v17 = v5;
    v18 = v4;
    v19 = result;
    v11 = 0;
    v12 = *(v7 + 16);
    v13 = (v7 + 48);
    while (1)
    {
      if (v12 == v11)
      {
        v9 = v12;
LABEL_11:
        v4 = v18;
        result = v19;
        v5 = v17;
        goto LABEL_12;
      }

      if (v11 >= *(v7 + 16))
      {
        break;
      }

      v15 = *(v13 - 2);
      v14 = *(v13 - 1);
      v16 = *v13;
      v13 += 24;
      v21[0] = v15;
      v21[1] = v14;
      v22 = v16;

      v6(&v20, v21);

      *(a2 + 8 * v11++) = v20;
      if (v9 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D4EFEE08()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v3 + 64;
  v5 = *(v3 + 64);
  v7 = *(v3 + 32);
  OUTLINED_FUNCTION_127_1();
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    OUTLINED_FUNCTION_168_0(v11);
    OUTLINED_FUNCTION_46();
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_151_1();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v2)
          {
            goto LABEL_17;
          }

          v1 = *(v6 + 8 * v14);
          ++v11;
          if (v1)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v11;
LABEL_12:
      OUTLINED_FUNCTION_194();
      v15 = *(v4 + 56);
      OUTLINED_FUNCTION_169(v16);
      if (v17)
      {

        v11 = v14;
        goto LABEL_17;
      }

      v0 += 8;

      v12 = v13;
      v11 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1D4EFEEF8(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D4EFEFDC()
{
  OUTLINED_FUNCTION_119_2();
  v5 = v4;
  v7 = v6;
  if (!v0)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v8 = v1;
  if (!v1)
  {
LABEL_12:
    *v7 = v2;
    v7[1] = v3;
    v7[2] = v5;
    v7[3] = v8;
    OUTLINED_FUNCTION_118_2();
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v9 = v0;
    v22 = v2;
    v23 = v3;
    v10 = 0;
    v11 = *(v4 + 16);
    v12 = v1 - 1;
    while (1)
    {
      if (v11 == v10)
      {
        v8 = v11;
LABEL_11:
        v2 = v22;
        v3 = v23;
        goto LABEL_12;
      }

      if (v10 >= *(v5 + 16))
      {
        break;
      }

      v13 = OUTLINED_FUNCTION_97_1();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
      OUTLINED_FUNCTION_69(v15);
      v17 = v16;
      v19 = v18;
      v20 = *(v17 + 80);
      v21 = *(v19 + 72);
      sub_1D4F0AE7C();
      if (v12 == v10)
      {
        goto LABEL_11;
      }

      v9 += v21;
      ++v10;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1D4EFF0F4()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v3 + 56;
  v5 = *(v3 + 56);
  v7 = *(v3 + 32);
  OUTLINED_FUNCTION_127_1();
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    OUTLINED_FUNCTION_168_0(v11);
    OUTLINED_FUNCTION_46();
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_151_1();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v2)
          {
            goto LABEL_17;
          }

          v1 = *(v6 + 8 * v14);
          ++v11;
          if (v1)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v11;
LABEL_12:
      OUTLINED_FUNCTION_194();
      v15 = *(v4 + 48);
      OUTLINED_FUNCTION_169(v16);
      if (v17)
      {

        v11 = v14;
        goto LABEL_17;
      }

      v0 += 8;

      v12 = v13;
      v11 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D4EFF20C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_111_2();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1D4EFF24C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_111_2();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1D4EFF2C8(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v4 = OUTLINED_FUNCTION_111_2();

  return MEMORY[0x1EEE6BDC0](v4, v5, v6);
}

uint64_t sub_1D4EFF328(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_25_0(v2);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_43_3();
  v5 = *(v1 + 16);
  swift_arrayDestroy();
  v6 = OUTLINED_FUNCTION_111_2();

  return MEMORY[0x1EEE6BDC0](v6, v7, v8);
}

uint64_t sub_1D4EFF3C8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

void sub_1D4EFF488()
{
  OUTLINED_FUNCTION_172_0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v0;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v0 + 16);
    OUTLINED_FUNCTION_218();
    sub_1D4F02378();
    *v1 = v4;
  }
}

void sub_1D4EFF4EC()
{
  OUTLINED_FUNCTION_172_0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v0;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v0 + 16);
    OUTLINED_FUNCTION_218();
    sub_1D4F00994();
    *v1 = v4;
  }
}

void sub_1D4EFF5A0()
{
  OUTLINED_FUNCTION_172_0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v0;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v0 + 16);
    OUTLINED_FUNCTION_218();
    sub_1D4F0262C();
    *v1 = v4;
  }
}

uint64_t sub_1D4EFF664(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_1D4EFF6F0()
{
  OUTLINED_FUNCTION_115_2();
  if (!(v2 ^ v3 | v1))
  {
    sub_1D4F02378();
    *v0 = v4;
  }
}

void sub_1D4EFF744()
{
  OUTLINED_FUNCTION_115_2();
  if (!(v2 ^ v3 | v1))
  {
    sub_1D4F00994();
    *v0 = v4;
  }
}

void sub_1D4EFF7E8()
{
  OUTLINED_FUNCTION_115_2();
  if (!(v2 ^ v3 | v1))
  {
    sub_1D4F0262C();
    *v0 = v4;
  }
}

uint64_t sub_1D4EFF89C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1D4EFF8E4()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
    v9 = OUTLINED_FUNCTION_125_0();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_13();
    v9[2] = v2;
    v9[3] = v10;
  }

  OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_177_0();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4EFF9AC()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAEB8, &qword_1D561DC88);
  OUTLINED_FUNCTION_46_7();
  v9 = sub_1D5610A58();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(MEMORY[0x1E6975F00], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4EFFA84()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD78, &qword_1D561DB60);
  OUTLINED_FUNCTION_46_7();
  v9 = sub_1D5613C48();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(MEMORY[0x1E6976DC8], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4EFFB5C()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB178, &qword_1D561DEF8);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for VideoCredit();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for VideoCredit, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4EFFC34()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB300, &unk_1D561E010);
  OUTLINED_FUNCTION_46_7();
  v9 = sub_1D5613528();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(MEMORY[0x1E6976A48], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4EFFD28()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB240, &qword_1D561DF98);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for VideoOffer();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for VideoOffer, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4EFFE00()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB2D8, &unk_1D561DFF0);
  OUTLINED_FUNCTION_46_7();
  v9 = sub_1D560BB98();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(MEMORY[0x1E6968178], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

uint64_t sub_1D4EFFED8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D4EFFEF0();
  }

  return result;
}

uint64_t sub_1D4EFFEFC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
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
  sub_1D4F03614(v9, a2, &qword_1EC7EB2C8, &qword_1D561DFE0, MEMORY[0x1E69753A8]);
  v11 = v10;
  v12 = *(sub_1D560E898() - 8);
  if (v6)
  {
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    sub_1D4F038C4(a4 + v13, v9, v11 + v13, MEMORY[0x1E69753A8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void sub_1D4F00044()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB278, &qword_1D561DFA8);
    v9 = OUTLINED_FUNCTION_233();
    OUTLINED_FUNCTION_94_1(v9);
  }

  v10 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_212();
    if (v15)
    {
      v16 = v14 > v12;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      memmove(v12, v13, v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, v2);
  }
}

void sub_1D4F000F8()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAE78, &qword_1D56351B0);
  OUTLINED_FUNCTION_46_7();
  v9 = sub_1D5612478();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(MEMORY[0x1E6976480], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F001D0()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF38, &qword_1D561DCF8);
    v9 = OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_42_7(v9);
    OUTLINED_FUNCTION_40_9(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F0029C()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_31_11(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC48, &unk_1D561DA60);
    v9 = OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_23_12(v9);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v2 != v0 || &v11[80 * v3] <= v10)
    {
      memmove(v10, v11, 80 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F0036C()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC50, &qword_1D5648640);
    v9 = OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_30_4(v9);
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v9 != v0 || &v12[88 * v2] <= v11)
    {
      memmove(v11, v12, 88 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F00444()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB0B0, &qword_1D561DE60);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for VideoArtwork.FileAsset();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for VideoArtwork.FileAsset, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F00554()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD00, &qword_1D561DAE8);
  OUTLINED_FUNCTION_46_7();
  v9 = sub_1D560D838();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(MEMORY[0x1E6974F58], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F0065C()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_31_11(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB1E8, &qword_1D561DF30);
    v9 = OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_23_12(v9);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v2 != v0 || &v11[24 * v3] <= v10)
    {
      memmove(v10, v11, 24 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, 24 * v3);
  }
}

void sub_1D4F0072C()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_31_11(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFE0, &qword_1D561DDA0);
    v9 = OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_23_12(v9);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_108_3();
  v12 = 24 * v3;
  if (v1)
  {
    if (v2 != v0 || &v11[v12] <= v10)
    {
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, v12);
  }
}

void sub_1D4F007F0()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB0B8, &qword_1D561DE68);
  OUTLINED_FUNCTION_46_7();
  v9 = sub_1D560F148();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(MEMORY[0x1E69755E8], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F008DC()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_139_2(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_233();
    OUTLINED_FUNCTION_94_1(v15);
  }

  v16 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_212();
    if (v21)
    {
      v22 = v20 > v18;
    }

    else
    {
      v22 = 0;
    }

    if (!v22)
    {
      memmove(v18, v19, v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v16, v17, v2);
  }
}

void sub_1D4F00994()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_31_11(v6);
  if (v2)
  {
    OUTLINED_FUNCTION_139_2(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_136_1();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_60_2();
    v15[2] = v3;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v15 != v0 || &v18[8 * v3] <= v17)
    {
      memmove(v17, v18, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v3);
  }
}

char *sub_1D4F00A4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADB0, &qword_1D561DBA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_1D4F00B4C()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD88, &qword_1D561DB70);
  OUTLINED_FUNCTION_46_7();
  v9 = sub_1D5614828();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(MEMORY[0x1E6977318], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F00C24()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB130, &qword_1D561DED0);
  OUTLINED_FUNCTION_46_7();
  v9 = sub_1D560F548();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(MEMORY[0x1E6975710], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F00D10()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_31_11(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD30, &qword_1D561DB18);
    v9 = OUTLINED_FUNCTION_136_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_13();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_1D4F00DEC()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFB8, &qword_1D561DD78);
    v9 = OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_42_7(v9);
    OUTLINED_FUNCTION_40_9(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 8 * v2 <= (v3 + 32))
    {
      v12 = OUTLINED_FUNCTION_85_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFC0, &qword_1D561DD80);
    OUTLINED_FUNCTION_85_0();
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F00EDC()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAFB0, &qword_1D561DD70);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for MusicDownloadedSongCatalogProperties();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for MusicDownloadedSongCatalogProperties, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F00FB4()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_31_11(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF68, &qword_1D561DD28);
    v9 = OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_23_12(v9);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v2 != v0 || v0 + 32 + 24 * v3 <= (v2 + 32))
    {
      v11 = OUTLINED_FUNCTION_85_0();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF60, &qword_1D561DD20);
    OUTLINED_FUNCTION_85_0();
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F010BC()
{
  OUTLINED_FUNCTION_157_2();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_48_4();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_139_2(v2, v3, v4, v5, v6, v7);
    v13 = OUTLINED_FUNCTION_136_1();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_13_13();
    *(v13 + 2) = v11;
    *(v13 + 3) = v14;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[16 * v11] <= v15)
    {
      memmove(v15, v16, 16 * v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F0118C()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_31_11(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF80, &qword_1D561DD40);
    v9 = OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_23_12(v9);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v2 != v0 || &v11[48 * v3] <= v10)
    {
      memmove(v10, v11, 48 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F0125C()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_31_11(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF88, &qword_1D561DD48);
    v9 = OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_23_12(v9);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v2 != v0 || v0 + 32 + 48 * v3 <= (v2 + 32))
    {
      v11 = OUTLINED_FUNCTION_85_0();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF90, &qword_1D561DD50);
    OUTLINED_FUNCTION_85_0();
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F0136C()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD68, &qword_1D561DB50);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for GenericMusicItem();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for GenericMusicItem, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F01444()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB0D0, &unk_1D561DE80);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for MusicSearchResultGroup();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for MusicSearchResultGroup, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F0151C()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAED0, &qword_1D561DCA0);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

uint64_t sub_1D4F015F4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
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
  sub_1D4F03614(v9, a2, &qword_1EC7EAD98, &qword_1D561DB80, type metadata accessor for MusicSuggestedPivotRound);
  v11 = v10;
  v12 = *(type metadata accessor for MusicSuggestedPivotRound() - 8);
  if (v6)
  {
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    sub_1D4F038C4(a4 + v13, v9, v11 + v13, type metadata accessor for MusicSuggestedPivotRound);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void sub_1D4F01718()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD80, &qword_1D561DB68);
  OUTLINED_FUNCTION_46_7();
  v9 = sub_1D5613D28();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(MEMORY[0x1E6976E60], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F017F0()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAF08, &qword_1D561DCD8);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for TVEpisode();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for TVEpisode, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F018C8()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD90, &qword_1D561DB78);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for TVSeason();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for TVSeason, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F019A0()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB228, &qword_1D561DF78);
    v9 = OUTLINED_FUNCTION_125_0();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_13();
    v9[2] = v2;
    v9[3] = v10;
  }

  OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_177_0();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F01A68()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB098, &qword_1D561DE48);
    v9 = OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_30_4(v9);
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v9 != v0 || &v12[56 * v2] <= v11)
    {
      memmove(v11, v12, 56 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F01B44()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD70, &qword_1D561DB58);
  OUTLINED_FUNCTION_46_7();
  v9 = _s14TransientEntryVMa();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(_s14TransientEntryVMa, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F01C40()
{
  OUTLINED_FUNCTION_37_10();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = *(v0 + 16);
  sub_1D4F034C0(v9, v6, v3, v4);
  v11 = v10;
  v12 = OUTLINED_FUNCTION_63_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_25_0(v14);
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    sub_1D4F037E4(v0 + v17, v9, v11 + v17);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F01D40()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_31_11(v6);
  if (v2)
  {
    OUTLINED_FUNCTION_139_2(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_136_1();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_13_13();
    v15[2] = v3;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v15 != v0 || &v18[16 * v3] <= v17)
    {
      memmove(v17, v18, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v3);
  }
}

void sub_1D4F01DF8()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD58, &qword_1D561DB40);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for MusicRecentlySearchedViewModel.Entry();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for MusicRecentlySearchedViewModel.Entry, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F01ED0()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB090, &qword_1D561DE40);
  OUTLINED_FUNCTION_46_7();
  v9 = _s15PersistentEntryVMa();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(_s15PersistentEntryVMa, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F01FBC()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAE08, &qword_1D561DC00);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for MusicLibraryPlaylistViewModel.Delta, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02094()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAF48, &qword_1D561DD08);
  OUTLINED_FUNCTION_46_7();
  v9 = _s10DescriptorVMa();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(_s10DescriptorVMa, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02190()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD50, &qword_1D561DB38);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for MusicPin();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for MusicPin, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02268()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAEE8, &qword_1D561DCB8);
  v9 = OUTLINED_FUNCTION_46_7();
  v10 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(v9);
  OUTLINED_FUNCTION_25_0(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02378()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_37_10();
  if (v3)
  {
    OUTLINED_FUNCTION_15_13();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_48_4();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_145_4();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_139_2(v6, v7, v8, v9, v10, v11);
    v15 = OUTLINED_FUNCTION_226();
    v16 = _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_105_1(v16 - 32);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v15 != v0 || &v0[40 * v2 + 32] <= v15 + 32)
    {
      v18 = OUTLINED_FUNCTION_97_1();
      memmove(v18, v19, v20);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_63_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_97_1();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F02458()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7F2C20, &qword_1D561DC20);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for MusicPlaybackIntent();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for MusicPlaybackIntent, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02530()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7F2AE0, &unk_1D561DBC0);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for InternalMusicPlayer.Queue.Entry();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for InternalMusicPlayer.Queue.Entry, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F0262C()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_37_10();
  if (v3)
  {
    OUTLINED_FUNCTION_15_13();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_48_4();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_145_4();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_139_2(v6, v7, v8, v9, v10, v11);
    v15 = OUTLINED_FUNCTION_136_1();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_13_13();
    v15[2] = v2;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v15 != v0 || &v0[2 * v2 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_97_1();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_63_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_97_1();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F0271C()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EACE0, &qword_1D561DAC0);
  OUTLINED_FUNCTION_46_7();
  v9 = sub_1D5613838();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(MEMORY[0x1E6976BE8], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02810()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF30, &qword_1D561DCF0);
    v9 = OUTLINED_FUNCTION_125_0();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_13();
    v9[2] = v2;
    v9[3] = v10;
  }

  OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_177_0();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F028D8()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAF00, &qword_1D561DCD0);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for Playlist.Folder.Item();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for Playlist.Folder.Item, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F029B0()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAEF8, &qword_1D561DCC8);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for MusicMovie();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for MusicMovie, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02A88()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAEF0, &qword_1D561DCC0);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for Composer();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for Composer, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02B74()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE10, &qword_1D561DC08);
    v9 = OUTLINED_FUNCTION_125_0();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_13();
    v9[2] = v2;
    v9[3] = v10;
  }

  OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_177_0();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F02C3C()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD60, &qword_1D561DB48);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for MusicItemTypedIdentifier();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for MusicItemTypedIdentifier, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

char *sub_1D4F02D14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE00, &qword_1D561DBF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D4F02E2C()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
    v9 = OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_42_7(v9);
    OUTLINED_FUNCTION_40_9(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F02EFC()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EACE8, &qword_1D561DAC8);
  OUTLINED_FUNCTION_46_7();
  v9 = type metadata accessor for MusicSuggestedSongsEntry();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(type metadata accessor for MusicSuggestedSongsEntry, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

uint64_t sub_1D4F02FD4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
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
  sub_1D4F03614(v9, a2, &qword_1EC7EABD0, &unk_1D561F430, MEMORY[0x1E6975BC8]);
  v11 = v10;
  v12 = *(sub_1D5610088() - 8);
  if (v6)
  {
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    sub_1D4F038C4(a4 + v13, v9, v11 + v13, MEMORY[0x1E6975BC8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void sub_1D4F030F8()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7F0170, &unk_1D5634640);
  OUTLINED_FUNCTION_46_7();
  v9 = sub_1D560DB08();
  OUTLINED_FUNCTION_25_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(MEMORY[0x1E6975070], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F031EC()
{
  OUTLINED_FUNCTION_157_2();
  if (v3)
  {
    OUTLINED_FUNCTION_15_13();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_48_4();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_145_4();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_139_2(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    OUTLINED_FUNCTION_42_7(v15);
    *(v14 + 16) = v2;
    *(v14 + 24) = 2 * (v16 / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v14 != v0 || &v18[24 * v2] <= v17)
    {
      memmove(v17, v18, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F032C4()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFA0, &qword_1D561DD60);
    v9 = OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_30_4(v9);
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v9 != v0 || &v12[40 * v2] <= v11)
    {
      memmove(v11, v12, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1D4F033B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v4 = OUTLINED_FUNCTION_136_1();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_1D4F0342C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE70, &unk_1D561DC60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_1D4F034C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v4)
  {
    OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
    v6 = OUTLINED_FUNCTION_63_1();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_69(v8);
    v10 = *(v9 + 72);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    _swift_stdlib_malloc_size(v13);
    if (v10)
    {
      OUTLINED_FUNCTION_199();
      v15 = v15 && v10 == -1;
      if (!v15)
      {
        v13[2] = a1;
        v13[3] = 2 * (v14 / v10);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void *sub_1D4F035BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

  OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
  v6 = OUTLINED_FUNCTION_136_1();
  _swift_stdlib_malloc_size(v6);
  OUTLINED_FUNCTION_60_2();
  v6[2] = a1;
  v6[3] = v7;
  return v6;
}

void sub_1D4F03614(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (v5)
  {
    OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
    v8 = OUTLINED_FUNCTION_46_7();
    v9 = a5(v8);
    OUTLINED_FUNCTION_69(v9);
    v11 = *(v10 + 72);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    _swift_stdlib_malloc_size(v14);
    if (v11)
    {
      OUTLINED_FUNCTION_199();
      v16 = v16 && v11 == -1;
      if (!v16)
      {
        v14[2] = a1;
        v14[3] = 2 * (v15 / v11);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

char *sub_1D4F036F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_6_13(a3, result);
  }

  return result;
}

char *sub_1D4F03718(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_6_13(a3, result);
  }

  return result;
}

uint64_t sub_1D4F037E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_69_0();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_75_2(), v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), result = OUTLINED_FUNCTION_14(v10), v4 + *(v12 + 72) * v3 <= a3))
  {
    v13 = OUTLINED_FUNCTION_75_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_59_3();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_59_3();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1D4F038C4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_69_0();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_14(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_59_3();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_59_3();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1D4F03980()
{
  v1 = *v0;
  sub_1D4F04B3C();
  *v0 = v2;
}

uint64_t sub_1D4F039A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D4F039B8();
  }

  return result;
}

void sub_1D4F039C4()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

char *sub_1D4F03A1C(char *a1, int64_t a2, char a3)
{
  result = sub_1D4F04C04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D4F03A3C(char *a1, int64_t a2, char a3)
{
  result = sub_1D4F04D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D4F03A5C()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F03AB4()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

char *sub_1D4F03B0C(char *a1, int64_t a2, char a3)
{
  result = sub_1D4F04F88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D4F03B2C()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F03B84()
{
  v1 = *v0;
  sub_1D4F05A80();
  *v0 = v2;
}

void sub_1D4F03BB4()
{
  v1 = *v0;
  sub_1D4F050A0();
  *v0 = v2;
}

void *sub_1D4F03BD4(void *a1, int64_t a2, char a3)
{
  result = sub_1D4F0518C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D4F03BF4()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F03C4C()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F03CA4()
{
  v1 = *v0;
  sub_1D4F0571C();
  *v0 = v2;
}

void sub_1D4F03CDC()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F03D34()
{
  v1 = *v0;
  sub_1D4F05888();
  *v0 = v2;
}

void sub_1D4F03D74()
{
  v1 = *v0;
  sub_1D4F05888();
  *v0 = v2;
}

void sub_1D4F03DB4()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F03E0C()
{
  v1 = *v0;
  sub_1D4F052C0();
  *v0 = v2;
}

void sub_1D4F03E4C()
{
  v1 = *v0;
  sub_1D4F052C0();
  *v0 = v2;
}

char *sub_1D4F03E8C(char *a1, int64_t a2, char a3)
{
  result = sub_1D4F05404(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D4F03EAC(char *a1, int64_t a2, char a3)
{
  result = sub_1D4F0551C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D4F03ECC(char *a1, int64_t a2, char a3)
{
  result = sub_1D4F0561C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D4F03EEC()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F03F44()
{
  v1 = *v0;
  sub_1D4F052C0();
  *v0 = v2;
}

void sub_1D4F03F84()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F03FDC()
{
  v1 = *v0;
  sub_1D4F052C0();
  *v0 = v2;
}

void sub_1D4F0401C()
{
  v1 = *v0;
  sub_1D4F052C0();
  *v0 = v2;
}

void sub_1D4F0405C()
{
  v1 = *v0;
  sub_1D4F052C0();
  *v0 = v2;
}

void sub_1D4F0409C()
{
  v1 = *v0;
  sub_1D4F052C0();
  *v0 = v2;
}

void sub_1D4F040DC()
{
  v1 = *v0;
  sub_1D4F0571C();
  *v0 = v2;
}

void sub_1D4F04114()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F0416C()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F041C4()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F0421C()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F04274()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F042CC()
{
  v1 = *v0;
  sub_1D4F052C0();
  *v0 = v2;
}

void sub_1D4F0430C()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F04364()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F043BC()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F04414()
{
  v1 = *v0;
  sub_1D4F052C0();
  *v0 = v2;
}

void sub_1D4F04454()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F044AC()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F04504()
{
  v1 = *v0;
  OUTLINED_FUNCTION_138_2();
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F0454C()
{
  v1 = *v0;
  sub_1D4F052C0();
  *v0 = v2;
}

void sub_1D4F0458C()
{
  v1 = *v0;
  sub_1D4F052C0();
  *v0 = v2;
}

void sub_1D4F045CC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_137_1();
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F04614()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F0466C()
{
  v1 = *v0;
  sub_1D4F05E30();
  *v0 = v2;
}

void sub_1D4F0469C()
{
  v1 = *v0;
  sub_1D4F052C0();
  *v0 = v2;
}

void sub_1D4F046DC()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F04734()
{
  v1 = *v0;
  sub_1D4F05888();
  *v0 = v2;
}

void sub_1D4F04774()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F047CC()
{
  v1 = *v0;
  sub_1D4F05888();
  *v0 = v2;
}

void sub_1D4F0480C()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F04864()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F048BC()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

char *sub_1D4F04914(char *a1, int64_t a2, char a3)
{
  result = sub_1D4F05968(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D4F04934()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F0498C()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

void sub_1D4F049E4()
{
  v1 = *v0;
  sub_1D4F05A80();
  *v0 = v2;
}

void sub_1D4F04A14()
{
  v1 = *v0;
  sub_1D4F04E34();
  *v0 = v2;
}

char *sub_1D4F04A6C(char *a1, int64_t a2, char a3)
{
  result = sub_1D4F05B24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D4F04A8C()
{
  v1 = *v0;
  sub_1D4F052C0();
  *v0 = v2;
}

void *sub_1D4F04ACC(void *a1, int64_t a2, char a3)
{
  result = sub_1D4F05C24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D4F04AEC()
{
  v1 = *v0;
  sub_1D4F05D54();
  *v0 = v2;
}

void sub_1D4F04B0C()
{
  v1 = *v0;
  sub_1D4F05E30();
  *v0 = v2;
}

void sub_1D4F04B3C()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
    v9 = OUTLINED_FUNCTION_125_0();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_13();
    v9[2] = v2;
    v9[3] = v10;
  }

  OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_177_0();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1D4F04C04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB238, &qword_1D561DF90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D4F04D1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB128, &qword_1D561DEC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D4F04E34()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (v9)
  {
    OUTLINED_FUNCTION_15_13();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_48_4();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_145_4();
  if (v10 ^ v11 | v25)
  {
    v19 = v0;
  }

  else
  {
    v19 = v18;
  }

  if (!v19)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_139_2(v12, v13, v14, v15, v16, v17);
  v20 = v4(0);
  OUTLINED_FUNCTION_69(v20);
  v22 = *(v21 + 72);
  v23 = OUTLINED_FUNCTION_166_0();
  _swift_stdlib_malloc_size(v23);
  if (!v22)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_199();
  v25 = v25 && v22 == -1;
  if (v25)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_105_1(v24);
LABEL_17:
  v26 = v4(0);
  OUTLINED_FUNCTION_25_0(v26);
  v28 = *(v27 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v8)
  {
    sub_1D4F038C4(v6 + v29, v0, v23 + v29, v2);
    *(v6 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_229();
  }

  OUTLINED_FUNCTION_46();
}

char *sub_1D4F04F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB180, &qword_1D561DF00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D4F050A0()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_31_11(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACC8, &qword_1D561DAA0);
    v9 = OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_23_12(v9);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v2 != v0 || v0 + 32 + 24 * v3 <= (v2 + 32))
    {
      v11 = OUTLINED_FUNCTION_85_0();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD0, &qword_1D561DAA8);
    OUTLINED_FUNCTION_85_0();
    swift_arrayInitWithCopy();
  }
}

void *sub_1D4F0518C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACB8, &qword_1D561DA90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACC0, &qword_1D561DA98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D4F052C0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_37_10();
  if (v3)
  {
    OUTLINED_FUNCTION_15_13();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_48_4();
      if (v4)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_145_4();
  if (v4 ^ v5 | v21)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (!v13)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_139_2(v6, v7, v8, v9, v10, v11);
  v14 = OUTLINED_FUNCTION_63_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_69(v16);
  v18 = *(v17 + 72);
  v19 = OUTLINED_FUNCTION_166_0();
  _swift_stdlib_malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_199();
  v21 = v21 && v18 == -1;
  if (v21)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_105_1(v20);
LABEL_17:
  v22 = OUTLINED_FUNCTION_63_1();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_25_0(v24);
  v26 = *(v25 + 80);
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    sub_1D4F037E4(v0 + v27, v2, v19 + v27);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_229();
  }

  OUTLINED_FUNCTION_46();
}

char *sub_1D4F05404(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB1F0, &qword_1D561DF38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D4F0551C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADB0, &qword_1D561DBA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1D4F0561C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFD8, &qword_1D561DD98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1D4F0571C()
{
  OUTLINED_FUNCTION_157_2();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_48_4();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_139_2(v2, v3, v4, v5, v6, v7);
    v13 = OUTLINED_FUNCTION_136_1();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_13_13();
    *(v13 + 2) = v11;
    *(v13 + 3) = v14;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[16 * v11] <= v15)
    {
      memmove(v15, v16, 16 * v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F05888()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_37_10();
  if (v3)
  {
    OUTLINED_FUNCTION_15_13();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_48_4();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_145_4();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_139_2(v6, v7, v8, v9, v10, v11);
    v15 = OUTLINED_FUNCTION_226();
    v16 = _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_105_1(v16 - 32);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v15 != v0 || &v0[40 * v2 + 32] <= v15 + 32)
    {
      v18 = OUTLINED_FUNCTION_97_1();
      memmove(v18, v19, v20);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_63_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_97_1();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_190();
}

char *sub_1D4F05968(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACF0, &unk_1D561DAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D4F05A80()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_139_2(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_233();
    OUTLINED_FUNCTION_94_1(v15);
  }

  v16 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_212();
    if (v21)
    {
      v22 = v20 > v18;
    }

    else
    {
      v22 = 0;
    }

    if (!v22)
    {
      memmove(v18, v19, v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v16, v17, v2);
  }
}

char *sub_1D4F05B24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE40, &qword_1D561DC40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_1D4F05C24(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE28, &qword_1D561DC28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE30, &unk_1D561DC30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D4F05D54()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_25_20(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE00, &qword_1D561DBF8);
    v9 = OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_30_4(v9);
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v2] <= v11)
    {
      memmove(v11, v12, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F05E30()
{
  OUTLINED_FUNCTION_52_5();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_31_11(v6);
  if (v2)
  {
    OUTLINED_FUNCTION_139_2(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_136_1();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_60_2();
    v15[2] = v3;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v15 != v0 || &v18[8 * v3] <= v17)
    {
      memmove(v17, v18, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v3);
  }
}

uint64_t sub_1D4F05F24(uint64_t a1)
{
  OUTLINED_FUNCTION_172_0();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v1;
  if ((result & 1) == 0 || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0 || a1 > *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v1 >> 62)
    {
      sub_1D5615A98();
    }

    else
    {
      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_1D5615BD8();
    *v2 = result;
  }

  return result;
}

uint64_t sub_1D4F05FC8(uint64_t a1)
{
  OUTLINED_FUNCTION_172_0();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v1;
  if (result)
  {
    if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
    {
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1D5615A98();
    goto LABEL_11;
  }

  if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v1 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1D5615BD8();
  *v2 = result;
  return result;
}

void sub_1D4F06064()
{
  OUTLINED_FUNCTION_191();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v5;
  if (!isUniquelyReferenced_nonNull_native || v4 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) > v4)
    {
      v7 = *(v5 + 16);
    }

    *v0 = v2();
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F06104(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_1D4F02378();
    *v1 = v6;
  }
}

uint64_t sub_1D4F061D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

void sub_1D4F0624C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_1D4F010BC();
    *v1 = v6;
  }
}

void sub_1D4F062F4()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_64_1();
  v4 = type metadata accessor for CloudSuggestedPivotsRawRequest.Entry(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_8();
  v10 = *(v2 + 16);
  MEMORY[0x1DA6EC0D0](v10);
  if (v10)
  {
    v11 = *(v4 + 20);
    v12 = *(v4 + 24);
    v13 = *(v7 + 80);
    OUTLINED_FUNCTION_43_3();
    v15 = v2 + v14;
    v16 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_79_1();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_232();
      sub_1D5610088();
      OUTLINED_FUNCTION_1_23();
      sub_1D4F0B28C(&qword_1EDD53358, v17);
      OUTLINED_FUNCTION_154_1();
      sub_1D5614CB8();
      v18 = *(v0 + v12);
      if (v18 == 3)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        sub_1D5614E28();
      }

      OUTLINED_FUNCTION_80_1();
      sub_1D4E58360();
      v15 += v16;
      --v10;
    }

    while (v10);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F064C4()
{
  OUTLINED_FUNCTION_191();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_98_0(v5, v3);
  if (v0)
  {
    v6 = OUTLINED_FUNCTION_215();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    v9 = OUTLINED_FUNCTION_173(v8);
    v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    v2(v9);
    do
    {
      OUTLINED_FUNCTION_29_3();
      sub_1D5614CB8();
      v11 += v13;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F0657C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  v3 = sub_1D560C0A8();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v30 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_34_5();
  v13 = type metadata accessor for StorePlatformOffer.Asset(v12);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_140_1();
  if (v2)
  {
    v32 = v13[10];
    v33 = v13[9];
    v19 = (v1 + v13[11]);
    v20 = *(v16 + 80);
    OUTLINED_FUNCTION_43_3();
    v31 = *(v16 + 72);
    v29 = (v21 + 32);
    do
    {
      OUTLINED_FUNCTION_32_13();
      sub_1D4F0B238();
      if (v1[1])
      {
        v22 = *v1;
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_142_0();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      if (*(v1 + 24) == 1)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        v23 = v1[2];
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v23);
      }

      if (v1[5])
      {
        v24 = v1[4];
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_142_0();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      if (*(v1 + 48) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      if (*(v1 + 49) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      OUTLINED_FUNCTION_67_4();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_39_7();
      if (v25)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        (*v29)(v30, v0, v3);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_0_15();
        sub_1D4F0B28C(&qword_1EC7E9FC8, v26);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        OUTLINED_FUNCTION_129();
        v27(v30, v3);
      }

      if (*(v1 + v32) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      if (*(v19 + 8) == 1)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        v28 = *v19;
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC100](v28);
      }

      OUTLINED_FUNCTION_188_0();
      OUTLINED_FUNCTION_176_0();
    }

    while (!v25);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F068DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_12(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *v4;
      MEMORY[0x1DA6EC0D0](*(v4 - 1));
      MEMORY[0x1DA6EC0D0](v5);
      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_1D4F06928(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_12(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      OUTLINED_FUNCTION_222();
      sub_1D5614E28();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

unint64_t sub_1D4F06B60()
{
  result = qword_1EC7EAC08;
  if (!qword_1EC7EAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAC08);
  }

  return result;
}

unint64_t sub_1D4F06BB8()
{
  result = qword_1EC7EAC10;
  if (!qword_1EC7EAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAC10);
  }

  return result;
}

uint64_t sub_1D4F06C24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D4F06C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t _s6SourceOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7ContentO17AdditionalContentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D4F06E28()
{
  result = qword_1EC7EAC20;
  if (!qword_1EC7EAC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAC18, &qword_1D561DA50);
    sub_1D4F06EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAC20);
  }

  return result;
}

unint64_t sub_1D4F06EAC()
{
  result = qword_1EC7EAC28;
  if (!qword_1EC7EAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAC28);
  }

  return result;
}

unint64_t sub_1D4F06F00()
{
  result = qword_1EC7EAC30;
  if (!qword_1EC7EAC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAC18, &qword_1D561DA50);
    sub_1D4F06F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAC30);
  }

  return result;
}

unint64_t sub_1D4F06F84()
{
  result = qword_1EC7EAC38;
  if (!qword_1EC7EAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAC38);
  }

  return result;
}

void sub_1D4F06FD8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_53_2();
  v3 = type metadata accessor for MusicSearchResultGroup();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_103_0();
  if (v1)
  {
    v9 = *(v3 + 24);
    v10 = *(v3 + 28);
    OUTLINED_FUNCTION_38_9();
    v11 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_232();
      v12 = *(v0 + 16);
      v13 = *(v0 + 24);
      sub_1D5614E28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
      sub_1D4F0A558();
      OUTLINED_FUNCTION_154_1();
      sub_1D5614CB8();
      v14 = *(v0 + v10);
      sub_1D56162F8();
      OUTLINED_FUNCTION_160_0();
      v2 += v11;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F070FC()
{
  OUTLINED_FUNCTION_119_2();
  OUTLINED_FUNCTION_206();
  v2 = sub_1D4E62638(v1);
  MEMORY[0x1DA6EC0D0](v2);
  v3 = sub_1D4E62628(v0);
  if (!v3)
  {
LABEL_8:
    OUTLINED_FUNCTION_118_2();
    return;
  }

  v4 = v3;
  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v6 = OUTLINED_FUNCTION_86_0();
        MEMORY[0x1DA6EB9B0](v6);
      }

      else
      {
        v7 = *(v0 + 8 * v5 + 32);
      }

      ++v5;
      sub_1D560CDE8();
      OUTLINED_FUNCTION_88_3();
      sub_1D4F0B28C(&qword_1EC7EB030, v8);
      OUTLINED_FUNCTION_220();
      sub_1D5614CB8();
    }

    while (v4 != v5);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1D4F07228()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_64_1();
  v4 = type metadata accessor for CloudSuggestedPivotsRawRequest.Entry(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v71 = v6;
  v72 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  v12 = sub_1D5610088();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v70 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v74 = v23;
  v24 = OUTLINED_FUNCTION_70_0();
  v79 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(v24);
  v25 = OUTLINED_FUNCTION_14(v79);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v73 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB318, &unk_1D561E020);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v78 = v33;
  v34 = OUTLINED_FUNCTION_70_0();
  v35 = type metadata accessor for CloudSuggestedPivotsRawRequest.PivotRound(v34);
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_7();
  v41 = *(v2 + 16);
  MEMORY[0x1DA6EC0D0](v41);
  v77 = v41;
  if (v41)
  {
    v42 = 0;
    v43 = *(v38 + 80);
    OUTLINED_FUNCTION_43_3();
    v76 = *(v35 + 20);
    v75 = *(v38 + 72);
    v68 = (v15 + 8);
    v69 = (v15 + 32);
    v80 = v0;
    do
    {
      v81 = v42;
      sub_1D4F0B238();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_57(v78, 1, v79);
      if (v44)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_86_3();
        sub_1D4F0AECC();
        OUTLINED_FUNCTION_27();
        v45 = *v73;
        v46 = v73[1];
        sub_1D5614E28();
        v47 = v79[5];
        OUTLINED_FUNCTION_1_23();
        sub_1D4F0B28C(&qword_1EDD53358, v48);
        sub_1D5614CB8();
        v49 = (v73 + v79[6]);
        if (v49[1])
        {
          v50 = *v49;
          OUTLINED_FUNCTION_27();
          v0 = v80;
          sub_1D5614E28();
        }

        else
        {
          OUTLINED_FUNCTION_51_7();
          sub_1D56162F8();
        }

        v51 = v79[7];
        sub_1D4F0AE7C();
        OUTLINED_FUNCTION_57(v74, 1, v12);
        if (v44)
        {
          OUTLINED_FUNCTION_51_7();
          sub_1D56162F8();
        }

        else
        {
          v52 = *v69;
          v53 = OUTLINED_FUNCTION_63_1();
          v54(v53);
          OUTLINED_FUNCTION_27();
          sub_1D5614CB8();
          (*v68)(v70, v12);
        }

        OUTLINED_FUNCTION_100_0();
      }

      v55 = *(v0 + v76);
      if (v55)
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](*(v55 + 16));
        v56 = *(v55 + 16);
        if (v56)
        {
          v58 = *(v72 + 20);
          v57 = *(v72 + 24);
          v59 = *(v71 + 80);
          OUTLINED_FUNCTION_43_3();
          v61 = v55 + v60;
          v63 = *(v62 + 72);
          do
          {
            OUTLINED_FUNCTION_79_1();
            OUTLINED_FUNCTION_209();
            sub_1D4F0B238();
            v64 = *v11;
            v65 = v11[1];
            sub_1D5614E28();
            OUTLINED_FUNCTION_1_23();
            sub_1D4F0B28C(&qword_1EDD53358, v66);
            sub_1D5614CB8();
            v67 = *(v11 + v57);
            if (v67 == 3)
            {
              OUTLINED_FUNCTION_51_7();
              sub_1D56162F8();
            }

            else
            {
              OUTLINED_FUNCTION_27();
              sub_1D5614E28();
            }

            OUTLINED_FUNCTION_80_1();
            sub_1D4E58360();
            v61 += v63;
            --v56;
          }

          while (v56);
        }
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      v0 = v80;
      v42 = v81 + 1;
      sub_1D4E58360();
    }

    while (v81 + 1 != v77);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F07784()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  v2 = sub_1D5610978();
  v3 = OUTLINED_FUNCTION_4(v2);
  v29 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_5();
  v11 = type metadata accessor for EditorialCard();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_140_1();
  if (v1)
  {
    v33 = v11[7];
    v34 = v11[6];
    v31 = v11[9];
    v32 = v11[8];
    v17 = *(v14 + 80);
    OUTLINED_FUNCTION_43_3();
    v30 = *(v14 + 72);
    do
    {
      OUTLINED_FUNCTION_124_0();
      v18 = *v0;
      v19 = v0[1];
      sub_1D5614E28();
      if (*(v0 + 16) == 1)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](0);
      }

      OUTLINED_FUNCTION_67_4();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_39_7();
      if (v20)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_129();
        v21 = OUTLINED_FUNCTION_55_4();
        v22(v21);
        OUTLINED_FUNCTION_27();
        sub_1D4F0B28C(&qword_1EC7EACA0, MEMORY[0x1E6975E48]);
        OUTLINED_FUNCTION_68_0();
        v23 = *(v29 + 8);
        v24 = OUTLINED_FUNCTION_61();
        v25(v24);
      }

      if (*(v0 + v33))
      {
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_141();
        sub_1D4F327C4();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      if (*(v0 + v32))
      {
        OUTLINED_FUNCTION_27();
        v26 = OUTLINED_FUNCTION_141();
        sub_1D4F329DC(v26, v27);
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      v28 = *(v0 + v31);
      sub_1D4F31AC0();
      OUTLINED_FUNCTION_188_0();
      OUTLINED_FUNCTION_176_0();
    }

    while (!v20);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F07A58(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_12(a1, a2);
  if (v2)
  {
    v4 = (v3 + 49);
    do
    {
      v5 = *(v4 - 17);
      v6 = *(v4 - 9);
      v7 = *(v4 - 1);
      v8 = *v4;
      v4 += 24;
      OUTLINED_FUNCTION_92_0();
      OUTLINED_FUNCTION_150_3();
      MEMORY[0x1DA6EC0D0](v7);
      MEMORY[0x1DA6EC0D0](v8);
      --v2;
    }

    while (v2);
  }
}

void sub_1D4F07ACC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_12(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      OUTLINED_FUNCTION_92_0();
      --v2;
    }

    while (v2);
  }
}

void sub_1D4F07B18(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_12(a1, a2);
  if (v2)
  {
    v4 = (v3 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 8);
      v7 = *v4;
      v4 += 3;
      OUTLINED_FUNCTION_92_0();
      MEMORY[0x1DA6EC0D0](v6);
      OUTLINED_FUNCTION_150_3();
      --v2;
    }

    while (v2);
  }
}

void sub_1D4F07B78(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_12(a1, a2);
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    do
    {
      v6 = (v5 + 40 * v4);
      v7 = *v6;
      v9 = v6[1];
      v8 = v6[2];
      v10 = *(v6 + 24);
      v11 = v6[4];
      OUTLINED_FUNCTION_92_0();
      MEMORY[0x1DA6EC0D0](*(v9 + 16));
      v12 = *(v9 + 16);
      if (v12)
      {
        v13 = (v9 + 40);
        do
        {
          v14 = *(v13 - 1);
          v15 = *v13;
          OUTLINED_FUNCTION_92_0();
          OUTLINED_FUNCTION_150_3();
          v13 += 2;
          --v12;
        }

        while (v12);
      }

      if (v10)
      {
        sub_1D56162F8();
      }

      else
      {
        sub_1D56162F8();
        if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v16 = v8;
        }

        else
        {
          v16 = 0;
        }

        MEMORY[0x1DA6EC100](v16);
      }

      MEMORY[0x1DA6EC0D0](*(v11 + 16));
      v17 = *(v11 + 16);
      if (v17)
      {
        v18 = (v11 + 32);
        do
        {
          v19 = *v18++;
          MEMORY[0x1DA6EC0D0](v19);
          --v17;
        }

        while (v17);
      }

      ++v4;
    }

    while (v4 != v2);
  }
}

void sub_1D4F07C6C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_98_0(a1, a2);
  if (v2)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = v4[1];
      v6[0] = *v4;
      v6[1] = v5;
      v7 = v4[2];
      v9 = v6[0];
      v10 = v5;
      v11 = v7;
      sub_1D4F0A60C(v6, v8);
      VideoLocale.hash(into:)();
      v8[0] = v9;
      v8[1] = v10;
      v8[2] = v11;
      sub_1D4F0A668(v8);
      v4 += 3;
      --v2;
    }

    while (v2);
  }
}

void sub_1D4F07D44()
{
  OUTLINED_FUNCTION_191();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_98_0(v9, v7);
  if (v0)
  {
    v10 = v6(0);
    OUTLINED_FUNCTION_173(v10);
    v12 = v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v13 + 72);
    sub_1D4F0B28C(v4, v2);
    do
    {
      OUTLINED_FUNCTION_29_3();
      sub_1D5614CB8();
      v12 += v14;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F07E0C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_98_0(a1, a2);
  if (v2)
  {
    v4 = type metadata accessor for VideoOffer();
    OUTLINED_FUNCTION_69(v4);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v7 + 72);
    do
    {
      sub_1D5369830();
      v6 += v8;
      --v2;
    }

    while (v2);
  }
}

void sub_1D4F07EA0()
{
  OUTLINED_FUNCTION_119_2();
  OUTLINED_FUNCTION_35_12(v2, v3);
  if (v0)
  {
    v4 = (v1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v8 = *v4;
      v7 = v4[1];
      v9 = *(v4 + 24);
      v12 = v4[2];
      v13 = v4[4];
      v10 = *(v4 + 40);
      v11 = v4[6];

      sub_1D5614E28();
      if (v7)
      {
        sub_1D56162F8();
        sub_1D5614E28();
        if (v9)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1D56162F8();
        if (v9)
        {
LABEL_5:
          sub_1D56162F8();
          if (!v10)
          {
            goto LABEL_9;
          }

          goto LABEL_6;
        }
      }

      sub_1D56162F8();
      MEMORY[0x1DA6EC0D0](v12);
      if (!v10)
      {
LABEL_9:
        sub_1D56162F8();
        MEMORY[0x1DA6EC0D0](v13);
        goto LABEL_10;
      }

LABEL_6:
      sub_1D56162F8();
LABEL_10:
      OUTLINED_FUNCTION_68_4();
      sub_1D4F31AC0();

      v4 += 9;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_118_2();
}

void sub_1D4F07FB4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_12(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      OUTLINED_FUNCTION_92_0();
      OUTLINED_FUNCTION_150_3();
      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_1D4F08008()
{
  OUTLINED_FUNCTION_119_2();
  OUTLINED_FUNCTION_35_12(v2, v3);
  if (v0)
  {
    v4 = (v1 + 72);
    do
    {
      v6 = *(v4 - 5);
      v5 = *(v4 - 4);
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);
      v9 = *(v4 - 8);
      v10 = *(v4 - 7);
      v12 = *(v4 - 6);
      v13 = *(v4 - 5);
      v14 = *(v4 - 4);
      v15 = *(v4 - 3);
      v11 = *v4;
      v4 += 6;

      OUTLINED_FUNCTION_131_1();
      sub_1D5614E28();
      sub_1D5614E28();
      sub_1D56162F8();
      sub_1D56162F8();
      sub_1D56162F8();
      sub_1D56162F8();
      sub_1D56162F8();
      sub_1D56162F8();
      OUTLINED_FUNCTION_68_4();
      sub_1D4F31AC0();

      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_118_2();
}

void sub_1D4F080F8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  v2 = sub_1D560F548();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_34_5();
  v11 = type metadata accessor for StorePlatformOffer(v10);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_140_1();
  if (v1)
  {
    v17 = *(v11 + 20);
    v18 = *(v14 + 80);
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_223();
    v29 = (v19 + 32);
    v20 = (v19 + 8);
    do
    {
      OUTLINED_FUNCTION_85_2();
      sub_1D4F0B238();
      if (*v0)
      {
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_141();
        sub_1D4F0657C();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      OUTLINED_FUNCTION_67_4();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_39_7();
      if (v21)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        v22 = *v29;
        v23 = OUTLINED_FUNCTION_55_4();
        v24(v23);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_82_2();
        sub_1D4F0B28C(&qword_1EC7EAC70, v25);
        OUTLINED_FUNCTION_68_0();
        v26 = *v20;
        v27 = OUTLINED_FUNCTION_61();
        v28(v27);
      }

      OUTLINED_FUNCTION_188_0();
      OUTLINED_FUNCTION_176_0();
    }

    while (!v21);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F08318()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  v2 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34_5();
  v10 = type metadata accessor for StorePlatformGenreAttribute();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_140_1();
  if (v1)
  {
    v16 = *(v10 + 24);
    v17 = *(v13 + 80);
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_223();
    v29 = (v18 + 8);
    v30 = (v18 + 32);
    do
    {
      OUTLINED_FUNCTION_124_0();
      if (v0[1])
      {
        v19 = *v0;
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_142_0();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      if (v0[3])
      {
        v20 = v0[2];
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_142_0();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      OUTLINED_FUNCTION_67_4();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_39_7();
      if (v21)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        v22 = *v30;
        v23 = OUTLINED_FUNCTION_55_4();
        v24(v23);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_0_15();
        sub_1D4F0B28C(&qword_1EC7E9FC8, v25);
        OUTLINED_FUNCTION_68_0();
        v26 = *v29;
        v27 = OUTLINED_FUNCTION_61();
        v28(v27);
      }

      OUTLINED_FUNCTION_188_0();
      OUTLINED_FUNCTION_176_0();
    }

    while (!v21);
  }

  OUTLINED_FUNCTION_46();
}