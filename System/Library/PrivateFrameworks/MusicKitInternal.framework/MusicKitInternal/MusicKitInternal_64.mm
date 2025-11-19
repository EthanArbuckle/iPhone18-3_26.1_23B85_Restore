uint64_t sub_1D53FCD68()
{
  OUTLINED_FUNCTION_60();
  v2 = *(*v1 + 296);
  v3 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;
  *(v5 + 304) = v0;

  if (v0)
  {
    v6 = sub_1D53FD1F4;
  }

  else
  {
    v6 = sub_1D53FCE70;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D53FCE70()
{
  v53 = *(v0 + 304);
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 312);
  v4 = OUTLINED_FUNCTION_36_52();
  OUTLINED_FUNCTION_2_19(v4);
  sub_1D560B9B8();
  v5 = OUTLINED_FUNCTION_29_56();
  v2(v5);
  sub_1D560B988();
  v6 = sub_1D5612208();
  OUTLINED_FUNCTION_2_19(v6);
  sub_1D56121F8();
  swift_retain_n();
  sub_1D560B968();
  sub_1D560D418();
  sub_1D53FF2E4();
  OUTLINED_FUNCTION_25_60();
  sub_1D560B948();
  if (v53)
  {
    v7 = *(v0 + 264);
    v8 = *(v0 + 256);
    v9 = *(v0 + 128);
    v50 = *(v0 + 136);
    v44 = *(v0 + 272);
    v47 = *(v0 + 120);
    OUTLINED_FUNCTION_35_55();
    OUTLINED_FUNCTION_37_42();

    sub_1D4E55E1C(v7, v44);
    (*(v53 + 8))(v42, v3);
    (*(v9 + 8))(v50, v47);
    v10 = *(v0 + 248);
    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v13 = *(v0 + 200);
    v14 = *(v0 + 176);
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 136);
    v18 = *(v0 + 112);
    v45 = *(v0 + 104);
    v48 = *(v0 + 80);
    v51 = *(v0 + 56);
  }

  else
  {
    v28 = *(v0 + 280);
    v29 = *(v0 + 288);
    v27 = *(v0 + 312);
    v35 = *(v0 + 272);
    v32 = *(v0 + 256);
    v33 = *(v0 + 264);
    v38 = *(v0 + 248);
    v39 = *(v0 + 232);
    v40 = *(v0 + 224);
    v41 = *(v0 + 200);
    v43 = *(v0 + 176);
    v46 = *(v0 + 152);
    v49 = *(v0 + 144);
    v34 = *(v0 + 128);
    v36 = *(v0 + 120);
    v37 = *(v0 + 136);
    v52 = *(v0 + 112);
    v54 = *(v0 + 104);
    v20 = *(v0 + 80);
    v21 = *(v0 + 64);
    v22 = *(v0 + 48);
    v30 = *(v0 + 40);
    v31 = *(v0 + 56);
    v24 = *(v0 + 24);
    v23 = *(v0 + 32);
    OUTLINED_FUNCTION_37_42();
    v25 = *(v0 + 16);
    v28(v20, v23 + v27, v21);
    sub_1D514D048(v25, v20, v24);

    sub_1D4E55E1C(v33, v35);
    (*(v22 + 8))(v31, v30);
    (*(v34 + 8))(v37, v36);
  }

  OUTLINED_FUNCTION_0_220();
  sub_1D53FA6A4();

  OUTLINED_FUNCTION_55();

  return v19();
}

uint64_t sub_1D53FD1F4()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];

  v7 = OUTLINED_FUNCTION_71();
  sub_1D4E55E1C(v7, v8);
  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_70();
  v11(v10);
  v12 = v0[38];
  OUTLINED_FUNCTION_14_79();
  v13 = v0[14];
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[7];
  OUTLINED_FUNCTION_0_220();
  sub_1D53FA6A4();

  OUTLINED_FUNCTION_55();

  return v14();
}

uint64_t sub_1D53FD324(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D53FD37C@<X0>(uint64_t a1@<X8>)
{
  v28[1] = a1;
  v1 = sub_1D560BB98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v28 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v28 - v10;
  sub_1D560BB28();
  sub_1D4EFFE00();
  v13 = v12;
  v14 = *(v12 + 16);
  if (v14 >= *(v12 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v13 = v25;
  }

  *(v13 + 16) = v14 + 1;
  v17 = *(v2 + 32);
  v16 = v2 + 32;
  v15 = v17;
  v18 = (*(v16 + 48) + 32) & ~*(v16 + 48);
  v19 = *(v16 + 40);
  v17(v13 + v18 + v19 * v14, v11, v1);
  if ((*(v29 + 8) & 1) == 0)
  {
    v20 = *v29;
    if (*v29 >= 10)
    {
      v20 = 10;
    }

    v30 = v20;
    sub_1D56160F8();
    sub_1D560BB28();

    v21 = *(v13 + 16);
    if (v21 >= *(v13 + 24) >> 1)
    {
      sub_1D4EFFE00();
      v13 = v27;
    }

    *(v13 + 16) = v21 + 1;
    v15(v13 + v18 + v21 * v19, v9, v1);
  }

  sub_1D560BB88();
  v22 = *(v13 + 16);
  if (v22 >= *(v13 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v13 = v26;
  }

  *(v13 + 16) = v22 + 1;
  v15(v13 + v18 + v22 * v19, v6, v1);
  v23 = *(type metadata accessor for MusicSuggestedSongsRequest(0) + 20);
  sub_1D560CD48();
  sub_1D560EB78();
}

uint64_t sub_1D53FD688@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E78, &qword_1D5660A00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v64 - v5;
  v7 = sub_1D560BB98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v67 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v69 = &v64 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v68 = &v64 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v66 = &v64 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v64 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v65 = &v64 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v64 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v64 - v26;
  sub_1D560BB28();
  sub_1D4EFFE00();
  v29 = v28;
  v30 = *(v28 + 16);
  if (v30 >= *(v28 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v29 = v57;
  }

  *(v29 + 16) = v30 + 1;
  v32 = *(v8 + 32);
  v31 = v8 + 32;
  v72 = (*(v31 + 48) + 32) & ~*(v31 + 48);
  v71 = *(v31 + 40);
  v33 = v29 + v72 + v71 * v30;
  v34 = v32;
  v32(v33, v27, v7);
  v35 = type metadata accessor for MusicSuggestedSongsRequest(0);
  sub_1D4E69970(v2 + v35[8], v6, &qword_1EC7F5E78, &qword_1D5660A00);
  v36 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v36) == 1)
  {
    v37 = v7;
    v38 = v67;
    v39 = v34;
    goto LABEL_19;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v37 = v7;
    if (EnumCaseMultiPayload != 1)
    {
      sub_1D53FA6A4();
      sub_1D560BB28();
      v47 = *(v29 + 16);
      v48 = v47 + 1;
      v38 = v67;
      if (v47 >= *(v29 + 24) >> 1)
      {
        sub_1D4EFFE00();
        v29 = v63;
      }

      v49 = v20;
      goto LABEL_18;
    }

    sub_1D53FA6A4();
  }

  else
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E68, &qword_1D56609E0);
    v42 = *&v6[*(v41 + 48)];

    v43 = *&v6[*(v41 + 64)];

    v44 = sub_1D5614898();
    (*(*(v44 - 8) + 8))(v6, v44);
    v37 = v7;
  }

  v38 = v67;
  sub_1D560BB28();
  v45 = *(v29 + 16);
  if (v45 >= *(v29 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v29 = v61;
  }

  *(v29 + 16) = v45 + 1;
  v46 = v25;
  v39 = v34;
  v34(v29 + v72 + v45 * v71, v46, v37);
  if ((v2[1] & 1) == 0)
  {
    v73 = *v2;
    sub_1D56160F8();
    sub_1D560BB28();

    v47 = *(v29 + 16);
    v48 = v47 + 1;
    if (v47 >= *(v29 + 24) >> 1)
    {
      sub_1D4EFFE00();
      v29 = v62;
    }

    v49 = v65;
LABEL_18:
    *(v29 + 16) = v48;
    v50 = v29 + v72 + v47 * v71;
    v39 = v34;
    v34(v50, v49, v37);
  }

LABEL_19:
  v51 = v69;
  if (*(v2 + v35[6]) == 1)
  {
    v51 = v66;
    sub_1D560BB28();
LABEL_25:
    v53 = *(v29 + 16);
    if (v53 >= *(v29 + 24) >> 1)
    {
      sub_1D4EFFE00();
      v29 = v59;
    }

    *(v29 + 16) = v53 + 1;
    v39(v29 + v72 + v53 * v71, v51, v37);
    goto LABEL_28;
  }

  sub_1D560BB28();
  v52 = *(v29 + 16);
  if (v52 >= *(v29 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v29 = v60;
  }

  *(v29 + 16) = v52 + 1;
  v39(v29 + v72 + v52 * v71, v68, v37);
  if ((v2[1] & 1) == 0)
  {
    v73 = *v2;
    sub_1D56160F8();
    sub_1D560BB28();

    goto LABEL_25;
  }

LABEL_28:
  sub_1D560BB88();
  v54 = *(v29 + 16);
  if (v54 >= *(v29 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v29 = v58;
  }

  *(v29 + 16) = v54 + 1;
  v39(v29 + v72 + v54 * v71, v38, v37);
  v55 = v35[5];
  sub_1D560CD48();
  sub_1D560EB78();
}

uint64_t sub_1D53FDE2C(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = sub_1D5614898();
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (v57 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5EF8, &qword_1D5660B98);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = v57 - v20;
  v22 = (v57 + *(v19 + 56) - v20);
  sub_1D53FA960(a1, v57 - v20);
  sub_1D53FA960(v59, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v59 = v6;
    v35 = v58;
    v24 = v21;
    sub_1D53FA960(v21, v16);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E68, &qword_1D56609E0);
    v37 = *(v36 + 48);
    v38 = *&v16[v37];
    v39 = *(v36 + 64);
    v40 = *&v16[v39];
    if (!swift_getEnumCaseMultiPayload())
    {
      v45 = *(v22 + v37);
      v57[1] = *(v22 + v39);
      v46 = v59;
      (*(v35 + 32))(v59, v22, v3);
      v47 = _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
      v48 = *(v35 + 8);
      v48(v16, v3);
      if (v47)
      {
        sub_1D4F2E71C();
        v50 = v49;

        if (v50)
        {
          sub_1D4F928A4();
          v44 = v51;

          v48(v59, v3);
          goto LABEL_17;
        }

        v48(v59, v3);
      }

      else
      {
        v48(v46, v3);
      }

      goto LABEL_34;
    }

    (*(v35 + 8))(v16, v3);
LABEL_20:
    sub_1D4E50004(v24, &qword_1EC7F5EF8, &qword_1D5660B98);
LABEL_36:
    v44 = 0;
    return v44 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v24 = v21;
    sub_1D53FA960(v21, v14);
    v26 = *v14;
    v25 = v14[1];
    v27 = v14[2];
    v28 = v14[3];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v22[1];
      v29 = v22[2];
      v31 = v22[3];
      if (v25)
      {
        if (v30)
        {
          if (v26 == *v22 && v25 == v30)
          {

            goto LABEL_30;
          }

          v33 = v22[1];
          v34 = sub_1D5616168();

          if (v34)
          {
LABEL_30:
            sub_1D4F2E71C();
            v54 = v53;

            if (v54)
            {
              sub_1D4F928A4();
              v44 = v55;

              goto LABEL_16;
            }

            goto LABEL_34;
          }
        }

        else
        {
        }

LABEL_35:

        sub_1D53FA6A4();
        goto LABEL_36;
      }

      if (!v30)
      {
        goto LABEL_30;
      }

      v52 = v22[3];

LABEL_34:

      goto LABEL_35;
    }

    goto LABEL_19;
  }

  v24 = v21;
  sub_1D53FA960(v21, v11);
  v41 = *v11;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_19:

    goto LABEL_20;
  }

  v42 = *v22;
  sub_1D4F928A4();
  v44 = v43;

LABEL_16:

LABEL_17:
  sub_1D53FA6A4();
  return v44 & 1;
}

uint64_t sub_1D53FE3D8()
{
  v1 = v0;
  v2 = sub_1D5614898();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D53FA960(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v10;
      v12 = v10[1];
      v15 = v10[2];
      v14 = v10[3];
      MEMORY[0x1DA6EC0D0](1);
      sub_1D56162F8();
      if (v12)
      {
        sub_1D5614E28();
      }

      sub_1D4F38908();
    }

    else
    {
      v20 = *v10;
      MEMORY[0x1DA6EC0D0](2);
    }

    sub_1D4FB79BC();
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E68, &qword_1D56609E0);
    v17 = *(v10 + *(v16 + 48));
    v18 = *(v10 + *(v16 + 64));
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x1DA6EC0D0](0);
    sub_1D53FAAFC(&qword_1EC7EB6C8, MEMORY[0x1E69773E0]);
    sub_1D5614CB8();
    sub_1D4F38908();

    sub_1D4FB79BC();

    return (*(v3 + 8))(v6, v2);
  }
}

BOOL static MusicSuggestedSongsRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E78, &qword_1D5660A00);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E70, &qword_1D56609F8);
  OUTLINED_FUNCTION_14(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  v23 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = type metadata accessor for MusicSuggestedSongsRequest(0);
  v25 = v24[5];
  if ((_s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v24[6]) != *(a2 + v24[6]))
  {
    return 0;
  }

  v26 = v24[7];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  sub_1D4EFBC88();
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = v24[8];
  v31 = *(v17 + 48);
  sub_1D4E69970(a1 + v30, v22, &qword_1EC7F5E78, &qword_1D5660A00);
  sub_1D4E69970(a2 + v30, &v22[v31], &qword_1EC7F5E78, &qword_1D5660A00);
  OUTLINED_FUNCTION_43_0(v22);
  if (v32)
  {
    OUTLINED_FUNCTION_43_0(&v22[v31]);
    if (v32)
    {
      sub_1D4E50004(v22, &qword_1EC7F5E78, &qword_1D5660A00);
      return 1;
    }

LABEL_18:
    sub_1D4E50004(v22, &qword_1EC7F5E70, &qword_1D56609F8);
    return 0;
  }

  sub_1D4E69970(v22, v16, &qword_1EC7F5E78, &qword_1D5660A00);
  OUTLINED_FUNCTION_43_0(&v22[v31]);
  if (v32)
  {
    OUTLINED_FUNCTION_3_169();
    sub_1D53FA6A4();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_2_165();
  sub_1D53FD324(&v22[v31], v10);
  v34 = sub_1D53FDE2C(v16, v10);
  sub_1D53FA6A4();
  OUTLINED_FUNCTION_70();
  sub_1D53FA6A4();
  sub_1D4E50004(v22, &qword_1EC7F5E78, &qword_1D5660A00);
  return (v34 & 1) != 0;
}

uint64_t MusicSuggestedSongsRequest.hash(into:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_64_1();
  v3 = type metadata accessor for MusicSuggestedSongsRequest.Reason(v2);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E78, &qword_1D5660A00);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  if (*(v0 + 8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v16 = *v0;
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v16);
  }

  v17 = type metadata accessor for MusicSuggestedSongsRequest(0);
  v18 = v17[5];
  sub_1D560CD48();
  sub_1D53FAAFC(&qword_1EC7EA848, MEMORY[0x1E6974D20]);
  sub_1D5614CB8();
  v19 = *(v1 + v17[6]);
  sub_1D56162F8();
  v20 = *(v1 + v17[7]);
  sub_1D4F09A80();
  sub_1D4E69970(v1 + v17[8], v15, &qword_1EC7F5E78, &qword_1D5660A00);
  OUTLINED_FUNCTION_43_0(v15);
  if (v21)
  {
    return sub_1D56162F8();
  }

  OUTLINED_FUNCTION_2_165();
  sub_1D53FD324(v15, v9);
  sub_1D56162F8();
  sub_1D53FE3D8();
  OUTLINED_FUNCTION_3_169();
  return sub_1D53FA6A4();
}

uint64_t sub_1D53FEB80(void (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

uint64_t sub_1D53FEBEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

uint64_t sub_1D53FEC30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E6E494;

  return MusicSuggestedSongsRequest.catalogResponse()();
}

uint64_t sub_1D53FECC8()
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1D51592F8;

  return MusicSuggestedSongsRequest.response()();
}

void sub_1D53FEE10()
{
  sub_1D502E814();
  if (v0 <= 0x3F)
  {
    sub_1D560CD48();
    if (v1 <= 0x3F)
    {
      sub_1D53FEF2C(319, &qword_1EC7F5EA0, MEMORY[0x1E6976E60], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1D53FEF2C(319, &qword_1EC7F5EA8, type metadata accessor for MusicSuggestedSongsRequest.Reason, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D53FEF2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D53FEF90()
{
  sub_1D53FF018();
  if (v0 <= 0x3F)
  {
    sub_1D53FF0BC();
    if (v1 <= 0x3F)
    {
      sub_1D53FF16C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D53FF018()
{
  if (!qword_1EC7F5EC0)
  {
    sub_1D5614898();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F5EC8, &qword_1D5660B18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F5ED0, qword_1D5660B20);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC7F5EC0);
    }
  }
}

void sub_1D53FF0BC()
{
  if (!qword_1EC7F5ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC3B0, &qword_1D5630D90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F5EC8, &qword_1D5660B18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F5ED0, qword_1D5660B20);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC7F5ED8);
    }
  }
}

void sub_1D53FF16C()
{
  if (!qword_1EC7F5EE0)
  {
    sub_1D53FF1B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F5EE0);
    }
  }
}

void sub_1D53FF1B4()
{
  if (!qword_1EC7F5EE8)
  {
    type metadata accessor for MusicSuggestedSongsEntry();
    sub_1D53FAAFC(&qword_1EC7F3870, type metadata accessor for MusicSuggestedSongsEntry);
    v0 = sub_1D56155D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F5EE8);
    }
  }
}

unint64_t sub_1D53FF290()
{
  result = qword_1EC7F5F00;
  if (!qword_1EC7F5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F00);
  }

  return result;
}

unint64_t sub_1D53FF2E4()
{
  result = qword_1EC7F5F10;
  if (!qword_1EC7F5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F10);
  }

  return result;
}

uint64_t sub_1D53FF338(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1D5615A48();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_1D56159F8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1D53FF398(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1D56159F8();
  v4 = *(a1 + 36);
  return result;
}

unint64_t sub_1D53FF3D8()
{
  result = qword_1EC7EFE88;
  if (!qword_1EC7EFE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFE60, &qword_1D5635158);
    sub_1D53FAAFC(&qword_1EC7EC648, MEMORY[0x1E6976480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFE88);
  }

  return result;
}

unint64_t sub_1D53FF48C()
{
  result = qword_1EC7F5F18;
  if (!qword_1EC7F5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSuggestedSongsRequest.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D53FF5C0()
{
  result = qword_1EC7F5F20;
  if (!qword_1EC7F5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_54(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 136);
  return *(v2 + 56);
}

void OUTLINED_FUNCTION_34_57()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
}

uint64_t OUTLINED_FUNCTION_37_42()
{

  return sub_1D4E55E1C(v1, v0);
}

id sub_1D53FF6B4(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D8, &qword_1D561C200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D561C050;
  *(inited + 32) = TVSeason.LegacyModelTVSeasonPropertyKey.rawValue.getter();
  *(inited + 40) = v6;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3CE8, &unk_1D56611E0);
  *(inited + 48) = a2;
  *(inited + 56) = a3 & 1;
  sub_1D5614BD8();
  v7 = [objc_opt_self() emptyIdentifierSet];
  if (qword_1EC7E8968 != -1)
  {
    swift_once();
  }

  v8 = sub_1D5613158();
  __swift_project_value_buffer(v8, qword_1EC7EA338);
  v9 = sub_1D5159818();
  v10 = objc_allocWithZone(MEMORY[0x1E6977640]);
  return sub_1D4ECA8B8(v7, v9);
}

uint64_t TVEpisode.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v248 = a4;
  v254 = a3;
  v256 = a1;
  v249 = a5;
  v255 = sub_1D5612B88();
  v6 = OUTLINED_FUNCTION_4(v255);
  v265 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v11 = v10;
  v12 = sub_1D5610088();
  v13 = OUTLINED_FUNCTION_4(v12);
  v261 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v17);
  v252 = sub_1D560D838();
  v18 = OUTLINED_FUNCTION_4(v252);
  v251 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0478, &qword_1D5637C60);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v266 = v27;
  v28 = type metadata accessor for TVEpisodePropertyProvider();
  v29 = OUTLINED_FUNCTION_14(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_11_3(&v244 - v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_59_0();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v244 - v42;
  v247 = sub_1D5612478();
  v44 = OUTLINED_FUNCTION_4(v247);
  v246 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v49 = &v244 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = a2;
  sub_1D560F7E8();
  v264 = sub_1D54011A8();
  v263 = sub_1D5614C68();

  sub_1D5610078();
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v12);
  sub_1D5610078();
  v262 = v12;
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v12);
  v250 = v49;
  sub_1D560D4D8();
  sub_1D4E50004(v40, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v43, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4EC76A8(v254, v267);
  v245 = v28;
  if (!v268)
  {
    sub_1D4E50004(v267, &qword_1EC7EEC40, &unk_1D561C070);
    OUTLINED_FUNCTION_36_53();
    v271 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v271 = 0;
    OUTLINED_FUNCTION_36_53();
    goto LABEL_8;
  }

  if (!v270)
  {
LABEL_8:
    sub_1D4E50004(&v269, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_9;
  }

  sub_1D4E48324(&v269, &v272);
  __swift_project_boxed_opaque_existential_1(&v272, v273);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v50 = v266;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v28);
    v51 = v257;
    sub_1D512B990(v50, v257);
    OUTLINED_FUNCTION_17_80();
    v52 = v258;
    sub_1D5403004(v51, v258, v53);
    v54 = v51 + v28[53];
    v55 = v259;
    sub_1D560D718();
    (*(v251 + 40))(v52 + v28[53], v55, v252);
    v56 = v260;
    sub_1D5612468();
    (*(v261 + 40))(v52 + v28[54], v56, v262);
    v57 = sub_1D5612458();
    v59 = v58;
    sub_1D5403064(v51, v50);
    v60 = (v52 + v28[55]);
    v61 = v60[1];

    *v60 = v57;
    v60[1] = v59;
    __swift_destroy_boxed_opaque_existential_1(&v272);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v240, v241, v242, v28);
  sub_1D4E50004(v50, &qword_1EC7F0478, &qword_1D5637C60);
  __swift_destroy_boxed_opaque_existential_1(&v272);
