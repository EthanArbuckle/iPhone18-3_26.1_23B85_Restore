void sub_1D4F08620()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_35_12(v2, v3);
  if (v0)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D5614E28();

      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F086FC()
{
  OUTLINED_FUNCTION_47();
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
      v10 = *(v4 - 1);
      v9 = *v4;

      sub_1D5614E28();
      sub_1D5614E28();
      sub_1D56162F8();
      if (v9)
      {
        sub_1D5614E28();
      }

      v4 += 6;

      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F087C4()
{
  OUTLINED_FUNCTION_53_2();
  v3 = type metadata accessor for VideoArtwork.FileAsset();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_103_0();
  if (v1)
  {
    v9 = v3[6];
    v19 = v3[5];
    v11 = v3[7];
    v10 = v3[8];
    v12 = *(v6 + 80);
    OUTLINED_FUNCTION_43_3();
    v14 = v2 + v13;
    v15 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D4F0B238();
      sub_1D560C0A8();
      OUTLINED_FUNCTION_0_15();
      sub_1D4F0B28C(&qword_1EC7E9FC8, v16);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      MEMORY[0x1DA6EC0D0](*(v0 + v19));
      MEMORY[0x1DA6EC0D0](*(v0 + v9));
      v17 = *(v0 + v11);
      OUTLINED_FUNCTION_92_0();
      v18 = *(v0 + v10);
      sub_1D4F31AC0();
      OUTLINED_FUNCTION_160_0();
      v14 += v15;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1D4F0893C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InternalMusicPlayer.Dialog.Action(0);
  v4 = OUTLINED_FUNCTION_69(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  v12 = *(a2 + 16);
  result = MEMORY[0x1DA6EC0D0](v12);
  if (v12)
  {
    v14 = *(v6 + 80);
    OUTLINED_FUNCTION_43_3();
    v16 = a2 + v15;
    v17 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_134_0();
      sub_1D4F0B238();
      v18 = *v11;
      v19 = v11[1];
      sub_1D5614E28();
      MEMORY[0x1DA6EC0D0](*(v11 + 16));
      result = sub_1D4E58360();
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  return result;
}

void sub_1D4F08A4C()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_53_2();
  v2 = type metadata accessor for InternalMusicPlayer.Queue.Entry();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_103_0();
  if (v0)
  {
    v8 = *(v2 + 20);
    OUTLINED_FUNCTION_38_9();
    v9 = *(v5 + 72);
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_232();
      sub_1D5105370();
      OUTLINED_FUNCTION_160_0();
      v1 += v9;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F08B38(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_12(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1DA6EC0D0](v5);
      --v2;
    }

    while (v2);
  }
}

void sub_1D4F08B78()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_53_2();
  v3 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_103_0();
  if (v1)
  {
    v9 = *(v3 + 24);
    OUTLINED_FUNCTION_38_9();
    v10 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_232();
      v11 = *(v0 + 16);
      v12 = *(v0 + 24);
      sub_1D5614E28();
      sub_1D560C0A8();
      OUTLINED_FUNCTION_0_15();
      sub_1D4F0B28C(&qword_1EC7E9FC8, v13);
      sub_1D5614CB8();
      OUTLINED_FUNCTION_160_0();
      v2 += v10;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F08CAC()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_64_1();
  v3 = sub_1D560C0A8();
  v4 = OUTLINED_FUNCTION_4(v3);
  v33 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34_5();
  v12 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_11();
  v18 = *(v2 + 16);
  MEMORY[0x1DA6EC0D0](v18);
  if (v18)
  {
    v35 = *(v12 + 28);
    v36 = *(v12 + 24);
    v19 = *(v15 + 80);
    OUTLINED_FUNCTION_43_3();
    v34 = *(v15 + 72);
    do
    {
      OUTLINED_FUNCTION_124_0();
      v20 = *v0;
      v21 = v0[1];
      sub_1D5614E28();
      v22 = v0[2];
      v23 = v0[3];
      sub_1D5614E28();
      OUTLINED_FUNCTION_67_4();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_39_7();
      if (v24)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        v25 = *(v33 + 32);
        v26 = OUTLINED_FUNCTION_55_4();
        v27(v26);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_0_15();
        sub_1D4F0B28C(&qword_1EC7E9FC8, v28);
        OUTLINED_FUNCTION_68_0();
        v29 = *(v33 + 8);
        v30 = OUTLINED_FUNCTION_61();
        v31(v30);
      }

      v32 = *(v0 + v35);
      sub_1D56162F8();
      OUTLINED_FUNCTION_188_0();
      OUTLINED_FUNCTION_176_0();
    }

    while (!v24);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F08F34(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_12(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1DA6EC0D0](v5);
      --v2;
    }

    while (v2);
  }
}

void sub_1D4F08F74()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_64_1();
  v3 = sub_1D5610088();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_5();
  v11 = type metadata accessor for MusicItemTypedIdentifier();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_11();
  v17 = *(v2 + 16);
  MEMORY[0x1DA6EC0D0](v17);
  v39 = v17;
  if (v17)
  {
    v18 = 0;
    v37 = *(v11 + 28);
    v38 = *(v11 + 24);
    v19 = *(v14 + 80);
    OUTLINED_FUNCTION_43_3();
    v35 = (v20 + 8);
    v36 = *(v14 + 72);
    do
    {
      OUTLINED_FUNCTION_90_3();
      sub_1D4F0B238();
      v21 = *v0;
      v22 = v0[1];
      sub_1D5614E28();
      v23 = v0[2];
      MEMORY[0x1DA6EC0D0](*(v23 + 16));
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = (v23 + 40);
        do
        {
          v26 = *(v25 - 1);
          v27 = *v25;

          OUTLINED_FUNCTION_71();
          sub_1D5614E28();

          v25 += 2;
          --v24;
        }

        while (v24);
      }

      sub_1D560D9A8();
      sub_1D4F0B28C(&qword_1EDD53C28, MEMORY[0x1E6974F80]);
      sub_1D5614CB8();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_39_7();
      if (v28)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_129();
        v29 = OUTLINED_FUNCTION_55_4();
        v30(v29);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_1_23();
        sub_1D4F0B28C(&qword_1EDD53358, v31);
        OUTLINED_FUNCTION_68_0();
        v32 = *v35;
        v33 = OUTLINED_FUNCTION_61();
        v34(v33);
      }

      OUTLINED_FUNCTION_188_0();
      ++v18;
    }

    while (v18 != v39);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F09260()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v78 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_112_0();
  v85 = sub_1D5614828();
  v11 = OUTLINED_FUNCTION_4(v85);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v81 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_135();
  v77 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v76 - v20;
  OUTLINED_FUNCTION_70_0();
  v88 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta();
  v21 = OUTLINED_FUNCTION_4(v88);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v28 = (v27 - v26);
  v29 = *(v2 + 16);
  MEMORY[0x1DA6EC0D0](v29);
  if (v29)
  {
    v30 = *(v23 + 80);
    OUTLINED_FUNCTION_43_3();
    v32 = v2 + v31;
    v33 = (v13 + 32);
    v34 = *(v23 + 72);
    v86 = (v13 + 32);
    v87 = v34;
    v84 = (v13 + 8);
    v89 = v4;
    v82 = v0;
    while (2)
    {
      OUTLINED_FUNCTION_224();
      sub_1D4F0B238();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v64 = *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED5A0, &qword_1D561DE10) + 48));
          v65 = *v33;
          v66 = v83;
          OUTLINED_FUNCTION_202();
          v67();
          MEMORY[0x1DA6EC0D0](1);
          OUTLINED_FUNCTION_11_8();
          sub_1D4F0B28C(&qword_1EC7EB050, v68);
          sub_1D5614CB8();
          MEMORY[0x1DA6EC0D0](v64);
          OUTLINED_FUNCTION_129();
          v46 = v66;
          goto LABEL_12;
        case 2u:
          v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB060, &qword_1D561DE08) + 48);
          v48 = *v33;
          v49 = v83;
          v50 = v85;
          v48(v83, v28, v85);
          v51 = v77;
          v48(v77, (v28 + v47), v50);
          MEMORY[0x1DA6EC0D0](2);
          OUTLINED_FUNCTION_11_8();
          sub_1D4F0B28C(&qword_1EC7EB050, v52);
          sub_1D5614CB8();
          sub_1D5614CB8();
          v53 = *v84;
          (*v84)(v51, v50);
          v54 = v49;
          v33 = v86;
          v53(v54, v50);
          goto LABEL_25;
        case 3u:
          v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB058, &qword_1D561DE00) + 48);
          v56 = v85;
          v80 = *v33;
          v80(v81, v28, v85);
          sub_1D4F0AB3C();
          MEMORY[0x1DA6EC0D0](3);
          OUTLINED_FUNCTION_11_8();
          sub_1D4F0B28C(&qword_1EC7EB050, v57);
          sub_1D5614CB8();
          v58 = v56;
          v0 = v82;
          v59 = v78;
          sub_1D4F0AE7C();
          OUTLINED_FUNCTION_10(v59);
          if (v60)
          {
            sub_1D56162F8();
            v61 = OUTLINED_FUNCTION_130();
            sub_1D4E50004(v61, v62, &qword_1D56250F0);
            OUTLINED_FUNCTION_129();
            v63(v81, v58);
          }

          else
          {
            v70 = v83;
            v80(v83, v59, v58);
            v71 = v58;
            sub_1D56162F8();
            sub_1D5614CB8();
            v72 = *v84;
            v73 = v70;
            v0 = v82;
            (*v84)(v73, v71);
            v74 = OUTLINED_FUNCTION_130();
            sub_1D4E50004(v74, v75, &qword_1D56250F0);
            v72(v81, v71);
          }

          v33 = v86;
          goto LABEL_25;
        case 4u:
          v41 = *v33;
          v42 = v83;
          OUTLINED_FUNCTION_202();
          v43();
          MEMORY[0x1DA6EC0D0](4);
          OUTLINED_FUNCTION_11_8();
          sub_1D4F0B28C(&qword_1EC7EB050, v44);
          sub_1D5614CB8();
          OUTLINED_FUNCTION_129();
          v46 = v42;
LABEL_12:
          v69 = v0;
          v0 = v4;
          v4 = v89;
          v45(v46, v69);
          goto LABEL_25;
        case 5u:
          MEMORY[0x1DA6EC0D0](5);
          goto LABEL_25;
        default:
          v35 = *v28;
          v36 = v28[1];
          v37 = v28[3];
          v38 = v28[4];
          v39 = v28[5];
          v79 = v28[2];
          v80 = v38;
          v40 = *(v28 + 48);
          MEMORY[0x1DA6EC0D0](0);
          if (v36)
          {
            OUTLINED_FUNCTION_27();
            sub_1D5614E28();
          }

          else
          {
            OUTLINED_FUNCTION_51_7();
            sub_1D56162F8();
          }

          v33 = v86;
          if (v37)
          {
            OUTLINED_FUNCTION_27();
            sub_1D5614E28();
            if (v39)
            {
              goto LABEL_18;
            }
          }

          else
          {
            OUTLINED_FUNCTION_51_7();
            sub_1D56162F8();
            if (v39)
            {
LABEL_18:
              OUTLINED_FUNCTION_27();
              sub_1D5614E28();
              goto LABEL_21;
            }
          }

          OUTLINED_FUNCTION_51_7();
          sub_1D56162F8();
LABEL_21:
          if (v40 == 2)
          {
            OUTLINED_FUNCTION_51_7();
          }

          else
          {
            OUTLINED_FUNCTION_27();
          }

          sub_1D56162F8();

          v0 = v82;
LABEL_25:
          v32 += v87;
          if (!--v29)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F09AC8()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_64_1();
  v4 = sub_1D56140F8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v64 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v57 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_71_1();
  v14 = sub_1D560C0A8();
  v15 = OUTLINED_FUNCTION_4(v14);
  v58 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v56 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_114();
  v60 = type metadata accessor for MovieClip();
  v24 = OUTLINED_FUNCTION_4(v60);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v31 = (v30 - v29);
  v32 = *(v3 + 16);
  MEMORY[0x1DA6EC0D0](v32);
  if (v32)
  {
    v33 = *(v26 + 80);
    OUTLINED_FUNCTION_43_3();
    v35 = v3 + v34;
    v62 = v60[7];
    v63 = v60[6];
    v54 = (v58 + 8);
    v55 = (v58 + 32);
    v53 = (v64 + 8);
    v59 = *(v36 + 72);
    v61 = v60[8];
    do
    {
      v65 = v32;
      v37 = v4;
      sub_1D4F0B238();
      if (v31[1])
      {
        v38 = *v31;
        OUTLINED_FUNCTION_27();
        sub_1D5614E28();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      if (*(v31 + 24) == 1)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        v39 = v31[2];
        OUTLINED_FUNCTION_27();
        if ((v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        MEMORY[0x1DA6EC100](v40);
      }

      v4 = v37;
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_57(v1, 1, v14);
      if (v41)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        (*v55)(v56, v1, v14);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_0_15();
        sub_1D4F0B28C(&qword_1EC7E9FC8, v42);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        v43 = *v54;
        v44 = OUTLINED_FUNCTION_85_0();
        v45(v44);
      }

      sub_1D4F0AE7C();
      v46 = OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_57(v46, v47, v37);
      if (v41)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_203();
        v48(v57, v0, v37);
        OUTLINED_FUNCTION_27();
        sub_1D4F0B28C(&qword_1EC7E9FC0, MEMORY[0x1E6976F68]);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        v49 = *v53;
        v50 = OUTLINED_FUNCTION_93();
        v51(v50);
      }

      v52 = *(v31 + v61);
      sub_1D4F31AC0();
      sub_1D4E58360();
      v35 += v59;
      v32 = v65 - 1;
    }

    while (v65 != 1);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F09F48()
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
      v8 = OUTLINED_FUNCTION_201();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      sub_1D4E62A60(&qword_1EC7EAF18, &qword_1EC7EAF10, &qword_1D561DCE0);
      sub_1D5614CB8();
    }

    while (v4 != v5);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1D4F0A108()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D560FDA8();
  v6 = OUTLINED_FUNCTION_4(v5);
  v36 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_11();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_71_1();
  v14 = v2(0);
  OUTLINED_FUNCTION_4(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_114();
  v20 = *(v4 + 16);
  MEMORY[0x1DA6EC0D0](v20);
  if (v20)
  {
    v21 = *(v14 + 24);
    v22 = *(v16 + 80);
    OUTLINED_FUNCTION_43_3();
    v24 = v4 + v23;
    v37 = *(v16 + 72);
    do
    {
      sub_1D4F0B238();
      if (v0[1])
      {
        v25 = *v0;
        sub_1D56162F8();
        OUTLINED_FUNCTION_61();
        sub_1D5614E28();
      }

      else
      {
        sub_1D56162F8();
      }

      if (v0[3])
      {
        v26 = v0[2];
        sub_1D56162F8();
        OUTLINED_FUNCTION_61();
        sub_1D5614E28();
      }

      else
      {
        sub_1D56162F8();
      }

      sub_1D4F0AE7C();
      v27 = OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_57(v27, v28, v5);
      if (v29)
      {
        sub_1D56162F8();
      }

      else
      {
        v30 = *(v36 + 32);
        v31 = OUTLINED_FUNCTION_201();
        v32(v31);
        sub_1D56162F8();
        OUTLINED_FUNCTION_87_2();
        sub_1D4F0B28C(&qword_1EC7EB000, v33);
        sub_1D5614CB8();
        OUTLINED_FUNCTION_129();
        v34 = OUTLINED_FUNCTION_15_2();
        v35(v34);
      }

      sub_1D4E58360();
      v24 += v37;
      --v20;
    }

    while (v20);
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4F0A3F0()
{
  result = qword_1EC7EAE98;
  if (!qword_1EC7EAE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE90, &qword_1D561DC80);
    sub_1D4F0B28C(&qword_1EC7EAEA0, type metadata accessor for CloudMovieClip);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAE98);
  }

  return result;
}

unint64_t sub_1D4F0A4A4()
{
  result = qword_1EC7EAEA8;
  if (!qword_1EC7EAEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE90, &qword_1D561DC80);
    sub_1D4F0B28C(&qword_1EC7EAEB0, type metadata accessor for CloudMovieClip);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAEA8);
  }

  return result;
}

unint64_t sub_1D4F0A558()
{
  result = qword_1EC7EB0D8;
  if (!qword_1EC7EB0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA650, &qword_1D561C540);
    sub_1D4F0B28C(&qword_1EC7EB0E0, type metadata accessor for GenericMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB0D8);
  }

  return result;
}

unint64_t sub_1D4F0A6BC()
{
  result = qword_1EC7EB138;
  if (!qword_1EC7EB138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB110, &qword_1D561DEB0);
    sub_1D4F0B28C(&qword_1EC7EB140, MEMORY[0x1E69760F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB138);
  }

  return result;
}

unint64_t sub_1D4F0A770()
{
  result = qword_1EC7EB148;
  if (!qword_1EC7EB148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB110, &qword_1D561DEB0);
    sub_1D4F0B28C(&qword_1EC7EB150, MEMORY[0x1E69760F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB148);
  }

  return result;
}

unint64_t sub_1D4F0A824()
{
  result = qword_1EC7EB190;
  if (!qword_1EC7EB190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA618, &unk_1D561C520);
    sub_1D4F0B28C(&qword_1EC7EB198, MEMORY[0x1E6975A70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB190);
  }

  return result;
}

unint64_t sub_1D4F0A8D8()
{
  result = qword_1EC7EB1A0;
  if (!qword_1EC7EB1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA618, &unk_1D561C520);
    sub_1D4F0B28C(&qword_1EC7EB1A8, MEMORY[0x1E6975A70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB1A0);
  }

  return result;
}

unint64_t sub_1D4F0A98C()
{
  result = qword_1EC7EB1B0;
  if (!qword_1EC7EB1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB170, &qword_1D561DEF0);
    sub_1D4F0AA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB1B0);
  }

  return result;
}

unint64_t sub_1D4F0AA10()
{
  result = qword_1EC7EB1B8;
  if (!qword_1EC7EB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB1B8);
  }

  return result;
}

unint64_t sub_1D4F0AA64()
{
  result = qword_1EC7EB1C0;
  if (!qword_1EC7EB1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB170, &qword_1D561DEF0);
    sub_1D4F0AAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB1C0);
  }

  return result;
}

unint64_t sub_1D4F0AAE8()
{
  result = qword_1EC7EB1C8;
  if (!qword_1EC7EB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB1C8);
  }

  return result;
}

uint64_t sub_1D4F0AB3C()
{
  OUTLINED_FUNCTION_69_0();
  v5 = OUTLINED_FUNCTION_186_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return v0;
}

unint64_t sub_1D4F0AB8C()
{
  result = qword_1EC7EB248;
  if (!qword_1EC7EB248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5F8, &qword_1D56294F0);
    sub_1D4F0B28C(&qword_1EC7EB250, type metadata accessor for CloudVideoOffer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB248);
  }

  return result;
}

unint64_t sub_1D4F0AC40()
{
  result = qword_1EC7EB258;
  if (!qword_1EC7EB258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5F8, &qword_1D56294F0);
    sub_1D4F0B28C(&qword_1EC7EB260, type metadata accessor for CloudVideoOffer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB258);
  }

  return result;
}

uint64_t sub_1D4F0ACF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1D5615A98();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1D4E62638(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1D560CDE8();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1D4E62A60(&qword_1EC7EB2F8, &qword_1EC7EB2F0, &qword_1D561E008);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2F0, &qword_1D561E008);
          v9 = sub_1D5355038(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4F0AE7C()
{
  OUTLINED_FUNCTION_69_0();
  v5 = OUTLINED_FUNCTION_186_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return v0;
}

uint64_t sub_1D4F0AECC()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

unint64_t sub_1D4F0AF20()
{
  result = qword_1EC7EB330;
  if (!qword_1EC7EB330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB328, &unk_1D561E030);
    sub_1D4F0B28C(&qword_1EC7EB338, MEMORY[0x1E6977468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB330);
  }

  return result;
}

unint64_t sub_1D4F0AFD4()
{
  result = qword_1EC7EB340;
  if (!qword_1EC7EB340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB328, &unk_1D561E030);
    sub_1D4F0B28C(&qword_1EC7EB348, MEMORY[0x1E6977468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB340);
  }

  return result;
}

unint64_t sub_1D4F0B088()
{
  result = qword_1EC7EB350;
  if (!qword_1EC7EB350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE68, &unk_1D5621200);
    sub_1D4F0B10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB350);
  }

  return result;
}

unint64_t sub_1D4F0B10C()
{
  result = qword_1EC7EB358;
  if (!qword_1EC7EB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB358);
  }

  return result;
}

unint64_t sub_1D4F0B160()
{
  result = qword_1EC7EB360;
  if (!qword_1EC7EB360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE68, &unk_1D5621200);
    sub_1D4F0B1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB360);
  }

  return result;
}

unint64_t sub_1D4F0B1E4()
{
  result = qword_1EC7EB368;
  if (!qword_1EC7EB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB368);
  }

  return result;
}

uint64_t sub_1D4F0B238()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

uint64_t sub_1D4F0B28C(unint64_t *a1, void (*a2)(uint64_t))
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

size_t OUTLINED_FUNCTION_23_12(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void OUTLINED_FUNCTION_25_20(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_31_11(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return swift_allocObject();
}

size_t OUTLINED_FUNCTION_94_1(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * result - 64;
  return result;
}

void OUTLINED_FUNCTION_98_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x1DA6EC0D0);
}

void OUTLINED_FUNCTION_103_0()
{
  v2 = *(v0 + 16);

  JUMPOUT(0x1DA6EC0D0);
}

void OUTLINED_FUNCTION_120_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  sub_1D4F03614(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return sub_1D4F0B238();
}

uint64_t OUTLINED_FUNCTION_125_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_136_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_139_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

void OUTLINED_FUNCTION_140_1()
{
  v2 = *(v0 + 16);

  JUMPOUT(0x1DA6EC0D0);
}

uint64_t OUTLINED_FUNCTION_142_0()
{

  return sub_1D5614E28();
}

void OUTLINED_FUNCTION_146_2()
{

  sub_1D4F03980();
}

uint64_t OUTLINED_FUNCTION_149()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_150_3()
{

  JUMPOUT(0x1DA6EC100);
}

uint64_t OUTLINED_FUNCTION_160_0()
{

  return sub_1D4E58360();
}

