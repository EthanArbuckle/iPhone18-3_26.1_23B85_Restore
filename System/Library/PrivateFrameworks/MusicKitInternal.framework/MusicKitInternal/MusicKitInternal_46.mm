uint64_t sub_1D526AC0C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  sub_1D526AC70();
  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D526AC70()
{
  result = sub_1D525F948();
  *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientShuffleMode) = 3;
  return result;
}

uint64_t sub_1D526AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  if (a4)
  {
    v7 = swift_task_alloc();
    v6[3] = v7;
    *v7 = v6;
    v7[1] = sub_1D526AD68;

    return sub_1D5434850();
  }

  else
  {
    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1D526AD68()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 32) = v0;

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

uint64_t sub_1D526AE7C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  if (qword_1EDD54498 != -1)
  {
    OUTLINED_FUNCTION_3_116();
  }

  v2 = *(v0 + 32);
  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v3, qword_1EDD76AC0);
  v4 = v2;
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 32);
    OUTLINED_FUNCTION_142();
    v8 = OUTLINED_FUNCTION_38_12();
    *v1 = 138543362;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_88_1(v10);
    OUTLINED_FUNCTION_74_18(&dword_1D4E3F000, v11, v6, "InternalMusicPlayer updating auto-play failed with error: %{public}@");
    sub_1D4E50004(v8, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  sub_1D56153C8();
  *(v0 + 40) = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D526AFD4()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  sub_1D526B090();
  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D526B038()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D526B090()
{
  result = sub_1D525F948();
  *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled) = 2;
  return result;
}

uint64_t sub_1D526B0B8(uint64_t result, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a4)
  {
    v16 = result;
    v23 = [a4 musicKit_responseTracklist_sectionedCollection];
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a4;
    v19[4] = v16;
    v19[5] = a5;
    v19[6] = a6;
    v19[7] = a7;
    v19[8] = a8;
    v19[9] = a9;
    v19[10] = a10;
    v19[11] = a11;
    v19[12] = a3;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1D526DBB8;
    *(v20 + 24) = v19;
    aBlock[4] = sub_1D526DBEC;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D526C5FC;
    aBlock[3] = &block_descriptor_95;
    v21 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v23 enumeratePlayerItemsInSectionAtIndex:a2 usingBlock:v21];

    _Block_release(v21);
    LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

    if (a5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D526B29C(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, _BYTE *a14)
{
  v57 = a8;
  v58 = a3;
  v64 = a6;
  v65 = a10;
  v66 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C30, &qword_1D564AB70);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v57 - v21;
  v63 = type metadata accessor for InternalMusicPlayer.Queue.Entry();
  v59 = *(v63 - 8);
  v23 = *(v59 + 64);
  v24 = MEMORY[0x1EEE9AC00](v63);
  v60 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v57 - v26);
  v28 = sub_1D560C4A8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560C498();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F0160, &qword_1D5636220);
  v34 = &v22[*(v33 + 48)];
  v61 = v29;
  v62 = v28;
  (*(v29 + 16))(v22, v32, v28);
  if (a5)
  {
    v35 = [a5 musicKit_responseTracklist_underlyingSectionObjectAtIndexPathBlock];
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    v37 = sub_1D526DC14;
  }

  else
  {
    v37 = 0;
    v36 = 0;
  }

  *v34 = v37;
  *(v34 + 1) = v36;
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v33);
  v38 = [a1 musicKit_playerResponseItem_contentItemIdentifier];
  v39 = sub_1D5614D68();
  v41 = v40;

  *v27 = v39;
  v27[1] = v41;
  sub_1D4F0AE7C();
  v42 = v63;
  v43 = *(v63 + 20);
  v44 = swift_unknownObjectRetain();
  sub_1D5103E84(v44, v20, (v27 + v43));
  sub_1D4E50004(v22, &unk_1EC7F2C30, &qword_1D564AB70);
  v45 = v65;
  v46 = v66;
  switch(v64)
  {
    case 1:
      if ((sub_1D52F8A78(3, v66) & 1) == 0)
      {
        goto LABEL_31;
      }

      sub_1D526D7D8();
      v47 = v57;
      goto LABEL_42;
    case 2:
      (*(v61 + 8))(v32, v62);
      sub_1D4E50004(a9, &qword_1EC7F2AA8, &unk_1D564A5C0);
      sub_1D526D94C();
      return __swift_storeEnumTagSinglePayload(a9, 0, 1, v42);
    case 3:
      v48 = *v65;
      if (sub_1D52F8A78(2, v66))
      {
        if (v48 >= 99)
        {
          goto LABEL_31;
        }
      }

      else if (sub_1D52F8A78(1, v46))
      {
        if (v48 >= 1)
        {
          goto LABEL_31;
        }
      }

      else if ((v48 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v47 = a11;
      goto LABEL_41;
    case 4:
      v48 = *v65;
      if (sub_1D52F8A78(2, v66))
      {
        if (v48 >= 99)
        {
          goto LABEL_31;
        }
      }

      else if (sub_1D52F8A78(1, v46))
      {
        if (v48 >= 1)
        {
          goto LABEL_31;
        }
      }

      else if ((v48 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v47 = a12;
      goto LABEL_41;
    case 5:
      v48 = *v65;
      if (sub_1D52F8A78(2, v66))
      {
        if (v48 >= 99)
        {
LABEL_31:
          v50 = *v45;
          if (sub_1D52F8A78(2, v46))
          {
            v52 = v61;
            v51 = v62;
            if (v50 < 99)
            {
LABEL_34:
              sub_1D526D3A4(v27, type metadata accessor for InternalMusicPlayer.Queue.Entry);
              return (*(v52 + 8))(v32, v51);
            }
          }

          else
          {
            v53 = sub_1D52F8A78(1, v46);
            v52 = v61;
            v51 = v62;
            if (v53)
            {
              if (v50 < 1)
              {
                goto LABEL_34;
              }
            }

            else if (v50 < 0)
            {
              goto LABEL_34;
            }
          }

          *v58 = 1;
          *a14 = 1;
          goto LABEL_34;
        }
      }

      else if (sub_1D52F8A78(1, v46))
      {
        if (v48 >= 1)
        {
          goto LABEL_31;
        }
      }

      else if ((v48 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v47 = a13;
LABEL_41:
      *v45 = v48 + 1;
      sub_1D526D7D8();
LABEL_42:
      sub_1D4EFF604();
      v54 = *(*v47 + 16);
      sub_1D4EFF83C(v54);
      sub_1D526D3A4(v27, type metadata accessor for InternalMusicPlayer.Queue.Entry);
      (*(v61 + 8))(v32, v62);
      v55 = *v47;
      *(v55 + 16) = v54 + 1;
      v56 = v55 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v54;
      return sub_1D526D94C();
    default:
      goto LABEL_31;
  }
}

double sub_1D526B8BC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = sub_1D560C478();
  v5 = (*(a1 + 16))(a1, v4);

  if (v5)
  {
    sub_1D56159A8();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1D526B954()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_69_0();
  v5 = type metadata accessor for InternalMusicPlayer.Queue.Entry();
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AA8, &unk_1D564A5C0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_71_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BD0, &qword_1D564AB30);
  OUTLINED_FUNCTION_14(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31();
  v17 = *v1;
  v18 = *v0;
  sub_1D4EFA358();
  if ((v19 & 1) == 0)
  {
    goto LABEL_37;
  }

  v55 = _s5QueueC10PropertiesVMa(0);
  v20 = v55[5];
  v21 = *(v13 + 48);
  OUTLINED_FUNCTION_111_10();
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_111_10();
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_57(v2, 1, v5);
  if (v22)
  {
    OUTLINED_FUNCTION_57(v2 + v21, 1, v5);
    if (v22)
    {
      sub_1D4E50004(v2, &qword_1EC7F2AA8, &unk_1D564A5C0);
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_57(v2 + v21, 1, v5);
  if (v22)
  {
    OUTLINED_FUNCTION_1_116();
    sub_1D526D3A4(v4, v23);
LABEL_10:
    v24 = &unk_1EC7F2BD0;
    v25 = &qword_1D564AB30;
LABEL_11:
    sub_1D4E50004(v2, v24, v25);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_25_48();
  sub_1D526D94C();
  v26 = *v4 == *v3 && v4[1] == v3[1];
  if (!v26 && (sub_1D5616168() & 1) == 0)
  {
    sub_1D526D3A4(v3, type metadata accessor for InternalMusicPlayer.Queue.Entry);
    sub_1D526D3A4(v4, type metadata accessor for InternalMusicPlayer.Queue.Entry);
    v24 = &qword_1EC7F2AA8;
    v25 = &unk_1D564A5C0;
    goto LABEL_11;
  }

  v27 = sub_1D5104E50((v4 + *(v5 + 20)), (v3 + *(v5 + 20)));
  sub_1D526D3A4(v3, type metadata accessor for InternalMusicPlayer.Queue.Entry);
  v28 = OUTLINED_FUNCTION_97_1();
  sub_1D526D3A4(v28, v29);
  sub_1D4E50004(v2, &qword_1EC7F2AA8, &unk_1D564A5C0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_18:
  v30 = v55[6];
  v31 = *(v1 + v30);
  v32 = *(v0 + v30);
  sub_1D4EFA358();
  if (v33)
  {
    v34 = v55[7];
    v35 = *(v1 + v34);
    v36 = *(v0 + v34);
    sub_1D4EFA358();
    if (v37)
    {
      v38 = v55[8];
      v39 = *(v1 + v38);
      v40 = *(v0 + v38);
      sub_1D4EFA358();
      if (v41)
      {
        v42 = v55[9];
        v43 = *(v1 + v42);
        v44 = *(v0 + v42);
        if (v43 == 3)
        {
          if (v44 != 3)
          {
            goto LABEL_37;
          }
        }

        else if (v43 != v44)
        {
          goto LABEL_37;
        }

        v45 = v55[10];
        v46 = *(v1 + v45);
        v47 = *(v0 + v45);
        if (v46 == 3)
        {
          if (v47 != 3)
          {
            goto LABEL_37;
          }
        }

        else if (v46 != v47)
        {
          goto LABEL_37;
        }

        v48 = v55[11];
        v49 = *(v1 + v48);
        v50 = *(v0 + v48);
        if (v49 == 2)
        {
          if (v50 != 2)
          {
            goto LABEL_37;
          }
        }

        else if (v50 == 2 || ((v50 ^ v49) & 1) != 0)
        {
          goto LABEL_37;
        }

        v51 = v55[12];
        v52 = (v1 + v51);
        v53 = *(v1 + v51 + 8);
        v54 = (v0 + v51);
        LODWORD(v51) = *(v0 + v51 + 8);
        if ((v53 & 1) == 0)
        {
          *v52;
          *v54;
        }
      }
    }
  }

LABEL_37:
  OUTLINED_FUNCTION_46();
}

void sub_1D526BCF8()
{
  OUTLINED_FUNCTION_191();
  v2 = v0;
  v3 = type metadata accessor for InternalMusicPlayer.Queue.Entry();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v7 = OUTLINED_FUNCTION_97_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_118_1();
  v13 = *v0;
  sub_1D4F08A4C();
  v14 = _s5QueueC10PropertiesVMa(0);
  v15 = v14[5];
  OUTLINED_FUNCTION_137_8();
  v16 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v16, v17, v3);
  if (v18)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_48();
    sub_1D526D94C();
    OUTLINED_FUNCTION_27();
    v19 = *v1;
    v20 = v1[1];
    sub_1D5614E28();
    v21 = v1 + *(v3 + 20);
    sub_1D5105370();
    OUTLINED_FUNCTION_1_116();
    sub_1D526D3A4(v1, v22);
  }

  v23 = *(v2 + v14[6]);
  sub_1D4F08A4C();
  v24 = *(v2 + v14[7]);
  sub_1D4F08A4C();
  v25 = *(v2 + v14[8]);
  sub_1D4F08A4C();
  v26 = *(v2 + v14[9]);
  if (v26 == 3)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v26);
  }

  v27 = *(v2 + v14[10]);
  if (v27 == 3)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v27);
  }

  if (*(v2 + v14[11]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v28 = v2 + v14[12];
  if (v28[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v29 = *v28;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v29);
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D526BEEC()
{
  OUTLINED_FUNCTION_47();
  v3 = sub_1D560C368();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v9 = OUTLINED_FUNCTION_23_48();
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BC0, &qword_1D564AB28);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_118_1();
  v17 = *(v16 + 56);
  sub_1D526D7D8();
  sub_1D526D7D8();
  OUTLINED_FUNCTION_1(v0);
  if (!v19)
  {
    OUTLINED_FUNCTION_6_85();
    OUTLINED_FUNCTION_21_1();
    sub_1D526D7D8();
    OUTLINED_FUNCTION_1(v0 + v17);
    if (!v19)
    {
      (*(v6 + 32))(v1, v0 + v17, v3);
      OUTLINED_FUNCTION_61();
      sub_1D560C348();
      v20 = *(v6 + 8);
      v21 = OUTLINED_FUNCTION_98();
      v20(v21);
      (v20)(v2, v3);
      OUTLINED_FUNCTION_29_42();
      sub_1D526D3A4(v0, v22);
      goto LABEL_10;
    }

    (*(v6 + 8))(v2, v3);
LABEL_9:
    sub_1D4E50004(v0, &unk_1EC7F2BC0, &qword_1D564AB28);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1(v0 + v17);
  if (!v19)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_29_42();
  sub_1D526D3A4(v0, v18);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D526C100()
{
  OUTLINED_FUNCTION_147();
  v1 = sub_1D560C368();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v7 = OUTLINED_FUNCTION_23_48();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_6_85();
  OUTLINED_FUNCTION_75_2();
  sub_1D526D7D8();
  OUTLINED_FUNCTION_1(v0);
  if (v10)
  {
    return MEMORY[0x1DA6EC0D0](0);
  }

  v11 = *(v4 + 32);
  v12 = OUTLINED_FUNCTION_46_1();
  v13(v12);
  MEMORY[0x1DA6EC0D0](1);
  OUTLINED_FUNCTION_28_47();
  sub_1D4E64524(v14, v15);
  sub_1D5614CB8();
  v16 = *(v4 + 8);
  v17 = OUTLINED_FUNCTION_98();
  return v18(v17);
}

uint64_t sub_1D526C250(void (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

void sub_1D526C298()
{
  OUTLINED_FUNCTION_69_0();
  if (sub_1D4F0B2E4(*v0, *v1))
  {
    v2 = *(_s5QueueC3KeyVMa(0) + 20);

    sub_1D526BEEC();
  }
}

uint64_t sub_1D526C2FC(uint64_t a1)
{
  v4 = sub_1D560C368();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v10 = OUTLINED_FUNCTION_23_48();
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  sub_1D4F0B2F8(a1, *v1);
  v13 = *(_s5QueueC3KeyVMa(0) + 20);
  OUTLINED_FUNCTION_6_85();
  sub_1D526D7D8();
  OUTLINED_FUNCTION_1(v2);
  if (v14)
  {
    return MEMORY[0x1DA6EC0D0](0);
  }

  v15 = *(v7 + 32);
  v16 = OUTLINED_FUNCTION_70();
  v17(v16);
  MEMORY[0x1DA6EC0D0](1);
  OUTLINED_FUNCTION_28_47();
  sub_1D4E64524(v18, v19);
  sub_1D5614CB8();
  v20 = *(v7 + 8);
  v21 = OUTLINED_FUNCTION_98();
  return v22(v21);
}

uint64_t sub_1D526C474()
{
  v2 = sub_1D560C368();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v8 = OUTLINED_FUNCTION_23_48();
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_7();
  sub_1D56162D8();
  sub_1D4F0B2F8(v22, *v0);
  v11 = *(_s5QueueC3KeyVMa(0) + 20);
  OUTLINED_FUNCTION_6_85();
  sub_1D526D7D8();
  OUTLINED_FUNCTION_1(v1);
  if (v12)
  {
    MEMORY[0x1DA6EC0D0](0);
  }

  else
  {
    v13 = *(v5 + 32);
    v14 = OUTLINED_FUNCTION_46_1();
    v15(v14);
    MEMORY[0x1DA6EC0D0](1);
    OUTLINED_FUNCTION_28_47();
    sub_1D4E64524(v16, v17);
    sub_1D5614CB8();
    v18 = *(v5 + 8);
    v19 = OUTLINED_FUNCTION_98();
    v20(v19);
  }

  return sub_1D5616328();
}

uint64_t sub_1D526C5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  swift_unknownObjectRetain();
  v8(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D526C734(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

uint64_t sub_1D526C784(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C368();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = _s5QueueC4KindOMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D56162D8();
  sub_1D4F0B2F8(v16, *v2);
  v13 = *(a2 + 20);
  sub_1D526D7D8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    MEMORY[0x1DA6EC0D0](0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    MEMORY[0x1DA6EC0D0](1);
    sub_1D4E64524(&qword_1EDD5F560, MEMORY[0x1E69695A8]);
    sub_1D5614CB8();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1D5616328();
}

uint64_t InternalMusicPlayer.Queue.deinit()
{
  v1 = *(v0 + 16);

  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_pendingStartEntry, &qword_1EC7F2AA8, &unk_1D564A5C0);
  v2 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components);

  OUTLINED_FUNCTION_29_42();
  sub_1D526D3A4(v0 + v3, v4);
  swift_weakDestroy();
  v5 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName + 8);

  sub_1D50153E4(*(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData), *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData + 8));
  v6 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_sessionID + 8);

  v7 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableItems);

  sub_1D4E50004(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableRequest + v0, &qword_1EC7F06A0, &unk_1D5638850);
  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_stationSeed, &unk_1EC7F2AB0, &unk_1D564A5D0);
  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_startItem, &unk_1EC7F65C0, &qword_1D562E6B0);
  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackIntent, &qword_1EC7F2AC0, &qword_1D564A5E0);
  sub_1D526CDE8(*(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath), *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 8), *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 16), *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 24), *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 32), *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 40));
  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_properties, &qword_1EC7F2AC8, &qword_1D564A5E8);
  v8 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_activeMonitoringPublisher;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  OUTLINED_FUNCTION_14(v9);
  (*(v10 + 8))(v0 + v8);
  return v0;
}

uint64_t InternalMusicPlayer.Queue.__deallocating_deinit()
{
  InternalMusicPlayer.Queue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D526CB9C@<X0>(uint64_t *a1@<X8>)
{
  result = InternalMusicPlayer.Queue.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t static InternalMusicPlayer.Queue.EntryInsertionPosition.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_97_13();
  off_1EC7F2AA0 = a1;
}

uint64_t (*static InternalMusicPlayer.Queue.EntryInsertionPosition.allCases.modify())()
{
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_54_0();
  return j_j__swift_endAccess;
}

uint64_t sub_1D526CCA4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7F2AA0;
}

uint64_t sub_1D526CCF4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7F2AA0 = v1;
}

uint64_t sub_1D526CD58@<X0>(uint64_t *a1@<X8>)
{
  result = static InternalMusicPlayer.Queue.EntryInsertionPosition.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D526CDC4@<X0>(uint64_t a1@<X0>, int **a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_1D525D8B4(a1, v2[3], v2[5], a2);
}

uint64_t sub_1D526CDE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_1D4E62868(result, a2);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D526CE34()
{
  OUTLINED_FUNCTION_69_0();
  v5 = OUTLINED_FUNCTION_186_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 24);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return v0;
}

uint64_t sub_1D526CE84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_1D5261188(a1, v2[3], v2[5], a2);
}

uint64_t sub_1D526CEC8()
{
  OUTLINED_FUNCTION_91();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  OUTLINED_FUNCTION_22(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_19_57();

  return sub_1D52640E8(v10, v11, v12, v13, v14);
}

uint64_t sub_1D526D00C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(*v3 + 16);
  if (v4 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(a3 + 16);
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v4 + v8;
  if (__OFADD__(v4, v8))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1D4F061A4(result, 1);

  return sub_1D54FBA98();
}

uint64_t sub_1D526D0B0(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v5 + 16);
  if (v6 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __OFSUB__(1, v7);
  v9 = 1 - v7;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  a4(result, 1);
  v10 = OUTLINED_FUNCTION_61();

  return a5(v10);
}

uint64_t sub_1D526D160()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_163_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_19_57();

  return sub_1D5264B34(v5, v6, v7, v8, v2, v0);
}

uint64_t objectdestroy_13Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[6];
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D526D258()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_163_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_19_57();

  return sub_1D5265500(v5, v6, v7, v8, v2, v0);
}

uint64_t sub_1D526D300()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_19_57();
  OUTLINED_FUNCTION_153_1();

  return sub_1D5265E34(v8, v9, v10, v11, v12);
}

uint64_t sub_1D526D3A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D526D444()
{
  result = qword_1EDD5E280;
  if (!qword_1EDD5E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E280);
  }

  return result;
}

unint64_t sub_1D526D4E0()
{
  result = qword_1EC7F2B98;
  if (!qword_1EC7F2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2B98);
  }

  return result;
}

unint64_t sub_1D526D538()
{
  result = qword_1EC7F2BA0;
  if (!qword_1EC7F2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2BA0);
  }

  return result;
}

_BYTE *sub_1D526D61C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D526D7D8()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

void sub_1D526D830()
{
  OUTLINED_FUNCTION_191();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = *(*v0 + 16);
  if (v4 < v2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = v1;
  v6 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v1 - v2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1D4F061BC(v4 - v6, 1);
  v8 = *v0;
  sub_1D5613838();
  OUTLINED_FUNCTION_120_8();
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v12 = *(v11 + 72);
  v13 = v10 + v12 * v5;
  OUTLINED_FUNCTION_46_1();
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v0 = v8;
    OUTLINED_FUNCTION_190();
    return;
  }

  v14 = *(v8 + 16);
  if (__OFSUB__(v14, v3))
  {
    goto LABEL_16;
  }

  sub_1D4F037CC(v10 + v12 * v3, v14 - v3, v13);
  v15 = *(v8 + 16);
  v16 = __OFADD__(v15, v7);
  v17 = v15 - v6;
  if (!v16)
  {
    *(v8 + 16) = v17;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1D526D94C()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D526D9A4()
{
  OUTLINED_FUNCTION_142_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED460, &unk_1D5625250);
  OUTLINED_FUNCTION_69(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v6);
  v10 = v0 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 41);
  v12 = *(v10 + 40);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_86(v13);
  *v14 = v15;
  v14[1] = sub_1D4E73560;

  return sub_1D526935C(v1, v0 + v4, v9, v0 + v7, v0 + v8, v0 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8), v12, v11);
}