LABEL_9:
  v62 = sub_1D56140F8();
  v63 = v258;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v62);
  v67 = v28[6];
  sub_1D560F928();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  v72 = v28[10];
  v73 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
  v77 = v28[13];
  v78 = sub_1D5610978();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v78);
  v82 = v28[17];
  v83 = sub_1D560C0A8();
  v84 = OUTLINED_FUNCTION_7_122();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
  v87 = v28[20];
  sub_1D5613178();
  v88 = OUTLINED_FUNCTION_7_122();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  v92 = v28[21];
  sub_1D5613198();
  v93 = OUTLINED_FUNCTION_7_122();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
  v97 = v28[22];
  sub_1D56134E8();
  v98 = OUTLINED_FUNCTION_7_122();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
  v102 = OUTLINED_FUNCTION_2_166(v28[24]);
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v73);
  v105 = OUTLINED_FUNCTION_2_166(v28[25]);
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v73);
  v108 = v28[26];
  sub_1D5614A78();
  v109 = OUTLINED_FUNCTION_7_122();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
  v113 = OUTLINED_FUNCTION_2_166(v28[29]);
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v78);
  v116 = v28[31];
  sub_1D56109F8();
  v117 = OUTLINED_FUNCTION_7_122();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
  v121 = OUTLINED_FUNCTION_2_166(v28[32]);
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v62);
  v124 = OUTLINED_FUNCTION_2_166(v28[34]);
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v73);
  v127 = v28[36];
  v128 = sub_1D560FDC8();
  OUTLINED_FUNCTION_5_124(v128);
  v129 = OUTLINED_FUNCTION_2_166(v28[38]);
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v83);
  v132 = OUTLINED_FUNCTION_2_166(v28[44]);
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v83);
  v135 = v28[45];
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_5_124(v136);
  v137 = v28[46];
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_5_124(v138);
  v139 = v28[47];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  OUTLINED_FUNCTION_5_124(v140);
  v141 = v28[48];
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_5_124(v142);
  v143 = v28[49];
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_5_124(v144);
  v145 = v28[50];
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_5_124(v146);
  (*(v251 + 16))(v63 + v28[53], v256, v252);
  v147 = v63 + v28[54];
  sub_1D5612468();
  v148 = sub_1D5612458();
  v266 = v149;
  sub_1D5614A88();
  v262 = OUTLINED_FUNCTION_19_77();
  v261 = OUTLINED_FUNCTION_19_77();
  v150 = OUTLINED_FUNCTION_19_77();
  v151 = OUTLINED_FUNCTION_19_77();
  OUTLINED_FUNCTION_14_80(v28[5]);
  *(v63 + v28[7]) = 0;
  OUTLINED_FUNCTION_65_3(v28[8]);
  *(v63 + v28[9]) = 0;
  OUTLINED_FUNCTION_14_80(v28[11]);
  *(v63 + v28[12]) = 0;
  *(v63 + v28[14]) = 0;
  *(v63 + v28[15]) = 0;
  *(v63 + v28[16]) = 2;
  *(v63 + v28[18]) = 2;
  *(v63 + v28[19]) = 2;
  *(v63 + v28[23]) = 26;
  OUTLINED_FUNCTION_14_80(v28[27]);
  *(v63 + v28[28]) = 0;
  v152 = v63 + v28[30];
  *v152 = xmmword_1D5626F70;
  *(v152 + 24) = 0;
  *(v152 + 32) = 0;
  *(v152 + 16) = 0;
  *(v63 + v28[33]) = 0;
  OUTLINED_FUNCTION_14_80(v28[35]);
  OUTLINED_FUNCTION_65_3(v28[37]);
  OUTLINED_FUNCTION_65_3(v28[39]);
  OUTLINED_FUNCTION_65_3(v28[40]);
  OUTLINED_FUNCTION_14_80(v28[41]);
  v153 = (v63 + v28[42]);
  v153[2] = 0u;
  v153[3] = 0u;
  *v153 = 0u;
  v153[1] = 0u;
  OUTLINED_FUNCTION_65_3(v28[43]);
  *(v63 + v28[51]) = 0;
  if (qword_1EC7E8E28 != -1)
  {
    swift_once();
  }

  v154 = qword_1EC87C178;
  if (qword_1EC87C178 >> 62)
  {
    sub_1D560CDE8();

    v243 = sub_1D5615E18();

    v154 = v243;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v155 = v258;
  *(v258 + v28[52]) = v154;
  v156 = (v155 + v28[55]);
  v157 = v266;
  *v156 = v148;
  v156[1] = v157;
  *(v155 + v28[56]) = v262;
  *(v155 + v28[57]) = v261;
  *(v155 + v28[58]) = v150;
  *(v155 + v28[59]) = v151;
LABEL_14:
  swift_getKeyPath();
  LOBYTE(v272) = 0;
  LODWORD(v262) = *MEMORY[0x1E6976668];
  v158 = v265;
  v159 = v265 + 104;
  v259 = *(v265 + 104);
  v160 = v255;
  v259(v11);
  v266 = sub_1D5403298(&qword_1EC7EDBA8, type metadata accessor for TVEpisodePropertyProvider);
  OUTLINED_FUNCTION_35_56();
  sub_1D5610D98();

  v161 = *(v158 + 8);
  v265 = v158 + 8;
  v162 = OUTLINED_FUNCTION_20_9();
  v161(v162);
  v163 = v161;
  swift_getKeyPath();
  v164 = OUTLINED_FUNCTION_11_106(19);
  v165 = v262;
  v166 = v259;
  (v259)(v164, v262, v160);
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D78();

  v167 = OUTLINED_FUNCTION_20_9();
  v163(v167);
  v260 = v163;
  swift_getKeyPath();
  v168 = OUTLINED_FUNCTION_11_106(3);
  v166(v168, v165, v160);
  v261 = v159;
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v169 = OUTLINED_FUNCTION_20_9();
  v163(v169);
  swift_getKeyPath();
  LOBYTE(v272) = 1;
  LODWORD(v257) = *MEMORY[0x1E6976670];
  (v166)(v11);
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D88();
  OUTLINED_FUNCTION_33_55();
  v170 = OUTLINED_FUNCTION_20_9();
  v171 = v260;
  v260(v170);
  swift_getKeyPath();
  v172 = OUTLINED_FUNCTION_11_106(5);
  v173 = v262;
  v166(v172, v262, v160);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v174 = OUTLINED_FUNCTION_20_9();
  v171(v174);
  swift_getKeyPath();
  v175 = OUTLINED_FUNCTION_11_106(6);
  v166(v175, v173, v160);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v176 = OUTLINED_FUNCTION_20_9();
  v171(v176);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_106(7);
  OUTLINED_FUNCTION_37_43();
  v177 = v259;
  (v259)(v178, v179);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v180 = OUTLINED_FUNCTION_20_9();
  v260(v180);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_106(9);
  OUTLINED_FUNCTION_37_43();
  v177(v181, v182);
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D88();
  OUTLINED_FUNCTION_33_55();
  v183 = OUTLINED_FUNCTION_20_9();
  v184 = v260;
  v260(v183);
  swift_getKeyPath();
  v185 = OUTLINED_FUNCTION_11_106(10);
  (v177)(v185, v262, v160);
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D88();
  OUTLINED_FUNCTION_33_55();
  v186 = OUTLINED_FUNCTION_20_9();
  v184(v186);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_106(11);
  v187 = v262;
  OUTLINED_FUNCTION_37_43();
  (v177)(v188, v189, v190, v191, v192, v193);
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D88();
  OUTLINED_FUNCTION_33_55();
  v194 = OUTLINED_FUNCTION_20_9();
  v184(v194);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_106(12);
  OUTLINED_FUNCTION_37_43();
  (v259)(v195, v196, v197, v198, v199, v200, v201, v202);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v203 = OUTLINED_FUNCTION_145_1();
  v260(v203);
  swift_getKeyPath();
  v204 = OUTLINED_FUNCTION_11_106(13);
  v205 = v259;
  (v259)(v204, v187, v160);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v206 = OUTLINED_FUNCTION_145_1();
  v207 = v260;
  v260(v206);
  swift_getKeyPath();
  v208 = OUTLINED_FUNCTION_11_106(20);
  v205(v208, v187, v160);
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D78();

  v207(v11, v160);
  v209 = v207;
  swift_getKeyPath();
  v210 = OUTLINED_FUNCTION_9_110(14);
  v211 = v259;
  v259(v210);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v212 = v255;
  v209(v11, v255);
  swift_getKeyPath();
  v213 = OUTLINED_FUNCTION_11_106(21);
  (v211)(v213, v262, v212);
  sub_1D515CAB4();
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D78();

  v214 = OUTLINED_FUNCTION_145_1();
  (v209)(v214);
  swift_getKeyPath();
  v215 = OUTLINED_FUNCTION_9_110(15);
  v211(v215);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  OUTLINED_FUNCTION_35_56();
  sub_1D5610D68();

  v216 = OUTLINED_FUNCTION_145_1();
  (v209)(v216);
  swift_getKeyPath();
  LOBYTE(v272) = 22;
  v217 = type metadata accessor for TVSeason();
  LOBYTE(v269) = 8;
  (v211)(v11, v257, v212);
  sub_1D5403298(&qword_1EC7EA438, type metadata accessor for TVSeason);
  OUTLINED_FUNCTION_35_56();
  sub_1D5610D48();

  v218 = OUTLINED_FUNCTION_145_1();
  (v209)(v218);
  swift_getKeyPath();
  LOBYTE(v272) = 23;
  type metadata accessor for TVShow();
  LOBYTE(v269) = 7;
  OUTLINED_FUNCTION_35_56();
  (v211)(v219, v220, v212, v221, v222, v223, v224, v225);
  sub_1D5403298(&qword_1EC7EA390, type metadata accessor for TVShow);
  sub_1D5610D48();

  v226 = OUTLINED_FUNCTION_145_1();
  v227 = v260;
  v260(v226);
  swift_getKeyPath();
  v228 = OUTLINED_FUNCTION_9_110(16);
  v211(v228);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v229 = v255;
  v227(v11, v255);
  swift_getKeyPath();
  v230 = OUTLINED_FUNCTION_9_110(17);
  v231 = v259;
  v259(v230);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v227(v11, v229);
  swift_getKeyPath();
  v232 = OUTLINED_FUNCTION_11_106(18);
  v231(v232, v262, v229);
  sub_1D54011FC();
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D88();
  OUTLINED_FUNCTION_33_55();
  v227(v11, v229);
  swift_getKeyPath();
  sub_1D5610DA8();

  swift_getKeyPath();
  LOBYTE(v272) = 22;
  v233 = type metadata accessor for TVEpisode();
  if (qword_1EC7E92B8 != -1)
  {
    swift_once();
  }

  sub_1D5403298(&qword_1EDD54508, type metadata accessor for TVEpisode);
  sub_1D5403298(&qword_1EC7F42A0, type metadata accessor for TVSeason);
  sub_1D5403298(&qword_1EC7EA480, type metadata accessor for TVSeason);
  v234 = v263;
  v265 = v233;
  sub_1D5610DC8();

  swift_getKeyPath();
  LOBYTE(v272) = 23;
  v235 = v245;
  if (qword_1EC7E92C0 != -1)
  {
    swift_once();
  }

  sub_1D5403298(&qword_1EC7EA398, type metadata accessor for TVShow);
  sub_1D5403298(&qword_1EC7EA3A0, type metadata accessor for TVShow);
  OUTLINED_FUNCTION_10_105();
  v236 = v266;
  sub_1D5610DC8();

  v273 = v235;
  v274 = v236;
  __swift_allocate_boxed_opaque_existential_0(&v272);
  OUTLINED_FUNCTION_17_80();
  sub_1D5403004(v217, v237, v238);
  TVEpisode.init(propertyProvider:)(&v272, v249);
  swift_unknownObjectRelease();
  sub_1D4E50004(v254, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v251 + 8))(v256, v252);
  (*(v246 + 8))(v250, v247);
  return sub_1D5403064(v217, v234);
}

unint64_t sub_1D54011A8()
{
  result = qword_1EC7F5F38;
  if (!qword_1EC7F5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F38);
  }

  return result;
}

unint64_t sub_1D54011FC()
{
  result = qword_1EC7F5F40;
  if (!qword_1EC7F5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F40);
  }

  return result;
}