uint64_t OUTLINED_FUNCTION_168_0@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_169@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + ((v3 << 9) | (8 * a1)));
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_171()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_186_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_187(uint64_t a1@<X8>)
{
  *(v1 - 104) = a1;

  sub_1D4F03B84();
}

uint64_t OUTLINED_FUNCTION_188_0()
{

  return sub_1D4E58360();
}

uint64_t OUTLINED_FUNCTION_189_0()
{

  return sub_1D4F0AE7C();
}

void *OUTLINED_FUNCTION_192()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_193()
{

  return sub_1D4F0AE7C();
}

void OUTLINED_FUNCTION_223()
{
  *(v2 - 96) = *(v1 + 72);
  *(v2 - 88) = v0;
  v3 = *(v2 - 112);
}

uint64_t OUTLINED_FUNCTION_226()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_227()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_228()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_230()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_231()
{

  return sub_1D560E838();
}

uint64_t OUTLINED_FUNCTION_232()
{
  v2 = *v0;
  v3 = v0[1];

  return sub_1D5614E28();
}

uint64_t OUTLINED_FUNCTION_233()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_234()
{

  return sub_1D4E58360();
}

void *OUTLINED_FUNCTION_235()
{

  return __swift_coroFrameAllocStub(v0);
}

id Artwork.TextGradient.leadingColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *Artwork.TextGradient.trailingColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t static Artwork.TextGradient.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    type metadata accessor for CGColor();
    OUTLINED_FUNCTION_0_16();
    sub_1D4F0C398(v5, v6);
    v7 = v4;
    v8 = OUTLINED_FUNCTION_3_9();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v9 = *(a2 + 8);
  if (!a1[1])
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  type metadata accessor for CGColor();
  OUTLINED_FUNCTION_0_16();
  sub_1D4F0C398(v10, v11);
  v12 = v9;
  v13 = OUTLINED_FUNCTION_3_9();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v14 = type metadata accessor for Artwork.TextGradient();
  v15 = *(v14 + 24);
  if ((sub_1D5614018() & 1) == 0)
  {
    return 0;
  }

  v16 = *(v14 + 28);

  return sub_1D5614018();
}

uint64_t type metadata accessor for Artwork.TextGradient()
{
  result = qword_1EC7EB388;
  if (!qword_1EC7EB388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Artwork.TextGradient.hash(into:)()
{
  v1 = v0;
  if (*v0)
  {
    sub_1D56162F8();
    type metadata accessor for CGColor();
    OUTLINED_FUNCTION_0_16();
    sub_1D4F0C398(v2, v3);
    OUTLINED_FUNCTION_4_10();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[1])
  {
    sub_1D56162F8();
    type metadata accessor for CGColor();
    OUTLINED_FUNCTION_0_16();
    sub_1D4F0C398(v4, v5);
    OUTLINED_FUNCTION_4_10();
  }

  else
  {
    sub_1D56162F8();
  }

  v6 = type metadata accessor for Artwork.TextGradient();
  v7 = *(v6 + 24);
  sub_1D5614028();
  sub_1D4F0C398(&qword_1EC7EB378, MEMORY[0x1E6976F50]);
  sub_1D5614CB8();
  v8 = v1 + *(v6 + 28);
  return sub_1D5614CB8();
}

uint64_t Artwork.TextGradient.hashValue.getter()
{
  sub_1D56162D8();
  Artwork.TextGradient.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D4F0BED0()
{
  sub_1D56162D8();
  Artwork.TextGradient.hash(into:)();
  return sub_1D5616328();
}

uint64_t Artwork.TextGradient.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1D5613FC8();
  v6 = OUTLINED_FUNCTION_4(v5);
  v31 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1D560F968();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  sub_1D4E628D4(a1, v30);
  sub_1D560F948();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D560F938();
  v29 = sub_1D5613F88();
  v28 = sub_1D5613FA8();
  v27 = v5;
  v23 = a2;
  v24 = type metadata accessor for Artwork.TextGradient();
  v25 = v23 + *(v24 + 24);
  sub_1D5613F98();
  v26 = v23 + *(v24 + 28);
  sub_1D5613FB8();
  __swift_destroy_boxed_opaque_existential_1(a1);
  (*(v31 + 8))(v12, v27);
  result = (*(v16 + 8))(v21, v13);
  *v23 = v29;
  v23[1] = v28;
  return result;
}

uint64_t Artwork.TextGradient.encode(to:)(uint64_t a1)
{
  v39 = a1;
  v41 = sub_1D560F968();
  v2 = OUTLINED_FUNCTION_4(v41);
  v40 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v36 = v7 - v6;
  v8 = sub_1D5614028();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v35 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  v18 = sub_1D5613FC8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v37 = v20;
  v38 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v27 = *v1;
  v26 = *(v1 + 8);
  v28 = type metadata accessor for Artwork.TextGradient();
  v29 = *(v11 + 16);
  v29(v17, v1 + *(v28 + 24), v8);
  v29(v35, v1 + *(v28 + 28), v8);
  v30 = v26;
  v31 = v27;
  v32 = v36;
  sub_1D5613F78();
  sub_1D5613F68();
  sub_1D560F958();
  (*(v40 + 8))(v32, v41);
  return (*(v37 + 8))(v25, v38);
}

uint64_t sub_1D4F0C398(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D4F0C438()
{
  sub_1D4F0C4BC();
  if (v0 <= 0x3F)
  {
    sub_1D5614028();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D4F0C4BC()
{
  if (!qword_1EC7EB398)
  {
    type metadata accessor for CGColor();
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7EB398);
    }
  }
}

uint64_t sub_1D4F0C514()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7EB3A0);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EB3A0);
  v2 = *MEMORY[0x1E69767C8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static EditorialItem.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8980 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7EB3A0);
  OUTLINED_FUNCTION_24_0(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

void EditorialItem.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)()
{
  OUTLINED_FUNCTION_47();
  v174 = v0;
  v175 = v1;
  v3 = v2;
  v5 = v4;
  v168 = v6;
  v167 = sub_1D5612B88();
  v7 = OUTLINED_FUNCTION_4(v167);
  v166 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v165 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3B8, &qword_1D561E120);
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_48(&v149 - v18);
  v19 = sub_1D5614118();
  v20 = OUTLINED_FUNCTION_4(v19);
  v161 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v24);
  v158 = &v149 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_48(&v149 - v30);
  v31 = sub_1D5610088();
  v32 = OUTLINED_FUNCTION_4(v31);
  v152 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v37 - v36);
  v38 = sub_1D560D838();
  v39 = OUTLINED_FUNCTION_4(v38);
  v172 = v40;
  v173 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  v150 = v44 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3C0, &qword_1D561E128);
  v46 = OUTLINED_FUNCTION_22(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_48(&v149 - v49);
  v170 = type metadata accessor for EditorialItemPropertyProvider();
  v50 = OUTLINED_FUNCTION_14(v170);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v149 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v57 = OUTLINED_FUNCTION_22(v56);
  v59 = *(v58 + 64);
  v60 = MEMORY[0x1EEE9AC00](v57);
  v62 = &v149 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v149 - v63;
  v157 = sub_1D5612478();
  v65 = OUTLINED_FUNCTION_4(v157);
  v156 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5();
  v71 = v70 - v69;

  v169 = v3;
  sub_1D560F7E8();
  OUTLINED_FUNCTION_27_5();
  v74 = sub_1D4F15A28(v72, v73);
  v159 = v19;
  v155 = v74;
  v154 = sub_1D5614C68();

  sub_1D560FED8();
  __swift_storeEnumTagSinglePayload(v64, 0, 1, v31);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v31);
  v171 = v71;
  OUTLINED_FUNCTION_215();
  v175 = v5;
  sub_1D560D4D8();
  sub_1D4E50004(v62, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v64, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E69910(v174, v176, &qword_1EC7EEC40, &unk_1D561C070);
  if (!v176[3])
  {
    sub_1D4E50004(v176, &qword_1EC7EEC40, &unk_1D561C070);
    v177 = 0u;
    v178 = 0u;
    v179 = 0;
LABEL_8:
    v78 = v170;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v179 = 0;
    v177 = 0u;
    v178 = 0u;
    goto LABEL_8;
  }

  v78 = v170;
  if (!*(&v178 + 1))
  {
LABEL_9:
    sub_1D4E50004(&v177, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_10;
  }

  sub_1D4E48324(&v177, v180);
  __swift_project_boxed_opaque_existential_1(v180, v181);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v79 = KeyPath;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v78);
    v80 = v149;
    sub_1D4F1583C(v79, v149, type metadata accessor for EditorialItemPropertyProvider);
    OUTLINED_FUNCTION_34_9();
    sub_1D4F1589C(v80, v55, v81);
    v82 = v80 + v78[15];
    v83 = v150;
    sub_1D560D718();
    (*(v172 + 40))(&v55[v78[15]], v83, v173);
    v84 = v151;
    sub_1D5612468();
    (*(v152 + 40))(&v55[v78[16]], v84, v31);
    v85 = sub_1D5612458();
    v87 = v86;
    OUTLINED_FUNCTION_30_5();
    sub_1D4F158FC(v80, v88);
    v89 = &v55[v78[17]];
    v90 = v89[1];

    *v89 = v85;
    v89[1] = v87;
    __swift_destroy_boxed_opaque_existential_1(v180);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v78);
  sub_1D4E50004(v79, &qword_1EC7EB3C0, &qword_1D561E128);
  __swift_destroy_boxed_opaque_existential_1(v180);
LABEL_10:
  v91 = v78[6];
  v92 = sub_1D5610978();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v92);
  v96 = v78[8];
  type metadata accessor for EditorialElementLink();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  v101 = v78[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3C8, &unk_1D5631030);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
  v106 = v78[11];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v92);
  v110 = v78[12];
  sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
  (*(v172 + 16))(&v55[v78[15]], v175, v173);
  v115 = &v55[v78[16]];
  sub_1D5612468();
  v116 = sub_1D5612458();
  KeyPath = v117;
  sub_1D5614A88();
  v118 = OUTLINED_FUNCTION_40_10();
  v119 = OUTLINED_FUNCTION_40_10();
  v120 = OUTLINED_FUNCTION_40_10();
  v121 = OUTLINED_FUNCTION_40_10();
  *v55 = 0;
  *(v55 + 1) = 0;
  *&v55[v78[7]] = 0;
  *&v55[v78[10]] = 0;
  *&v55[v78[13]] = 0;
  if (qword_1EDD54DE8 != -1)
  {
    swift_once();
  }

  v122 = qword_1EDD76B60;
  if (qword_1EDD76B60 >> 62)
  {
    sub_1D560CDE8();

    v148 = sub_1D5615E18();

    v122 = v148;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v55[v78[14]] = v122;
  v123 = &v55[v78[17]];
  v124 = KeyPath;
  *v123 = v116;
  v123[1] = v124;
  *&v55[v78[18]] = v118;
  *&v55[v78[19]] = v119;
  *&v55[v78[20]] = v120;
  *&v55[v78[21]] = v121;
LABEL_15:
  KeyPath = swift_getKeyPath();
  v125 = v161;
  v126 = *(v161 + 104);
  v127 = v158;
  v128 = v159;
  v126(v158, *MEMORY[0x1E6976F98], v159);
  v129 = v160;
  v126(v160, *MEMORY[0x1E6976FA0], v128);
  v130 = v162;
  v126(v162, *MEMORY[0x1E6976FA8], v128);
  __swift_storeEnumTagSinglePayload(v130, 0, 1, v128);
  v131 = v163;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v128);
  v135 = v164;
  sub_1D5614BE8();

  sub_1D4E50004(v131, &qword_1EC7EB3B8, &qword_1D561E120);
  sub_1D4E50004(v130, &qword_1EC7EB3B8, &qword_1D561E120);
  v136 = *(v125 + 8);
  v136(v129, v128);
  v136(v127, v128);
  v137 = v166;
  (*(v166 + 104))(v165, *MEMORY[0x1E6976670], v167);
  v138 = sub_1D4F15A28(&qword_1EDD54DD8, type metadata accessor for EditorialItemPropertyProvider);
  sub_1D5610DB8();

  v139 = *(v137 + 8);
  v140 = OUTLINED_FUNCTION_215();
  v141(v140);
  sub_1D4E50004(v135, &qword_1EC7EAC98, &unk_1D561DA80);
  v181 = v170;
  v182 = v138;
  __swift_allocate_boxed_opaque_existential_0(v180);
  OUTLINED_FUNCTION_34_9();
  sub_1D4F1589C(v55, v142, v143);
  EditorialItem.init(propertyProvider:)(v180, v168);
  swift_unknownObjectRelease();
  sub_1D4E50004(v174, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v172 + 8))(v175, v173);
  (*(v156 + 8))(v171, v157);
  OUTLINED_FUNCTION_30_5();
  sub_1D4F158FC(v55, v144);
  OUTLINED_FUNCTION_46();
}

void EditorialItem.convertToLegacyModelStorageDictionary(for:)()
{
  OUTLINED_FUNCTION_47();
  v87 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v2 = OUTLINED_FUNCTION_22(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v74 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v74 - v9;
  v11 = sub_1D5614118();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v78 = v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v86 = v74 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v74 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v74 - v24;
  OUTLINED_FUNCTION_27_5();
  v80 = sub_1D4F15A28(v26, v27);
  v28 = sub_1D5614BD8();
  v29 = *(v14 + 104);
  v29(v25, *MEMORY[0x1E6976F90], v11);
  v76 = objc_opt_self();
  v30 = [v76 rawValueForKind_];
  OUTLINED_FUNCTION_71_3(v30, MEMORY[0x1E69E6530]);
  swift_isUniquelyReferenced_nonNull_native();
  v88 = v28;
  sub_1D4F137BC();
  v31 = v88;
  v81 = v14;
  v32 = *(v14 + 8);
  v79 = v25;
  v85 = v32;
  v32(v25, v11);
  v33 = *MEMORY[0x1E6976FA8];
  v77 = v29;
  v74[1] = v14 + 104;
  v29(v23, v33, v11);
  if (qword_1EDD54000 != -1)
  {
    swift_once();
  }

  v34 = qword_1EDD768E8;
  v35 = sub_1D5610978();
  v36 = sub_1D4F15A28(&qword_1EDD57650, type metadata accessor for EditorialItem);
  v37 = sub_1D4F15A28(&qword_1EC7EB3D0, type metadata accessor for EditorialItem);
  v83 = v36;
  v84 = v34;
  v82 = v37;
  sub_1D560EC28();
  OUTLINED_FUNCTION_74(v10);
  if (v38)
  {
    sub_1D4E50004(v10, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610938();
    v40 = v39;
    OUTLINED_FUNCTION_24_0(v35);
    (*(v41 + 8))(v10, v35);
    if (v40)
    {
      OUTLINED_FUNCTION_57_8(MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_22_8();
      sub_1D4F137BC();
      v31 = v88;
      v42 = v85;
      v85(v23, v11);
      goto LABEL_12;
    }
  }

  sub_1D4F0E0D0();
  if (v44)
  {
    v45 = v43;
    swift_isUniquelyReferenced_nonNull_native();
    v89 = v31;
    v31 = *(v31 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3D8, &qword_1D561E150);
    sub_1D5615D78();
    OUTLINED_FUNCTION_47_7();
    v48 = v85;
    v85((v46 + v47 * v45), v11);
    sub_1D4E519A8((*(v31 + 56) + 32 * v45), &v90);
    OUTLINED_FUNCTION_67_5();
  }

  else
  {
    v90 = 0u;
    v91 = 0u;
    v48 = v85;
  }

  v48(v23, v11);
  sub_1D4E50004(&v90, &qword_1EC7E9F98, &qword_1D561C420);
  v42 = v48;
LABEL_12:
  v49 = v77;
  v77(v86, *MEMORY[0x1E6976F98], v11);
  sub_1D560EC28();
  OUTLINED_FUNCTION_74(v8);
  if (v38)
  {
    sub_1D4E50004(v8, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610948();
    v51 = v50;
    OUTLINED_FUNCTION_24_0(v35);
    (*(v52 + 8))(v8, v35);
    if (v51)
    {
      OUTLINED_FUNCTION_57_8(MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_22_8();
      v53 = v86;
      sub_1D4F137BC();
      v31 = v88;
      v42(v53, v11);
      v54 = v78;
      v55 = v75;
      goto LABEL_21;
    }
  }

  sub_1D4F0E0D0();
  if (v57)
  {
    v58 = v56;
    swift_isUniquelyReferenced_nonNull_native();
    v89 = v31;
    v59 = *(v31 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3D8, &qword_1D561E150);
    sub_1D5615D78();
    OUTLINED_FUNCTION_47_7();
    v62 = v85;
    v85((v60 + v61 * v58), v11);
    sub_1D4E519A8((*(v31 + 56) + 32 * v58), &v90);
    OUTLINED_FUNCTION_67_5();
    v54 = v78;
  }

  else
  {
    v90 = 0u;
    v91 = 0u;
    v54 = v78;
    v62 = v85;
  }

  v55 = v75;
  v62(v86, v11);
  sub_1D4E50004(&v90, &qword_1EC7E9F98, &qword_1D561C420);
  v42 = v62;
LABEL_21:
  v49(v54, *MEMORY[0x1E6976FA0], v11);
  sub_1D560EC28();
  OUTLINED_FUNCTION_74(v55);
  if (v38)
  {
    sub_1D4E50004(v55, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610968();
    v64 = v63;
    OUTLINED_FUNCTION_24_0(v35);
    (*(v65 + 8))();
    if (v64)
    {
      OUTLINED_FUNCTION_57_8(MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_22_8();
      sub_1D4F137BC();
      v42(v54, v11);
      goto LABEL_30;
    }
  }

  sub_1D4F0E0D0();
  if (v67)
  {
    v68 = v66;
    swift_isUniquelyReferenced_nonNull_native();
    v89 = v31;
    v69 = *(v31 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3D8, &qword_1D561E150);
    v42 = v85;
    sub_1D5615D78();
    OUTLINED_FUNCTION_47_7();
    v42((v70 + v71 * v68), v11);
    sub_1D4E519A8((*(v31 + 56) + 32 * v68), &v90);
    sub_1D5615D98();
  }

  else
  {
    v90 = 0u;
    v91 = 0u;
  }

  v42(v54, v11);
  sub_1D4E50004(&v90, &qword_1EC7E9F98, &qword_1D561C420);
LABEL_30:
  v72 = v79;
  v49(v79, *MEMORY[0x1E6976FB8], v11);
  v73 = [v76 rawValueForSubKind_];
  OUTLINED_FUNCTION_71_3(v73, MEMORY[0x1E69E6530]);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_8();
  sub_1D4F137BC();
  v42(v72, v11);
  OUTLINED_FUNCTION_46();
}

uint64_t EditorialItem.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69767C8];
  v3 = sub_1D5613158();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_1D4F0DBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4F15A28(&qword_1EC7EB428, type metadata accessor for EditorialItem);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D4F0DC98()
{
  sub_1D4F15A28(&qword_1EC7EB420, type metadata accessor for EditorialItem);

  return sub_1D56132F8();
}

void sub_1D4F0DD20()
{
  OUTLINED_FUNCTION_61_12();
  sub_1D5614E28();
  sub_1D5616328();
  OUTLINED_FUNCTION_61();
  sub_1D4F10E88();
}

uint64_t sub_1D4F0DE0C(uint64_t a1, void (*a2)(_BYTE *), uint64_t (*a3)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_61_12();
  a2(v8);
  v5 = sub_1D5616328();

  return a3(a1, v5);
}

unint64_t sub_1D4F0DE84()
{
  OUTLINED_FUNCTION_24_13();
  sub_1D5613838();
  sub_1D4F15A28(&qword_1EC7EB458, MEMORY[0x1E6976BE8]);
  OUTLINED_FUNCTION_72_7();
  v1 = (v0 + *(type metadata accessor for MusicSuggestedSongsEntry() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_1D5614E28();
  sub_1D5616328();
  v4 = OUTLINED_FUNCTION_65_2();

  return sub_1D4F1059C(v4, v5);
}

unint64_t sub_1D4F0DF30()
{
  OUTLINED_FUNCTION_51_8();
  sub_1D5473B34();
  v0 = OUTLINED_FUNCTION_69_4();

  return sub_1D4F10748(v0, v1);
}

unint64_t sub_1D4F0DF68()
{
  OUTLINED_FUNCTION_24_13();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for MusicItemCache.Key() + 20);
  sub_1D560D9A8();
  sub_1D4F15A28(&qword_1EDD53C28, MEMORY[0x1E6974F80]);
  sub_1D5614CB8();
  sub_1D5616328();
  v4 = OUTLINED_FUNCTION_65_2();

  return sub_1D4F10B58(v4, v5);
}

void sub_1D4F0E020()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D560C368();
  sub_1D4F15A28(&qword_1EDD5F560, MEMORY[0x1E69695A8]);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_41_11();
}

void sub_1D4F0E0D0()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D5614118();
  sub_1D4F15A28(&qword_1EDD5D238, MEMORY[0x1E6976FC8]);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_41_11();
}

unint64_t sub_1D4F0E180()
{
  OUTLINED_FUNCTION_61_12();
  sub_1D5614E28();
  v0 = sub_1D5616328();
  return sub_1D4F11DC0(v0);
}

void sub_1D4F0E1E0()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D5614438();
  sub_1D4F15A28(&qword_1EC7EB4D0, MEMORY[0x1E69771F8]);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_41_11();
}

unint64_t sub_1D4F0E290()
{
  OUTLINED_FUNCTION_24_13();
  _s8MusicKit0A7LibraryC0aB8InternalE4hash4intoys6HasherVz_tF_0();
  sub_1D5616328();
  v0 = OUTLINED_FUNCTION_65_2();

  return sub_1D4F10F30(v0, v1);
}

void sub_1D4F0E2E8()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D560C0A8();
  sub_1D4F15A28(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_41_11();
}

unint64_t sub_1D4F0E41C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1D56162C8();

  return sub_1D4F11694(a1, v4);
}

void sub_1D4F0E460()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D56146E8();
  sub_1D4F15A28(&qword_1EDD52B80, MEMORY[0x1E6977290]);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_41_11();
}

unint64_t sub_1D4F0E510()
{
  OUTLINED_FUNCTION_61_12();
  sub_1D5614E28();
  v0 = sub_1D5616328();
  return sub_1D4F11DC0(v0);
}

unint64_t sub_1D4F0E570()
{
  OUTLINED_FUNCTION_51_8();
  sub_1D5474468();
  v0 = OUTLINED_FUNCTION_69_4();

  return sub_1D4F116F4(v0, v1);
}

unint64_t sub_1D4F0E5A8()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D5615D68();
  v1 = sub_1D5614CA8();

  return sub_1D4F11C3C(v0, v1);
}

void sub_1D4F0E600()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D5613598();
  sub_1D4F15A28(&qword_1EC7EB490, MEMORY[0x1E6976B10]);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_41_11();
}