uint64_t sub_1D526DAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPlaybackIntent();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D526DB90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D526DBEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D526DC1C()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_142_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  OUTLINED_FUNCTION_69(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  OUTLINED_FUNCTION_41_33(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_86(v4);
  *v5 = v6;
  v5[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_19_57();
  OUTLINED_FUNCTION_25_3();

  return sub_1D526AC98(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D526DD14()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_142_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  OUTLINED_FUNCTION_69(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  OUTLINED_FUNCTION_41_33(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_86(v4);
  *v5 = v6;
  v5[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_19_57();
  OUTLINED_FUNCTION_25_3();

  return sub_1D526A8D0(v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_116Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v1);
  v9 = *(v0 + v6);

  return swift_deallocObject();
}

uint64_t sub_1D526DEEC()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_142_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  OUTLINED_FUNCTION_69(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  OUTLINED_FUNCTION_41_33(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_86(v4);
  *v5 = v6;
  v5[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_19_57();
  OUTLINED_FUNCTION_25_3();

  return sub_1D526A508(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D526DFE4()
{
  OUTLINED_FUNCTION_69_0();
  v5 = OUTLINED_FUNCTION_186_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_23_48()
{
  v0 = _s5QueueC4KindOMa(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t OUTLINED_FUNCTION_33_42()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_42_30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1D560EC98();
}

uint64_t OUTLINED_FUNCTION_65_22()
{
  result = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[93];
  v8 = v0[90];
  v9 = v0[87];
  v10 = v0[86];
  v11 = v0[84];
  v12 = v0[81];
  return result;
}

void OUTLINED_FUNCTION_74_18(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_78_17()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_80_10()
{

  return sub_1D526D3A4(v0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
}

uint64_t OUTLINED_FUNCTION_97_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_105_12()
{
  v2 = v0[21];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_106_10()
{
  *(v2 + v0) = v1;
  v6 = *(v4 - 192);

  return __swift_getEnumTagSinglePayload(v6, 1, v3);
}

void OUTLINED_FUNCTION_108_10()
{
  v2 = *(v1 + 592);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = *(v2 + 72);
}

uint64_t OUTLINED_FUNCTION_110_10()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_116_12()
{

  return sub_1D5612878();
}

void OUTLINED_FUNCTION_121_8(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  *v3 = a2;
  v3[1] = a2;
  v3[2].n128_u64[0] = 0;
}

uint64_t OUTLINED_FUNCTION_131_5()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_134_7()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_135_9()
{

  return sub_1D56151B8();
}

uint64_t OUTLINED_FUNCTION_136_7()
{
  v2[14] = v0;
  v2[15] = v1;
  v4 = v2[9];
  v5 = v2[4];
  v2[2] = v0;

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_139_8()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
}

__n128 OUTLINED_FUNCTION_150_8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return *(v0 + 56);
}

void OUTLINED_FUNCTION_151_6()
{
  v0[14] = 0;
  v0[15] = 0;
  v1 = v0[9];
  v0[2] = 0;
}

uint64_t OUTLINED_FUNCTION_170_3()
{
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  return sub_1D5612858();
}

uint64_t *OUTLINED_FUNCTION_171_3()
{
  v3 = *(v1 - 296);
  *(v1 - 136) = v0;
  *(v1 - 128) = v3;

  return __swift_allocate_boxed_opaque_existential_0((v1 - 160));
}

void OUTLINED_FUNCTION_174_4()
{

  JUMPOUT(0x1DA6EAC70);
}

id OUTLINED_FUNCTION_175_3(float a1)
{
  *v2 = a1;

  return v1;
}

void OUTLINED_FUNCTION_177_4()
{
}

uint64_t OUTLINED_FUNCTION_180_2()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_181_4()
{

  return sub_1D4F0AE7C();
}

uint64_t sub_1D526E550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v32 = a3;
  v7 = sub_1D560D838();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D560F0C8();
  if (result)
  {
    v18 = 3;
LABEL_3:
    *a4 = v18;
    return result;
  }

  v31 = v8;
  v33 = a1;
  v19 = *(sub_1D4E5A1CC() + 48);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  if ((v42[0] & 0xFE) == 2)
  {
    v20 = v33;
  }

  else
  {
    v20 = v33;
    if (v42[0])
    {
      v18 = 4;
      goto LABEL_3;
    }
  }

  (*(v13 + 16))(v16, v20, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if (swift_dynamicCast())
  {
    sub_1D4F69344(&v39, v42);
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_1D560DB68();
    if (v35)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      if (swift_dynamicCast())
      {
        if (*(&v37 + 1))
        {
          sub_1D4F69344(&v36, &v39);
          v21 = *(&v40 + 1);
          v22 = v41;
          v23 = __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
          sub_1D4F67EE4(v23, v21, v22);
          v24 = v36;
          v25 = BYTE8(v36);
          if ((MusicLibrary.isRemovalRestricted.getter() & 1) == 0)
          {
            v26 = *(v32 + 8);
            sub_1D560EC98();
            sub_1D560D728();
            v28 = v27;
            (*(v31 + 8))(v12, v7);
            if (!v28)
            {
              if (!v25 || (v25 == 2 ? (v30 = (v24 & 0xFFFFFFFFFFFFFFFELL) == 2) : (v30 = 0), v30))
              {
                v29 = 5;
              }

              else
              {
                v29 = 2;
              }

              goto LABEL_16;
            }
          }

          v29 = 1;
LABEL_16:
          *a4 = v29;
          __swift_destroy_boxed_opaque_existential_1(&v39);
          return __swift_destroy_boxed_opaque_existential_1(v42);
        }
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
      }
    }

    else
    {
      sub_1D4E6C9CC(v34, &qword_1EC7EEC40, &unk_1D561C070);
      v36 = 0u;
      v37 = 0u;
      v38 = 0;
    }

    sub_1D4E6C9CC(&v36, &qword_1EC7EC548, &qword_1D5621090);
    result = __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    result = sub_1D4E6C9CC(&v39, &qword_1EC7EC548, &qword_1D5621090);
  }

  *a4 = 0;
  return result;
}

uint64_t MusicLibrary.RemoveDownloadAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D526EA04()
{
  result = qword_1EC7F2C80;
  if (!qword_1EC7F2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2C80);
  }

  return result;
}

_BYTE *_s20RemoveDownloadActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s20RemoveDownloadActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void sub_1D526EC2C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_116_9();
  v1 = type metadata accessor for Playlist.Folder();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_206_2();
  if (v0)
  {
    OUTLINED_FUNCTION_92_14();
    sub_1D4F03D34();
    OUTLINED_FUNCTION_65_23();
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_93_14();
      if (v5)
      {
        OUTLINED_FUNCTION_150_9();
        sub_1D4F03D34();
      }

      v6 = sub_1D5286090(&qword_1EC7EA530, type metadata accessor for Playlist.Folder);
      OUTLINED_FUNCTION_181_2(v6);
      OUTLINED_FUNCTION_123_4();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_188_4();
      OUTLINED_FUNCTION_221_1();
      OUTLINED_FUNCTION_291_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D526EE28()
{
  OUTLINED_FUNCTION_47();
  v25 = v0;
  v26 = v1;
  v24 = v2;
  v4 = v3;
  v6 = v5(0);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(v4 + 16);
  if (v14)
  {
    OUTLINED_FUNCTION_109_14();
    sub_1D4F047CC();
    v15 = v29;
    v18 = *(v8 + 16);
    v17 = v8 + 16;
    v16 = v18;
    v19 = v4 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v23 = *(v17 + 56);
    do
    {
      v16(v13, v19, v6);
      v29 = v15;
      v20 = *(v15 + 16);
      if (v20 >= *(v15 + 24) >> 1)
      {
        sub_1D4F047CC();
      }

      v28 = v6;
      v21 = sub_1D5286090(v24, v25);
      v22 = OUTLINED_FUNCTION_181_2(v21);
      v16(v22, v13, v6);
      v15 = v29;
      *(v29 + 16) = v20 + 1;
      sub_1D4E48324(&v27, v15 + 40 * v20 + 32);
      (*(v17 - 8))(v13, v6);
      v19 += v23;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D526F3EC()
{
  OUTLINED_FUNCTION_47();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    OUTLINED_FUNCTION_109_14();
    sub_1D4F03D74();
    v3 = v2 + 32;
    v4 = v18;
    do
    {
      sub_1D4E62938(v3, &v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      swift_dynamicCast();
      v18 = v4;
      v5 = *(v4 + 16);
      if (v5 >= *(v4 + 24) >> 1)
      {
        sub_1D4F03D74();
      }

      v6 = v17[3];
      v7 = v17[4];
      v8 = OUTLINED_FUNCTION_204_3();
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
      v11 = *(*(v6 - 8) + 64);
      MEMORY[0x1EEE9AC00](v10);
      OUTLINED_FUNCTION_5();
      v14 = v13 - v12;
      (*(v15 + 16))(v13 - v12);
      sub_1D5285F50(v5, v14, &v18, v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v4 = v18;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D526F5DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v12 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_108_11();
    sub_1D4F047CC();
    v4 = v12;
    do
    {
      v12 = v4;
      v7 = *(v4 + 16);
      if (v7 >= *(v4 + 24) >> 1)
      {
        OUTLINED_FUNCTION_270_0();
        v4 = v12;
      }

      v10 = a2;
      v11 = a3();
      *(v4 + 16) = v7 + 1;
      sub_1D4E48324(&v9, v4 + 40 * v7 + 32);
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1D526F70C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v23 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_108_11();
    sub_1D4F047CC();
    v4 = v23;
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      OUTLINED_FUNCTION_284_0();
      if (v10)
      {
        OUTLINED_FUNCTION_270_0();
        v4 = v23;
      }

      v11 = a3();
      OUTLINED_FUNCTION_254_0(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, a2, v22);
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1D526F7E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v23 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_108_11();
    sub_1D4F047CC();
    v4 = v23;
    v8 = (a1 + 32);
    do
    {
      v9 = *v8;
      OUTLINED_FUNCTION_284_0();
      if (v10)
      {
        OUTLINED_FUNCTION_270_0();
        v4 = v23;
      }

      v11 = a3();
      OUTLINED_FUNCTION_254_0(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, a2, v22);
      ++v8;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_1D526F8A8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_116_9();
  v1 = type metadata accessor for TVSeason();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_206_2();
  if (v0)
  {
    OUTLINED_FUNCTION_92_14();
    sub_1D4F03D74();
    OUTLINED_FUNCTION_65_23();
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_93_14();
      if (v5)
      {
        OUTLINED_FUNCTION_150_9();
        sub_1D4F03D74();
      }

      v6 = sub_1D5286090(&unk_1EDD546A0, type metadata accessor for TVSeason);
      OUTLINED_FUNCTION_181_2(v6);
      OUTLINED_FUNCTION_123_4();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_188_4();
      OUTLINED_FUNCTION_221_1();
      OUTLINED_FUNCTION_291_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D526FA14()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_116_9();
  v1 = type metadata accessor for TVEpisode();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_206_2();
  if (v0)
  {
    OUTLINED_FUNCTION_92_14();
    sub_1D4F03D74();
    OUTLINED_FUNCTION_65_23();
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_93_14();
      if (v5)
      {
        OUTLINED_FUNCTION_150_9();
        sub_1D4F03D74();
      }

      v6 = sub_1D5286090(&qword_1EDD54508, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_181_2(v6);
      OUTLINED_FUNCTION_123_4();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_188_4();
      OUTLINED_FUNCTION_221_1();
      OUTLINED_FUNCTION_291_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D526FBC0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_116_9();
  v1 = type metadata accessor for MusicMovie();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_206_2();
  if (v0)
  {
    OUTLINED_FUNCTION_92_14();
    sub_1D4F03D74();
    OUTLINED_FUNCTION_65_23();
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_93_14();
      if (v5)
      {
        OUTLINED_FUNCTION_150_9();
        sub_1D4F03D74();
      }

      v6 = sub_1D5286090(&qword_1EDD59308, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_181_2(v6);
      OUTLINED_FUNCTION_123_4();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_188_4();
      OUTLINED_FUNCTION_221_1();
      OUTLINED_FUNCTION_291_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D526FD4C()
{
  OUTLINED_FUNCTION_47();
  v23 = v3;
  v5 = v4;
  v7 = v6(0);
  OUTLINED_FUNCTION_4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_150_1();
  v13 = *(v5 + 16);
  if (v13)
  {
    OUTLINED_FUNCTION_109_14();
    sub_1D4F03D74();
    v16 = *(v9 + 16);
    v14 = v9 + 16;
    v15 = v16;
    v17 = v5 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v22 = *(v14 + 56);
    do
    {
      v18 = OUTLINED_FUNCTION_91_0();
      v15(v18);
      OUTLINED_FUNCTION_93_14();
      if (v19)
      {
        OUTLINED_FUNCTION_150_9();
        sub_1D4F03D74();
      }

      v25 = v7;
      v26 = v23;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
      (v15)(boxed_opaque_existential_0, v0, v7);
      v21 = v27;
      *(v27 + 16) = v1;
      sub_1D4E48324(&v24, v21 + 40 * v2 + 32);
      (*(v14 - 8))(v0, v7);
      v17 += v22;
      --v13;
    }

    while (v13);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D526FECC(uint64_t a1)
{
  v2 = sub_1D526FF88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D526FF08(uint64_t a1)
{
  v2 = sub_1D526FF88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D526FF88()
{
  result = qword_1EC7F2C90;
  if (!qword_1EC7F2C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2C90);
  }

  return result;
}

uint64_t sub_1D527001C(uint64_t a1)
{
  v2 = sub_1D52700D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5270058(uint64_t a1)
{
  v2 = sub_1D52700D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D52700D8()
{
  result = qword_1EC7F2CA0;
  if (!qword_1EC7F2CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2CA0);
  }

  return result;
}

uint64_t sub_1D5270144(uint64_t a1)
{
  v2 = sub_1D5270200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5270180(uint64_t a1)
{
  v2 = sub_1D5270200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D5270200()
{
  result = qword_1EC7F2CB0;
  if (!qword_1EC7F2CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2CB0);
  }

  return result;
}

uint64_t sub_1D527026C(uint64_t a1)
{
  v2 = sub_1D5270428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52702A8(uint64_t a1)
{
  v2 = sub_1D5270428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D5270328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_4(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  sub_1D56163D8();
  (*(v30 + 8))(v35, v28);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D5270428()
{
  result = qword_1EC7F2CC0;
  if (!qword_1EC7F2CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2CC0);
  }

  return result;
}

void CloudMusicShareableItem.id.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v26 = type metadata accessor for CloudUploadedVideo(0);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v156 = v30;
  v31 = OUTLINED_FUNCTION_70_0();
  v32 = type metadata accessor for CloudTVShow(v31);
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v155 = v36;
  v37 = OUTLINED_FUNCTION_70_0();
  v38 = type metadata accessor for CloudTVEpisode(v37);
  v39 = OUTLINED_FUNCTION_22(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v154 = v42;
  OUTLINED_FUNCTION_70_0();
  v43 = sub_1D560FD68();
  v44 = OUTLINED_FUNCTION_4(v43);
  v152 = v45;
  v153 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v151 = v48;
  OUTLINED_FUNCTION_70_0();
  v49 = sub_1D5614A18();
  v50 = OUTLINED_FUNCTION_4(v49);
  v149 = v51;
  v150 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  v148 = v54;
  OUTLINED_FUNCTION_70_0();
  v55 = sub_1D5611998();
  v56 = OUTLINED_FUNCTION_4(v55);
  v146 = v57;
  v147 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  v145 = v60;
  OUTLINED_FUNCTION_70_0();
  v61 = sub_1D5610C48();
  v62 = OUTLINED_FUNCTION_4(v61);
  v143 = v63;
  v144 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  v142 = v66;
  OUTLINED_FUNCTION_70_0();
  v67 = sub_1D5610908();
  v68 = OUTLINED_FUNCTION_4(v67);
  v140 = v69;
  v141 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  v139 = v72;
  OUTLINED_FUNCTION_70_0();
  v73 = sub_1D5610588();
  v74 = OUTLINED_FUNCTION_4(v73);
  v137 = v75;
  v138 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v78);
  v79 = sub_1D560D068();
  v80 = OUTLINED_FUNCTION_12_0(v79, &a17);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_5_0();
  v84 = OUTLINED_FUNCTION_48(v83);
  v85 = type metadata accessor for CloudMusicMovie(v84);
  v86 = OUTLINED_FUNCTION_22(v85);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v89);
  v90 = sub_1D560F478();
  v91 = OUTLINED_FUNCTION_12_0(v90, &a13);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  v94 = sub_1D560FB08();
  v95 = OUTLINED_FUNCTION_4(v94);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v98 = sub_1D560F7A8();
  v99 = OUTLINED_FUNCTION_4(v98);
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v102 = sub_1D560F308();
  v103 = OUTLINED_FUNCTION_4(v102);
  v105 = v104;
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_13_0();
  v108 = type metadata accessor for CloudMusicShareableItem();
  v109 = OUTLINED_FUNCTION_14(v108);
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_5();
  v114 = v113 - v112;
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  OUTLINED_FUNCTION_143();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_172(&a10);
      (*(v129 + 32))(v22, v114, v98);
      sub_1D560F6F8();
      (*(v108 + 8))(v22, v98);
      break;
    case 2u:
      OUTLINED_FUNCTION_172(&a11);
      (*(v125 + 32))(v23, v114, v94);
      sub_1D560FA38();
      OUTLINED_FUNCTION_297_0();
      (*(v108 + 8))(v23, v94);
      break;
    case 3u:
      OUTLINED_FUNCTION_30_19(&a12);
      OUTLINED_FUNCTION_56_1();
      v126();
      sub_1D560F3C8();
      OUTLINED_FUNCTION_297_0();
      (*(v102 + 8))(v21, v108);
      break;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_165_4(&a14);
      sub_1D5285360();
      OUTLINED_FUNCTION_299_0();
      v120 = type metadata accessor for CloudMusicMovie;
      goto LABEL_15;
    case 5u:
      OUTLINED_FUNCTION_30_19(&a16);
      OUTLINED_FUNCTION_11_21();
      OUTLINED_FUNCTION_56_1();
      v130();
      sub_1D560CFB8();
      goto LABEL_19;
    case 6u:
      v102 = v137;
      v108 = v138;
      OUTLINED_FUNCTION_33_1();
      v131 = OUTLINED_FUNCTION_11_21();
      v132(v131, v114, v138);
      sub_1D56104A8();
      goto LABEL_19;
    case 7u:
      v20 = v139;
      v102 = v140;
      v127 = OUTLINED_FUNCTION_81_20();
      v108 = v141;
      v128(v127);
      sub_1D5610868();
      goto LABEL_19;
    case 8u:
      v20 = v142;
      v102 = v143;
      v135 = OUTLINED_FUNCTION_81_20();
      v108 = v144;
      v136(v135);
      sub_1D5610B98();
      goto LABEL_19;
    case 9u:
      v20 = v145;
      v102 = v146;
      v123 = OUTLINED_FUNCTION_81_20();
      v108 = v147;
      v124(v123);
      sub_1D5611938();
      goto LABEL_19;
    case 0xAu:
      v20 = v148;
      v102 = v149;
      v133 = OUTLINED_FUNCTION_81_20();
      v108 = v150;
      v134(v133);
      sub_1D5614968();
      goto LABEL_19;
    case 0xBu:
      v20 = v151;
      v102 = v152;
      v121 = OUTLINED_FUNCTION_81_20();
      v108 = v153;
      v122(v121);
      sub_1D560FC88();
LABEL_19:
      OUTLINED_FUNCTION_297_0();
      (*(v102 + 8))(v20, v108);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v108 = v154;
      sub_1D5285360();
      OUTLINED_FUNCTION_299_0();
      v120 = type metadata accessor for CloudTVEpisode;
      goto LABEL_15;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v108 = v155;
      sub_1D5285360();
      OUTLINED_FUNCTION_299_0();
      v120 = type metadata accessor for CloudTVShow;
      goto LABEL_15;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v108 = v156;
      sub_1D5285360();
      OUTLINED_FUNCTION_299_0();
      v120 = type metadata accessor for CloudUploadedVideo;
LABEL_15:
      sub_1D5285EA4(v108, v120);
      break;
    default:
      v115 = OUTLINED_FUNCTION_135_2(v105);
      v116(v115, v114, v102);
      sub_1D560F248();
      OUTLINED_FUNCTION_297_0();
      v117 = *(v105 + 8);
      v118 = OUTLINED_FUNCTION_222();
      v119(v118);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t type metadata accessor for CloudMusicShareableItem()
{
  result = qword_1EC7F2FF0;
  if (!qword_1EC7F2FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CloudMusicShareableItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v224 = v24;
  v225 = v23;
  v25 = type metadata accessor for CloudUploadedVideo(0);
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v30 = OUTLINED_FUNCTION_48(v29);
  v31 = type metadata accessor for CloudTVShow(v30);
  v32 = OUTLINED_FUNCTION_22(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v36 = OUTLINED_FUNCTION_48(v35);
  v37 = type metadata accessor for CloudTVEpisode(v36);
  v38 = OUTLINED_FUNCTION_22(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v41);
  v42 = sub_1D560FD68();
  v43 = OUTLINED_FUNCTION_4(v42);
  v213 = v44;
  v214 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v47);
  v48 = sub_1D5614A18();
  v49 = OUTLINED_FUNCTION_4(v48);
  v211 = v50;
  v212 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v53);
  v54 = sub_1D5611998();
  v55 = OUTLINED_FUNCTION_4(v54);
  v209 = v56;
  v210 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v59);
  v60 = sub_1D5610C48();
  v61 = OUTLINED_FUNCTION_4(v60);
  v207 = v62;
  v208 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v65);
  v66 = sub_1D5610908();
  v67 = OUTLINED_FUNCTION_4(v66);
  v205 = v68;
  v206 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v71);
  v72 = sub_1D5610588();
  v73 = OUTLINED_FUNCTION_12_0(v72, &a18);
  v204[26] = v74;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v77);
  v78 = sub_1D560D068();
  v79 = OUTLINED_FUNCTION_12_0(v78, &a16);
  v204[24] = v80;
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_5_0();
  v84 = OUTLINED_FUNCTION_48(v83);
  v85 = type metadata accessor for CloudMusicMovie(v84);
  v86 = OUTLINED_FUNCTION_22(v85);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v89);
  v90 = sub_1D560F478();
  v91 = OUTLINED_FUNCTION_12_0(v90, &a14);
  v204[22] = v92;
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v95);
  v96 = sub_1D560FB08();
  v97 = OUTLINED_FUNCTION_12_0(v96, &a12);
  v204[20] = v98;
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v101);
  v102 = sub_1D560F7A8();
  v103 = OUTLINED_FUNCTION_12_0(v102, &a10);
  v204[18] = v104;
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v107);
  v108 = sub_1D560F308();
  v109 = OUTLINED_FUNCTION_12_0(v108, &v226);
  v204[16] = v110;
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v113);
  v114 = type metadata accessor for CloudMusicShareableItem();
  v115 = OUTLINED_FUNCTION_14(v114);
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_13();
  v223 = v118;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_135();
  v222 = v120;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_135();
  v221 = v122;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_135();
  v220 = v124;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_135();
  v219 = v126;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_135();
  v218 = v128;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_135();
  v217 = v130;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_135();
  v216 = v132;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_135();
  v215 = v134;
  OUTLINED_FUNCTION_23();
  v136 = MEMORY[0x1EEE9AC00](v135);
  v138 = v204 - v137;
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_205_3();
  v140 = MEMORY[0x1EEE9AC00](v139);
  v142 = v204 - v141;
  v143 = MEMORY[0x1EEE9AC00](v140);
  v145 = v204 - v144;
  v146 = MEMORY[0x1EEE9AC00](v143);
  v148 = v204 - v147;
  MEMORY[0x1EEE9AC00](v146);
  v150 = v204 - v149;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CC8, &unk_1D564AD50);
  OUTLINED_FUNCTION_22(v151);
  v153 = *(v152 + 64);
  OUTLINED_FUNCTION_11();
  v155 = MEMORY[0x1EEE9AC00](v154);
  v157 = v204 - v156;
  v158 = *(v155 + 56);
  sub_1D5285E4C();
  v225 = v158;
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_117();
      OUTLINED_FUNCTION_258();
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 1)
      {
        OUTLINED_FUNCTION_30_19(&a9);
        OUTLINED_FUNCTION_94_7();
        v180();
        sub_1D560F6E8();
        v181 = *(v142 + 1);
        v182 = OUTLINED_FUNCTION_116();
        v181(v182);
        (v181)(v148, v145);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_136(&a9);
      v160 = v148;
      v161 = &a10;
      goto LABEL_49;
    case 2u:
      OUTLINED_FUNCTION_1_117();
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 2)
      {
        OUTLINED_FUNCTION_35_0(&a11);
        v172 = OUTLINED_FUNCTION_78();
        v173(v172);
        OUTLINED_FUNCTION_68_4();
        sub_1D560FA28();
        v174 = *(v138 + 1);
        v175 = OUTLINED_FUNCTION_93();
        v174(v175);
        v176 = OUTLINED_FUNCTION_222();
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_136(&a11);
      v160 = v145;
      v161 = &a12;
      goto LABEL_49;
    case 3u:
      OUTLINED_FUNCTION_1_117();
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() != 3)
      {
        OUTLINED_FUNCTION_136(&a13);
        v160 = v142;
        v161 = &a14;
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_35_0(&a13);
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_94_7();
      v177();
      sub_1D560F3B8();
      v174 = *(v138 + 1);
      (v174)(v150, v145);
      v176 = OUTLINED_FUNCTION_63_1();
LABEL_18:
      v174(v176);
      goto LABEL_58;
    case 4u:
      OUTLINED_FUNCTION_1_117();
      OUTLINED_FUNCTION_211_2();
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 4)
      {
        OUTLINED_FUNCTION_5_90();
        OUTLINED_FUNCTION_117_0(&v214);
        sub_1D5285360();
        static CloudMusicMovie.== infix(_:_:)(v20, v145);
        v167 = type metadata accessor for CloudMusicMovie;
        sub_1D5285EA4(v145, type metadata accessor for CloudMusicMovie);
        v168 = v20;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_7_89();
      v199 = v20;
      goto LABEL_47;
    case 5u:
      OUTLINED_FUNCTION_1_117();
      OUTLINED_FUNCTION_215();
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 5)
      {
        OUTLINED_FUNCTION_30_19(&a15);
        OUTLINED_FUNCTION_78();
        OUTLINED_FUNCTION_94_7();
        v183();
        OUTLINED_FUNCTION_27_1();
        sub_1D560CFA8();
        v184 = *(v142 + 1);
        v184(v150, v145);
        v184(v138, v145);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_136(&a15);
      v160 = v138;
      v161 = &a16;
      goto LABEL_49;
    case 6u:
      OUTLINED_FUNCTION_1_117();
      v185 = v215;
      sub_1D5285E4C();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        OUTLINED_FUNCTION_35_0(&a17);
        v186 = OUTLINED_FUNCTION_78();
        v187 = v204[27];
        v188(v186);
        sub_1D5610498();
        v189 = *(v138 + 1);
        v190 = OUTLINED_FUNCTION_93();
        v189(v190);
        (v189)(v185, v187);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_136(&a17);
      v160 = v185;
      v161 = &a18;
      goto LABEL_49;
    case 7u:
      OUTLINED_FUNCTION_1_117();
      v150 = v216;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 7)
      {
        v142 = v205;
        v145 = v206;
        OUTLINED_FUNCTION_80_11();
        v178 = OUTLINED_FUNCTION_148_9();
        v179(v178);
        OUTLINED_FUNCTION_75_2();
        sub_1D5610858();
        goto LABEL_56;
      }

      v197 = v205;
      v196 = v206;
      goto LABEL_52;
    case 8u:
      OUTLINED_FUNCTION_1_117();
      v150 = v217;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 8)
      {
        v142 = v207;
        v145 = v208;
        OUTLINED_FUNCTION_80_11();
        v193 = OUTLINED_FUNCTION_148_9();
        v194(v193);
        OUTLINED_FUNCTION_75_2();
        sub_1D5610B88();
        goto LABEL_56;
      }

      v197 = v207;
      v196 = v208;
      goto LABEL_52;
    case 9u:
      OUTLINED_FUNCTION_1_117();
      v150 = v218;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 9)
      {
        v142 = v209;
        v145 = v210;
        OUTLINED_FUNCTION_80_11();
        v170 = OUTLINED_FUNCTION_148_9();
        v171(v170);
        OUTLINED_FUNCTION_75_2();
        sub_1D5611918();
        goto LABEL_56;
      }

      v197 = v209;
      v196 = v210;
      goto LABEL_52;
    case 0xAu:
      OUTLINED_FUNCTION_1_117();
      v150 = v219;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 10)
      {
        v142 = v211;
        v145 = v212;
        OUTLINED_FUNCTION_80_11();
        v191 = OUTLINED_FUNCTION_148_9();
        v192(v191);
        OUTLINED_FUNCTION_75_2();
        sub_1D5614958();
        goto LABEL_56;
      }

      v197 = v211;
      v196 = v212;
      goto LABEL_52;
    case 0xBu:
      OUTLINED_FUNCTION_1_117();
      v150 = v220;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 11)
      {
        v142 = v213;
        v145 = v214;
        OUTLINED_FUNCTION_80_11();
        v165 = OUTLINED_FUNCTION_148_9();
        v166(v165);
        OUTLINED_FUNCTION_75_2();
        sub_1D560FC78();
        goto LABEL_56;
      }

      v197 = v213;
      v196 = v214;
LABEL_52:
      v159 = *(v197 + 1);
      v160 = v150;
      goto LABEL_53;
    case 0xCu:
      OUTLINED_FUNCTION_1_117();
      v162 = v221;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 12)
      {
        OUTLINED_FUNCTION_4_88();
        OUTLINED_FUNCTION_117_0(&v222);
        sub_1D5285360();
        v169 = OUTLINED_FUNCTION_63_1();
        static CloudTVEpisode.== infix(_:_:)(v169);
        v164 = type metadata accessor for CloudTVEpisode;
        goto LABEL_27;
      }

      v195 = type metadata accessor for CloudTVEpisode;
      goto LABEL_46;
    case 0xDu:
      OUTLINED_FUNCTION_1_117();
      v162 = v222;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 13)
      {
        OUTLINED_FUNCTION_3_117();
        OUTLINED_FUNCTION_117_0(&v223);
        sub_1D5285360();
        OUTLINED_FUNCTION_63_1();
        static CloudTVShow.== infix(_:_:)();
        v164 = type metadata accessor for CloudTVShow;
        goto LABEL_27;
      }

      v195 = type metadata accessor for CloudTVShow;
      goto LABEL_46;
    case 0xEu:
      OUTLINED_FUNCTION_1_117();
      v162 = v223;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 14)
      {
        OUTLINED_FUNCTION_6_86();
        OUTLINED_FUNCTION_117_0(&v224);
        sub_1D5285360();
        v163 = OUTLINED_FUNCTION_63_1();
        static CloudUploadedVideo.== infix(_:_:)(v163);
        v164 = type metadata accessor for CloudUploadedVideo;
LABEL_27:
        v167 = v164;
        sub_1D5285EA4(v145, v164);
        v168 = v162;
LABEL_28:
        sub_1D5285EA4(v168, v167);
        goto LABEL_58;
      }

      v195 = type metadata accessor for CloudUploadedVideo;
LABEL_46:
      v198 = v195;
      v199 = v162;
LABEL_47:
      sub_1D5285EA4(v199, v198);
      goto LABEL_54;
    default:
      OUTLINED_FUNCTION_1_117();
      OUTLINED_FUNCTION_132_1();
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6())
      {
        OUTLINED_FUNCTION_136(&v225);
        v160 = v150;
        v161 = &v226;
LABEL_49:
        v196 = *(v161 - 32);
LABEL_53:
        v159(v160, v196);
LABEL_54:
        sub_1D4E50004(v157, &qword_1EC7F2CC8, &unk_1D564AD50);
      }

      else
      {
        OUTLINED_FUNCTION_30_19(&v225);
        OUTLINED_FUNCTION_94_7();
        v200();
        OUTLINED_FUNCTION_75_2();
        sub_1D560F238();
LABEL_56:
        v201 = *(v142 + 1);
        v202 = OUTLINED_FUNCTION_116();
        v201(v202);
        (v201)(v150, v145);
LABEL_58:
        OUTLINED_FUNCTION_0_151();
        sub_1D5285EA4(v157, v203);
      }

      OUTLINED_FUNCTION_46();
      return;
  }
}

void CloudMusicShareableItem.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v204 = v25;
  v202 = type metadata accessor for CloudUploadedVideo(0);
  v26 = OUTLINED_FUNCTION_14(v202);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v203 = v29;
  v30 = OUTLINED_FUNCTION_70_0();
  v31 = type metadata accessor for CloudTVShow(v30);
  v32 = OUTLINED_FUNCTION_22(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v199 = v35;
  v36 = OUTLINED_FUNCTION_70_0();
  v200 = type metadata accessor for CloudTVEpisode(v36);
  v37 = OUTLINED_FUNCTION_14(v200);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  v201 = v40;
  OUTLINED_FUNCTION_70_0();
  v41 = sub_1D560FD68();
  v42 = OUTLINED_FUNCTION_4(v41);
  v197 = v43;
  v198 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  v196 = v46;
  OUTLINED_FUNCTION_70_0();
  v47 = sub_1D5614A18();
  v48 = OUTLINED_FUNCTION_4(v47);
  v194 = v49;
  v195 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v193 = v52;
  OUTLINED_FUNCTION_70_0();
  v53 = sub_1D5611998();
  v54 = OUTLINED_FUNCTION_4(v53);
  v191 = v55;
  v192 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  v190 = v58;
  OUTLINED_FUNCTION_70_0();
  v59 = sub_1D5610C48();
  v60 = OUTLINED_FUNCTION_4(v59);
  v188 = v61;
  v189 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_0();
  v187 = v64;
  OUTLINED_FUNCTION_70_0();
  v65 = sub_1D5610908();
  v66 = OUTLINED_FUNCTION_4(v65);
  v185 = v67;
  v186 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v70);
  v71 = sub_1D5610588();
  v72 = OUTLINED_FUNCTION_12_0(v71, &a17);
  v182 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v76);
  v77 = sub_1D560D068();
  v78 = OUTLINED_FUNCTION_12_0(v77, &a14);
  v179 = v79;
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  v83 = OUTLINED_FUNCTION_48(v82);
  v84 = type metadata accessor for CloudMusicMovie(v83);
  v85 = OUTLINED_FUNCTION_22(v84);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v88);
  v89 = sub_1D560F478();
  v90 = OUTLINED_FUNCTION_12_0(v89, &a11);
  v176 = v91;
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v94 = sub_1D560FB08();
  v95 = OUTLINED_FUNCTION_4(v94);
  v175 = v96;
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v99 = sub_1D560F7A8();
  v100 = OUTLINED_FUNCTION_4(v99);
  v174 = v101;
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v104 = sub_1D560F308();
  v105 = OUTLINED_FUNCTION_4(v104);
  v107 = v106;
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  v110 = type metadata accessor for CloudMusicShareableItem();
  v111 = OUTLINED_FUNCTION_14(v110);
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_5();
  v116 = v115 - v114;
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  OUTLINED_FUNCTION_222();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_172(&v205);
      (*(v161 + 32))(v22, v116, v99);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_175_4();
      sub_1D5286090(v162, v163);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v104 + 8))(v22, v99);
      break;
    case 2u:
      OUTLINED_FUNCTION_172(&a9);
      (*(v153 + 32))(v20, v116, v94);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_178_3();
      sub_1D5286090(v154, v155);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v104 + 8))(v20, v94);
      break;
    case 3u:
      OUTLINED_FUNCTION_30_19(&a10);
      OUTLINED_FUNCTION_56_1();
      v156();
      MEMORY[0x1DA6EC0D0](3);
      OUTLINED_FUNCTION_177_5();
      sub_1D5286090(v157, v158);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v110 + 8))(v21, v104);
      break;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_165_4(&v204);
      sub_1D5285360();
      MEMORY[0x1DA6EC0D0](4);
      CloudMusicMovie.hash(into:)();
      v136 = type metadata accessor for CloudMusicMovie;
      goto LABEL_19;
    case 5u:
      OUTLINED_FUNCTION_30_19(&a13);
      v131 = v178;
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_56_1();
      v164();
      MEMORY[0x1DA6EC0D0](5);
      OUTLINED_FUNCTION_174_5();
      goto LABEL_23;
    case 6u:
      OUTLINED_FUNCTION_30_19(&a16);
      v131 = v181;
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_56_1();
      v167();
      MEMORY[0x1DA6EC0D0](6);
      OUTLINED_FUNCTION_173_2();
      goto LABEL_23;
    case 7u:
      v110 = v185;
      v104 = v186;
      OUTLINED_FUNCTION_33_1();
      v131 = v184;
      v159 = OUTLINED_FUNCTION_116();
      v160(v159);
      MEMORY[0x1DA6EC0D0](7);
      OUTLINED_FUNCTION_176_3();
      goto LABEL_23;
    case 8u:
      v131 = v187;
      v110 = v188;
      OUTLINED_FUNCTION_33_1();
      v170 = OUTLINED_FUNCTION_116();
      v104 = v189;
      v171(v170);
      MEMORY[0x1DA6EC0D0](8);
      OUTLINED_FUNCTION_171_4();
      goto LABEL_23;
    case 9u:
      v131 = v190;
      v110 = v191;
      OUTLINED_FUNCTION_33_1();
      v151 = OUTLINED_FUNCTION_116();
      v104 = v192;
      v152(v151);
      MEMORY[0x1DA6EC0D0](9);
      OUTLINED_FUNCTION_179_4();
      goto LABEL_23;
    case 0xAu:
      v131 = v193;
      v110 = v194;
      OUTLINED_FUNCTION_33_1();
      v168 = OUTLINED_FUNCTION_116();
      v104 = v195;
      v169(v168);
      MEMORY[0x1DA6EC0D0](10);
      OUTLINED_FUNCTION_172_4();
      goto LABEL_23;
    case 0xBu:
      v131 = v196;
      v110 = v197;
      OUTLINED_FUNCTION_33_1();
      v132 = OUTLINED_FUNCTION_116();
      v104 = v198;
      v133(v132);
      MEMORY[0x1DA6EC0D0](11);
      OUTLINED_FUNCTION_180_3();
LABEL_23:
      sub_1D5286090(v134, v135);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v110 + 8))(v131, v104);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v124 = v201;
      sub_1D5285360();
      MEMORY[0x1DA6EC0D0](12);
      v137 = *v201;
      v138 = v201[1];
      sub_1D5614E28();
      v139 = v200[5];
      v140 = OUTLINED_FUNCTION_262_0();
      CloudTVEpisode.Attributes.hash(into:)(v140, v141, v142, v143, v144, v145, v146, v147, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
      v148 = v200[6];
      OUTLINED_FUNCTION_262_0();
      sub_1D4F872A4();
      v149 = v200[7];
      OUTLINED_FUNCTION_262_0();
      sub_1D4F86E74();
      v150 = *(v201 + v200[8]);
      if (v150 == 1 || (OUTLINED_FUNCTION_42_29(), !v150))
      {
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_42_29();
        OUTLINED_FUNCTION_98();
        sub_1D4F068B4();
      }

      v172 = type metadata accessor for CloudTVEpisode;
      goto LABEL_29;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v104 = v199;
      sub_1D5285360();
      MEMORY[0x1DA6EC0D0](13);
      CloudTVShow.hash(into:)();
      v136 = type metadata accessor for CloudTVShow;
LABEL_19:
      v165 = v136;
      v166 = v104;
      goto LABEL_30;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v124 = v203;
      sub_1D5285360();
      MEMORY[0x1DA6EC0D0](14);
      v125 = *v203;
      v126 = v203[1];
      sub_1D5614E28();
      v127 = v202[5];
      OUTLINED_FUNCTION_262_0();
      CloudUploadedVideo.Attributes.hash(into:)();
      v128 = v202[6];
      OUTLINED_FUNCTION_262_0();
      sub_1D4F86198();
      v129 = *(v203 + v202[7]);
      sub_1D56162F8();
      v130 = *(v203 + v202[8]);
      if (v130 == 1 || (OUTLINED_FUNCTION_42_29(), !v130))
      {
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_42_29();
        OUTLINED_FUNCTION_98();
        sub_1D4F068B4();
      }

      v172 = type metadata accessor for CloudUploadedVideo;
LABEL_29:
      v165 = v172;
      v166 = v124;
LABEL_30:
      sub_1D5285EA4(v166, v165);
      break;
    default:
      OUTLINED_FUNCTION_113_9();
      v117 = OUTLINED_FUNCTION_116();
      v118(v117);
      MEMORY[0x1DA6EC0D0](0);
      OUTLINED_FUNCTION_181_5();
      sub_1D5286090(v119, v120);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      v121 = *(v107 + 8);
      v122 = OUTLINED_FUNCTION_134_0();
      v123(v122);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t CloudMusicShareableItem.hashValue.getter()
{
  sub_1D56162D8();
  CloudMusicShareableItem.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

uint64_t sub_1D5272900()
{
  sub_1D56162D8();
  CloudMusicShareableItem.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

void CloudMusicShareableItem.decodeRawAttributes(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v23;
  a20 = v24;
  a10 = v21;
  v256 = v20;
  v257 = v25;
  v255 = type metadata accessor for CloudUploadedVideo.Attributes(0);
  v26 = OUTLINED_FUNCTION_14(v255);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v253 = v29;
  v30 = OUTLINED_FUNCTION_70_0();
  v252 = type metadata accessor for CloudUploadedVideo(v30);
  v31 = OUTLINED_FUNCTION_14(v252);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v254 = v34;
  v35 = OUTLINED_FUNCTION_70_0();
  v251 = type metadata accessor for CloudTVShow.Attributes(v35);
  v36 = OUTLINED_FUNCTION_14(v251);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v249 = v39;
  v40 = OUTLINED_FUNCTION_70_0();
  v248 = type metadata accessor for CloudTVShow(v40);
  v41 = OUTLINED_FUNCTION_14(v248);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  v250 = v44;
  v45 = OUTLINED_FUNCTION_70_0();
  v247 = type metadata accessor for CloudTVEpisode.Attributes(v45);
  v46 = OUTLINED_FUNCTION_14(v247);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  v245 = v49;
  v50 = OUTLINED_FUNCTION_70_0();
  v244 = type metadata accessor for CloudTVEpisode(v50);
  v51 = OUTLINED_FUNCTION_14(v244);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  v246 = v54;
  OUTLINED_FUNCTION_70_0();
  v242 = sub_1D560FBB8();
  v55 = OUTLINED_FUNCTION_14(v242);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v58);
  v243 = sub_1D560FD68();
  v59 = OUTLINED_FUNCTION_4(v243);
  v241[1] = v60;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v63);
  v64 = sub_1D56148C8();
  v65 = OUTLINED_FUNCTION_20(v64, &a14);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v68);
  v69 = sub_1D5614A18();
  v70 = OUTLINED_FUNCTION_12_0(v69, &a15);
  v237 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v74);
  v75 = sub_1D5611898();
  v76 = OUTLINED_FUNCTION_20(v75, &a9);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v79);
  v80 = sub_1D5611998();
  v81 = OUTLINED_FUNCTION_12_0(v80, &a10);
  v233 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v85);
  v86 = sub_1D5610B08();
  v87 = OUTLINED_FUNCTION_20(v86, &v259);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v90);
  v91 = sub_1D5610C48();
  v92 = OUTLINED_FUNCTION_12_0(v91, &v260);
  v229 = v93;
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v96);
  v97 = sub_1D56107E8();
  v98 = OUTLINED_FUNCTION_20(v97, &v254);
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v101);
  v102 = sub_1D5610908();
  v103 = OUTLINED_FUNCTION_12_0(v102, &v255);
  v226 = v104;
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v107);
  v108 = sub_1D56100B8();
  v109 = OUTLINED_FUNCTION_20(v108, &v249);
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v112);
  v113 = sub_1D5610588();
  v114 = OUTLINED_FUNCTION_12_0(v113, &v250);
  v225 = v115;
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v118);
  v119 = sub_1D560CF18();
  v120 = OUTLINED_FUNCTION_20(v119, &v244);
  v122 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v123);
  v124 = sub_1D560D068();
  v125 = OUTLINED_FUNCTION_12_0(v124, &v245);
  v224 = v126;
  v128 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_5_0();
  v130 = OUTLINED_FUNCTION_48(v129);
  v131 = type metadata accessor for CloudMusicMovie.Attributes(v130);
  v132 = OUTLINED_FUNCTION_20(v131, v241);
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_5_0();
  v136 = OUTLINED_FUNCTION_48(v135);
  v137 = type metadata accessor for CloudMusicMovie(v136);
  v138 = OUTLINED_FUNCTION_20(v137, &v238);
  v140 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v141);
  v142 = sub_1D560F328();
  v143 = OUTLINED_FUNCTION_20(v142, &v236);
  v145 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v146);
  v147 = sub_1D560F478();
  v148 = OUTLINED_FUNCTION_12_0(v147, &v237);
  v222 = v149;
  v151 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v152);
  v153 = sub_1D560F9A8();
  v154 = OUTLINED_FUNCTION_20(v153, &v232);
  v156 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v157);
  v158 = sub_1D560FB08();
  v159 = OUTLINED_FUNCTION_12_0(v158, &v233);
  v161 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v159);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v162);
  v163 = sub_1D560F648();
  v164 = OUTLINED_FUNCTION_20(v163, &v229);
  v166 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v164);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v167 = sub_1D560F7A8();
  v168 = OUTLINED_FUNCTION_12_0(v167, &v227);
  v170 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v171 = sub_1D560F1A8();
  v172 = OUTLINED_FUNCTION_14(v171);
  v174 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v172);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v175 = sub_1D560F308();
  v176 = OUTLINED_FUNCTION_4(v175);
  v178 = v177;
  v180 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v176);
  OUTLINED_FUNCTION_13_0();
  v181 = type metadata accessor for CloudMusicShareableItem();
  v182 = OUTLINED_FUNCTION_14(v181);
  v184 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v182);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_35_0(&v228);
      OUTLINED_FUNCTION_136_8();
      v204();
      OUTLINED_FUNCTION_243_0();
      sub_1D560F658();
      v205 = a10;
      sub_1D5614C38();
      if (v205)
      {
        v206 = *(v175 + 8);
      }

      else
      {
        v221 = *(v175 + 8);
      }

      v207 = OUTLINED_FUNCTION_131_6();
      v208(v207);
      break;
    case 2u:
      OUTLINED_FUNCTION_60_1(&v231);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v201();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172(&v230);
      sub_1D560F9B8();
      OUTLINED_FUNCTION_130_10();
      v200 = &v232;
      goto LABEL_21;
    case 3u:
      OUTLINED_FUNCTION_60_1(&v235);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v202();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172(&v234);
      sub_1D560F338();
      OUTLINED_FUNCTION_130_10();
      v200 = &v236;
      goto LABEL_21;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_117_0(&v239);
      sub_1D5285360();
      OUTLINED_FUNCTION_243_0();
      v196 = v20 + *(v223 + 20);
      OUTLINED_FUNCTION_165_4(&v240);
      sub_1D5285E4C();
      OUTLINED_FUNCTION_130_10();
      sub_1D5614C38();
      OUTLINED_FUNCTION_7_89();
      sub_1D5285EA4(v20, v197);
      break;
    case 5u:
      OUTLINED_FUNCTION_60_1(&v243);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v209();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172(&v242);
      sub_1D560CF28();
      OUTLINED_FUNCTION_130_10();
      v200 = &v244;
      goto LABEL_21;
    case 6u:
      OUTLINED_FUNCTION_60_1(&v248);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v211();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172(&v247);
      sub_1D56100C8();
      OUTLINED_FUNCTION_130_10();
      v200 = &v249;
      goto LABEL_21;
    case 7u:
      OUTLINED_FUNCTION_60_1(&v253);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v203();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172(&v252);
      sub_1D56107F8();
      OUTLINED_FUNCTION_130_10();
      v200 = &v254;
      goto LABEL_21;
    case 8u:
      OUTLINED_FUNCTION_60_1(&v258);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v213();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172(&v257);
      sub_1D5610B18();
      OUTLINED_FUNCTION_130_10();
      v200 = &v259;
      goto LABEL_21;
    case 9u:
      OUTLINED_FUNCTION_60_1(&v262);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v199();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172(&v261);
      sub_1D56118A8();
      OUTLINED_FUNCTION_130_10();
      v200 = &a9;
      goto LABEL_21;
    case 0xAu:
      OUTLINED_FUNCTION_60_1(&a13);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v212();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172(&a12);
      sub_1D56148D8();
      OUTLINED_FUNCTION_130_10();
      v200 = &a14;