uint64_t sub_1D5401250()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EDD54538);
  v1 = __swift_project_value_buffer(v0, qword_1EDD54538);
  v2 = *MEMORY[0x1E69768A0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static TVEpisode.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD54530 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EDD54538);
  OUTLINED_FUNCTION_24_0(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TVEpisode.convertToLegacyModelStorageDictionary(for:)(uint64_t a1)
{
  v200 = a1;
  v198 = type metadata accessor for TVShow();
  v1 = OUTLINED_FUNCTION_14(v198);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v9);
  v195 = type metadata accessor for TVSeason();
  v10 = OUTLINED_FUNCTION_14(v195);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v13);
  v197 = sub_1D56131C8();
  v14 = OUTLINED_FUNCTION_4(v197);
  v196 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v23);
  v192 = sub_1D5614A78();
  v24 = OUTLINED_FUNCTION_4(v192);
  v183 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v50 = OUTLINED_FUNCTION_22(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v180 - v56;
  v58 = sub_1D560F928();
  v59 = OUTLINED_FUNCTION_4(v58);
  v181 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v64 = &v180 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v180 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v180 - v75;
  sub_1D4ECC890();
  v207 = sub_1D5614BD8();
  if (qword_1EC7E9170 != -1)
  {
    swift_once();
  }

  v77 = sub_1D56140F8();
  sub_1D5403298(&qword_1EDD54508, type metadata accessor for TVEpisode);
  sub_1D5403298(&qword_1EC7EC490, type metadata accessor for TVEpisode);
  OUTLINED_FUNCTION_6_127();
  OUTLINED_FUNCTION_57(v76, 1, v77);
  if (v78)
  {
    sub_1D4E50004(v76, &qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0(v77);
    (*(v79 + 8))(v76, v77);
  }

  v80 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v80, 0);
  v81 = v188;
  v82 = v186;
  if (qword_1EC7E9180 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127();
  OUTLINED_FUNCTION_32_1(v70);
  if (v78)
  {
    sub_1D4E50004(v70, &qword_1EC7EDB98, L"X\b\a");
    v87 = 0;
    v88 = 0;
    v209 = 0;
    v210 = 0;
  }

  else
  {
    v83 = v82;
    v84 = v81;
    v85 = v181;
    (*(v181 + 16))(v64, v70, v58);
    sub_1D515CC4C();
    v87 = v86;
    (*(v85 + 8))(v70, v58);
    v81 = v84;
    v82 = v83;
    v88 = sub_1D4F688F0();
  }

  v208 = v87;
  *&v211 = v88;
  v89 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v89, 19);
  v90 = v192;
  if (qword_1EC7E9198 != -1)
  {
    swift_once();
  }

  v91 = sub_1D560C328();
  OUTLINED_FUNCTION_6_127();
  OUTLINED_FUNCTION_32_1(v57);
  if (v78)
  {
    sub_1D4E50004(v57, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    *&v211 = v91;
    __swift_allocate_boxed_opaque_existential_0(&v208);
    OUTLINED_FUNCTION_24_0(v91);
    (*(v92 + 32))();
  }

  v93 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v93, 3);
  v94 = v191;
  if (qword_1EC7E91A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127();
  if (v209)
  {
    v95 = 0;
    v209 = 0;
    v210 = 0;
    v96 = 0;
  }

  else
  {
    sub_1D5615578();
    v95 = MEMORY[0x1E69E63B0];
  }

  v208 = v96;
  v97 = OUTLINED_FUNCTION_3_90(v95);
  sub_1D4EC8C00(v97, 1);
  if (qword_1EC7E9188 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_6_127();
  if (v208)
  {
    v98 = v208;
  }

  else
  {
    v98 = MEMORY[0x1E69E7CC0];
  }

  if (*(v98 + 16))
  {
    v99 = *(v98 + 80);
    v100 = *(v98 + 88);

    if ((v100 & 1) == 0)
    {
      *&v211 = MEMORY[0x1E69E6530];
      v208 = v99;
      goto LABEL_31;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_35();
LABEL_31:
  v101 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v101, 4);
  if (qword_1EC7E91C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127();
  if (v208 == 2)
  {
    OUTLINED_FUNCTION_23_6();
  }

  else
  {
    LOBYTE(v208) = v208 & 1;
    v102 = MEMORY[0x1E69E6370];
  }

  v103 = OUTLINED_FUNCTION_3_90(v102);
  sub_1D4EC8C00(v103, 5);
  if (qword_1EC7E91C8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127();
  if (v208 == 2)
  {
    OUTLINED_FUNCTION_23_6();
  }

  else
  {
    LOBYTE(v208) = v208 & 1;
    v104 = MEMORY[0x1E69E6370];
  }

  v105 = OUTLINED_FUNCTION_3_90(v104);
  sub_1D4EC8C00(v105, 6);
  if (qword_1EC7E91D0 != -1)
  {
    swift_once();
  }

  v106 = MEMORY[0x1E69E6370];
  OUTLINED_FUNCTION_6_127();
  if (v208 == 2)
  {
    OUTLINED_FUNCTION_23_6();
  }

  else
  {
    LOBYTE(v208) = v208 & 1;
    v107 = MEMORY[0x1E69E6370];
  }

  v108 = OUTLINED_FUNCTION_3_90(v107);
  sub_1D4EC8C00(v108, 7);
  *&v211 = v106;
  LOBYTE(v208) = 1;
  sub_1D4EC8C00(&v208, 8);
  if (qword_1EC7E91D8 != -1)
  {
    swift_once();
  }

  v109 = qword_1EC87C3F0;
  v110 = sub_1D5613178();
  OUTLINED_FUNCTION_6_127();
  OUTLINED_FUNCTION_57(v82, 1, v110);
  if (v78)
  {
    sub_1D4E50004(v82, &qword_1EC7EC538, &unk_1D5621080);
    OUTLINED_FUNCTION_21_39();
  }

  else
  {
    v109 = sub_1D5613168();
    OUTLINED_FUNCTION_24_0(v110);
    (*(v111 + 8))(v82, v110);
    v112 = MEMORY[0x1E69E6530];
  }

  v208 = v109;
  v113 = OUTLINED_FUNCTION_3_90(v112);
  sub_1D4EC8C00(v113, 9);
  if (qword_1EC7E91E0 != -1)
  {
    swift_once();
  }

  v114 = qword_1EC87C3F8;
  v115 = sub_1D5613198();
  v116 = v187;
  OUTLINED_FUNCTION_6_127();
  OUTLINED_FUNCTION_57(v116, 1, v115);
  if (v78)
  {
    sub_1D4E50004(v116, &qword_1EC7EC530, &unk_1D5632150);
    OUTLINED_FUNCTION_21_39();
  }

  else
  {
    v114 = sub_1D5613188();
    OUTLINED_FUNCTION_24_0(v115);
    (*(v117 + 8))(v116, v115);
    v118 = MEMORY[0x1E69E6530];
  }

  v208 = v114;
  v119 = OUTLINED_FUNCTION_3_90(v118);
  sub_1D4EC8C00(v119, 10);
  if (qword_1EC7E91E8 != -1)
  {
    swift_once();
  }

  v120 = qword_1EC87C400;
  v121 = sub_1D56134E8();
  OUTLINED_FUNCTION_6_127();
  OUTLINED_FUNCTION_57(v81, 1, v121);
  if (v78)
  {
    sub_1D4E50004(v81, &qword_1EC7EC528, &unk_1D5621070);
    OUTLINED_FUNCTION_21_39();
  }

  else
  {
    v120 = sub_1D5613468();
    OUTLINED_FUNCTION_24_0(v121);
    (*(v122 + 8))(v81, v121);
    v123 = MEMORY[0x1E69E6530];
  }

  v124 = v193;
  v125 = v194;
  v208 = v120;
  v126 = OUTLINED_FUNCTION_3_90(v123);
  sub_1D4EC8C00(v126, 11);
  if (qword_1EC7E91F8 != -1)
  {
    swift_once();
  }

  v127 = v189;
  OUTLINED_FUNCTION_6_127();
  OUTLINED_FUNCTION_32_1(v127);
  if (v78)
  {
    sub_1D4E50004(v127, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    *&v211 = v91;
    __swift_allocate_boxed_opaque_existential_0(&v208);
    OUTLINED_FUNCTION_24_0(v91);
    (*(v128 + 32))();
  }

  v129 = v125;
  v130 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v130, 12);
  v131 = v190;
  if (qword_1EC7E9200 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127();
  OUTLINED_FUNCTION_32_1(v131);
  if (v78)
  {
    sub_1D4E50004(v131, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    *&v211 = v91;
    __swift_allocate_boxed_opaque_existential_0(&v208);
    OUTLINED_FUNCTION_24_0(v91);
    (*(v132 + 32))();
  }

  v133 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v133, 13);
  if (qword_1EC7E9208 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127();
  OUTLINED_FUNCTION_57(v94, 1, v90);
  if (v78)
  {
    sub_1D4E50004(v94, &qword_1EC7EF5D8, &unk_1D5632160);
    v136 = 0;
    v137 = 0;
    v209 = 0;
    v210 = 0;
  }

  else
  {
    v134 = v183;
    (*(v183 + 16))(v182, v94, v90);
    sub_1D515CC2C();
    v136 = v135;
    (*(v134 + 8))(v94, v90);
    v137 = sub_1D4F688F0();
  }

  v208 = v136;
  *&v211 = v137;
  v138 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v138, 20);
  if (qword_1EC7E9210 != -1)
  {
    swift_once();
  }

  v139 = MEMORY[0x1E69E6530];
  OUTLINED_FUNCTION_6_127();
  if (v209)
  {
    v140 = 0;
    v141 = 0;
    v209 = 0;
    v210 = 0;
  }

  else
  {
    v140 = v208;
    v141 = v139;
  }

  v208 = v140;
  *&v211 = v141;
  v142 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v142, 14);
  if (qword_1EC7E9228 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127();
  if (v204 == 2)
  {
    v143 = 0;
    v144 = 0;
    v204 = 0;
    v205 = 0;
  }

  else
  {
    v208 = v203;
    LOWORD(v209) = v204 & 0x101;
    v210 = v205;
    v211 = v206;
    sub_1D515CC6C();
    v143 = v145;
    v144 = sub_1D4F688F0();
  }

  v203 = v143;
  *&v206 = v144;
  v146 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v146, 21);
  if (qword_1EC7E9248 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127();
  OUTLINED_FUNCTION_32_1(v124);
  if (v78)
  {
    sub_1D4E50004(v124, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_36_53();
  }

  else
  {
    *&v206 = v91;
    __swift_allocate_boxed_opaque_existential_0(&v203);
    OUTLINED_FUNCTION_24_0(v91);
    (*(v147 + 32))();
  }

  v148 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v148, 15);
  if (qword_1EC7E9268 != -1)
  {
    swift_once();
  }

  v149 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_6_127();
  if (v204)
  {
    v150 = v203;
    v151 = MEMORY[0x1E69E6158];
  }

  else
  {
    v150 = 0;
    v151 = 0;
    v205 = 0;
  }

  v203 = v150;
  *&v206 = v151;
  v152 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v152, 16);
  v153 = TVEpisode.title.getter();
  *&v206 = v149;
  v203 = v153;
  v204 = v154;
  v155 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v155, 17);
  if (qword_1EC7E91F0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127();
  switch(v203)
  {
    case 5u:
      v156 = 1;
      break;
    case 0x1Au:
      OUTLINED_FUNCTION_36_53();
      goto LABEL_110;
    case 0x14u:
      v156 = 3;
      break;
    case 0x17u:
      v156 = 5;
      break;
    case 6u:
      v156 = 2;
      break;
    default:
      v156 = 0;
      break;
  }

  v157 = [objc_opt_self() rawValueForType_];
  *&v206 = v139;
  v203 = v157;
LABEL_110:
  v158 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v158, 18);
  TVEpisode.season.getter();
  OUTLINED_FUNCTION_57(v129, 1, v195);
  if (v78)
  {
    sub_1D4E50004(v129, &qword_1EC7EA878, &unk_1D5634790);
    v162 = 0;
  }

  else
  {
    v159 = *(v196 + 16);
    OUTLINED_FUNCTION_34_58();
    v160();
    sub_1D5403004(v129, v184, type metadata accessor for TVSeason);
    sub_1D4ECC300();
    v162 = v161;
    sub_1D5403064(v129, type metadata accessor for TVSeason);
  }

  v163 = sub_1D4F688F0();
  *&v206 = v163;
  if (!v162)
  {
    if (qword_1EC7E9250 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_6_127();
    v162 = sub_1D53FF6B4(8, v201, v202);
  }

  v203 = v162;
  v164 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v164, 22);
  v165 = v199;
  TVEpisode.show.getter();
  OUTLINED_FUNCTION_57(v165, 1, v198);
  if (v78)
  {
    sub_1D4E50004(v165, &qword_1EC7EA3B0, &unk_1D561C1F0);
    *&v206 = v163;
  }

  else
  {
    v166 = *(v196 + 16);
    OUTLINED_FUNCTION_34_58();
    v167();
    sub_1D5403004(v165, v185, type metadata accessor for TVShow);
    sub_1D4ECA950();
    v169 = v168;
    sub_1D5403064(v165, type metadata accessor for TVShow);
    *&v206 = v163;
    if (v169)
    {
      goto LABEL_124;
    }
  }

  v170 = TVEpisode.showName.getter();
  v172 = v171;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D8, &qword_1D561C200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D561C050;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000001D567CE50;
  *(inited + 72) = v149;
  *(inited + 48) = v170;
  *(inited + 56) = v172;
  sub_1D5614BD8();
  v174 = [objc_opt_self() emptyIdentifierSet];
  if (qword_1EC7E8B40 != -1)
  {
    swift_once();
  }

  v175 = sub_1D5613158();
  __swift_project_value_buffer(v175, qword_1EC7EE088);
  v176 = sub_1D5159818();
  v177 = objc_allocWithZone(MEMORY[0x1E6977640]);
  v169 = sub_1D4ECA8B8(v174, v176);
LABEL_124:
  v203 = v169;
  v178 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v178, 23);
  return v207;
}

Swift::Int __swiftcall TVEpisode.Kind.convertToLegacyModelRawValue()()
{
  v1 = *v0;
  v2 = 5;
  v3 = 3;
  v4 = 2;
  if (v1 != 6)
  {
    v4 = 0;
  }

  if (v1 != 20)
  {
    v3 = v4;
  }

  if (v1 != 23)
  {
    v2 = v3;
  }

  if (v1 == 5)
  {
    v5 = 1;
  }

  else
  {
    v5 = v2;
  }

  v6 = objc_opt_self();

  return [v6 rawValueForType_];
}

uint64_t TVEpisode.LegacyModelTVEpisodePropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5616208();

  v4 = 0;
  v5 = 6;
  switch(v2)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v4 = 1;
      goto LABEL_18;
    case 2:
      v4 = 2;
      goto LABEL_18;
    case 3:
      v4 = 3;
      goto LABEL_18;
    case 4:
      v4 = 4;
      goto LABEL_18;
    case 5:
      v4 = 5;
LABEL_18:
      v5 = v4;
      break;
    case 6:
      break;
    case 7:
      v5 = 7;
      break;
    case 8:
      v5 = 8;
      break;
    case 9:
      v5 = 9;
      break;
    case 10:
      v5 = 10;
      break;
    case 11:
      v5 = 11;
      break;
    case 12:
      v5 = 12;
      break;
    case 13:
      v5 = 13;
      break;
    case 14:
      v5 = 14;
      break;
    case 15:
      v5 = 15;
      break;
    case 16:
      v5 = 16;
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    default:
      v5 = 24;
      break;
  }

  *a1 = v5;
  return result;
}

unint64_t TVEpisode.LegacyModelTVEpisodePropertyKey.rawValue.getter()
{
  result = 0xD00000000000001FLL;
  switch(*v0)
  {
    case 1:
    case 0x17:
      result = 0xD000000000000020;
      break;
    case 2:
    case 0x10:
      result = 0xD000000000000027;
      break;
    case 3:
    case 4:
    case 0x13:
      result = 0xD000000000000026;
      break;
    case 5:
    case 7:
    case 0x14:
      result = 0xD00000000000002ALL;
      break;
    case 6:
      result = 0xD000000000000024;
      break;
    case 8:
      result = 0xD000000000000021;
      break;
    case 9:
    case 0x15:
      result = 0xD00000000000002CLL;
      break;
    case 0xA:
    case 0xC:
      result = 0xD00000000000002ELL;
      break;
    case 0xB:
      result = 0xD000000000000034;
      break;
    case 0xD:
      result = 0xD000000000000028;
      break;
    case 0xE:
      result = 0xD00000000000001ELL;
      break;
    case 0xF:
      result = 0xD000000000000023;
      break;
    case 0x11:
      result = 0xD00000000000001DLL;
      break;
    case 0x12:
      result = 0xD00000000000001CLL;
      break;
    case 0x16:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5402D90@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TVEpisode.LegacyModelTVEpisodePropertyKey.init(rawValue:)(a1);
}

unint64_t sub_1D5402D9C@<X0>(unint64_t *a1@<X8>)
{
  result = TVEpisode.LegacyModelTVEpisodePropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TVEpisode.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69768A0];
  v3 = sub_1D5613158();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_1D5402E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5403298(&qword_1EC7F5F58, type metadata accessor for TVEpisode);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D5402EE8()
{
  sub_1D5403298(&qword_1EC7EA720, type metadata accessor for TVEpisode);

  return sub_1D56132F8();
}

id TVEpisode.Kind.init(legacyModelRawValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [objc_opt_self() typeForRawValue_];
  v4 = 0x171A1406051AuLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v4) = 26;
  }

  *a2 = v4;
  return result;
}

Swift::Int sub_1D5402FDC@<X0>(Swift::Int *a1@<X8>)
{
  result = TVEpisode.Kind.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

uint64_t sub_1D5403004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D5403064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D54030C0()
{
  result = qword_1EC7F5F48;
  if (!qword_1EC7F5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F48);
  }

  return result;
}

unint64_t sub_1D540311C()
{
  result = qword_1EC7F5F50;
  if (!qword_1EC7F5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F50);
  }

  return result;
}

_BYTE *_s31LegacyModelTVEpisodePropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D5403298(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_33_55()
{
}

uint64_t MusicSummariesRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v9 = type metadata accessor for MusicRequestConfiguration();
  swift_dynamicCast();
  OUTLINED_FUNCTION_219();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  sub_1D4F73F78(v8, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v6, 1, v9) != 1)
    {
      sub_1D4E6C9CC(v6, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D4E56C6C(v6, a1);
  }

  return sub_1D4E6C9CC(v8, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D540349C(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F5A490(a1, v5);
  return MusicSummariesRequest.configuration.setter(v5);
}

uint64_t MusicSummariesRequest.configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D560CD48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration();
  OUTLINED_FUNCTION_0_221();
  sub_1D5404EEC(v9, v10);
  sub_1D560E6C8();
  sub_1D4F581B8(a1);
  return (*(v5 + 40))(v2, v8, v4);
}

void (*MusicSummariesRequest.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration();
  v3[4] = v7;
  v8 = *(*(v7 - 8) + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[6] = v9;
  MusicSummariesRequest.configuration.getter(v9);
  return sub_1D5403730;
}

void sub_1D5403730(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    sub_1D4F5A490((*a1)[6], v3);
    OUTLINED_FUNCTION_0_221();
    sub_1D5404EEC(v10, v11);
    sub_1D560E6C8();
    sub_1D4F581B8(v3);
    v12 = OUTLINED_FUNCTION_4_63();
    v13(v12);
    sub_1D4F581B8(v4);
  }

  else
  {
    OUTLINED_FUNCTION_0_221();
    sub_1D5404EEC(v14, v15);
    sub_1D560E6C8();
    sub_1D4F581B8(v4);
    v16 = OUTLINED_FUNCTION_4_63();
    v17(v16);
  }

  free(v4);
  free(v3);
  free(v6);

  free(v2);
}

uint64_t MusicSummariesRequest.response()(uint64_t a1)
{
  v4 = *(MEMORY[0x1E6974FB0] + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for MusicSummariesRequest();
  v7 = sub_1D560CD48();
  v8 = sub_1D5404EEC(&qword_1EC7F5F60, type metadata accessor for MusicSummariesRequest);
  *v5 = v2;
  v5[1] = sub_1D5404F5C;
  v9 = MEMORY[0x1E6974D18];

  return MEMORY[0x1EEDCE900](a1, v1, v6, v7, v8, v9);
}

uint64_t type metadata accessor for MusicSummariesRequest()
{
  result = qword_1EC7F5F80;
  if (!qword_1EC7F5F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicSummariesRequest.catalogResponse()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0) - 8) + 64);
  v2[4] = OUTLINED_FUNCTION_127();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC020, &qword_1D561F998);
  v2[5] = v4;
  OUTLINED_FUNCTION_69(v4);
  v2[6] = v5;
  v7 = *(v6 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v8 = sub_1D560D428();
  v2[9] = v8;
  OUTLINED_FUNCTION_69(v8);
  v2[10] = v9;
  v11 = *(v10 + 64);
  v2[11] = OUTLINED_FUNCTION_127();
  v12 = sub_1D560CD48();
  v2[12] = v12;
  OUTLINED_FUNCTION_69(v12);
  v2[13] = v13;
  v15 = *(v14 + 64);
  v2[14] = OUTLINED_FUNCTION_127();
  v16 = sub_1D560D348();
  v2[15] = v16;
  OUTLINED_FUNCTION_69(v16);
  v2[16] = v17;
  v19 = *(v18 + 64);
  v2[17] = OUTLINED_FUNCTION_127();
  v20 = sub_1D560D388();
  v2[18] = v20;
  OUTLINED_FUNCTION_69(v20);
  v2[19] = v21;
  v23 = *(v22 + 64);
  v2[20] = OUTLINED_FUNCTION_127();
  v24 = sub_1D560EBD8();
  v2[21] = v24;
  OUTLINED_FUNCTION_69(v24);
  v2[22] = v25;
  v27 = *(v26 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v28 = sub_1D560BB98();
  v2[25] = v28;
  OUTLINED_FUNCTION_69(v28);
  v2[26] = v29;
  v31 = *(v30 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v32 = *(MEMORY[0x1E6974D08] + 4);
  v33 = swift_task_alloc();
  v2[31] = v33;
  *v33 = v2;
  v33[1] = sub_1D5403CF4;

  return MEMORY[0x1EEDCE260]();
}

uint64_t sub_1D5403CF4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 248);
  *v3 = *v1;
  v2[32] = v6;
  v2[33] = v7;

  if (v0)
  {
    v9 = v2[29];
    v8 = v2[30];
    v11 = v2[27];
    v10 = v2[28];
    v13 = v2[23];
    v12 = v2[24];
    v14 = v2[20];
    v15 = v2[17];
    v16 = v2[14];
    v25 = v2[11];
    v26 = v2[8];
    v27 = v2[7];
    v17 = v2[4];

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_63_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1D5403ED0()
{
  if (v0[33])
  {
    v1 = v0[32];
    v3 = v0[29];
    v2 = v0[30];
    v4 = v0[25];
    v5 = v0[26];
    v6 = v0[33];
    sub_1D560BB28();

    (*(v5 + 16))(v3, v2, v4);
    sub_1D4EFFE00();
    v8 = v7;
    v9 = *(v7 + 16);
    if (v9 >= *(v7 + 24) >> 1)
    {
      OUTLINED_FUNCTION_219();
      sub_1D4EFFE00();
      v8 = v43;
    }

    v10 = v0[29];
    v11 = v0[25];
    v12 = v0[26];
    (*(v12 + 8))(v0[30], v11);
    *(v8 + 16) = v9 + 1;
    (*(v12 + 32))(v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9, v10, v11);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v13 = v0[28];
  sub_1D560BB28();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = *(v8 + 16);
    OUTLINED_FUNCTION_219();
    sub_1D4EFFE00();
    v8 = v38;
  }

  v14 = *(v8 + 16);
  if (v14 >= *(v8 + 24) >> 1)
  {
    OUTLINED_FUNCTION_219();
    sub_1D4EFFE00();
    v8 = v39;
  }

  v16 = v0[27];
  v15 = v0[28];
  v17 = v0[25];
  v18 = v0[26];
  *(v8 + 16) = v14 + 1;
  v19 = *(v18 + 32);
  v18 += 32;
  v20 = (*(v18 + 48) + 32) & ~*(v18 + 48);
  v50 = *(v18 + 40);
  v52 = v19;
  v19(v8 + v20 + v50 * v14, v15, v17);
  sub_1D560BB28();
  v21 = *(v8 + 16);
  v22 = v21 + 1;
  if (v21 >= *(v8 + 24) >> 1)
  {
    OUTLINED_FUNCTION_219();
    v41 = v40;
    sub_1D4EFFE00();
    v22 = v41;
    v8 = v42;
  }

  v23 = v0[27];
  v25 = v0[24];
  v24 = v0[25];
  v26 = v0[22];
  v45 = v0[23];
  v46 = v0[21];
  v49 = v0[20];
  v27 = v0[16];
  v47 = v0[17];
  v48 = v0[15];
  v51 = v0[14];
  v28 = v8 + v20;
  v30 = v0[12];
  v29 = v0[13];
  v31 = v0[3];
  *(v8 + 16) = v22;
  v52(v28 + v21 * v50, v23, v24);
  sub_1D560EB78();

  (*(v26 + 16))(v45, v25, v46);
  (*(v27 + 104))(v47, *MEMORY[0x1E6974E78], v48);
  sub_1D560D368();
  v32 = *(v29 + 16);
  v0[34] = v32;
  v0[35] = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v32(v51, v31, v30);
  sub_1D560D2B8();
  v33 = *(MEMORY[0x1E6974EB0] + 4);
  v34 = swift_task_alloc();
  v0[36] = v34;
  *v34 = v0;
  v34[1] = sub_1D54042D0;
  v35 = v0[20];
  v36 = v0[11];

  return MEMORY[0x1EEDCE5B0](v36);
}

uint64_t sub_1D54042D0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v9 + 296) = v0;

  if (v0)
  {
    v10 = sub_1D54048BC;
  }

  else
  {
    v10 = sub_1D54043DC;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1D54043DC()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v59 = v0[8];
  v62 = v0[37];
  v6 = v0[5];
  v7 = v0[3];
  v8 = sub_1D560B9C8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1D560B9B8();
  v1(v3, v7, v5);
  sub_1D560B988();
  v11 = sub_1D5612208();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1D56121F8();

  sub_1D560B968();
  v14 = sub_1D560D418();
  v16 = v15;
  sub_1D5404CF0();
  sub_1D560B948();
  sub_1D4E55E1C(v14, v16);
  if (v62)
  {
    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[9];

    (*(v18 + 8))(v17, v19);
    v20 = v0[24];
    v21 = v0[21];
    v22 = v0[22];
    (*(v0[19] + 8))(v0[20], v0[18]);
    (*(v22 + 8))(v20, v21);
    v24 = v0[29];
    v23 = v0[30];
    v26 = v0[27];
    v25 = v0[28];
    OUTLINED_FUNCTION_6_128();
    v27 = v0[11];
    v55 = v0[8];
    v57 = v0[7];
    v60 = v0[4];
  }

  else
  {
    v29 = v0[34];
    v39 = v0[35];
    v53 = v0[30];
    v54 = v0[29];
    v56 = v0[28];
    v58 = v0[27];
    v52 = v0[24];
    v61 = v0[23];
    v50 = v0[22];
    v51 = v0[21];
    v47 = v0[19];
    v48 = v0[18];
    v49 = v0[20];
    v63 = v0[17];
    v30 = v0[14];
    v31 = v0[12];
    v43 = v0[13];
    v44 = v0[10];
    v45 = v0[9];
    v46 = v0[11];
    v41 = v0[7];
    v42 = v0[8];
    v32 = v0[5];
    v33 = v0[6];
    v35 = v0[3];
    v34 = v0[4];
    v40 = v0[2];
    (*(v33 + 16))();
    v29(v30, v35, v31);
    v36 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v36);
    type metadata accessor for MusicSummary();
    sub_1D5404EEC(&qword_1EC7EC048, type metadata accessor for MusicSummary);
    sub_1D5404EEC(&qword_1EC7EC000, type metadata accessor for MusicSummary);
    sub_1D5612368();

    sub_1D4E6C9CC(v34, &qword_1EC7EA7D8, &unk_1D561E8B0);
    (*(v43 + 8))(v30, v31);
    v37 = *(v33 + 8);
    v37(v41, v32);
    v37(v42, v32);
    (*(v44 + 8))(v46, v45);
    (*(v47 + 8))(v49, v48);
    (*(v50 + 8))(v52, v51);
  }

  OUTLINED_FUNCTION_55();

  return v28();
}

void sub_1D54048BC()
{
  v14 = v0[37];
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v2 + 8))(v1, v3);
  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  OUTLINED_FUNCTION_6_128();
  v8 = v0[11];
  v11 = v0[8];
  v12 = v0[7];
  v13 = v0[4];

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_63_0();

  __asm { BRAA            X1, X16 }
}

uint64_t MusicSummariesRequest.hash(into:)()
{
  sub_1D560CD48();
  OUTLINED_FUNCTION_2_167();
  sub_1D5404EEC(v0, v1);

  return sub_1D5614CB8();
}

uint64_t MusicSummariesRequest.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D560CD48();
  OUTLINED_FUNCTION_2_167();
  sub_1D5404EEC(v0, v1);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5404AE8()
{
  sub_1D56162D8();
  sub_1D560CD48();
  sub_1D5404EEC(&qword_1EC7EA848, MEMORY[0x1E6974D20]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5404B6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5404C04;

  return MusicSummariesRequest.catalogResponse()(a1);
}

uint64_t sub_1D5404C04()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  OUTLINED_FUNCTION_55();

  return v4();
}

unint64_t sub_1D5404CF0()
{
  result = qword_1EC7F5F68;
  if (!qword_1EC7F5F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC020, &qword_1D561F998);
    sub_1D5404D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F68);
  }

  return result;
}

unint64_t sub_1D5404D74()
{
  result = qword_1EC7EC030;
  if (!qword_1EC7EC030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC028, &qword_1D561F9A0);
    sub_1D5404EEC(&qword_1EC7EC038, type metadata accessor for CloudMusicSummary);
    sub_1D5404EEC(&qword_1EC7EC040, type metadata accessor for CloudMusicSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC030);
  }

  return result;
}