unint64_t sub_1D4F0E6B0()
{
  OUTLINED_FUNCTION_24_13();
  sub_1D560C368();
  sub_1D4F15A28(&qword_1EDD5F560, MEMORY[0x1E69695A8]);
  OUTLINED_FUNCTION_72_7();
  v1 = *(v0 + *(type metadata accessor for MusicRestrictionsObserver.ObservationToken() + 20));
  sub_1D56162F8();
  sub_1D5616328();
  v2 = OUTLINED_FUNCTION_65_2();

  return sub_1D4F11DEC(v2, v3);
}

unint64_t sub_1D4F0E758(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1D5614D68();
  sub_1D56162D8();
  sub_1D5614E28();
  v4 = sub_1D5616328();

  return sub_1D4F11F90(a1, v4);
}

unint64_t sub_1D4F0E870()
{
  OUTLINED_FUNCTION_51_8();
  sub_1D5473B1C();
  v0 = OUTLINED_FUNCTION_69_4();

  return sub_1D4F126AC(v0, v1);
}

unint64_t sub_1D4F0E8A8(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1D5473B4C();

  return sub_1D4F12C9C(a1 & 1, v4);
}

unint64_t sub_1D4F0E8EC()
{
  OUTLINED_FUNCTION_24_13();
  sub_1D4F0B2F8(v4, v0);
  sub_1D5616328();
  v1 = OUTLINED_FUNCTION_65_2();

  return sub_1D4F12DE4(v1, v2);
}

uint64_t sub_1D4F0E970(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_61_12();
  a2(v8, a1);
  v5 = sub_1D5616328();

  return a3(a1, v5);
}

unint64_t sub_1D4F0E9E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D5615838();

  return sub_1D4F130DC(a1, v5);
}

unint64_t sub_1D4F0EA2C()
{
  OUTLINED_FUNCTION_51_8();
  sub_1D547407C();
  v0 = OUTLINED_FUNCTION_69_4();

  return sub_1D4F1319C(v0, v1);
}