LABEL_21:
      v214 = *(v200 - 32);
      goto LABEL_22;
    case 0xBu:
      OUTLINED_FUNCTION_60_1(&a18);
      v194 = OUTLINED_FUNCTION_61_8();
      v195(v194);
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172(&a17);
      sub_1D560FBC8();
      OUTLINED_FUNCTION_130_10();
LABEL_22:
      v215 = a10;
      sub_1D5614C38();
      if (v215)
      {
        v216 = *(v22 + 8);
      }

      else
      {
        v219 = *(v22 + 8);
      }

      v217 = OUTLINED_FUNCTION_21_1();
      v218(v217);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v191 = v246;
      sub_1D5285360();
      OUTLINED_FUNCTION_243_0();
      v198 = *(v244 + 20);
      OUTLINED_FUNCTION_272_1();
      OUTLINED_FUNCTION_130_10();
      sub_1D5614C38();
      v193 = type metadata accessor for CloudTVEpisode;
      goto LABEL_28;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v191 = v250;
      sub_1D5285360();
      OUTLINED_FUNCTION_243_0();
      v210 = *(v248 + 20);
      OUTLINED_FUNCTION_272_1();
      OUTLINED_FUNCTION_130_10();
      sub_1D5614C38();
      v193 = type metadata accessor for CloudTVShow;
      goto LABEL_28;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v191 = v254;
      sub_1D5285360();
      OUTLINED_FUNCTION_243_0();
      v192 = *(v252 + 20);
      OUTLINED_FUNCTION_272_1();
      OUTLINED_FUNCTION_130_10();
      sub_1D5614C38();
      v193 = type metadata accessor for CloudUploadedVideo;
LABEL_28:
      sub_1D5285EA4(v191, v193);
      break;
    default:
      OUTLINED_FUNCTION_113_9();
      v185 = OUTLINED_FUNCTION_42_3();
      v186(v185);
      OUTLINED_FUNCTION_243_0();
      sub_1D560F1B8();
      v187 = a10;
      sub_1D5614C38();
      if (v187)
      {
        v188 = *(v178 + 8);
      }

      else
      {
        v220 = *(v178 + 8);
      }

      v189 = OUTLINED_FUNCTION_21_1();
      v190(v189);
      break;
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void CloudMusicShareableItem.decodeRawRelationships(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v27;
  a20 = v28;
  a10 = v21;
  v288[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = OUTLINED_FUNCTION_85_15(v34);
  v283 = type metadata accessor for CloudUploadedVideo(v35);
  v36 = OUTLINED_FUNCTION_14(v283);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v288[0] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v285 = v44;
  v45 = OUTLINED_FUNCTION_70_0();
  v279 = type metadata accessor for CloudTVShow(v45);
  v46 = OUTLINED_FUNCTION_14(v279);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  v286 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_22(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  v282 = v54;
  v55 = OUTLINED_FUNCTION_70_0();
  v56 = type metadata accessor for CloudTVEpisode(v55);
  v57 = OUTLINED_FUNCTION_20(v56, &a14);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  v284 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CD8, &qword_1D564AD60);
  OUTLINED_FUNCTION_22(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v65);
  v66 = sub_1D560FD68();
  v67 = OUTLINED_FUNCTION_4(v66);
  v280 = v68;
  v281 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CE0, &unk_1D564AD68);
  OUTLINED_FUNCTION_22(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v76);
  v77 = sub_1D5614A18();
  v78 = OUTLINED_FUNCTION_12_0(v77, &a16);
  v275 = v79;
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_78_18(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF378, &unk_1D56310D0);
  OUTLINED_FUNCTION_22(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v87);
  v88 = sub_1D5611998();
  v89 = OUTLINED_FUNCTION_12_0(v88, &a11);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_77_13(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CE8, &qword_1D564AD78);
  OUTLINED_FUNCTION_22(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v97);
  v98 = sub_1D5610C48();
  v99 = OUTLINED_FUNCTION_12_0(v98, &v296);
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CF0, &unk_1D564AD80);
  OUTLINED_FUNCTION_22(v103);
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v107);
  v108 = sub_1D5610908();
  v109 = OUTLINED_FUNCTION_12_0(v108, &v293);
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_95_14(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  OUTLINED_FUNCTION_22(v113);
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v117);
  v118 = sub_1D5610588();
  v119 = OUTLINED_FUNCTION_12_0(v118, &v290);
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v122);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CF8, &unk_1D564AD90);
  OUTLINED_FUNCTION_22(v123);
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v127);
  v128 = sub_1D560D068();
  v129 = OUTLINED_FUNCTION_12_0(v128, &v287);
  v131 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
  OUTLINED_FUNCTION_22(v133);
  v135 = *(v134 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_13_3();
  v138 = OUTLINED_FUNCTION_48(v137);
  v139 = type metadata accessor for CloudMusicMovie(v138);
  v140 = OUTLINED_FUNCTION_20(v139, &v275);
  v142 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v143);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D00, &unk_1D564ADA0);
  OUTLINED_FUNCTION_22(v144);
  v146 = *(v145 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v148);
  v149 = sub_1D560F478();
  v150 = OUTLINED_FUNCTION_12_0(v149, &v281);
  v152 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_86_17(v153);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D08, &unk_1D565D100);
  OUTLINED_FUNCTION_22(v154);
  v156 = *(v155 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_30_8();
  v158 = sub_1D560FB08();
  v159 = OUTLINED_FUNCTION_12_0(v158, &v277);
  v161 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v159);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v162);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D10, &unk_1D564ADB0);
  OUTLINED_FUNCTION_22(v163);
  v165 = *(v164 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v166);
  OUTLINED_FUNCTION_15_3();
  v167 = sub_1D560F7A8();
  v168 = OUTLINED_FUNCTION_12_0(v167, &v273);
  v170 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D18, &unk_1D565D110);
  OUTLINED_FUNCTION_22(v171);
  v173 = *(v172 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v174);
  OUTLINED_FUNCTION_68();
  v175 = sub_1D560F308();
  v176 = OUTLINED_FUNCTION_4(v175);
  v178 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v176);
  OUTLINED_FUNCTION_13_0();
  v179 = type metadata accessor for CloudMusicShareableItem();
  v180 = OUTLINED_FUNCTION_14(v179);
  v182 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v180);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  sub_1D5614A88();
  v289 = sub_1D5614BD8();
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_60_1(v274);
      OUTLINED_FUNCTION_151();
      v224();
      sub_1D560F6B8();
      v225 = sub_1D560F6A8();
      OUTLINED_FUNCTION_35_3(v25, v226, v225);
      if (v186)
      {
        v227 = *(v175 + 8);
        v228 = OUTLINED_FUNCTION_27_1();
        v229(v228);
        v189 = &qword_1EC7F2D10;
        v190 = &unk_1D564ADB0;
        v215 = v25;
        goto LABEL_48;
      }

      sub_1D4E50004(v25, &qword_1EC7F2D10, &unk_1D564ADB0);
      OUTLINED_FUNCTION_242();
      sub_1D560F6D8();
      OUTLINED_FUNCTION_239_0();
      sub_1D526EE28();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      sub_1D5614C18();
      if (v22)
      {
        v263 = *(v175 + 8);
      }

      else
      {
        v271 = *(v175 + 8);
      }

      v264 = OUTLINED_FUNCTION_27_1();
      v265(v264);
      break;
    case 2u:
      OUTLINED_FUNCTION_69_2(&v276);
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v210();
      sub_1D560F9F8();
      v211 = sub_1D560F9E8();
      OUTLINED_FUNCTION_35_3(v24, v212, v211);
      if (!v186)
      {

        sub_1D4E50004(v24, &qword_1EC7F2D08, &unk_1D565D100);
        OUTLINED_FUNCTION_242();
        sub_1D560FA18();
        OUTLINED_FUNCTION_238_0();
        goto LABEL_61;
      }

      v213 = OUTLINED_FUNCTION_89_0();
      v214(v213);
      v189 = &qword_1EC7F2D08;
      v190 = &unk_1D565D100;
      v215 = v24;
      goto LABEL_48;
    case 3u:
      OUTLINED_FUNCTION_69_2(&v280);
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v216();
      OUTLINED_FUNCTION_79_15(&v278);
      sub_1D560F378();
      v217 = sub_1D560F368();
      OUTLINED_FUNCTION_9_80(v217);
      if (!v186)
      {

        sub_1D4E50004(v20, &qword_1EC7F2D00, &unk_1D564ADA0);
        OUTLINED_FUNCTION_242();
        sub_1D560F3A8();
        OUTLINED_FUNCTION_237();
        goto LABEL_61;
      }

      v218 = OUTLINED_FUNCTION_89_0();
      v219(v218);
      v189 = &qword_1EC7F2D00;
      v190 = &unk_1D564ADA0;
      goto LABEL_47;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_271(&v283);
      v200 = v23 + *(v272 + 24);
      OUTLINED_FUNCTION_165_4(&v282);
      sub_1D4FB8150();
      v201 = type metadata accessor for CloudMusicMovie.Relationships(0);
      OUTLINED_FUNCTION_9_80(v201);
      if (!v186)
      {

        sub_1D4E50004(v20, &qword_1EC7EF310, &qword_1D565B640);
        OUTLINED_FUNCTION_242();
        OUTLINED_FUNCTION_189_3();
        OUTLINED_FUNCTION_302_0();
        OUTLINED_FUNCTION_236();
        sub_1D526F5DC(v253, v254, v255);
        OUTLINED_FUNCTION_82();

        OUTLINED_FUNCTION_204_3();
        sub_1D5614C18();
        OUTLINED_FUNCTION_7_89();
        sub_1D5285EA4(v23, v256);
        break;
      }

      OUTLINED_FUNCTION_7_89();
      sub_1D5285EA4(v23, v202);
      v189 = &qword_1EC7EF310;
      v190 = &qword_1D565B640;
      goto LABEL_47;
    case 5u:
      OUTLINED_FUNCTION_69_2(&v286);
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v230();
      OUTLINED_FUNCTION_79_15(&v284);
      sub_1D560CF78();
      v231 = sub_1D560CF68();
      OUTLINED_FUNCTION_9_80(v231);
      if (!v186)
      {

        sub_1D4E50004(v20, &qword_1EC7F2CF8, &unk_1D564AD90);
        OUTLINED_FUNCTION_242();
        sub_1D560CF98();
        OUTLINED_FUNCTION_235_0();
        goto LABEL_61;
      }

      v232 = OUTLINED_FUNCTION_89_0();
      v233(v232);
      v189 = &qword_1EC7F2CF8;
      v190 = &unk_1D564AD90;
      goto LABEL_47;
    case 6u:
      OUTLINED_FUNCTION_69_2(&v289);
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v237();
      OUTLINED_FUNCTION_79_15(v288);
      sub_1D5610468();
      v238 = sub_1D5610458();
      OUTLINED_FUNCTION_9_80(v238);
      if (!v186)
      {

        sub_1D4E50004(v20, &qword_1EC7ECF48, &qword_1D5623AE0);
        OUTLINED_FUNCTION_242();
        sub_1D5610488();
        OUTLINED_FUNCTION_234_1();
        goto LABEL_61;
      }

      v239 = OUTLINED_FUNCTION_89_0();
      v240(v239);
      v189 = &qword_1EC7ECF48;
      v190 = &qword_1D5623AE0;
      goto LABEL_47;
    case 7u:
      OUTLINED_FUNCTION_69_2(&v292);
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v220();
      OUTLINED_FUNCTION_79_15(&v291);
      sub_1D5610828();
      v221 = sub_1D5610818();
      OUTLINED_FUNCTION_9_80(v221);
      if (!v186)
      {

        sub_1D4E50004(v20, &qword_1EC7F2CF0, &unk_1D564AD80);
        OUTLINED_FUNCTION_242();
        sub_1D5610848();
        OUTLINED_FUNCTION_233_1();
        goto LABEL_61;
      }

      v222 = OUTLINED_FUNCTION_89_0();
      v223(v222);
      v189 = &qword_1EC7F2CF0;
      v190 = &unk_1D564AD80;
      goto LABEL_47;
    case 8u:
      OUTLINED_FUNCTION_69_2(&v295);
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v245();
      OUTLINED_FUNCTION_79_15(&v294);
      sub_1D5610B58();
      v246 = sub_1D5610B48();
      OUTLINED_FUNCTION_9_80(v246);
      if (!v186)
      {

        sub_1D4E50004(v20, &qword_1EC7F2CE8, &qword_1D564AD78);
        OUTLINED_FUNCTION_242();
        sub_1D5610B78();
        goto LABEL_60;
      }

      v247 = OUTLINED_FUNCTION_89_0();
      v248(v247);
      v189 = &qword_1EC7F2CE8;
      v190 = &qword_1D564AD78;
      goto LABEL_47;
    case 9u:
      OUTLINED_FUNCTION_69_2(&a10);
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v206();
      OUTLINED_FUNCTION_79_15(&v297);
      sub_1D56118E8();
      v207 = sub_1D56118D8();
      OUTLINED_FUNCTION_9_80(v207);
      if (!v186)
      {

        sub_1D4E50004(v20, &qword_1EC7EF378, &unk_1D56310D0);
        OUTLINED_FUNCTION_242();
        sub_1D5611908();
        goto LABEL_60;
      }

      v208 = OUTLINED_FUNCTION_89_0();
      v209(v208);
      v189 = &qword_1EC7EF378;
      v190 = &unk_1D56310D0;
      goto LABEL_47;
    case 0xAu:
      OUTLINED_FUNCTION_69_2(&a15);
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v241();
      OUTLINED_FUNCTION_79_15(&a12);
      sub_1D5614928();
      v242 = sub_1D5614918();
      OUTLINED_FUNCTION_9_80(v242);
      if (!v186)
      {

        sub_1D4E50004(v20, &qword_1EC7F2CE0, &unk_1D564AD68);
        OUTLINED_FUNCTION_242();
        sub_1D5614948();
        OUTLINED_FUNCTION_232_1();
        goto LABEL_61;
      }

      v243 = OUTLINED_FUNCTION_89_0();
      v244(v243);
      v189 = &qword_1EC7F2CE0;
      v190 = &unk_1D564AD68;
      goto LABEL_47;
    case 0xBu:
      OUTLINED_FUNCTION_40_3();
      v195 = OUTLINED_FUNCTION_72_21();
      v196(v195);
      OUTLINED_FUNCTION_79_15(&a17);
      sub_1D560FC28();
      v197 = sub_1D560FBF8();
      OUTLINED_FUNCTION_9_80(v197);
      if (v186)
      {
        v198 = OUTLINED_FUNCTION_89_0();
        v199(v198);
        v189 = &qword_1EC7F2CD8;
        v190 = &qword_1D564AD60;
        goto LABEL_47;
      }

      sub_1D4E50004(v20, &qword_1EC7F2CD8, &qword_1D564AD60);
      OUTLINED_FUNCTION_242();
      sub_1D560FC68();
LABEL_60:
      OUTLINED_FUNCTION_21_54();
LABEL_61:
      sub_1D526EE28();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      sub_1D5614C18();
      if (v22)
      {
        v260 = OUTLINED_FUNCTION_89_0();
        goto LABEL_63;
      }

      v269 = OUTLINED_FUNCTION_89_0();
      goto LABEL_65;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v191 = v284;
      sub_1D5285360();
      v203 = *(v274[1] + 24);
      v20 = v282;
      sub_1D4FB8150();
      v204 = type metadata accessor for CloudTVEpisode.Relationships(0);
      OUTLINED_FUNCTION_9_80(v204);
      if (v186)
      {
        OUTLINED_FUNCTION_16_66();
        sub_1D5285EA4(v191, v205);
        v189 = &qword_1EC7ECD98;
        v190 = &unk_1D5627070;
        goto LABEL_47;
      }

      sub_1D4E50004(v20, &qword_1EC7ECD98, &unk_1D5627070);
      OUTLINED_FUNCTION_242();
      OUTLINED_FUNCTION_189_3();
      OUTLINED_FUNCTION_302_0();
      OUTLINED_FUNCTION_231_1();
      sub_1D526F70C(v257, v258, v259);
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      sub_1D5614C18();
      if (v22)
      {
        v252 = type metadata accessor for CloudTVEpisode;
      }

      else
      {
        OUTLINED_FUNCTION_59_22();
      }

      goto LABEL_71;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v191 = v286;
      sub_1D5285360();
      v234 = *(v279 + 24);
      v20 = v285;
      sub_1D4FB8150();
      v235 = type metadata accessor for CloudTVShow.Relationships(0);
      OUTLINED_FUNCTION_9_80(v235);
      if (v186)
      {
        OUTLINED_FUNCTION_51_27();
        sub_1D5285EA4(v191, v236);
        v189 = &qword_1EC7ED190;
        v190 = &qword_1D5623F30;
        goto LABEL_47;
      }

      sub_1D4E50004(v20, &qword_1EC7ED190, &qword_1D5623F30);
      OUTLINED_FUNCTION_242();
      OUTLINED_FUNCTION_189_3();
      OUTLINED_FUNCTION_302_0();
      OUTLINED_FUNCTION_230_2();
      sub_1D526F5DC(v266, v267, v268);
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      sub_1D5614C18();
      if (v22)
      {
        v252 = type metadata accessor for CloudTVShow;
      }

      else
      {
        OUTLINED_FUNCTION_57_28();
      }

      goto LABEL_71;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v191 = v288[0];
      sub_1D5285360();
      v192 = *(v283 + 24);
      v20 = v287;
      sub_1D4FB8150();
      v193 = type metadata accessor for CloudUploadedVideo.Relationships(0);
      OUTLINED_FUNCTION_9_80(v193);
      if (v186)
      {
        OUTLINED_FUNCTION_56_24();
        sub_1D5285EA4(v191, v194);
        v189 = &qword_1EC7ECD60;
        v190 = &qword_1D5622F50;
        goto LABEL_47;
      }

      sub_1D4E50004(v20, &qword_1EC7ECD60, &qword_1D5622F50);
      OUTLINED_FUNCTION_242();
      OUTLINED_FUNCTION_189_3();
      OUTLINED_FUNCTION_302_0();
      OUTLINED_FUNCTION_229_2();
      sub_1D526F7E8(v249, v250, v251);
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      sub_1D5614C18();
      if (v22)
      {
        v252 = type metadata accessor for CloudUploadedVideo;
      }

      else
      {
        OUTLINED_FUNCTION_58_27();
      }