uint64_t sub_1D5404EEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CloudHLSAsset()
{
  result = qword_1EDD57A08;
  if (!qword_1EDD57A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5404FD4()
{
  sub_1D500A1D4();
  if (v0 <= 0x3F)
  {
    sub_1D4F18AF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D54050A0@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_1D5611C78();
  v2 = OUTLINED_FUNCTION_4(v1);
  v65 = v3;
  v66 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = sub_1D5610788();
  v10 = OUTLINED_FUNCTION_4(v9);
  v63 = v11;
  v64 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v61 = v15 - v14;
  v62 = sub_1D56107C8();
  v16 = OUTLINED_FUNCTION_4(v62);
  v60 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v59 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - v26;
  v58 = type metadata accessor for CloudHLSAsset();
  v28 = OUTLINED_FUNCTION_14(v58);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v58 - v34;
  v36 = sub_1D560C0A8();
  v37 = OUTLINED_FUNCTION_4(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v44 = v43 - v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  sub_1D5610708();
  sub_1D50D019C(v35, v27);
  sub_1D54067AC(v35);
  if (__swift_getEnumTagSinglePayload(v27, 1, v36) == 1)
  {
    sub_1D4E50004(v27, &unk_1EC7E9CA8, &unk_1D561D1D0);
    *v8 = 7107189;
    v8[1] = 0xE300000000000000;
    v46 = v65;
    v45 = v66;
    (*(v65 + 104))(v8, *MEMORY[0x1E69763E0], v66);
    sub_1D5406808(&qword_1EC7EE070, MEMORY[0x1E69763F0]);
    swift_allocError();
    (*(v46 + 16))(v47, v8, v45);
    swift_willThrow();
    return (*(v46 + 8))(v8, v45);
  }

  else
  {
    v49 = v39;
    (*(v39 + 32))(v44, v27, v36);
    (*(v39 + 16))(v67, v44, v36);
    v50 = v59;
    sub_1D56107A8();
    sub_1D5610708();
    v51 = &v33[*(v58 + 20)];
    v52 = *v51;
    v53 = *(v51 + 1);

    sub_1D54067AC(v33);
    v55 = v63;
    v54 = v64;
    v56 = v61;
    (*(v63 + 104))(v61, *MEMORY[0x1E6975DD0], v64);
    v57 = v67 + *(type metadata accessor for HLSAsset() + 20);
    sub_1D5610798();

    (*(v55 + 8))(v56, v54);
    (*(v60 + 8))(v50, v62);
    return (*(v49 + 8))(v44, v36);
  }
}

uint64_t sub_1D5405584@<X0>(uint64_t a1@<X8>)
{
  v35[1] = a1;
  v2 = sub_1D5610788();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v35[0] = sub_1D56107C8();
  v11 = OUTLINED_FUNCTION_4(v35[0]);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = type metadata accessor for CloudHLSAsset();
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v35 - v26;
  v28 = sub_1D560C0A8();
  OUTLINED_FUNCTION_14(v28);
  (*(v29 + 16))(v27, v1, v28);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
  sub_1D56107A8();
  LODWORD(v28) = *(type metadata accessor for HLSAsset() + 20);
  (*(v5 + 104))(v10, *MEMORY[0x1E6975DD0], v2);
  v30 = sub_1D56107B8();
  v32 = v31;
  (*(v5 + 8))(v10, v2);
  (*(v13 + 8))(v18, v35[0]);
  v33 = &v27[*(v19 + 20)];
  *v33 = v30;
  v33[1] = v32;
  sub_1D5406748(v27, v25);
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D56106F8();
  return sub_1D54067AC(v27);
}

uint64_t sub_1D5405824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C0A8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v39 - v24;
  v26 = *(v23 + 56);
  sub_1D50D019C(a1, &v39 - v24);
  sub_1D50D019C(a2, &v25[v26]);
  OUTLINED_FUNCTION_10(v25);
  if (!v27)
  {
    sub_1D50D019C(v25, v18);
    OUTLINED_FUNCTION_10(&v25[v26]);
    if (!v27)
    {
      (*(v7 + 32))(v12, &v25[v26], v4);
      OUTLINED_FUNCTION_0_222();
      sub_1D5406808(v29, v30);
      v31 = sub_1D5614D18();
      v32 = *(v7 + 8);
      v32(v12, v4);
      v32(v18, v4);
      sub_1D4E50004(v25, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v7 + 8))(v18, v4);
LABEL_9:
    sub_1D4E50004(v25, &qword_1EC7E9FB0, &qword_1D562C590);
    return 0;
  }

  OUTLINED_FUNCTION_10(&v25[v26]);
  if (!v27)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v25, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_13:
  v33 = *(type metadata accessor for CloudHLSAsset() + 20);
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (v37)
    {
      v38 = *v34 == *v36 && v35 == v37;
      if (v38 || (sub_1D5616168() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v37)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5405AEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D5405BBC(char a1)
{
  if (a1)
  {
    return 0x6974617269707865;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1D5405BF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5FA0, &unk_1D56613B8);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54066F4();
  sub_1D56163D8();
  v20[15] = 0;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_222();
  sub_1D5406808(v14, v15);
  sub_1D5616068();
  if (!v2)
  {
    v16 = (v3 + *(type metadata accessor for CloudHLSAsset() + 20));
    v17 = *v16;
    v18 = v16[1];
    v20[14] = 1;
    sub_1D5616028();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D5405D8C()
{
  v1 = v0;
  v2 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  sub_1D50D019C(v1, &v22 - v15);
  if (__swift_getEnumTagSinglePayload(v16, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v10, v16, v2);
    sub_1D56162F8();
    OUTLINED_FUNCTION_0_222();
    sub_1D5406808(v17, v18);
    sub_1D5614CB8();
    (*(v5 + 8))(v10, v2);
  }

  v19 = (v1 + *(type metadata accessor for CloudHLSAsset() + 20));
  if (!v19[1])
  {
    return sub_1D56162F8();
  }

  v20 = *v19;
  sub_1D56162F8();
  return sub_1D5614E28();
}

uint64_t sub_1D5405F64()
{
  v1 = v0;
  v2 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  sub_1D56162D8();
  sub_1D50D019C(v1, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v10, v16, v2);
    sub_1D56162F8();
    OUTLINED_FUNCTION_0_222();
    sub_1D5406808(v17, v18);
    sub_1D5614CB8();
    (*(v5 + 8))(v10, v2);
  }

  v19 = (v1 + *(type metadata accessor for CloudHLSAsset() + 20));
  if (v19[1])
  {
    v20 = *v19;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

uint64_t sub_1D540614C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5F90, &qword_1D56613B0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v35 = v12;
  v36 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v16 = type metadata accessor for CloudHLSAsset();
  v17 = OUTLINED_FUNCTION_14(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54066F4();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D560C0A8();
  v38 = 0;
  OUTLINED_FUNCTION_0_222();
  sub_1D5406808(v24, v25);
  sub_1D5615F78();
  sub_1D4F5A3D0(v9, v22);
  v37 = 1;
  v26 = sub_1D5615F38();
  v28 = v27;
  v29 = OUTLINED_FUNCTION_6_129();
  v30(v29);
  v31 = (v22 + *(v16 + 20));
  *v31 = v26;
  v31[1] = v28;
  sub_1D5406748(v22, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D54067AC(v22);
}

uint64_t sub_1D54063FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5405AEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5406424(uint64_t a1)
{
  v2 = sub_1D54066F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5406460(uint64_t a1)
{
  v2 = sub_1D54066F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D54064D8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1D560C0A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - v12;
  sub_1D56162D8();
  sub_1D50D019C(v4, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1D56162F8();
    sub_1D5406808(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v9, v5);
  }

  v14 = (v4 + *(a2 + 20));
  if (v14[1])
  {
    v15 = *v14;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

unint64_t sub_1D54066F4()
{
  result = qword_1EC7F5F98;
  if (!qword_1EC7F5F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F98);
  }

  return result;
}

uint64_t sub_1D5406748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudHLSAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54067AC(uint64_t a1)
{
  v2 = type metadata accessor for CloudHLSAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5406808(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for CloudHLSAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5406930()
{
  result = qword_1EC7F5FA8;
  if (!qword_1EC7F5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5FA8);
  }

  return result;
}

unint64_t sub_1D5406988()
{
  result = qword_1EC7F5FB0;
  if (!qword_1EC7F5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5FB0);
  }

  return result;
}

unint64_t sub_1D54069E0()
{
  result = qword_1EC7F5FB8;
  if (!qword_1EC7F5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5FB8);
  }

  return result;
}

uint64_t sub_1D5406A34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x724273656E755469 && a2 == 0xEF65707954646E61)
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

uint64_t sub_1D5406ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5406A34(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D5406B08(uint64_t a1)
{
  v2 = sub_1D54070BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5406B44(uint64_t a1)
{
  v2 = sub_1D54070BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5406B80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for StorePlatformGenre();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v61 = v7;
  OUTLINED_FUNCTION_70_0();
  v8 = type metadata accessor for StorePlatformRadioShow();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v60 = v12;
  OUTLINED_FUNCTION_70_0();
  v66 = sub_1D560FA68();
  v13 = OUTLINED_FUNCTION_4(v66);
  v64 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v62 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v59 - v20;
  v22 = type metadata accessor for StorePlatformCurator();
  v23 = OUTLINED_FUNCTION_22(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v59 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5FC0, &qword_1D56614E0);
  v33 = OUTLINED_FUNCTION_4(v32);
  v65 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v38 = v59 - v37;
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54070BC();
  v40 = v68;
  result = sub_1D5616398();
  if (!v40)
  {
    v68 = v28;
    v42 = v64;
    v43 = v66;
    if ((sub_1D5615FF8() & 1) == 0)
    {
      OUTLINED_FUNCTION_14_81();
      sub_1D513FA4C(v67, v31);
      (*(v65 + 8))(v38, v32);
LABEL_5:
      OUTLINED_FUNCTION_13_89();
LABEL_6:
      type metadata accessor for StorePlatformGenericMusicItem();
      return swift_storeEnumTagMultiPayload();
    }

    sub_1D5407110();
    sub_1D5615FD8();
    v59[1] = v32;
    v44 = v62;
    (*(v42 + 16))(v62, v21, v43);
    v45 = (*(v42 + 88))(v44, v43);
    if (v45 == *MEMORY[0x1E69759D8])
    {
      OUTLINED_FUNCTION_14_81();
      sub_1D513FA4C(v67, v68);
      v51 = OUTLINED_FUNCTION_2_168();
      v52(v51);
      v53 = OUTLINED_FUNCTION_4_131();
      v54(v53);
      goto LABEL_5;
    }

    if (v45 == *MEMORY[0x1E69759D0])
    {
      OUTLINED_FUNCTION_14_81();
      sub_1D52A59BC(v67, v61);
      v46 = OUTLINED_FUNCTION_2_168();
      v47(v46);
      v48 = OUTLINED_FUNCTION_4_131();
      v49(v48);
      OUTLINED_FUNCTION_13_89();
      goto LABEL_6;
    }

    if (v45 == *MEMORY[0x1E69759E0])
    {
      OUTLINED_FUNCTION_14_81();
      v50 = v60;
      sub_1D54284CC(v67, v60);
      v55 = OUTLINED_FUNCTION_2_168();
      v56(v55);
      v57 = OUTLINED_FUNCTION_4_131();
      v58(v57);
      sub_1D5407168(v50, v63, type metadata accessor for StorePlatformRadioShow);
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_5_125();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D54070BC()
{
  result = qword_1EC7F5FC8;
  if (!qword_1EC7F5FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5FC8);
  }

  return result;
}

unint64_t sub_1D5407110()
{
  result = qword_1EC7F0808;
  if (!qword_1EC7F0808)
  {
    sub_1D560FA68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0808);
  }

  return result;
}

uint64_t sub_1D5407168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D54071D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a1;
  v78 = a2;
  v6 = sub_1D5613C48();
  v7 = OUTLINED_FUNCTION_4(v6);
  v75 = v8;
  v76 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v74 = v11;
  OUTLINED_FUNCTION_70_0();
  v12 = sub_1D5614B68();
  v13 = OUTLINED_FUNCTION_4(v12);
  v72 = v14;
  v73 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v71 = v17;
  OUTLINED_FUNCTION_70_0();
  v18 = sub_1D56141F8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F07E8, &qword_1D5639468);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v68 - v30;
  v32 = sub_1D560FA68();
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_59_0();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v68 - v42;
  sub_1D4E494C8(0x724273656E755469, 0xEF65707954646E61, a3);
  if (!v81)
  {
    sub_1D4E6C9CC(v80, &qword_1EC7E9F98, &qword_1D561C420);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5FD0, &qword_1D56614E8);
    OUTLINED_FUNCTION_6_130(v44);
    v45 = v78;

    sub_1D5605694(v77, v45, a3);
    OUTLINED_FUNCTION_10_106();
    v46 = sub_1D5407868(&qword_1EC7F5FD8, &qword_1EC7F5FD0, &qword_1D56614E8);
    OUTLINED_FUNCTION_3_170(v46);
    sub_1D5614168();
    (*(v21 + 32))(a4, v25, v18);
LABEL_7:
    v47 = type metadata accessor for GenericMusicItem();
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v47);
  }

  v69 = v35;
  v70 = a4;
  a4 = v79;

  sub_1D560FA58();
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {

    sub_1D4E6C9CC(v31, &qword_1EC7F07E8, &qword_1D5639468);
    a4 = v70;
    goto LABEL_6;
  }

  v49 = v69;
  (*(v69 + 32))(v43, v31, v32);
  (*(v49 + 16))(v40, v43, v32);
  v50 = (*(v49 + 88))(v40, v32);
  if (v50 == *MEMORY[0x1E69759D8])
  {

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5FD0, &qword_1D56614E8);
    OUTLINED_FUNCTION_6_130(v51);
    v52 = v78;

    sub_1D5605694(v77, v52, a3);
    OUTLINED_FUNCTION_10_106();
    v53 = sub_1D5407868(&qword_1EC7F5FD8, &qword_1EC7F5FD0, &qword_1D56614E8);
    OUTLINED_FUNCTION_3_170(v53);
    sub_1D5614168();
    (*(v49 + 8))(v43, v32);
    a4 = v70;
    (*(v21 + 32))(v70, v25, v18);
    goto LABEL_7;
  }

  if (v50 == *MEMORY[0x1E69759D0])
  {

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5FE0, &qword_1D56614F0);
    OUTLINED_FUNCTION_6_130(v54);

    v55 = OUTLINED_FUNCTION_9_111();
    sub_1D560566C(v55, v56, v57);
    OUTLINED_FUNCTION_10_106();
    v58 = sub_1D5407868(&qword_1EC7F5FE8, &qword_1EC7F5FE0, &qword_1D56614F0);
    OUTLINED_FUNCTION_3_170(v58);
    sub_1D5613BA8();
    (*(v49 + 8))(v43, v32);
    v59 = OUTLINED_FUNCTION_12_88();
    v60(v59);
    goto LABEL_7;
  }

  if (v50 == *MEMORY[0x1E69759E0])
  {

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5FF0, &qword_1D56614F8);
    OUTLINED_FUNCTION_6_130(v61);

    v62 = OUTLINED_FUNCTION_9_111();
    sub_1D5605680(v62, v63, v64);
    OUTLINED_FUNCTION_10_106();
    v65 = sub_1D5407868(&qword_1EC7F5FF8, &qword_1EC7F5FF0, &qword_1D56614F8);
    OUTLINED_FUNCTION_3_170(v65);
    sub_1D5614AD8();
    (*(v69 + 8))(v43, v32);
    v66 = OUTLINED_FUNCTION_12_88();
    v67(v66);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_125();
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D5407868(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

_BYTE *storeEnumTagSinglePayload for StorePlatformRawCurator.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D540797C()
{
  result = qword_1EC7F6000;
  if (!qword_1EC7F6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6000);
  }

  return result;
}

unint64_t sub_1D54079D4()
{
  result = qword_1EC7F6008;
  if (!qword_1EC7F6008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6008);
  }

  return result;
}

unint64_t sub_1D5407A68()
{
  result = qword_1EC7F6010;
  if (!qword_1EC7F6010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6010);
  }

  return result;
}

unint64_t sub_1D5407AC0()
{
  result = qword_1EC7F6018;
  if (!qword_1EC7F6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6018);
  }

  return result;
}

uint64_t UploadedVideo.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v259 = a4;
  v246 = a1;
  v238 = a5;
  v7 = sub_1D5613598();
  v8 = OUTLINED_FUNCTION_4(v7);
  v252 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v12);
  v236 = sub_1D5612B88();
  v13 = OUTLINED_FUNCTION_4(v236);
  v253 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1318, &qword_1D563FBC0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v22);
  v23 = sub_1D5610088();
  v24 = OUTLINED_FUNCTION_4(v23);
  v255 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v28);
  v244 = sub_1D560D838();
  v29 = OUTLINED_FUNCTION_4(v244);
  v243 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5E8, &qword_1D56322E0);
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_3();
  v256 = v38;
  v241 = type metadata accessor for UploadedVideoPropertyProvider();
  OUTLINED_FUNCTION_24_0(v241);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  v258 = v231 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v45 = OUTLINED_FUNCTION_22(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_59_0();
  v50 = v48 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = v231 - v52;
  v234 = sub_1D5612478();
  v54 = OUTLINED_FUNCTION_4(v234);
  v233 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v59 = v231 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);

  v245 = a2;
  sub_1D560F7E8();
  OUTLINED_FUNCTION_14_82();
  v62 = sub_1D540A538(v60, v61);
  v237 = v7;
  v259 = v62;
  v257 = sub_1D5614C68();

  sub_1D560FF38();
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v23);
  sub_1D560FF38();
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v23);
  v242 = v59;
  v63 = v246;
  sub_1D560D4D8();
  sub_1D4E7661C(v50, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v53, &qword_1EC7EA358, &unk_1D561DF50);
  v239 = a3;
  sub_1D4EC76A8(a3, v260);
  if (!v261)
  {
    sub_1D4E7661C(v260, &qword_1EC7EEC40, &unk_1D561C070);
    v262 = 0u;
    v263 = 0u;
    v264 = 0;
LABEL_8:
    v64 = v241;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v264 = 0;
    v262 = 0u;
    v263 = 0u;
    goto LABEL_8;
  }

  v64 = v241;
  if (!*(&v263 + 1))
  {
LABEL_9:
    sub_1D4E7661C(&v262, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_10;
  }

  sub_1D4E48324(&v262, &v265);
  __swift_project_boxed_opaque_existential_1(&v265, v266);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v65 = v256;
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_17_53(v65);
    v66 = v250;
    sub_1D5408E5C(v65, v250);
    v67 = v258;
    sub_1D5408D9C(v66, v258);
    v68 = &v66[v64[31]];
    v69 = v251;
    sub_1D560D718();
    (*(v243 + 40))(v67 + v64[31], v69, v244);
    v70 = v254;
    sub_1D5612468();
    (*(v255 + 40))(v67 + v64[32], v70, v23);
    v71 = sub_1D5612458();
    v73 = v72;
    sub_1D5408E00(v66);
    v74 = (v67 + v64[33]);
    v75 = v74[1];

    *v74 = v71;
    v74[1] = v73;
    __swift_destroy_boxed_opaque_existential_1(&v265);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v227, v228, v229, v64);
  sub_1D4E7661C(v65, &qword_1EC7EF5E8, &qword_1D56322E0);
  __swift_destroy_boxed_opaque_existential_1(&v265);