unint64_t sub_1D4F0EA64(uint64_t *a1, uint64_t a2)
{
  v5 = _s13PersistedDateVMa();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB478, &unk_1D5623530);
  v13 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v30 - v14;
  v15 = _s10DescriptorVMa();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = -1 << *(v2 + 32);
  v21 = a2 & ~v20;
  if (((*(v2 + 64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return v21;
  }

  v32 = v8;
  v33 = v12;
  v36 = v5;
  v22 = ~v20;
  v23 = *a1;
  v24 = a1[1];
  v25 = *(v17 + 72);
  while (1)
  {
    sub_1D4F1589C(*(v2 + 48) + v25 * v21, v19, _s10DescriptorVMa);
    v26 = *v19 == v23 && v19[1] == v24;
    if (!v26 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_20;
    }

    v27 = v15[5];
    if ((sub_1D560C2E8() & 1) == 0)
    {
      goto LABEL_20;
    }

    if (*(v19 + v15[6]) != *(a1 + v15[6]))
    {
      goto LABEL_20;
    }

    if (*(v19 + v15[7]) != *(a1 + v15[7]))
    {
      goto LABEL_20;
    }

    if (*(v19 + v15[8]) != *(a1 + v15[8]))
    {
      goto LABEL_20;
    }

    v28 = v15[9];
    if ((sub_1D560C2E8() & 1) == 0)
    {
      goto LABEL_20;
    }

    v31 = v15[10];
    v35 = *(v34 + 48);
    sub_1D4E69910(v31 + v19, v37, &qword_1EC7EB470, &qword_1D561F3D0);
    sub_1D4E69910(v31 + a1, v37 + v35, &qword_1EC7EB470, &qword_1D561F3D0);
    if (__swift_getEnumTagSinglePayload(v37, 1, v36) == 1)
    {
      break;
    }

    sub_1D4E69910(v37, v33, &qword_1EC7EB470, &qword_1D561F3D0);
    if (__swift_getEnumTagSinglePayload(v37 + v35, 1, v36) == 1)
    {
      sub_1D4F158FC(v33, _s13PersistedDateVMa);
      goto LABEL_18;
    }

    sub_1D4F1583C(v37 + v35, v32, _s13PersistedDateVMa);
    LODWORD(v35) = sub_1D560C2E8();
    v31 = _s13PersistedDateVMa;
    sub_1D4F158FC(v32, _s13PersistedDateVMa);
    sub_1D4F158FC(v33, v31);
    sub_1D4E50004(v37, &qword_1EC7EB470, &qword_1D561F3D0);
    if (v35)
    {
      goto LABEL_22;
    }

LABEL_20:
    sub_1D4F158FC(v19, _s10DescriptorVMa);
    v21 = (v21 + 1) & v22;
    if (((*(v2 + 64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return v21;
    }
  }

  if (__swift_getEnumTagSinglePayload(v37 + v35, 1, v36) != 1)
  {
LABEL_18:
    sub_1D4E50004(v37, &qword_1EC7EB478, &unk_1D5623530);
    goto LABEL_20;
  }

  sub_1D4E50004(v37, &qword_1EC7EB470, &qword_1D561F3D0);
LABEL_22:
  sub_1D4F158FC(v19, _s10DescriptorVMa);
  return v21;
}

unint64_t sub_1D4F0EEF8(char *a1, uint64_t a2)
{
  v5 = sub_1D560D9A8();
  v122 = *(v5 - 8);
  v6 = *(v122 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v92 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v97 = &v92 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v92 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v92 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v99 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v100 = &v92 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v105 = &v92 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v104 = &v92 - v27;
  v28 = sub_1D5610088();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v110 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v111 = &v92 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v95 = &v92 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v103 = &v92 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v94 = &v92 - v39;
  v119 = type metadata accessor for LooselyComparableTypedIdentifier();
  v40 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v43 = &v92 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v2;
  v44 = -1 << *(v2 + 32);
  result = a2 & ~v44;
  v108 = v2 + 64;
  if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
    return result;
  }

  v92 = v9;
  v107 = ~v44;
  v46 = *a1;
  v120 = *(a1 + 1);
  v121 = a1;
  v116 = (v29 + 32);
  v117 = (v29 + 8);
  v113 = (v122 + 16);
  v47 = (v122 + 8);
  v109 = *(v41 + 72);
  v102 = v12;
  v48 = v119;
  v98 = v17;
  v106 = (v122 + 8);
  v101 = v46;
  v93 = &v92 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v49 = *(v112 + 48);
    v122 = result;
    sub_1D4F1589C(v49 + v109 * result, v43, type metadata accessor for LooselyComparableTypedIdentifier);
    v50 = *v43 == v46 && *(v43 + 1) == v120;
    if (!v50 && (sub_1D5616168() & 1) == 0)
    {
      sub_1D4F158FC(v43, type metadata accessor for LooselyComparableTypedIdentifier);
      goto LABEL_45;
    }

    v115 = *(v48 + 24);
    v51 = v104;
    sub_1D4E69910(&v43[v115], v104, &qword_1EC7EA358, &unk_1D561DF50);
    if (__swift_getEnumTagSinglePayload(v51, 1, v28) == 1)
    {
      sub_1D4E50004(v51, &qword_1EC7EA358, &unk_1D561DF50);
      v52 = &v43[*(v48 + 20)];
      v53 = v96;
      (*v113)(v96, v52, v5);
      sub_1D560D948();
      sub_1D4F15A28(&qword_1EDD53C20, MEMORY[0x1E6974F80]);
      v54 = sub_1D5614D18();
      v55 = *v47;
      (*v47)(v17, v5);
      if (v54 & 1) != 0 || (sub_1D560D998(), v56 = sub_1D5614D18(), v55(v17, v5), (v56))
      {
        v55(v53, v5);
        v118 = 1;
      }

      else
      {
        sub_1D560D918();
        v118 = sub_1D5614D18();
        v55(v17, v5);
        v55(v53, v5);
      }

      v60 = v121;
      v43 = v93;
    }

    else
    {
      v57 = v94;
      (*v116)(v94, v51, v28);
      v58 = v103;
      sub_1D560FE78();
      sub_1D4F15A28(&qword_1EDD53350, MEMORY[0x1E6975BC8]);
      v118 = sub_1D5614D18();
      v59 = *v117;
      v48 = v119;
      (*v117)(v58, v28);
      v59(v57, v28);
      v60 = v121;
    }

    v114 = *(v48 + 24);
    v61 = v105;
    sub_1D4E69910(&v60[v114], v105, &qword_1EC7EA358, &unk_1D561DF50);
    if (__swift_getEnumTagSinglePayload(v61, 1, v28) == 1)
    {
      sub_1D4E50004(v61, &qword_1EC7EA358, &unk_1D561DF50);
      v62 = v97;
      (*v113)(v97, &v60[*(v48 + 20)], v5);
      sub_1D560D948();
      sub_1D4F15A28(&qword_1EDD53C20, MEMORY[0x1E6974F80]);
      v63 = sub_1D5614D18();
      v64 = *v47;
      (*v47)(v17, v5);
      if (v63 & 1) != 0 || (sub_1D560D998(), v65 = sub_1D5614D18(), v64(v17, v5), (v65))
      {
        v64(v62, v5);
        v66 = 1;
      }

      else
      {
        sub_1D560D918();
        v66 = sub_1D5614D18();
        v64(v17, v5);
        v64(v62, v5);
      }
    }

    else
    {
      v67 = v95;
      (*v116)(v95, v61, v28);
      v68 = v103;
      sub_1D560FE78();
      sub_1D4F15A28(&qword_1EDD53350, MEMORY[0x1E6975BC8]);
      v66 = sub_1D5614D18();
      v69 = *v117;
      (*v117)(v68, v28);
      v69(v67, v28);
      v47 = v106;
    }

    v70 = v102;
    if (v118)
    {
      v71 = v119;
      if ((v66 & 1) == 0)
      {
        (*v113)(v102, &v121[*(v119 + 20)], v5);
        sub_1D560D948();
        sub_1D4F15A28(&qword_1EDD53C20, MEMORY[0x1E6974F80]);
        v72 = v70;
        v73 = sub_1D5614D18();
        v74 = v47;
        v75 = *v47;
        v75(v17, v5);
        if (v73 & 1) != 0 || (sub_1D560D998(), v76 = sub_1D5614D18(), v75(v17, v5), (v76))
        {
          v75(v72, v5);
          v71 = v119;
        }

        else
        {
          sub_1D560D918();
          v89 = sub_1D5614D18();
          v75(v17, v5);
          v75(v72, v5);
          v47 = v74;
          v71 = v119;
          if ((v89 & 1) == 0)
          {
            goto LABEL_43;
          }
        }
      }
    }

    else
    {
      v71 = v119;
      if ((v66 & 1) == 0)
      {
        goto LABEL_43;
      }

      v77 = v119;
      v78 = v92;
      (*v113)(v92, &v43[*(v119 + 20)], v5);
      sub_1D560D948();
      sub_1D4F15A28(&qword_1EDD53C20, MEMORY[0x1E6974F80]);
      v79 = sub_1D5614D18();
      v80 = v47;
      v81 = *v47;
      v81(v17, v5);
      if (v79 & 1) != 0 || (sub_1D560D998(), v82 = sub_1D5614D18(), v81(v17, v5), (v82))
      {
        v81(v78, v5);
        v71 = v77;
      }

      else
      {
        sub_1D560D918();
        v90 = sub_1D5614D18();
        v81(v17, v5);
        v81(v78, v5);
        v47 = v80;
        v71 = v77;
        if ((v90 & 1) == 0)
        {
LABEL_43:
          v48 = v71;
          v91 = *(v71 + 20);
          v87 = sub_1D560D8C8();
          goto LABEL_44;
        }
      }
    }

    v48 = v71;
    v83 = v100;
    sub_1D4E69910(&v43[v115], v100, &qword_1EC7EA358, &unk_1D561DF50);
    if (__swift_getEnumTagSinglePayload(v83, 1, v28) == 1)
    {
      goto LABEL_48;
    }

    v84 = *v116;
    v85 = v111;
    (*v116)(v111, v83, v28);
    v83 = v99;
    sub_1D4E69910(&v121[v114], v99, &qword_1EC7EA358, &unk_1D561DF50);
    if (__swift_getEnumTagSinglePayload(v83, 1, v28) == 1)
    {
      break;
    }

    v84(v110, v83, v28);
    sub_1D4F15A28(&qword_1EDD53348, MEMORY[0x1E6975BC8]);
    sub_1D56150C8();
    sub_1D56150C8();
    if (v125 == v123 && v126 == v124)
    {
      v87 = 1;
    }

    else
    {
      v87 = sub_1D5616168();
    }

    v88 = *v117;
    (*v117)(v110, v28);
    v88(v111, v28);

    v17 = v98;
    v47 = v106;
LABEL_44:
    sub_1D4F158FC(v43, type metadata accessor for LooselyComparableTypedIdentifier);
    v46 = v101;
    if (v87)
    {
      return v122;
    }

LABEL_45:
    result = (v122 + 1) & v107;
    if (((*(v108 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      return result;
    }
  }

  (*v117)(v85, v28);
LABEL_48:
  sub_1D4E50004(v83, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4F158FC(v43, type metadata accessor for LooselyComparableTypedIdentifier);
  return v122;
}

unint64_t sub_1D4F0FE08(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v64 = sub_1D5614408();
  v4 = *(v64 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D5614898();
  v7 = *(v63 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D5613AF8();
  v66 = *(v62 - 8);
  v10 = *(v66 + 8);
  MEMORY[0x1EEE9AC00](v62);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicSuggestedPivotContainer();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v67 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB410, &qword_1D5643790);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v52 - v23;
  v25 = type metadata accessor for MusicSuggestedPivotEntry();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v2 + 64;
  v71 = v2;
  v30 = -1 << *(v2 + 32);
  v31 = a2 & ~v30;
  if ((*(v2 + 64 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
  {
    v68 = ~v30;
    v60 = (v4 + 8);
    v61 = v20;
    v69 = *(v27 + 72);
    v54 = (v7 + 32);
    v55 = (v4 + 32);
    v58 = (v66 + 8);
    v59 = (v7 + 8);
    v52 = (v66 + 32);
    v65 = v21;
    v66 = v18;
    do
    {
      sub_1D4F1589C(*(v71 + 48) + v69 * v31, v29, type metadata accessor for MusicSuggestedPivotEntry);
      v32 = *(v21 + 48);
      sub_1D4F1589C(v29, v24, type metadata accessor for MusicSuggestedPivotContainer);
      sub_1D4F1589C(v72, &v24[v32], type metadata accessor for MusicSuggestedPivotContainer);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D4F1589C(v24, v18, type metadata accessor for MusicSuggestedPivotContainer);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_1D4F158FC(v29, type metadata accessor for MusicSuggestedPivotEntry);
            (*v59)(v18, v63);
            goto LABEL_15;
          }

          v34 = v56;
          v35 = v63;
          (*v54)(v56, &v24[v32], v63);
          v36 = _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
          v37 = *v59;
          v38 = v34;
          v18 = v66;
          (*v59)(v38, v35);
          sub_1D4F158FC(v29, type metadata accessor for MusicSuggestedPivotEntry);
          v39 = v18;
        }

        else
        {
          sub_1D4F1589C(v24, v67, type metadata accessor for MusicSuggestedPivotContainer);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            sub_1D4F158FC(v29, type metadata accessor for MusicSuggestedPivotEntry);
            (*v60)(v67, v64);
            goto LABEL_15;
          }

          v41 = v67;
          v42 = v12;
          v43 = v57;
          v35 = v64;
          (*v55)(v57, &v24[v32], v64);
          v36 = sub_1D5614368();
          v37 = *v60;
          v44 = v43;
          v12 = v42;
          v18 = v66;
          (*v60)(v44, v35);
          sub_1D4F158FC(v29, type metadata accessor for MusicSuggestedPivotEntry);
          v39 = v41;
        }

        v37(v39, v35);
        if (v36)
        {
          sub_1D4F158FC(v24, type metadata accessor for MusicSuggestedPivotContainer);
          return v31;
        }

        sub_1D4F158FC(v24, type metadata accessor for MusicSuggestedPivotContainer);
        v21 = v65;
      }

      else
      {
        v40 = v61;
        sub_1D4F1589C(v24, v61, type metadata accessor for MusicSuggestedPivotContainer);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1D4F158FC(v29, type metadata accessor for MusicSuggestedPivotEntry);
          (*v58)(v40, v62);
LABEL_15:
          sub_1D4E50004(v24, &qword_1EC7EB410, &qword_1D5643790);
          goto LABEL_16;
        }

        v45 = v53;
        v46 = v62;
        (*v52)(v53, &v24[v32], v62);
        v47 = sub_1D5613A68();
        v48 = *v58;
        v49 = v45;
        v18 = v66;
        (*v58)(v49, v46);
        sub_1D4F158FC(v29, type metadata accessor for MusicSuggestedPivotEntry);
        v50 = v46;
        v21 = v65;
        v48(v40, v50);
        sub_1D4F158FC(v24, type metadata accessor for MusicSuggestedPivotContainer);
        if (v47)
        {
          return v31;
        }
      }

LABEL_16:
      v31 = (v31 + 1) & v68;
    }

    while (((*(v70 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
  }

  return v31;
}

unint64_t sub_1D4F1059C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicSuggestedSongsEntry();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    while (1)
    {
      sub_1D4F1589C(*(v2 + 48) + v13 * v11, v9, type metadata accessor for MusicSuggestedSongsEntry);
      if (sub_1D56137A8())
      {
        v14 = *(v5 + 20);
        v15 = *&v9[v14];
        v16 = *&v9[v14 + 8];
        v17 = (a1 + v14);
        v18 = v15 == *v17 && v16 == v17[1];
        if (v18 || (sub_1D5616168() & 1) != 0)
        {
          break;
        }
      }

      sub_1D4F158FC(v9, type metadata accessor for MusicSuggestedSongsEntry);
      v11 = (v11 + 1) & v12;
      if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return v11;
      }
    }

    sub_1D4F158FC(v9, type metadata accessor for MusicSuggestedSongsEntry);
  }

  return v11;
}

unint64_t sub_1D4F10748(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000001ELL;
      v8 = "dEntityChangeRequest";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000025;
          v8 = "MPModelPropertyTVSeasonArtwork";
          break;
        case 2:
          v7 = 0xD000000000000024;
          v8 = "VSeasonDownloadedDate";
          break;
        case 3:
          v7 = 0xD000000000000026;
          v8 = "VSeasonEpisodesCount";
          break;
        case 4:
          v7 = 0xD000000000000029;
          v8 = "VSeasonHasCleanContent";
          break;
        case 5:
          v7 = 0xD000000000000023;
          v8 = "VSeasonHasExplicitContent";
          break;
        case 6:
          v7 = 0xD000000000000029;
          v8 = "VSeasonLibraryAdded";
          break;
        case 7:
          v7 = 0xD000000000000027;
          v8 = "VSeasonLibraryAddEligible";
          break;
        case 8:
          v7 = 0xD00000000000001DLL;
          v8 = "VSeasonLibraryAddedDate";
          break;
        case 9:
          v7 = 0xD00000000000001FLL;
          v8 = "MPModelPropertyTVSeasonNumber";
          break;
        case 0xA:
          v7 = 0xD000000000000026;
          v8 = "MPModelPropertyTVSeasonSortType";
          break;
        case 0xB:
          v7 = 0xD00000000000001BLL;
          v8 = "VSeasonDescriptionText";
          break;
        case 0xC:
          v7 = 0xD000000000000030;
          v8 = "MPModelPropertyTVSeasonYear";
          break;
        case 0xD:
          v7 = 0xD00000000000001FLL;
          v8 = "sentativeEpisode";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000001ELL;
      v11 = "dEntityChangeRequest";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000025;
          v11 = "MPModelPropertyTVSeasonArtwork";
          break;
        case 2:
          v10 = 0xD000000000000024;
          v11 = "VSeasonDownloadedDate";
          break;
        case 3:
          v10 = 0xD000000000000026;
          v11 = "VSeasonEpisodesCount";
          break;
        case 4:
          v10 = 0xD000000000000029;
          v11 = "VSeasonHasCleanContent";
          break;
        case 5:
          v10 = 0xD000000000000023;
          v11 = "VSeasonHasExplicitContent";
          break;
        case 6:
          v10 = 0xD000000000000029;
          v11 = "VSeasonLibraryAdded";
          break;
        case 7:
          v10 = 0xD000000000000027;
          v11 = "VSeasonLibraryAddEligible";
          break;
        case 8:
          v10 = 0xD00000000000001DLL;
          v11 = "VSeasonLibraryAddedDate";
          break;
        case 9:
          v10 = 0xD00000000000001FLL;
          v11 = "MPModelPropertyTVSeasonNumber";
          break;
        case 10:
          v10 = 0xD000000000000026;
          v11 = "MPModelPropertyTVSeasonSortType";
          break;
        case 11:
          v10 = 0xD00000000000001BLL;
          v11 = "VSeasonDescriptionText";
          break;
        case 12:
          v10 = 0xD000000000000030;
          v11 = "MPModelPropertyTVSeasonYear";
          break;
        case 13:
          v10 = 0xD00000000000001FLL;
          v11 = "sentativeEpisode";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D4F10B58(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a1;
    v14 = a1[1];
    v15 = *(v7 + 72);
    while (1)
    {
      sub_1D4F1589C(*(v2 + 48) + v15 * v11, v9, type metadata accessor for MusicItemCache.Key);
      v16 = *v9 == v13 && v9[1] == v14;
      if (v16 || (sub_1D5616168() & 1) != 0)
      {
        v17 = *(v5 + 20);
        if (sub_1D560D8C8())
        {
          break;
        }
      }

      sub_1D4F158FC(v9, type metadata accessor for MusicItemCache.Key);
      v11 = (v11 + 1) & v12;
      if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return v11;
      }
    }

    sub_1D4F158FC(v9, type metadata accessor for MusicItemCache.Key);
  }

  return v11;
}

void sub_1D4F10D0C()
{
  OUTLINED_FUNCTION_47();
  v22 = v1;
  v23 = v2;
  v21 = v3;
  v5 = v4;
  v19 = v6;
  v8 = v7(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v19 - v14;
  v24 = v0 + 64;
  v20 = v0;
  v16 = ~(-1 << *(v0 + 32));
  for (i = v5 & v16; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v11 + 16))(v15, *(v20 + 48) + *(v11 + 72) * i, v8);
    sub_1D4F15A28(v21, v22);
    v18 = sub_1D5614D18();
    (*(v11 + 8))(v15, v8);
    if (v18)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F10E88()
{
  OUTLINED_FUNCTION_191();
  v2 = v1;
  v4 = v3;
  v5 = ~(-1 << *(v0 + 32));
  for (i = v6 & v5; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v8 = (*(v0 + 48) + 16 * i);
    if (*v8 == v4 && v8[1] == v2)
    {
      break;
    }

    OUTLINED_FUNCTION_64_5();
    if (sub_1D5616168())
    {
      break;
    }
  }

  OUTLINED_FUNCTION_190();
}

unint64_t sub_1D4F10F30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);

    v8 = sub_1D560F0B8();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D4F10FE8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD000000000000022;
      v8 = "supports_smart_transitions";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000021;
          v8 = "ocialPersonArtwork";
          break;
        case 2:
          v7 = 0xD000000000000030;
          v8 = "ocialPersonHandle";
          break;
        case 3:
          v7 = 0xD000000000000024;
          v8 = "ghtweightProfile";
          break;
        case 4:
          v7 = 0xD000000000000025;
          v8 = "ocialPersonIsPrivate";
          break;
        case 5:
          v7 = 0xD000000000000019;
          v8 = "ocialPersonIsVerified";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD000000000000022;
      v11 = "supports_smart_transitions";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000021;
          v11 = "ocialPersonArtwork";
          break;
        case 2:
          v10 = 0xD000000000000030;
          v11 = "ocialPersonHandle";
          break;
        case 3:
          v10 = 0xD000000000000024;
          v11 = "ghtweightProfile";
          break;
        case 4:
          v10 = 0xD000000000000025;
          v11 = "ocialPersonIsPrivate";
          break;
        case 5:
          v10 = 0xD000000000000019;
          v11 = "ocialPersonIsVerified";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D4F1120C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = "MPModelPropertyPersonName";
      v8 = 0xD00000000000001CLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000025;
          v7 = "MPModelPropertyTVShowArtwork";
          break;
        case 2:
          v8 = 0xD000000000000020;
          v7 = "VShowEditorialArtwork";
          break;
        case 3:
          v8 = 0xD000000000000021;
          v7 = "VShowEditorNotes";
          break;
        case 4:
          v8 = 0xD000000000000025;
          v7 = "VShowEpisodeCount";
          break;
        case 5:
          v8 = 0xD00000000000001FLL;
          v7 = "VShowShortEditorNotes";
          break;
        case 6:
          v7 = "MPModelPropertyTVShowShortTitle";
          break;
        case 7:
          v8 = 0xD00000000000001ALL;
          v7 = "MPModelPropertyTVShowTagline";
          break;
        default:
          break;
      }

      v9 = v7 | 0x8000000000000000;
      v10 = 0xD00000000000001CLL;
      v11 = "MPModelPropertyPersonName";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000025;
          v11 = "MPModelPropertyTVShowArtwork";
          break;
        case 2:
          v10 = 0xD000000000000020;
          v11 = "VShowEditorialArtwork";
          break;
        case 3:
          v10 = 0xD000000000000021;
          v11 = "VShowEditorNotes";
          break;
        case 4:
          v10 = 0xD000000000000025;
          v11 = "VShowEpisodeCount";
          break;
        case 5:
          v10 = 0xD00000000000001FLL;
          v11 = "VShowShortEditorNotes";
          break;
        case 6:
          v11 = "MPModelPropertyTVShowShortTitle";
          break;
        case 7:
          v10 = 0xD00000000000001ALL;
          v11 = "MPModelPropertyTVShowTagline";
          break;
        default:
          break;
      }

      if (v8 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D4F11470(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000002FLL;
      v8 = "previewed";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000029;
          v8 = "laylistCollaborationSharingMode";
          break;
        case 2:
          v7 = 0xD000000000000026;
          v8 = "laylistCollaboratorStatus";
          break;
        case 3:
          v7 = 0xD000000000000031;
          v8 = "laylistIsCollaborative";
          break;
        case 4:
          v7 = 0xD00000000000003FLL;
          v8 = "tionInvitationURL";
          break;
        case 5:
          v7 = 0xD000000000000022;
          v8 = "tionInvitationURLExpirationDate";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000002FLL;
      v11 = "previewed";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000029;
          v11 = "laylistCollaborationSharingMode";
          break;
        case 2:
          v10 = 0xD000000000000026;
          v11 = "laylistCollaboratorStatus";
          break;
        case 3:
          v10 = 0xD000000000000031;
          v11 = "laylistIsCollaborative";
          break;
        case 4:
          v10 = 0xD00000000000003FLL;
          v11 = "tionInvitationURL";
          break;
        case 5:
          v10 = 0xD000000000000022;
          v11 = "tionInvitationURLExpirationDate";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D4F11694(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1D4F116F4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000001BLL;
      v8 = "library-playlists";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000022;
          v8 = "MPModelPropertyMovieArtwork";
          break;
        case 2:
          v7 = 0xD00000000000001CLL;
          v8 = "ovieDownloadedDate";
          break;
        case 3:
          v7 = 0xD000000000000022;
          v8 = "MPModelPropertyMovieDuration";
          break;
        case 4:
          v7 = 0xD000000000000026;
          v8 = "ovieExplicitRating";
          break;
        case 5:
          v7 = 0xD000000000000020;
          v8 = "ovieHasCloudSyncSource";
          break;
        case 6:
          v7 = 0xD000000000000026;
          v8 = "ovieLibraryAdded";
          break;
        case 7:
          v7 = 0xD000000000000028;
          v8 = "ovieLibraryAddEligible";
          break;
        case 8:
          v7 = 0xD00000000000002ALL;
          v8 = "ovieKeepLocalEnableState";
          break;
        case 9:
          v7 = 0xD000000000000030;
          v8 = "ovieKeepLocalManagedStatus";
          break;
        case 0xA:
          v7 = 0xD00000000000002ALL;
          v8 = "agedStatusReason";
          break;
        case 0xB:
          v7 = 0xD000000000000024;
          v8 = "ovieLastDevicePlaybackDate";
          break;
        case 0xC:
          v7 = 0xD000000000000022;
          v8 = "ovieLibraryAddedDate";
          break;
        case 0xD:
          v7 = 0xD00000000000001FLL;
          v8 = "ovieInfoDictionary";
          break;
        case 0xE:
          v7 = 0xD000000000000023;
          v8 = "MPModelPropertyMovieReleaseDate";
          break;
        case 0xF:
          v7 = 0xD00000000000001BLL;
          v8 = "ovieDescriptionText";
          break;
        case 0x10:
          v7 = 0xD000000000000019;
          v8 = "MPModelPropertyMovieTagline";
          break;
        case 0x11:
          v7 = 0xD000000000000022;
          v8 = "MPModelPropertyMovieTitle";
          break;
        case 0x12:
          v7 = 0xD00000000000001DLL;
          v8 = "hipMovieStoreAsset";
          break;
        case 0x13:
          v7 = 0xD000000000000026;
          v8 = "MPModelRelationshipMovieClips";
          break;
        case 0x14:
          v7 = 0xD000000000000028;
          v8 = "hipMovieLocalFileAsset";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000001BLL;
      v11 = "library-playlists";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000022;
          v11 = "MPModelPropertyMovieArtwork";
          break;
        case 2:
          v10 = 0xD00000000000001CLL;
          v11 = "ovieDownloadedDate";
          break;
        case 3:
          v10 = 0xD000000000000022;
          v11 = "MPModelPropertyMovieDuration";
          break;
        case 4:
          v10 = 0xD000000000000026;
          v11 = "ovieExplicitRating";
          break;
        case 5:
          v10 = 0xD000000000000020;
          v11 = "ovieHasCloudSyncSource";
          break;
        case 6:
          v10 = 0xD000000000000026;
          v11 = "ovieLibraryAdded";
          break;
        case 7:
          v10 = 0xD000000000000028;
          v11 = "ovieLibraryAddEligible";
          break;
        case 8:
          v10 = 0xD00000000000002ALL;
          v11 = "ovieKeepLocalEnableState";
          break;
        case 9:
          v10 = 0xD000000000000030;
          v11 = "ovieKeepLocalManagedStatus";
          break;
        case 10:
          v10 = 0xD00000000000002ALL;
          v11 = "agedStatusReason";
          break;
        case 11:
          v10 = 0xD000000000000024;
          v11 = "ovieLastDevicePlaybackDate";
          break;
        case 12:
          v10 = 0xD000000000000022;
          v11 = "ovieLibraryAddedDate";
          break;
        case 13:
          v10 = 0xD00000000000001FLL;
          v11 = "ovieInfoDictionary";
          break;
        case 14:
          v10 = 0xD000000000000023;
          v11 = "MPModelPropertyMovieReleaseDate";
          break;
        case 15:
          v10 = 0xD00000000000001BLL;
          v11 = "ovieDescriptionText";
          break;
        case 16:
          v10 = 0xD000000000000019;
          v11 = "MPModelPropertyMovieTagline";
          break;
        case 17:
          v10 = 0xD000000000000022;
          v11 = "MPModelPropertyMovieTitle";
          break;
        case 18:
          v10 = 0xD00000000000001DLL;
          v11 = "hipMovieStoreAsset";
          break;
        case 19:
          v10 = 0xD000000000000026;
          v11 = "MPModelRelationshipMovieClips";
          break;
        case 20:
          v10 = 0xD000000000000028;
          v11 = "hipMovieLocalFileAsset";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D4F11C3C(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v4 = sub_1D5615D68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = v2 + 64;
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v5 + 16))(v8, *(v14 + 48) + *(v5 + 72) * i, v4);
    v11 = sub_1D5614D18();
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D4F11DC0(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_1D4F11DEC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicRestrictionsObserver.ObservationToken();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_1D4F1589C(*(v2 + 48) + v13 * v11, v9, type metadata accessor for MusicRestrictionsObserver.ObservationToken);
      if (sub_1D560C348())
      {
        v14 = v9[*(v5 + 20)];
        sub_1D4F158FC(v9, type metadata accessor for MusicRestrictionsObserver.ObservationToken);
        if (v14 == *(a1 + *(v5 + 20)))
        {
          return v11;
        }
      }

      else
      {
        sub_1D4F158FC(v9, type metadata accessor for MusicRestrictionsObserver.ObservationToken);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1D4F11F90(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_1D5614D68();
    v8 = v7;
    if (v6 == sub_1D5614D68() && v8 == v9)
    {

      return i;
    }

    v11 = sub_1D5616168();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1D4F12088(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = "AL";
      v8 = 0xD00000000000002ELL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000021;
          v7 = "laylistAuthorIsPendingApproval";
          break;
        case 2:
          v8 = 0xD000000000000029;
          v7 = "laylistAuthorRole";
          break;
        case 3:
          v7 = "hipPlaylistAuthorPlaylist";
          break;
        default:
          break;
      }

      v9 = v7 | 0x8000000000000000;
      v10 = 0xD00000000000002ELL;
      v11 = "AL";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000021;
          v11 = "laylistAuthorIsPendingApproval";
          break;
        case 2:
          v10 = 0xD000000000000029;
          v11 = "laylistAuthorRole";
          break;
        case 3:
          v11 = "hipPlaylistAuthorPlaylist";
          break;
        default:
          break;
      }

      if (v8 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D4F12250(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = "sdVideoWithPlusAudio";
      v8 = 0xD000000000000028;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = "laylistEntryReactionDate";
          break;
        case 2:
          v8 = 0xD000000000000035;
          v7 = "laylistEntryReactionText";
          break;
        case 3:
          v8 = 0xD000000000000035;
          v7 = "ReactionPlaylistEntry";
          break;
        default:
          break;
      }

      v9 = v7 | 0x8000000000000000;
      v10 = 0xD000000000000028;
      v11 = "sdVideoWithPlusAudio";
      switch(a1)
      {
        case 1:
          v11 = "laylistEntryReactionDate";
          break;
        case 2:
          v10 = 0xD000000000000035;
          v11 = "laylistEntryReactionText";
          break;
        case 3:
          v10 = 0xD000000000000035;
          v11 = "ReactionPlaylistEntry";
          break;
        default:
          break;
      }

      if (v8 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D4F12434(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD000000000000026;
      v8 = "viewers-also-bought";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000021;
          v8 = "ibraryPinDefaultAction";
          break;
        case 2:
          v7 = 0xD000000000000023;
          v8 = "ibraryPinPosition";
          break;
        case 3:
          v7 = 0xD000000000000025;
          v8 = "ibraryPinEntityType";
          break;
        case 4:
          v7 = 0xD000000000000022;
          v8 = "ibraryPinPositionUUID";
          break;
        case 5:
          v7 = 0xD000000000000023;
          v8 = "hipLibraryPinAlbum";
          break;
        case 6:
          v7 = 0xD000000000000025;
          v8 = "hipLibraryPinArtist";
          break;
        case 7:
          v7 = 0xD000000000000021;
          v8 = "hipLibraryPinPlaylist";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD000000000000026;
      v11 = "viewers-also-bought";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000021;
          v11 = "ibraryPinDefaultAction";
          break;
        case 2:
          v10 = 0xD000000000000023;
          v11 = "ibraryPinPosition";
          break;
        case 3:
          v10 = 0xD000000000000025;
          v11 = "ibraryPinEntityType";
          break;
        case 4:
          v10 = 0xD000000000000022;
          v11 = "ibraryPinPositionUUID";
          break;
        case 5:
          v10 = 0xD000000000000023;
          v11 = "hipLibraryPinAlbum";
          break;
        case 6:
          v10 = 0xD000000000000025;
          v11 = "hipLibraryPinArtist";
          break;
        case 7:
          v10 = 0xD000000000000021;
          v11 = "hipLibraryPinPlaylist";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D4F126AC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000001FLL;
      v8 = "hipLibraryPinSong";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = "MPModelPropertyTVEpisodeArtwork";
          v7 = 0xD000000000000020;
          break;
        case 2:
          v7 = 0xD000000000000027;
          v8 = "VEpisodeDuration";
          break;
        case 3:
          v7 = 0xD000000000000026;
          v8 = "VEpisodeTypeDisplayName";
          break;
        case 4:
          v7 = 0xD000000000000026;
          v8 = "VEpisodeDownloadedDate";
          break;
        case 5:
          v7 = 0xD00000000000002ALL;
          v8 = "VEpisodeExplicitRating";
          break;
        case 6:
          v7 = 0xD000000000000024;
          v8 = "VEpisodeHasCloudSyncSource";
          break;
        case 7:
          v7 = 0xD00000000000002ALL;
          v8 = "VEpisodeLibraryAdded";
          break;
        case 8:
          v7 = 0xD000000000000021;
          v8 = "VEpisodeLibraryAddEligible";
          break;
        case 9:
          v7 = 0xD00000000000002CLL;
          v8 = "VEpisodeMusicShow";
          break;
        case 0xA:
          v7 = 0xD00000000000002ELL;
          v8 = "VEpisodeKeepLocalEnableState";
          break;
        case 0xB:
          v7 = 0xD000000000000034;
          v8 = "VEpisodeKeepLocalManagedStatus";
          break;
        case 0xC:
          v7 = 0xD00000000000002ELL;
          v8 = "lManagedStatusReason";
          break;
        case 0xD:
          v7 = 0xD000000000000028;
          v8 = "VEpisodeLastDevicePlaybackDate";
          break;
        case 0xE:
          v7 = 0xD00000000000001ELL;
          v8 = "VEpisodeLibraryAddedDate";
          break;
        case 0xF:
          v7 = 0xD000000000000023;
          v8 = "MPModelPropertyTVEpisodeNumber";
          break;
        case 0x10:
          v7 = 0xD000000000000027;
          v8 = "VEpisodeReleaseDate";
          break;
        case 0x11:
          v7 = 0xD00000000000001DLL;
          v8 = "VEpisodeDescriptionText";
          break;
        case 0x12:
          v7 = 0xD00000000000001CLL;
          v8 = "MPModelPropertyTVEpisodeTitle";
          break;
        case 0x13:
          v7 = 0xD000000000000026;
          v8 = "MPModelPropertyTVEpisodeType";
          break;
        case 0x14:
          v7 = 0xD00000000000002ALL;
          v8 = "hipTVEpisodeStoreAsset";
          break;
        case 0x15:
          v7 = 0xD00000000000002CLL;
          v8 = "hipTVEpisodeLocalFileAsset";
          break;
        case 0x16:
          v7 = 0xD000000000000022;
          v8 = "hipTVEpisodePlaybackPosition";
          break;
        case 0x17:
          v7 = 0xD000000000000020;
          v8 = "hipTVEpisodeSeason";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000001FLL;
      v11 = "hipLibraryPinSong";
      switch(a1)
      {
        case 1:
          v11 = "MPModelPropertyTVEpisodeArtwork";
          v10 = 0xD000000000000020;
          break;
        case 2:
          v10 = 0xD000000000000027;
          v11 = "VEpisodeDuration";
          break;
        case 3:
          v10 = 0xD000000000000026;
          v11 = "VEpisodeTypeDisplayName";
          break;
        case 4:
          v10 = 0xD000000000000026;
          v11 = "VEpisodeDownloadedDate";
          break;
        case 5:
          v10 = 0xD00000000000002ALL;
          v11 = "VEpisodeExplicitRating";
          break;
        case 6:
          v10 = 0xD000000000000024;
          v11 = "VEpisodeHasCloudSyncSource";
          break;
        case 7:
          v10 = 0xD00000000000002ALL;
          v11 = "VEpisodeLibraryAdded";
          break;
        case 8:
          v10 = 0xD000000000000021;
          v11 = "VEpisodeLibraryAddEligible";
          break;
        case 9:
          v10 = 0xD00000000000002CLL;
          v11 = "VEpisodeMusicShow";
          break;
        case 10:
          v10 = 0xD00000000000002ELL;
          v11 = "VEpisodeKeepLocalEnableState";
          break;
        case 11:
          v10 = 0xD000000000000034;
          v11 = "VEpisodeKeepLocalManagedStatus";
          break;
        case 12:
          v10 = 0xD00000000000002ELL;
          v11 = "lManagedStatusReason";
          break;
        case 13:
          v10 = 0xD000000000000028;
          v11 = "VEpisodeLastDevicePlaybackDate";
          break;
        case 14:
          v10 = 0xD00000000000001ELL;
          v11 = "VEpisodeLibraryAddedDate";
          break;
        case 15:
          v10 = 0xD000000000000023;
          v11 = "MPModelPropertyTVEpisodeNumber";
          break;
        case 16:
          v10 = 0xD000000000000027;
          v11 = "VEpisodeReleaseDate";
          break;
        case 17:
          v10 = 0xD00000000000001DLL;
          v11 = "VEpisodeDescriptionText";
          break;
        case 18:
          v10 = 0xD00000000000001CLL;
          v11 = "MPModelPropertyTVEpisodeTitle";
          break;
        case 19:
          v10 = 0xD000000000000026;
          v11 = "MPModelPropertyTVEpisodeType";
          break;
        case 20:
          v10 = 0xD00000000000002ALL;
          v11 = "hipTVEpisodeStoreAsset";
          break;
        case 21:
          v10 = 0xD00000000000002CLL;
          v11 = "hipTVEpisodeLocalFileAsset";
          break;
        case 22:
          v10 = 0xD000000000000022;
          v11 = "hipTVEpisodePlaybackPosition";
          break;
        case 23:
          v10 = 0xD000000000000020;
          v11 = "hipTVEpisodeSeason";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D4F12C9C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    if (a1)
    {
      v5 = 0xD000000000000027;
    }

    else
    {
      v5 = 0xD000000000000019;
    }

    if (a1)
    {
      v6 = "clude";
    }

    else
    {
      v6 = "ocialPersonIsVerified";
    }

    v7 = v6 | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000027 : 0xD000000000000019;
      v9 = *(*(v2 + 48) + v4) ? "clude" : "ocialPersonIsVerified";
      if (v8 == v5 && (v9 | 0x8000000000000000) == v7)
      {
        break;
      }

      v11 = sub_1D5616168();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D4F12DE4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_11:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v7 && v8 != a1)
    {
      v9 = (v8 + 32);
      v10 = (a1 + 32);
      v11 = *(a1 + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_11;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1D4F12EA0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000002BLL;
      v8 = "🟦    Saving Playlist";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD00000000000002CLL;
          v8 = "laybackPositionBookmarkTime";
          break;
        case 2:
          v7 = 0xD000000000000039;
          v8 = "laybackPositionHasBeenPlayed";
          break;
        case 3:
          v7 = 0xD00000000000002CLL;
          v8 = "houldRememberBookmarkTime";
          break;
        case 4:
          v7 = 0xD000000000000028;
          v8 = "laybackPositionUserPlayCount";
          break;
        case 5:
          v7 = 0xD000000000000027;
          v8 = "laybackPositionStartTime";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000002BLL;
      v11 = "🟦    Saving Playlist";
      switch(a1)
      {
        case 1:
          v10 = 0xD00000000000002CLL;
          v11 = "laybackPositionBookmarkTime";
          break;
        case 2:
          v10 = 0xD000000000000039;
          v11 = "laybackPositionHasBeenPlayed";
          break;
        case 3:
          v10 = 0xD00000000000002CLL;
          v11 = "houldRememberBookmarkTime";
          break;
        case 4:
          v10 = 0xD000000000000028;
          v11 = "laybackPositionUserPlayCount";
          break;
        case 5:
          v10 = 0xD000000000000027;
          v11 = "laybackPositionStartTime";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D4F130DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1D4F157F8();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1D5615848();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D4F1319C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000023;
      v6 = 0xD00000000000002DLL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = 0xD000000000000020;
        v7 = "reditsArtistArtwork";
      }

      else
      {
        v7 = "reditsArtistName";
      }

      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000023;
      v9 = *(*(v2 + 48) + v4) ? v7 : "";
      if (a1)
      {
        v5 = a1 == 1 ? 0xD000000000000020 : 0xD00000000000002DLL;
        v10 = a1 == 1 ? "reditsArtistArtwork" : "reditsArtistName";
      }

      else
      {
        v10 = "";
      }

      if (v8 == v5 && (v9 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_1D5616168();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

_OWORD *sub_1D4F13310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  v12 = sub_1D4F0DF30();
  OUTLINED_FUNCTION_1_24(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA690, &qword_1D561C558);
  v15 = OUTLINED_FUNCTION_17_5();
  if (v15)
  {
    OUTLINED_FUNCTION_68_5();
    sub_1D4F0DF30();
    OUTLINED_FUNCTION_14_9();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    OUTLINED_FUNCTION_3_10(v15, v16, v17, *v10);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

void sub_1D4F133DC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  OUTLINED_FUNCTION_15_14();
  v2 = type metadata accessor for MusicItemCache.Key();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_44_5();
  v6 = sub_1D4F0DF68();
  OUTLINED_FUNCTION_1_24(v6, v7);
  if (v9)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3F0, &qword_1D561E210);
  OUTLINED_FUNCTION_25_21();
  v11 = sub_1D5615D78();
  if (v11)
  {
    v13 = *v0;
    sub_1D4F0DF68();
    OUTLINED_FUNCTION_45_8();
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  if (v10)
  {
    v15 = *(*v1 + 56);
    OUTLINED_FUNCTION_46();

    sub_1D4F1579C(v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_73_3(v11, v12, type metadata accessor for MusicItemCache.Key);
    OUTLINED_FUNCTION_62_8();
    sub_1D50143BC(v19, v20, v21, v22);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F13514()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  v2 = sub_1D560C368();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E020();
  OUTLINED_FUNCTION_1_24(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3F8, &qword_1D561E218);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E020();
    OUTLINED_FUNCTION_18_8();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *v0;
  if (v1)
  {
    OUTLINED_FUNCTION_43_11();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_7_18();
    v13(v12);
    v14 = OUTLINED_FUNCTION_9_10();
    sub_1D501444C(v14, v15, v16, v17);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F13640()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  OUTLINED_FUNCTION_15_14();
  v3 = type metadata accessor for LooselyComparableTypedIdentifier();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_28_10();
  v8 = sub_1D4F0DE0C(v1, v7, sub_1D4F0EEF8);
  OUTLINED_FUNCTION_1_24(v8, v9);
  if (v11)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
  OUTLINED_FUNCTION_25_21();
  v13 = sub_1D5615D78();
  if (v13)
  {
    v15 = *v0;
    OUTLINED_FUNCTION_28_10();
    sub_1D4F0DE0C(v1, v16, sub_1D4F0EEF8);
    OUTLINED_FUNCTION_45_8();
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    v18 = *(*v2 + 56);
    v19 = type metadata accessor for GenericMusicItem();
    OUTLINED_FUNCTION_22(v19);
    v21 = *(v20 + 72);
    OUTLINED_FUNCTION_46();

    sub_1D4F159C4(v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_73_3(v13, v14, type metadata accessor for LooselyComparableTypedIdentifier);
    OUTLINED_FUNCTION_62_8();
    sub_1D50144CC(v25, v26, v27, v28);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F137BC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  v3 = sub_1D5614118();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E0D0();
  OUTLINED_FUNCTION_1_24(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3D8, &qword_1D561E150);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E0D0();
    OUTLINED_FUNCTION_18_8();
    if (!v11)
    {
      goto LABEL_12;
    }

    v1 = v10;
  }

  if (v2)
  {
    v12 = *(*v0 + 56) + 32 * v1;
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_46();

    sub_1D4E519A8(v13, v14);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_7_18();
    v17(v16);
    v18 = OUTLINED_FUNCTION_9_10();
    sub_1D501457C(v18, v19, v20, v21);
    OUTLINED_FUNCTION_46();
  }
}

uint64_t sub_1D4F13984()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_8_12(v2, v3);
  sub_1D4F0DD20();
  OUTLINED_FUNCTION_1_24(v4, v5);
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB400, &qword_1D561E220);
  OUTLINED_FUNCTION_11_9();
  v7 = sub_1D5615D78();
  if (v7)
  {
    OUTLINED_FUNCTION_42_8();
    sub_1D4F0DD20();
    OUTLINED_FUNCTION_20_20();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_50_4(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_190();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_21_10();
    sub_1D50145A8(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_190();
  }
}

void sub_1D4F13A5C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  v3 = sub_1D5614438();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E1E0();
  OUTLINED_FUNCTION_1_24(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C8, &qword_1D561E288);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E1E0();
    OUTLINED_FUNCTION_18_8();
    if (!v11)
    {
      goto LABEL_12;
    }

    v1 = v10;
  }

  if (v2)
  {
    v12 = *(*v0 + 56) + 32 * v1;
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_46();

    sub_1D4E519A8(v13, v14);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_7_18();
    v17(v16);
    v18 = OUTLINED_FUNCTION_9_10();
    sub_1D50145E4(v18, v19, v20, v21);
    OUTLINED_FUNCTION_46();
  }
}

_OWORD *sub_1D4F13B94()
{
  OUTLINED_FUNCTION_191();
  v3 = v0;
  v4 = OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_1_24(v4, v5);
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4B0, &unk_1D5620C80);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    v7 = *v0;
    OUTLINED_FUNCTION_61();
    sub_1D4E4EFA0();
    OUTLINED_FUNCTION_20_20();
    if (!v9)
    {
      goto LABEL_14;
    }

    v2 = v8;
  }

  if (v1)
  {
    v10 = *(*v3 + 56) + 32 * v2;
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_215();
    OUTLINED_FUNCTION_64_5();
    sub_1D5014610(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_190();
  }
}

uint64_t sub_1D4F13C7C()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_8_12(v2, v3);
  v4 = sub_1D4E4EFA0();
  OUTLINED_FUNCTION_1_24(v4, v5);
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB460, &qword_1D561E250);
  OUTLINED_FUNCTION_11_9();
  v7 = sub_1D5615D78();
  if (v7)
  {
    OUTLINED_FUNCTION_42_8();
    sub_1D4E4EFA0();
    OUTLINED_FUNCTION_20_20();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_50_4(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_190();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_21_10();
    sub_1D5015584(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_190();
  }
}

uint64_t sub_1D4F13D54()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_8_12(v2, v3);
  v4 = sub_1D4E4EFA0();
  OUTLINED_FUNCTION_1_24(v4, v5);
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB480, &qword_1D561E258);
  OUTLINED_FUNCTION_11_9();
  v7 = sub_1D5615D78();
  if (v7)
  {
    OUTLINED_FUNCTION_42_8();
    sub_1D4E4EFA0();
    OUTLINED_FUNCTION_20_20();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_50_4(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_190();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_21_10();
    sub_1D5015584(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_190();
  }
}

void sub_1D4F13E2C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  v2 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E2E8();
  OUTLINED_FUNCTION_1_24(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4B8, &qword_1D561E278);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E2E8();
    OUTLINED_FUNCTION_18_8();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if (v1)
  {
    v10 = *(*v0 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
    OUTLINED_FUNCTION_22(v11);
    v13 = *(v12 + 72);
    OUTLINED_FUNCTION_46();

    sub_1D4F15954(v14, v15);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_7_18();
    v18(v17);
    v19 = OUTLINED_FUNCTION_9_10();
    sub_1D5014668(v19, v20, v21, v22);
    OUTLINED_FUNCTION_46();
  }
}

_OWORD *sub_1D4F13F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_10();
  v14 = sub_1D4F0E970(v10, v13, sub_1D4F10FE8);
  OUTLINED_FUNCTION_1_24(v14, v15);
  if (v16)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5D8, &qword_1D561C4F0);
  v17 = OUTLINED_FUNCTION_17_5();
  if (v17)
  {
    v20 = *v11;
    OUTLINED_FUNCTION_38_10();
    sub_1D4F0E970(v10, v21, sub_1D4F10FE8);
    OUTLINED_FUNCTION_14_9();
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  if (v12)
  {
    OUTLINED_FUNCTION_3_10(v17, v18, v19, *v11);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

_OWORD *sub_1D4F14088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_37_11();
  v14 = sub_1D4F0E970(v10, v13, sub_1D4F1120C);
  OUTLINED_FUNCTION_1_24(v14, v15);
  if (v16)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5C8, &qword_1D561C4E8);
  v17 = OUTLINED_FUNCTION_17_5();
  if (v17)
  {
    v20 = *v11;
    OUTLINED_FUNCTION_37_11();
    sub_1D4F0E970(v10, v21, sub_1D4F1120C);
    OUTLINED_FUNCTION_14_9();
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  if (v12)
  {
    OUTLINED_FUNCTION_3_10(v17, v18, v19, *v11);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

_OWORD *sub_1D4F14188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_36_5();
  v14 = sub_1D4F0E970(v10, v13, sub_1D4F11470);
  OUTLINED_FUNCTION_1_24(v14, v15);
  if (v16)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA598, &qword_1D561C4C8);
  v17 = OUTLINED_FUNCTION_17_5();
  if (v17)
  {
    v20 = *v11;
    OUTLINED_FUNCTION_36_5();
    sub_1D4F0E970(v10, v21, sub_1D4F11470);
    OUTLINED_FUNCTION_14_9();
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  if (v12)
  {
    OUTLINED_FUNCTION_3_10(v17, v18, v19, *v11);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

unint64_t sub_1D4F14288()
{
  OUTLINED_FUNCTION_191();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = sub_1D4F0E41C(v4);
  OUTLINED_FUNCTION_1_24(v9, v10);
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4A8, &qword_1D561E270);
  if (OUTLINED_FUNCTION_17_5())
  {
    v12 = *v3;
    sub_1D4F0E41C(v5);
    OUTLINED_FUNCTION_14_9();
    if (!v14)
    {
      goto LABEL_14;
    }

    v2 = v13;
  }

  if (v1)
  {
    v15 = *(*v3 + 56);
    v16 = *(v15 + 8 * v2);
    *(v15 + 8 * v2) = v7;
    OUTLINED_FUNCTION_190();
  }

  else
  {
    OUTLINED_FUNCTION_190();

    return sub_1D5014858(v19, v20, v21, v22);
  }
}

uint64_t sub_1D4F14378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_1_24(v12, v13);
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E0, &qword_1D56492E0);
  OUTLINED_FUNCTION_11_9();
  if ((sub_1D5615D78() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *v10;
  OUTLINED_FUNCTION_61();
  v20 = sub_1D4E4EFA0();
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  v17 = v20;
LABEL_5:
  if (v18)
  {
    v22 = *(*v11 + 56);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
    OUTLINED_FUNCTION_14(v23);
    v25 = *(v24 + 40);
    v26 = v22 + *(v24 + 72) * v17;
    OUTLINED_FUNCTION_190();

    return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_64_5();
    sub_1D5014894(v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_190();
  }
}

void sub_1D4F144AC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  v3 = sub_1D56146E8();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E460();
  OUTLINED_FUNCTION_1_24(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4A0, &qword_1D561E268);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E460();
    OUTLINED_FUNCTION_18_8();
    if (!v11)
    {
      goto LABEL_12;
    }

    v1 = v10;
  }

  if (v2)
  {
    v12 = *(*v0 + 56) + 32 * v1;
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_46();

    sub_1D4E519A8(v13, v14);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_7_18();
    v17(v16);
    v18 = OUTLINED_FUNCTION_9_10();
    sub_1D5014930(v18, v19, v20, v21);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F145E4()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for MusicSuggestedPivotEntry();
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_35_13();
  v12 = sub_1D4F0DE0C(v4, v11, sub_1D4F0FE08);
  OUTLINED_FUNCTION_1_24(v12, v13);
  if (v16)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB418, &unk_1D5659C90);
  OUTLINED_FUNCTION_25_21();
  v19 = sub_1D5615D78();
  if (v19)
  {
    v21 = *v0;
    OUTLINED_FUNCTION_35_13();
    sub_1D4F0DE0C(v4, v22, sub_1D4F0FE08);
    OUTLINED_FUNCTION_45_8();
    if (!v23)
    {
      goto LABEL_11;
    }

    v17 = v19;
  }

  v24 = *v2;
  if (v18)
  {
    *(*(v24 + 56) + v17) = v6;
  }

  else
  {
    OUTLINED_FUNCTION_73_3(v19, v20, type metadata accessor for MusicSuggestedPivotEntry);
    sub_1D501495C(v17, v1, v6, v24);
  }

  OUTLINED_FUNCTION_46();
}

_OWORD *sub_1D4F14730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  v12 = sub_1D4F0E570();
  OUTLINED_FUNCTION_1_24(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA540, &qword_1D561C498);
  v15 = OUTLINED_FUNCTION_17_5();
  if (v15)
  {
    OUTLINED_FUNCTION_68_5();
    sub_1D4F0E570();
    OUTLINED_FUNCTION_14_9();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    OUTLINED_FUNCTION_3_10(v15, v16, v17, *v10);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

void sub_1D4F147FC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  v3 = sub_1D5615D68();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_17();
  v7 = sub_1D4F0E5A8();
  OUTLINED_FUNCTION_1_24(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB408, &qword_1D56607F0);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E5A8();
    OUTLINED_FUNCTION_18_8();
    if (!v11)
    {
      goto LABEL_12;
    }

    v1 = v10;
  }

  if (v2)
  {
    v12 = *(*v0 + 56) + 32 * v1;
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_46();

    sub_1D4E519A8(v13, v14);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_7_18();
    v17(v16);
    v18 = OUTLINED_FUNCTION_9_10();
    sub_1D50149D8(v18, v19, v20, v21);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F14934()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  v3 = sub_1D5613598();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E600();
  OUTLINED_FUNCTION_1_24(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E600();
    OUTLINED_FUNCTION_18_8();
    if (!v11)
    {
      goto LABEL_12;
    }

    v1 = v10;
  }

  if (v2)
  {
    v12 = *(*v0 + 56) + 32 * v1;
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_46();

    sub_1D4E519A8(v13, v14);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_7_18();
    v17(v16);
    v18 = OUTLINED_FUNCTION_9_10();
    sub_1D5014A04(v18, v19, v20, v21);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F14A6C()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for MusicRestrictionsObserver.ObservationToken();
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = *v0;
  v16 = sub_1D4F0E6B0();
  OUTLINED_FUNCTION_1_24(v16, v17);
  if (v20)
  {
    __break(1u);
LABEL_12:
    sub_1D5616238();
    __break(1u);
    return;
  }

  v21 = v18;
  v22 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB468, &unk_1D564BA80);
  if (sub_1D5615D78())
  {
    v23 = *v1;
    sub_1D4F0E6B0();
    OUTLINED_FUNCTION_18_8();
    if (!v25)
    {
      goto LABEL_12;
    }

    v21 = v24;
  }

  v26 = *v1;
  if (v22)
  {
    v27 = (*(v26 + 56) + 16 * v21);
    v28 = v27[1];
    *v27 = v7;
    v27[1] = v5;
    OUTLINED_FUNCTION_46();
  }

  else
  {
    sub_1D4F1589C(v3, v14, type metadata accessor for MusicRestrictionsObserver.ObservationToken);
    OUTLINED_FUNCTION_64_5();
    sub_1D5014AD4(v30, v31, v32, v33, v26);
    OUTLINED_FUNCTION_46();
  }
}

_OWORD *sub_1D4F14BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_33_13();
  v14 = sub_1D4F0E970(v10, v13, sub_1D4F12088);
  OUTLINED_FUNCTION_1_24(v14, v15);
  if (v16)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4C8, &unk_1D561C460);
  v17 = OUTLINED_FUNCTION_17_5();
  if (v17)
  {
    v20 = *v11;
    OUTLINED_FUNCTION_33_13();
    sub_1D4F0E970(v10, v21, sub_1D4F12088);
    OUTLINED_FUNCTION_14_9();
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  if (v12)
  {
    OUTLINED_FUNCTION_3_10(v17, v18, v19, *v11);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

_OWORD *sub_1D4F14CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_32_14();
  v14 = sub_1D4F0E970(v10, v13, sub_1D4F12250);
  OUTLINED_FUNCTION_1_24(v14, v15);
  if (v16)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4B0, &qword_1D561C458);
  v17 = OUTLINED_FUNCTION_17_5();
  if (v17)
  {
    v20 = *v11;
    OUTLINED_FUNCTION_32_14();
    sub_1D4F0E970(v10, v21, sub_1D4F12250);
    OUTLINED_FUNCTION_14_9();
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  if (v12)
  {
    OUTLINED_FUNCTION_3_10(v17, v18, v19, *v11);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

_OWORD *sub_1D4F14DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_31_12();
  v14 = sub_1D4F0E970(v10, v13, sub_1D4F12434);
  OUTLINED_FUNCTION_1_24(v14, v15);
  if (v16)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4A8, &qword_1D561C450);
  v17 = OUTLINED_FUNCTION_17_5();
  if (v17)
  {
    v20 = *v11;
    OUTLINED_FUNCTION_31_12();
    sub_1D4F0E970(v10, v21, sub_1D4F12434);
    OUTLINED_FUNCTION_14_9();
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  if (v12)
  {
    OUTLINED_FUNCTION_3_10(v17, v18, v19, *v11);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

_OWORD *sub_1D4F14ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  v12 = sub_1D4F0E870();
  OUTLINED_FUNCTION_1_24(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA488, &unk_1D561C440);
  v15 = OUTLINED_FUNCTION_17_5();
  if (v15)
  {
    OUTLINED_FUNCTION_68_5();
    sub_1D4F0E870();
    OUTLINED_FUNCTION_14_9();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    OUTLINED_FUNCTION_3_10(v15, v16, v17, *v10);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

void sub_1D4F14F9C()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  v3 = sub_1D4F0E8A8(v2 & 1);
  OUTLINED_FUNCTION_1_24(v3, v4);
  if (v7)
  {
    __break(1u);
LABEL_14:
    sub_1D5616238();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA470, &qword_1D561C438);
  if (OUTLINED_FUNCTION_17_5())
  {
    v10 = *v1;
    sub_1D4F0E8A8(v0 & 1);
    OUTLINED_FUNCTION_20_20();
    if (!v12)
    {
      goto LABEL_14;
    }

    v8 = v11;
  }

  if (v9)
  {
    v13 = *(*v1 + 56) + 32 * v8;
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_190();

    sub_1D4E519A8(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_190();

    sub_1D5014B78(v17, v18, v19, v20);
  }
}

_OWORD *sub_1D4F15080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_29_8();
  v14 = sub_1D4F0E970(v10, v13, sub_1D4F12EA0);
  OUTLINED_FUNCTION_1_24(v14, v15);
  if (v16)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA468, &qword_1D561C430);
  v17 = OUTLINED_FUNCTION_17_5();
  if (v17)
  {
    v20 = *v11;
    OUTLINED_FUNCTION_29_8();
    sub_1D4F0E970(v10, v21, sub_1D4F12EA0);
    OUTLINED_FUNCTION_14_9();
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  if (v12)
  {
    OUTLINED_FUNCTION_3_10(v17, v18, v19, *v11);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

void sub_1D4F15180()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  OUTLINED_FUNCTION_15_14();
  v2 = type metadata accessor for MusicSuggestedSongsEntry();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_44_5();
  v6 = sub_1D4F0DE84();
  OUTLINED_FUNCTION_1_24(v6, v7);
  if (v9)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB450, &qword_1D561E248);
  OUTLINED_FUNCTION_25_21();
  v11 = sub_1D5615D78();
  if (v11)
  {
    v13 = *v0;
    sub_1D4F0DE84();
    OUTLINED_FUNCTION_45_8();
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  v15 = *v1;
  if (v10)
  {
    OUTLINED_FUNCTION_43_11();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_73_3(v11, v12, type metadata accessor for MusicSuggestedSongsEntry);
    OUTLINED_FUNCTION_62_8();
    sub_1D5014BC8(v17, v18, v19, v20);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F152A8()
{
  OUTLINED_FUNCTION_191();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_1D4F0E41C(v4);
  OUTLINED_FUNCTION_1_24(v11, v12);
  if (v13)
  {
    __break(1u);
LABEL_14:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB438, &qword_1D561E230);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    v14 = *v3;
    sub_1D4F0E41C(v5);
    OUTLINED_FUNCTION_20_20();
    if (!v16)
    {
      goto LABEL_14;
    }

    v2 = v15;
  }

  if (v1)
  {
    v17 = (*(*v3 + 56) + 16 * v2);
    v18 = v17[1];
    *v17 = v9;
    v17[1] = v7;
    OUTLINED_FUNCTION_190();
  }

  else
  {
    OUTLINED_FUNCTION_215();
    OUTLINED_FUNCTION_64_5();
    OUTLINED_FUNCTION_190();

    sub_1D5014C44(v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1D4F153A4()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_1D4E4EFA0();
  OUTLINED_FUNCTION_1_24(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB430, &qword_1D561E228);
  OUTLINED_FUNCTION_25_21();
  if ((sub_1D5615D78() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v1;
  v19 = sub_1D4E4EFA0();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v1;
  if (v17)
  {
    v22 = (*(v21 + 56) + 16 * v16);
    v23 = v22[1];
    *v22 = v9;
    v22[1] = v7;
    OUTLINED_FUNCTION_46();
  }

  else
  {
    sub_1D5014C88(v16, v5, v3, v9, v7, v21);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F154CC()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_8_12(v2, v3);
  v4 = sub_1D4E4EFA0();
  OUTLINED_FUNCTION_1_24(v4, v5);
  if (v6)
  {
    __break(1u);
LABEL_13:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB440, &qword_1D561E238);
  OUTLINED_FUNCTION_11_9();
  v7 = sub_1D5615D78();
  if (v7)
  {
    OUTLINED_FUNCTION_42_8();
    sub_1D4E4EFA0();
    OUTLINED_FUNCTION_20_20();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_50_4(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_190();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_21_10();
    sub_1D5015584(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_190();
  }
}

void sub_1D4F155A4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  v2 = sub_1D560C368();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E020();
  OUTLINED_FUNCTION_1_24(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB448, &qword_1D561E240);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E020();
    OUTLINED_FUNCTION_18_8();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *v0;
  if (v1)
  {
    OUTLINED_FUNCTION_43_11();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_7_18();
    v13(v12);
    v14 = OUTLINED_FUNCTION_9_10();
    sub_1D501444C(v14, v15, v16, v17);
    OUTLINED_FUNCTION_46();
  }
}

_OWORD *sub_1D4F156D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  v12 = sub_1D4F0EA2C();
  OUTLINED_FUNCTION_1_24(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA450, &qword_1D561C428);
  v15 = OUTLINED_FUNCTION_17_5();
  if (v15)
  {
    OUTLINED_FUNCTION_68_5();
    sub_1D4F0EA2C();
    OUTLINED_FUNCTION_14_9();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    OUTLINED_FUNCTION_3_10(v15, v16, v17, *v10);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

unint64_t sub_1D4F157F8()
{
  result = qword_1EC7EA460;
  if (!qword_1EC7EA460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7EA460);
  }

  return result;
}

uint64_t sub_1D4F1583C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D4F1589C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D4F158FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D4F15954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F159C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItem();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F15A28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_57_8@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 128) = v1;
  *(v3 - 120) = v2;
  sub_1D4E519A8((v3 - 128), (v3 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_61_12()
{
  v2 = *(v0 + 40);

  return sub_1D56162D8();
}

uint64_t OUTLINED_FUNCTION_67_5()
{
  v2 = *(v0 - 232);

  return sub_1D5615D98();
}

_OWORD *OUTLINED_FUNCTION_71_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 104) = a2;
  *(v2 - 128) = a1;

  return sub_1D4E519A8((v2 - 128), (v2 - 160));
}

uint64_t OUTLINED_FUNCTION_72_7()
{

  return sub_1D5614CB8();
}

uint64_t InternalMusicPlayer.Queue.Entry.Container.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v130 = a4;
  v131 = a1;
  v6 = type metadata accessor for TVSeason();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_5_0();
  v121 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = sub_1D5614408();
  v10 = OUTLINED_FUNCTION_4(v9);
  v119 = v11;
  v120 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v118 = v14;
  OUTLINED_FUNCTION_70_0();
  v15 = sub_1D5614898();
  v16 = OUTLINED_FUNCTION_4(v15);
  v116 = v17;
  v117 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v115 = v20;
  OUTLINED_FUNCTION_70_0();
  v114 = sub_1D5613AF8();
  v21 = OUTLINED_FUNCTION_4(v114);
  v113 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  v112 = v25;
  OUTLINED_FUNCTION_70_0();
  v26 = sub_1D560E728();
  v27 = OUTLINED_FUNCTION_4(v26);
  v123 = v28;
  v124 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v31 = sub_1D560D9A8();
  v32 = OUTLINED_FUNCTION_4(v31);
  v122 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v36 = sub_1D560D838();
  v37 = OUTLINED_FUNCTION_4(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v37);
  v125 = &v110 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v126 = &v110 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v128 = &v110 - v47;
  OUTLINED_FUNCTION_70_0();
  v129 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v48 = OUTLINED_FUNCTION_14(v129);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v127 = v51;
  sub_1D560F7E8();
  sub_1D4F165C4();
  v52 = sub_1D5614C68();

  v53 = sub_1D4FBE524(v52);
  if (v53 == 15)
  {
    swift_unknownObjectRelease();

    sub_1D4E50004(a2, &qword_1EC7EEC40, &unk_1D561C070);
    (*(v39 + 8))(v131, v36);
  }

  else
  {
    v54 = v53;
    v111 = v36;
    v55 = v131;
    if (sub_1D560F7B8())
    {
      sub_1D560D4F8();
      v56 = v54;
      if (v54)
      {
        if (v54 == 5)
        {
          OUTLINED_FUNCTION_14_10();
          sub_1D560D968();
          sub_1D560D588();
          v72 = v126;
          OUTLINED_FUNCTION_18_9();
          v73 = OUTLINED_FUNCTION_11_10();
          v74(v73);
          v75 = OUTLINED_FUNCTION_10_8();
          v76(v75);
          v77 = OUTLINED_FUNCTION_6_15();
          v78 = v111;
          v79(v77, v72, v111);
          OUTLINED_FUNCTION_20_21();
          v80 = v115;
          OUTLINED_FUNCTION_19_11();
          sub_1D56144C8();
          swift_unknownObjectRelease();
          sub_1D4E50004(a2, &qword_1EC7EEC40, &unk_1D561C070);
          v81 = *(v39 + 8);
          v67 = v39 + 8;
          v81(v55, v78);
          v81(v72, v78);
          sub_1D4E50004(v128, &unk_1EC7EBF30, &qword_1D561C8C0);
          v82 = OUTLINED_FUNCTION_15_15();
          v83(v82, v80);
        }

        else
        {
          v57 = v111;
          if (v56 == 10)
          {
            OUTLINED_FUNCTION_14_10();
            sub_1D560D958();
            sub_1D560D588();
            v84 = v126;
            OUTLINED_FUNCTION_18_9();
            v85 = OUTLINED_FUNCTION_11_10();
            v86(v85);
            v87 = OUTLINED_FUNCTION_10_8();
            v88(v87);
            v89 = OUTLINED_FUNCTION_6_15();
            v90(v89, v84, v57);
            OUTLINED_FUNCTION_20_21();
            v91 = v118;
            OUTLINED_FUNCTION_222();
            OUTLINED_FUNCTION_19_11();
            sub_1D5614228();
            swift_unknownObjectRelease();
            sub_1D4E50004(a2, &qword_1EC7EEC40, &unk_1D561C070);
            v92 = *(v39 + 8);
            v67 = v39 + 8;
            v92(v131, v57);
            v92(v84, v57);
            sub_1D4E50004(v128, &unk_1EC7EBF30, &qword_1D561C8C0);
            v93 = OUTLINED_FUNCTION_15_15();
            v94(v93, v91);
          }

          else
          {
            if (v56 != 13)
            {
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              sub_1D4E50004(a2, &qword_1EC7EEC40, &unk_1D561C070);
              (*(v39 + 8))(v55, v57);
              sub_1D4E50004(v128, &unk_1EC7EBF30, &qword_1D561C8C0);
              goto LABEL_12;
            }

            v110 = a3;
            v58 = v55;
            if (qword_1EDD53C58 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v31, qword_1EDD53C60);
            sub_1D560D588();
            v59 = v126;
            v60 = v128;
            sub_1D560F7D8();
            v61 = OUTLINED_FUNCTION_11_10();
            v62(v61);
            v63 = OUTLINED_FUNCTION_6_15();
            v64(v63, v59, v57);
            OUTLINED_FUNCTION_20_21();
            v65 = v121;
            OUTLINED_FUNCTION_222();
            OUTLINED_FUNCTION_19_11();
            TVSeason.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
            swift_unknownObjectRelease();
            sub_1D4E50004(a2, &qword_1EC7EEC40, &unk_1D561C070);
            v66 = *(v39 + 8);
            v66(v58, v57);
            v66(v59, v57);
            sub_1D4E50004(v60, &unk_1EC7EBF30, &qword_1D561C8C0);
            OUTLINED_FUNCTION_4_11();
            v67 = v127;
            sub_1D4F172CC(v65, v127, v68);
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_14_10();
        sub_1D560D908();
        sub_1D560D588();
        v95 = v126;
        OUTLINED_FUNCTION_18_9();
        v96 = OUTLINED_FUNCTION_11_10();
        v97(v96);
        v98 = OUTLINED_FUNCTION_10_8();
        v99(v98);
        v100 = OUTLINED_FUNCTION_6_15();
        v101 = v111;
        v102(v100, v95, v111);
        OUTLINED_FUNCTION_20_21();
        v103 = v112;
        OUTLINED_FUNCTION_19_11();
        sub_1D56138E8();
        swift_unknownObjectRelease();
        sub_1D4E50004(a2, &qword_1EC7EEC40, &unk_1D561C070);
        v104 = *(v39 + 8);
        v67 = v39 + 8;
        v104(v131, v101);
        v104(v95, v101);
        sub_1D4E50004(v128, &unk_1EC7EBF30, &qword_1D561C8C0);
        v105 = OUTLINED_FUNCTION_15_15();
        v106(v105, v103, v114);
      }

      v71 = v129;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_13();
      v107 = v67;
      v70 = v130;
      sub_1D4F172CC(v107, v130, v108);
      v69 = 0;
      return __swift_storeEnumTagSinglePayload(v70, v69, 1, v71);
    }

    swift_unknownObjectRelease();

    sub_1D4E50004(a2, &qword_1EC7EEC40, &unk_1D561C070);
    (*(v39 + 8))(v55, v111);
  }

LABEL_12:
  v69 = 1;
  v71 = v129;
  v70 = v130;
  return __swift_storeEnumTagSinglePayload(v70, v69, 1, v71);
}

unint64_t sub_1D4F165C4()
{
  result = qword_1EDD5EFE8;
  if (!qword_1EDD5EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EFE8);
  }

  return result;
}

uint64_t InternalMusicPlayer.Queue.Entry.Container.init(propertyProvider:underlyingLegacyModelObjectType:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v97 = a3;
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v88 = v6;
  v89 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v86 = v9;
  OUTLINED_FUNCTION_70_0();
  v87 = type metadata accessor for TVSeason();
  v10 = OUTLINED_FUNCTION_14(v87);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v90 = v13;
  OUTLINED_FUNCTION_70_0();
  v14 = sub_1D5614408();
  v15 = OUTLINED_FUNCTION_4(v14);
  v84 = v16;
  v85 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v83 = v19;
  OUTLINED_FUNCTION_70_0();
  v20 = sub_1D5614898();
  v21 = OUTLINED_FUNCTION_4(v20);
  v92 = v22;
  v93 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  v91 = v25;
  OUTLINED_FUNCTION_70_0();
  v26 = sub_1D5613AF8();
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  v35 = sub_1D5610088();
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  v41 = MEMORY[0x1EEE9AC00](v36);
  v43 = &v83 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v95 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v44 = OUTLINED_FUNCTION_14(v95);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v94 = v47;
  v48 = a1[3];
  v49 = a1[4];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_1D5610CF8();
  sub_1D560FFB8();
  OUTLINED_FUNCTION_9_11();
  sub_1D4E5E3B0(v50, v51);
  v52 = OUTLINED_FUNCTION_5_12();
  v55 = *(v38 + 8);
  v53 = (v38 + 8);
  v54 = v55;
  (v55)(v43, v35);
  if (v52)
  {
    v57 = OUTLINED_FUNCTION_61();
    v54(v57);
    OUTLINED_FUNCTION_13_14();
    sub_1D5613978();
    v58 = sub_1D5613158();
    OUTLINED_FUNCTION_14(v58);
    (*(v59 + 8))(v96);
    v60 = v94;
    (*(v29 + 32))(v94, v34, v26);
LABEL_4:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_13();
    sub_1D4F172CC(v60, v97, v61);
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  sub_1D560FEA8();
  OUTLINED_FUNCTION_5_12();
  v56 = OUTLINED_FUNCTION_7_10();
  v54(v56);
  sub_1D5610038();
  OUTLINED_FUNCTION_5_12();
  v63 = OUTLINED_FUNCTION_7_10();
  v54(v63);
  if (v52)
  {
    v65 = OUTLINED_FUNCTION_61();
    v54(v65);
    OUTLINED_FUNCTION_13_14();
    sub_1D56145A8();
    v66 = sub_1D5613158();
    OUTLINED_FUNCTION_14(v66);
    (*(v67 + 8))(v96);
    v68 = *(v92 + 32);
    v60 = v94;
    v69 = OUTLINED_FUNCTION_222();
    v70(v69);
    goto LABEL_4;
  }

  sub_1D560FF58();
  OUTLINED_FUNCTION_5_12();
  v64 = OUTLINED_FUNCTION_7_10();
  v54(v64);
  sub_1D5610008();
  OUTLINED_FUNCTION_5_12();
  v71 = OUTLINED_FUNCTION_7_10();
  v54(v71);
  if (v52)
  {
    v72 = OUTLINED_FUNCTION_61();
    v54(v72);
    OUTLINED_FUNCTION_13_14();
    sub_1D5614288();
    v73 = sub_1D5613158();
    OUTLINED_FUNCTION_14(v73);
    (*(v74 + 8))(v96);
    v75 = *(v84 + 32);
    v60 = v94;
    v76 = OUTLINED_FUNCTION_222();
    v77(v76);
    goto LABEL_4;
  }

  sub_1D5610068();
  OUTLINED_FUNCTION_5_12();
  v78 = OUTLINED_FUNCTION_7_10();
  v54(v78);
  v99 = 0;
  v100 = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000037, 0x80000001D567E9D0);
  v79 = v98[4];
  __swift_project_boxed_opaque_existential_1(v98, v98[3]);
  sub_1D5610CF8();
  OUTLINED_FUNCTION_9_11();
  sub_1D4E5E3B0(v80, v81);
  v82 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v82);

  (v54)(v43, v35);
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t InternalMusicPlayer.Queue.Entry.Container.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1D4F1732C(v1, v8 - v7);
  OUTLINED_FUNCTION_61();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = sub_1D5613158();
  OUTLINED_FUNCTION_14(v11);
  (*(v12 + 104))(a1, **(&unk_1E84C4680 + EnumCaseMultiPayload));
  return sub_1D4F17390(v9, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
}

uint64_t InternalMusicPlayer.Queue.Entry.Container.convertToRawDictionary(for:)()
{
  v43 = type metadata accessor for TVSeason();
  v0 = OUTLINED_FUNCTION_14(v43);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = sub_1D5614408();
  v7 = OUTLINED_FUNCTION_4(v6);
  v42 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1D5614898();
  v15 = OUTLINED_FUNCTION_4(v14);
  v41 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_1D5613AF8();
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v32 = OUTLINED_FUNCTION_14(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  sub_1D4F1732C(v44, v36 - v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v41 + 32))(v21, v37, v14);
      sub_1D4E5E3B0(&qword_1EC7EB4E8, MEMORY[0x1E69773E0]);
      v38 = sub_1D56132F8();
      (*(v41 + 8))(v21, v14);
      break;
    case 2u:
      (*(v42 + 32))(v13, v37, v6);
      sub_1D4E5E3B0(&qword_1EC7EB4E0, MEMORY[0x1E6977180]);
      v38 = sub_1D56132F8();
      (*(v42 + 8))(v13, v6);
      break;
    case 3u:
      OUTLINED_FUNCTION_4_11();
      sub_1D4F172CC(v37, v5, v39);
      sub_1D4E5E3B0(&qword_1EC7EA438, type metadata accessor for TVSeason);
      sub_1D4E5E3B0(&qword_1EC7EA480, type metadata accessor for TVSeason);
      v38 = sub_1D56132F8();
      sub_1D4F17390(v5, type metadata accessor for TVSeason);
      break;
    default:
      (*(v25 + 32))(v30, v37, v22);
      sub_1D4E5E3B0(&qword_1EC7EB4F0, MEMORY[0x1E6976D28]);
      v38 = sub_1D56132F8();
      (*(v25 + 8))(v30, v22);
      break;
  }

  return v38;
}

uint64_t sub_1D4F172CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D4F1732C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F17390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_20_21()
{

  return sub_1D4EC76A8(v0, v1 - 128);
}

uint64_t sub_1D4F17400()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EDD52CF0);
  v1 = __swift_project_value_buffer(v0, qword_1EDD52CF0);
  v2 = *MEMORY[0x1E6976810];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Playlist.Folder.Item.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD52CE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  v3 = __swift_project_value_buffer(v2, qword_1EDD52CF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Playlist.Folder.Item.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v171 = a4;
  v173 = a3;
  v185 = a1;
  v161 = sub_1D5614898();
  v7 = OUTLINED_FUNCTION_4(v161);
  v160 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v12 - v11);
  v13 = type metadata accessor for Playlist.Folder();
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v18 - v17);
  v170 = sub_1D560E728();
  v19 = OUTLINED_FUNCTION_4(v170);
  v169 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v168 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v183 = &v156 - v29;
  v167 = sub_1D560D838();
  v30 = OUTLINED_FUNCTION_4(v167);
  v177 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v176 = &v156 - v36;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_48(&v156 - v37);
  v178 = sub_1D560D9A8();
  v38 = OUTLINED_FUNCTION_4(v178);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v164 = v44 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4F8, &qword_1D561E298);
  v46 = OUTLINED_FUNCTION_14(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v156 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  v52 = OUTLINED_FUNCTION_22(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  v56 = MEMORY[0x1EEE9AC00](v55);
  v58 = &v156 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v156 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB500, &qword_1D561E2A0);
  v62 = OUTLINED_FUNCTION_22(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v66 = (&v156 - v65);
  v179 = sub_1D5612548();
  v67 = OUTLINED_FUNCTION_4(v179);
  v175 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v71);
  v184 = &v156 - v72;
  v73 = sub_1D5614438();
  v74 = OUTLINED_FUNCTION_4(v73);
  v181 = v75;
  v182 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5();
  v180 = v79 - v78;
  v80 = sub_1D560F7B8();
  v174 = a5;
  v172 = a2;
  if (!v80)
  {
    v80 = swift_unknownObjectRetain();
  }

  v166 = v80;
  v81 = sub_1D560F7E8();
  (*(v181 + 104))(v180, *MEMORY[0x1E69771D8], v182);
  v82 = sub_1D5614428();
  sub_1D4E494C8(v82, v83, v81);

  if (v186[3])
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_1D5612528();
    v84 = v179;
    if (__swift_getEnumTagSinglePayload(v66, 1, v179) != 1)
    {
      v94 = v175;
      v130 = *(v175 + 32);
      OUTLINED_FUNCTION_10_9();
      v131();
      v92 = v185;
      v111 = v167;
      v93 = v84;
      goto LABEL_29;
    }

    v85 = &qword_1EC7EB500;
    v86 = &qword_1D561E2A0;
    v87 = v66;
  }

  else
  {
    v85 = &qword_1EC7E9F98;
    v86 = &qword_1D561C420;
    v87 = v186;
  }

  sub_1D4E50004(v87, v85, v86);
LABEL_9:
  sub_1D560D5E8();
  if (qword_1EDD53CC0 != -1)
  {
    OUTLINED_FUNCTION_4_12();
  }

  v88 = v178;
  v89 = __swift_project_value_buffer(v178, qword_1EDD53CC8);
  (*(v40 + 16))(v58, v89, v88);
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v88);
  v90 = *(v45 + 48);
  v91 = v88;
  sub_1D4E69910(v60, v50, &qword_1EC7F6DF0, &qword_1D561D1E0);
  sub_1D4E69910(v58, &v50[v90], &qword_1EC7F6DF0, &qword_1D561D1E0);
  OUTLINED_FUNCTION_11_2(v50);
  if (v96)
  {
    OUTLINED_FUNCTION_12_16(v58);
    OUTLINED_FUNCTION_12_16(v60);
    OUTLINED_FUNCTION_11_2(&v50[v90]);
    v92 = v185;
    if (v96)
    {
      sub_1D4E50004(v50, &qword_1EC7F6DF0, &qword_1D561D1E0);
      v93 = v179;
      v94 = v175;
LABEL_27:
      v127 = *MEMORY[0x1E69764D8];
      v128 = OUTLINED_FUNCTION_8_14();
      v129(v128);
      v111 = v167;
      goto LABEL_29;
    }
  }

  else
  {
    v95 = v163;
    sub_1D4E69910(v50, v163, &qword_1EC7F6DF0, &qword_1D561D1E0);
    OUTLINED_FUNCTION_11_2(&v50[v90]);
    if (!v96)
    {
      v115 = v164;
      (*(v40 + 32))(v164, &v50[v90], v91);
      sub_1D4F188C0(&qword_1EDD53C20, MEMORY[0x1E6974F80]);
      v116 = sub_1D5614D18();
      v117 = *(v40 + 8);
      v117(v115, v91);
      OUTLINED_FUNCTION_10_9();
      sub_1D4E50004(v118, v119, v120);
      OUTLINED_FUNCTION_10_9();
      sub_1D4E50004(v121, v122, v123);
      v117(v163, v91);
      OUTLINED_FUNCTION_10_9();
      sub_1D4E50004(v124, v125, v126);
      v92 = v185;
      v93 = v179;
      v94 = v175;
      if (v116)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    OUTLINED_FUNCTION_12_16(v58);
    OUTLINED_FUNCTION_12_16(v60);
    (*(v40 + 8))(v95, v91);
  }

  sub_1D4E50004(v50, &qword_1EC7EB4F8, &qword_1D561E298);
  v93 = v179;
  v94 = v175;
LABEL_20:
  v157 = v40;
  v97 = v177;
  if (qword_1EDD5D8A8 != -1)
  {
    swift_once();
  }

  v98 = sub_1D560C758();
  __swift_project_value_buffer(v98, qword_1EDD76DC8);
  v99 = *(v97 + 16);
  v100 = v162;
  v101 = v167;
  v99(v162, v185, v167);
  v102 = sub_1D560C738();
  LODWORD(v163) = sub_1D56156B8();
  if (os_log_type_enabled(v102, v163))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v186[0] = v104;
    *v103 = 136446210;
    v99(v176, v100, v101);
    v105 = sub_1D5614DB8();
    v107 = v106;
    (*(v97 + 8))(v100, v101);
    v108 = sub_1D4E6835C(v105, v107, v186);

    *(v103 + 4) = v108;
    _os_log_impl(&dword_1D4E3F000, v102, v163, "Unable to derive playlist type from legacy model and identifier set inner type value is not playlistFolder, defaulting to .regular: %{public}s", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v104);
    v109 = v104;
    v93 = v179;
    MEMORY[0x1DA6ED200](v109, -1, -1);
    v110 = v103;
    v94 = v175;
    MEMORY[0x1DA6ED200](v110, -1, -1);
  }

  else
  {

    (*(v97 + 8))(v100, v101);
  }

  v111 = v101;
  v112 = *MEMORY[0x1E69764F8];
  v113 = OUTLINED_FUNCTION_8_14();
  v114(v113);
  v40 = v157;
  v92 = v185;
LABEL_29:
  sub_1D560D4F8();
  v132 = v165;
  (*(v94 + 104))(v165, *MEMORY[0x1E69764D8], v93);
  v133 = sub_1D5612538();
  v134 = *(v94 + 8);
  (v134)(v132, v93);
  v175 = v134;
  if (v133)
  {
    if (qword_1EDD53CC0 != -1)
    {
      OUTLINED_FUNCTION_4_12();
    }

    __swift_project_value_buffer(v178, qword_1EDD53CC8);
    v135 = v168;
    sub_1D560D588();
    v136 = v176;
    v137 = v166;
    sub_1D560F7D8();
    (*(v169 + 8))(v135, v170);
    OUTLINED_FUNCTION_9_12();
    v139 = *(v138 - 256);
    v140 = v111;
    v141(v139, v136, v111);
    v142 = v173;
    sub_1D4E69910(v173, v186, &qword_1EC7EEC40, &unk_1D561C070);
    v143 = v158;
    Playlist.Folder.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v139, v137, v186, v158);
    swift_unknownObjectRelease();
    sub_1D4E50004(v142, &qword_1EC7EEC40, &unk_1D561C070);
    v144 = *(v134 + 8);
    v144(v92, v140);
    v144(v136, v140);
    sub_1D4E50004(v183, &unk_1EC7EBF30, &qword_1D561C8C0);
    (v175)(v184, v179);
    (*(v181 + 8))(v180, v182);
    sub_1D4F1870C(v143, v174);
  }

  else
  {
    v145 = v164;
    sub_1D560D968();
    v146 = v168;
    sub_1D560D588();
    v147 = v176;
    sub_1D560F7D8();
    (*(v169 + 8))(v146, v170);
    (*(v40 + 8))(v145, v178);
    OUTLINED_FUNCTION_9_12();
    v149 = v111;
    v150(*(v148 - 256), v147, v111);
    v151 = v173;
    sub_1D4E69910(v173, v186, &qword_1EC7EEC40, &unk_1D561C070);
    v152 = v93;
    v153 = v159;
    sub_1D56144C8();
    swift_unknownObjectRelease();
    sub_1D4E50004(v151, &qword_1EC7EEC40, &unk_1D561C070);
    v154 = *(v145 + 8);
    v154(v185, v149);
    v154(v147, v149);
    sub_1D4E50004(v183, &unk_1EC7EBF30, &qword_1D561C8C0);
    (v175)(v184, v152);
    (*(v181 + 8))(v180, v182);
    (*(v160 + 32))(v174, v153, v161);
  }

  type metadata accessor for Playlist.Folder.Item();
  return swift_storeEnumTagMultiPayload();
}

uint64_t Playlist.Folder.Item.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976810];
  v3 = sub_1D5613158();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t Playlist.Folder.Item.convertToLegacyModelStorageDictionary(for:)()
{
  v1 = v0;
  v2 = sub_1D5614898();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = type metadata accessor for Playlist.Folder();
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = type metadata accessor for Playlist.Folder.Item();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  sub_1D4F18770(v1, v23 - v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v10, v24, v2);
    v25 = sub_1D56146A8();
    (*(v5 + 8))(v10, v2);
  }

  else
  {
    sub_1D4F1870C(v24, v17);
    v25 = Playlist.Folder.convertToLegacyModelStorageDictionary(for:)();
    sub_1D4F187D4(v17);
  }

  return v25;
}

uint64_t sub_1D4F185D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4F188C0(&qword_1EDD52C80, type metadata accessor for Playlist.Folder.Item);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D4F18684()
{
  sub_1D4F188C0(&qword_1EDD52C78, type metadata accessor for Playlist.Folder.Item);

  return sub_1D56132F8();
}

uint64_t sub_1D4F1870C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F18770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F187D4(uint64_t a1)
{
  v2 = type metadata accessor for Playlist.Folder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F188C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ComposerPropertyProvider()
{
  result = qword_1EC7EB510;
  if (!qword_1EC7EB510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4F1897C()
{
  sub_1D4F18AF4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4F18BA8(319, &qword_1EDD5CF48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D4F18B44();
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1D4F18BA8(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    v3 = sub_1D560D838();
    if (v7 > 0x3F)
    {
      return v3;
    }

    v3 = sub_1D5610088();
    if (v8 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1D4E5CF94();
      v1 = v9;
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1D4F18AF4()
{
  if (!qword_1EDD5F070)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5F070);
    }
  }
}

void sub_1D4F18B44()
{
  if (!qword_1EC7EB520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7EB520);
    }
  }
}

void sub_1D4F18BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D4F18C54()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB560, &qword_1D56442E0);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D567EB40);
    v43 = v3;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v40 = 24;
    goto LABEL_26;
  }

  v19 = v18;
  v20 = qword_1EC7E90E0;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_9_13();
  }

  *&v41 = qword_1EC87C348;
  v43 = v19;
  sub_1D4EC5794(&qword_1EC7EB568, &qword_1EC7EB560, &qword_1D56442E0);
  if ((OUTLINED_FUNCTION_11_11() & 1) == 0)
  {
    v25 = qword_1EC7E90E8;

    if (v25 != -1)
    {
      OUTLINED_FUNCTION_8_15();
    }

    *&v41 = qword_1EC87C350;
    v43 = v19;
    v26 = OUTLINED_FUNCTION_11_11();

    if (v26)
    {
      v27 = type metadata accessor for ComposerPropertyProvider();
      sub_1D4E69910(v0 + *(v27 + 20), v17, &qword_1EC7EA3B8, &unk_1D561E370);
      v28 = sub_1D560C328();
      OUTLINED_FUNCTION_10(v17);
      if (!v29)
      {
        *(&v42 + 1) = v28;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
        (*(*(v28 - 8) + 32))(boxed_opaque_existential_0, v17, v28);
LABEL_22:

        goto LABEL_23;
      }

      v30 = &qword_1EC7EA3B8;
      v31 = &unk_1D561E370;
      v32 = v17;
    }

    else
    {
      v33 = qword_1EC7E90F0;

      if (v33 != -1)
      {
        OUTLINED_FUNCTION_0_18();
      }

      *&v41 = qword_1EC7F1DE8;
      v43 = v19;
      v34 = OUTLINED_FUNCTION_11_11();

      if ((v34 & 1) == 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_30();
          sub_1D5615B68();
          OUTLINED_FUNCTION_16_6();
          MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
          v43 = v3;
          sub_1D560CDE8();
          sub_1D5615D48();
          OUTLINED_FUNCTION_33_0();
          OUTLINED_FUNCTION_28();
          v40 = 37;
LABEL_26:
          *&v41 = v40;
          OUTLINED_FUNCTION_12_3();
          __break(1u);
        }
      }

      v35 = type metadata accessor for ComposerPropertyProvider();
      sub_1D4E69910(v1 + *(v35 + 24), v11, &qword_1EC7EB508, &unk_1D5643E20);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
      OUTLINED_FUNCTION_10(v11);
      if (!v29)
      {
        *(&v42 + 1) = v36;
        v38 = __swift_allocate_boxed_opaque_existential_0(&v41);
        (*(*(v36 - 8) + 32))(v38, v11, v36);
        goto LABEL_22;
      }

      v30 = &qword_1EC7EB508;
      v31 = &unk_1D5643E20;
      v32 = v11;
    }

    sub_1D4E50004(v32, v30, v31);
    v41 = 0u;
    v42 = 0u;
LABEL_23:
    v39 = v42;
    *v5 = v41;
    *(v5 + 16) = v39;
    goto LABEL_24;
  }

  v21 = v0[1];
  if (v21)
  {
    v22 = *v1;
    v23 = v1[1];

    v24 = MEMORY[0x1E69E6158];
  }

  else
  {
    v24 = 0;
    v22 = 0;
  }

  *v5 = v22;
  *(v5 + 8) = v21;
  *(v5 + 16) = 0;
  *(v5 + 24) = v24;
LABEL_24:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F190C0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB560, &qword_1D56442E0);
  if (swift_dynamicCastClass())
  {
    v2 = qword_1EC7E90F0;
    swift_retain_n();
    if (v2 != -1)
    {
      OUTLINED_FUNCTION_0_18();
    }

    sub_1D4EC5794(&qword_1EC7EB568, &qword_1EC7EB560, &qword_1D56442E0);
    v3 = sub_1D5614D18();

    if (v3)
    {
      swift_getKeyPath();
      sub_1D4F1ABA0(&qword_1EC7EB540, type metadata accessor for ComposerPropertyProvider);
      sub_1D5612238();

      return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
    }

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000027, 0x80000001D567EAF0);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  result = OUTLINED_FUNCTION_12_3();
  __break(1u);
  return result;
}

void sub_1D4F19344()
{
  OUTLINED_FUNCTION_47();
  v38 = v0;
  v2 = v1;
  v4 = v3;
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB548, &qword_1D56648E0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v21 = type metadata accessor for ComposerPropertyProvider();
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB550, &unk_1D561E4F0);
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D567EA50);
    v40 = v4;
    v35 = *(v5 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v36 = 58;
LABEL_14:
    v37 = v36;
    OUTLINED_FUNCTION_12_3();
    __break(1u);
    return;
  }

  v29 = v28;
  sub_1D4E628D4(v2, v39);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    sub_1D4E50004(v20, &qword_1EC7EB548, &qword_1D56648E0);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000030, 0x80000001D567EA80);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v36 = 61;
    goto LABEL_14;
  }

  __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
  sub_1D4F1A9D4(v20, v27);
  v30 = qword_1EC7E90F0;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_0_18();
  }

  v39[0] = qword_1EC7F1DE8;
  v40 = v29;
  sub_1D4EC5794(&qword_1EC7EB558, &qword_1EC7EB550, &unk_1D561E4F0);
  v31 = sub_1D5614D18();

  if ((v31 & 1) == 0)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D567EAC0);
    v40 = v29;
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v36 = 69;
    goto LABEL_14;
  }

  sub_1D4E69910(v27 + *(v21 + 24), v12, &qword_1EC7EB508, &unk_1D5643E20);
  sub_1D4F1AA38(v27);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  OUTLINED_FUNCTION_57(v12, 1, v32);
  v33 = v38;
  if (v34)
  {
    sub_1D4E69910(v38 + *(v21 + 24), v14, &qword_1EC7EB508, &unk_1D5643E20);
    OUTLINED_FUNCTION_57(v12, 1, v32);
    if (!v34)
    {
      sub_1D4E50004(v12, &qword_1EC7EB508, &unk_1D5643E20);
    }
  }

  else
  {
    (*(*(v32 - 8) + 32))(v14, v12, v32);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v32);
  }

  sub_1D4F1AA94(v14, v33 + *(v21 + 24));
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F19824()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  if (qword_1EC7E90E0 != -1)
  {
    OUTLINED_FUNCTION_9_13();
  }

  *(v0 + 32) = qword_1EC87C348;
  v1 = qword_1EC7E90E8;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_8_15();
  }

  *(v0 + 40) = qword_1EC87C350;
  v2 = qword_1EC7E90F0;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_0_18();
  }

  *(v0 + 48) = qword_1EC7F1DE8;
  qword_1EC87BE50 = v0;
}

void sub_1D4F19914()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v83 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v84 = v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB570, &qword_1D561E520);
  OUTLINED_FUNCTION_14(v85);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v86 = v19;
  v20 = sub_1D560C328();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v79 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  OUTLINED_FUNCTION_14(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v79 - v39;
  v41 = v3[1];
  v42 = v1[1];
  if (!v41)
  {
    if (v42)
    {
      goto LABEL_30;
    }

LABEL_10:
    v79 = v6;
    v81 = v4;
    v80 = type metadata accessor for ComposerPropertyProvider();
    v44 = *(v80 + 20);
    v45 = *(v35 + 48);
    v82 = v3;
    sub_1D4E69910(v3 + v44, v40, &qword_1EC7EA3B8, &unk_1D561E370);
    v46 = v1 + v44;
    v47 = v1;
    sub_1D4E69910(v46, &v40[v45], &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_10(v40);
    if (v43)
    {
      OUTLINED_FUNCTION_10(&v40[v45]);
      if (v43)
      {
        sub_1D4E50004(v40, &qword_1EC7EA3B8, &unk_1D561E370);
LABEL_20:
        v55 = v80;
        v56 = *(v80 + 24);
        v40 = v86;
        v57 = *(v85 + 48);
        v58 = v82;
        sub_1D4E69910(v82 + v56, v86, &qword_1EC7EB508, &unk_1D5643E20);
        sub_1D4E69910(v47 + v56, &v40[v57], &qword_1EC7EB508, &unk_1D5643E20);
        v59 = v81;
        OUTLINED_FUNCTION_57(v40, 1, v81);
        if (v43)
        {
          OUTLINED_FUNCTION_57(&v40[v57], 1, v59);
          if (v43)
          {
            sub_1D4E50004(v40, &qword_1EC7EB508, &unk_1D5643E20);
            goto LABEL_32;
          }
        }

        else
        {
          v60 = v84;
          sub_1D4E69910(v40, v84, &qword_1EC7EB508, &unk_1D5643E20);
          OUTLINED_FUNCTION_57(&v40[v57], 1, v59);
          if (!v61)
          {
            v62 = v79;
            v63 = &v40[v57];
            v64 = v83;
            (*(v79 + 32))(v83, v63, v59);
            sub_1D4F1AB04(&qword_1EC7EB580, &qword_1EC7EB588);
            v65 = sub_1D5614D18();
            v66 = *(v62 + 8);
            v66(v64, v59);
            v66(v60, v59);
            sub_1D4E50004(v40, &qword_1EC7EB508, &unk_1D5643E20);
            if ((v65 & 1) == 0)
            {
              goto LABEL_30;
            }

LABEL_32:
            OUTLINED_FUNCTION_17_6(v55[7]);
            sub_1D4EF6F7C();
            if ((v67 & 1) == 0)
            {
              goto LABEL_30;
            }

            v68 = v55[8];
            if ((sub_1D560D6E8() & 1) == 0)
            {
              goto LABEL_30;
            }

            v69 = v55[9];
            if ((sub_1D4F3B22C() & 1) == 0)
            {
              goto LABEL_30;
            }

            v70 = v55[10];
            v71 = (v58 + v70);
            v72 = *(v58 + v70 + 8);
            v73 = (v47 + v70);
            v74 = v73[1];
            if (v72)
            {
              if (!v74)
              {
                goto LABEL_30;
              }

              v75 = *v71 == *v73 && v72 == v74;
              if (!v75 && (sub_1D5616168() & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            else if (v74)
            {
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_17_6(v55[11]);
            sub_1D4F286E0();
            if (v76)
            {
              OUTLINED_FUNCTION_17_6(v55[12]);
              sub_1D4F286E0();
              if (v77)
              {
                OUTLINED_FUNCTION_17_6(v55[13]);
                sub_1D4F286E0();
                if (v78)
                {
                  OUTLINED_FUNCTION_17_6(v55[14]);
                  sub_1D4F286E0();
                }
              }
            }

            goto LABEL_30;
          }

          (*(v79 + 8))(v60, v59);
        }

        v49 = &qword_1EC7EB570;
        v50 = &qword_1D561E520;
LABEL_29:
        sub_1D4E50004(v40, v49, v50);
        goto LABEL_30;
      }
    }

    else
    {
      sub_1D4E69910(v40, v34, &qword_1EC7EA3B8, &unk_1D561E370);
      OUTLINED_FUNCTION_10(&v40[v45]);
      if (!v48)
      {
        (*(v23 + 32))(v28, &v40[v45], v20);
        OUTLINED_FUNCTION_6_16();
        sub_1D4F1ABA0(v51, v52);
        v53 = sub_1D5614D18();
        v54 = *(v23 + 8);
        v54(v28, v20);
        v54(v34, v20);
        sub_1D4E50004(v40, &qword_1EC7EA3B8, &unk_1D561E370);
        if ((v53 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }

      (*(v23 + 8))(v34, v20);
    }

    v49 = &qword_1EC7EB578;
    v50 = &unk_1D5644D10;
    goto LABEL_29;
  }

  if (v42)
  {
    v43 = *v3 == *v1 && v41 == v42;
    if (v43 || (sub_1D5616168() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_46();
}

void sub_1D4F19F88()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v44 = v4;
  v45 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v43 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v15 = sub_1D560C328();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - v28;
  if (v0[1])
  {
    v30 = *v0;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v31 = type metadata accessor for ComposerPropertyProvider();
  sub_1D4E69910(v0 + v31[5], v29, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(v29, 1, v15);
  if (v32)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v18 + 32))(v23, v29, v15);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_6_16();
    sub_1D4F1ABA0(v33, v34);
    sub_1D5614CB8();
    (*(v18 + 8))(v23, v15);
  }

  sub_1D4E69910(v0 + v31[6], v14, &qword_1EC7EB508, &unk_1D5643E20);
  v35 = v45;
  OUTLINED_FUNCTION_57(v14, 1, v45);
  if (v32)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v37 = v43;
    v36 = v44;
    (*(v44 + 32))(v43, v14, v35);
    OUTLINED_FUNCTION_27();
    sub_1D4F1AB04(&qword_1EC7EB590, &qword_1EC7EB598);
    sub_1D5614CB8();
    (*(v36 + 8))(v37, v35);
  }

  OUTLINED_FUNCTION_32_2(v31[7]);
  sub_1D4F070FC();
  v38 = v31[8];
  sub_1D560D838();
  sub_1D4F1ABA0(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  OUTLINED_FUNCTION_22_2();
  v39 = v31[9];
  sub_1D5610088();
  sub_1D4F1ABA0(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
  OUTLINED_FUNCTION_22_2();
  v40 = (v1 + v31[10]);
  if (v40[1])
  {
    v41 = *v40;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2(v31[11]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v31[12]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v31[13]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v31[14]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F1A3CC()
{
  sub_1D56162D8();
  sub_1D4F19F88();
  return sub_1D5616328();
}

void (*sub_1D4F1A414(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D4F18C54();
  return sub_1D4F1A480;
}

void sub_1D4F1A480(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    sub_1D4E69910(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D4F190C0(v2 + 32);
    sub_1D4E50004(v2, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {

    sub_1D4F190C0(v2);
  }

  free(v2);
}

uint64_t sub_1D4F1A540()
{
  sub_1D56162D8();
  sub_1D4F19F88();
  return sub_1D5616328();
}

uint64_t sub_1D4F1A5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D4F1ABA0(&qword_1EC7EB540, type metadata accessor for ComposerPropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D4F1A664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4F1A6D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D4F1A74C(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1D4F1A770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4F1A7E4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D4F1A840(uint64_t a1)
{
  v2 = sub_1D4F1ABA0(&qword_1EC7EB540, type metadata accessor for ComposerPropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D4F1A8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4F1ABA0(&qword_1EC7EB528, type metadata accessor for ComposerPropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D4F1A950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4F1ABA0(&qword_1EC7EB538, type metadata accessor for ComposerPropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D4F1A9D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposerPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F1AA38(uint64_t a1)
{
  v2 = type metadata accessor for ComposerPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F1AA94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F1AB04(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
    sub_1D4F1ABA0(a2, MEMORY[0x1E6976D28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4F1ABA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4F1ABE8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976A78];
  v3 = sub_1D5613578();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t CreditArtist.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v136[2] = a5;
  v150 = a2;
  v151 = a4;
  v148 = a6;
  v149 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A0, &qword_1D5631010);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v145 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v153 = v26;
  OUTLINED_FUNCTION_70_0();
  v155 = sub_1D5610E58();
  v27 = OUTLINED_FUNCTION_4(v155);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v141 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v140 = v44;
  OUTLINED_FUNCTION_70_0();
  v45 = sub_1D5610F78();
  v46 = OUTLINED_FUNCTION_4(v45);
  v146 = v47;
  v147 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  v152 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  v56 = v136 - v55;
  v57 = type metadata accessor for CreditArtistPropertyProvider();
  v58 = OUTLINED_FUNCTION_14(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v62 = v136 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v137 = v63;
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
  v67 = v57[7];
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v144 = v67;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  if (qword_1EC7E9090 != -1)
  {
    swift_once();
  }

  v72 = sub_1D560D9A8();
  __swift_project_value_buffer(v72, qword_1EC7F1B20);
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  v77 = v57[9];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C8, &unk_1D561F130);
  sub_1D56105B8();
  sub_1D4E50004(v56, &qword_1EC7EB5C0, &unk_1D56223C0);
  v79 = &v62[v57[10]];
  sub_1D5610658();
  v154 = sub_1D5610618();
  v142 = v80;
  v81 = sub_1D56105C8();
  v82 = sub_1D56105F8();
  v83 = sub_1D56105E8();
  v156 = a1;
  v84 = sub_1D56105A8();
  if (qword_1EC7E9690 != -1)
  {
    swift_once();
  }

  v85 = qword_1EC87C670;
  if (qword_1EC87C670 >> 62)
  {
    v134 = qword_1EC87C670 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EC87C670 < 0)
    {
      v134 = qword_1EC87C670;
    }

    v136[0] = v134;
    sub_1D560CDE8();

    v135 = sub_1D5615E18();

    v85 = v135;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v62[v57[8]] = v85;
  v86 = &v62[v57[11]];
  v87 = v142;
  *v86 = v154;
  v86[1] = v87;
  *&v62[v57[12]] = v81;
  *&v62[v57[13]] = v82;
  *&v62[v57[14]] = v83;
  v154 = v57;
  *&v62[v57[15]] = v84;
  v88 = v152;
  v142 = v78;
  sub_1D5610648();
  v89 = v138;
  v90 = v88;
  sub_1D5610E68();
  v91 = v139;
  sub_1D5610E38();
  v92 = *(v29 + 8);
  v92(v89, v155);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v91, 1, v93) == 1)
  {
    sub_1D4E50004(v91, &qword_1EC7EB5B8, &unk_1D56206A0);
    v94 = 1;
    v95 = v140;
  }

  else
  {
    v95 = v140;
    sub_1D5610758();
    OUTLINED_FUNCTION_24_0(v93);
    (*(v96 + 8))(v91, v93);
    v94 = 0;
  }

  __swift_storeEnumTagSinglePayload(v95, v94, 1, v137);
  v97 = *(v154 + 24);
  v98 = &v62[*(v154 + 20)];
  sub_1D4F1C350(v95, v62, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v99 = v141;
  sub_1D5610E68();
  v100 = sub_1D5610E18();
  v102 = v101;
  v103 = v155;
  v92(v99, v155);
  *v98 = v100;
  v98[1] = v102;
  sub_1D5610E68();
  v104 = sub_1D5610E48();
  v105 = v99;
  v106 = v90;
  v92(v105, v103);
  *&v62[v97] = v104;
  v107 = v145;
  sub_1D5610EC8();
  v108 = sub_1D5610EB8();
  if (__swift_getEnumTagSinglePayload(v107, 1, v108) == 1)
  {
    sub_1D4E50004(v107, &qword_1EC7EB5A0, &qword_1D5631010);
    v109 = 1;
    v110 = v156;
    v112 = v150;
    v111 = v151;
    v113 = v142;
    v114 = v154;
  }

  else
  {
    v115 = v136[3];
    sub_1D5610E98();
    OUTLINED_FUNCTION_24_0(v108);
    (*(v116 + 8))(v107, v108);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v115, 1, v117);
    v110 = v156;
    v112 = v150;
    v111 = v151;
    v113 = v142;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(v115, &qword_1EC7EB5A8, &unk_1D5622F00);
      v109 = 1;
    }

    else
    {
      sub_1D560CD98();
      v119 = v115;
      v120 = v136[1];
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v121, v122, v123, v124);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_8_16();
      sub_1D4F1C568(v125, v126);
      sub_1D5612368();
      sub_1D4E50004(v120, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0(v117);
      v128 = v119;
      v106 = v152;
      (*(v127 + 8))(v128, v117);
      v109 = 0;
    }

    v114 = v154;
  }

  v129 = v153;
  __swift_storeEnumTagSinglePayload(v153, v109, 1, v143);
  sub_1D4F1C350(v129, &v62[v144], &off_1EC7EB5B0, &unk_1D5632170);
  v157[3] = v114;
  v157[4] = sub_1D4F1C568(&qword_1EC7EB5D0, type metadata accessor for CreditArtistPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v157);
  sub_1D4F1C3A0(v62, boxed_opaque_existential_0);
  CreditArtist.init(propertyProvider:)(v157, v148);

  OUTLINED_FUNCTION_24_0(v111);
  (*(v131 + 8))(v112, v111);
  OUTLINED_FUNCTION_24_0(v113);
  (*(v132 + 8))(v110, v113);
  (*(v146 + 8))(v106, v147);
  return sub_1D4F1C404(v62);
}

uint64_t CreditArtist.convertToCloudResource<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v145 = a3;
  v144 = a2;
  v143 = a1;
  v160 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v159 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D5610088();
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v166 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v154 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v152 = v25;
  OUTLINED_FUNCTION_70_0();
  v26 = sub_1D5612B78();
  v27 = OUTLINED_FUNCTION_4(v26);
  v157 = v28;
  v158 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v156 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5F0, &unk_1D5631000);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v151 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5F8, &qword_1D561E528);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  v150 = v41;
  OUTLINED_FUNCTION_70_0();
  v155 = sub_1D5610F78();
  v42 = OUTLINED_FUNCTION_4(v155);
  v153 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13();
  v165 = v46;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_2();
  v164 = v48;
  OUTLINED_FUNCTION_70_0();
  v142 = sub_1D5613578();
  v49 = OUTLINED_FUNCTION_4(v142);
  v141 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  v54 = v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v61 = OUTLINED_FUNCTION_22(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13();
  v65 = v64;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_2();
  v163 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A0, &qword_1D5631010);
  v69 = OUTLINED_FUNCTION_22(v68);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13();
  v149 = v72;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v73);
  v146 = &v141 - v74;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_2();
  v168 = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v77);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v141 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v141 - v87;
  v89 = sub_1D5610E58();
  v90 = OUTLINED_FUNCTION_4(v89);
  v161 = v91;
  v162 = v90;
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_13();
  v148 = v94;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13_2();
  v167 = v96;
  if (qword_1EC7E9058 != -1)
  {
    swift_once();
  }

  v97 = sub_1D56140F8();
  sub_1D4F1C568(&qword_1EC7EB600, type metadata accessor for CreditArtist);
  sub_1D4F1C568(&qword_1EC7EB608, type metadata accessor for CreditArtist);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v82, 1, v97) == 1)
  {
    sub_1D4E50004(v82, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v98 = 1;
  }

  else
  {
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0(v97);
    (*(v99 + 8))(v82, v97);
    v98 = 0;
  }

  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v88, v98, 1, v100);
  CreditArtist.name.getter();
  if (qword_1EC7E9068 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D560EC28();
  sub_1D5610E28();
  v101 = sub_1D5610EB8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v101);
  if (qword_1EC7E9070 != -1)
  {
    swift_once();
  }

  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v106 = v163;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v106, 1, v105) != 1)
  {
    sub_1D4F1C460(v106, v65, &off_1EC7EB5B0, &unk_1D5632170);
    if (__swift_getEnumTagSinglePayload(v65, 1, v105) == 1)
    {
      sub_1D4E50004(v65, &off_1EC7EB5B0, &unk_1D5632170);
      v107 = 1;
      v108 = v147;
    }

    else
    {
      sub_1D5613EF8();
      OUTLINED_FUNCTION_8_16();
      sub_1D4F1C568(v109, v110);
      sub_1D4F1ABE8(v54);
      v108 = v147;
      sub_1D560DA98();
      (*(v141 + 8))(v54, v142);
      OUTLINED_FUNCTION_24_0(v105);
      (*(v111 + 8))(v65, v105);
      v107 = 0;
    }

    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    __swift_storeEnumTagSinglePayload(v108, v107, 1, v112);
    v113 = v146;
    sub_1D5610EA8();
    v114 = v168;
    sub_1D4E50004(v168, &qword_1EC7EB5A0, &qword_1D5631010);
    __swift_storeEnumTagSinglePayload(v113, 0, 1, v101);
    sub_1D4F1C4B0(v113, v114);
  }

  v115 = *v5;
  v116 = v5[1];
  (*(v161 + 16))(v148, v167, v162);
  sub_1D4F1C460(v168, v149, &qword_1EC7EB5A0, &qword_1D5631010);
  sub_1D5610E78();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
  sub_1D5610F68();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v124);

  v125 = v164;
  sub_1D5610F08();
  v126 = *(type metadata accessor for CreditArtist() + 20);
  v127 = v152;
  sub_1D5611A28();
  v128 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v127, 0, 1, v128);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v132);
  v133 = v156;
  sub_1D5612B38();
  v134 = v153;
  v135 = v155;
  (*(v153 + 16))(v165, v125, v155);
  sub_1D5611A98();
  v154 = sub_1D5611A88();
  v152 = v136;
  v138 = v157;
  v137 = v158;
  v139 = v159;
  (*(v157 + 16))(v159, v133, v158);
  __swift_storeEnumTagSinglePayload(v139, 0, 1, v137);
  v151 = sub_1D5611A38();
  v150 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D4F1C568(&qword_1EC7EB610, MEMORY[0x1E6976090]);
  sub_1D5610628();
  (*(v138 + 8))(v133, v137);
  (*(v134 + 8))(v164, v135);
  sub_1D4E50004(v168, &qword_1EC7EB5A0, &qword_1D5631010);
  (*(v161 + 8))(v167, v162);
  return sub_1D4E50004(v163, &off_1EC7EB5B0, &unk_1D5632170);
}

uint64_t sub_1D4F1C2E4()
{
  sub_1D4F1C568(&qword_1EC7EB618, type metadata accessor for CreditArtist);

  return sub_1D5612668();
}

uint64_t sub_1D4F1C350(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1D4F1C3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreditArtistPropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F1C404(uint64_t a1)
{
  v2 = type metadata accessor for CreditArtistPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F1C460(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1D4F1C4B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A0, &qword_1D5631010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F1C568(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for UserProfilePropertyProvider()
{
  result = qword_1EDD54EE0;
  if (!qword_1EDD54EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4F1C624()
{
  sub_1D4E6D600(319, &qword_1EC7EB628, &qword_1EC7EB630, &unk_1D561E5E0);
  v1 = v0;
  if (v2 > 0x3F)
  {
    return v1;
  }

  sub_1D4F1C90C(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
  v1 = v3;
  if (v4 > 0x3F)
  {
    return v1;
  }

  sub_1D4E518A0(319, &qword_1EDD5F550);
  v1 = v5;
  if (v6 > 0x3F)
  {
    return v1;
  }

  sub_1D4E518A0(319, &qword_1EDD52708);
  if (v8 > 0x3F)
  {
    return v7;
  }

  sub_1D4E518A0(319, &qword_1EDD5F070);
  if (v10 > 0x3F)
  {
    return v9;
  }

  sub_1D4E6D600(319, &qword_1EDD5D788, &qword_1EC7EA5B8, &qword_1D561C4E0);
  v1 = v11;
  if (v12 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD53B60, &qword_1EC7EA538, &qword_1D561C490);
    if (v13 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD5D780, &qword_1EC7EA378, &qword_1D561D140);
      v1 = v14;
      if (v15 <= 0x3F)
      {
        sub_1D4F1C90C(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
        v1 = v16;
        if (v17 <= 0x3F)
        {
          v1 = sub_1D560D838();
          if (v18 <= 0x3F)
          {
            v1 = sub_1D5610088();
            if (v19 <= 0x3F)
            {
              sub_1D4E5CF94();
              v1 = v20;
              if (v21 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }

      return v1;
    }

    return v7;
  }

  return v1;
}

void sub_1D4F1C90C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D4F1C9B8()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v140 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v141 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_2();
  v142 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v139 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v143 = v23;
  OUTLINED_FUNCTION_23();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v138 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v138 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_59_0();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v138 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  v40 = swift_dynamicCastClass();
  if (!v40)
  {
    *&v146 = 0;
    *(&v146 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D567EC90);
    v148 = v2;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_129;
  }

  v41 = v40;
  v144 = v0;
  v145 = v4;
  v42 = qword_1EDD54140;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_47_8();
  }

  *&v146 = qword_1EDD76948;
  v148 = v41;
  sub_1D4EC5794(&qword_1EDD53DF0, &qword_1EC7EB660, &qword_1D561E740);
  OUTLINED_FUNCTION_27_6();
  if (sub_1D5614D18())
  {
    v43 = v145;
    v44 = *v144;
    if (*v144)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB630, &unk_1D561E5E0);
      OUTLINED_FUNCTION_82();
    }

    else
    {
      v0 = 0;
    }

    *v43 = v44;
    v43[1] = 0;
    v43[2] = 0;
    v43[3] = v0;
    goto LABEL_32;
  }

  v45 = qword_1EDD54088;

  if (v45 != -1)
  {
    OUTLINED_FUNCTION_46_8();
  }

  v46 = OUTLINED_FUNCTION_0_19(qword_1EDD768F8);

  if (v46)
  {
    v47 = type metadata accessor for UserProfilePropertyProvider();
    v48 = OUTLINED_FUNCTION_61_4(*(v47 + 20));
    sub_1D4F1C460(v48, v39, v49, v50);
    sub_1D56140F8();
    v51 = OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_10(v51);
    if (!v52)
    {
      *(&v147 + 1) = v0;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v146);
      (*(*(v0 - 1) + 32))(boxed_opaque_existential_0, v39, v0);
LABEL_29:

      goto LABEL_30;
    }

    v53 = v39;
    goto LABEL_19;
  }

  v54 = qword_1EDD54110;

  if (v54 != -1)
  {
    OUTLINED_FUNCTION_45_9();
  }

  OUTLINED_FUNCTION_0_19(qword_1EDD76940);
  OUTLINED_FUNCTION_63();
  if (v54)
  {
    v55 = type metadata accessor for UserProfilePropertyProvider();
    v56 = OUTLINED_FUNCTION_61_4(*(v55 + 24));
    sub_1D4F1C460(v56, v36, v57, v58);
    v59 = sub_1D56140F8();
    OUTLINED_FUNCTION_1(v36);
    if (!v52)
    {
      OUTLINED_FUNCTION_72_3();
      OUTLINED_FUNCTION_15_1();
      (*(v66 + 32))(v67, v36, v59);
      goto LABEL_29;
    }

    v53 = v36;
LABEL_19:
    sub_1D4E50004(v53, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v146 = 0u;
    v147 = 0u;
LABEL_30:
    v68 = v145;
    v69 = v146;
    v70 = v147;
LABEL_31:
    *v68 = v69;
    v68[1] = v70;
    goto LABEL_32;
  }

  v61 = qword_1EDD540D8;

  if (v61 != -1)
  {
    OUTLINED_FUNCTION_44_6();
  }

  OUTLINED_FUNCTION_0_19(qword_1EDD76928);
  OUTLINED_FUNCTION_63();
  if (v61)
  {
    v62 = *(type metadata accessor for UserProfilePropertyProvider() + 28);
LABEL_26:
    v63 = *(v144 + v62);

    v64 = MEMORY[0x1E69E6370];
    if (v63 == 2)
    {
      v64 = 0;
    }

    v65 = v145;
    *v145 = v63 & 1;
    v65[1] = 0;
    v65[2] = 0;
    v65[3] = v64;
    goto LABEL_32;
  }

  v71 = qword_1EDD540B0;

  if (v71 != -1)
  {
    OUTLINED_FUNCTION_42_9();
  }

  OUTLINED_FUNCTION_0_19(qword_1EDD76910);
  OUTLINED_FUNCTION_63();
  if ((v71 & 1) == 0)
  {
    v76 = qword_1EDD54098;

    if (v76 != -1)
    {
      OUTLINED_FUNCTION_41();
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76900);
    OUTLINED_FUNCTION_63();
    if (v76)
    {
      v77 = (v144 + *(type metadata accessor for UserProfilePropertyProvider() + 36));
      v78 = v77[1];
      if (v78)
      {
        v79 = *v77;
        v80 = v77[1];

        v81 = MEMORY[0x1E69E6158];
      }

      else
      {
        v81 = 0;
        v79 = 0;
      }

      v84 = v145;

      *v84 = v79;
      v84[1] = v78;
      v84[2] = 0;
      v84[3] = v81;
      goto LABEL_32;
    }

    v82 = qword_1EDD540F0;

    if (v82 != -1)
    {
      OUTLINED_FUNCTION_40_11();
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76938);
    OUTLINED_FUNCTION_63();
    if (v82)
    {
      v62 = *(type metadata accessor for UserProfilePropertyProvider() + 40);
      goto LABEL_26;
    }

    v83 = qword_1EDD540C8;

    if (v83 != -1)
    {
      OUTLINED_FUNCTION_60_4();
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76920);
    OUTLINED_FUNCTION_63();
    if (v83)
    {
      v62 = *(type metadata accessor for UserProfilePropertyProvider() + 44);
      goto LABEL_26;
    }

    v85 = qword_1EDD540C0;

    if (v85 != -1)
    {
      OUTLINED_FUNCTION_59_5();
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76918);
    OUTLINED_FUNCTION_63();
    if (v85)
    {
      v62 = *(type metadata accessor for UserProfilePropertyProvider() + 48);
      goto LABEL_26;
    }

    v86 = qword_1EDD54148;

    if (v86 != -1)
    {
      OUTLINED_FUNCTION_58_4();
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76950);
    OUTLINED_FUNCTION_63();
    if (v86)
    {
      v62 = *(type metadata accessor for UserProfilePropertyProvider() + 52);
      goto LABEL_26;
    }

    v87 = qword_1EDD54150;

    if (v87 != -1)
    {
      OUTLINED_FUNCTION_56_6();
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76958);
    OUTLINED_FUNCTION_63();
    if (v87)
    {
      v62 = *(type metadata accessor for UserProfilePropertyProvider() + 56);
      goto LABEL_26;
    }

    v88 = qword_1EDD540E8;

    if (v88 != -1)
    {
      OUTLINED_FUNCTION_55_5();
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76930);
    OUTLINED_FUNCTION_63();
    if (v88)
    {
      v62 = *(type metadata accessor for UserProfilePropertyProvider() + 60);
      goto LABEL_26;
    }

    v89 = qword_1EDD54050;

    if (v89 != -1)
    {
      OUTLINED_FUNCTION_54_1();
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD768F0);
    OUTLINED_FUNCTION_63();
    if (v89)
    {
      v62 = *(type metadata accessor for UserProfilePropertyProvider() + 64);
      goto LABEL_26;
    }

    v90 = qword_1EDD54158;

    if (v90 != -1)
    {
      OUTLINED_FUNCTION_53_4();
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76960);
    OUTLINED_FUNCTION_63();
    if (v90)
    {
      v62 = *(type metadata accessor for UserProfilePropertyProvider() + 68);
      goto LABEL_26;
    }

    v91 = qword_1EDD540A0;

    if (v91 != -1)
    {
      OUTLINED_FUNCTION_52_6();
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76908);
    OUTLINED_FUNCTION_63();
    if (v91)
    {
      v92 = (v144 + *(type metadata accessor for UserProfilePropertyProvider() + 72));
      v93 = v92[1];
      if (v93)
      {
        v94 = *v92;
        v95 = v92[1];

        v96 = MEMORY[0x1E69E6158];
      }

      else
      {
        v94 = 0;
        v96 = 0;
      }

      v110 = v145;
      *v145 = v94;
      v110[1] = v93;
      v110[2] = 0;
      v110[3] = v96;
      goto LABEL_32;
    }

    v97 = qword_1EDD54070;

    if (v97 != -1)
    {
      OUTLINED_FUNCTION_13_15();
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD54078);
    OUTLINED_FUNCTION_63();
    if (v97)
    {
      v98 = type metadata accessor for UserProfilePropertyProvider();
      v99 = OUTLINED_FUNCTION_61_4(*(v98 + 76));
      sub_1D4F1C460(v99, v29, v100, v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
      OUTLINED_FUNCTION_1(v29);
      if (!v52)
      {
LABEL_124:
        OUTLINED_FUNCTION_72_3();
        OUTLINED_FUNCTION_15_1();
        (*(v137 + 32))();

LABEL_127:
        v69 = v146;
        v70 = v147;
        v68 = v145;
        goto LABEL_31;
      }

      v102 = &qword_1EC7EA778;
      v103 = &qword_1D5622E60;
      v104 = v29;
    }

    else
    {
      v105 = qword_1EDD54058;

      if (v105 != -1)
      {
        OUTLINED_FUNCTION_12_17();
      }

      OUTLINED_FUNCTION_0_19(qword_1EDD54060);
      OUTLINED_FUNCTION_63();
      if (v105)
      {
        v106 = type metadata accessor for UserProfilePropertyProvider();
        v107 = OUTLINED_FUNCTION_61_4(*(v106 + 80));
        sub_1D4F1C460(v107, v27, v108, v109);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
        OUTLINED_FUNCTION_1(v27);
        if (!v52)
        {
          goto LABEL_124;
        }

        v102 = &qword_1EC7EA778;
        v103 = &qword_1D5622E60;
        v104 = v27;
      }

      else
      {
        v111 = qword_1EDD54120;

        if (v111 != -1)
        {
          OUTLINED_FUNCTION_11_12();
        }

        OUTLINED_FUNCTION_0_19(qword_1EDD54128);
        OUTLINED_FUNCTION_63();
        if (v111)
        {
          v112 = type metadata accessor for UserProfilePropertyProvider();
          v113 = v143;
          sub_1D4F1C460(v144 + *(v112 + 84), v143, &qword_1EC7EA778, &qword_1D5622E60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
          OUTLINED_FUNCTION_1(v113);
          if (!v52)
          {
            goto LABEL_124;
          }

          v102 = &qword_1EC7EA778;
          v103 = &qword_1D5622E60;
          v104 = v143;
        }

        else
        {
          v114 = qword_1EDD540F8;

          if (v114 != -1)
          {
            OUTLINED_FUNCTION_10_10();
          }

          OUTLINED_FUNCTION_0_19(qword_1EDD54100);
          OUTLINED_FUNCTION_63();
          if (v114)
          {
            v115 = type metadata accessor for UserProfilePropertyProvider();
            v116 = OUTLINED_FUNCTION_61_4(*(v115 + 88));
            v117 = v142;
            sub_1D4F1C460(v116, v142, v118, v119);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
            OUTLINED_FUNCTION_1(v117);
            if (!v52)
            {
              goto LABEL_124;
            }

            v102 = &qword_1EC7EB620;
            v103 = &unk_1D561E5B0;
            v104 = v142;
          }

          else
          {
            v120 = qword_1EDD54130;

            if (v120 != -1)
            {
              OUTLINED_FUNCTION_9_14();
            }

            OUTLINED_FUNCTION_0_19(qword_1EDD54138);
            OUTLINED_FUNCTION_63();
            if (v120)
            {
              v121 = type metadata accessor for UserProfilePropertyProvider();
              v122 = OUTLINED_FUNCTION_61_4(*(v121 + 92));
              v123 = v141;
              sub_1D4F1C460(v122, v141, v124, v125);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
              OUTLINED_FUNCTION_1(v123);
              if (!v52)
              {
                goto LABEL_124;
              }

              v102 = &qword_1EC7EB620;
              v103 = &unk_1D561E5B0;
              v104 = v141;
            }

            else
            {
              v126 = qword_1EDD54168;

              if (v126 != -1)
              {
                OUTLINED_FUNCTION_8_17();
              }

              OUTLINED_FUNCTION_0_19(qword_1EDD54170);
              OUTLINED_FUNCTION_63();
              if (v126)
              {
                v127 = type metadata accessor for UserProfilePropertyProvider();
                v128 = OUTLINED_FUNCTION_61_4(*(v127 + 96));
                v129 = v139;
                sub_1D4F1C460(v128, v139, v130, v131);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
                OUTLINED_FUNCTION_1(v129);
                if (!v52)
                {
                  goto LABEL_124;
                }

                v102 = &qword_1EC7EA778;
                v103 = &qword_1D5622E60;
                v104 = v139;
              }

              else
              {
                v39 = qword_1EDD54040;

                if (v39 != -1)
                {
                  goto LABEL_130;
                }

                while (1)
                {
                  OUTLINED_FUNCTION_0_19(qword_1EDD54048);
                  OUTLINED_FUNCTION_63();
                  if (v39)
                  {
                    break;
                  }

                  *&v146 = 0;
                  *(&v146 + 1) = 0xE000000000000000;
                  sub_1D5615B68();
                  MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
                  v148 = v2;
                  sub_1D560CDE8();
                  sub_1D5615D48();
                  OUTLINED_FUNCTION_33_0();
LABEL_129:
                  OUTLINED_FUNCTION_64_6();
                  __break(1u);
LABEL_130:
                  OUTLINED_FUNCTION_6_17();
                }

                v132 = type metadata accessor for UserProfilePropertyProvider();
                v133 = OUTLINED_FUNCTION_61_4(*(v132 + 100));
                v134 = v140;
                sub_1D4F1C460(v133, v140, v135, v136);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
                OUTLINED_FUNCTION_1(v134);
                if (!v52)
                {
                  goto LABEL_124;
                }

                v102 = &qword_1EC7EA788;
                v103 = &unk_1D56223A0;
                v104 = v140;
              }
            }
          }
        }
      }
    }

    sub_1D4E50004(v104, v102, v103);
    v146 = 0u;
    v147 = 0u;
    goto LABEL_127;
  }

  v72 = 0;
  v73 = 0;
  v74 = v144 + *(type metadata accessor for UserProfilePropertyProvider() + 32);
  if ((v74[8] & 1) == 0)
  {
    v73 = *v74;
    v72 = MEMORY[0x1E69E6530];
  }

  v75 = v145;
  *v145 = v73;
  v75[1] = 0;
  v75[2] = 0;
  v75[3] = v72;
LABEL_32:
  OUTLINED_FUNCTION_46();
}