LABEL_71:
      sub_1D5285EA4(v191, v252);
      break;
    default:
      v183 = OUTLINED_FUNCTION_82_17();
      v184(v183, v26, v175);
      sub_1D560F208();
      v185 = sub_1D560F1F8();
      OUTLINED_FUNCTION_9_80(v185);
      if (v186)
      {
        v187 = OUTLINED_FUNCTION_134_8();
        v188(v187, v175);
        v189 = &qword_1EC7F2D18;
        v190 = &unk_1D565D110;
LABEL_47:
        v215 = v20;
LABEL_48:
        sub_1D4E50004(v215, v189, v190);
      }

      else
      {

        sub_1D4E50004(v20, &qword_1EC7F2D18, &unk_1D565D110);
        OUTLINED_FUNCTION_242();
        sub_1D560F228();
        OUTLINED_FUNCTION_240_0();
        sub_1D526EE28();

        sub_1D5614C18();
        if (v22)
        {
          v260 = OUTLINED_FUNCTION_134_8();
          v262 = v175;
LABEL_63:
          v261(v260, v262);
        }

        else
        {
          v269 = OUTLINED_FUNCTION_134_8();
LABEL_65:
          v270(v269);
        }
      }

      break;
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void CloudMusicShareableItem.decodeRawAssociations(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v26;
  a20 = v27;
  v273 = v22;
  a10 = v21;
  v271 = v28;
  v267 = type metadata accessor for CloudUploadedVideo(0);
  v29 = OUTLINED_FUNCTION_14(v267);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v270 = v32;
  v33 = OUTLINED_FUNCTION_70_0();
  v263 = type metadata accessor for CloudTVShow(v33);
  v34 = OUTLINED_FUNCTION_14(v263);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v269 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  v43 = OUTLINED_FUNCTION_85_15(v42);
  v258 = type metadata accessor for CloudTVEpisode(v43);
  v44 = OUTLINED_FUNCTION_14(v258);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v268 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D20, &unk_1D564F660);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_3();
  v261 = v52;
  OUTLINED_FUNCTION_70_0();
  v53 = sub_1D560FD68();
  v54 = OUTLINED_FUNCTION_4(v53);
  v264 = v55;
  v265 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  v262 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D28, &unk_1D564ADC0);
  OUTLINED_FUNCTION_22(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v63);
  v64 = sub_1D5614A18();
  v65 = OUTLINED_FUNCTION_4(v64);
  v259 = v66;
  v260 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF370, &unk_1D565D120);
  OUTLINED_FUNCTION_22(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v74);
  v75 = sub_1D5611998();
  v76 = OUTLINED_FUNCTION_12_0(v75, &a16);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_83_16(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D30, &qword_1D564ADD0);
  OUTLINED_FUNCTION_22(v80);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v84);
  v85 = sub_1D5610C48();
  v86 = OUTLINED_FUNCTION_12_0(v85, &a12);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D38, &unk_1D565D130);
  OUTLINED_FUNCTION_22(v90);
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v94);
  v95 = sub_1D5610908();
  v96 = OUTLINED_FUNCTION_12_0(v95, &v278);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_22(v100);
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v104);
  v105 = sub_1D5610588();
  v106 = OUTLINED_FUNCTION_12_0(v105, &v275);
  v108 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D40, &unk_1D5658BF0);
  OUTLINED_FUNCTION_22(v110);
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v114);
  v115 = sub_1D560D068();
  v116 = OUTLINED_FUNCTION_12_0(v115, &v271);
  v118 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v119);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD30, &unk_1D5622F30);
  OUTLINED_FUNCTION_22(v120);
  v122 = *(v121 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_13_3();
  v125 = OUTLINED_FUNCTION_48(v124);
  v126 = type metadata accessor for CloudMusicMovie(v125);
  v127 = OUTLINED_FUNCTION_20(v126, &v259);
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v130);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D48, &qword_1D564ADD8);
  OUTLINED_FUNCTION_22(v131);
  v133 = *(v132 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v135);
  v136 = sub_1D560F478();
  v137 = OUTLINED_FUNCTION_12_0(v136, &v265);
  v139 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_94_15(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D50, &unk_1D564ADE0);
  OUTLINED_FUNCTION_22(v141);
  v143 = *(v142 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_59_8();
  v145 = sub_1D560FB08();
  v146 = OUTLINED_FUNCTION_12_0(v145, &v261);
  v148 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_86_17(v149);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D58, &unk_1D565D140);
  OUTLINED_FUNCTION_22(v150);
  v152 = *(v151 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_68();
  v154 = sub_1D560F7A8();
  v155 = OUTLINED_FUNCTION_12_0(v154, &v256);
  v157 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_5();
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D60, &unk_1D564ADF0);
  OUTLINED_FUNCTION_22(v158);
  v160 = *(v159 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_43_2();
  v162 = sub_1D560F308();
  v163 = OUTLINED_FUNCTION_4(v162);
  v165 = v164;
  v167 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_13_0();
  v168 = type metadata accessor for CloudMusicShareableItem();
  v169 = OUTLINED_FUNCTION_14(v168);
  v171 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v169);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  sub_1D5614A88();
  v272 = sub_1D5614BD8();
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  OUTLINED_FUNCTION_132_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_69_2(&v257);
      OUTLINED_FUNCTION_136_8();
      v212();
      sub_1D560F748();
      v213 = sub_1D560F678();
      OUTLINED_FUNCTION_9_80(v213);
      if (v176)
      {
        v214 = *(v168 + 8);
        v215 = OUTLINED_FUNCTION_29_12();
        v216(v215);
        v180 = &qword_1EC7F2D58;
        v181 = &unk_1D565D140;
        goto LABEL_45;
      }

      sub_1D4E50004(v20, &qword_1EC7F2D58, &unk_1D565D140);
      OUTLINED_FUNCTION_244();
      sub_1D560F6C8();
      OUTLINED_FUNCTION_227_2();
      sub_1D526EE28();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      v248 = v273;
      sub_1D5614C18();
      if (v248)
      {
        v249 = *(v168 + 8);
      }

      else
      {
        v254 = *(v168 + 8);
      }

      v250 = OUTLINED_FUNCTION_29_12();
      v251(v250);
      goto LABEL_69;
    case 2u:
      OUTLINED_FUNCTION_60_1(&v260);
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v199();
      sub_1D560FAA8();
      v200 = sub_1D560F9C8();
      OUTLINED_FUNCTION_35_3(v23, v201, v200);
      if (!v176)
      {

        sub_1D4E50004(v23, &qword_1EC7F2D50, &unk_1D564ADE0);
        OUTLINED_FUNCTION_244();
        sub_1D560FA08();
        goto LABEL_61;
      }

      v202 = OUTLINED_FUNCTION_55_2();
      v203(v202);
      v180 = &qword_1EC7F2D50;
      v181 = &unk_1D564ADE0;
      v182 = v23;
      goto LABEL_46;
    case 3u:
      OUTLINED_FUNCTION_60_1(&v264);
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v204();
      OUTLINED_FUNCTION_172(&v262);
      sub_1D560F418();
      v205 = sub_1D560F348();
      OUTLINED_FUNCTION_9_80(v205);
      if (!v176)
      {

        sub_1D4E50004(v20, &qword_1EC7F2D48, &qword_1D564ADD8);
        OUTLINED_FUNCTION_244();
        sub_1D560F388();
        goto LABEL_61;
      }

      v206 = OUTLINED_FUNCTION_55_2();
      v207(v206);
      v180 = &qword_1EC7F2D48;
      v181 = &qword_1D564ADD8;
      goto LABEL_45;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_117_0(&v267);
      sub_1D5285360();
      v189 = v21 + *(v255 + 28);
      OUTLINED_FUNCTION_165_4(&v266);
      sub_1D4FB8150();
      v190 = type metadata accessor for CloudMusicMovie.Associations(0);
      OUTLINED_FUNCTION_9_80(v190);
      if (!v176)
      {

        sub_1D4E50004(v20, &qword_1EC7ECD30, &unk_1D5622F30);
        OUTLINED_FUNCTION_244();
        OUTLINED_FUNCTION_226_2();
        sub_1D526F70C(v237, v238, v239);
        OUTLINED_FUNCTION_292_0();
        sub_1D5614C18();
        OUTLINED_FUNCTION_7_89();
        sub_1D5285EA4(v21, v240);
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_7_89();
      sub_1D5285EA4(v21, v191);
      v180 = &qword_1EC7ECD30;
      v181 = &unk_1D5622F30;
      goto LABEL_45;
    case 5u:
      OUTLINED_FUNCTION_60_1(&v270);
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v217();
      OUTLINED_FUNCTION_172(&v268);
      sub_1D560D008();
      v218 = sub_1D560CF48();
      OUTLINED_FUNCTION_9_80(v218);
      if (!v176)
      {

        sub_1D4E50004(v20, &qword_1EC7F2D40, &unk_1D5658BF0);
        OUTLINED_FUNCTION_244();
        sub_1D560CF88();
        OUTLINED_FUNCTION_225_1();
        goto LABEL_62;
      }

      v219 = OUTLINED_FUNCTION_55_2();
      v220(v219);
      v180 = &qword_1EC7F2D40;
      v181 = &unk_1D5658BF0;
      goto LABEL_45;
    case 6u:
      OUTLINED_FUNCTION_60_1(&v274);
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v222();
      OUTLINED_FUNCTION_172(&v272);
      sub_1D5610518();
      v223 = sub_1D5610138();
      OUTLINED_FUNCTION_9_80(v223);
      if (!v176)
      {

        sub_1D4E50004(v20, &qword_1EC7ECF40, &unk_1D5623AC0);
        OUTLINED_FUNCTION_244();
        sub_1D5610478();
        OUTLINED_FUNCTION_224_2();
        goto LABEL_62;
      }

      v224 = OUTLINED_FUNCTION_55_2();
      v225(v224);
      v180 = &qword_1EC7ECF40;
      v181 = &unk_1D5623AC0;
      goto LABEL_45;
    case 7u:
      OUTLINED_FUNCTION_60_1(&v277);
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v208();
      OUTLINED_FUNCTION_172(&v276);
      sub_1D56108A8();
      v209 = sub_1D5610808();
      OUTLINED_FUNCTION_9_80(v209);
      if (!v176)
      {

        sub_1D4E50004(v20, &qword_1EC7F2D38, &unk_1D565D130);
        OUTLINED_FUNCTION_244();
        sub_1D5610838();
        goto LABEL_61;
      }

      v210 = OUTLINED_FUNCTION_55_2();
      v211(v210);
      v180 = &qword_1EC7F2D38;
      v181 = &unk_1D565D130;
      goto LABEL_45;
    case 8u:
      OUTLINED_FUNCTION_60_1(&a11);
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v232();
      OUTLINED_FUNCTION_172(&a9);
      sub_1D5610BE8();
      v233 = sub_1D5610B28();
      OUTLINED_FUNCTION_9_80(v233);
      if (!v176)
      {

        sub_1D4E50004(v20, &qword_1EC7F2D30, &qword_1D564ADD0);
        OUTLINED_FUNCTION_244();
        sub_1D5610B68();
        OUTLINED_FUNCTION_223_2();
        goto LABEL_62;
      }

      v234 = OUTLINED_FUNCTION_55_2();
      v235(v234);
      v180 = &qword_1EC7F2D30;
      v181 = &qword_1D564ADD0;
      goto LABEL_45;
    case 9u:
      OUTLINED_FUNCTION_60_1(&a15);
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v195();
      OUTLINED_FUNCTION_172(&a13);
      sub_1D5611968();
      v196 = sub_1D56118B8();
      OUTLINED_FUNCTION_9_80(v196);
      if (!v176)
      {

        sub_1D4E50004(v20, &qword_1EC7EF370, &unk_1D565D120);
        OUTLINED_FUNCTION_244();
        sub_1D56118F8();
        goto LABEL_61;
      }

      v197 = OUTLINED_FUNCTION_55_2();
      v198(v197);
      v180 = &qword_1EC7EF370;
      v181 = &unk_1D565D120;
      goto LABEL_45;
    case 0xAu:
      v226 = *(v259 + 32);
      v227 = OUTLINED_FUNCTION_74_19();
      v228(v227);
      OUTLINED_FUNCTION_172(&a17);
      sub_1D56149B8();
      v229 = sub_1D56148F8();
      OUTLINED_FUNCTION_9_80(v229);
      if (!v176)
      {

        sub_1D4E50004(v20, &qword_1EC7F2D28, &unk_1D564ADC0);
        OUTLINED_FUNCTION_244();
        sub_1D5614938();
        goto LABEL_61;
      }

      v230 = OUTLINED_FUNCTION_55_2();
      v231(v230);
      v180 = &qword_1EC7F2D28;
      v181 = &unk_1D564ADC0;
      goto LABEL_45;
    case 0xBu:
      (*(v264 + 32))(v262, v24, v265);
      v20 = v261;
      sub_1D560FCD8();
      v186 = sub_1D560FBD8();
      OUTLINED_FUNCTION_9_80(v186);
      if (v176)
      {
        v187 = OUTLINED_FUNCTION_55_2();
        v188(v187);
        v180 = &qword_1EC7F2D20;
        v181 = &unk_1D564F660;
        goto LABEL_45;
      }

      sub_1D4E50004(v20, &qword_1EC7F2D20, &unk_1D564F660);
      OUTLINED_FUNCTION_244();
      sub_1D560FC58();
LABEL_61:
      OUTLINED_FUNCTION_21_54();
LABEL_62:
      sub_1D526EE28();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      sub_1D5614C18();
      v246 = OUTLINED_FUNCTION_55_2();
      goto LABEL_63;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v183 = v268;
      sub_1D5285360();
      v192 = *(v258 + 28);
      v20 = v266;
      sub_1D4FB8150();
      v193 = type metadata accessor for CloudTVEpisode.Associations(0);
      OUTLINED_FUNCTION_9_80(v193);
      if (!v176)
      {

        sub_1D4E50004(v20, &qword_1EC7ECD80, &qword_1D5622F70);
        OUTLINED_FUNCTION_244();
        OUTLINED_FUNCTION_222_2();
        sub_1D526F70C(v241, v242, v243);
        OUTLINED_FUNCTION_292_0();
        sub_1D5614C18();
        v185 = type metadata accessor for CloudTVEpisode;
LABEL_68:
        sub_1D5285EA4(v183, v185);
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_16_66();
      sub_1D5285EA4(v183, v194);
      v180 = &qword_1EC7ECD80;
      v181 = &qword_1D5622F70;
LABEL_45:
      v182 = v20;
      goto LABEL_46;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v183 = v269;
      sub_1D5285360();
      OUTLINED_FUNCTION_295_0(v263);
      if (v221)
      {
        v185 = type metadata accessor for CloudTVShow;
      }

      else
      {

        OUTLINED_FUNCTION_244();
        v252 = v273;
        if (qword_1EC7E8A88 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_21_54();
        sub_1D526EE28();
        OUTLINED_FUNCTION_292_0();
        sub_1D5614C18();
        if (v252)
        {
          v185 = type metadata accessor for CloudTVShow;
        }

        else
        {
          OUTLINED_FUNCTION_164_5();
        }
      }

      goto LABEL_68;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v183 = v270;
      sub_1D5285360();
      OUTLINED_FUNCTION_295_0(v267);
      if (v184)
      {
        v185 = type metadata accessor for CloudUploadedVideo;
      }

      else
      {

        OUTLINED_FUNCTION_244();
        v236 = v273;
        if (qword_1EC7E8F70 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_21_54();
        sub_1D526EE28();
        OUTLINED_FUNCTION_292_0();
        sub_1D5614C18();
        if (v236)
        {
          v185 = type metadata accessor for CloudUploadedVideo;
        }

        else
        {
          OUTLINED_FUNCTION_165_6();
        }
      }

      goto LABEL_68;
    default:
      v172 = OUTLINED_FUNCTION_135_2(v165);
      v173(v172, v24, v162);
      sub_1D560F298();
      v174 = sub_1D560F1D8();
      OUTLINED_FUNCTION_35_3(v25, v175, v174);
      if (v176)
      {
        v177 = *(v165 + 8);
        v178 = OUTLINED_FUNCTION_42_3();
        v179(v178);
        v180 = &qword_1EC7F2D60;
        v181 = &unk_1D564ADF0;
        v182 = v25;
LABEL_46:
        sub_1D4E50004(v182, v180, v181);
      }

      else
      {

        sub_1D4E50004(v25, &qword_1EC7F2D60, &unk_1D564ADF0);
        OUTLINED_FUNCTION_244();
        sub_1D560F218();
        OUTLINED_FUNCTION_228_2();
        sub_1D526EE28();

        v244 = v273;
        sub_1D5614C18();
        if (v244)
        {
          v245 = *(v165 + 8);
        }

        else
        {
          v253 = *(v165 + 8);
        }

        v246 = OUTLINED_FUNCTION_42_3();
LABEL_63:
        v247(v246);
      }

LABEL_69:
      OUTLINED_FUNCTION_248();
      OUTLINED_FUNCTION_26();
      return;
  }
}

void CloudMusicShareableItem.decodeRawMetadata(from:skippingValuesFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v23;
  a20 = v24;
  v282 = v21;
  v283 = v20;
  v279 = v25;
  v280 = v26;
  v275 = type metadata accessor for CloudUploadedVideo(0);
  v27 = OUTLINED_FUNCTION_14(v275);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v278 = v30;
  v31 = OUTLINED_FUNCTION_70_0();
  v273[0] = type metadata accessor for CloudTVShow(v31);
  v32 = OUTLINED_FUNCTION_14(v273[0]);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v277 = v35;
  v36 = OUTLINED_FUNCTION_70_0();
  v271 = type metadata accessor for CloudTVEpisode(v36);
  v37 = OUTLINED_FUNCTION_14(v271);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  v276 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D68, &unk_1D565D150);
  v42 = OUTLINED_FUNCTION_20(v41, v265);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_2();
  v270 = v46;
  OUTLINED_FUNCTION_70_0();
  v47 = sub_1D560FD68();
  v48 = OUTLINED_FUNCTION_4(v47);
  v273[1] = v49;
  v274 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v272 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D70, &unk_1D564AE00);
  v54 = OUTLINED_FUNCTION_20(v53, &v263);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v58);
  v269 = sub_1D5614A18();
  v59 = OUTLINED_FUNCTION_4(v269);
  v268 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF368, &unk_1D56310C0);
  v65 = OUTLINED_FUNCTION_20(v64, &v261);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v69);
  v70 = sub_1D5611998();
  v71 = OUTLINED_FUNCTION_12_0(v70, &a15);
  v265[0] = v72;
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_78_18(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D78, &unk_1D564AE10);
  v77 = OUTLINED_FUNCTION_20(v76, &v259);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v81);
  v82 = sub_1D5610C48();
  v83 = OUTLINED_FUNCTION_12_0(v82, &a11);
  v261 = v84;
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_77_13(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D80, &unk_1D565D160);
  v89 = OUTLINED_FUNCTION_20(v88, &v257);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v93);
  v94 = sub_1D5610908();
  v95 = OUTLINED_FUNCTION_12_0(v94, &v287);
  v257 = v96;
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D88, &qword_1D564AE20);
  v101 = OUTLINED_FUNCTION_20(v100, &v255);
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v105);
  v106 = sub_1D5610588();
  v107 = OUTLINED_FUNCTION_12_0(v106, &v284);
  v253 = v108;
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_95_14(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D90, &qword_1D564AE28);
  v113 = OUTLINED_FUNCTION_20(v112, &v253);
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v117);
  v118 = sub_1D560D068();
  v119 = OUTLINED_FUNCTION_12_0(v118, &v280);
  v249 = v120;
  v122 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5_0();
  v124 = OUTLINED_FUNCTION_48(v123);
  v125 = type metadata accessor for CloudMusicMovie(v124);
  v126 = OUTLINED_FUNCTION_20(v125, v273);
  v128 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v129);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D98, &qword_1D564AE30);
  v131 = OUTLINED_FUNCTION_20(v130, &v251);
  v133 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v135);
  v136 = sub_1D560F478();
  v137 = OUTLINED_FUNCTION_12_0(v136, &v275);
  v245[30] = v138;
  v140 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_94_15(v141);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DA0, &qword_1D564AE38);
  v143 = OUTLINED_FUNCTION_20(v142, &v249);
  v145 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v147);
  v148 = sub_1D560FB08();
  v149 = OUTLINED_FUNCTION_12_0(v148, &v271);
  v245[25] = v150;
  v152 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_86_17(v153);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DA8, &unk_1D564AE40);
  v155 = OUTLINED_FUNCTION_20(v154, &v247);
  v157 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v158);
  v160 = v245 - v159;
  v161 = sub_1D560F7A8();
  v162 = OUTLINED_FUNCTION_12_0(v161, &v267);
  v245[21] = v163;
  v165 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v162);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v166);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DB0, &unk_1D565D170);
  v168 = OUTLINED_FUNCTION_14(v167);
  v170 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_205_3();
  MEMORY[0x1EEE9AC00](v171);
  v173 = v245 - v172;
  v174 = sub_1D560F308();
  v175 = OUTLINED_FUNCTION_4(v174);
  v177 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_13_0();
  v178 = type metadata accessor for CloudMusicShareableItem();
  v179 = OUTLINED_FUNCTION_14(v178);
  v181 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v179);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  sub_1D5614A88();
  v281 = sub_1D5614BD8();
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_67(&v266);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v213();
      sub_1D560F728();
      v214 = sub_1D560F798();
      OUTLINED_FUNCTION_9_80(v214);
      if (v186)
      {
        v215 = *(v167 + 8);
        v216 = OUTLINED_FUNCTION_21_1();
        v217(v216);
        v189 = &qword_1EC7F2DA8;
        v190 = &unk_1D564AE40;
        goto LABEL_51;
      }

      sub_1D4E50004(v160, &qword_1EC7F2DA8, &unk_1D564AE40);
      OUTLINED_FUNCTION_241();
      OUTLINED_FUNCTION_172(&v246);
      sub_1D560F728();
      OUTLINED_FUNCTION_249_0();
      OUTLINED_FUNCTION_68_20();
      v237 = v282;
      sub_1D5614C28();
      if (v237)
      {
        v238 = *(v167 + 8);
      }

      else
      {
        v244 = *(v167 + 8);
      }

      v239 = OUTLINED_FUNCTION_21_1();
      v240(v239);
      goto LABEL_60;
    case 2u:
      OUTLINED_FUNCTION_69_2(&v270);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v201();
      OUTLINED_FUNCTION_172(&v268);
      sub_1D560FA88();
      v202 = sub_1D560FAF8();
      OUTLINED_FUNCTION_9_80(v202);
      if (!v186)
      {

        sub_1D4E50004(v160, &qword_1EC7F2DA0, &qword_1D564AE38);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172(&v248);
        sub_1D560FA88();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        v236 = &v249;
        goto LABEL_56;
      }

      v203 = OUTLINED_FUNCTION_45_31();
      v204(v203);
      v189 = &qword_1EC7F2DA0;
      v190 = &qword_1D564AE38;
      goto LABEL_51;
    case 3u:
      OUTLINED_FUNCTION_69_2(&v274);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v205();
      OUTLINED_FUNCTION_172(&v272);
      sub_1D560F3F8();
      v206 = sub_1D560F468();
      OUTLINED_FUNCTION_9_80(v206);
      if (!v186)
      {

        sub_1D4E50004(v160, &qword_1EC7F2D98, &qword_1D564AE30);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172(&v250);
        sub_1D560F3F8();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        v236 = &v251;
        goto LABEL_56;
      }

      v207 = OUTLINED_FUNCTION_45_31();
      v208(v207);
      v189 = &qword_1EC7F2D98;
      v190 = &qword_1D564AE30;
      goto LABEL_51;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_117_0(&v276);
      sub_1D5285360();
      OUTLINED_FUNCTION_202_3(v245[28]);
      if (!v186)
      {

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_186_4();
        sub_1D4E67688(v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DD0, &qword_1D565D1A0);
        OUTLINED_FUNCTION_138_8();
      }

      v235 = type metadata accessor for CloudMusicMovie;
      goto LABEL_59;
    case 5u:
      OUTLINED_FUNCTION_69_2(&v279);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v218();
      OUTLINED_FUNCTION_172(&v277);
      sub_1D560CFE8();
      v219 = sub_1D560D058();
      OUTLINED_FUNCTION_9_80(v219);
      if (!v186)
      {

        sub_1D4E50004(v160, &qword_1EC7F2D90, &qword_1D564AE28);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172(&v252);
        sub_1D560CFE8();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        v236 = &v253;
        goto LABEL_56;
      }

      v220 = OUTLINED_FUNCTION_45_31();
      v221(v220);
      v189 = &qword_1EC7F2D90;
      v190 = &qword_1D564AE28;
      goto LABEL_51;
    case 6u:
      OUTLINED_FUNCTION_69_2(&v283);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v222();
      OUTLINED_FUNCTION_172(&v281);
      sub_1D56104F8();
      v223 = sub_1D5610578();
      OUTLINED_FUNCTION_9_80(v223);
      if (!v186)
      {

        sub_1D4E50004(v160, &qword_1EC7F2D88, &qword_1D564AE20);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172(&v254);
        sub_1D56104F8();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        v236 = &v255;
        goto LABEL_56;
      }

      v224 = OUTLINED_FUNCTION_45_31();
      v225(v224);
      v189 = &qword_1EC7F2D88;
      v190 = &qword_1D564AE20;
      goto LABEL_51;
    case 7u:
      OUTLINED_FUNCTION_69_2(&v286);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v209();
      OUTLINED_FUNCTION_172(&v285);
      sub_1D5610888();
      v210 = sub_1D56108F8();
      OUTLINED_FUNCTION_9_80(v210);
      if (!v186)
      {

        sub_1D4E50004(v160, &qword_1EC7F2D80, &unk_1D565D160);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172(&v256);
        sub_1D5610888();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        v236 = &v257;
        goto LABEL_56;
      }

      v211 = OUTLINED_FUNCTION_45_31();
      v212(v211);
      v189 = &qword_1EC7F2D80;
      v190 = &unk_1D565D160;
      goto LABEL_51;
    case 8u:
      OUTLINED_FUNCTION_69_2(&a10);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v231();
      OUTLINED_FUNCTION_172(&v288);
      sub_1D5610BC8();
      v232 = sub_1D5610C38();
      OUTLINED_FUNCTION_9_80(v232);
      if (!v186)
      {

        sub_1D4E50004(v160, &qword_1EC7F2D78, &unk_1D564AE10);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172(&v258);
        sub_1D5610BC8();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        v236 = &v259;
        goto LABEL_56;
      }

      v233 = OUTLINED_FUNCTION_45_31();
      v234(v233);
      v189 = &qword_1EC7F2D78;
      v190 = &unk_1D564AE10;
      goto LABEL_51;
    case 9u:
      OUTLINED_FUNCTION_69_2(&a14);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v197();
      OUTLINED_FUNCTION_172(&a12);
      sub_1D5611958();
      v198 = sub_1D5611988();
      OUTLINED_FUNCTION_9_80(v198);
      if (!v186)
      {

        sub_1D4E50004(v160, &qword_1EC7EF368, &unk_1D56310C0);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172(&v260);
        sub_1D5611958();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        v236 = &v261;
        goto LABEL_56;
      }

      v199 = OUTLINED_FUNCTION_45_31();
      v200(v199);
      v189 = &qword_1EC7EF368;
      v190 = &unk_1D56310C0;
      goto LABEL_51;
    case 0xAu:
      OUTLINED_FUNCTION_69_2(&a18);
      v226 = OUTLINED_FUNCTION_61_8();
      v227(v226);
      OUTLINED_FUNCTION_172(&a16);
      sub_1D5614998();
      v228 = sub_1D5614A08();
      OUTLINED_FUNCTION_9_80(v228);
      if (!v186)
      {

        sub_1D4E50004(v160, &qword_1EC7F2D70, &unk_1D564AE00);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172(&v262);
        sub_1D5614998();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        v236 = &v263;
        goto LABEL_56;
      }

      v229 = OUTLINED_FUNCTION_45_31();
      v230(v229);
      v189 = &qword_1EC7F2D70;
      v190 = &unk_1D564AE00;
      goto LABEL_51;
    case 0xBu:
      OUTLINED_FUNCTION_40_3();
      v192 = OUTLINED_FUNCTION_42_3();
      v193(v192);
      v160 = v270;
      sub_1D560FCB8();
      v194 = sub_1D560FD58();
      OUTLINED_FUNCTION_9_80(v194);
      if (!v186)
      {

        sub_1D4E50004(v160, &qword_1EC7F2D68, &unk_1D565D150);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172(&v264);
        sub_1D560FCB8();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        v236 = v265;
LABEL_56:
        v241 = *(v236 - 32);
        goto LABEL_57;
      }

      v195 = OUTLINED_FUNCTION_45_31();
      v196(v195);
      v189 = &qword_1EC7F2D68;
      v190 = &unk_1D565D150;
LABEL_51:
      v191 = v160;
      goto LABEL_52;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v20 = v276;
      sub_1D5285360();
      OUTLINED_FUNCTION_202_3(v271);
      if (!v186)
      {

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_186_4();
        sub_1D4E67688(v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DC8, &unk_1D564AE60);
        OUTLINED_FUNCTION_138_8();
      }

      v235 = type metadata accessor for CloudTVEpisode;
      goto LABEL_59;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v20 = v277;
      sub_1D5285360();
      OUTLINED_FUNCTION_202_3(v273[0]);
      if (!v186)
      {

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_186_4();
        sub_1D4E67688(v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DC0, &qword_1D564AE58);
        OUTLINED_FUNCTION_138_8();
      }

      v235 = type metadata accessor for CloudTVShow;
      goto LABEL_59;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v20 = v278;
      sub_1D5285360();
      OUTLINED_FUNCTION_202_3(v275);
      if (!v186)
      {

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_186_4();
        sub_1D4E67688(v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DB8, &qword_1D564AE50);
        OUTLINED_FUNCTION_138_8();
      }

      v235 = type metadata accessor for CloudUploadedVideo;
LABEL_59:
      sub_1D5285EA4(v20, v235);
      goto LABEL_60;
    default:
      v182 = OUTLINED_FUNCTION_82_17();
      v183(v182, v22, v174);
      sub_1D560F278();
      v184 = sub_1D560F2F8();
      OUTLINED_FUNCTION_35_3(v173, v185, v184);
      if (v186)
      {
        v187 = OUTLINED_FUNCTION_45_31();
        v188(v187);
        v189 = &qword_1EC7F2DB0;
        v190 = &unk_1D565D170;
        v191 = v173;
LABEL_52:
        sub_1D4E50004(v191, v189, v190);
      }

      else
      {

        sub_1D4E50004(v173, &qword_1EC7F2DB0, &unk_1D565D170);
        OUTLINED_FUNCTION_241();
        sub_1D560F278();
        OUTLINED_FUNCTION_249_0();
LABEL_57:
        sub_1D5614C28();
        v242 = OUTLINED_FUNCTION_45_31();
        v243(v242);
      }

LABEL_60:
      OUTLINED_FUNCTION_248();
      OUTLINED_FUNCTION_26();
      return;
  }
}