LABEL_10:
  v76 = v64[5];
  sub_1D56140F8();
  v77 = v258;
  v78 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  v82 = v64[6];
  type metadata accessor for AssetFlavors();
  v83 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
  v87 = v64[7];
  sub_1D560F928();
  v88 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  v92 = v64[8];
  sub_1D56106B8();
  v93 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
  v97 = v64[11];
  v98 = sub_1D5610978();
  v99 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v98);
  v102 = v64[13];
  v103 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v103);
  v107 = v64[14];
  sub_1D56128E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
  v112 = v64[15];
  type metadata accessor for HLSAsset();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
  v117 = v64[16];
  sub_1D5610CB8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
  v122 = v64[17];
  v123 = sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v123);
  v127 = v64[18];
  sub_1D5613198();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
  v132 = v64[19];
  sub_1D56134E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v133, v134, v135, v136);
  v137 = v64[20];
  sub_1D5614A78();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v138, v139, v140, v141);
  v142 = v64[21];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v143, v144, v145, v98);
  v146 = v64[22];
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
  v151 = v64[23];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v152, v153, v154, v123);
  v155 = v64[25];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v103);
  v159 = v64[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v160 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
  v164 = v64[28];
  type metadata accessor for CuratorRelationshipProvider();
  v165 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
  (*(v243 + 16))(&v77[v64[31]], v63, v244);
  v169 = &v77[v64[32]];
  sub_1D5612468();
  v170 = sub_1D5612458();
  v172 = v171;
  sub_1D5614A88();
  v256 = OUTLINED_FUNCTION_18_77();
  v255 = OUTLINED_FUNCTION_18_77();
  v173 = OUTLINED_FUNCTION_18_77();
  v174 = OUTLINED_FUNCTION_18_77();
  *v77 = 0;
  *(v77 + 1) = 0;
  v175 = &v77[v64[9]];
  *v175 = 0;
  v175[8] = 1;
  *&v77[v64[10]] = 0;
  *&v77[v64[12]] = 0;
  v176 = &v77[v64[24]];
  *v176 = 0;
  *(v176 + 1) = 0;
  v177 = &v77[v64[26]];
  *v177 = 0;
  *(v177 + 1) = 0;
  *&v77[v64[29]] = 0;
  if (qword_1EDD54CE8 != -1)
  {
    swift_once();
  }

  v178 = qword_1EDD76B50;
  if (qword_1EDD76B50 >> 62)
  {
    sub_1D560CDE8();

    v230 = sub_1D5615E18();

    v178 = v230;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v179 = v258;
  *&v258[v64[30]] = v178;
  v180 = (v179 + v64[33]);
  *v180 = v170;
  v180[1] = v172;
  v181 = v255;
  *(v179 + v64[34]) = v256;
  *(v179 + v64[35]) = v181;
  *(v179 + v64[36]) = v173;
  *(v179 + v64[37]) = v174;
LABEL_15:
  swift_getKeyPath();
  v182 = *MEMORY[0x1E6976AF0];
  v250 = *(v252 + 104);
  v254 = v252 + 104;
  v183 = v249;
  v184 = v237;
  (v250)(v249, v182, v237);
  OUTLINED_FUNCTION_17_53(v183);
  v185 = *MEMORY[0x1E6976668];
  v186 = v253;
  v187 = *(v253 + 104);
  v247 = v253 + 104;
  v251 = v187;
  v188 = v235;
  v248 = v185;
  v189 = v236;
  (v187)(v235, v185, v236);
  v255 = sub_1D540A538(&qword_1EDD54CD8, type metadata accessor for UploadedVideoPropertyProvider);
  sub_1D5610D98();

  v256 = *(v186 + 8);
  v190 = OUTLINED_FUNCTION_135_0();
  v191(v190);
  v253 = v186 + 8;
  sub_1D4E7661C(v183, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v192 = *MEMORY[0x1E6976A88];
  v193 = OUTLINED_FUNCTION_38_42(&v268);
  v194 = v250;
  (v250)(v193);
  v195 = v185;
  v196 = v251;
  (v251)(v188, v195, v189);
  OUTLINED_FUNCTION_32_56();
  sub_1D5610D78();

  v197 = OUTLINED_FUNCTION_135_0();
  v256(v197);
  v198 = *(v252 + 8);
  v252 += 8;
  v240 = v198;
  v198(v183, v184);
  swift_getKeyPath();
  v199 = *MEMORY[0x1E6976AF8];
  v200 = OUTLINED_FUNCTION_38_42(&v269);
  (v194)(v200);
  OUTLINED_FUNCTION_17_53(v183);
  v232 = *MEMORY[0x1E6976670];
  v196(v188);
  OUTLINED_FUNCTION_32_34();
  sub_1D5610D88();

  v201 = OUTLINED_FUNCTION_135_0();
  v202 = v256;
  v256(v201);
  sub_1D4E7661C(v183, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v203 = *MEMORY[0x1E6976AA8];
  OUTLINED_FUNCTION_30_61();
  v204();
  v205 = OUTLINED_FUNCTION_21_72();
  v206 = v247;
  v251(v205);
  OUTLINED_FUNCTION_32_56();
  sub_1D5610D78();

  v202(v188, v189);
  OUTLINED_FUNCTION_35_57();
  v207();
  v231[1] = swift_getKeyPath();
  v208 = v249;
  v209 = v250;
  (v250)(v249, *MEMORY[0x1E6976AB8], v184);
  OUTLINED_FUNCTION_17_53(v208);
  v210 = OUTLINED_FUNCTION_21_72();
  v251(v210);
  OUTLINED_FUNCTION_32_34();
  sub_1D5610D88();

  (v256)(v188, v189);
  sub_1D4E7661C(v208, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  (v209)(v208, *MEMORY[0x1E6976AC0], v184);
  OUTLINED_FUNCTION_17_53(v208);
  v211 = OUTLINED_FUNCTION_21_72();
  v212 = v251;
  v251(v211);
  OUTLINED_FUNCTION_32_34();
  sub_1D5610D88();

  v213 = OUTLINED_FUNCTION_135_0();
  v256(v213);
  sub_1D4E7661C(v208, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v214 = *MEMORY[0x1E6976AA0];
  OUTLINED_FUNCTION_30_61();
  v215();
  v216 = OUTLINED_FUNCTION_21_72();
  v212(v216);
  OUTLINED_FUNCTION_32_56();
  sub_1D5610D78();

  v217 = OUTLINED_FUNCTION_135_0();
  v256(v217);
  OUTLINED_FUNCTION_35_57();
  v218();
  swift_getKeyPath();
  v219 = *MEMORY[0x1E6976AD8];
  OUTLINED_FUNCTION_38_42(&v269);
  OUTLINED_FUNCTION_30_61();
  v220();
  OUTLINED_FUNCTION_17_53(v206);
  (v251)(v188, v232, v189);
  v221 = v255;
  v222 = v258;
  sub_1D5610D68();

  v223 = OUTLINED_FUNCTION_135_0();
  v256(v223);
  sub_1D4E7661C(v206, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v224 = v246;
  sub_1D5610DA8();

  v266 = v241;
  v267 = v221;
  v225 = __swift_allocate_boxed_opaque_existential_0(&v265);
  sub_1D5408D9C(v222, v225);
  UploadedVideo.init(propertyProvider:)(&v265, v238);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v239, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v243 + 8))(v224, v244);
  (*(v233 + 8))(v242, v234);
  return sub_1D5408E00(v222);
}

uint64_t sub_1D5408D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedVideoPropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5408E00(uint64_t a1)
{
  v2 = type metadata accessor for UploadedVideoPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5408E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedVideoPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5408EC0()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F6020);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F6020);
  v2 = *MEMORY[0x1E69767F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static UploadedVideo.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E9608 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7F6020);
  OUTLINED_FUNCTION_24_0(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t UploadedVideo.convertToLegacyModelStorageDictionary(for:)()
{
  v1 = v0;
  v173 = sub_1D5614A78();
  v2 = OUTLINED_FUNCTION_4(v173);
  v167 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v21);
  v170 = sub_1D5610CB8();
  v22 = OUTLINED_FUNCTION_4(v170);
  v166 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v31);
  v174 = sub_1D560F928();
  v32 = OUTLINED_FUNCTION_4(v174);
  v165 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v164 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v164 - v47;
  v49 = sub_1D5613598();
  v50 = OUTLINED_FUNCTION_4(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_135();
  v180 = v56;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_135();
  v179 = v58;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_135();
  v178 = v60;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_135();
  v177 = v63;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v66);
  v68 = v164 - v67;
  OUTLINED_FUNCTION_14_82();
  v176 = sub_1D540A538(v69, v70);
  v71 = sub_1D5614BD8();
  v72 = *MEMORY[0x1E6976AF0];
  v183 = v52;
  v73 = *(v52 + 104);
  v181 = v52 + 104;
  v186 = v73;
  v73(v68, v72, v49);
  if (qword_1EDD53E58 != -1)
  {
    swift_once();
  }

  v74 = sub_1D56140F8();
  v75 = sub_1D540A538(&qword_1EDD57488, type metadata accessor for UploadedVideo);
  v184 = sub_1D540A538(&qword_1EC7EC488, type metadata accessor for UploadedVideo);
  v185 = v75;
  sub_1D560EC28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v74);
  v182 = v1;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v48, &qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0(v74);
    (*(v77 + 8))(v48, v74);
    if (v190)
    {
      OUTLINED_FUNCTION_9_67();
      OUTLINED_FUNCTION_0_122();
      sub_1D4F14934();
      v71 = v187;
      v78 = *(v183 + 8);
      v78(v68, v49);
      goto LABEL_11;
    }
  }

  sub_1D4E7661C(&v189, &qword_1EC7E9F98, &qword_1D561C420);
  sub_1D4F0E600();
  if (v80)
  {
    v81 = v79;
    swift_isUniquelyReferenced_nonNull_native();
    v187 = v71;
    v82 = *(v71 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
    sub_1D5615D78();
    v71 = v187;
    v78 = *(v183 + 8);
    v78((*(v187 + 48) + *(v183 + 72) * v81), v49);
    sub_1D4E519A8((*(v71 + 56) + 32 * v81), v188);
    sub_1D5615D98();
  }

  else
  {
    memset(v188, 0, sizeof(v188));
    v78 = *(v183 + 8);
  }

  v78(v68, v49);
  sub_1D4E7661C(v188, &qword_1EC7E9F98, &qword_1D561C420);
LABEL_11:
  v83 = v168;
  v186(v168, *MEMORY[0x1E6976A88], v49);
  if (qword_1EDD53F68 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v84 = v174;
  if (__swift_getEnumTagSinglePayload(v42, 1, v174) == 1)
  {
    sub_1D4E7661C(v42, &qword_1EC7EDB98, L"X\b\a");
    sub_1D4F0E600();
    if (v86)
    {
      v87 = v85;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      OUTLINED_FUNCTION_20_4();
      v78((v88 + v89 * v87), v49);
      sub_1D4E519A8((*(v71 + 56) + 32 * v87), &v189);
      sub_1D5615D98();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    v95 = v169;
    OUTLINED_FUNCTION_27_38();
    v78(v83, v49);
    sub_1D4E7661C(&v189, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v90 = v83;
    v91 = v165;
    (*(v165 + 16))(v164[1], v42, v84);
    sub_1D515CC4C();
    v92 = v84;
    v94 = v93;
    (*(v91 + 8))(v42, v92);
    v190 = sub_1D4F688F0();
    *&v189 = v94;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v71 = v187;
    OUTLINED_FUNCTION_27_38();
    v95 = v169;
    v78(v90, v49);
  }

  v96 = *MEMORY[0x1E6976AF8];
  OUTLINED_FUNCTION_37_24();
  v97();
  if (qword_1EDD53E28 != -1)
  {
    swift_once();
  }

  v98 = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (BYTE8(v189))
  {
    sub_1D4F0E600();
    if (v99)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      OUTLINED_FUNCTION_20_4();
      v78((v100 + v101 * v98), v49);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    v104 = v170;
    OUTLINED_FUNCTION_27_38();
    v105 = OUTLINED_FUNCTION_39_4();
    (v78)(v105);
    sub_1D4E7661C(&v189, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    sub_1D5615578();
    v190 = v98;
    *&v189 = v102;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v71 = v187;
    OUTLINED_FUNCTION_27_38();
    v103 = OUTLINED_FUNCTION_39_4();
    (v78)(v103);
    v104 = v170;
  }

  v106 = *MEMORY[0x1E6976AA8];
  OUTLINED_FUNCTION_37_24();
  v107();
  if (qword_1EDD53EE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (OUTLINED_FUNCTION_42_1(v95) == 1)
  {
    sub_1D4E7661C(v95, &qword_1EC7EF5D0, &unk_1D5632140);
    sub_1D4F0E600();
    if (v108)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      OUTLINED_FUNCTION_20_4();
      v78((v109 + v110 * v104), v49);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    OUTLINED_FUNCTION_27_38();
    v78(v177, v49);
    sub_1D4E7661C(&v189, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v111 = v95;
    v112 = v166;
    v113 = *(v166 + 16);
    v114 = OUTLINED_FUNCTION_41_5();
    v115(v114);
    sub_1D515D168();
    v117 = v116;
    (*(v112 + 8))(v111, v104);
    v190 = sub_1D4F688F0();
    *&v189 = v117;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    v118 = v177;
    sub_1D4F14934();
    v71 = v187;
    OUTLINED_FUNCTION_27_38();
    v78(v118, v49);
  }

  v119 = *MEMORY[0x1E6976AB0];
  v120 = OUTLINED_FUNCTION_38_42(&v191);
  v121 = v186;
  (v186)(v120);
  v190 = MEMORY[0x1E69E6370];
  LOBYTE(v189) = 1;
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_0_122();
  sub_1D4F14934();
  v122 = OUTLINED_FUNCTION_30_34();
  (v78)(v122);
  v121(v178, *MEMORY[0x1E6976AB8], v49);
  if (qword_1EDD53EA8 != -1)
  {
    swift_once();
  }

  v123 = sub_1D5613198();
  v124 = v171;
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  v125 = OUTLINED_FUNCTION_42_1(v124);
  v126 = MEMORY[0x1E69E6530];
  v177 = v78;
  if (v125 == 1)
  {
    sub_1D4E7661C(v124, &qword_1EC7EC530, &unk_1D5632150);
    sub_1D4F0E600();
    if (v127)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      v128 = OUTLINED_FUNCTION_3_97();
      (v78)(v128);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      v129.n128_f64[0] = OUTLINED_FUNCTION_11_35();
    }

    (v78)(v178, v49, v129);
    sub_1D4E7661C(&v189, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v130 = v124;
    v131 = sub_1D5613188();
    OUTLINED_FUNCTION_24_0(v123);
    (*(v132 + 8))(v130, v123);
    v190 = v126;
    *&v189 = v131;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v133 = OUTLINED_FUNCTION_30_34();
    (v78)(v133);
  }

  v186(v179, *MEMORY[0x1E6976AC0], v49);
  if (qword_1EDD53EA0 != -1)
  {
    swift_once();
  }

  v134 = sub_1D56134E8();
  v135 = v172;
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (OUTLINED_FUNCTION_42_1(v135) == 1)
  {
    sub_1D4E7661C(v135, &qword_1EC7EC528, &unk_1D5621070);
    sub_1D4F0E600();
    if (v136)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      v137 = OUTLINED_FUNCTION_3_97();
      v138 = v177;
      (v177)(v137);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
      OUTLINED_FUNCTION_11_68();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
      OUTLINED_FUNCTION_11_68();
      v138 = v177;
    }

    v138(v179, v49);
    sub_1D4E7661C(&v189, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v139 = sub_1D5613468();
    OUTLINED_FUNCTION_24_0(v134);
    (*(v140 + 8))(v135, v134);
    v190 = v126;
    *&v189 = v139;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    v134 = v179;
    sub_1D4F14934();
    v141 = OUTLINED_FUNCTION_30_34();
    (v177)(v141);
    OUTLINED_FUNCTION_11_68();
  }

  v142 = *MEMORY[0x1E6976AA0];
  OUTLINED_FUNCTION_37_24();
  v143();
  if (qword_1EDD53F08 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  v144 = v175;
  if (OUTLINED_FUNCTION_42_1(v175) == 1)
  {
    sub_1D4E7661C(v144, &qword_1EC7EF5D8, &unk_1D5632160);
    sub_1D4F0E600();
    if (v145)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      v146 = OUTLINED_FUNCTION_3_97();
      v147 = v177;
      (v177)(v146);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
      v147 = v177;
    }

    v147(v180, v49);
    sub_1D4E7661C(&v189, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v148 = v167;
    v149 = *(v167 + 16);
    v150 = v180;
    v151 = v144;
    v152 = OUTLINED_FUNCTION_41_5();
    v153(v152);
    sub_1D515CC2C();
    v155 = v154;
    (*(v148 + 8))(v151, v134);
    v190 = sub_1D4F688F0();
    *&v189 = v155;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v71 = v187;
    v147 = v177;
    (v177)(v150, v49);
  }

  v156 = *MEMORY[0x1E6976AD8];
  OUTLINED_FUNCTION_37_24();
  v157();
  if (qword_1EDD53E78 != -1)
  {
    swift_once();
  }

  v158 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (*(&v189 + 1))
  {
    v190 = v158;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v71 = v187;
    v159 = OUTLINED_FUNCTION_39_4();
    (v147)(v159);
  }

  else
  {
    sub_1D4F0E600();
    if (v160)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73();
      v161 = OUTLINED_FUNCTION_3_97();
      (v147)(v161);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    v162 = OUTLINED_FUNCTION_39_4();
    (v147)(v162);
    sub_1D4E7661C(&v189, &qword_1EC7E9F98, &qword_1D561C420);
  }

  return v71;
}

uint64_t UploadedVideo.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69767F8];
  v3 = sub_1D5613158();
  OUTLINED_FUNCTION_24_0(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_1D540A36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D540A538(&qword_1EC7EC720, type metadata accessor for UploadedVideo);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D540A420()
{
  sub_1D540A538(&qword_1EC7EA710, type metadata accessor for UploadedVideo);

  return sub_1D56132F8();
}

uint64_t sub_1D540A538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicLibrary.filterAvailableContentGroups(_:options:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_1D560EFB8();
  if (v4)
  {
    v5 = v4;
    if (qword_1EDD5D8A8 != -1)
    {
      swift_once();
    }

    v6 = sub_1D560C758();
    __swift_project_value_buffer(v6, qword_1EDD76DC8);

    v7 = sub_1D560C738();
    v8 = sub_1D56156E8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v9 = 136446466;
      v10 = MEMORY[0x1DA6EAF70](a1, &type metadata for MusicLibrary.ContentGroup);
      v12 = sub_1D4E6835C(v10, v11, &v40);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2082;
      v13 = MusicLibrary.FilteringOptions.description.getter();
      v15 = sub_1D4E6835C(v13, v14, &v40);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_1D4E3F000, v7, v8, "Filtering available content groups for %{public}s with options %{public}s.", v9, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    v16 = *(a1 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = (a1 + 32);
      v19 = *(a1 + 16);
      do
      {
        v20 = *v18++;
        v21 = qword_1D5661868[v20];
        if ((v21 & v17) != 0)
        {
          v21 = 0;
        }

        v17 |= v21;
        --v19;
      }

      while (v19);
    }

    else
    {
      v17 = 0;
    }

    v22 = sub_1D52914B8([v5 filterAvailableContentGroups:v17 withOptions:2 * (v3 & 1)]);
    if (v16)
    {
      v23 = 0;
      v24 = a1 + 32;
      a1 = MEMORY[0x1E69E7CC0];
      do
      {
        v25 = *(v24 + v23);
        v26 = *(v22 + 16);
        v27 = (v22 + 32);
        while (v26)
        {
          v28 = *v27++;
          --v26;
          if (v28 == v25)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v40 = a1;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v30 = *(a1 + 16);
              sub_1D4F049E4();
              a1 = v40;
            }

            v31 = *(a1 + 16);
            if (v31 >= *(a1 + 24) >> 1)
            {
              sub_1D4F049E4();
              a1 = v40;
            }

            *(a1 + 16) = v31 + 1;
            *(a1 + v31 + 32) = v25;
            break;
          }
        }

        ++v23;
      }

      while (v23 != v16);
    }

    else
    {

      a1 = MEMORY[0x1E69E7CC0];
    }

    v32 = sub_1D560C738();
    v33 = sub_1D56156E8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136446210;
      v36 = MEMORY[0x1DA6EAF70](a1, &type metadata for MusicLibrary.ContentGroup);
      v38 = sub_1D4E6835C(v36, v37, &v40);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1D4E3F000, v32, v33, "Returning filtered available content groups: %{public}s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return a1;
}

uint64_t static ClientInfo.== infix(_:_:)(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_11_107(a1);
  v6 = v5[3];
  v7 = v5[4];
  v9 = v5[5];
  v8 = v5[6];
  v11 = v5[7];
  v10 = v5[8];
  v25 = v11;
  v26 = v8;
  v12 = v4[2];
  v13 = v4[3];
  v14 = v4[4];
  v15 = v4[5];
  v16 = v4[6];
  v17 = v4[7];
  v18 = v2 == *v4 && v3 == v4[1];
  v23 = v4[8];
  v24 = v10;
  if (v18 || (sub_1D5616168() & 1) != 0)
  {
    v19 = v1 == v12 && v6 == v13;
    if (v19 || (OUTLINED_FUNCTION_9_112(), (sub_1D5616168() & 1) != 0))
    {
      v20 = v7 == v14 && v9 == v15;
      if (v20 || (sub_1D5616168() & 1) != 0)
      {
        v21 = v26 == v16 && v25 == v17;
        if (v21 || (sub_1D5616168() & 1) != 0)
        {
          if (v24)
          {
            if (v23 && (sub_1D4F0B2E8() & 1) != 0)
            {
              return 1;
            }
          }

          else if (!v23)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t ClientInfo.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v14 = v0[2];
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 8);
  OUTLINED_FUNCTION_8_119();
  v15 = v7;
  v8 = sub_1D540AE8C();
  MEMORY[0x1DA6EAC70](v8);

  MEMORY[0x1DA6EAC70](0x203A69706120200ALL, 0xE800000000000000);

  v9 = sub_1D540AFBC();
  MEMORY[0x1DA6EAC70](v9);

  MEMORY[0x1DA6EAC70](0x3A67616220200A2CLL, 0xE900000000000020);

  if (v6)
  {
    sub_1D5615B68();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6038, &qword_1D56618C0);
    sub_1D540C060();
    sub_1D56155F8();

    MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
    sub_1D4F53278();
    v10 = sub_1D5615968();
    v12 = v11;

    MEMORY[0x1DA6EAC70](v10, v12);

    MEMORY[0x1DA6EAC70](0xD000000000000014, 0x80000001D568DA30);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v15;
}

uint64_t ClientInfo.api.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t ClientInfo.bag.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_1D540AD90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D4E9B0C8();
  *a2 = result;
  return result;
}

uint64_t sub_1D540ADC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4E51274(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D540ADEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4E9B0C8();
  *a1 = result;
  return result;
}

uint64_t sub_1D540AE14(uint64_t a1)
{
  v2 = sub_1D4E5297C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D540AE50(uint64_t a1)
{
  v2 = sub_1D4E5297C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D540AE8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D5615B68();

  strcpy(v6, "identifier: ");
  HIWORD(v6[1]) = -4864;
  MEMORY[0x1DA6EAC70](v1, v2);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v6[0], v6[1]);

  strcpy(v6, ", version: ");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  MEMORY[0x1DA6EAC70](v3, v4);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v6[0], v6[1]);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 675893313;
}

uint64_t sub_1D540AFBC()
{
  v1 = v0[2];
  v2 = v0[3];
  v4[2] = 677863746;
  v4[3] = 0xE400000000000000;
  strcpy(v4, "profile: ");
  BYTE3(v4[1]) = 0;
  HIDWORD(v4[1]) = -369098752;
  MEMORY[0x1DA6EAC70](*v0, v0[1]);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v4[0], v4[1]);

  strcpy(v4, ", version: ");
  HIWORD(v4[1]) = -5120;
  MEMORY[0x1DA6EAC70](v1, v2);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v4[0], v4[1]);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 677863746;
}

uint64_t sub_1D540B0BC(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_11_107(a1);
  v6 = *(v5 + 24);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v2 == *v4 && v3 == v4[1];
  if (v9 || (v10 = sub_1D5616168(), result = 0, (v10 & 1) != 0))
  {
    if (v1 == v7 && v6 == v8)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_9_112();

      return sub_1D5616168();
    }
  }

  return result;
}

void ClientInfo.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v27 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6048, &qword_1D56618C8);
  OUTLINED_FUNCTION_4(v4);
  v28 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v14 = v0[3];
  v15 = v0[5];
  v23 = v0[4];
  v24 = v15;
  v16 = v0[6];
  v25 = v0[7];
  v26 = v13;
  v21 = v0[8];
  v22 = v16;
  v17 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D4E5297C();

  sub_1D56163D8();
  v29 = v11;
  v30 = v12;
  v31 = v26;
  v32 = v14;
  sub_1D540C0C4();
  OUTLINED_FUNCTION_7_123();
  v18 = v27;
  sub_1D56160C8();

  if (v18)
  {
    (*(v28 + 8))(v10, v4);
  }

  else
  {
    v19 = v28;
    v29 = v23;
    v30 = v24;
    v20 = v21;
    v31 = v22;
    v32 = v25;
    sub_1D540C118();

    OUTLINED_FUNCTION_7_123();
    sub_1D56160C8();

    v29 = v20;
    sub_1D540C16C();
    OUTLINED_FUNCTION_7_123();
    sub_1D5616068();
    (*(v19 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t ClientInfo.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D5614E28();
  if (!v11)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();

  return sub_1D4F0B2F0(a1, v11);
}

uint64_t ClientInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D56162F8();
  if (v9)
  {
    sub_1D4F0B2F0(v11, v9);
  }

  return sub_1D5616328();
}

uint64_t sub_1D540B554()
{
  sub_1D56162D8();
  ClientInfo.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t ClientInfo.API.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ClientInfo.API.version.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1D540B618@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D540B7F8();
  *a2 = result;
  return result;
}

uint64_t sub_1D540B650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4E53DE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D540B67C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D540B7F8();
  *a1 = result;
  return result;
}

uint64_t sub_1D540B6AC(uint64_t a1)
{
  v2 = sub_1D4E51458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D540B6E8(uint64_t a1)
{
  v2 = sub_1D4E51458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientInfo.API.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  OUTLINED_FUNCTION_8_119();
  v7 = v4;
  v5 = sub_1D540AE8C();
  MEMORY[0x1DA6EAC70](v5);

  return v7;
}

uint64_t sub_1D540B7F8()
{
  v0 = sub_1D5615EF8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D540B848(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1D4F3C228();
}

uint64_t sub_1D540B86C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D540B7F8();
  *a2 = result;
  return result;
}

uint64_t sub_1D540B8A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4E5401C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D540B8D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D540B7F8();
  *a1 = result;
  return result;
}

uint64_t sub_1D540B900(uint64_t a1)
{
  v2 = sub_1D4E53FC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D540B93C(uint64_t a1)
{
  v2 = sub_1D4E53FC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D540B9AC()
{
  OUTLINED_FUNCTION_25_1();
  v20 = v2;
  v21 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_4(v7);
  v22 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  v14 = *v0;
  v15 = v0[1];
  v16 = v0[2];
  v19[1] = v0[3];
  v19[2] = v16;
  v17 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v20();
  sub_1D56163D8();
  v18 = v21;
  sub_1D5616088();
  if (!v18)
  {
    sub_1D5616088();
  }

  (*(v22 + 8))(v13, v7);
  OUTLINED_FUNCTION_26();
}

uint64_t _s16MusicKitInternal10ClientInfoV3APIV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D5614E28();

  return sub_1D5614E28();
}

uint64_t _s16MusicKitInternal10ClientInfoV3APIV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D540BBF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v6 = *(v4 + 2);
  v7 = *(v4 + 3);
  v10 = *v4;
  v11 = v6;
  v12 = v7;
  sub_1D56162D8();
  a4(v9);
  return sub_1D5616328();
}

BOOL sub_1D540BC54@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D4E9B120();
  *a2 = result;
  return result;
}

unint64_t sub_1D540BC88@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D4E555B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1D540BCB0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1D4E9B120();
  *a1 = result;
  return result;
}

uint64_t sub_1D540BCDC(uint64_t a1)
{
  v2 = sub_1D4E54278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D540BD18(uint64_t a1)
{
  v2 = sub_1D4E54278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D540BD58(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F60D0, &qword_1D5662230);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4E54278();
  sub_1D56163D8();
  v14[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6038, &qword_1D56618C0);
  sub_1D4E4A9E0(&qword_1EC7F60D8, sub_1D540C540);
  sub_1D56160C8();
  return (*(v6 + 8))(v11, v4);
}

uint64_t sub_1D540BED4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA6EC0D0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_1D5614E28();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D540BF4C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4F0B2F0(v3, a1);
  return sub_1D5616328();
}

uint64_t sub_1D540C01C()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D4F0B2F0(v3, v1);
  return sub_1D5616328();
}

unint64_t sub_1D540C060()
{
  result = qword_1EC7F6040;
  if (!qword_1EC7F6040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6038, &qword_1D56618C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6040);
  }

  return result;
}