void CloudMusicShareableItem.mergeAttributes(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v24;
  a20 = v25;
  a10 = v21;
  v230[0] = v20;
  v230[1] = v26;
  v231 = v27;
  v227 = type metadata accessor for CloudUploadedVideo(0);
  v28 = OUTLINED_FUNCTION_14(v227);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v229 = v31;
  v32 = OUTLINED_FUNCTION_70_0();
  v225 = type metadata accessor for CloudTVShow(v32);
  v33 = OUTLINED_FUNCTION_14(v225);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v228 = v36;
  v37 = OUTLINED_FUNCTION_70_0();
  v222[0] = type metadata accessor for CloudTVEpisode(v37);
  v38 = OUTLINED_FUNCTION_14(v222[0]);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v226[1] = v41;
  OUTLINED_FUNCTION_70_0();
  v226[0] = sub_1D560FBB8();
  v42 = OUTLINED_FUNCTION_4(v226[0]);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  v222[1] = v45;
  OUTLINED_FUNCTION_70_0();
  v46 = sub_1D560FD68();
  v47 = OUTLINED_FUNCTION_4(v46);
  v223 = v48;
  v224 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  v221 = v51;
  OUTLINED_FUNCTION_70_0();
  v220 = sub_1D56148C8();
  v52 = OUTLINED_FUNCTION_4(v220);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  v217 = v55;
  OUTLINED_FUNCTION_70_0();
  v56 = sub_1D5614A18();
  v57 = OUTLINED_FUNCTION_4(v56);
  v218 = v58;
  v219 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  v216[1] = v61;
  OUTLINED_FUNCTION_70_0();
  v216[0] = sub_1D5611898();
  v62 = OUTLINED_FUNCTION_4(v216[0]);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v65);
  v215 = sub_1D5611998();
  v66 = OUTLINED_FUNCTION_4(v215);
  v214 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v70);
  v71 = sub_1D5610B08();
  v72 = OUTLINED_FUNCTION_12_0(v71, &a15);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v75);
  v76 = sub_1D5610C48();
  v77 = OUTLINED_FUNCTION_12_0(v76, &a14);
  v210 = v78;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v81);
  v82 = sub_1D56107E8();
  v83 = OUTLINED_FUNCTION_12_0(v82, &a10);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v86);
  v87 = sub_1D5610908();
  v88 = OUTLINED_FUNCTION_12_0(v87, &a9);
  v205 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v92);
  v93 = sub_1D56100B8();
  v94 = OUTLINED_FUNCTION_12_0(v93, v230);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v97);
  v98 = sub_1D5610588();
  v99 = OUTLINED_FUNCTION_12_0(v98, &v229);
  v200 = v100;
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v103);
  v104 = sub_1D560CF18();
  v105 = OUTLINED_FUNCTION_12_0(v104, v226);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v108);
  v109 = sub_1D560D068();
  v110 = OUTLINED_FUNCTION_12_0(v109, &v225);
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_5_0();
  v114 = OUTLINED_FUNCTION_48(v113);
  v115 = type metadata accessor for CloudMusicMovie(v114);
  v116 = OUTLINED_FUNCTION_20(v115, &v217);
  v118 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v119);
  v120 = sub_1D560F328();
  v121 = OUTLINED_FUNCTION_12_0(v120, &v221);
  v123 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v124);
  v125 = sub_1D560F478();
  v126 = OUTLINED_FUNCTION_12_0(v125, &v220);
  v128 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v129);
  v130 = sub_1D560F9A8();
  v131 = OUTLINED_FUNCTION_12_0(v130, v216);
  v133 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v134);
  v135 = sub_1D560FB08();
  v136 = OUTLINED_FUNCTION_12_0(v135, &v215);
  v138 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v139);
  v140 = sub_1D560F648();
  v141 = OUTLINED_FUNCTION_12_0(v140, &v212);
  v143 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v144 = sub_1D560F7A8();
  v145 = OUTLINED_FUNCTION_12_0(v144, &v210);
  v147 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v148 = sub_1D560F1A8();
  v149 = OUTLINED_FUNCTION_4(v148);
  v151 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  v152 = sub_1D560F308();
  v153 = OUTLINED_FUNCTION_4(v152);
  v155 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_13_0();
  v156 = type metadata accessor for CloudMusicShareableItem();
  v157 = OUTLINED_FUNCTION_14(v156);
  v159 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_5();
  v162 = v161 - v160;
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_35_0(&v211);
      OUTLINED_FUNCTION_258();
      OUTLINED_FUNCTION_151();
      v183();
      sub_1D560F658();
      sub_1D5286090(&qword_1EC7F2E28, MEMORY[0x1E6975768]);
      v184 = a10;
      sub_1D5614C48();
      OUTLINED_FUNCTION_136(&v200);
      v185(v23);
      if (v184)
      {
        v186 = *(v22 + 8);
      }

      else
      {
        v195 = *(v22 + 8);
      }

      v187 = OUTLINED_FUNCTION_132_1();
      v188(v187);
      break;
    case 2u:
      OUTLINED_FUNCTION_69_2(&v214);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v180();
      OUTLINED_FUNCTION_167_0(&v213);
      sub_1D560F9B8();
      sub_1D5286090(&qword_1EC7F2E20, MEMORY[0x1E6975990]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_192_2(v216);
      v174 = &v201;
      goto LABEL_27;
    case 3u:
      OUTLINED_FUNCTION_69_2(&v219);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v181();
      OUTLINED_FUNCTION_167_0(&v218);
      sub_1D560F338();
      sub_1D5286090(&qword_1EC7F2E18, MEMORY[0x1E6975688]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_192_2(&v221);
      v174 = &v202;
      goto LABEL_27;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_271(v222);
      v175 = OUTLINED_FUNCTION_285_0(v198);
      type metadata accessor for CloudMusicMovie.Attributes(v175);
      sub_1D5286090(&qword_1EC7F2E10, type metadata accessor for CloudMusicMovie.Attributes);
      OUTLINED_FUNCTION_137_9();
      OUTLINED_FUNCTION_7_89();
      sub_1D5285EA4(v22, v176);
      break;
    case 5u:
      OUTLINED_FUNCTION_69_2(&v224);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v189();
      OUTLINED_FUNCTION_167_0(&v223);
      sub_1D560CF28();
      sub_1D5286090(&qword_1EC7F2E08, MEMORY[0x1E6974D70]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_192_2(v226);
      v174 = &v203;
      goto LABEL_27;
    case 6u:
      OUTLINED_FUNCTION_69_2(&v228);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v191();
      OUTLINED_FUNCTION_167_0(&v227);
      sub_1D56100C8();
      sub_1D5286090(&qword_1EC7F2E00, MEMORY[0x1E6975C00]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_192_2(v230);
      v174 = &v204;
      goto LABEL_27;
    case 7u:
      OUTLINED_FUNCTION_69_2(&v232);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v182();
      OUTLINED_FUNCTION_167_0(&v231);
      sub_1D56107F8();
      sub_1D5286090(&qword_1EC7F2DF8, MEMORY[0x1E6975DD8]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_192_2(&a10);
      v174 = &v205;
      goto LABEL_27;
    case 8u:
      OUTLINED_FUNCTION_69_2(&a13);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v194();
      OUTLINED_FUNCTION_167_0(&a12);
      sub_1D5610B18();
      sub_1D5286090(&qword_1EC7F2DF0, MEMORY[0x1E6975F90]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_192_2(&a15);
      v174 = &v206;
      goto LABEL_27;
    case 9u:
      OUTLINED_FUNCTION_69_2(&a18);
      v178 = OUTLINED_FUNCTION_61_8();
      v179(v178);
      OUTLINED_FUNCTION_167_0(&a17);
      sub_1D56118A8();
      sub_1D5286090(&qword_1EC7F2DE8, MEMORY[0x1E6976258]);
      OUTLINED_FUNCTION_73();
      sub_1D5614C48();
      v174 = &v207;
      goto LABEL_27;
    case 0xAu:
      OUTLINED_FUNCTION_40_3();
      v192 = OUTLINED_FUNCTION_42_3();
      v193(v192);
      sub_1D56148D8();
      sub_1D5286090(&qword_1EC7F2DE0, MEMORY[0x1E6977410]);
      OUTLINED_FUNCTION_73();
      sub_1D5614C48();
      v174 = &v208;
      goto LABEL_27;
    case 0xBu:
      OUTLINED_FUNCTION_40_3();
      v172 = OUTLINED_FUNCTION_42_3();
      v173(v172);
      sub_1D560FBC8();
      sub_1D5286090(&qword_1EC7F2DD8, MEMORY[0x1E6975A98]);
      OUTLINED_FUNCTION_73();
      sub_1D5614C48();
      v174 = &v209;
LABEL_27:
      OUTLINED_FUNCTION_136(v174);
      v196 = OUTLINED_FUNCTION_13_8();
      v197(v196);
      v167 = OUTLINED_FUNCTION_45_31();
      goto LABEL_28;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      OUTLINED_FUNCTION_146_6();
      sub_1D5285360();
      v177 = OUTLINED_FUNCTION_285_0(v222[0]);
      type metadata accessor for CloudTVEpisode.Attributes(v177);
      sub_1D5286090(&qword_1EC7EDB30, type metadata accessor for CloudTVEpisode.Attributes);
      OUTLINED_FUNCTION_137_9();
      if (v21)
      {
        v171 = type metadata accessor for CloudTVEpisode;
      }

      else
      {
        OUTLINED_FUNCTION_59_22();
      }

      goto LABEL_26;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v22 = v228;
      sub_1D5285360();
      v190 = OUTLINED_FUNCTION_285_0(v225);
      type metadata accessor for CloudTVShow.Attributes(v190);
      sub_1D5286090(&qword_1EC7ED1B0, type metadata accessor for CloudTVShow.Attributes);
      OUTLINED_FUNCTION_137_9();
      if (v21)
      {
        v171 = type metadata accessor for CloudTVShow;
      }

      else
      {
        OUTLINED_FUNCTION_57_28();
      }

      goto LABEL_26;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v22 = v229;
      sub_1D5285360();
      v170 = OUTLINED_FUNCTION_285_0(v227);
      type metadata accessor for CloudUploadedVideo.Attributes(v170);
      sub_1D5286090(&qword_1EC7F0EB0, type metadata accessor for CloudUploadedVideo.Attributes);
      OUTLINED_FUNCTION_137_9();
      if (v21)
      {
        v171 = type metadata accessor for CloudUploadedVideo;
      }

      else
      {
        OUTLINED_FUNCTION_58_27();
      }

LABEL_26:
      sub_1D5285EA4(v22, v171);
      break;
    default:
      v163 = OUTLINED_FUNCTION_82_17();
      v164(v163, v162, v152);
      sub_1D560F1B8();
      sub_1D5286090(&qword_1EC7F2E30, MEMORY[0x1E69755F8]);
      OUTLINED_FUNCTION_286_0();
      sub_1D5614C48();
      OUTLINED_FUNCTION_136(&v199);
      v165 = OUTLINED_FUNCTION_91_0();
      v166(v165);
      v167 = OUTLINED_FUNCTION_134_8();
      v169 = v152;
LABEL_28:
      v168(v167, v169);
      break;
  }

  OUTLINED_FUNCTION_26();
}

void CloudMusicShareableItem.mergeRelationships(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v24;
  a20 = v25;
  v438 = v21;
  a10 = v20;
  v436[0] = v26;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v433 = v33;
  v34 = OUTLINED_FUNCTION_70_0();
  v434 = type metadata accessor for CloudUploadedVideo.Relationships(v34);
  v35 = OUTLINED_FUNCTION_14(v434);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v39 = OUTLINED_FUNCTION_48(v38);
  v429 = type metadata accessor for CloudUploadedVideo(v39);
  v40 = OUTLINED_FUNCTION_14(v429);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  v435 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  v49 = OUTLINED_FUNCTION_64_19(v48);
  v431 = type metadata accessor for CloudTVShow.Relationships(v49);
  v50 = OUTLINED_FUNCTION_14(v431);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  v54 = OUTLINED_FUNCTION_48(v53);
  v425 = type metadata accessor for CloudTVShow(v54);
  v55 = OUTLINED_FUNCTION_14(v425);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  v432 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_22(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_3();
  v426 = v63;
  v64 = OUTLINED_FUNCTION_70_0();
  v427 = type metadata accessor for CloudTVEpisode.Relationships(v64);
  v65 = OUTLINED_FUNCTION_14(v427);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  v69 = OUTLINED_FUNCTION_48(v68);
  v420 = type metadata accessor for CloudTVEpisode(v69);
  v70 = OUTLINED_FUNCTION_14(v420);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  v428 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CD8, &qword_1D564AD60);
  OUTLINED_FUNCTION_22(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13_3();
  v421 = v78;
  OUTLINED_FUNCTION_70_0();
  v424 = sub_1D560FBF8();
  v79 = OUTLINED_FUNCTION_4(v424);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v82);
  v83 = sub_1D560FD68();
  v84 = OUTLINED_FUNCTION_4(v83);
  v422[1] = v85;
  v423 = v84;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5_0();
  v422[0] = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CE0, &unk_1D564AD68);
  OUTLINED_FUNCTION_22(v89);
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v93);
  v94 = sub_1D5614918();
  v95 = OUTLINED_FUNCTION_12_0(v94, &a18);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v98);
  v99 = sub_1D5614A18();
  v100 = OUTLINED_FUNCTION_12_0(v99, &a17);
  v417 = v101;
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF378, &unk_1D56310D0);
  OUTLINED_FUNCTION_22(v105);
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v109);
  v110 = sub_1D56118D8();
  v111 = OUTLINED_FUNCTION_12_0(v110, &a13);
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v114);
  v115 = sub_1D5611998();
  v116 = OUTLINED_FUNCTION_12_0(v115, &a12);
  v413 = v117;
  v119 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CE8, &qword_1D564AD78);
  OUTLINED_FUNCTION_22(v121);
  v123 = *(v122 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v125);
  v126 = sub_1D5610B48();
  v127 = OUTLINED_FUNCTION_12_0(v126, &v439);
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v130);
  v131 = sub_1D5610C48();
  v132 = OUTLINED_FUNCTION_12_0(v131, &v438);
  v409 = v133;
  v135 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v136);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CF0, &unk_1D564AD80);
  OUTLINED_FUNCTION_22(v137);
  v139 = *(v138 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v141);
  v142 = sub_1D5610818();
  v143 = OUTLINED_FUNCTION_12_0(v142, &v435);
  v145 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v146);
  v147 = sub_1D5610908();
  v148 = OUTLINED_FUNCTION_12_0(v147, &v434);
  v405 = v149;
  v151 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v152);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  OUTLINED_FUNCTION_22(v153);
  v155 = *(v154 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v157);
  v158 = sub_1D5610458();
  v159 = OUTLINED_FUNCTION_12_0(v158, &v430);
  v161 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v159);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v162);
  v163 = sub_1D5610588();
  v164 = OUTLINED_FUNCTION_12_0(v163, &v429);
  v401[1] = v165;
  v167 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v164);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v168);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CF8, &unk_1D564AD90);
  OUTLINED_FUNCTION_22(v169);
  v171 = *(v170 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v172);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v173);
  v174 = sub_1D560CF68();
  v175 = OUTLINED_FUNCTION_12_0(v174, &v425);
  v177 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v178);
  v179 = sub_1D560D068();
  v180 = OUTLINED_FUNCTION_12_0(v179, &v424);
  v399 = v181;
  v183 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v180);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v184);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
  OUTLINED_FUNCTION_22(v185);
  v187 = *(v186 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v188);
  OUTLINED_FUNCTION_13_3();
  v190 = OUTLINED_FUNCTION_48(v189);
  v191 = type metadata accessor for CloudMusicMovie.Relationships(v190);
  v192 = OUTLINED_FUNCTION_20(v191, &v421);
  v194 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v192);
  OUTLINED_FUNCTION_5_0();
  v196 = OUTLINED_FUNCTION_48(v195);
  v197 = type metadata accessor for CloudMusicMovie(v196);
  v198 = OUTLINED_FUNCTION_20(v197, &v414);
  v200 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v198);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v201);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D00, &unk_1D564ADA0);
  OUTLINED_FUNCTION_22(v202);
  v204 = *(v203 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v205);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v206);
  v207 = sub_1D560F368();
  v208 = OUTLINED_FUNCTION_12_0(v207, &v418);
  v210 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v208);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v211);
  v212 = sub_1D560F478();
  v213 = OUTLINED_FUNCTION_12_0(v212, &v417);
  v394[1] = v214;
  v216 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v213);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v217);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D08, &unk_1D565D100);
  OUTLINED_FUNCTION_22(v218);
  v220 = *(v219 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v221);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v222);
  v223 = sub_1D560F9E8();
  v224 = OUTLINED_FUNCTION_12_0(v223, &v413);
  v226 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v224);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v227);
  v228 = sub_1D560FB08();
  v229 = OUTLINED_FUNCTION_12_0(v228, &v412);
  v231 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v229);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v232);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D10, &unk_1D564ADB0);
  OUTLINED_FUNCTION_22(v233);
  v235 = *(v234 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v236);
  OUTLINED_FUNCTION_15_3();
  v237 = sub_1D560F6A8();
  v238 = OUTLINED_FUNCTION_12_0(v237, &v409);
  v240 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v238);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v241);
  v242 = sub_1D560F7A8();
  v243 = OUTLINED_FUNCTION_12_0(v242, &v408);
  v245 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v243);
  OUTLINED_FUNCTION_5();
  v248 = v247 - v246;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D18, &unk_1D565D110);
  OUTLINED_FUNCTION_22(v249);
  v251 = *(v250 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v252);
  OUTLINED_FUNCTION_43_2();
  v253 = sub_1D560F1F8();
  v254 = OUTLINED_FUNCTION_4(v253);
  v256 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v254);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v257 = sub_1D560F308();
  v258 = OUTLINED_FUNCTION_4(v257);
  v391 = v259;
  v261 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v258);
  OUTLINED_FUNCTION_13_0();
  v262 = v28;
  v263 = type metadata accessor for CloudMusicShareableItem();
  v264 = OUTLINED_FUNCTION_14(v263);
  v266 = *(v265 + 64);
  MEMORY[0x1EEE9AC00](v264);
  OUTLINED_FUNCTION_5();
  v269 = v268 - v267;
  v270 = *(v262 + 16);
  v436[1] = v262;
  if (v270)
  {

    v437 = v262;
  }

  else
  {
    v437 = 0;
  }

  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  OUTLINED_FUNCTION_13_8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_186(&v407);
      v317 = *(v316 + 32);
      OUTLINED_FUNCTION_200_2();
      v318();
      sub_1D560F6B8();
      OUTLINED_FUNCTION_28_48(v22, 1, &v409);
      if (v282)
      {
        v319 = OUTLINED_FUNCTION_250_0();
        v320(v319);
        v276 = &qword_1EC7F2D10;
        v277 = &unk_1D564ADB0;
        v278 = v22;
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_35_0(&v393);
      OUTLINED_FUNCTION_282_1();
      OUTLINED_FUNCTION_287_0();
      v372();
      sub_1D5286090(&qword_1EC7F2E88, MEMORY[0x1E69757E0]);
      sub_1D5614C48();
      (*(v257 + 8))(v253, v248);
      v373 = OUTLINED_FUNCTION_250_0();
      v374(v373);
      goto LABEL_58;
    case 2u:
      OUTLINED_FUNCTION_67(&v411);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v301();
      OUTLINED_FUNCTION_41_34(&v410);
      sub_1D560F9F8();
      v302 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v302, v303, &v413);
      if (!v282)
      {

        OUTLINED_FUNCTION_35_0(v394);
        v357 = OUTLINED_FUNCTION_17_59();
        v358(v357);
        v355 = &unk_1EC7F2E80;
        v356 = MEMORY[0x1E69759C0];
        goto LABEL_55;
      }

      v304 = OUTLINED_FUNCTION_61_5();
      v305(v304);
      v276 = &qword_1EC7F2D08;
      v277 = &unk_1D565D100;
      goto LABEL_49;
    case 3u:
      OUTLINED_FUNCTION_67(&v416);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v306();
      OUTLINED_FUNCTION_41_34(&v415);
      sub_1D560F378();
      v307 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v307, v308, &v418);
      if (!v282)
      {

        OUTLINED_FUNCTION_35_0(&v395);
        v359 = OUTLINED_FUNCTION_17_59();
        v360(v359);
        v355 = &unk_1EC7F2E78;
        v356 = MEMORY[0x1E69756B8];
        goto LABEL_55;
      }

      v309 = OUTLINED_FUNCTION_61_5();
      v310(v309);
      v276 = &qword_1EC7F2D00;
      v277 = &unk_1D564ADA0;
      goto LABEL_49;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_271(&v419);
      v290 = v257 + *(v393 + 24);
      OUTLINED_FUNCTION_117_0(&v420);
      sub_1D4FB8150();
      OUTLINED_FUNCTION_50_0(v20, 1, &v421);
      if (!v282)
      {

        OUTLINED_FUNCTION_117_0(&v396);
        sub_1D5285360();
        sub_1D5286090(&qword_1EC7F2E70, type metadata accessor for CloudMusicMovie.Relationships);
        OUTLINED_FUNCTION_198_4();
        sub_1D5285EA4(v20, type metadata accessor for CloudMusicMovie.Relationships);
        OUTLINED_FUNCTION_7_89();
        sub_1D5285EA4(v257, v350);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_7_89();
      sub_1D5285EA4(v257, v291);
      v276 = &qword_1EC7EF310;
      v277 = &qword_1D565B640;
      v278 = v20;
      goto LABEL_50;
    case 5u:
      OUTLINED_FUNCTION_67(&v423);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v321();
      OUTLINED_FUNCTION_41_34(v422);
      sub_1D560CF78();
      v322 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v322, v323, &v425);
      if (!v282)
      {

        OUTLINED_FUNCTION_35_0(&v397);
        v375 = OUTLINED_FUNCTION_17_59();
        v376(v375);
        v355 = &unk_1EC7F2E68;
        v356 = MEMORY[0x1E6974DB0];
        goto LABEL_55;
      }

      v324 = OUTLINED_FUNCTION_61_5();
      v325(v324);
      v276 = &qword_1EC7F2CF8;
      v277 = &unk_1D564AD90;
      goto LABEL_49;
    case 6u:
      OUTLINED_FUNCTION_67(&v428);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v330();
      OUTLINED_FUNCTION_41_34(&v426);
      sub_1D5610468();
      v331 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v331, v332, &v430);
      if (!v282)
      {

        OUTLINED_FUNCTION_35_0(&v398);
        v379 = OUTLINED_FUNCTION_17_59();
        v380(v379);
        v355 = &unk_1EC7F2E60;
        v356 = MEMORY[0x1E6975CA0];
        goto LABEL_55;
      }

      v333 = OUTLINED_FUNCTION_61_5();
      v334(v333);
      v276 = &qword_1EC7ECF48;
      v277 = &qword_1D5623AE0;
      goto LABEL_49;
    case 7u:
      OUTLINED_FUNCTION_67(&v433);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v311();
      OUTLINED_FUNCTION_41_34(&v431);
      sub_1D5610828();
      v312 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v312, v313, &v435);
      if (!v282)
      {

        OUTLINED_FUNCTION_35_0(&v399);
        v361 = OUTLINED_FUNCTION_17_59();
        v362(v361);
        v355 = &unk_1EC7F2E58;
        v356 = MEMORY[0x1E6975E08];
        goto LABEL_55;
      }

      v314 = OUTLINED_FUNCTION_61_5();
      v315(v314);
      v276 = &qword_1EC7F2CF0;
      v277 = &unk_1D564AD80;
      goto LABEL_49;
    case 8u:
      OUTLINED_FUNCTION_67(&v437);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v340();
      OUTLINED_FUNCTION_41_34(v436);
      sub_1D5610B58();
      v341 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v341, v342, &v439);
      if (!v282)
      {

        OUTLINED_FUNCTION_35_0(&v400);
        v383 = OUTLINED_FUNCTION_17_59();
        v384(v383);
        v355 = &unk_1EC7F2E50;
        v356 = MEMORY[0x1E6975FC0];
        goto LABEL_55;
      }

      v343 = OUTLINED_FUNCTION_61_5();
      v344(v343);
      v276 = &qword_1EC7F2CE8;
      v277 = &qword_1D564AD78;
      goto LABEL_49;
    case 9u:
      OUTLINED_FUNCTION_67(&a11);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v296();
      OUTLINED_FUNCTION_41_34(&a9);
      sub_1D56118E8();
      v297 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v297, v298, &a13);
      if (!v282)
      {

        OUTLINED_FUNCTION_35_0(v401);
        v353 = OUTLINED_FUNCTION_17_59();
        v354(v353);
        v355 = &unk_1EC7F2E48;
        v356 = MEMORY[0x1E6976278];
        goto LABEL_55;
      }

      v299 = OUTLINED_FUNCTION_61_5();
      v300(v299);
      v276 = &qword_1EC7EF378;
      v277 = &unk_1D56310D0;
      goto LABEL_49;
    case 0xAu:
      OUTLINED_FUNCTION_67(&a16);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v335();
      OUTLINED_FUNCTION_41_34(&a14);
      sub_1D5614928();
      v336 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v336, v337, &a18);
      if (!v282)
      {

        OUTLINED_FUNCTION_35_0(&v402);
        v381 = OUTLINED_FUNCTION_17_59();
        v382(v381);
        v355 = &unk_1EC7F2E40;
        v356 = MEMORY[0x1E6977440];
        goto LABEL_55;
      }

      v338 = OUTLINED_FUNCTION_61_5();
      v339(v338);
      v276 = &qword_1EC7F2CE0;
      v277 = &unk_1D564AD68;
      goto LABEL_49;
    case 0xBu:
      OUTLINED_FUNCTION_113_9();
      v284 = OUTLINED_FUNCTION_131_6();
      v285(v284);
      v263 = v421;
      sub_1D560FC28();
      v286 = OUTLINED_FUNCTION_45_1();
      v20 = v424;
      if (__swift_getEnumTagSinglePayload(v286, v287, v424) != 1)
      {

        OUTLINED_FUNCTION_35_0(&v403);
        v348 = OUTLINED_FUNCTION_17_59();
        v349(v348);
        v355 = &unk_1EC7F2E38;
        v356 = MEMORY[0x1E6975AB8];
LABEL_55:
        sub_1D5286090(v355, v356);
        OUTLINED_FUNCTION_252_0();
        sub_1D5614C48();
        (*(v257 + 8))(v22, v20);
        v385 = OUTLINED_FUNCTION_61_5();
        v386(v385);
        goto LABEL_58;
      }

      v288 = OUTLINED_FUNCTION_61_5();
      v289(v288);
      v276 = &qword_1EC7F2CD8;
      v277 = &qword_1D564AD60;
LABEL_49:
      v278 = v263;
      goto LABEL_50;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v20 = v428;
      sub_1D5285360();
      v292 = *(v420 + 24);
      v257 = v426;
      sub_1D4FB8150();
      v293 = OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_14_54(v293, v294);
      if (!v282)
      {

        OUTLINED_FUNCTION_212_3();
        OUTLINED_FUNCTION_271(&v404);
        sub_1D5286090(&qword_1EC7EDB38, type metadata accessor for CloudTVEpisode.Relationships);
        OUTLINED_FUNCTION_286_0();
        OUTLINED_FUNCTION_198_4();
        v351 = OUTLINED_FUNCTION_152_7();
        sub_1D5285EA4(v351, v352);
        v347 = type metadata accessor for CloudTVEpisode;
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_16_66();
      sub_1D5285EA4(v20, v295);
      v276 = &qword_1EC7ECD98;
      v277 = &unk_1D5627070;
      goto LABEL_39;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v20 = v432;
      sub_1D5285360();
      v326 = *(v425 + 24);
      v257 = v430;
      sub_1D4FB8150();
      v327 = OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_14_54(v327, v328);
      if (!v282)
      {

        OUTLINED_FUNCTION_212_3();
        OUTLINED_FUNCTION_271(&v405);
        sub_1D5286090(&qword_1EC7ED1B8, type metadata accessor for CloudTVShow.Relationships);
        OUTLINED_FUNCTION_286_0();
        OUTLINED_FUNCTION_198_4();
        v377 = OUTLINED_FUNCTION_152_7();
        sub_1D5285EA4(v377, v378);
        v347 = type metadata accessor for CloudTVShow;
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_51_27();
      sub_1D5285EA4(v20, v329);
      v276 = &qword_1EC7ED190;
      v277 = &qword_1D5623F30;
      goto LABEL_39;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      OUTLINED_FUNCTION_261_0();
      sub_1D5285360();
      v279 = *(v429 + 24);
      OUTLINED_FUNCTION_146_6();
      sub_1D4FB8150();
      v280 = OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_14_54(v280, v281);
      if (!v282)
      {

        OUTLINED_FUNCTION_212_3();
        OUTLINED_FUNCTION_271(&v406);
        sub_1D5286090(&qword_1EC7F0EB8, type metadata accessor for CloudUploadedVideo.Relationships);
        OUTLINED_FUNCTION_286_0();
        OUTLINED_FUNCTION_198_4();
        v345 = OUTLINED_FUNCTION_152_7();
        sub_1D5285EA4(v345, v346);
        v347 = type metadata accessor for CloudUploadedVideo;
LABEL_57:
        sub_1D5285EA4(v20, v347);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_56_24();
      sub_1D5285EA4(v20, v283);
      v276 = &qword_1EC7ECD60;
      v277 = &qword_1D5622F50;
LABEL_39:
      v278 = v257;
      goto LABEL_50;
    default:
      v271 = OUTLINED_FUNCTION_135_2(v391);
      v272(v271, v269, v257);
      sub_1D560F208();
      if (__swift_getEnumTagSinglePayload(v23, 1, v253) == 1)
      {
        v273 = *(v391 + 8);
        v274 = OUTLINED_FUNCTION_21_1();
        v275(v274);
        v276 = &qword_1EC7F2D18;
        v277 = &unk_1D565D110;
        v278 = v23;
LABEL_50:
        sub_1D4E50004(v278, v276, v277);
      }

      else
      {

        OUTLINED_FUNCTION_69_2(&v392);
        v363 = OUTLINED_FUNCTION_211_2();
        v364(v363);
        sub_1D5286090(&qword_1EC7F2E90, MEMORY[0x1E6975638]);
        v365 = v438;
        sub_1D5614C48();
        if (v365)
        {
          v366 = *(v248 + 8);
          v367 = OUTLINED_FUNCTION_258();
          v368(v367);
          v369 = *(v391 + 8);
        }

        else
        {
          v387 = *(v248 + 8);
          v388 = OUTLINED_FUNCTION_258();
          v389(v388);
          v390 = *(v391 + 8);
        }

        v370 = OUTLINED_FUNCTION_21_1();
        v371(v370);
      }

LABEL_58:
      OUTLINED_FUNCTION_248();
      OUTLINED_FUNCTION_26();
      return;
  }
}

void CloudMusicShareableItem.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v25;
  a20 = v26;
  v389 = v22;
  a10 = v21;
  v386[1] = v27;
  v28 = OUTLINED_FUNCTION_116_9();
  v383 = type metadata accessor for CloudUploadedVideo(v28);
  v29 = OUTLINED_FUNCTION_14(v383);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v386[0] = v32;
  v33 = OUTLINED_FUNCTION_70_0();
  v380 = type metadata accessor for CloudTVShow(v33);
  v34 = OUTLINED_FUNCTION_14(v380);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v385 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  v43 = OUTLINED_FUNCTION_64_19(v42);
  v382 = type metadata accessor for CloudTVEpisode.Associations(v43);
  v44 = OUTLINED_FUNCTION_14(v382);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v48 = OUTLINED_FUNCTION_48(v47);
  v375 = type metadata accessor for CloudTVEpisode(v48);
  v49 = OUTLINED_FUNCTION_14(v375);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  v384 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D20, &unk_1D564F660);
  OUTLINED_FUNCTION_22(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_3();
  v376 = v57;
  OUTLINED_FUNCTION_70_0();
  v379 = sub_1D560FBD8();
  v58 = OUTLINED_FUNCTION_4(v379);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v61);
  v62 = sub_1D560FD68();
  v63 = OUTLINED_FUNCTION_4(v62);
  v377[1] = v64;
  v378 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  v377[0] = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D28, &unk_1D564ADC0);
  OUTLINED_FUNCTION_22(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v72);
  v374 = sub_1D56148F8();
  v73 = OUTLINED_FUNCTION_4(v374);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v76);
  v77 = sub_1D5614A18();
  v78 = OUTLINED_FUNCTION_4(v77);
  v372 = v79;
  v373 = v78;
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  v371 = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF370, &unk_1D565D120);
  OUTLINED_FUNCTION_22(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v87);
  v88 = sub_1D56118B8();
  v89 = OUTLINED_FUNCTION_12_0(v88, &a17);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v92);
  v93 = sub_1D5611998();
  v94 = OUTLINED_FUNCTION_12_0(v93, &a16);
  v368 = v95;
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_83_16(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D30, &qword_1D564ADD0);
  OUTLINED_FUNCTION_22(v99);
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v103);
  v104 = sub_1D5610B28();
  v105 = OUTLINED_FUNCTION_12_0(v104, &a12);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v108);
  v109 = sub_1D5610C48();
  v110 = OUTLINED_FUNCTION_12_0(v109, &a11);
  v364 = v111;
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_77_13(v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D38, &unk_1D565D130);
  OUTLINED_FUNCTION_22(v115);
  v117 = *(v116 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v119);
  v120 = sub_1D5610808();
  v121 = OUTLINED_FUNCTION_12_0(v120, &v389);
  v123 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v124);
  v125 = sub_1D5610908();
  v126 = OUTLINED_FUNCTION_12_0(v125, &v388);
  v360 = v127;
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v130);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_22(v131);
  v133 = *(v132 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v135);
  v136 = sub_1D5610138();
  v137 = OUTLINED_FUNCTION_12_0(v136, &v385);
  v139 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v140);
  v141 = sub_1D5610588();
  v142 = OUTLINED_FUNCTION_12_0(v141, &v384);
  v357[1] = v143;
  v145 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v146);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D40, &unk_1D5658BF0);
  OUTLINED_FUNCTION_22(v147);
  v149 = *(v148 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v151);
  v152 = sub_1D560CF48();
  v153 = OUTLINED_FUNCTION_12_0(v152, &v380);
  v155 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v156);
  v157 = sub_1D560D068();
  v158 = OUTLINED_FUNCTION_12_0(v157, &v379);
  v355 = v159;
  v161 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v158);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v162);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD30, &unk_1D5622F30);
  OUTLINED_FUNCTION_22(v163);
  v165 = *(v164 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v166);
  OUTLINED_FUNCTION_13_3();
  v168 = OUTLINED_FUNCTION_48(v167);
  v169 = type metadata accessor for CloudMusicMovie.Associations(v168);
  v170 = OUTLINED_FUNCTION_20(v169, &v376);
  v172 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v170);
  OUTLINED_FUNCTION_5_0();
  v174 = OUTLINED_FUNCTION_48(v173);
  v175 = type metadata accessor for CloudMusicMovie(v174);
  v176 = OUTLINED_FUNCTION_20(v175, &v369);
  v178 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v176);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v179);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D48, &qword_1D564ADD8);
  OUTLINED_FUNCTION_22(v180);
  v182 = *(v181 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v183);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v184);
  v185 = sub_1D560F348();
  v186 = OUTLINED_FUNCTION_12_0(v185, &v373);
  v188 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v186);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v189);
  v190 = sub_1D560F478();
  v191 = OUTLINED_FUNCTION_12_0(v190, &v372);
  v350[1] = v192;
  v194 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v191);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v195);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D50, &unk_1D564ADE0);
  OUTLINED_FUNCTION_22(v196);
  v198 = *(v197 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v199);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v200);
  v201 = sub_1D560F9C8();
  v202 = OUTLINED_FUNCTION_12_0(v201, &v368);
  v204 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v202);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v205);
  v206 = sub_1D560FB08();
  v207 = OUTLINED_FUNCTION_12_0(v206, &v367);
  v209 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v207);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v210);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D58, &unk_1D565D140);
  OUTLINED_FUNCTION_22(v211);
  v213 = *(v212 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v214);
  OUTLINED_FUNCTION_59_8();
  v215 = sub_1D560F678();
  v216 = OUTLINED_FUNCTION_12_0(v215, &v364);
  v218 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v216);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v219);
  v220 = sub_1D560F7A8();
  v221 = OUTLINED_FUNCTION_12_0(v220, &v363);
  v223 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v221);
  OUTLINED_FUNCTION_5();
  v226 = v225 - v224;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D60, &unk_1D564ADF0);
  OUTLINED_FUNCTION_22(v227);
  v229 = *(v228 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v230);
  OUTLINED_FUNCTION_68();
  v231 = sub_1D560F1D8();
  v232 = OUTLINED_FUNCTION_4(v231);
  v234 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v232);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v235 = sub_1D560F308();
  v236 = OUTLINED_FUNCTION_4(v235);
  v238 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v236);
  OUTLINED_FUNCTION_13_0();
  v239 = type metadata accessor for CloudMusicShareableItem();
  v240 = OUTLINED_FUNCTION_14(v239);
  v242 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v240);
  OUTLINED_FUNCTION_5();
  v243 = *(v24 + 16);
  v387 = v24;
  if (v243)
  {

    v388 = v24;
  }

  else
  {
    v388 = 0;
  }

  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_67(&v362);
      OUTLINED_FUNCTION_132_9();
      OUTLINED_FUNCTION_136_8();
      v289();
      v21 = v226;
      sub_1D560F748();
      v290 = OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_28_48(v290, v291, &v364);
      if (!v262)
      {

        OUTLINED_FUNCTION_69_2(v350);
        v334(v348, v23, v226);
        v322 = &unk_1EC7F2EE8;
        v323 = MEMORY[0x1E6975788];
        goto LABEL_55;
      }

      v292 = OUTLINED_FUNCTION_67_0();
      v293(v292);
      v251 = &qword_1EC7F2D58;
      v252 = &unk_1D565D140;
      goto LABEL_32;
    case 2u:
      OUTLINED_FUNCTION_67(&v366);
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v274();
      OUTLINED_FUNCTION_41_34(&v365);
      sub_1D560FAA8();
      v275 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v275, v276, &v368);
      if (!v262)
      {

        OUTLINED_FUNCTION_69_2(&v351);
        v324 = OUTLINED_FUNCTION_17_59();
        v325(v324);
        v322 = &unk_1EC7F2EE0;
        v323 = MEMORY[0x1E69759A0];
        goto LABEL_55;
      }

      v277 = OUTLINED_FUNCTION_67_0();
      v278(v277);
      v251 = &qword_1EC7F2D50;
      v252 = &unk_1D564ADE0;
      goto LABEL_46;
    case 3u:
      OUTLINED_FUNCTION_67(&v371);
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v279();
      OUTLINED_FUNCTION_41_34(&v370);
      sub_1D560F418();
      v280 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v280, v281, &v373);
      if (!v262)
      {

        OUTLINED_FUNCTION_69_2(&v352);
        v326 = OUTLINED_FUNCTION_17_59();
        v327(v326);
        v322 = &unk_1EC7F2ED8;
        v323 = MEMORY[0x1E6975698];
        goto LABEL_55;
      }

      v282 = OUTLINED_FUNCTION_67_0();
      v283(v282);
      v251 = &qword_1EC7F2D48;
      v252 = &qword_1D564ADD8;
      goto LABEL_46;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      sub_1D5285360();
      v261 = v352 + *(v349 + 28);
      OUTLINED_FUNCTION_117_0(&v375);
      sub_1D4FB8150();
      OUTLINED_FUNCTION_50_0(v21, 1, &v376);
      if (!v262)
      {

        OUTLINED_FUNCTION_117_0(&v353);
        sub_1D5285360();
        sub_1D5286090(&qword_1EC7F2ED0, type metadata accessor for CloudMusicMovie.Associations);
        OUTLINED_FUNCTION_198_4();
        sub_1D5285EA4(v21, type metadata accessor for CloudMusicMovie.Associations);
        OUTLINED_FUNCTION_7_89();
        sub_1D5285EA4(v352, v319);
        break;
      }

      OUTLINED_FUNCTION_7_89();
      sub_1D5285EA4(v352, v263);
      v251 = &qword_1EC7ECD30;
      v252 = &unk_1D5622F30;
      v264 = v21;
      goto LABEL_47;
    case 5u:
      OUTLINED_FUNCTION_67(&v378);
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v294();
      OUTLINED_FUNCTION_41_34(v377);
      sub_1D560D008();
      v295 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v295, v296, &v380);
      if (!v262)
      {

        OUTLINED_FUNCTION_69_2(&v354);
        v335 = OUTLINED_FUNCTION_17_59();
        v336(v335);
        v322 = &unk_1EC7F2EC8;
        v323 = MEMORY[0x1E6974D90];
        goto LABEL_55;
      }

      v297 = OUTLINED_FUNCTION_67_0();
      v298(v297);
      v251 = &qword_1EC7F2D40;
      v252 = &unk_1D5658BF0;
      goto LABEL_46;
    case 6u:
      OUTLINED_FUNCTION_67(&v383);
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v300();
      OUTLINED_FUNCTION_41_34(&v381);
      sub_1D5610518();
      v301 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v301, v302, &v385);
      if (!v262)
      {

        OUTLINED_FUNCTION_69_2(&v355);
        v338 = OUTLINED_FUNCTION_17_59();
        v339(v338);
        v322 = &unk_1EC7F2EC0;
        v323 = MEMORY[0x1E6975C20];
        goto LABEL_55;
      }

      v303 = OUTLINED_FUNCTION_67_0();
      v304(v303);
      v251 = &qword_1EC7ECF40;
      v252 = &unk_1D5623AC0;
      goto LABEL_46;
    case 7u:
      OUTLINED_FUNCTION_67(&v387);
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v284();
      OUTLINED_FUNCTION_41_34(v386);
      sub_1D56108A8();
      v285 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v285, v286, &v389);
      if (!v262)
      {

        OUTLINED_FUNCTION_69_2(&v356);
        v328 = OUTLINED_FUNCTION_17_59();
        v329(v328);
        v322 = &unk_1EC7F2EB8;
        v323 = MEMORY[0x1E6975DE8];
        goto LABEL_55;
      }

      v287 = OUTLINED_FUNCTION_67_0();
      v288(v287);
      v251 = &qword_1EC7F2D38;
      v252 = &unk_1D565D130;
      goto LABEL_46;
    case 8u:
      OUTLINED_FUNCTION_67(&a10);
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v311();
      OUTLINED_FUNCTION_41_34(&v390);
      sub_1D5610BE8();
      v312 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v312, v313, &a12);
      if (!v262)
      {

        OUTLINED_FUNCTION_69_2(v357);
        v342 = OUTLINED_FUNCTION_17_59();
        v343(v342);
        v322 = &unk_1EC7F2EB0;
        v323 = MEMORY[0x1E6975FB0];
        goto LABEL_55;
      }

      v314 = OUTLINED_FUNCTION_67_0();
      v315(v314);
      v251 = &qword_1EC7F2D30;
      v252 = &qword_1D564ADD0;
      goto LABEL_46;
    case 9u:
      OUTLINED_FUNCTION_67(&a15);
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v269();
      OUTLINED_FUNCTION_41_34(&a13);
      sub_1D5611968();
      v270 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v270, v271, &a17);
      if (!v262)
      {

        OUTLINED_FUNCTION_69_2(&v358);
        v320 = OUTLINED_FUNCTION_17_59();
        v321(v320);
        v322 = &unk_1EC7F2EA8;
        v323 = MEMORY[0x1E6976268];
        goto LABEL_55;
      }

      v272 = OUTLINED_FUNCTION_67_0();
      v273(v272);
      v251 = &qword_1EC7EF370;
      v252 = &unk_1D565D120;
      goto LABEL_46;
    case 0xAu:
      OUTLINED_FUNCTION_113_9();
      v305 = OUTLINED_FUNCTION_132_9();
      v235 = v373;
      v306(v305);
      OUTLINED_FUNCTION_41_34(&a18);
      sub_1D56149B8();
      v307 = OUTLINED_FUNCTION_45_1();
      v21 = v374;
      if (__swift_getEnumTagSinglePayload(v307, v308, v374) == 1)
      {
        v309 = OUTLINED_FUNCTION_67_0();
        v310(v309);
        v251 = &qword_1EC7F2D28;
        v252 = &unk_1D564ADC0;
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_69_2(&v359);
      v340 = OUTLINED_FUNCTION_17_59();
      v341(v340);
      v322 = &unk_1EC7F2EA0;
      v323 = MEMORY[0x1E6977420];
      goto LABEL_55;
    case 0xBu:
      OUTLINED_FUNCTION_113_9();
      v255 = OUTLINED_FUNCTION_132_9();
      v235 = v378;
      v256(v255);
      v20 = v376;
      sub_1D560FCD8();
      v257 = OUTLINED_FUNCTION_45_1();
      v21 = v379;
      if (__swift_getEnumTagSinglePayload(v257, v258, v379) == 1)
      {
        v259 = OUTLINED_FUNCTION_67_0();
        v260(v259);
        v251 = &qword_1EC7F2D20;
        v252 = &unk_1D564F660;
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_69_2(&v360);
      v317 = OUTLINED_FUNCTION_17_59();
      v318(v317);
      v322 = &unk_1EC7F2E98;
      v323 = MEMORY[0x1E6975AA8];
LABEL_55:
      sub_1D5286090(v322, v323);
      OUTLINED_FUNCTION_252_0();
      sub_1D5614C48();
      v344 = OUTLINED_FUNCTION_210_3();
      v345(v344, v21);
      v346 = OUTLINED_FUNCTION_124_7();
      v347(v346, v235);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v21 = v384;
      sub_1D5285360();
      v265 = *(v375 + 28);
      v23 = v381;
      sub_1D4FB8150();
      v266 = OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_14_54(v266, v267);
      if (v262)
      {
        OUTLINED_FUNCTION_16_66();
        sub_1D5285EA4(v21, v268);
        v251 = &qword_1EC7ECD80;
        v252 = &qword_1D5622F70;
LABEL_32:
        v264 = v23;
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_212_3();
      sub_1D5285360();
      sub_1D5286090(&qword_1EC7EDB40, type metadata accessor for CloudTVEpisode.Associations);
      OUTLINED_FUNCTION_198_4();
      OUTLINED_FUNCTION_190_4();
      v254 = type metadata accessor for CloudTVEpisode;
LABEL_58:
      sub_1D5285EA4(v21, v254);
      break;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v21 = v385;
      sub_1D5285360();
      OUTLINED_FUNCTION_295_0(v380);
      if (v299 == 1)
      {
        v254 = type metadata accessor for CloudTVShow;
      }

      else
      {

        sub_1D4FCEEA0();
        v337 = v389;
        sub_1D5614C48();
        if (v337)
        {
          v254 = type metadata accessor for CloudTVShow;
        }

        else
        {
          OUTLINED_FUNCTION_164_5();
        }
      }

      goto LABEL_58;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      OUTLINED_FUNCTION_261_0();
      sub_1D5285360();
      OUTLINED_FUNCTION_295_0(v383);
      if (v253 == 1)
      {
        v254 = type metadata accessor for CloudUploadedVideo;
      }

      else
      {

        sub_1D517B7D8();
        v316 = v389;
        sub_1D5614C48();
        if (v316)
        {
          v254 = type metadata accessor for CloudUploadedVideo;
        }

        else
        {
          OUTLINED_FUNCTION_165_6();
        }
      }

      goto LABEL_58;
    default:
      OUTLINED_FUNCTION_67(&v361);
      v244 = OUTLINED_FUNCTION_68_4();
      v245(v244);
      sub_1D560F298();
      v246 = OUTLINED_FUNCTION_45_1();
      if (__swift_getEnumTagSinglePayload(v246, v247, v231) == 1)
      {
        v248 = *(v239 + 8);
        v249 = OUTLINED_FUNCTION_121();
        v250(v249);
        v251 = &qword_1EC7F2D60;
        v252 = &unk_1D564ADF0;
LABEL_46:
        v264 = v20;
LABEL_47:
        sub_1D4E50004(v264, v251, v252);
      }

      else
      {

        OUTLINED_FUNCTION_69_2(&v349);
        v330 = OUTLINED_FUNCTION_59_2();
        v331(v330);
        sub_1D5286090(&qword_1EC7F2EF0, MEMORY[0x1E6975618]);
        OUTLINED_FUNCTION_252_0();
        sub_1D5614C48();
        v332 = OUTLINED_FUNCTION_210_3();
        v333(v332, v231);
        (*(v239 + 8))(v21, v235);
      }

      break;
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void CloudMusicShareableItem.mergeMetadata(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v26;
  a20 = v27;
  v379 = v21;
  v380 = v20;
  v377[0] = v28;
  v30 = v29;
  v372 = type metadata accessor for CloudUploadedVideo(0);
  v31 = OUTLINED_FUNCTION_14(v372);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v375 = v34;
  v35 = OUTLINED_FUNCTION_70_0();
  v368 = type metadata accessor for CloudTVShow(v35);
  v36 = OUTLINED_FUNCTION_14(v368);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v374 = v39;
  v40 = OUTLINED_FUNCTION_70_0();
  v365 = type metadata accessor for CloudTVEpisode(v40);
  v41 = OUTLINED_FUNCTION_14(v365);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  v373 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D68, &unk_1D565D150);
  OUTLINED_FUNCTION_22(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  v366 = v49;
  OUTLINED_FUNCTION_70_0();
  v371 = sub_1D560FD58();
  v50 = OUTLINED_FUNCTION_4(v371);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v53);
  v54 = sub_1D560FD68();
  v55 = OUTLINED_FUNCTION_4(v54);
  v369 = v56;
  v370 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  v367 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D70, &unk_1D564AE00);
  OUTLINED_FUNCTION_22(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v64);
  v364 = sub_1D5614A08();
  v65 = OUTLINED_FUNCTION_4(v364);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v68);
  v69 = sub_1D5614A18();
  v70 = OUTLINED_FUNCTION_4(v69);
  v362[1] = v71;
  v363 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  v362[0] = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF368, &unk_1D56310C0);
  OUTLINED_FUNCTION_22(v75);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v79);
  v80 = sub_1D5611988();
  v81 = OUTLINED_FUNCTION_12_0(v80, &a17);
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v84);
  v85 = sub_1D5611998();
  v86 = OUTLINED_FUNCTION_12_0(v85, &a16);
  v358 = v87;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_83_16(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D78, &unk_1D564AE10);
  OUTLINED_FUNCTION_22(v91);
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v95);
  v96 = sub_1D5610C38();
  v97 = OUTLINED_FUNCTION_12_0(v96, &a12);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v100);
  v101 = sub_1D5610C48();
  v102 = OUTLINED_FUNCTION_12_0(v101, &a11);
  v354 = v103;
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_77_13(v106);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D80, &unk_1D565D160);
  OUTLINED_FUNCTION_22(v107);
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v111);
  v112 = sub_1D56108F8();
  v113 = OUTLINED_FUNCTION_12_0(v112, &v380);
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v116);
  v117 = sub_1D5610908();
  v118 = OUTLINED_FUNCTION_12_0(v117, &v379);
  v351 = v119;
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v122);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D88, &qword_1D564AE20);
  OUTLINED_FUNCTION_22(v123);
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v127);
  v128 = sub_1D5610578();
  v129 = OUTLINED_FUNCTION_12_0(v128, &v376);
  v131 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v132);
  v133 = sub_1D5610588();
  v134 = OUTLINED_FUNCTION_12_0(v133, &v375);
  v348[1] = v135;
  v137 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v138);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D90, &qword_1D564AE28);
  OUTLINED_FUNCTION_22(v139);
  v141 = *(v140 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v143);
  v144 = sub_1D560D058();
  v145 = OUTLINED_FUNCTION_12_0(v144, &v371);
  v147 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v148);
  v149 = sub_1D560D068();
  v150 = OUTLINED_FUNCTION_12_0(v149, &v370);
  v346 = v151;
  v153 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_5_0();
  v155 = OUTLINED_FUNCTION_48(v154);
  v156 = type metadata accessor for CloudMusicMovie(v155);
  v157 = OUTLINED_FUNCTION_20(v156, &v361);
  v159 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_94_15(v160);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D98, &qword_1D564AE30);
  OUTLINED_FUNCTION_22(v161);
  v163 = *(v162 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v164);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v165);
  v166 = sub_1D560F468();
  v167 = OUTLINED_FUNCTION_12_0(v166, &v365);
  v169 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v167);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v170);
  v171 = sub_1D560F478();
  v172 = OUTLINED_FUNCTION_12_0(v171, &v364);
  v343 = v173;
  v175 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v172);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v176);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DA0, &qword_1D564AE38);
  OUTLINED_FUNCTION_22(v177);
  v179 = *(v178 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v180);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v181);
  v182 = sub_1D560FAF8();
  v183 = OUTLINED_FUNCTION_12_0(v182, &v360);
  v185 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v183);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v186);
  v187 = sub_1D560FB08();
  v188 = OUTLINED_FUNCTION_12_0(v187, &v359);
  v190 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v188);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v191);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DA8, &unk_1D564AE40);
  OUTLINED_FUNCTION_22(v192);
  v194 = *(v193 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v195);
  OUTLINED_FUNCTION_30_8();
  v196 = sub_1D560F798();
  v197 = OUTLINED_FUNCTION_12_0(v196, &v356);
  v199 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v197);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v200);
  v201 = sub_1D560F7A8();
  v202 = OUTLINED_FUNCTION_12_0(v201, &v355);
  v204 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v202);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DB0, &unk_1D565D170);
  OUTLINED_FUNCTION_22(v205);
  v207 = *(v206 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v208);
  OUTLINED_FUNCTION_18_3();
  v209 = sub_1D560F2F8();
  v210 = OUTLINED_FUNCTION_4(v209);
  v212 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v210);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v213 = sub_1D560F308();
  v214 = OUTLINED_FUNCTION_4(v213);
  v376 = v215;
  v217 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v214);
  OUTLINED_FUNCTION_13_0();
  v218 = v30;
  v219 = type metadata accessor for CloudMusicShareableItem();
  v220 = OUTLINED_FUNCTION_14(v219);
  v222 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v220);
  OUTLINED_FUNCTION_5();
  v225 = v224 - v223;
  v226 = *(v218 + 16);
  v377[1] = v218;
  if (v226)
  {

    v378 = v218;
  }

  else
  {
    v378 = 0;
  }

  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_186(&v354);
      v268 = *(v267 + 32);
      OUTLINED_FUNCTION_151();
      v270(v269);
      sub_1D560F728();
      OUTLINED_FUNCTION_50_0(v25, 1, &v356);
      if (v232)
      {
        v271 = *(v213 + 8);
        v272 = OUTLINED_FUNCTION_27_1();
        v273(v272);
        v233 = &qword_1EC7F2DA8;
        v234 = &unk_1D564AE40;
        v274 = v25;
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_69_23(&v344);
      v316 = OUTLINED_FUNCTION_74_19();
      v317(v316);
      sub_1D5286090(&qword_1EC7F2F48, MEMORY[0x1E69757F0]);
      OUTLINED_FUNCTION_268_0();
      if (v218)
      {
        v318 = *(v22 + 8);
        v319 = OUTLINED_FUNCTION_59_2();
        v320(v319);
        v321 = *(v213 + 8);
      }

      else
      {
        v338 = *(v22 + 8);
        v339 = OUTLINED_FUNCTION_59_2();
        v340(v339);
        v341 = *(v213 + 8);
      }

      v322 = OUTLINED_FUNCTION_27_1();
      v323(v322);
      goto LABEL_71;
    case 2u:
      OUTLINED_FUNCTION_69_2(&v358);
      OUTLINED_FUNCTION_104_15();
      OUTLINED_FUNCTION_140();
      v250(v249);
      OUTLINED_FUNCTION_84_14(&v357);
      sub_1D560FA88();
      v251 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_50_0(v251, v252, &v360);
      if (!v232)
      {

        OUTLINED_FUNCTION_69_23(&v345);
        v307 = OUTLINED_FUNCTION_34_3();
        v308(v307);
        v302 = &unk_1EC7F2F40;
        v303 = MEMORY[0x1E6975A10];
        goto LABEL_62;
      }

      v253 = OUTLINED_FUNCTION_52_27();
      v254(v253);
      v233 = &qword_1EC7F2DA0;
      v234 = &qword_1D564AE38;
      goto LABEL_51;
    case 3u:
      OUTLINED_FUNCTION_69_2(&v363);
      OUTLINED_FUNCTION_104_15();
      OUTLINED_FUNCTION_140();
      v256(v255);
      OUTLINED_FUNCTION_84_14(v362);
      sub_1D560F3F8();
      v257 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_50_0(v257, v258, &v365);
      if (!v232)
      {

        OUTLINED_FUNCTION_69_23(&v346);
        v309 = OUTLINED_FUNCTION_34_3();
        v310(v309);
        v302 = &unk_1EC7F2F38;
        v303 = MEMORY[0x1E69756C8];
        goto LABEL_62;
      }

      v259 = OUTLINED_FUNCTION_52_27();
      v260(v259);
      v233 = &qword_1EC7F2D98;
      v234 = &qword_1D564AE30;
      goto LABEL_51;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_117_0(&v366);
      sub_1D5285360();
      OUTLINED_FUNCTION_194_4(v342);
      if (!v232)
      {

        a10 = v209;
        sub_1D52852B8();
        OUTLINED_FUNCTION_245_0();
        OUTLINED_FUNCTION_7_89();
        sub_1D5285EA4(v20, v304);
        sub_1D4EA7410(v209);
        goto LABEL_71;
      }

      v235 = type metadata accessor for CloudMusicMovie;
      goto LABEL_41;
    case 5u:
      OUTLINED_FUNCTION_69_2(&v369);
      OUTLINED_FUNCTION_104_15();
      OUTLINED_FUNCTION_140();
      v276(v275);
      OUTLINED_FUNCTION_84_14(&v367);
      sub_1D560CFE8();
      v277 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_50_0(v277, v278, &v371);
      if (!v232)
      {

        OUTLINED_FUNCTION_69_23(&v347);
        v324 = OUTLINED_FUNCTION_34_3();
        v325(v324);
        v302 = &unk_1EC7F2F28;
        v303 = MEMORY[0x1E6974DC0];
        goto LABEL_62;
      }

      v279 = OUTLINED_FUNCTION_52_27();
      v280(v279);
      v233 = &qword_1EC7F2D90;
      v234 = &qword_1D564AE28;
      goto LABEL_51;
    case 6u:
      OUTLINED_FUNCTION_69_2(&v374);
      OUTLINED_FUNCTION_104_15();
      OUTLINED_FUNCTION_140();
      v282(v281);
      OUTLINED_FUNCTION_84_14(&v372);
      sub_1D56104F8();
      v283 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_50_0(v283, v284, &v376);
      if (!v232)
      {

        OUTLINED_FUNCTION_69_23(v348);
        v326 = OUTLINED_FUNCTION_34_3();
        v327(v326);
        v302 = &unk_1EC7F2F20;
        v303 = MEMORY[0x1E6975CD8];
        goto LABEL_62;
      }

      v285 = OUTLINED_FUNCTION_52_27();
      v286(v285);
      v233 = &qword_1EC7F2D88;
      v234 = &qword_1D564AE20;
      goto LABEL_51;
    case 7u:
      OUTLINED_FUNCTION_69_2(&v378);
      OUTLINED_FUNCTION_104_15();
      OUTLINED_FUNCTION_140();
      v262(v261);
      OUTLINED_FUNCTION_84_14(v377);
      sub_1D5610888();
      v263 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_50_0(v263, v264, &v380);
      if (!v232)
      {

        OUTLINED_FUNCTION_69_23(&v349);
        v311 = OUTLINED_FUNCTION_34_3();
        v312(v311);
        v302 = &unk_1EC7F2F18;
        v303 = MEMORY[0x1E6975E18];
        goto LABEL_62;
      }

      v265 = OUTLINED_FUNCTION_52_27();
      v266(v265);
      v233 = &qword_1EC7F2D80;
      v234 = &unk_1D565D160;
      goto LABEL_51;
    case 8u:
      OUTLINED_FUNCTION_69_2(&a10);
      OUTLINED_FUNCTION_104_15();
      OUTLINED_FUNCTION_140();
      v294(v293);
      OUTLINED_FUNCTION_84_14(&v381);
      sub_1D5610BC8();
      v295 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_50_0(v295, v296, &a12);
      if (!v232)
      {

        OUTLINED_FUNCTION_69_23(&v350);
        v330 = OUTLINED_FUNCTION_34_3();
        v331(v330);
        v302 = &unk_1EC7F2F10;
        v303 = MEMORY[0x1E6975FD0];
        goto LABEL_62;
      }

      v297 = OUTLINED_FUNCTION_52_27();
      v298(v297);
      v233 = &qword_1EC7F2D78;
      v234 = &unk_1D564AE10;
      goto LABEL_51;
    case 9u:
      OUTLINED_FUNCTION_69_2(&a15);
      OUTLINED_FUNCTION_104_15();
      OUTLINED_FUNCTION_140();
      v244(v243);
      OUTLINED_FUNCTION_84_14(&a13);
      sub_1D5611958();
      v245 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_50_0(v245, v246, &a17);
      if (!v232)
      {

        OUTLINED_FUNCTION_69_23(&v351);
        v305 = OUTLINED_FUNCTION_34_3();
        v306(v305);
        v302 = &unk_1EC7F2F08;
        v303 = MEMORY[0x1E6976288];
        goto LABEL_62;
      }

      v247 = OUTLINED_FUNCTION_52_27();
      v248(v247);
      v233 = &qword_1EC7EF368;
      v234 = &unk_1D56310C0;
      goto LABEL_51;
    case 0xAu:
      v287 = v362[0];
      OUTLINED_FUNCTION_40_3();
      v288(v287, v225, v363);
      OUTLINED_FUNCTION_84_14(&a18);
      sub_1D5614998();
      v289 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_14_54(v289, v290);
      if (!v232)
      {

        OUTLINED_FUNCTION_69_23(&v352);
        v328 = OUTLINED_FUNCTION_34_3();
        v329(v328);
        v302 = &unk_1EC7F2F00;
        v303 = MEMORY[0x1E6977450];
        goto LABEL_62;
      }

      v291 = OUTLINED_FUNCTION_52_27();
      v292(v291);
      v233 = &qword_1EC7F2D70;
      v234 = &unk_1D564AE00;
      goto LABEL_51;
    case 0xBu:
      v236 = v370;
      OUTLINED_FUNCTION_40_3();
      v237 = v367;
      v238(v367, v225, v236);
      v24 = v366;
      v20 = v237;
      sub_1D560FCB8();
      v239 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_14_54(v239, v240);
      if (v232)
      {
        v241 = OUTLINED_FUNCTION_52_27();
        v242(v241);
        v233 = &qword_1EC7F2D68;
        v234 = &unk_1D565D150;
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_69_23(&v353);
      v300 = OUTLINED_FUNCTION_34_3();
      v301(v300);
      v302 = &unk_1EC7F2EF8;
      v303 = MEMORY[0x1E6975B18];
LABEL_62:
      sub_1D5286090(v302, v303);
      OUTLINED_FUNCTION_268_0();
      if (v218)
      {
        v332 = *(v20 + 8);
      }

      else
      {
        v337 = *(v20 + 8);
      }

      v333 = OUTLINED_FUNCTION_59_2();
      v334(v333);
      v335 = OUTLINED_FUNCTION_52_27();
      v336(v335);
      goto LABEL_71;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v20 = v373;
      sub_1D5285360();
      OUTLINED_FUNCTION_194_4(v365);
      if (v232)
      {
        v235 = type metadata accessor for CloudTVEpisode;
        goto LABEL_41;
      }

      a10 = v209;
      sub_1D5000BE4();
      OUTLINED_FUNCTION_245_0();
      if (v218)
      {
        v299 = type metadata accessor for CloudTVEpisode;
      }

      else
      {
        OUTLINED_FUNCTION_59_22();
      }

      goto LABEL_70;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v20 = v374;
      sub_1D5285360();
      OUTLINED_FUNCTION_194_4(v368);
      if (v232)
      {
        v235 = type metadata accessor for CloudTVShow;
        goto LABEL_41;
      }

      a10 = v209;
      sub_1D4FCEEF4();
      OUTLINED_FUNCTION_245_0();
      if (v218)
      {
        v299 = type metadata accessor for CloudTVShow;
      }

      else
      {
        OUTLINED_FUNCTION_57_28();
      }

      goto LABEL_70;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v20 = v375;
      sub_1D5285360();
      OUTLINED_FUNCTION_194_4(v372);
      if (v232)
      {
        v235 = type metadata accessor for CloudUploadedVideo;
LABEL_41:
        sub_1D5285EA4(v20, v235);
      }

      else
      {

        a10 = v209;
        sub_1D517B82C();
        OUTLINED_FUNCTION_245_0();
        if (v218)
        {
          v299 = type metadata accessor for CloudUploadedVideo;
        }

        else
        {
          OUTLINED_FUNCTION_58_27();
        }

LABEL_70:
        sub_1D5285EA4(v20, v299);
        sub_1D4EA7410(v209);
      }

LABEL_71:
      OUTLINED_FUNCTION_26();
      return;
    default:
      v227 = v376;
      v228 = OUTLINED_FUNCTION_135_2(v376);
      v229(v228, v225, v213);
      sub_1D560F278();
      v230 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_14_54(v230, v231);
      if (v232)
      {
        (*(v227 + 8))(v20, v213);
        v233 = &qword_1EC7F2DB0;
        v234 = &unk_1D565D170;
LABEL_51:
        v274 = v24;
LABEL_52:
        sub_1D4E50004(v274, v233, v234);
      }

      else
      {

        OUTLINED_FUNCTION_35_0(&v343);
        v313(v23, v24, v209);
        sub_1D5286090(&qword_1EC7F2F50, MEMORY[0x1E6975648]);
        OUTLINED_FUNCTION_268_0();
        (*(v227 + 8))(v23, v209);
        v314 = OUTLINED_FUNCTION_276_0();
        v315(v314);
      }

      goto LABEL_71;
  }
}