unint64_t sub_1D540C0C4()
{
  result = qword_1EC7F6050;
  if (!qword_1EC7F6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6050);
  }

  return result;
}

unint64_t sub_1D540C118()
{
  result = qword_1EC7F6058;
  if (!qword_1EC7F6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6058);
  }

  return result;
}

unint64_t sub_1D540C16C()
{
  result = qword_1EC7F6060;
  if (!qword_1EC7F6060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6060);
  }

  return result;
}

unint64_t sub_1D540C1C4()
{
  result = qword_1EC7F6090;
  if (!qword_1EC7F6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6090);
  }

  return result;
}

unint64_t sub_1D540C21C()
{
  result = qword_1EC7F6098;
  if (!qword_1EC7F6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6098);
  }

  return result;
}

unint64_t sub_1D540C274()
{
  result = qword_1EC7F60A0;
  if (!qword_1EC7F60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60A0);
  }

  return result;
}

uint64_t sub_1D540C2C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D540C308(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1D540C38C()
{
  result = qword_1EC7F60A8;
  if (!qword_1EC7F60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60A8);
  }

  return result;
}

unint64_t sub_1D540C3E4()
{
  result = qword_1EC7F60B0;
  if (!qword_1EC7F60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60B0);
  }

  return result;
}

unint64_t sub_1D540C43C()
{
  result = qword_1EC7F60B8;
  if (!qword_1EC7F60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60B8);
  }

  return result;
}

unint64_t sub_1D540C494()
{
  result = qword_1EC7F60C0;
  if (!qword_1EC7F60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60C0);
  }

  return result;
}

unint64_t sub_1D540C4EC()
{
  result = qword_1EC7F60C8;
  if (!qword_1EC7F60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60C8);
  }

  return result;
}

unint64_t sub_1D540C540()
{
  result = qword_1EC7F60E0;
  if (!qword_1EC7F60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60E0);
  }

  return result;
}

unint64_t sub_1D540C598()
{
  result = qword_1EC7F60F0;
  if (!qword_1EC7F60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60F0);
  }

  return result;
}

uint64_t sub_1D540C614@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 0:
      v3 = MEMORY[0x1E6974C98];
      goto LABEL_11;
    case 7:
      v3 = MEMORY[0x1E6974C78];
      goto LABEL_11;
    case 8:
      v3 = MEMORY[0x1E6974C80];
      goto LABEL_11;
    case 9:
      v3 = MEMORY[0x1E6974CA8];
      goto LABEL_11;
    case 0xA:
      v3 = MEMORY[0x1E6974C88];
      goto LABEL_11;
    case 0xE:
      v3 = MEMORY[0x1E6974C90];
      goto LABEL_11;
    case 0x10:
      v3 = MEMORY[0x1E6974CA0];
      goto LABEL_11;
    case 0x11:
      v3 = MEMORY[0x1E6974CB8];
      goto LABEL_11;
    case 0x12:
      v3 = MEMORY[0x1E6974CB0];
LABEL_11:
      v4 = *v3;
      v5 = sub_1D560CB48();
      (*(*(v5 - 8) + 104))(a1, v4, v5);
      v6 = a1;
      v7 = 0;
      v8 = 1;
      v9 = v5;
      break;
    default:
      sub_1D560CB48();
      v6 = OUTLINED_FUNCTION_25_9();
      break;
  }

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t static MusicLibraryMapping.ItemKind.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7F60F8 = a1;
}

uint64_t sub_1D540C848@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7F60F8;
}

uint64_t sub_1D540C898(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7F60F8 = v1;
}

uint64_t MusicLibraryMapping.ItemKind.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D540C970@<X0>(uint64_t *a1@<X8>)
{
  result = static MusicLibraryMapping.ItemKind.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D540C9A4()
{
  v2 = *v0;
  sub_1D56162D8();
  MusicLibraryMapping.ItemKind.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D540C9EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6118, &qword_1D56624D0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6120, &unk_1D56624D8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561CA30;
  v4 = v3 + v2;
  v19 = *(v0 + 48);
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v5 = sub_1D560D9A8();
  v6 = __swift_project_value_buffer(v5, qword_1EDD53D50);
  v7 = *(*(v5 - 8) + 16);
  v7(v4, v6, v5);
  v8 = *MEMORY[0x1E6974C78];
  v9 = sub_1D560CB48();
  v10 = *(*(v9 - 8) + 104);
  v10(v4 + v19, v8, v9);
  v20 = *(v0 + 48);
  if (qword_1EDD53CC0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_1EDD53CC8);
  v7(v4 + v1, v11, v5);
  v10(v4 + v1 + v20, *MEMORY[0x1E6974C88], v9);
  v21 = v1;
  v12 = v4 + 2 * v1;
  v13 = *(v0 + 48);
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_1EDD53C40);
  v7(v12, v14, v5);
  v10(v12 + v13, *MEMORY[0x1E6974CB8], v9);
  v15 = *(v0 + 48);
  if (qword_1EDD53C58 != -1)
  {
    swift_once();
  }

  v16 = v4 + 3 * v21;
  v17 = __swift_project_value_buffer(v5, qword_1EDD53C60);
  v7(v16, v17, v5);
  v10(v16 + v15, *MEMORY[0x1E6974CB0], v9);
  sub_1D540D118();
  result = sub_1D5614BD8();
  qword_1EDD543B8 = result;
  return result;
}

uint64_t static _MusicLibraryMapping.ItemKind.extendedItemKindMap.getter()
{
  if (qword_1EDD543B0 != -1)
  {
    swift_once();
  }
}

uint64_t _MusicLibraryMapping.ItemKind.extendedConvertToInnerTypeValue()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D560CB48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x1E6974C88])
  {
    if (qword_1EDD53CC0 != -1)
    {
      swift_once();
    }

    v9 = sub_1D560D9A8();
    v10 = __swift_project_value_buffer(v9, qword_1EDD53CC8);
    (*(*(v9 - 8) + 16))(a1, v10, v9);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
  }

  else
  {
    sub_1D560D9A8();
    v12 = OUTLINED_FUNCTION_25_9();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    return (*(v5 + 8))(v8, v4);
  }
}

unint64_t sub_1D540CF78()
{
  result = qword_1EC7F6100;
  if (!qword_1EC7F6100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6108, &qword_1D5662380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6100);
  }

  return result;
}

unint64_t sub_1D540CFE0()
{
  result = qword_1EC7F6110;
  if (!qword_1EC7F6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6110);
  }

  return result;
}

_BYTE *_s8ItemKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D540D118()
{
  result = qword_1EDD53C28;
  if (!qword_1EDD53C28)
  {
    sub_1D560D9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53C28);
  }

  return result;
}

uint64_t sub_1D540D200(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1D540D258()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C770;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6128, &unk_1D5662560);
  swift_getKeyPath();
  v1 = sub_1D5612ED8();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 40) = v2;
  qword_1EC87C630 = v0;
  return result;
}

id sub_1D540D328()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69776B0]);

  return [v0 init];
}

uint64_t sub_1D540D360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA928, &qword_1D561D1A0);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA930, &unk_1D561D1A8);
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v11 = *(v10 + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D540D49C, 0, 0);
}

uint64_t sub_1D540D49C()
{
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6130, &qword_1D56625B8);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    sub_1D5615B68();
    v0[2] = 0;
    v15 = v0 + 2;
    v0[3] = 0xE000000000000000;
    v16 = v0 + 3;
    MEMORY[0x1DA6EAC70](0x79747265706F7250, 0xE900000000000020);
    v0[6] = v1;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D568DB60);
LABEL_10:
    v18 = *v15;
    v19 = *v16;
    return sub_1D5615E08();
  }

  v3 = v2;
  v4 = qword_1EC7E95C8;

  if (v4 != -1)
  {
    swift_once();
  }

  v0[7] = qword_1EC7F5D68;
  v0[8] = v3;
  sub_1D540DC6C();
  if ((sub_1D5614D18() & 1) == 0)
  {
    v15 = v0 + 4;
    v17 = v0[11];
    sub_1D5615B68();
    v0[5] = 0xE000000000000000;
    v16 = v0 + 5;
    v0[4] = 0;
    MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D568DB80);
    v0[9] = v17;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    goto LABEL_10;
  }

  v5 = v0[20];
  v6 = v0[18];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];
  type metadata accessor for TVSeason();
  sub_1D540DCD0(&qword_1EC7EA938, type metadata accessor for TVSeason);
  sub_1D560DD68();
  sub_1D560CB98();
  sub_1D560DC98();
  swift_getKeyPath();
  sub_1D560DD08();

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  v10 = *(MEMORY[0x1E6975088] + 4);
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_1D540D7FC;
  v12 = v0[20];
  v13 = v0[17];
  v14 = v0[18];

  return MEMORY[0x1EEDCEAC0](v13, v14);
}

uint64_t sub_1D540D7FC()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1D540DA10;
  }

  else
  {
    v3 = sub_1D540D910;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D540D910()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v8 = v0[10];
  v7 = v0[11];
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v8[4] = &protocol witness table for MusicItemCollection<A>;
  __swift_allocate_boxed_opaque_existential_0(v8);
  sub_1D560DE38();

  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D540DA10()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[11];

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];
  v7 = v0[22];

  return v6();
}

uint64_t sub_1D540DAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return sub_1D540D360(a1, a2, a3, a4);
}

uint64_t sub_1D540DBB8(void *a1)
{
  a1[1] = sub_1D540DCD0(&qword_1EC7EA398, type metadata accessor for TVShow);
  a1[2] = sub_1D540DCD0(&qword_1EC7EA950, type metadata accessor for TVShow);
  result = sub_1D540DCD0(&qword_1EC7EE0C0, type metadata accessor for TVShow);
  a1[3] = result;
  return result;
}

unint64_t sub_1D540DC6C()
{
  result = qword_1EC7F6138;
  if (!qword_1EC7F6138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6130, &qword_1D56625B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6138);
  }

  return result;
}

uint64_t sub_1D540DCD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicCatalogInternalSearchRequest.init(term:types:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1D560D9A8();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  *(a4 + 16) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(a4 + 24) = 1;
  *(a4 + 32) = v21;
  *(a4 + 56) = 4;
  *(a4 + 64) = 0;
  *(a4 + 72) = 1;
  *(a4 + 80) = 0;
  *(a4 + 88) = 1;
  *(a4 + 96) = 0;
  *(a4 + 104) = 1;
  *(a4 + 105) = 256;
  v22 = a4 + *(OUTLINED_FUNCTION_38_43() + 60);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  if (!a3)
  {
    v57 = v17;
    if (qword_1EC7E9628 != -1)
    {
      OUTLINED_FUNCTION_6_132();
    }

    v23 = off_1EC7F6140;
    v24 = *(off_1EC7F6140 + 2);
    a3 = MEMORY[0x1E69E7CC0];
    if (v24)
    {
      v63 = v20;
      v64 = v9;
      v58 = v4;
      v59 = a4;
      v65 = MEMORY[0x1E69E7CC0];
      v25 = OUTLINED_FUNCTION_33_56();
      sub_1D4F04A6C(v25, v24, 0);
      a3 = v65;
      v26 = *(v12 + 16);
      v27 = *(v12 + 80);
      OUTLINED_FUNCTION_43_3();
      v29 = &v23[v28];
      v60 = *(v30 + 56);
      v61 = v31;
      v62 = v30;
      v32 = (v30 - 8);
      do
      {
        v61(v63, v29, v64);
        v33 = sub_1D560D858();
        v35 = v34;
        v36 = *v32;
        v37 = OUTLINED_FUNCTION_222();
        v38(v37);
        v65 = a3;
        v40 = a3[2];
        v39 = a3[3];
        if (v40 >= v39 >> 1)
        {
          v42 = OUTLINED_FUNCTION_93_1(v39);
          sub_1D4F04A6C(v42, v40 + 1, 1);
          a3 = v65;
        }

        a3[2] = v40 + 1;
        v41 = &a3[2 * v40];
        v41[4] = v33;
        v41[5] = v35;
        v29 += v60;
        --v24;
      }

      while (v24);

      v4 = v58;
      a4 = v59;
      v9 = v64;
      v17 = v57;
      v21 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v17 = v57;
    }
  }

  v43 = a3[2];
  if (v43)
  {
    v58 = v4;
    v59 = a4;
    v65 = v21;
    OUTLINED_FUNCTION_33_56();
    sub_1D4F04A14();
    v44 = v65;
    v45 = a3 + 5;
    do
    {
      v46 = *(v45 - 1);
      v47 = *v45;
      sub_1D560D9B8();
      v65 = v44;
      v49 = v44[2];
      v48 = v44[3];
      if (v49 >= v48 >> 1)
      {
        OUTLINED_FUNCTION_93_1(v48);
        sub_1D4F04A14();
        v44 = v65;
      }

      v44[2] = v49 + 1;
      v50 = *(v12 + 80);
      OUTLINED_FUNCTION_43_3();
      (*(v12 + 32))(v44 + v51 + *(v12 + 72) * v49, v17, v9);
      v45 += 2;
      --v43;
    }

    while (v43);

    v4 = v58;
  }

  else
  {
  }

  v52 = *(v4 + 64);
  OUTLINED_FUNCTION_3_171();
  sub_1D5414284(v53, v54);
  OUTLINED_FUNCTION_222();
  sub_1D560E458();
  type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t MusicCatalogInternalSearchRequest.init(suggestion:types:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = sub_1D560D9A8();
  v7 = OUTLINED_FUNCTION_4(v65);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_59_0();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v58 - v16;
  *(a3 + 16) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(a3 + 24) = 1;
  *(a3 + 32) = v18;
  *(a3 + 56) = 4;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  *(a3 + 80) = 0;
  *(a3 + 88) = 1;
  *(a3 + 96) = 0;
  *(a3 + 104) = 1;
  *(a3 + 105) = 256;
  v19 = a3 + *(OUTLINED_FUNCTION_38_43() + 60);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *a3 = sub_1D560EA28();
  *(a3 + 8) = v20;
  *(a3 + 40) = sub_1D560EA38();
  *(a3 + 48) = v21;
  v60 = a1;
  if (!a2)
  {
    if (qword_1EC7E9628 != -1)
    {
      OUTLINED_FUNCTION_6_132();
    }

    v22 = off_1EC7F6140;
    v23 = *(off_1EC7F6140 + 2);
    a2 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v64 = v17;
      v58[0] = v14;
      v58[1] = a3;
      v59 = v3;
      v66 = MEMORY[0x1E69E7CC0];
      v24 = OUTLINED_FUNCTION_33_56();
      sub_1D4F04A6C(v24, v23, 0);
      a2 = v66;
      v25 = *(v9 + 16);
      v26 = *(v9 + 80);
      OUTLINED_FUNCTION_43_3();
      v28 = &v22[v27];
      v61 = *(v29 + 56);
      v62 = v30;
      v63 = v29;
      v31 = (v29 - 8);
      do
      {
        v32 = v64;
        v33 = v65;
        v34 = OUTLINED_FUNCTION_222();
        v62(v34);
        v35 = sub_1D560D858();
        v37 = v36;
        (*v31)(v32, v33);
        v66 = a2;
        v39 = a2[2];
        v38 = a2[3];
        if (v39 >= v38 >> 1)
        {
          v41 = OUTLINED_FUNCTION_93_1(v38);
          sub_1D4F04A6C(v41, v39 + 1, 1);
          a2 = v66;
        }

        a2[2] = v39 + 1;
        v40 = &a2[2 * v39];
        v40[4] = v35;
        v40[5] = v37;
        v28 += v61;
        --v23;
      }

      while (v23);

      v3 = v59;
      a1 = v60;
      v14 = v58[0];
    }

    else
    {
      a1 = v60;
    }

    v18 = MEMORY[0x1E69E7CC0];
  }

  v42 = a2[2];
  if (v42)
  {
    v59 = v3;
    v66 = v18;
    OUTLINED_FUNCTION_33_56();
    sub_1D4F04A14();
    v43 = v66;
    v44 = a2 + 5;
    do
    {
      v45 = *(v44 - 1);
      v46 = *v44;
      sub_1D560D9B8();
      v66 = v43;
      v47 = v14;
      v49 = v43[2];
      v48 = v43[3];
      if (v49 >= v48 >> 1)
      {
        OUTLINED_FUNCTION_93_1(v48);
        sub_1D4F04A14();
        v43 = v66;
      }

      v43[2] = v49 + 1;
      v50 = *(v9 + 80);
      OUTLINED_FUNCTION_43_3();
      (*(v9 + 32))(v43 + v51 + *(v9 + 72) * v49, v47, v65);
      v44 += 2;
      --v42;
      v14 = v47;
    }

    while (v42);

    v3 = v59;
    a1 = v60;
  }

  else
  {
  }

  v52 = *(v3 + 64);
  OUTLINED_FUNCTION_3_171();
  sub_1D5414284(v53, v54);
  OUTLINED_FUNCTION_222();
  sub_1D560E458();
  v55 = sub_1D560EA48();
  OUTLINED_FUNCTION_4_0(v55);
  (*(v56 + 8))(a1);
  type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t MusicCatalogInternalSearchRequest.term.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicCatalogInternalSearchRequest.limit.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.limit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.contexts.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.offset.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.offset.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.sparseCount.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.sparseCount.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.sparseLimit.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.sparseLimit.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_59_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = v1 + *(type metadata accessor for MusicCatalogInternalSearchRequest(0) + 60);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v12 = type metadata accessor for MusicRequestConfiguration();
  v13 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v10, v13 ^ 1u, 1, v12);
  sub_1D4F73F78(v10, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v7, 1, v12) != 1)
    {
      sub_1D4E765C8(v7, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D4E56C6C(v7, a1);
  }

  return sub_1D4E765C8(v10, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D540E848(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5414E54(a1, v5, type metadata accessor for MusicRequestConfiguration);
  return MusicCatalogInternalSearchRequest.configuration.setter(v5);
}

uint64_t MusicCatalogInternalSearchRequest.configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D560CD48();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration();
  OUTLINED_FUNCTION_5_126();
  sub_1D5414284(v12, v13);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_4_132();
  sub_1D4E58714(a1, v14);
  v15 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  return (*(v7 + 40))(v2 + *(v15 + 60), v11, v4);
}

void (*MusicCatalogInternalSearchRequest.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration();
  v3[4] = v7;
  v8 = *(*(v7 - 8) + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[6] = v9;
  MusicCatalogInternalSearchRequest.configuration.getter(v9);
  return sub_1D540EAF4;
}

void sub_1D540EAF4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    sub_1D5414E54((*a1)[6], v3, type metadata accessor for MusicRequestConfiguration);
    OUTLINED_FUNCTION_5_126();
    sub_1D5414284(v10, v11);
    sub_1D560E6C8();
    sub_1D4E58714(v3, type metadata accessor for MusicRequestConfiguration);
    v12 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
    v13 = OUTLINED_FUNCTION_27_66(v12);
    v14(v13);
    sub_1D4E58714(v4, type metadata accessor for MusicRequestConfiguration);
  }

  else
  {
    OUTLINED_FUNCTION_5_126();
    sub_1D5414284(v15, v16);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_4_132();
    sub_1D4E58714(v4, v17);
    v18 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
    v19 = OUTLINED_FUNCTION_27_66(v18);
    v20(v19);
  }

  free(v4);
  free(v3);
  free(v6);

  free(v2);
}