uint64_t sub_1D527DB5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_1D527DC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D527DB5C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D527DCC4(uint64_t a1)
{
  v2 = sub_1D528530C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D527DD00(uint64_t a1)
{
  v2 = sub_1D528530C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudMusicShareableItem.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v22;
  a20 = v23;
  v303 = v20;
  v25 = v24;
  v296 = v26;
  v27 = type metadata accessor for CloudUploadedVideo(0);
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v32 = OUTLINED_FUNCTION_48(v31);
  v33 = type metadata accessor for CloudTVShow(v32);
  v34 = OUTLINED_FUNCTION_22(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v38 = OUTLINED_FUNCTION_48(v37);
  v39 = type metadata accessor for CloudTVEpisode(v38);
  v40 = OUTLINED_FUNCTION_22(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v43);
  v44 = sub_1D560FD68();
  v45 = OUTLINED_FUNCTION_12_0(v44, &v295);
  v272 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v49);
  v50 = sub_1D5614A18();
  v51 = OUTLINED_FUNCTION_12_0(v50, &v299);
  v275 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v55);
  v56 = sub_1D5611998();
  v57 = OUTLINED_FUNCTION_12_0(v56, &a10);
  v284 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v61);
  v62 = sub_1D5610C48();
  v63 = OUTLINED_FUNCTION_12_0(v62, &v301);
  v277 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v67);
  v68 = sub_1D5610588();
  v69 = OUTLINED_FUNCTION_12_0(v68, &v306);
  v281 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v73);
  v74 = sub_1D560D068();
  v75 = OUTLINED_FUNCTION_12_0(v74, &a13);
  v285 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5_0();
  v80 = OUTLINED_FUNCTION_48(v79);
  v81 = type metadata accessor for CloudMusicMovie(v80);
  v82 = OUTLINED_FUNCTION_22(v81);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5_0();
  v288 = v85;
  OUTLINED_FUNCTION_70_0();
  v86 = sub_1D560F478();
  v87 = OUTLINED_FUNCTION_12_0(v86, &a16);
  v287 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v91);
  v92 = sub_1D5615C08();
  v93 = OUTLINED_FUNCTION_12_0(v92, &v308);
  v283 = v94;
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v97);
  v98 = sub_1D5610A78();
  v99 = OUTLINED_FUNCTION_4(v98);
  v289 = v100;
  v290 = v99;
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_13_2();
  v291 = v104;
  OUTLINED_FUNCTION_70_0();
  v105 = sub_1D560F7A8();
  v106 = OUTLINED_FUNCTION_4(v105);
  v292 = v107;
  v293 = v106;
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_5_0();
  v294 = v110;
  OUTLINED_FUNCTION_70_0();
  v298 = sub_1D560F308();
  v111 = OUTLINED_FUNCTION_4(v298);
  v295 = v112;
  v114 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_5_0();
  v297 = v115;
  OUTLINED_FUNCTION_70_0();
  v116 = sub_1D5610088();
  v117 = OUTLINED_FUNCTION_4(v116);
  v300 = v118;
  v301 = v117;
  v120 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_205_3();
  v122 = MEMORY[0x1EEE9AC00](v121);
  v124 = v267 - v123;
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_13_2();
  v302 = v125;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F58, &unk_1D564AE70);
  OUTLINED_FUNCTION_4(v126);
  v299 = v127;
  v129 = *(v128 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_14_3();
  v131 = type metadata accessor for CloudMusicShareableItem();
  v132 = OUTLINED_FUNCTION_14(v131);
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_5();
  v137 = v136 - v135;
  v139 = v25[3];
  v138 = v25[4];
  a10 = v25;
  v140 = OUTLINED_FUNCTION_121();
  __swift_project_boxed_opaque_existential_1(v140, v141);
  sub_1D528530C();
  v142 = v303;
  sub_1D5616398();
  if (!v142)
  {
    v271 = v21;
    v303 = v124;
    v269 = v137;
    v143 = v300;
    v270 = v131;
    OUTLINED_FUNCTION_54_25();
    sub_1D5286090(v144, v145);
    v147 = v301;
    v146 = v302;
    sub_1D5615FD8();
    v148 = v146;
    v149 = v143;
    v150 = v303;
    (*(v143 + 16))(v303, v148, v147);
    sub_1D560F1E8();
    v151 = sub_1D5615298();

    if (v151)
    {
      v152 = *(v149 + 8);
      v152(v303, v147);
LABEL_10:
      OUTLINED_FUNCTION_183_4();
      sub_1D560F258();
      v300 = 0;
      v152(v302, v147);
      v157 = *(v299 + 8);
      v158 = OUTLINED_FUNCTION_143();
      v159(v158);
      OUTLINED_FUNCTION_27_46();
      OUTLINED_FUNCTION_287_0();
      v160();
LABEL_11:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_140_3();
      sub_1D5285360();
      __swift_destroy_boxed_opaque_existential_1(v126);
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_57_5(&v291);
    sub_1D560F1C8();
    OUTLINED_FUNCTION_54_25();
    sub_1D5286090(v153, v154);
    OUTLINED_FUNCTION_134_0();
    v155 = sub_1D5614D18();
    v268 = *(v149 + 8);
    v268(v151, v147);
    if (v155)
    {
      v152 = v268;
      v268(v303, v147);
      goto LABEL_10;
    }

    v300 = 0;
    sub_1D560F698();
    v161 = sub_1D5615298();

    if (v161 & 1) != 0 || (OUTLINED_FUNCTION_57_5(&v291), sub_1D560F668(), v162 = sub_1D5614D18(), OUTLINED_FUNCTION_134_0(), OUTLINED_FUNCTION_123_8(), v163(), (v162))
    {
      v164 = OUTLINED_FUNCTION_127_8();
      v150(v164);
      OUTLINED_FUNCTION_183_4();
      v165 = v294;
      v166 = v300;
      sub_1D560F708();
      v300 = v166;
      v167 = OUTLINED_FUNCTION_141();
      if (!v166)
      {
        v150(v167);
        v171 = OUTLINED_FUNCTION_37_29();
        v172(v171, v126);
        v173 = OUTLINED_FUNCTION_27_46();
        v174(v173, v165);
        goto LABEL_11;
      }

      v150(v167);
      v168 = OUTLINED_FUNCTION_37_29();
      v170 = v126;
      goto LABEL_28;
    }

    sub_1D560F9D8();
    OUTLINED_FUNCTION_273_0();
    OUTLINED_FUNCTION_70_2();
    v267[1] = v126;
    sub_1D560F358();
    OUTLINED_FUNCTION_273_0();
    OUTLINED_FUNCTION_70_2();
    if (qword_1EDD5C7A0 != -1)
    {
      swift_once();
    }

    v175 = v303;
    v176 = sub_1D5615298();
    v177 = v288;
    if (v176)
    {
      v179 = v301;
      v178 = v302;
      v180 = OUTLINED_FUNCTION_127_8();
      v175(v180);
      OUTLINED_FUNCTION_183_4();
      v181 = v300;
      CloudMusicMovie.init(from:)();
      v300 = v181;
      v182 = v178;
      if (!v181)
      {
        (v175)(v178, v179);
        v183 = OUTLINED_FUNCTION_12_67();
        v184(v183);
        OUTLINED_FUNCTION_5_90();
        OUTLINED_FUNCTION_142_8();
        sub_1D5285360();
        goto LABEL_11;
      }
    }

    else
    {
      sub_1D560CF58();
      OUTLINED_FUNCTION_273_0();
      OUTLINED_FUNCTION_70_2();
      if ((v177 & 1) == 0)
      {
        OUTLINED_FUNCTION_57_5(&v291);
        sub_1D560CF38();
        v185 = OUTLINED_FUNCTION_269_0();
        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_123_8();
        v186();
        if ((v185 & 1) == 0)
        {
          sub_1D5610278();
          OUTLINED_FUNCTION_273_0();
          OUTLINED_FUNCTION_70_2();
          if ((v177 & 1) == 0)
          {
            OUTLINED_FUNCTION_57_5(&v291);
            sub_1D56100D8();
            v195 = OUTLINED_FUNCTION_269_0();
            OUTLINED_FUNCTION_116();
            OUTLINED_FUNCTION_123_8();
            v196();
            if ((v195 & 1) == 0)
            {
              sub_1D5610B38();
              OUTLINED_FUNCTION_273_0();
              OUTLINED_FUNCTION_70_2();
              if (v177)
              {
                OUTLINED_FUNCTION_62_25();
                v204();
                OUTLINED_FUNCTION_266();
                OUTLINED_FUNCTION_217_2(&v304);
                sub_1D5610BA8();
                v300 = 0;
                v205 = OUTLINED_FUNCTION_70_17();
                v206(v205);
                v207 = OUTLINED_FUNCTION_12_67();
                v208(v207);
                v209 = OUTLINED_FUNCTION_18_65(&v300);
                v210(v209, v280, v278);
              }

              else
              {
                sub_1D56118C8();
                OUTLINED_FUNCTION_273_0();
                OUTLINED_FUNCTION_70_2();
                sub_1D5614908();
                sub_1D5615298();
                OUTLINED_FUNCTION_70_2();
                OUTLINED_FUNCTION_57_5(&v291);
                sub_1D56148E8();
                v211 = v301;
                v212 = sub_1D5614D18();
                OUTLINED_FUNCTION_116();
                OUTLINED_FUNCTION_123_8();
                v213();
                if (v212)
                {
                  OUTLINED_FUNCTION_62_25();
                  v214();
                  OUTLINED_FUNCTION_266();
                  OUTLINED_FUNCTION_217_2(&v302);
                  sub_1D5614978();
                  v300 = 0;
                  v215 = OUTLINED_FUNCTION_70_17();
                  v216(v215);
                  v217 = OUTLINED_FUNCTION_12_67();
                  v218(v217);
                  v219 = OUTLINED_FUNCTION_18_65(&v298);
                  v220(v219, v279, v276);
                }

                else
                {
                  sub_1D560FBE8();
                  sub_1D5615298();
                  OUTLINED_FUNCTION_70_2();
                  if (v211)
                  {
                    OUTLINED_FUNCTION_62_25();
                    v221();
                    OUTLINED_FUNCTION_266();
                    OUTLINED_FUNCTION_217_2(&v297);
                    sub_1D560FC98();
                    v300 = 0;
                    v222 = OUTLINED_FUNCTION_70_17();
                    v223(v222);
                    v224 = OUTLINED_FUNCTION_12_67();
                    v225(v224);
                    v226 = OUTLINED_FUNCTION_18_65(&v294);
                    v227(v226, v274, v273);
                  }

                  else
                  {
                    if (qword_1EDD57200 != -1)
                    {
                      swift_once();
                    }

                    if (sub_1D5615298())
                    {
                      OUTLINED_FUNCTION_62_25();
                      v228();
                      OUTLINED_FUNCTION_266();
                      OUTLINED_FUNCTION_217_2(&v296);
                      CloudTVEpisode.init(from:)();
                      v300 = 0;
                      v229 = OUTLINED_FUNCTION_70_17();
                      v230(v229);
                      v231 = OUTLINED_FUNCTION_12_67();
                      v232(v231);
                      OUTLINED_FUNCTION_4_88();
                      OUTLINED_FUNCTION_142_8();
                      sub_1D5285360();
                    }

                    else
                    {
                      if (qword_1EDD588B0 != -1)
                      {
                        swift_once();
                      }

                      if (sub_1D5615298())
                      {
                        OUTLINED_FUNCTION_62_25();
                        v233();
                        OUTLINED_FUNCTION_266();
                        OUTLINED_FUNCTION_217_2(&v293);
                        CloudTVShow.init(from:)();
                        v300 = 0;
                        v234 = OUTLINED_FUNCTION_70_17();
                        v235(v234);
                        v236 = OUTLINED_FUNCTION_12_67();
                        v237(v236);
                        OUTLINED_FUNCTION_3_117();
                        OUTLINED_FUNCTION_142_8();
                        sub_1D5285360();
                      }

                      else
                      {
                        if (qword_1EDD562A8 != -1)
                        {
                          swift_once();
                        }

                        v238 = sub_1D5615298();
                        OUTLINED_FUNCTION_62_25();
                        v239();
                        if ((v238 & 1) == 0)
                        {
                          v244 = a10;
                          v245 = a10[3];
                          v246 = a10[4];
                          v247 = OUTLINED_FUNCTION_13_8();
                          __swift_project_boxed_opaque_existential_1(v247, v248);
                          OUTLINED_FUNCTION_82();
                          sub_1D5616348();
                          v304 = 0;
                          v305 = 0xE000000000000000;
                          sub_1D5615B68();
                          MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D5689350);
                          OUTLINED_FUNCTION_54_25();
                          sub_1D5286090(v249, v250);
                          v251 = sub_1D56160F8();
                          MEMORY[0x1DA6EAC70](v251);

                          v126 = v244;
                          MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D5689370);
                          OUTLINED_FUNCTION_186(&v307);
                          sub_1D5615BF8();
                          v252 = sub_1D5615C18();
                          swift_allocError();
                          v254 = v253;
                          v255 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
                          *v254 = v270;
                          v256 = OUTLINED_FUNCTION_218_3(v255);
                          v258 = *(v257 - 256);
                          v259(v256);
                          v260 = *MEMORY[0x1E69E6AF8];
                          OUTLINED_FUNCTION_24_0(v252);
                          (*(v261 + 104))(v254);
                          swift_willThrow();
                          v262 = OUTLINED_FUNCTION_124_7();
                          v263(v262, v258);
                          v264 = OUTLINED_FUNCTION_70_17();
                          v265(v264);
                          v266 = OUTLINED_FUNCTION_12_67();
                          v156(v266);
                          goto LABEL_4;
                        }

                        OUTLINED_FUNCTION_266();
                        OUTLINED_FUNCTION_217_2(&v292);
                        CloudUploadedVideo.init(from:)();
                        v300 = 0;
                        v240 = OUTLINED_FUNCTION_70_17();
                        v241(v240);
                        v242 = OUTLINED_FUNCTION_12_67();
                        v243(v242);
                        OUTLINED_FUNCTION_6_86();
                        OUTLINED_FUNCTION_142_8();
                        sub_1D5285360();
                      }
                    }
                  }
                }
              }

              v126 = a10;
              goto LABEL_11;
            }
          }

          v197 = v301;
          v198 = v268;
          v268(v175, v301);
          OUTLINED_FUNCTION_183_4();
          OUTLINED_FUNCTION_57_5(&a11);
          v199 = v300;
          sub_1D56104D8();
          v300 = v199;
          if (!v199)
          {
            v198(v302, v197);
            v200 = OUTLINED_FUNCTION_12_67();
            v201(v200);
            v202 = OUTLINED_FUNCTION_18_65(&v305);
            v203(v202, v151, v282);
            goto LABEL_11;
          }

          v198(v302, v197);
          goto LABEL_27;
        }
      }

      v179 = v301;
      v187 = v302;
      v188 = OUTLINED_FUNCTION_127_8();
      v175(v188);
      OUTLINED_FUNCTION_183_4();
      OUTLINED_FUNCTION_57_5(&a14);
      v189 = v300;
      sub_1D560CFC8();
      v300 = v189;
      if (!v189)
      {
        v190 = OUTLINED_FUNCTION_141();
        v175(v190);
        v191 = OUTLINED_FUNCTION_12_67();
        v192(v191);
        v193 = OUTLINED_FUNCTION_18_65(&a12);
        v194(v193, v151, v286);
        goto LABEL_11;
      }

      v182 = v187;
    }

    (v175)(v182, v179);
LABEL_27:
    v168 = OUTLINED_FUNCTION_12_67();
LABEL_28:
    v169(v168, v170);
    goto LABEL_4;
  }

  v126 = a10;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v126);
LABEL_5:
  OUTLINED_FUNCTION_26();
}

void CloudMusicShareableItem.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v25;
  a20 = v26;
  a10 = v21;
  v27 = type metadata accessor for CloudUploadedVideo(0);
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v130 = v31;
  v32 = OUTLINED_FUNCTION_70_0();
  v33 = type metadata accessor for CloudTVShow(v32);
  v34 = OUTLINED_FUNCTION_22(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v129 = v37;
  v38 = OUTLINED_FUNCTION_70_0();
  v39 = type metadata accessor for CloudTVEpisode(v38);
  v40 = OUTLINED_FUNCTION_22(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v43 = sub_1D560FD68();
  v128 = OUTLINED_FUNCTION_4(v43);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v46 = sub_1D5614A18();
  v127 = OUTLINED_FUNCTION_4(v46);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v49 = sub_1D5611998();
  v126 = OUTLINED_FUNCTION_4(v49);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v52 = sub_1D5610C48();
  v125 = OUTLINED_FUNCTION_4(v52);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v55 = sub_1D5610908();
  v124 = OUTLINED_FUNCTION_4(v55);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v123 = sub_1D5610588();
  v58 = OUTLINED_FUNCTION_4(v123);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v61);
  v62 = sub_1D560D068();
  v63 = OUTLINED_FUNCTION_12_0(v62, &a16);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  v67 = OUTLINED_FUNCTION_48(v66);
  v68 = type metadata accessor for CloudMusicMovie(v67);
  v69 = OUTLINED_FUNCTION_22(v68);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v72);
  v73 = sub_1D560F478();
  v74 = OUTLINED_FUNCTION_12_0(v73, &a12);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v77);
  v78 = sub_1D560FB08();
  v79 = OUTLINED_FUNCTION_4(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v82 = sub_1D560F7A8();
  v83 = OUTLINED_FUNCTION_4(v82);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v86 = sub_1D560F308();
  v87 = OUTLINED_FUNCTION_4(v86);
  v89 = v88;
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_13_0();
  v92 = type metadata accessor for CloudMusicShareableItem();
  v93 = OUTLINED_FUNCTION_14(v92);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_172(&a9);
      v110 = *(v109 + 32);
      v111 = OUTLINED_FUNCTION_215();
      v112(v111);
      sub_1D560F758();
      (*(v89 + 8))(v24, v82);
      break;
    case 2u:
      OUTLINED_FUNCTION_60_1(&a10);
      v104 = OUTLINED_FUNCTION_75_2();
      v105(v104);
      sub_1D560FAB8();
      (*(v82 + 8))(v23, v78);
      break;
    case 3u:
      OUTLINED_FUNCTION_69_2(&a11);
      OUTLINED_FUNCTION_11_21();
      OUTLINED_FUNCTION_56_1();
      v106();
      OUTLINED_FUNCTION_157_6();
      sub_1D560F428();
      goto LABEL_19;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_117_0(&a13);
      sub_1D5285360();
      OUTLINED_FUNCTION_157_6();
      CloudMusicMovie.encode(to:)();
      v99 = type metadata accessor for CloudMusicMovie;
      goto LABEL_15;
    case 5u:
      OUTLINED_FUNCTION_69_2(&a15);
      OUTLINED_FUNCTION_11_21();
      OUTLINED_FUNCTION_56_1();
      v113();
      OUTLINED_FUNCTION_157_6();
      sub_1D560D018();
      goto LABEL_19;
    case 6u:
      OUTLINED_FUNCTION_69_2(&a18);
      v115 = OUTLINED_FUNCTION_11_21();
      v89 = v123;
      v116(v115, v22, v123);
      OUTLINED_FUNCTION_157_6();
      sub_1D5610528();
      goto LABEL_19;
    case 7u:
      v107 = OUTLINED_FUNCTION_82_17();
      v89 = v124;
      v108(v107, v22, v124);
      OUTLINED_FUNCTION_157_6();
      sub_1D56108B8();
      goto LABEL_19;
    case 8u:
      v119 = OUTLINED_FUNCTION_82_17();
      v89 = v125;
      v120(v119, v22, v125);
      OUTLINED_FUNCTION_157_6();
      sub_1D5610BF8();
      goto LABEL_19;
    case 9u:
      v102 = OUTLINED_FUNCTION_82_17();
      v89 = v126;
      v103(v102, v22, v126);
      OUTLINED_FUNCTION_157_6();
      sub_1D5611978();
      goto LABEL_19;
    case 0xAu:
      v117 = OUTLINED_FUNCTION_82_17();
      v89 = v127;
      v118(v117, v22, v127);
      OUTLINED_FUNCTION_157_6();
      sub_1D56149C8();
      goto LABEL_19;
    case 0xBu:
      v100 = OUTLINED_FUNCTION_82_17();
      v89 = v128;
      v101(v100, v22, v128);
      OUTLINED_FUNCTION_157_6();
      sub_1D560FCE8();
LABEL_19:
      v121 = OUTLINED_FUNCTION_134_8();
      v122(v121, v89);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      OUTLINED_FUNCTION_261_0();
      sub_1D5285360();
      OUTLINED_FUNCTION_157_6();
      CloudTVEpisode.encode(to:)();
      v99 = type metadata accessor for CloudTVEpisode;
      goto LABEL_15;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v20 = v129;
      sub_1D5285360();
      v114 = OUTLINED_FUNCTION_157_6();
      CloudTVShow.encode(to:)(v114);
      v99 = type metadata accessor for CloudTVShow;
      goto LABEL_15;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v20 = v130;
      sub_1D5285360();
      OUTLINED_FUNCTION_157_6();
      CloudUploadedVideo.encode(to:)();
      v99 = type metadata accessor for CloudUploadedVideo;
LABEL_15:
      sub_1D5285EA4(v20, v99);
      break;
    default:
      v96 = *(v89 + 32);
      v97 = OUTLINED_FUNCTION_21_1();
      v98(v97);
      OUTLINED_FUNCTION_157_6();
      sub_1D560F2A8();
      (*(v89 + 8))(v20, v86);
      break;
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D527FED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5286090(&qword_1EC7F2FD0, type metadata accessor for CloudMusicShareableItem);

  return MEMORY[0x1EEDCE1D8](a1, a3, a2, a4, v8);
}

uint64_t sub_1D527FF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5286090(&qword_1EC7F3060, type metadata accessor for CloudMusicShareableItem);

  return MEMORY[0x1EEDCE1D0](a1, a2, a3, v6);
}