uint64_t sub_1D540EC60@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  sub_1D5414E54(v1 + *(v7 + 64), v6, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v6 + 1);

    v6 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6240, &qword_1D5667EC0) + 48);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  return (*(*(v9 - 8) + 32))(a1, v6, v9);
}

uint64_t sub_1D540ED84()
{
  v1 = sub_1D560BB98();
  v2 = *(v1 - 8);
  v68 = v1;
  v69 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D5610088();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v60 = v59 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v61 = v59 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v62 = v59 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v70 = v59 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v59 - v25;
  if (*(v0 + 105) != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D540EC60(v26);
  v27 = sub_1D560E488();
  (*(v23 + 8))(v26, v22);
  v28 = *(v27 + 16);
  if (!v28)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v59[0] = v11;
  v59[1] = v27;
  v29 = v7 + 16;
  v30 = *(v7 + 16);
  v31 = v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v65 = *(v29 + 56);
  v66 = v30;
  v67 = v29;
  v71 = (v29 - 8);
  v63 = v69 + 32;
  v32 = MEMORY[0x1E69E7CC0];
  v64 = v5;
  do
  {
    v66(v21, v31, v6);
    sub_1D560FE28();
    sub_1D5414284(&qword_1EDD53348, MEMORY[0x1E6975BC8]);
    sub_1D56150C8();
    sub_1D56150C8();
    if (v74 == v72 && v75 == v73)
    {
      v34 = 1;
    }

    else
    {
      v34 = sub_1D5616168();
    }

    v35 = *v71;
    (*v71)(v70, v6);

    if (v34)
    {
      goto LABEL_34;
    }

    v36 = v62;
    sub_1D560FE38();
    sub_1D56150C8();
    sub_1D56150C8();
    if (v74 == v72 && v75 == v73)
    {
LABEL_32:
      v35(v36, v6);

      goto LABEL_33;
    }

    v38 = sub_1D5616168();
    v39 = v36;
    v40 = v38;
    v35(v39, v6);

    if ((v40 & 1) == 0)
    {
      v36 = v61;
      sub_1D5610078();
      sub_1D56150C8();
      sub_1D56150C8();
      if (v74 == v72 && v75 == v73)
      {
        goto LABEL_32;
      }

      v42 = sub_1D5616168();
      v43 = v36;
      v44 = v42;
      v35(v43, v6);

      if ((v44 & 1) == 0)
      {
        v36 = v60;
        sub_1D560FFE8();
        sub_1D56150C8();
        sub_1D56150C8();
        if (v74 == v72 && v75 == v73)
        {
          goto LABEL_32;
        }

        v46 = sub_1D5616168();
        v47 = v36;
        v48 = v46;
        v35(v47, v6);

        if ((v48 & 1) == 0)
        {
          v49 = v59[0];
          sub_1D560FF38();
          sub_1D56150C8();
          sub_1D56150C8();
          if (v74 != v72 || v75 != v73)
          {
            v51 = sub_1D5616168();
            v35(v49, v6);

            if ((v51 & 1) == 0)
            {
              v35(v21, v6);
              goto LABEL_39;
            }

            goto LABEL_34;
          }

          v35(v49, v6);

LABEL_33:
        }
      }
    }

LABEL_34:
    v74 = 0x5B646E65747865;
    v75 = 0xE700000000000000;
    v52 = sub_1D5610058();
    MEMORY[0x1DA6EAC70](v52);

    MEMORY[0x1DA6EAC70](93, 0xE100000000000000);
    v53 = v64;
    sub_1D560BB28();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = *(v32 + 16);
      sub_1D4EFFE00();
      v32 = v56;
    }

    v54 = *(v32 + 16);
    if (v54 >= *(v32 + 24) >> 1)
    {
      sub_1D4EFFE00();
      v32 = v57;
    }

    v35(v21, v6);
    *(v32 + 16) = v54 + 1;
    (*(v69 + 32))(v32 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v54, v53, v68);
LABEL_39:
    v31 += v65;
    --v28;
  }

  while (v28);

  return v32;
}

uint64_t MusicCatalogInternalSearchRequest.response()(uint64_t a1)
{
  v5 = *(OUTLINED_FUNCTION_38_43() + 60);
  v6 = *(MEMORY[0x1E6974FB0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = sub_1D560CD48();
  OUTLINED_FUNCTION_3_171();
  v11 = sub_1D5414284(v9, v10);
  *v7 = v3;
  v7[1] = sub_1D4E73560;
  v12 = MEMORY[0x1E6974D18];

  return MEMORY[0x1EEDCE900](a1, v1 + v5, v2, v8, v11, v12);
}

uint64_t MusicCatalogInternalSearchRequest.catalogResponse()(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610) - 8) + 64);
  v2[24] = OUTLINED_FUNCTION_127();
  v4 = sub_1D560D428();
  v2[25] = v4;
  OUTLINED_FUNCTION_69(v4);
  v2[26] = v5;
  v7 = *(v6 + 64);
  v2[27] = OUTLINED_FUNCTION_127();
  v8 = sub_1D560CD48();
  v2[28] = v8;
  OUTLINED_FUNCTION_69(v8);
  v2[29] = v9;
  v11 = *(v10 + 64);
  v2[30] = OUTLINED_FUNCTION_127();
  v12 = sub_1D560D348();
  v2[31] = v12;
  OUTLINED_FUNCTION_69(v12);
  v2[32] = v13;
  v15 = *(v14 + 64);
  v2[33] = OUTLINED_FUNCTION_127();
  v16 = sub_1D560D388();
  v2[34] = v16;
  OUTLINED_FUNCTION_69(v16);
  v2[35] = v17;
  v19 = *(v18 + 64);
  v2[36] = OUTLINED_FUNCTION_127();
  v20 = sub_1D560EBD8();
  v2[37] = v20;
  OUTLINED_FUNCTION_69(v20);
  v2[38] = v21;
  v23 = *(v22 + 64) + 15;
  v2[39] = swift_task_alloc();
  v24 = swift_task_alloc();
  v2[40] = v24;
  v25 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  v2[41] = v25;
  v26 = *(v25 + 64);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v2[42] = v27;
  *v27 = v28;
  v27[1] = sub_1D540F8B8;

  return sub_1D5410148(v24, v1 + v26);
}

uint64_t sub_1D540F8B8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D540F9B4()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 288);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = *(v0 + 232);
  v17 = *(v0 + 224);
  v8 = *(v0 + 184);
  (*(*(v0 + 304) + 16))(*(v0 + 312), *(v0 + 320), *(v0 + 296));
  (*(v4 + 104))(v3, *MEMORY[0x1E6974E78], v5);
  OUTLINED_FUNCTION_222();
  sub_1D560D368();
  v9 = *(v1 + 60);
  *(v0 + 384) = v9;
  v10 = *(v7 + 16);
  *(v0 + 352) = v10;
  *(v0 + 360) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v6, v8 + v9, v17);
  sub_1D560D2B8();
  v11 = *(MEMORY[0x1E6974EB0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 368) = v12;
  *v12 = v13;
  v12[1] = sub_1D540FB1C;
  v14 = *(v0 + 288);
  v15 = *(v0 + 216);

  return MEMORY[0x1EEDCE5B0](v15);
}

uint64_t sub_1D540FB1C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 376) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D540FC18()
{
  v65 = v0;
  v60 = *(v0 + 376);
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 384);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 184);
  v8 = sub_1D560B9C8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1D560B9B8();
  v2(v4, v7 + v3, v6);
  sub_1D560B988();
  v11 = sub_1D5612208();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1D56121F8();
  swift_retain_n();
  sub_1D560B968();
  v15 = sub_1D560D418();
  v17 = v16;
  sub_1D54142CC();
  sub_1D560B948();
  if (v60)
  {
    v18 = *(v0 + 304);
    v56 = *(v0 + 296);
    v58 = *(v0 + 320);
    v19 = *(v0 + 280);
    v52 = *(v0 + 272);
    v54 = *(v0 + 288);
    v20 = *(v0 + 208);
    v21 = *(v0 + 216);
    v22 = *(v0 + 200);

    sub_1D4E55E1C(v15, v17);

    (*(v20 + 8))(v21, v22);
    (*(v19 + 8))(v54, v52);
    (*(v18 + 8))(v58, v56);
    v24 = *(v0 + 312);
    v23 = *(v0 + 320);
    v25 = *(v0 + 288);
    OUTLINED_FUNCTION_17_81();

    OUTLINED_FUNCTION_55();
  }

  else
  {
    v40 = *(v0 + 352);
    v41 = *(v0 + 360);
    v57 = *(v0 + 320);
    v59 = *(v0 + 312);
    v53 = *(v0 + 304);
    v55 = *(v0 + 296);
    v27 = *(v0 + 280);
    v46 = *(v0 + 272);
    v48 = *(v0 + 288);
    v61 = *(v0 + 264);
    v37 = *(v0 + 240);
    v38 = *(v0 + 224);
    v39 = *(v0 + 384);
    v28 = *(v0 + 208);
    v42 = *(v0 + 200);
    v44 = *(v0 + 216);
    v29 = *(v0 + 184);
    v30 = *(v0 + 192);
    __dst = *(v0 + 176);
    sub_1D4E55E1C(v15, v17);
    memcpy((v0 + 16), (v0 + 96), 0x50uLL);
    v31 = *(v29 + 8);
    v36 = *v29;

    sub_1D540EC60(v30);
    v32 = *(v29 + 105);
    v33 = *(v29 + 25);
    v40(v37, v29 + v39, v38);
    v64 = 0;
    memset(v63, 0, sizeof(v63));
    sub_1D508C538(v0 + 16, v36, v31, v30, v33, v32, v37, v14, v63, v35, v36, v37, v38, v39, v40, v41, v42, v44, v46, v48, __dst);

    (*(v28 + 8))(v45, v43);
    (*(v27 + 8))(v49, v47);
    (*(v53 + 8))(v57, v55);
    memcpy(__dsta, __src, 0x50uLL);

    OUTLINED_FUNCTION_55();
  }

  return v26();
}

uint64_t sub_1D540FFB8()
{
  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[36];
  OUTLINED_FUNCTION_17_81();

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D5410064()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[47];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[36];
  OUTLINED_FUNCTION_17_81();

  OUTLINED_FUNCTION_55();

  return v8();
}

uint64_t sub_1D5410148(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D560EBD8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  v3[12] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D54102B0, 0, 0);
}

uint64_t sub_1D54102B0()
{
  v1 = v0[12];
  sub_1D5414E54(v0[3], v0[13], type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[13];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[7];
    v5 = v0[4];
    v6 = *v3;
    v7 = *(v3 + 8);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6240, &qword_1D5667EC0) + 48);
    sub_1D5411B50(v6, v7, v4);

    v15 = v0[9];
    v16 = v0[10];
    (*(v0[6] + 32))(v0[2], v0[7], v0[5]);
    (*(v16 + 8))(v3 + v8, v15);
    v17 = v0[13];
    v18 = v0[11];
    v20 = v0[7];
    v19 = v0[8];

    OUTLINED_FUNCTION_55();

    return v21();
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[13], v0[9]);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[14] = v9;
    *v9 = v10;
    v9[1] = sub_1D54104E4;
    v11 = v0[11];
    v12 = v0[8];
    v13 = v0[4];

    return sub_1D5410744(v12, v11);
  }
}

uint64_t sub_1D54104E4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D54105E0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 32))(v4, v1, v2);
  v5 = v0[13];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];

  OUTLINED_FUNCTION_55();

  return v9();
}

uint64_t sub_1D54106A4()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];

  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D5410744(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for MusicRequestConfiguration();
  v3[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v6 = sub_1D5610088();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();
  v9 = sub_1D560BB98();
  v3[18] = v9;
  v10 = *(v9 - 8);
  v3[19] = v10;
  v11 = *(v10 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D541093C, 0, 0);
}

uint64_t sub_1D541093C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2D8, &unk_1D561DFF0);
  *(v0 + 280) = *(v1 + 72);
  *(v0 + 368) = *(v1 + 80);
  v3 = swift_allocObject();
  *(v0 + 288) = v3;
  *(v3 + 16) = xmmword_1D561C050;
  v4 = *v2;
  v5 = v2[1];
  sub_1D560BB28();
  *(v0 + 372) = *(type metadata accessor for MusicCatalogInternalSearchRequest(0) + 60);
  v6 = *(MEMORY[0x1E6974D08] + 4);
  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = sub_1D5410A48;

  return MEMORY[0x1EEDCE260]();
}

uint64_t sub_1D5410A48()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 296);
  *v4 = *v1;
  v3[38] = v7;
  v3[39] = v8;
  v3[40] = v0;

  if (v0)
  {
    v9 = v3[36];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D5410B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v201 = v18;
  v19 = v18;
  if (v18[39])
  {
    v20 = v18[38];
    v21 = v18[36];
    v23 = v18[33];
    v22 = v18[34];
    v25 = v18[18];
    v24 = v18[19];
    v26 = *(v19 + 34);
    sub_1D560BB28();

    v27 = OUTLINED_FUNCTION_34_59();
    v28(v27);
    v29 = *(v21 + 24);
    v30 = *(v19 + 36);
    if (*(v21 + 16) >= v29 >> 1)
    {
      OUTLINED_FUNCTION_22_41(v29);
      sub_1D4EFFE00();
      v30 = v186;
    }

    v31 = v19[368];
    v32 = *(v19 + 34);
    v33 = *(v19 + 35);
    v34 = *(v19 + 33);
    OUTLINED_FUNCTION_21_73();
    v35();
    v36 = OUTLINED_FUNCTION_20_84();
    v37(v36);
  }

  else
  {
    v30 = v18[36];
  }

  v38 = *(v19 + 12);
  strcpy(v19 + 16, "serverBubbles");
  *(v19 + 15) = -4864;
  if (v38[56] == 2)
  {
    v39 = *(v19 + 31);
    v40 = *(v19 + 32);
    v41 = *(v19 + 18);
    v42 = *(v19 + 19);
    sub_1D560BB28();
    (*(v42 + 16))(v39, v40, v41);
    v43 = *(v30 + 24);
    if (*(v30 + 16) >= v43 >> 1)
    {
      OUTLINED_FUNCTION_22_41(v43);
      sub_1D4EFFE00();
      v30 = v189;
    }

    v44 = v19[368];
    v45 = *(v19 + 35);
    v47 = *(v19 + 31);
    v46 = *(v19 + 32);
    OUTLINED_FUNCTION_21_73();
    v48();
    v49 = OUTLINED_FUNCTION_20_84();
    v50(v49);
    v38 = *(v19 + 12);
  }

  if (v38[106] == 1)
  {
    OUTLINED_FUNCTION_18_82();
    MEMORY[0x1DA6EAC70](0x4C6C61727574616ELL, 0xEF65676175676E61);
    v38 = *(v19 + 12);
  }

  if (!v38[25])
  {
    goto LABEL_25;
  }

  v51 = 0x6564756C637865;
  v52 = sub_1D5616168();

  if ((v52 & 1) == 0)
  {
    OUTLINED_FUNCTION_18_82();
    v53 = v38[25];
    if (v38[25])
    {
      if (v53 == 1)
      {
        v51 = 0x676948636972796CLL;
      }

      else
      {
        v51 = 0x73636972796CLL;
      }

      if (v53 == 1)
      {
        v54 = 0xEF73746867696C68;
      }

      else
      {
        v54 = 0xE600000000000000;
      }
    }

    else
    {
      v54 = 0xE700000000000000;
    }

    MEMORY[0x1DA6EAC70](v51, v54);
LABEL_25:
  }

  v55 = *(v19 + 12);
  if (*(v55 + 105) == 1)
  {
    OUTLINED_FUNCTION_18_82();
    MEMORY[0x1DA6EAC70](0x76697372656D6D69, 0xE900000000000065);
    v55 = *(v19 + 12);
  }

  v56 = *(v55 + 32);
  v57 = *(v56 + 16);
  if (v57)
  {
    v58 = (v56 + 32);
    do
    {
      v60 = *v58++;
      v59 = v60;
      OUTLINED_FUNCTION_18_82();
      if (v60)
      {
        v61 = 0x656C746974627573;
      }

      else
      {
        v61 = 0x6E6F437972657571;
      }

      if (v59)
      {
        v62 = 0xE900000000000073;
      }

      else
      {
        v62 = 0xEC00000074786574;
      }

      MEMORY[0x1DA6EAC70](v61, v62);

      --v57;
    }

    while (v57);
  }

  v63 = *(v19 + 30);
  v64 = *(v19 + 2);
  v65 = *(v19 + 3);

  sub_1D560BB28();

  v67 = *(v30 + 16);
  v66 = *(v30 + 24);
  if (v67 >= v66 >> 1)
  {
    OUTLINED_FUNCTION_93_1(v66);
    sub_1D4EFFE00();
    v30 = v180;
  }

  OUTLINED_FUNCTION_14_83();
  v68 = *(v19 + 30);
  v69 = *(v19 + 18);
  v70 = *(v19 + 19);
  v71 = *(v19 + 11);
  *(v30 + 16) = v67 + 1;
  v74 = v30 + ((v72 + 32) & ~v72) + v73 * v67;
  v75 = v30;
  v76 = *(v70 + 32);
  v76(v74, v68, v69);
  v196 = v75;
  *(v19 + 4) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  v77 = sub_1D560E488();
  v78 = *(v77 + 16);
  if (v78)
  {
    v195 = v76;
    v79 = *(v19 + 16);
    v199 = MEMORY[0x1E69E7CC0];
    sub_1D4F03980();
    v80 = *(v79 + 16);
    v79 += 16;
    v81 = *(v79 + 64);
    OUTLINED_FUNCTION_43_3();
    v83 = v77 + v82;
    v197 = *(v79 + 56);
    v198 = v84;
    v85 = (v79 - 8);
    do
    {
      v86 = *(v19 + 17);
      v87 = v19;
      v88 = *(v19 + 15);
      v198(v86, v83, v88);
      v89 = sub_1D5610058();
      v91 = v90;
      (*v85)(v86, v88);
      v93 = *(v199 + 16);
      v92 = *(v199 + 24);
      if (v93 >= v92 >> 1)
      {
        OUTLINED_FUNCTION_93_1(v92);
        sub_1D4F03980();
      }

      *(v199 + 16) = v93 + 1;
      v94 = v199 + 16 * v93;
      *(v94 + 32) = v89;
      *(v94 + 40) = v91;
      v83 += v197;
      --v78;
      v19 = v87;
    }

    while (v78);
    v95 = *(v87 + 29);

    *(v87 + 5) = v199;
    v96 = OUTLINED_FUNCTION_222();
    __swift_instantiateConcreteTypeFromMangledNameV2(v96, v97);
    sub_1D4E62A60(&qword_1EDD52780, &qword_1EC7EABD8, &unk_1D561D780);
    sub_1D5614CF8();

    sub_1D560BB28();

    v99 = *(v196 + 16);
    v98 = *(v196 + 24);
    if (v99 >= v98 >> 1)
    {
      OUTLINED_FUNCTION_22_41(v98);
      sub_1D4EFFE00();
      v196 = v187;
    }

    v76 = v195;
    OUTLINED_FUNCTION_14_83();
    v100 = *(v19 + 29);
    v101 = *(v19 + 18);
    *(v196 + 16) = v99 + 1;
    v195(v196 + ((v102 + 32) & ~v102) + v103 * v99, v100, v101);
    *(v19 + 4) = v196;
  }

  else
  {
  }

  v104 = *(v19 + 12);
  if (*(v104 + 48))
  {
    v106 = *(v19 + 27);
    v105 = *(v19 + 28);
    v108 = *(v19 + 18);
    v107 = *(v19 + 19);
    v109 = *(v104 + 40);
    sub_1D560BB28();
    v110 = OUTLINED_FUNCTION_34_59();
    v111(v110);
    v113 = *(v196 + 16);
    v112 = *(v196 + 24);
    if (v113 >= v112 >> 1)
    {
      OUTLINED_FUNCTION_22_41(v112);
      sub_1D4EFFE00();
      v196 = v188;
    }

    v114 = *(v19 + 35);
    v115 = *(v19 + 27);
    v116 = *(v19 + 18);
    v117 = (v19[368] + 32) & ~v19[368];
    (*(*(v19 + 19) + 8))(*(v19 + 28), v116);
    *(v196 + 16) = v113 + 1;
    v76(v196 + v117 + v114 * v113, v115, v116);
    *(v19 + 4) = v196;
    v118 = *(v19 + 12);
  }

  v119 = *(v19 + 26);
  sub_1D540ED84();
  sub_1D4EF30FC();
  sub_1D560BB78();
  v120 = *(v19 + 4);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v181 = *(v120 + 16);
    sub_1D4EFFE00();
    v120 = v182;
  }

  OUTLINED_FUNCTION_2_45();
  if (v122)
  {
    OUTLINED_FUNCTION_22_41(v121);
    sub_1D4EFFE00();
    v120 = v183;
  }

  OUTLINED_FUNCTION_14_83();
  v123 = *(v19 + 26);
  v124 = *(v19 + 18);
  v125 = *(v19 + 12);
  v127 = OUTLINED_FUNCTION_1_165(v126);
  (v76)(v127);
  if ((*(v125 + 24) & 1) == 0)
  {
    v128 = *(v19 + 25);
    *(v19 + 9) = *(*(v19 + 12) + 16);
    sub_1D56160F8();
    OUTLINED_FUNCTION_35_58();
    sub_1D560BB28();

    OUTLINED_FUNCTION_2_45();
    if (v122)
    {
      OUTLINED_FUNCTION_22_41(v129);
      sub_1D4EFFE00();
      v120 = v190;
    }

    OUTLINED_FUNCTION_14_83();
    v130 = *(v19 + 25);
    v131 = *(v19 + 18);
    v133 = OUTLINED_FUNCTION_1_165(v132);
    (v76)(v133);
  }

  v134 = *(v19 + 12);
  if ((*(v134 + 88) & 1) == 0)
  {
    v135 = *(v19 + 24);
    *(v19 + 8) = *(v134 + 80);
    sub_1D56160F8();
    OUTLINED_FUNCTION_35_58();
    sub_1D560BB28();

    OUTLINED_FUNCTION_2_45();
    if (v122)
    {
      OUTLINED_FUNCTION_22_41(v136);
      sub_1D4EFFE00();
      v120 = v191;
    }

    OUTLINED_FUNCTION_14_83();
    v137 = *(v19 + 24);
    v138 = *(v19 + 18);
    v140 = OUTLINED_FUNCTION_1_165(v139);
    (v76)(v140);
    v134 = *(v19 + 12);
  }

  if ((*(v134 + 104) & 1) == 0)
  {
    v141 = *(v19 + 23);
    *(v19 + 7) = *(v134 + 96);
    sub_1D56160F8();
    OUTLINED_FUNCTION_35_58();
    sub_1D560BB28();

    OUTLINED_FUNCTION_2_45();
    if (v122)
    {
      OUTLINED_FUNCTION_22_41(v142);
      sub_1D4EFFE00();
      v120 = v192;
    }

    OUTLINED_FUNCTION_14_83();
    v143 = *(v19 + 23);
    v144 = *(v19 + 18);
    v146 = OUTLINED_FUNCTION_1_165(v145);
    (v76)(v146);
    v134 = *(v19 + 12);
  }

  if ((*(v134 + 72) & 1) == 0)
  {
    v147 = *(v19 + 22);
    *(v19 + 6) = *(v134 + 64);
    sub_1D56160F8();
    OUTLINED_FUNCTION_35_58();
    sub_1D560BB28();

    OUTLINED_FUNCTION_2_45();
    if (v122)
    {
      OUTLINED_FUNCTION_22_41(v148);
      sub_1D4EFFE00();
      v120 = v193;
    }

    OUTLINED_FUNCTION_14_83();
    v149 = *(v19 + 22);
    v150 = *(v19 + 18);
    v152 = OUTLINED_FUNCTION_1_165(v151);
    (v76)(v152);
    v153 = *(v19 + 12);
  }

  v154 = *(v19 + 21);
  v155 = *(v19 + 13);
  v156 = *(v19 + 14);
  MusicCatalogInternalSearchRequest.configuration.getter(v156);
  v200 = *(v156 + *(v155 + 68));
  sub_1D514E568(&v200);
  OUTLINED_FUNCTION_4_132();
  sub_1D4E58714(v156, v157);
  OUTLINED_FUNCTION_2_45();
  if (v122)
  {
    OUTLINED_FUNCTION_22_41(v158);
    sub_1D4EFFE00();
    v120 = v184;
  }

  OUTLINED_FUNCTION_14_83();
  v160 = *(v19 + 20);
  v159 = *(v19 + 21);
  v161 = *(v19 + 18);
  v163 = OUTLINED_FUNCTION_1_165(v162);
  (v76)(v163);
  sub_1D560BB88();
  OUTLINED_FUNCTION_2_45();
  if (v122)
  {
    OUTLINED_FUNCTION_22_41(v164);
    sub_1D4EFFE00();
    v120 = v185;
  }

  *(v19 + 41) = v120;
  v165 = *(v19 + 93);
  OUTLINED_FUNCTION_14_83();
  v166 = *(v19 + 20);
  v167 = *(v19 + 18);
  v168 = *(v19 + 12);
  v170 = OUTLINED_FUNCTION_1_165(v169);
  (v76)(v170);
  v171 = *(MEMORY[0x1E6974D00] + 4);
  v172 = swift_task_alloc();
  *(v19 + 42) = v172;
  *v172 = v19;
  v172[1] = sub_1D5411684;

  return MEMORY[0x1EEDCE258](v172, v173, v174, v175, v176, v177, v178, v179, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1D5411684(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v10 = *(v9 + 336);
  v11 = *v3;
  OUTLINED_FUNCTION_23_0();
  *v12 = v11;
  v7[43] = v2;

  if (v2)
  {
    v13 = v7[41];
  }

  else
  {
    v7[44] = a2;
    v7[45] = a1;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D54117AC()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 328);
  v4 = *(v0 + 372);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);
  v12 = *(v0 + 248);
  v13 = *(v0 + 240);
  v14 = *(v0 + 232);
  v15 = *(v0 + 224);
  v16 = *(v0 + 216);
  v17 = *(v0 + 208);
  v18 = *(v0 + 200);
  v19 = *(v0 + 192);
  v20 = *(v0 + 184);
  v21 = *(v0 + 176);
  v22 = *(v0 + 168);
  v23 = *(v0 + 160);
  v24 = *(v0 + 136);
  v25 = *(v0 + 112);
  v8 = *(v0 + 96);
  v9 = *(v0 + 80);
  sub_1D560CD48();
  sub_1D560EB88();

  OUTLINED_FUNCTION_55();

  return v10();
}

uint64_t sub_1D5411950()
{
  v1 = *(v0 + 320);
  OUTLINED_FUNCTION_11_108();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D5411A50()
{
  v1 = *(v0 + 344);
  OUTLINED_FUNCTION_11_108();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D5411B50@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v72 = a2;
  v76 = a1;
  v4 = sub_1D560C448();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D560C468();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for MusicRequestConfiguration();
  v10 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560BB98();
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D560CD48();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6258, &unk_1D5662CD0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v64 - v22;
  v24 = sub_1D560EBD8();
  v74 = *(v24 - 8);
  v25 = *(v74 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v73 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v64 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v64 - v31;
  v33 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  v34 = v3;
  (*(v16 + 16))(v19, v3 + *(v33 + 60), v15);

  sub_1D560EBA8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_1D4E765C8(v23, &qword_1EC7F6258, &unk_1D5662CD0);
    sub_1D560C438();
    sub_1D4FBA6EC(MEMORY[0x1E69E7CC0]);
    sub_1D5414284(&qword_1EC7ECE80, MEMORY[0x1E6969C20]);
    v35 = v64;
    v36 = v67;
    sub_1D560BE88();
    sub_1D560C458();
    (*(v66 + 8))(v35, v36);
    return swift_willThrow();
  }

  v38 = v74;
  v39 = *(v74 + 32);
  v67 = v74 + 32;
  v76 = v39;
  v39(v32, v23, v24);
  (*(v38 + 16))(v30, v32, v24);
  strcpy(v79, "serverBubbles");
  v79[7] = -4864;
  v40 = v30;
  if (*(v34 + 106) == 1)
  {
    MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
    MEMORY[0x1DA6EAC70](0x4C6C61727574616ELL, 0xEF65676175676E61);
  }

  v65 = v32;
  v66 = v24;
  if (!*(v34 + 25))
  {
    goto LABEL_13;
  }

  v41 = 0xEF73746867696C68;
  v42 = 0x676948636972796CLL;
  v43 = sub_1D5616168();

  if ((v43 & 1) == 0)
  {
    MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
    if (*(v34 + 25))
    {
      if (*(v34 + 25) != 1)
      {
        v41 = 0xE600000000000000;
        v42 = 0x73636972796CLL;
      }
    }

    else
    {
      v41 = 0xE700000000000000;
      v42 = 0x6564756C637865;
    }

    MEMORY[0x1DA6EAC70](v42, v41);
LABEL_13:
  }

  if (*(v34 + 105) == 1)
  {
    MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
    MEMORY[0x1DA6EAC70](0x76697372656D6D69, 0xE900000000000065);
  }

  v71 = v34;
  v44 = *(v34 + 32);
  v45 = *(v44 + 16);
  if (v45)
  {
    v46 = (v44 + 32);
    do
    {
      v48 = *v46++;
      v47 = v48;
      MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      if (v48)
      {
        v49 = 0x656C746974627573;
      }

      else
      {
        v49 = 0x6E6F437972657571;
      }

      if (v47)
      {
        v50 = 0xE900000000000073;
      }

      else
      {
        v50 = 0xEC00000074786574;
      }

      MEMORY[0x1DA6EAC70](v49, v50);

      --v45;
    }

    while (v45);
  }

  v51 = v75;
  sub_1D560BB28();

  v52 = v73;
  sub_1D560EBB8();
  v53 = *(v77 + 8);
  v77 += 8;
  v72 = v53;
  v53(v51, v78);
  v74 = *(v74 + 8);
  v54 = v66;
  (v74)(v40, v66);
  v55 = v76;
  v76(v40, v52, v54);
  v56 = v71;
  sub_1D540ED84();
  sub_1D560EBC8();
  v57 = v52;

  (v74)(v40, v54);
  v55(v40, v52, v54);
  v58 = *(v56 + 24);
  v59 = v75;
  if ((v58 & 1) == 0)
  {
    v80 = *(v71 + 16);
    sub_1D56160F8();
    sub_1D560BB28();

    sub_1D560EBB8();
    v72(v59, v78);
    (v74)(v40, v54);
    v76(v40, v52, v54);
  }

  sub_1D560BB78();
  sub_1D560EBB8();
  v72(v59, v78);
  v60 = v74;
  (v74)(v40, v54);
  v76(v40, v57, v54);
  v61 = v69;
  MusicCatalogInternalSearchRequest.configuration.getter(v69);
  LOBYTE(v80) = *(v61 + *(v68 + 68));
  sub_1D514E568(&v80);
  sub_1D4E58714(v61, type metadata accessor for MusicRequestConfiguration);
  sub_1D560EBB8();
  v62 = v78;
  v63 = v72;
  v72(v59, v78);
  v60(v40, v54);
  v76(v40, v73, v54);
  sub_1D560BB88();
  sub_1D560EBB8();
  v63(v59, v62);
  v60(v40, v54);
  return (v60)(v65, v54);
}

uint64_t MusicCatalogInternalSearchRequest.LyricsOption.rawValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_31_50();
  v4 = 0x676948636972796CLL;
  if (!v5)
  {
    v4 = 0x73636972796CLL;
  }

  if (v2)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

MusicKitInternal::MusicCatalogInternalSearchRequest::LyricsOption_optional __swiftcall MusicCatalogInternalSearchRequest.LyricsOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D5615EF8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D5412614@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCatalogInternalSearchRequest.LyricsOption.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D5412728(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F437972657571 && a2 == 0xEC00000074786574;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536D657449726570 && a2 == 0xEE0074657070696ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D54127FC(char a1)
{
  if (a1)
  {
    return 0x536D657449726570;
  }

  else
  {
    return 0x6E6F437972657571;
  }
}

uint64_t sub_1D5412850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5412728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5412878(uint64_t a1)
{
  v2 = sub_1D5414320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54128B4(uint64_t a1)
{
  v2 = sub_1D5414320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D54128F0(uint64_t a1)
{
  v2 = sub_1D5414374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541292C(uint64_t a1)
{
  v2 = sub_1D5414374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5412968(uint64_t a1)
{
  v2 = sub_1D54143C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54129A4(uint64_t a1)
{
  v2 = sub_1D54143C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicCatalogInternalSearchRequest.Context.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6150, &qword_1D5662620);
  v4 = OUTLINED_FUNCTION_4(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6158, &qword_1D5662628);
  v11 = OUTLINED_FUNCTION_4(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6160, &qword_1D5662630);
  OUTLINED_FUNCTION_4(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5414320();
  sub_1D56163D8();
  v28 = (v20 + 8);
  if (v26)
  {
    v37 = 1;
    sub_1D5414374();
    v29 = v33;
    sub_1D5616018();
    (*(v34 + 8))(v29, v35);
  }

  else
  {
    v36 = 0;
    sub_1D54143C8();
    sub_1D5616018();
    (*(v31 + 8))(v17, v32);
  }

  return (*v28)(v25, v18);
}

uint64_t MusicCatalogInternalSearchRequest.Context.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t MusicCatalogInternalSearchRequest.Context.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6180, &qword_1D5662638);
  OUTLINED_FUNCTION_4(v52);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6188, &qword_1D5662640);
  OUTLINED_FUNCTION_4(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6190, &unk_1D5662648);
  OUTLINED_FUNCTION_4(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5414320();
  v24 = v53;
  sub_1D5616398();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = v9;
  v47 = v15;
  v53 = a1;
  v25 = v52;
  v26 = sub_1D5615FE8();
  result = sub_1D4FE35F0(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = result;
LABEL_9:
    v40 = sub_1D5615C18();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v42 = &type metadata for MusicCatalogInternalSearchRequest.Context;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v22, v16);
    a1 = v53;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45[1] = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v28 + v29);
    v32 = sub_1D4FE35EC(v29 + 1, v30 >> 1, result, v28, v29, v30);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 != v36 >> 1)
    {
      v52 = v32;
      goto LABEL_9;
    }

    v54 = v31;
    if (v31)
    {
      v56 = 1;
      sub_1D5414374();
      v37 = v8;
      OUTLINED_FUNCTION_3_0();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v49 + 8))(v37, v25);
    }

    else
    {
      v55 = 0;
      sub_1D54143C8();
      v44 = v47;
      OUTLINED_FUNCTION_3_0();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v48 + 8))(v44, v46);
    }

    (*(v39 + 8))(v22, v34);
    *v38 = v54;
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  return result;
}

uint64_t sub_1D5413144(uint64_t a1, uint64_t a2)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  v4 = *(v48 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v48);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v47 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6250, &qword_1D5662CC0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v45 - v22;
  v24 = (&v45 + *(v21 + 56) - v22);
  sub_1D5414E54(a1, &v45 - v22, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
  sub_1D5414E54(a2, v24, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D5414E54(v23, v18, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v39 = v48;
      (*(v4 + 32))(v11, v24, v48);
      type metadata accessor for MusicCatalogInternalSearchRequest(0);
      sub_1D5414284(&qword_1EC7EF290, type metadata accessor for MusicCatalogInternalSearchRequest);
      v38 = sub_1D560E478();
      v40 = *(v4 + 8);
      v40(v11, v39);
      v41 = v18;
      v42 = v39;
LABEL_17:
      v40(v41, v42);
      sub_1D4E58714(v23, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
      return v38 & 1;
    }

    (*(v4 + 8))(v18, v48);
LABEL_12:
    sub_1D4E765C8(v23, &qword_1EC7F6250, &qword_1D5662CC0);
    goto LABEL_13;
  }

  sub_1D5414E54(v23, v16, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
  v26 = *v16;
  v25 = *(v16 + 1);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6240, &qword_1D5667EC0) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(&v16[v27], v48);

    goto LABEL_12;
  }

  v28 = v24[1];
  v45 = *v24;
  v29 = v26;
  v30 = *(v4 + 32);
  v31 = &v16[v27];
  v32 = v48;
  v30(v47, v31, v48);
  v33 = v24 + v27;
  v34 = v46;
  v30(v46, v33, v32);
  if (v29 == v45 && v25 == v28)
  {

    goto LABEL_16;
  }

  v36 = sub_1D5616168();

  if (v36)
  {
LABEL_16:
    type metadata accessor for MusicCatalogInternalSearchRequest(0);
    sub_1D5414284(&qword_1EC7EF290, type metadata accessor for MusicCatalogInternalSearchRequest);
    v43 = v47;
    v38 = sub_1D560E478();
    v40 = *(v4 + 8);
    v40(v34, v32);
    v41 = v43;
    v42 = v32;
    goto LABEL_17;
  }

  v37 = *(v4 + 8);
  v37(v34, v32);
  v37(v47, v32);
  sub_1D4E58714(v23, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
LABEL_13:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_1D541366C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - v4;
  v6 = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5414E54(v0, v9, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6240, &qword_1D5667EC0);
    (*(v2 + 32))(v5, &v9[*(v12 + 48)], v1);
    MEMORY[0x1DA6EC0D0](1);
    sub_1D5614E28();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x1DA6EC0D0](0);
  }

  sub_1D4E62A60(&qword_1EC7F6248, &qword_1EC7EF288, &qword_1D5662610);
  sub_1D5614CB8();
  return (*(v2 + 8))(v5, v1);
}

uint64_t static MusicCatalogInternalSearchRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v5 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a2 + 16);
    v7 = *(a1 + 16);
    OUTLINED_FUNCTION_36_54();
    if (v8)
    {
      return 0;
    }
  }

  if ((sub_1D4F3C42C(*(a1 + 25), *(a2 + 25)) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a2 + 32);
  if ((sub_1D4F0B2E0(*(a1 + 32)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 48);
  v11 = *(a2 + 48);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *(a1 + 40) == *(a2 + 40) && v10 == v11;
    if (!v12 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 56);
  v14 = *(a2 + 56);
  if (v13 == 4)
  {
    if (v14 != 4)
    {
      return 0;
    }
  }

  else if (v13 != v14)
  {
    return 0;
  }

  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    v15 = *(a2 + 64);
    v16 = *(a1 + 64);
    OUTLINED_FUNCTION_36_54();
    if (v17)
    {
      return 0;
    }
  }

  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    v18 = *(a2 + 80);
    v19 = *(a1 + 80);
    OUTLINED_FUNCTION_36_54();
    if (v20)
    {
      return 0;
    }
  }

  if ((*(a1 + 104) & 1) == 0)
  {
    v21 = *(a2 + 96);
    v22 = *(a1 + 96);
    OUTLINED_FUNCTION_36_54();
    if ((v23 & 1) == 0)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (!*(a2 + 104))
  {
    return 0;
  }

LABEL_37:
  if (*(a1 + 105) != *(a2 + 105))
  {
    return 0;
  }

  if (*(a1 + 106) != *(a2 + 106))
  {
    return 0;
  }

  v24 = *(OUTLINED_FUNCTION_38_43() + 60);
  if ((_s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v25 = *(v2 + 64);

  return sub_1D5413144(a1 + v25, a2 + v25);
}

uint64_t MusicCatalogInternalSearchRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_1D5614E28();
  if (*(v1 + 24) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v6 = v1[2];
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v6);
  }

  v7 = *(v1 + 25);
  OUTLINED_FUNCTION_31_50();
  sub_1D5614E28();

  sub_1D4F0B2F8(a1, v1[4]);
  if (v1[6])
  {
    v8 = v1[5];
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v9 = *(v1 + 56);
  if (v9 == 4)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v9);
  }

  if (*(v1 + 72) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v10 = v1[8];
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v10);
  }

  if (*(v1 + 88) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v11 = v1[10];
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v11);
  }

  if (*(v1 + 104) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v12 = v1[12];
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v12);
  }

  v13 = *(v1 + 105);
  sub_1D56162F8();
  v14 = *(v1 + 106);
  sub_1D56162F8();
  v15 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  v16 = *(v15 + 60);
  sub_1D560CD48();
  sub_1D5414284(&qword_1EC7EA848, MEMORY[0x1E6974D20]);
  sub_1D5614CB8();
  v17 = v2 + *(v15 + 64);
  return sub_1D541366C();
}