void MusicShareableItem.init<A>(_:configuration:sharedRelatedItemStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v933 = v24;
  v26 = v25;
  v939[1] = v27;
  v935 = v29;
  v936 = v28;
  v31 = v30;
  v32 = type metadata accessor for UploadedVideo();
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_78_18(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB20, &unk_1D561F250);
  v38 = OUTLINED_FUNCTION_12_0(v37, v913);
  v884 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_2();
  v44 = OUTLINED_FUNCTION_48(v43);
  v45 = type metadata accessor for CloudUploadedVideo(v44);
  v46 = OUTLINED_FUNCTION_20(v45, &v910);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v49);
  v50 = type metadata accessor for TVShow();
  v51 = OUTLINED_FUNCTION_22(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD0, &qword_1D561F220);
  v56 = OUTLINED_FUNCTION_12_0(v55, v912);
  v881 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_2();
  v62 = OUTLINED_FUNCTION_48(v61);
  v63 = type metadata accessor for CloudTVShow(v62);
  v64 = OUTLINED_FUNCTION_20(v63, &v906);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v67);
  v68 = type metadata accessor for TVEpisode();
  v69 = OUTLINED_FUNCTION_22(v68);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_77_13(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  v74 = OUTLINED_FUNCTION_12_0(v73, v908);
  v876[1] = v75;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13_2();
  v80 = OUTLINED_FUNCTION_48(v79);
  v81 = type metadata accessor for CloudTVEpisode(v80);
  v82 = OUTLINED_FUNCTION_20(v81, &v901);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v85);
  v86 = sub_1D5614408();
  v87 = OUTLINED_FUNCTION_12_0(v86, &v904);
  v873 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  v93 = OUTLINED_FUNCTION_12_0(v92, &v900);
  v871 = v94;
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v98);
  v99 = sub_1D560FD68();
  v100 = OUTLINED_FUNCTION_12_0(v99, &v942);
  v869 = v101;
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v104);
  v105 = sub_1D5613838();
  v106 = OUTLINED_FUNCTION_12_0(v105, &v896);
  v867 = v107;
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v110);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  v112 = OUTLINED_FUNCTION_12_0(v111, &v893);
  v865 = v113;
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v117);
  v118 = sub_1D5614A18();
  v119 = OUTLINED_FUNCTION_12_0(v118, &v940);
  v863 = v120;
  v122 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v123);
  v124 = type metadata accessor for SocialProfile();
  v125 = OUTLINED_FUNCTION_22(v124);
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_95_14(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  v130 = OUTLINED_FUNCTION_12_0(v129, &v888);
  v861 = v131;
  v133 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v135);
  v136 = sub_1D5611998();
  v137 = OUTLINED_FUNCTION_12_0(v136, &v938);
  v859 = v138;
  v140 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v141);
  v142 = sub_1D560F8B8();
  v143 = OUTLINED_FUNCTION_12_0(v142, &v884);
  v857 = v144;
  v146 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v147);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA10, &unk_1D5623490);
  v149 = OUTLINED_FUNCTION_12_0(v148, &v882);
  v854[1] = v150;
  v152 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v154);
  v155 = sub_1D5610C48();
  v156 = OUTLINED_FUNCTION_12_0(v155, &v935);
  v853 = v157;
  v159 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v160);
  v161 = sub_1D5614B68();
  v162 = OUTLINED_FUNCTION_12_0(v161, &v878);
  v851 = v163;
  v165 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v162);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v166);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA830, &qword_1D56233C0);
  v168 = OUTLINED_FUNCTION_12_0(v167, v876);
  v848[2] = v169;
  v171 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v172);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v173);
  v174 = sub_1D5610908();
  v175 = OUTLINED_FUNCTION_12_0(v174, &v932);
  v848[0] = v176;
  v178 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v179);
  v180 = sub_1D560D838();
  v181 = OUTLINED_FUNCTION_12_0(v180, v914);
  v824 = v182;
  v184 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v181);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v185);
  v186 = sub_1D5614828();
  v187 = OUTLINED_FUNCTION_12_0(v186, &a14);
  v823 = v188;
  v190 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v187);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v191);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v192);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_12_0(v193, v917);
  v827 = v194;
  v196 = *(v195 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v197);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v198);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  OUTLINED_FUNCTION_20(v199, v841);
  v201 = *(v200 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v202);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v203);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v204);
  v206 = *(v205 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v207);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v208);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v210 = OUTLINED_FUNCTION_22(v209);
  v212 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v210);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v213);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v214);
  v215 = sub_1D5614898();
  v216 = OUTLINED_FUNCTION_12_0(v215, &v847);
  v832 = v217;
  v219 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v216);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v220);
  v926 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  v221 = OUTLINED_FUNCTION_4(v926);
  v889 = v222;
  v224 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v221);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v225);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v226);
  v227 = sub_1D5610588();
  v228 = OUTLINED_FUNCTION_12_0(v227, &v920);
  v896 = v229;
  v231 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v228);
  OUTLINED_FUNCTION_5_0();
  v925 = v232;
  OUTLINED_FUNCTION_70_0();
  v233 = sub_1D560EEA8();
  v234 = OUTLINED_FUNCTION_12_0(v233, v872);
  v846[1] = v235;
  v237 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v234);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_94_15(v238);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB98, &unk_1D56234C0);
  v240 = OUTLINED_FUNCTION_12_0(v239, &v870);
  v845[1] = v241;
  v243 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v240);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v244);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v245);
  v246 = sub_1D560D068();
  v247 = OUTLINED_FUNCTION_12_0(v246, &v929);
  v844 = v248;
  v250 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v247);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v251);
  v252 = type metadata accessor for MusicMovie();
  v253 = OUTLINED_FUNCTION_22(v252);
  v255 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v253);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v256);
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9E8, &unk_1D561F190);
  v258 = OUTLINED_FUNCTION_12_0(v257, &v866);
  v842[1] = v259;
  v261 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v258);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v262);
  OUTLINED_FUNCTION_13_2();
  v264 = OUTLINED_FUNCTION_48(v263);
  v265 = type metadata accessor for CloudMusicMovie(v264);
  v266 = OUTLINED_FUNCTION_20(v265, &v861);
  v268 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v266);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v269);
  v270 = sub_1D5613C48();
  v271 = OUTLINED_FUNCTION_12_0(v270, &v863);
  v841[2] = v272;
  v274 = *(v273 + 64);
  MEMORY[0x1EEE9AC00](v271);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_86_17(v275);
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  v277 = OUTLINED_FUNCTION_12_0(v276, &v860);
  v840[1] = v278;
  v280 = *(v279 + 64);
  MEMORY[0x1EEE9AC00](v277);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v281);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v282);
  v283 = sub_1D560F478();
  v284 = OUTLINED_FUNCTION_12_0(v283, &v924);
  v839 = v285;
  v287 = *(v286 + 64);
  MEMORY[0x1EEE9AC00](v284);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v288);
  v289 = sub_1D56141F8();
  v290 = OUTLINED_FUNCTION_12_0(v289, &v856);
  v838 = v291;
  v293 = *(v292 + 64);
  MEMORY[0x1EEE9AC00](v290);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v294);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  v296 = OUTLINED_FUNCTION_12_0(v295, v854);
  v837 = v297;
  v299 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](v296);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v300);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v301);
  v302 = sub_1D560FB08();
  v303 = OUTLINED_FUNCTION_12_0(v302, v923);
  v836 = v304;
  v306 = *(v305 + 64);
  MEMORY[0x1EEE9AC00](v303);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v307);
  v308 = sub_1D5613EF8();
  v309 = OUTLINED_FUNCTION_12_0(v308, &v850);
  v835 = v310;
  v312 = *(v311 + 64);
  MEMORY[0x1EEE9AC00](v309);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v313);
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB70, &qword_1D561F280);
  v315 = OUTLINED_FUNCTION_12_0(v314, v922);
  v834 = v316;
  v318 = *(v317 + 64);
  MEMORY[0x1EEE9AC00](v315);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_205_3();
  MEMORY[0x1EEE9AC00](v319);
  v321 = &v817 - v320;
  v322 = sub_1D560F7A8();
  v323 = OUTLINED_FUNCTION_12_0(v322, &v921);
  v833 = v324;
  v326 = *(v325 + 64);
  MEMORY[0x1EEE9AC00](v323);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v327 = sub_1D5613D28();
  v328 = OUTLINED_FUNCTION_12_0(v327, &a18);
  v820 = v329;
  v331 = *(v330 + 64);
  MEMORY[0x1EEE9AC00](v328);
  OUTLINED_FUNCTION_13();
  v927 = v332;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v333);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v334);
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  OUTLINED_FUNCTION_12_0(v335, v918);
  v825 = v336;
  v338 = *(v337 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v339);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v340);
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F68, &qword_1D56502C0);
  OUTLINED_FUNCTION_20(v341, v840);
  v343 = *(v342 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v344);
  OUTLINED_FUNCTION_13_3();
  v930 = v345;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  OUTLINED_FUNCTION_22(v346);
  v348 = *(v347 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v349);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v350);
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  v352 = OUTLINED_FUNCTION_22(v351);
  v354 = *(v353 + 64);
  MEMORY[0x1EEE9AC00](v352);
  OUTLINED_FUNCTION_59_0();
  v357 = v355 - v356;
  MEMORY[0x1EEE9AC00](v358);
  v360 = &v817 - v359;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  v362 = OUTLINED_FUNCTION_22(v361);
  v364 = *(v363 + 64);
  MEMORY[0x1EEE9AC00](v362);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v365);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v366);
  v937 = v26;
  v938 = *(v26 - 1);
  v367 = v938[8];
  MEMORY[0x1EEE9AC00](v368);
  OUTLINED_FUNCTION_5_0();
  v931 = v369;
  OUTLINED_FUNCTION_70_0();
  v370 = sub_1D5613AF8();
  v371 = OUTLINED_FUNCTION_12_0(v370, v846);
  v831 = v372;
  v374 = *(v373 + 64);
  MEMORY[0x1EEE9AC00](v371);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v375);
  v928 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  v376 = OUTLINED_FUNCTION_4(v928);
  v890 = v377;
  v379 = *(v378 + 64);
  MEMORY[0x1EEE9AC00](v376);
  OUTLINED_FUNCTION_59_0();
  v382 = v380 - v381;
  MEMORY[0x1EEE9AC00](v383);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v384);
  v929 = sub_1D560F308();
  v385 = OUTLINED_FUNCTION_4(v929);
  v905 = v386;
  v388 = *(v387 + 64);
  MEMORY[0x1EEE9AC00](v385);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v389);
  v390 = type metadata accessor for CloudMusicShareableItem();
  v391 = OUTLINED_FUNCTION_14(v390);
  v393 = *(v392 + 64);
  MEMORY[0x1EEE9AC00](v391);
  OUTLINED_FUNCTION_59_0();
  v396 = v394 - v395;
  MEMORY[0x1EEE9AC00](v397);
  v399 = &v817 - v398;
  v939[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F70, &unk_1D564AE80);
  v940 = v31;
  sub_1D5610648();
  OUTLINED_FUNCTION_1_117();
  v932 = v399;
  OUTLINED_FUNCTION_91_0();
  sub_1D5285E4C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_115_6(v848);
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_56_1();
      v573();
      OUTLINED_FUNCTION_175_4();
      sub_1D5286090(v574, v575);
      OUTLINED_FUNCTION_146_6();
      sub_1D5610598();
      v576 = v834;
      v577 = *(v834 + 16);
      v578 = OUTLINED_FUNCTION_132_9();
      v579(v578);
      v580 = v938;
      v581 = v938[2];
      OUTLINED_FUNCTION_46_26();
      v582();
      OUTLINED_FUNCTION_47_33();
      sub_1D5613F08();
      v583 = v580[1];
      v584 = OUTLINED_FUNCTION_98();
      v585(v584);
      OUTLINED_FUNCTION_8_0();
      v587 = *(v586 + 8);
      v588 = OUTLINED_FUNCTION_201_3();
      v589(v588);
      (*(v576 + 8))(v321, v899);
      (*(v357 + 8))(v20, v898);
      OUTLINED_FUNCTION_0_151();
      sub_1D5285EA4(v932, v590);
      v466 = OUTLINED_FUNCTION_38_31(&v849);
      v468 = v900;
      v469 = &v850;
      goto LABEL_21;
    case 2:
      OUTLINED_FUNCTION_67(&v851);
      OUTLINED_FUNCTION_75_18();
      OUTLINED_FUNCTION_94_7();
      v524();
      OUTLINED_FUNCTION_178_3();
      sub_1D5286090(v525, v526);
      OUTLINED_FUNCTION_81_10(&v852);
      OUTLINED_FUNCTION_60_18();
      OUTLINED_FUNCTION_256();
      OUTLINED_FUNCTION_186(&v853);
      v528 = *(v527 + 16);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v529();
      v530 = OUTLINED_FUNCTION_23_49();
      v531(v530);
      OUTLINED_FUNCTION_121();
      OUTLINED_FUNCTION_47_33();
      sub_1D5614208();
      v532 = OUTLINED_FUNCTION_66_17();
      v533(v532);
      OUTLINED_FUNCTION_8_0();
      v535 = *(v534 + 8);
      v536 = OUTLINED_FUNCTION_201_3();
      v537(v536);
      v538 = OUTLINED_FUNCTION_38_4();
      v539(v538);
      (*(v382 + 8))(v901, v904);
      OUTLINED_FUNCTION_0_151();
      sub_1D5285EA4(v932, v540);
      v466 = OUTLINED_FUNCTION_38_31(&v855);
      v468 = v906;
      v469 = &v856;
      goto LABEL_21;
    case 3:
      OUTLINED_FUNCTION_67(&v857);
      OUTLINED_FUNCTION_75_18();
      OUTLINED_FUNCTION_94_7();
      v541();
      OUTLINED_FUNCTION_177_5();
      sub_1D5286090(v542, v543);
      OUTLINED_FUNCTION_81_10(&v858);
      OUTLINED_FUNCTION_60_18();
      OUTLINED_FUNCTION_256();
      OUTLINED_FUNCTION_186(&v859);
      v545 = *(v544 + 16);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v546();
      v547 = OUTLINED_FUNCTION_23_49();
      v548(v547);
      OUTLINED_FUNCTION_123_8();
      OUTLINED_FUNCTION_121();
      OUTLINED_FUNCTION_47_33();
      sub_1D5613C58();
      v549 = OUTLINED_FUNCTION_66_17();
      v550(v549);
      OUTLINED_FUNCTION_8_0();
      v552 = *(v551 + 8);
      v553 = OUTLINED_FUNCTION_201_3();
      v554(v553);
      v555 = OUTLINED_FUNCTION_38_4();
      v556(v555);
      (*(v382 + 8))(v907, v908[0]);
      OUTLINED_FUNCTION_0_151();
      sub_1D5285EA4(v932, v557);
      v466 = OUTLINED_FUNCTION_38_31(&v862);
      v468 = v908[1];
      v469 = &v863;
      goto LABEL_21;
    case 4:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_142_8();
      sub_1D5285360();
      sub_1D5286090(&qword_1EDD5C6E0, type metadata accessor for CloudMusicMovie);
      OUTLINED_FUNCTION_81_10(&v864);
      OUTLINED_FUNCTION_60_18();
      OUTLINED_FUNCTION_301_1();
      OUTLINED_FUNCTION_186(&v865);
      v471 = *(v470 + 16);
      OUTLINED_FUNCTION_258();
      OUTLINED_FUNCTION_104_7();
      v472();
      v473 = OUTLINED_FUNCTION_23_49();
      v474(v473);
      OUTLINED_FUNCTION_47_33();
      MusicMovie.init<A>(_:configuration:sharedRelatedItemStore:)();
      v475 = OUTLINED_FUNCTION_66_17();
      v476(v475);
      OUTLINED_FUNCTION_8_0();
      v478 = *(v477 + 8);
      v479 = OUTLINED_FUNCTION_21_1();
      v480(v479);
      v481 = OUTLINED_FUNCTION_38_4();
      v482(v481);
      OUTLINED_FUNCTION_7_89();
      sub_1D5285EA4(v909, v483);
      OUTLINED_FUNCTION_0_151();
      sub_1D5285EA4(v932, v484);
      OUTLINED_FUNCTION_169_2();
      v450 = &v927;
      goto LABEL_15;
    case 5:
      OUTLINED_FUNCTION_67(&v867);
      OUTLINED_FUNCTION_75_18();
      OUTLINED_FUNCTION_94_7();
      v591();
      OUTLINED_FUNCTION_174_5();
      sub_1D5286090(v592, v593);
      OUTLINED_FUNCTION_81_10(&v868);
      OUTLINED_FUNCTION_60_18();
      OUTLINED_FUNCTION_256();
      OUTLINED_FUNCTION_186(&v869);
      v595 = *(v594 + 16);
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v596();
      v597 = OUTLINED_FUNCTION_23_49();
      v598(v597);
      OUTLINED_FUNCTION_121();
      OUTLINED_FUNCTION_47_33();
      sub_1D560EEB8();
      v599 = OUTLINED_FUNCTION_66_17();
      v600(v599);
      OUTLINED_FUNCTION_8_0();
      v602 = *(v601 + 8);
      v603 = OUTLINED_FUNCTION_201_3();
      v604(v603);
      v605 = OUTLINED_FUNCTION_38_4();
      v606(v605);
      (*(v382 + 8))(v911, v912[0]);
      OUTLINED_FUNCTION_0_151();
      sub_1D5285EA4(v932, v607);
      v466 = OUTLINED_FUNCTION_38_31(&v871);
      v468 = v912[1];
      v469 = v872;
      goto LABEL_21;
    case 6:
      v632 = *(v896 + 32);
      OUTLINED_FUNCTION_140_3();
      OUTLINED_FUNCTION_94_7();
      v633();
      OUTLINED_FUNCTION_173_2();
      sub_1D5286090(v634, v635);
      v636 = v939[0];
      OUTLINED_FUNCTION_287_0();
      v637 = v940;
      sub_1D5610598();
      v638 = v889;
      v639 = v889[2];
      v640 = OUTLINED_FUNCTION_27_1();
      v641(v640);
      v642 = v937;
      (v938[2])(v931, v936, v937);

      OUTLINED_FUNCTION_116();
      sub_1D56148A8();
      v643 = v637;
      sub_1D56105D8();
      v644 = sub_1D5612B78();
      OUTLINED_FUNCTION_43_0(v357);
      if (v751)
      {

        v645 = OUTLINED_FUNCTION_251_0();
        v646(v645);
        OUTLINED_FUNCTION_24_0(v636);
        (*(v647 + 8))(v637, v636);
        v648 = v638[1];
        ++v638;
        v648(v895, v926);
        OUTLINED_FUNCTION_136(&v919);
        OUTLINED_FUNCTION_263_0();
        v649();
        OUTLINED_FUNCTION_0_151();
        sub_1D5285EA4(v932, v650);
        sub_1D4E50004(v357, &qword_1EC7EB5E8, &unk_1D5623F60);
      }

      else
      {
        v643 = v357;
        v702 = sub_1D5612B58();
        v704 = v703;
        OUTLINED_FUNCTION_8_0();
        (*(v705 + 8))(v357, v644);
        if (v704)
        {
          v933 = v702;
          OUTLINED_FUNCTION_57_5(&v844);
          sub_1D5614858();
          v706 = OUTLINED_FUNCTION_24_7();
          v707 = v892;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v706, v708, v892);
          v638 = v925;
          v710 = v926;
          v643 = v636;
          v711 = v940;
          if (EnumTagSinglePayload == 1)
          {

            v712 = OUTLINED_FUNCTION_251_0();
            v713(v712);
            OUTLINED_FUNCTION_24_0(v643);
            (*(v714 + 8))(v711, v643);
            v715 = OUTLINED_FUNCTION_89_14();
            v716(v715, v710);
            OUTLINED_FUNCTION_136(&v919);
            OUTLINED_FUNCTION_263_0();
            v717();
            OUTLINED_FUNCTION_0_151();
            sub_1D5285EA4(v932, v718);
            sub_1D4E50004(v644, &qword_1EC7EC450, &unk_1D5621060);
            __swift_storeEnumTagSinglePayload(v826, 1, 1, v923[0]);
            OUTLINED_FUNCTION_39_35();
          }

          else
          {
            v753 = *(v827 + 16);
            v754 = OUTLINED_FUNCTION_11_21();
            v755(v754, v644, v707);
            v642 = &qword_1D561C4C0;
            OUTLINED_FUNCTION_163_0();
            sub_1D4E62A60(v756, &unk_1EC7F6A30, &qword_1D561C4C0);
            OUTLINED_FUNCTION_278_0(&v916);
            sub_1D5614F98();
            v757 = *(v821 + 36);
            OUTLINED_FUNCTION_14_1();
            sub_1D4E62A60(v758, &unk_1EC7F6A30, &qword_1D561C4C0);
            v759 = v707;
            v760 = (v823 + 16);
            v931 = (v823 + 32);
            v929 = (v823 + 8);
            v930 = (v824 + 8);
            v761 = v923[0];
            while (1)
            {
              v643 = v891;
              sub_1D5615648();
              if (*(v643 + v757) == v941[0])
              {

                v797 = OUTLINED_FUNCTION_191_2();
                v798(v797);
                OUTLINED_FUNCTION_63_16();
                (*(v799 + 8))(v940);
                sub_1D4E50004(v643, &qword_1EC7ECEA0, &qword_1D5666390);
                v800 = OUTLINED_FUNCTION_89_14();
                v801(v800, v710);
                OUTLINED_FUNCTION_136(&v919);
                OUTLINED_FUNCTION_263_0();
                v802();
                OUTLINED_FUNCTION_0_151();
                sub_1D5285EA4(v932, v803);
                OUTLINED_FUNCTION_39_35();
                v805 = v829;
                v806 = v826;
                goto LABEL_62;
              }

              v642 = v638;
              v762 = sub_1D5615688();
              v638 = v888;
              (*v760)(v888);
              v762(v941, 0);
              sub_1D5615658();
              v763 = *v931;
              (*v931)(v923[3], v638, v761);
              v764 = sub_1D560EC18();
              v643 = v765;
              v766 = v933;
              if (v764 == v933 && v704 == v765)
              {

                goto LABEL_61;
              }

              v768 = sub_1D5616168();

              if (v768)
              {

                v761 = v923[0];
                goto LABEL_61;
              }

              v638 = v886;
              v761 = v923[0];
              v642 = v766;
              sub_1D560EC98();
              OUTLINED_FUNCTION_93();
              v643 = sub_1D560D788();
              (*v930)(v638, v887);
              if (v643)
              {
                break;
              }

              v769 = *v929;
              v770 = OUTLINED_FUNCTION_140_3();
              v771(v770);
              v759 = v892;
              v638 = v925;
              v710 = v926;
            }

            v642 = v925;
LABEL_61:
            v807 = OUTLINED_FUNCTION_191_2();
            v808(v807);
            OUTLINED_FUNCTION_63_16();
            (*(v809 + 8))(v940);
            sub_1D4E50004(v891, &qword_1EC7ECEA0, &qword_1D5666390);
            v810 = OUTLINED_FUNCTION_89_14();
            v811(v810, v926);
            OUTLINED_FUNCTION_136(&v919);
            OUTLINED_FUNCTION_263_0();
            v812();
            OUTLINED_FUNCTION_0_151();
            sub_1D5285EA4(v932, v813);
            v806 = v826;
            v814 = OUTLINED_FUNCTION_143();
            v763(v814);
            OUTLINED_FUNCTION_39_35();
            v759 = v892;
            v805 = v829;
LABEL_62:
            __swift_storeEnumTagSinglePayload(v806, v804, 1, v761);
            OUTLINED_FUNCTION_136(&v843);
            v815(v805, v759);
          }

          sub_1D4FB8058();
LABEL_64:
          v816 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0) + 48);
          (v638[4])(v643, v923[2], v642);
          goto LABEL_65;
        }

        v729 = OUTLINED_FUNCTION_251_0();
        v730(v729);
        OUTLINED_FUNCTION_24_0(v636);
        (*(v731 + 8))(v940, v636);
        v732 = OUTLINED_FUNCTION_89_14();
        v733(v732, v926);
        OUTLINED_FUNCTION_136(&v919);
        OUTLINED_FUNCTION_263_0();
        v734();
        OUTLINED_FUNCTION_0_151();
        sub_1D5285EA4(v932, v735);
      }

      OUTLINED_FUNCTION_39_35();
      v736 = OUTLINED_FUNCTION_24_7();
      __swift_storeEnumTagSinglePayload(v736, v737, 1, v923[0]);
      goto LABEL_64;
    case 7:
      OUTLINED_FUNCTION_115_6(&v873);
      OUTLINED_FUNCTION_75_18();
      OUTLINED_FUNCTION_94_7();
      v558();
      OUTLINED_FUNCTION_176_3();
      sub_1D5286090(v559, v560);
      OUTLINED_FUNCTION_30_43(&v874);
      OUTLINED_FUNCTION_256();
      OUTLINED_FUNCTION_159_4(&v875);
      OUTLINED_FUNCTION_143_7();
      OUTLINED_FUNCTION_200_2();
      v561();
      v562 = OUTLINED_FUNCTION_24_50();
      v563(v562);
      OUTLINED_FUNCTION_36_38(&v933);
      sub_1D5614B78();
      v564 = OUTLINED_FUNCTION_66_17();
      v565(v564);
      OUTLINED_FUNCTION_8_0();
      v567 = *(v566 + 8);
      v568 = OUTLINED_FUNCTION_201_3();
      v569(v568);
      v570 = OUTLINED_FUNCTION_88_13();
      v571(v570);
      (*(v357 + 8))(v912[2], v912[3]);
      OUTLINED_FUNCTION_0_151();
      sub_1D5285EA4(v932, v572);
      v466 = OUTLINED_FUNCTION_38_31(&v877);
      v468 = v913[0];
      v469 = &v878;
      goto LABEL_21;
    case 8:
      OUTLINED_FUNCTION_115_6(&v879);
      OUTLINED_FUNCTION_75_18();
      OUTLINED_FUNCTION_94_7();
      v666();
      OUTLINED_FUNCTION_171_4();
      sub_1D5286090(v667, v668);
      OUTLINED_FUNCTION_30_43(&v880);
      OUTLINED_FUNCTION_256();
      OUTLINED_FUNCTION_159_4(&v881);
      OUTLINED_FUNCTION_143_7();
      OUTLINED_FUNCTION_200_2();
      v669();
      v670 = OUTLINED_FUNCTION_24_50();
      v671(v670);
      OUTLINED_FUNCTION_36_38(&v936);
      sub_1D560F8C8();
      v672 = OUTLINED_FUNCTION_66_17();
      v673(v672);
      OUTLINED_FUNCTION_8_0();
      v675 = *(v674 + 8);
      v676 = OUTLINED_FUNCTION_201_3();
      v677(v676);
      v678 = OUTLINED_FUNCTION_88_13();
      v679(v678);
      (*(v357 + 8))(v913[1], v914[0]);
      OUTLINED_FUNCTION_0_151();
      sub_1D5285EA4(v932, v680);
      v466 = OUTLINED_FUNCTION_38_31(&v883);
      v468 = v914[1];
      v469 = &v884;
      goto LABEL_21;
    case 9:
      OUTLINED_FUNCTION_115_6(&v885);
      OUTLINED_FUNCTION_75_18();
      OUTLINED_FUNCTION_94_7();
      v504();
      OUTLINED_FUNCTION_179_4();
      sub_1D5286090(v505, v506);
      OUTLINED_FUNCTION_30_43(&v886);
      OUTLINED_FUNCTION_256();
      OUTLINED_FUNCTION_159_4(&v887);
      OUTLINED_FUNCTION_143_7();
      OUTLINED_FUNCTION_200_2();
      v507();
      v508 = OUTLINED_FUNCTION_24_50();
      v509(v508);
      v510 = OUTLINED_FUNCTION_36_38(v939);
      SocialProfile.init<A>(_:configuration:sharedRelatedItemStore:)(v510, v511, v512, v513, v514);
      v515 = OUTLINED_FUNCTION_66_17();
      v516(v515);
      OUTLINED_FUNCTION_8_0();
      v518 = *(v517 + 8);
      v519 = OUTLINED_FUNCTION_201_3();
      v520(v519);
      v521 = OUTLINED_FUNCTION_88_13();
      v522(v521);
      (*(v357 + 8))(v914[2], v915);
      OUTLINED_FUNCTION_0_151();
      sub_1D5285EA4(v932, v523);
      OUTLINED_FUNCTION_167_3();
      v450 = v939;
      goto LABEL_15;
    case 10:
      OUTLINED_FUNCTION_115_6(&v890);
      OUTLINED_FUNCTION_75_18();
      OUTLINED_FUNCTION_94_7();
      v651();
      OUTLINED_FUNCTION_172_4();
      sub_1D5286090(v652, v653);
      OUTLINED_FUNCTION_30_43(&v891);
      OUTLINED_FUNCTION_256();
      OUTLINED_FUNCTION_159_4(&v892);
      OUTLINED_FUNCTION_143_7();
      OUTLINED_FUNCTION_200_2();
      v654();
      v655 = OUTLINED_FUNCTION_24_50();
      v656(v655);
      OUTLINED_FUNCTION_36_38(v941);
      sub_1D5613848();
      v657 = OUTLINED_FUNCTION_66_17();
      v658(v657);
      OUTLINED_FUNCTION_8_0();
      v660 = *(v659 + 8);
      v661 = OUTLINED_FUNCTION_201_3();
      v662(v661);
      v663 = OUTLINED_FUNCTION_88_13();
      v664(v663);
      (*(v357 + 8))(v917[0], v917[1]);
      OUTLINED_FUNCTION_0_151();
      sub_1D5285EA4(v932, v665);
      v466 = OUTLINED_FUNCTION_38_31(&v895);
      v468 = v918[0];
      v469 = &v896;
      goto LABEL_21;
    case 11:
      OUTLINED_FUNCTION_115_6(&v897);
      OUTLINED_FUNCTION_75_18();
      OUTLINED_FUNCTION_94_7();
      v451();
      OUTLINED_FUNCTION_180_3();
      sub_1D5286090(v452, v453);
      OUTLINED_FUNCTION_30_43(&v898);
      OUTLINED_FUNCTION_256();
      OUTLINED_FUNCTION_159_4(&v899);
      OUTLINED_FUNCTION_143_7();
      OUTLINED_FUNCTION_200_2();
      v454();
      v455 = OUTLINED_FUNCTION_24_50();
      v456(v455);
      OUTLINED_FUNCTION_36_38(&v943);
      sub_1D5614418();
      v457 = OUTLINED_FUNCTION_66_17();
      v458(v457);
      OUTLINED_FUNCTION_8_0();
      v460 = *(v459 + 8);
      v461 = OUTLINED_FUNCTION_201_3();
      v462(v461);
      v463 = OUTLINED_FUNCTION_88_13();
      v464(v463);
      (*(v357 + 8))(v918[1], v919);
      OUTLINED_FUNCTION_0_151();
      sub_1D5285EA4(v932, v465);
      v466 = OUTLINED_FUNCTION_38_31(&v903);
      v468 = v920;
      v469 = &v904;
LABEL_21:
      v467(v466, v468, *(v469 - 32));
      goto LABEL_22;
    case 12:
      OUTLINED_FUNCTION_4_88();
      OUTLINED_FUNCTION_165_4(&v944);
      sub_1D5285360();
      sub_1D5286090(&qword_1EC7EDBC0, type metadata accessor for CloudTVEpisode);
      OUTLINED_FUNCTION_30_43(&v905);
      OUTLINED_FUNCTION_301_1();
      OUTLINED_FUNCTION_159_4(&v907);
      OUTLINED_FUNCTION_282_1();
      OUTLINED_FUNCTION_200_2();
      v485();
      v486 = OUTLINED_FUNCTION_23_49();
      v487(v486);
      OUTLINED_FUNCTION_278_0(&a9);
      OUTLINED_FUNCTION_47_33();
      TVEpisode.init<A>(_:configuration:sharedRelatedItemStore:)(v488, v489, v490, v491, v492, v493);
      v494 = OUTLINED_FUNCTION_66_17();
      v495(v494);
      OUTLINED_FUNCTION_8_0();
      v497 = *(v496 + 8);
      v498 = OUTLINED_FUNCTION_21_1();
      v499(v498);
      v500 = OUTLINED_FUNCTION_88_13();
      v501(v500);
      OUTLINED_FUNCTION_16_66();
      sub_1D5285EA4(v921, v502);
      OUTLINED_FUNCTION_0_151();
      sub_1D5285EA4(v932, v503);
      OUTLINED_FUNCTION_168_4();
      v450 = &a9;
      goto LABEL_15;
    case 13:
      OUTLINED_FUNCTION_3_117();
      OUTLINED_FUNCTION_165_4(&a10);
      sub_1D5285360();
      sub_1D5286090(&qword_1EC7ED228, type metadata accessor for CloudTVShow);
      OUTLINED_FUNCTION_30_43(&v909);
      OUTLINED_FUNCTION_301_1();
      OUTLINED_FUNCTION_159_4(&v911);
      OUTLINED_FUNCTION_282_1();
      OUTLINED_FUNCTION_200_2();
      v608();
      v609 = v938;
      v610 = v938[2];
      OUTLINED_FUNCTION_46_26();
      v611();
      OUTLINED_FUNCTION_278_0(&a11);
      OUTLINED_FUNCTION_47_33();
      TVShow.init<A>(_:configuration:sharedRelatedItemStore:)(v612, v613, v614, v615, v616, v617, v618, v619, v817, v818, v819, v820, v821, v822, v823, v824, v825, v826, v827, v828);
      v620 = v609[1];
      v621 = OUTLINED_FUNCTION_98();
      v622(v621);
      OUTLINED_FUNCTION_8_0();
      v624 = *(v623 + 8);
      v625 = OUTLINED_FUNCTION_21_1();
      v626(v625);
      v627 = OUTLINED_FUNCTION_88_13();
      v628(v627);
      OUTLINED_FUNCTION_51_27();
      sub_1D5285EA4(v922[1], v629);
      OUTLINED_FUNCTION_0_151();
      sub_1D5285EA4(v932, v630);
      OUTLINED_FUNCTION_166_2();
      v450 = &a11;
      goto LABEL_15;
    case 14:
      OUTLINED_FUNCTION_6_86();
      OUTLINED_FUNCTION_165_4(&a12);
      sub_1D5285360();
      sub_1D5286090(&qword_1EDD561E8, type metadata accessor for CloudUploadedVideo);
      v423 = v939[0];
      OUTLINED_FUNCTION_301_1();
      v424 = v884;
      v425 = *(v884 + 16);
      OUTLINED_FUNCTION_282_1();
      OUTLINED_FUNCTION_136_8();
      v426();
      v427 = v938;
      v428 = v938[2];
      OUTLINED_FUNCTION_46_26();
      v429();
      OUTLINED_FUNCTION_278_0(&a13);
      OUTLINED_FUNCTION_47_33();
      UploadedVideo.init<A>(_:configuration:sharedRelatedItemStore:)(v430, v431, v432, v433, v434, v435, v436, v437, v817, v818, v819, v820, v821, v822, v823, v824, v825, v826, v827, v828);
      v438 = v427[1];
      v439 = OUTLINED_FUNCTION_98();
      v440(v439);
      OUTLINED_FUNCTION_24_0(v423);
      v442 = *(v441 + 8);
      v443 = OUTLINED_FUNCTION_68_4();
      v444(v443);
      v445 = *(v424 + 8);
      v446 = OUTLINED_FUNCTION_29_12();
      v447(v446);
      OUTLINED_FUNCTION_56_24();
      sub_1D5285EA4(v922[3], v448);
      OUTLINED_FUNCTION_0_151();
      sub_1D5285EA4(v932, v449);
      OUTLINED_FUNCTION_170_4();
      v450 = &a13;
LABEL_15:
      v631 = *(v450 - 32);
      sub_1D5285360();
      goto LABEL_22;
    default:
      v400 = *(v905 + 32);
      v401 = OUTLINED_FUNCTION_11_21();
      v402(v401, v396, v929);
      OUTLINED_FUNCTION_181_5();
      sub_1D5286090(v403, v404);
      v405 = v902;
      OUTLINED_FUNCTION_146_6();
      v406 = v940;
      sub_1D5610598();
      OUTLINED_FUNCTION_186(&v915);
      (*(v407 + 16))(v382, v405, v928);
      v408 = v937;
      v409 = v938;
      (v938[2])(v931, v936, v937);

      v410 = v406;
      sub_1D5613B08();
      sub_1D56105D8();
      v411 = sub_1D5612B78();
      v412 = OUTLINED_FUNCTION_45_1();
      if (__swift_getEnumTagSinglePayload(v412, v413, v411) == 1)
      {

        v414 = OUTLINED_FUNCTION_210_3();
        v415(v414, v408);
        OUTLINED_FUNCTION_8_0();
        v417 = *(v416 + 8);
        v418 = OUTLINED_FUNCTION_215();
        v419(v418);
        (*(v21 + 8))(v902, v928);
        v420 = OUTLINED_FUNCTION_49_24();
        v421(v420, v929);
        OUTLINED_FUNCTION_0_151();
        sub_1D5285EA4(v932, v422);
        sub_1D4E50004(v360, &qword_1EC7EB5E8, &unk_1D5623F60);
LABEL_30:
        OUTLINED_FUNCTION_246_0();
        v727 = OUTLINED_FUNCTION_24_7();
        __swift_storeEnumTagSinglePayload(v727, v728, 1, v924);
        v701 = v935;
        goto LABEL_56;
      }

      v681 = sub_1D5612B58();
      v683 = v682;
      OUTLINED_FUNCTION_24_0(v411);
      v685 = *(v684 + 8);
      v686 = OUTLINED_FUNCTION_140_3();
      v687(v686);
      if (!v683)
      {

        v719 = OUTLINED_FUNCTION_277();
        v720(v719);
        OUTLINED_FUNCTION_63_16();
        (*(v721 + 8))(v410);
        v722 = OUTLINED_FUNCTION_90_16();
        v723(v722, v928);
        v724 = OUTLINED_FUNCTION_49_24();
        v725(v724, v929);
        OUTLINED_FUNCTION_0_151();
        sub_1D5285EA4(v932, v726);
        goto LABEL_30;
      }

      v688 = v410;
      v933 = v681;
      OUTLINED_FUNCTION_172(v845);
      sub_1D5613AC8();
      v689 = OUTLINED_FUNCTION_45_1();
      v690 = v894;
      v692 = __swift_getEnumTagSinglePayload(v689, v691, v894);
      v411 = v928;
      v409 = v929;
      if (v692 == 1)
      {

        v693 = OUTLINED_FUNCTION_277();
        v694(v693);
        OUTLINED_FUNCTION_63_16();
        (*(v695 + 8))(v688);
        v696 = OUTLINED_FUNCTION_90_16();
        v697(v696, v411);
        v698 = OUTLINED_FUNCTION_49_24();
        v699(v698, v409);
        OUTLINED_FUNCTION_0_151();
        sub_1D5285EA4(v932, v700);
        sub_1D4E50004(v360, &qword_1EC7EC458, &unk_1D5620CD0);
        __swift_storeEnumTagSinglePayload(v828, 1, 1, v924);
        v701 = v935;
      }

      else
      {
        v738 = *(v825 + 16);
        v739 = OUTLINED_FUNCTION_11_21();
        v740(v739, v360, v690);
        OUTLINED_FUNCTION_163_0();
        sub_1D4E62A60(v741, &qword_1EC7EA4E8, &unk_1D561C470);
        sub_1D5614F98();
        v742 = *(v818 + 36);
        OUTLINED_FUNCTION_14_1();
        sub_1D4E62A60(v743, &qword_1EC7EA4E8, &unk_1D561C470);
        v744 = (v820 + 16);
        v931 = (v820 + 32);
        v745 = (v820 + 8);
        v746 = v924;
        while (1)
        {
          sub_1D5615648();
          v747 = v930;
          if (*&v930[v742] == v941[0])
          {

            v772 = OUTLINED_FUNCTION_191_2();
            v773(v772);
            OUTLINED_FUNCTION_63_16();
            (*(v774 + 8))(v940);
            sub_1D4E50004(v747, &qword_1EC7F2F68, &qword_1D56502C0);
            v775 = OUTLINED_FUNCTION_90_16();
            v776(v775, v411);
            v777 = OUTLINED_FUNCTION_49_24();
            v778(v777, v409);
            OUTLINED_FUNCTION_0_151();
            sub_1D5285EA4(v932, v779);
            v780 = 1;
            v701 = v935;
            v781 = v746;
            v782 = v830;
            v783 = v828;
            goto LABEL_54;
          }

          v411 = sub_1D5615688();
          v409 = v893;
          (*v744)(v893);
          (v411)(v941, 0);
          sub_1D5615658();
          v748 = *v931;
          v749 = OUTLINED_FUNCTION_68_4();
          v748(v749);
          v751 = _s16MusicKitInternal0A18SuggestedPivotSeedV2id0aB00A6ItemIDVvg_0() == v933 && v683 == v750;
          if (v751)
          {

            goto LABEL_53;
          }

          v752 = sub_1D5616168();

          if (v752)
          {
            break;
          }

          v746 = v924;
          (*v745)(v927, v924);
          v690 = v894;
          v411 = v928;
          v409 = v929;
        }

        v746 = v924;
LABEL_53:
        v785 = v929;
        v784 = v930;
        v786 = v928;
        v787 = OUTLINED_FUNCTION_191_2();
        v788(v787);
        OUTLINED_FUNCTION_63_16();
        (*(v789 + 8))(v940);
        sub_1D4E50004(v784, &qword_1EC7F2F68, &qword_1D56502C0);
        v790 = OUTLINED_FUNCTION_90_16();
        v791(v790, v786);
        v792 = OUTLINED_FUNCTION_49_24();
        v793(v792, v785);
        OUTLINED_FUNCTION_0_151();
        sub_1D5285EA4(v932, v794);
        v783 = v828;
        (v748)(v828, v927, v746);
        v780 = 0;
        v701 = v935;
        v781 = v746;
        v690 = v894;
        v782 = v830;
LABEL_54:
        __swift_storeEnumTagSinglePayload(v783, v780, 1, v781);
        OUTLINED_FUNCTION_136(v842);
        v795(v782, v690);
      }

      OUTLINED_FUNCTION_246_0();
      sub_1D4FB8058();
LABEL_56:
      v796 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
      (*(v411 + 32))(v701, v923[1], v409);
LABEL_65:
      sub_1D4FB8058();
LABEL_22:
      type metadata accessor for MusicShareableItem();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_46();
      return;
  }
}