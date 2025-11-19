uint64_t sub_1C2F544F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_1C2F7691C();
  v11 = sub_1C2F76ADC();
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v21 - v14;
  v16 = *a1;
  v17 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v21[0] = a4;
    *a1 = v17;
    v18 = *(v10 - 8);
    (*(v18 + 16))(v15, a2, v10);
    (*(v18 + 56))(v15, 0, 1, v10);
    v21[3] = v16;
    sub_1C2F765EC();
    sub_1C2F765FC();
    v19 = *(swift_getTupleTypeMetadata2() + 48);
    *a5 = v16;
    v20 = type metadata accessor for _Streamed.State();
    return (*(*(a3 - 8) + 16))(&a5[v19], a1 + *(v20 + 40), a3);
  }

  return result;
}

uint64_t sub_1C2F546DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    MEMORY[0x1EEE9AC00](v2);
    type metadata accessor for _Streamed.State();
    v3 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
    v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v1 + v4));
    sub_1C2F552C8(v1 + v3);
    os_unfair_lock_unlock((v1 + v4));
  }

  return result;
}

uint64_t sub_1C2F54800(uint64_t a1, uint64_t a2)
{
  sub_1C2F7691C();
  v3 = sub_1C2F76ADC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - v6;
  v9[1] = a2;
  sub_1C2F765EC();
  sub_1C2F765BC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1C2F5491C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for _Streamed.State() + 40);
  (*(v8 + 16))(v11, a1 + v12, a3);
  v13 = sub_1C2F7662C();
  result = (*(v8 + 8))(v11, a3);
  v15 = 0;
  if ((v13 & 1) == 0)
  {
    (*(v8 + 24))(a1 + v12, a2, a3);
    v15 = *(a1 + 8);
    sub_1C2F7691C();
  }

  *a4 = v15;
  return result;
}

uint64_t sub_1C2F54A8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_1C2F7691C();
  sub_1C2F765EC();

  result = sub_1C2F765DC();
  *a2 = v3;
  return result;
}

uint64_t sub_1C2F54B08()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1C2F76CCC();
  return sub_1C2F76CBC();
}

void *sub_1C2F54B84(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *(v8 + 88);
  v10 = type metadata accessor for _Streamed.State();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v4 + 16))(v7, a1, v3);
  sub_1C2F7691C();
  v15 = sub_1C2F7658C();
  *v14 = 0;
  *(v14 + 1) = v15;
  (*(v4 + 32))(&v14[*(v10 + 40)], v7, v3);
  v16 = sub_1C2F54B08();
  (*(v11 + 8))(v14, v10);
  v1[2] = v16;
  return v1;
}

uint64_t sub_1C2F54D84()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1C2F546DC();
}

uint64_t sub_1C2F54E24(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1C2F7691C();
  result = sub_1C2F765EC();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2F54EE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C2F55070(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t sub_1C2F552C8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1C2F54800(a1, v1[4]);
}

uint64_t sub_1C2F552E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1C2F54A8C(a1, a2);
}

uint64_t sub_1C2F55304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

void sub_1C2F553BC()
{
  type metadata accessor for AudioAccessoryAssetDownloadService();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E698D420]) init];
  sub_1C2F55470();
  qword_1EC076D98 = v0;
}

uint64_t static AudioAccessoryAssetDownloadService.sharedInstance.getter()
{
  if (qword_1EC075C98 != -1)
  {
    swift_once();
  }
}

void sub_1C2F55470()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v13 = sub_1C2F55B68;
    v14 = v2;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_1C2F40688;
    v12 = &block_descriptor_8;
    v3 = _Block_copy(&v9);
    v4 = v1;

    [v4 setInterruptionHandler_];
    _Block_release(v3);

    v5 = *(v0 + 16);
    if (v5)
    {
      v6 = swift_allocObject();
      swift_weakInit();
      v13 = sub_1C2F55B8C;
      v14 = v6;
      v9 = MEMORY[0x1E69E9820];
      v10 = 1107296256;
      v11 = sub_1C2F40688;
      v12 = &block_descriptor_12_0;
      v7 = _Block_copy(&v9);
      v8 = v5;

      [v8 setInvalidationHandler_];
      _Block_release(v7);
    }
  }
}

void sub_1C2F55624(uint64_t a1, const char *a2)
{
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2F761FC();
  __swift_project_value_buffer(v3, qword_1EDEBDA78);
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C2EF2000, v4, v5, a2, v6, 2u);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 16);
    *(Strong + 16) = 0;

    if (v8)
    {
    }
  }
}

void sub_1C2F55744(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C2F761FC();
  __swift_project_value_buffer(v10, qword_1EDEBDA78);

  v11 = sub_1C2F761DC();
  v12 = sub_1C2F769DC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v13 = 136315394;
    v14 = MEMORY[0x1C6928DD0](a1, MEMORY[0x1E69E6158]);
    v16 = v5;
    v17 = a4;
    v18 = a2;
    v19 = a3;
    v20 = sub_1C2EFAB28(v14, v15, aBlock);

    *(v13 + 4) = v20;
    a3 = v19;
    a2 = v18;
    a4 = v17;
    v5 = v16;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a2 & 1;
    _os_log_impl(&dword_1C2EF2000, v11, v12, "AudioAccessoryAssetDownloadService requested to download assets identifiers: %s useCellular: %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1C6929E80](v31, -1, -1);
    MEMORY[0x1C6929E80](v13, -1, -1);
  }

  v21 = *(v5 + 16);
  if (v21)
  {
    v22 = *(v5 + 16);
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E698D420]) init];
    v21 = 0;
  }

  v23 = v21;
  v24 = sub_1C2F767DC();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F02584;
  aBlock[3] = &block_descriptor_8;
  v25 = _Block_copy(aBlock);

  [v22 downloadTranslationAssets:v24 useCellular:a2 & 1 showDownloadCompleteNotification:0 completion:v25];
  _Block_release(v25);

  v26 = *(v5 + 16);
  *(v5 + 16) = v22;
  if (!v26)
  {
    v30 = v22;
    if (!v22)
    {
LABEL_13:

      v28 = v26;
      goto LABEL_14;
    }

LABEL_12:
    sub_1C2F55470();
    goto LABEL_13;
  }

  sub_1C2F55ABC();
  v27 = v22;
  v28 = v26;
  v29 = sub_1C2F76AAC();

  if ((v29 & 1) == 0)
  {
    if (!*(v5 + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
}

uint64_t AudioAccessoryAssetDownloadService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C2F55ABC()
{
  result = qword_1EC076DA0;
  if (!qword_1EC076DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC076DA0);
  }

  return result;
}

uint64_t CallTranslationTranscript.init(identifier:isTranslating:isLocal:originalText:translatedText:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 4) = a2;
  *(a8 + 5) = a3;
  *(a8 + 8) = a4;
  *(a8 + 16) = a5;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  return result;
}

uint64_t CallTranslationTranscript.revertedTranscripts()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 5);
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (*(v1 + 32))
  {
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 5) = v3 ^ 1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t CallTranslationTranscript.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 2);
  v5 = *(v0 + 4);
  v19 = *(v0 + 1);
  v20 = *(v0 + 3);

  sub_1C2F76C6C();
  MEMORY[0x1C6928D30](540697705, 0xE400000000000000);
  v6 = sub_1C2F76EEC();
  MEMORY[0x1C6928D30](v6);

  MEMORY[0x1C6928D30](0xD000000000000011, 0x80000001C2F7FF30);
  if (v2)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1C6928D30](v7, v8);

  MEMORY[0x1C6928D30](0x61636F4C7369202CLL, 0xEB00000000203A6CLL);
  if (v3)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v3)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1C6928D30](v9, v10);

  MEMORY[0x1C6928D30](0xD000000000000010, 0x80000001C2F7FF50);
  v11 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v11 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = 0x65736C6166;
  }

  else
  {
    v12 = 1702195828;
  }

  if (v11)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x1C6928D30](v12, v13);

  MEMORY[0x1C6928D30](0xD000000000000012, 0x80000001C2F7FF70);
  if (v5)
  {
    v14 = v20 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0xE000000000000000;
    v14 = 0;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v15 = v14;
  }

  if (v15)
  {
    v16 = 0x65736C6166;
  }

  else
  {
    v16 = 1702195828;
  }

  if (v15)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  MEMORY[0x1C6928D30](v16, v17);

  return 0;
}

uint64_t CallTranslationTranscript.originalText.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CallTranslationTranscript.translatedText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C2F55EF4()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6C61636F4C7369;
  v4 = 0x6C616E696769726FLL;
  if (v1 != 3)
  {
    v4 = 0x74616C736E617274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C736E6172547369;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C2F55FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2F567DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2F55FDC(uint64_t a1)
{
  v2 = sub_1C2F56618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F56018(uint64_t a1)
{
  v2 = sub_1C2F56618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CallTranslationTranscript.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DA8, &qword_1C2F7CB10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 4);
  v16 = *(v1 + 5);
  v17 = v9;
  v10 = *(v1 + 1);
  v15[2] = *(v1 + 2);
  v15[3] = v10;
  v11 = *(v1 + 4);
  v15[1] = *(v1 + 3);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F56618();
  sub_1C2F7702C();
  v23 = 0;
  v13 = v18;
  sub_1C2F76EAC();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v22 = 1;
  sub_1C2F76E7C();
  v21 = 2;
  sub_1C2F76E7C();
  v20 = 3;
  sub_1C2F76E6C();
  v19 = 4;
  sub_1C2F76E4C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t CallTranslationTranscript.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DB8, &qword_1C2F7CB18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F56618();
  sub_1C2F7701C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v28 = 0;
  v11 = sub_1C2F76E1C();
  v27 = 1;
  v12 = sub_1C2F76DEC();
  v26 = 2;
  v23 = sub_1C2F76DEC();
  v25 = 3;
  v21 = sub_1C2F76DDC();
  v22 = v13;
  v24 = 4;
  v14 = sub_1C2F76DBC();
  v16 = v15;
  HIDWORD(v20) = v12 & 1;
  v23 &= 1u;
  v17 = v14;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 4) = BYTE4(v20);
  *(a2 + 5) = v23;
  v18 = v22;
  *(a2 + 8) = v21;
  *(a2 + 16) = v18;
  *(a2 + 24) = v17;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t _s20CommunicationsUICore25CallTranslationTranscriptV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 4) ^ *(a2 + 4)) & 1) == 0 && ((*(a1 + 5) ^ *(a2 + 5)) & 1) == 0)
  {
    if (v5 = *(a1 + 24), v4 = *(a1 + 32), v7 = *(a2 + 24), v6 = *(a2 + 32), *(a1 + 8) == *(a2 + 8)) && *(a1 + 16) == *(a2 + 16) || (v8 = *(a1 + 16), v9 = sub_1C2F76EFC(), result = 0, (v9))
    {
      if (v4)
      {
        if (v6 && (v5 == v7 && v4 == v6 || (sub_1C2F76EFC() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v6)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

unint64_t sub_1C2F56618()
{
  result = qword_1EC076DB0;
  if (!qword_1EC076DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076DB0);
  }

  return result;
}

uint64_t sub_1C2F5666C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2F566D8()
{
  result = qword_1EC076DC0;
  if (!qword_1EC076DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076DC0);
  }

  return result;
}

unint64_t sub_1C2F56730()
{
  result = qword_1EC076DC8;
  if (!qword_1EC076DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076DC8);
  }

  return result;
}

unint64_t sub_1C2F56788()
{
  result = qword_1EC076DD0;
  if (!qword_1EC076DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076DD0);
  }

  return result;
}

uint64_t sub_1C2F567DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C736E6172547369 && a2 == 0xED0000676E697461 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEC00000074786554 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74616C736E617274 && a2 == 0xEE00747865546465)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C2F76EFC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1C2F569A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C2F56A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  v7 = sub_1C2F76FDC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1C2F76EFC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C2F56B4C(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_1C2F76F9C();
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  sub_1C2F7673C();
  v24 = v7;
  sub_1C2F7673C();
  v23 = v9;
  MEMORY[0x1C6929580](v9);
  v10 = sub_1C2F76FDC();
  v11 = a2 + 56;
  v12 = -1 << *(a2 + 32);
  v13 = v10 & ~v12;
  if ((*(a2 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(a2 + 48);
    do
    {
      v16 = v15 + 40 * v13;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = *(v16 + 32);
      v20 = *v16 == v5 && *(v16 + 8) == v6;
      if (v20 || (sub_1C2F76EFC() & 1) != 0)
      {
        if (v17 == v24 && v18 == v8)
        {
          if (v23 == v19)
          {
            return 1;
          }
        }

        else if ((sub_1C2F76EFC() & 1) != 0 && ((v23 ^ v19) & 1) == 0)
        {
          return 1;
        }
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return 0;
}

uint64_t BlocklistViewModel.__allocating_init(presentContactPicker:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_1C2F56D64;

  return sub_1C2F59D10();
}

uint64_t sub_1C2F56D64(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v6 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C2F56E64, 0, 0);
}

uint64_t sub_1C2F56E64()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  swift_allocObject();
  v8 = sub_1C2F1AD08(v1, v2, v5, v4, sub_1C2F56F10, 0);
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1C2F56F10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  return sub_1C2F5B8E0(v4);
}

uint64_t BlocklistViewModel.refreshBlocklistEntries()()
{
  *(v1 + 48) = v0;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_1C2F56FD4;

  return sub_1C2F59D10();
}

uint64_t sub_1C2F56FD4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v6 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C2F570D4, 0, 0);
}

uint64_t sub_1C2F570D4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  swift_getKeyPath();
  v0[5] = v3;
  sub_1C2F5C354(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v4 = *(v3 + 56);

  sub_1C2F2958C(v2);

  BlocklistViewModel.unknownEntries.setter(v1);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1C2F571F0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 40 * (v9 | (v8 << 6));
    LOBYTE(v9) = *(v10 + 32);
    v11 = *(v10 + 16);
    v13[0] = *v10;
    v13[1] = v11;
    v14 = v9;
    sub_1C2F1CF38(v13, v12);
    sub_1C2F57C18(v12, v13);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1C2F57300(void *a1, void *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = a2[4];
  if (a1[2])
  {
    v5 = a1[2];
    v13 = a1[1];
    if (v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = a1[4];
    if (v6[2])
    {
      v8 = v6[6];
      v7 = v6[7];

      if (v2)
      {
        goto LABEL_10;
      }
    }

    else if (v2)
    {
      goto LABEL_10;
    }
  }

  if (v4[2])
  {
    v9 = v4[6];
    v10 = v4[7];
  }

LABEL_10:
  sub_1C2EF66C8();

  v11 = sub_1C2F76B0C();

  return v11 == -1;
}

uint64_t sub_1C2F57410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(MEMORY[0x1E69958C8] + 4);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1C2F0AC48;

  return MEMORY[0x1EEDF6240](a5);
}

uint64_t sub_1C2F574B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1C2F5C164(a3, v24 - v10);
  v12 = sub_1C2F768AC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C2F5C1D4(v11);
  }

  else
  {
    sub_1C2F7689C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C2F7684C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C2F7672C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1C2F5C1D4(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C2F5C1D4(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1C2F5771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(MEMORY[0x1E69958C0] + 4);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1C2F06348;

  return MEMORY[0x1EEDF6238](a5);
}

size_t sub_1C2F57804(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1C2F579EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E20, &qword_1C2F79BB0);
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

char *sub_1C2F57AF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E00, &qword_1C2F79BC0);
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
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

uint64_t sub_1C2F57C18(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1C2F76F9C();
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v32 = a2;
  v10 = *(a2 + 32);
  sub_1C2F7673C();
  v35 = v9;
  v36 = v8;
  sub_1C2F7673C();
  v34 = v10;
  MEMORY[0x1C6929580](v10);
  v11 = sub_1C2F76FDC();
  v12 = -1 << *(v4 + 32);
  v13 = v11 & ~v12;
  if ((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v4 + 48);
    do
    {
      v16 = v15 + 40 * v13;
      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v19 = *(v16 + 32);
      v20 = *v16 == v6 && *(v16 + 8) == v7;
      if (v20 || (sub_1C2F76EFC() & 1) != 0)
      {
        if (v18 == v36 && v17 == v35)
        {
          if (v34 == v19)
          {
            goto LABEL_16;
          }
        }

        else if ((sub_1C2F76EFC() & 1) != 0 && ((v34 ^ v19) & 1) == 0)
        {
LABEL_16:
          sub_1C2F5C39C(v32);
          v22 = *(v4 + 48) + 40 * v13;
          v24 = *v22;
          v23 = *(v22 + 8);
          v25 = *(v22 + 16);
          v26 = *(v22 + 24);
          LOBYTE(v22) = *(v22 + 32);
          *a1 = v24;
          *(a1 + 8) = v23;
          *(a1 + 16) = v25;
          *(a1 + 24) = v26;
          *(a1 + 32) = v22;

          return 0;
        }
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v28 = *v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v31;
  sub_1C2F1CF38(v32, v38);
  sub_1C2F580D4(v32, v13, isUniquelyReferenced_nonNull_native);
  *v31 = v37;
  v30 = *(v32 + 16);
  *a1 = *v32;
  *(a1 + 16) = v30;
  *(a1 + 32) = *(v32 + 32);
  return 1;
}

uint64_t sub_1C2F57E2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF8, &unk_1C2F7CDA0);
  result = sub_1C2F76C3C();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_1C2F76F9C();
      sub_1C2F7673C();
      sub_1C2F7673C();
      MEMORY[0x1C6929580](v24);
      result = sub_1C2F76FDC();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      *(v15 + 32) = v24;
      ++*(v6 + 16);
      v3 = v35;
      v11 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C2F580D4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v32 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_1C2F57E2C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1C2F582E4();
      goto LABEL_24;
    }

    sub_1C2F5845C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1C2F76F9C();
  v10 = *v5;
  v11 = *(v5 + 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = *(v5 + 32);
  sub_1C2F7673C();
  v34 = v12;
  sub_1C2F7673C();
  v33 = v14;
  MEMORY[0x1C6929580](v14);
  result = sub_1C2F76FDC();
  v15 = v8 + 56;
  v16 = -1 << *(v8 + 32);
  a2 = result & ~v16;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 48);
    do
    {
      v19 = v18 + 40 * a2;
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *v19 == v10 && *(v19 + 8) == v11;
      if (v23 || (result = sub_1C2F76EFC(), (result & 1) != 0))
      {
        if (v20 == v34 && v21 == v13)
        {
          if (v33 == v22)
          {
            goto LABEL_23;
          }
        }

        else
        {
          result = sub_1C2F76EFC();
          if ((result & 1) != 0 && ((v33 ^ v22) & 1) == 0)
          {
LABEL_23:
            result = sub_1C2F76F1C();
            __break(1u);
            break;
          }
        }
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v25 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = *(v25 + 48) + 40 * a2;
  v27 = *(v32 + 16);
  *v26 = *v32;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(v32 + 32);
  v28 = *(v25 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v30;
  }

  return result;
}

void *sub_1C2F582E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF8, &unk_1C2F7CDA0);
  v2 = *v0;
  v3 = sub_1C2F76C2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C2F5845C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF8, &unk_1C2F7CDA0);
  result = sub_1C2F76C3C();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v35 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_1C2F76F9C();

      sub_1C2F7673C();
      sub_1C2F7673C();
      MEMORY[0x1C6929580](v24);
      result = sub_1C2F76FDC();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v23;
      *(v15 + 24) = v22;
      *(v15 + 32) = v24;
      ++*(v6 + 16);
      v3 = v34;
      v11 = v35;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C2F586E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C2F5993C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1C2F58754(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1C2F58754(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C2F76ECC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C2F7681C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1C2F58A60(v7, v8, a1, v4);
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
    return sub_1C2F5884C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C2F5884C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 40 * a3 - 40;
    v5 = result - a3;
LABEL_5:
    v26 = v4;
    v27 = a3;
    v6 = (v28 + 40 * a3);
    v8 = v6[2];
    v7 = v6[3];
    v9 = v6[4];
    v25 = v5;
    while (1)
    {
      v10 = *(v4 + 8);
      v11 = *(v4 + 16);
      v12 = *(v4 + 24);
      v13 = *(v4 + 32);
      v29 = v5;
      if (v8)
      {
        v14 = *(v4 + 48);
      }

      else if (v9[2])
      {
        v16 = v9[6];
        v15 = v9[7];
      }

      if (!v11)
      {
        if (v13[2])
        {
          v18 = v13[6];
          v17 = v13[7];
        }
      }

      sub_1C2EF66C8();
      swift_bridgeObjectRetain_n();
      v19 = v7;

      swift_bridgeObjectRetain_n();
      v20 = v12;

      v21 = sub_1C2F76B0C();

      if (v21 != -1)
      {
LABEL_4:
        a3 = v27 + 1;
        v4 = v26 + 40;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v28)
      {
        break;
      }

      v22 = *(v4 + 40);
      v23 = *(v4 + 16);
      *(v4 + 40) = *v4;
      v8 = *(v4 + 56);
      v7 = *(v4 + 64);
      v9 = *(v4 + 72);
      *(v4 + 56) = v23;
      *(v4 + 72) = *(v4 + 32);
      *v4 = v22;
      *(v4 + 16) = v8;
      *(v4 + 24) = v7;
      *(v4 + 32) = v9;
      v4 -= 40;
      v5 = v29 + 1;
      if (v29 == -1)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1C2F58A60(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    v4 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_144;
    }

    v118 = v4;
LABEL_113:
    v119 = v7;
    v154 = v118;
    v120 = *(v118 + 2);
    if (v120 >= 2)
    {
      do
      {
        v121 = *v8;
        if (!*v8)
        {
          goto LABEL_148;
        }

        v4 = v120 - 1;
        v7 = *&v118[16 * v120];
        v122 = v118;
        v8 = *&v118[16 * v120 + 24];
        sub_1C2F593E8((v121 + 40 * v7), (v121 + 40 * *&v118[16 * v120 + 16]), v121 + 40 * v8, v6);
        if (v119)
        {
          break;
        }

        if (v8 < v7)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_1C2F59928(v122);
        }

        if (v120 - 2 >= *(v122 + 2))
        {
          goto LABEL_138;
        }

        v123 = &v122[16 * v120];
        *v123 = v7;
        *(v123 + 1) = v8;
        v154 = v122;
        sub_1C2F5989C(v4);
        v118 = v154;
        v120 = *(v154 + 2);
        v8 = a3;
      }

      while (v120 > 1);
    }

LABEL_121:

    return;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    if (v10 + 1 >= v9)
    {
      v9 = v10 + 1;
    }

    else
    {
      v130 = v11;
      v13 = *v8;
      v14 = *v8 + 40 * (v10 + 1);
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v17 = *(v14 + 32);
      v150 = *v14;
      v151 = v15;
      v152 = v16;
      v153 = v17;
      v18 = (v13 + 40 * v10);
      v6 = *(v18 + 2);
      v19 = *(v18 + 3);
      v20 = v7;
      v21 = *(v18 + 4);
      v146 = *v18;
      v147 = v6;
      v148 = v19;
      v149 = v21;
      v22 = v19;

      v23 = v16;

      v135 = sub_1C2F57300(&v150, &v146);
      if (v20)
      {
        v124 = v148;

        v125 = v152;

        return;
      }

      v24 = v148;

      v4 = v151;
      v25 = v152;

      v26 = v12 + 2;
      v127 = v12;
      v137 = 40 * v12;
      v139 = v9;
      v27 = (v13 + 40 * v12 + 112);
      while (v9 != v26)
      {
        v31 = *(v27 - 2);
        v32 = *(v27 - 1);
        v33 = *v27;
        v34 = *(v27 - 8);
        v6 = *(v27 - 7);
        v35 = *(v27 - 5);
        v143 = v32;
        v145 = *(v27 - 6);
        if (v31)
        {
          v36 = *(v27 - 3);
        }

        else if (v33[2])
        {
          v36 = v33[6];
          v37 = v33[7];
        }

        else
        {
          v36 = 0;
          v31 = 0xE000000000000000;
        }

        *&v150 = v36;
        *(&v150 + 1) = v31;
        if (v6)
        {
          v4 = v35;
          v28 = v6;
        }

        else if (v35[2])
        {
          v34 = v35[6];
          v38 = v35[7];
          v4 = v35;
        }

        else
        {
          v4 = v35;
          v34 = 0;
          v28 = 0xE000000000000000;
        }

        *&v146 = v34;
        *(&v146 + 1) = v28;
        sub_1C2EF66C8();
        swift_bridgeObjectRetain_n();
        v142 = v143;

        swift_bridgeObjectRetain_n();
        v29 = v145;

        v30 = sub_1C2F76B0C();

        ++v26;
        v27 += 5;
        v9 = v139;
        if (((v135 ^ (v30 != -1)) & 1) == 0)
        {
          v9 = v26 - 1;
          break;
        }
      }

      v7 = 0;
      v11 = v130;
      v8 = a3;
      v12 = v127;
      if (v135)
      {
        if (v9 < v127)
        {
          goto LABEL_143;
        }

        if (v127 < v9)
        {
          v39 = 40 * v9 - 40;
          v40 = v9;
          v41 = v127;
          do
          {
            if (v41 != --v40)
            {
              v42 = *a3;
              if (!*a3)
              {
                goto LABEL_147;
              }

              v43 = (v42 + v137);
              v44 = *(v42 + v137 + 32);
              v45 = (v42 + v39);
              v46 = *v43;
              v47 = v43[1];
              v48 = *(v45 + 4);
              v49 = v45[1];
              *v43 = *v45;
              v43[1] = v49;
              *(v43 + 4) = v48;
              *v45 = v46;
              v45[1] = v47;
              *(v45 + 4) = v44;
            }

            ++v41;
            v39 -= 40;
            v137 += 40;
          }

          while (v41 < v40);
        }
      }
    }

    v50 = *(v8 + 8);
    if (v9 < v50)
    {
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_140;
      }

      if (v9 - v12 < a4)
      {
        if (__OFADD__(v12, a4))
        {
          goto LABEL_141;
        }

        if (v12 + a4 >= v50)
        {
          v51 = *(v8 + 8);
        }

        else
        {
          v51 = v12 + a4;
        }

        if (v51 < v12)
        {
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          v118 = sub_1C2F59928(v4);
          goto LABEL_113;
        }

        if (v9 != v51)
        {
          break;
        }
      }
    }

    v10 = v9;
    if (v9 < v12)
    {
      goto LABEL_139;
    }

LABEL_39:
    v52 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v11 = v52;
    }

    else
    {
      v11 = sub_1C2F1C78C(0, *(v52 + 2) + 1, 1, v52);
    }

    v4 = *(v11 + 2);
    v53 = *(v11 + 3);
    v54 = v4 + 1;
    if (v4 >= v53 >> 1)
    {
      v11 = sub_1C2F1C78C((v53 > 1), v4 + 1, 1, v11);
    }

    *(v11 + 2) = v54;
    v55 = &v11[16 * v4];
    *(v55 + 4) = v12;
    *(v55 + 5) = v10;
    v56 = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    if (v4)
    {
      while (1)
      {
        v57 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v58 = *(v11 + 4);
          v59 = *(v11 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_58:
          if (v61)
          {
            goto LABEL_128;
          }

          v74 = &v11[16 * v54];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_131;
          }

          v80 = &v11[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_135;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v54 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v84 = &v11[16 * v54];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_72:
        if (v79)
        {
          goto LABEL_130;
        }

        v87 = &v11[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_133;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_79:
        v4 = v57 - 1;
        if (v57 - 1 >= v54)
        {
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
          goto LABEL_142;
        }

        if (!*v8)
        {
          goto LABEL_146;
        }

        v95 = v11;
        v96 = *&v11[16 * v4 + 32];
        v6 = *&v11[16 * v57 + 40];
        sub_1C2F593E8((*v8 + 40 * v96), (*v8 + 40 * *&v11[16 * v57 + 32]), *v8 + 40 * v6, v56);
        if (v7)
        {
          goto LABEL_121;
        }

        if (v6 < v96)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1C2F59928(v95);
        }

        if (v4 >= *(v95 + 2))
        {
          goto LABEL_125;
        }

        v97 = &v95[16 * v4];
        *(v97 + 4) = v96;
        *(v97 + 5) = v6;
        v154 = v95;
        sub_1C2F5989C(v57);
        v11 = v154;
        v54 = *(v154 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v11[16 * v54 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_126;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_127;
      }

      v69 = &v11[16 * v54];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_129;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_132;
      }

      if (v73 >= v65)
      {
        v91 = &v11[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_136;
        }

        if (v60 < v94)
        {
          v57 = v54 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v9 = *(v8 + 8);
    if (v10 >= v9)
    {
      goto LABEL_110;
    }
  }

  v129 = v7;
  v131 = v11;
  v141 = *v8;
  v98 = *v8 + 40 * v9 - 40;
  v128 = v12;
  v99 = v12 - v9;
  v134 = v51;
LABEL_90:
  v138 = v98;
  v140 = v9;
  v100 = (v141 + 40 * v9);
  v102 = v100[2];
  v101 = v100[3];
  v103 = v100[4];
  v136 = v99;
  v104 = v99;
  while (1)
  {
    v144 = v104;
    v105 = *(v98 + 8);
    v106 = *(v98 + 16);
    v107 = *(v98 + 24);
    v108 = *(v98 + 32);
    if (v102)
    {
      v109 = *(v98 + 48);
      v110 = v102;
    }

    else if (v103[2])
    {
      v109 = v103[6];
      v111 = v103[7];
    }

    else
    {
      v109 = 0;
      v110 = 0xE000000000000000;
    }

    *&v150 = v109;
    *(&v150 + 1) = v110;
    if (v106)
    {
      v4 = v108;
      v112 = v106;
    }

    else if (v108[2])
    {
      v105 = v108[6];
      v113 = v108[7];
      v4 = v108;
    }

    else
    {
      v4 = v108;
      v105 = 0;
      v112 = 0xE000000000000000;
    }

    *&v146 = v105;
    *(&v146 + 1) = v112;
    sub_1C2EF66C8();
    swift_bridgeObjectRetain_n();
    v114 = v101;

    swift_bridgeObjectRetain_n();
    v6 = v107;

    v115 = sub_1C2F76B0C();

    if (v115 != -1)
    {
LABEL_89:
      v9 = v140 + 1;
      v98 = v138 + 40;
      v10 = v134;
      v99 = v136 - 1;
      if (v140 + 1 != v134)
      {
        goto LABEL_90;
      }

      v7 = v129;
      v11 = v131;
      v8 = a3;
      v12 = v128;
      if (v134 < v128)
      {
        goto LABEL_139;
      }

      goto LABEL_39;
    }

    if (!v141)
    {
      break;
    }

    v116 = *(v98 + 40);
    v117 = *(v98 + 16);
    *(v98 + 40) = *v98;
    v102 = *(v98 + 56);
    v101 = *(v98 + 64);
    v103 = *(v98 + 72);
    *(v98 + 56) = v117;
    *(v98 + 72) = *(v98 + 32);
    *v98 = v116;
    *(v98 + 16) = v102;
    *(v98 + 24) = v101;
    *(v98 + 32) = v103;
    v98 -= 40;
    v104 = v144 + 1;
    if (v144 == -1)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

uint64_t sub_1C2F593E8(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 40;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 40;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[40 * v11] <= a4)
    {
      memmove(a4, __dst, 40 * v11);
    }

    v12 = &v4[40 * v11];
    if (v10 >= 40 && v6 > v7)
    {
      v64 = v4;
      v58 = v7;
LABEL_29:
      v33 = v5 - 40;
      v66 = v6;
      do
      {
        v60 = v12;
        v62 = v33;
        v34 = *(v12 - 2);
        v35 = *(v12 - 1);
        v36 = *(v6 - 4);
        v37 = *(v6 - 3);
        v39 = *(v6 - 2);
        v38 = *(v6 - 1);
        if (*(v12 - 3))
        {
          v40 = *(v12 - 4);
          v41 = *(v12 - 3);
        }

        else if (v35[2])
        {
          v43 = v35[6];
          v42 = v35[7];
        }

        if (!v37 && v38[2])
        {
          v44 = v38[6];
          v45 = v38[7];
        }

        sub_1C2EF66C8();
        swift_bridgeObjectRetain_n();
        v46 = v34;

        swift_bridgeObjectRetain_n();
        v47 = v39;

        v48 = sub_1C2F76B0C();

        if (v48 == -1)
        {
          v52 = (v66 - 40);
          v5 = v62;
          v4 = v64;
          v12 = v60;
          if ((v62 + 40) != v66)
          {
            v53 = *v52;
            v54 = *(v66 - 24);
            *(v62 + 32) = *(v66 - 1);
            *v62 = v53;
            *(v62 + 16) = v54;
          }

          if (v60 <= v64 || (v6 = v66 - 40, v52 <= v58))
          {
            v6 = v66 - 40;
            goto LABEL_48;
          }

          goto LABEL_29;
        }

        v49 = v60 - 40;
        v4 = v64;
        v6 = v66;
        if ((v62 + 40) != v60)
        {
          v50 = *v49;
          v51 = *(v60 - 24);
          *(v62 + 32) = *(v60 - 1);
          *v62 = v50;
          *(v62 + 16) = v51;
        }

        v33 = v62 - 40;
        v12 = v60 - 40;
      }

      while (v49 > v64);
      v12 = v60 - 40;
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 >= 40 && v6 < v5)
    {
      v59 = &v4[40 * v9];
      v61 = v5;
      while (1)
      {
        v13 = *(v6 + 3);
        v14 = *(v6 + 4);
        v15 = *(v4 + 1);
        v16 = *(v4 + 2);
        v18 = *(v4 + 3);
        v17 = *(v4 + 4);
        v57 = v7;
        if (*(v6 + 2))
        {
          v19 = *(v6 + 1);
          v20 = *(v6 + 2);
        }

        else if (v14[2])
        {
          v22 = v14[6];
          v21 = v14[7];
        }

        v63 = v4;
        v65 = v6;
        if (!v16 && v17[2])
        {
          v23 = v17[6];
          v24 = v17[7];
        }

        sub_1C2EF66C8();
        swift_bridgeObjectRetain_n();
        v25 = v13;

        swift_bridgeObjectRetain_n();
        v26 = v18;

        v27 = sub_1C2F76B0C();

        if (v27 != -1)
        {
          break;
        }

        v28 = v65;
        v6 = v65 + 40;
        v29 = v57;
        v12 = v59;
        v30 = v61;
        if (v57 != v65)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 = v29 + 40;
        if (v4 >= v12 || v6 >= v30)
        {
          goto LABEL_46;
        }
      }

      v28 = v4;
      v4 += 40;
      v29 = v57;
      v6 = v65;
      v12 = v59;
      v30 = v61;
      if (v57 == v63)
      {
        goto LABEL_18;
      }

LABEL_17:
      v31 = *v28;
      v32 = *(v28 + 1);
      *(v29 + 4) = *(v28 + 4);
      *v29 = v31;
      *(v29 + 1) = v32;
      goto LABEL_18;
    }

LABEL_46:
    v6 = v7;
  }

LABEL_48:
  v55 = (v12 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v55])
  {
    memmove(v6, v4, 40 * v55);
  }

  return 1;
}

uint64_t sub_1C2F5989C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C2F59928(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

id sub_1C2F59950(void *a1, void *a2, void *a3)
{
  v42[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076AF8, &qword_1C2F7D770);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C2F7CD30;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v7 = [objc_opt_self() descriptorForRequiredKeys];
  v8 = *MEMORY[0x1E695C258];
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  v9 = *MEMORY[0x1E695C240];
  v10 = *MEMORY[0x1E695C2F0];
  *(v6 + 56) = *MEMORY[0x1E695C240];
  *(v6 + 64) = v10;
  v11 = *MEMORY[0x1E695C230];
  v12 = *MEMORY[0x1E695C208];
  *(v6 + 72) = *MEMORY[0x1E695C230];
  *(v6 + 80) = v12;
  v13 = *MEMORY[0x1E695C330];
  *(v6 + 88) = *MEMORY[0x1E695C330];
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = sub_1C2F766AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076B00, &unk_1C2F7B958);
  v21 = sub_1C2F767DC();

  v41[0] = 0;
  v22 = [a3 unifiedContactWithIdentifier:v20 keysToFetch:v21 error:v41];

  v23 = v41[0];
  if (!v22)
  {
    v25 = v23;
    v26 = sub_1C2F75A2C();

    swift_willThrow();
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v27 = sub_1C2F761FC();
    __swift_project_value_buffer(v27, qword_1EDEBDA78);

    v28 = v26;
    v29 = sub_1C2F761DC();
    v30 = sub_1C2F769EC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42[0] = v32;
      *v31 = 136315394;
      v41[0] = a1;
      v41[1] = a2;

      v33 = sub_1C2F7670C();
      v35 = sub_1C2EFAB28(v33, v34, v42);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v41[0] = v26;
      v36 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF0, &unk_1C2F7A4C0);
      v37 = sub_1C2F7670C();
      v39 = sub_1C2EFAB28(v37, v38, v42);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_1C2EF2000, v29, v30, "Failed to fetch unified contact with identifier: %s error: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v32, -1, -1);
      MEMORY[0x1C6929E80](v31, -1, -1);
    }

    else
    {
    }

    goto LABEL_9;
  }

  result = v22;
LABEL_10:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C2F59D10()
{
  v1 = sub_1C2F7612C();
  v0[24] = v1;
  v2 = *(v1 - 8);
  v0[25] = v2;
  v3 = *(v2 + 64) + 15;
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v4 = sub_1C2F7605C();
  v0[28] = v4;
  v5 = *(v4 - 8);
  v0[29] = v5;
  v6 = *(v5 + 64) + 15;
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2F59E40, 0, 0);
}

uint64_t sub_1C2F59E40()
{
  sub_1C2F760BC();
  v0[32] = sub_1C2F7608C();
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C2F761FC();
  v0[33] = __swift_project_value_buffer(v1, qword_1EDEBDA78);
  v2 = sub_1C2F761DC();
  v3 = sub_1C2F769EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C2EF2000, v2, v3, "Querying into CommTrust Blocklist for handles...", v4, 2u);
    MEMORY[0x1C6929E80](v4, -1, -1);
  }

  v0[34] = sub_1C2F7609C();
  v5 = sub_1C2F761DC();
  v6 = sub_1C2F769EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C2EF2000, v5, v6, "Querying into CommTrust Blocklist for contacts...", v7, 2u);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  v8 = *(MEMORY[0x1E69958D0] + 4);
  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = sub_1C2F5A158;

  return MEMORY[0x1EEDF6260]();
}

uint64_t sub_1C2F5A158(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v7 = sub_1C2F5AD1C;
  }

  else
  {
    *(v4 + 296) = a1;
    v7 = sub_1C2F5A280;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C2F5A280()
{
  v136 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = [objc_opt_self() tu_acceptedContactStoreConfiguration];
  v108 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  v127 = MEMORY[0x1E69E7CD0];
  if (v2 >> 62)
  {
    result = sub_1C2F76BBC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_25:
    v119 = v1;
    v38 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (result < 1)
  {
LABEL_62:
    __break(1u);
    return result;
  }

  v5 = 0;
  v122 = v2 & 0xC000000000000001;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &selRef_objectForKey_;
  v120 = MEMORY[0x1E69E7CC0];
  v125 = result;
  v106 = v2;
  do
  {
    if (v122)
    {
      v9 = MEMORY[0x1C6929250](v5, v2);
    }

    else
    {
      v9 = *(v2 + 8 * v5 + 32);
    }

    v10 = v9;
    v11 = [v9 v7[21]];
    v12 = sub_1C2F766CC();
    v14 = v13;

    *(v0 + 128) = v12;
    *(v0 + 136) = v14;
    v15 = swift_task_alloc();
    *(v15 + 16) = v0 + 128;
    LOBYTE(v12) = sub_1C2F569A8(sub_1C2F5C2FC, v15, v6);

    if (v12)
    {

      v8 = v125;
    }

    else
    {
      v16 = [v10 v7[21]];
      v17 = sub_1C2F766CC();
      v19 = v18;

      v20 = sub_1C2F59950(v17, v19, v108);

      if (v20)
      {
        v118 = v1;
        v21 = v20;
        SettingsPersonEntry.init(contact:)(v21, &v133);
        v109 = v134;
        v110 = v133;
        v22 = v135;
        v23 = *(&v134 + 1);

        v24 = v120;
        v115 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1C2F1C890(0, *(v120 + 2) + 1, 1, v120);
        }

        v26 = *(v24 + 2);
        v25 = *(v24 + 3);
        v27 = v24;
        v112 = v23;
        if (v26 >= v25 >> 1)
        {
          v27 = sub_1C2F1C890((v25 > 1), v26 + 1, 1, v24);
        }

        *(v27 + 2) = v26 + 1;
        v120 = v27;
        v28 = &v27[40 * v26];
        *(v28 + 2) = v110;
        *(v28 + 3) = v109;
        *(v28 + 8) = v22;

        v30 = sub_1C2F1CCD8(v29);

        sub_1C2F571F0(v30);
        v31 = [v10 identifier];
        v32 = sub_1C2F766CC();
        v34 = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1C2F1C2F0(0, *(v6 + 2) + 1, 1, v6);
        }

        v36 = *(v6 + 2);
        v35 = *(v6 + 3);
        if (v36 >= v35 >> 1)
        {
          v6 = sub_1C2F1C2F0((v35 > 1), v36 + 1, 1, v6);
        }

        *(v6 + 2) = v36 + 1;
        v37 = &v6[16 * v36];
        *(v37 + 4) = v32;
        *(v37 + 5) = v34;
        v1 = v118;
        v2 = v106;
      }

      else
      {
      }

      v8 = v125;
      v7 = &selRef_objectForKey_;
    }

    ++v5;
  }

  while (v8 != v5);
  v119 = v1;
  v38 = v120;
LABEL_26:
  v39 = *(v0 + 272);
  v40 = *(v0 + 232);
  v41 = *(v0 + 200);

  v42 = v39 + 56;
  v105 = v39;
  v43 = -1;
  v44 = -1 << *(v39 + 32);
  if (-v44 < 64)
  {
    v43 = ~(-1 << -v44);
  }

  v45 = v43 & *(v39 + 56);
  v46 = (63 - v44) >> 6;
  v126 = *MEMORY[0x1E696ED80];
  v123 = (v41 + 8);
  v124 = (v41 + 104);
  v104 = v40;
  v100 = MEMORY[0x1E69E7CC0];
  v101 = (v40 + 8);
  v121 = v38;
  v102 = v46;
  v103 = v39 + 56;
  v47 = 0;
  if (v45)
  {
    while (1)
    {
      while (1)
      {
        v48 = v47;
        v50 = *(v0 + 240);
        v49 = *(v0 + 248);
        v52 = *(v0 + 216);
        v51 = *(v0 + 224);
        v53 = *(v0 + 208);
        v54 = *(v0 + 192);
        (*(v104 + 16))(v49, *(v105 + 48) + *(v104 + 72) * (__clz(__rbit64(v45)) | (v48 << 6)), v51);
        (*(v104 + 32))(v50, v49, v51);
        v55 = sub_1C2F7604C();
        v113 = v56;
        v116 = v55;
        sub_1C2F7603C();
        v111 = *v124;
        (*v124)(v53, v126, v54);
        sub_1C2F5C354(&unk_1EDEBC5C0, MEMORY[0x1E696EDA8]);
        sub_1C2F767BC();
        sub_1C2F767BC();
        v57 = *v123;
        (*v123)(v53, v54);
        v57(v52, v54);
        v58 = *(v0 + 144);
        v59 = *(v0 + 152);
        v60 = sub_1C2F7604C();
        v62 = v61;
        if (v58 != v59)
        {
          goto LABEL_38;
        }

LABEL_33:
        v63 = sub_1C2F766AC();
        v64 = PNCopyBestGuessCountryCodeForNumber();

        if (v64)
        {
          v65 = sub_1C2F766AC();
          v66 = CFPhoneNumberCreate();

          if (v66)
          {
            String = CFPhoneNumberCreateString();
            if (String)
            {
              v68 = String;
              v107 = sub_1C2F766CC();
              v70 = v69;

              v62 = v70;
            }

            else
            {
              v107 = v60;
            }
          }

          else
          {
            v107 = v60;
          }
        }

        else
        {
LABEL_38:
          v107 = v60;
        }

        v45 &= v45 - 1;
        v71 = *(v0 + 240);
        v73 = *(v0 + 208);
        v72 = *(v0 + 216);
        v74 = *(v0 + 192);
        sub_1C2F7603C();
        v111(v73, v126, v74);
        sub_1C2F767BC();
        sub_1C2F767BC();
        v57(v73, v74);
        v57(v72, v74);
        v75 = *(v0 + 160) != *(v0 + 168);
        *(v0 + 88) = v116;
        *(v0 + 96) = v113;
        *(v0 + 104) = v107;
        *(v0 + 112) = v62;
        *(v0 + 120) = v75;
        if ((sub_1C2F56B4C((v0 + 88), v127) & 1) == 0)
        {
          break;
        }

        (*v101)(*(v0 + 240), *(v0 + 224));
        result = sub_1C2F5C39C(v0 + 88);
        v47 = v48;
        v38 = v121;
        v46 = v102;
        v42 = v103;
        if (!v45)
        {
          goto LABEL_30;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076580, &qword_1C2F79BE0);
      v76 = swift_allocObject();
      v77 = *(v0 + 88);
      *(v76 + 16) = xmmword_1C2F78B90;
      *(v76 + 32) = v77;
      *(v76 + 48) = *(v0 + 104);
      *(v76 + 64) = *(v0 + 120);
      sub_1C2F76FEC();
      MEMORY[0x1C6929580](0);
      v78 = *(v76 + 16);

      v114 = v78;
      if (v78)
      {
        break;
      }

LABEL_48:

      *(v0 + 48) = v130;
      *(v0 + 64) = v131;
      *(v0 + 80) = v132;
      *(v0 + 16) = v128;
      *(v0 + 32) = v129;
      v87 = sub_1C2F76FCC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_1C2F1C890(0, *(v100 + 2) + 1, 1, v100);
      }

      v38 = v121;
      v89 = *(v100 + 2);
      v88 = *(v100 + 3);
      if (v89 >= v88 >> 1)
      {
        v100 = sub_1C2F1C890((v88 > 1), v89 + 1, 1, v100);
      }

      result = (*v101)(*(v0 + 240), *(v0 + 224));
      *(v100 + 2) = v89 + 1;
      v90 = &v100[40 * v89];
      *(v90 + 4) = v87;
      *(v90 + 5) = 0;
      *(v90 + 6) = 0;
      *(v90 + 7) = 0;
      *(v90 + 8) = v76;
      v46 = v102;
      v42 = v103;
      v47 = v48;
      if (!v45)
      {
        goto LABEL_30;
      }
    }

    v79 = 0;
    v80 = (v76 + 64);
    while (v79 < *(v76 + 16))
    {
      ++v79;
      v117 = *v80;
      v81 = *(v80 - 2);
      v82 = *(v80 - 1);
      v83 = v76;
      v85 = *(v80 - 4);
      v84 = *(v80 - 3);
      sub_1C2F76F9C();

      v76 = v83;
      sub_1C2F7673C();
      sub_1C2F7673C();
      MEMORY[0x1C6929580](v117);
      v86 = sub_1C2F76FDC();
      MEMORY[0x1C6929580](v86);

      v80 += 40;
      if (v114 == v79)
      {
        goto LABEL_48;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  while (1)
  {
LABEL_30:
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v48 >= v46)
    {
      break;
    }

    v45 = *(v42 + 8 * v48);
    ++v47;
    if (v45)
    {
      goto LABEL_33;
    }
  }

  v91 = *(v0 + 272);

  *&v133 = v38;

  sub_1C2F586E8(&v133);
  if (v119)
  {
  }

  else
  {
    v92 = v133;
    *&v133 = v100;

    sub_1C2F586E8(&v133);
    v94 = *(v0 + 248);
    v93 = *(v0 + 256);
    v95 = *(v0 + 240);
    v97 = *(v0 + 208);
    v96 = *(v0 + 216);

    v98 = v133;

    v99 = *(v0 + 8);

    return v99(v92, v98);
  }
}

void sub_1C2F5AD1C()
{
  v145 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = v1;
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 288);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v142 = v8;
    *v7 = 136315138;
    *(v0 + 176) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF0, &unk_1C2F7A4C0);
    v10 = sub_1C2F7670C();
    v12 = sub_1C2EFAB28(v10, v11, &v142);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "Failed to fetch blocklist contacts %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1C6929E80](v8, -1, -1);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  else
  {
    v6 = *(v0 + 288);
  }

  v13 = [objc_opt_self() tu_acceptedContactStoreConfiguration];
  v119 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  v136 = MEMORY[0x1E69E7CD0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C2F76BBC())
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      if (i < 1)
      {
        __break(1u);
        return;
      }

      v16 = 0;
      v17 = 0;
      v130 = MEMORY[0x1E69E7CC0] >> 62;
      v18 = &selRef_objectForKey_;
      v135 = MEMORY[0x1E69E7CC0];
      v128 = MEMORY[0x1E69E7CC0];
      v117 = i;
      do
      {
        if (v130)
        {
          v19 = MEMORY[0x1C6929250](v17, v15);
        }

        else
        {
          v19 = *&v15[8 * v17 + 32];
        }

        v20 = v19;
        v21 = [v19 v18[21]];
        v22 = sub_1C2F766CC();
        v24 = v23;

        *(v0 + 128) = v22;
        *(v0 + 136) = v24;
        v25 = swift_task_alloc();
        *(v25 + 16) = v0 + 128;
        LOBYTE(v22) = sub_1C2F569A8(sub_1C2F5C2FC, v25, v135);

        if (v22)
        {
        }

        else
        {
          v26 = [v20 v18[21]];
          v27 = sub_1C2F766CC();
          v29 = v28;

          v30 = sub_1C2F59950(v27, v29, v119);

          if (v30)
          {
            v31 = v30;
            SettingsPersonEntry.init(contact:)(v31, &v142);
            v120 = v143;
            v123 = v142;
            v32 = v144;
            v33 = *(&v143 + 1);

            v34 = v128;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_1C2F1C890(0, *(v128 + 2) + 1, 1, v128);
            }

            v36 = *(v34 + 2);
            v35 = *(v34 + 3);
            v37 = v34;
            v133 = v16;
            v126 = v33;
            if (v36 >= v35 >> 1)
            {
              v37 = sub_1C2F1C890((v35 > 1), v36 + 1, 1, v34);
            }

            *(v37 + 2) = v36 + 1;
            v128 = v37;
            v38 = &v37[40 * v36];
            *(v38 + 2) = v123;
            *(v38 + 3) = v120;
            *(v38 + 8) = v32;

            v40 = sub_1C2F1CCD8(v39);

            sub_1C2F571F0(v40);
            v41 = [v20 identifier];
            v42 = sub_1C2F766CC();
            v44 = v43;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v135 = sub_1C2F1C2F0(0, *(v135 + 2) + 1, 1, v135);
            }

            v46 = *(v135 + 2);
            v45 = *(v135 + 3);
            if (v46 >= v45 >> 1)
            {
              v135 = sub_1C2F1C2F0((v45 > 1), v46 + 1, 1, v135);
            }

            *(v135 + 2) = v46 + 1;
            v47 = &v135[16 * v46];
            *(v47 + 4) = v42;
            *(v47 + 5) = v44;
            v16 = v133;
            i = v117;
            v15 = MEMORY[0x1E69E7CC0];
          }

          else
          {
          }

          v18 = &selRef_objectForKey_;
        }

        ++v17;
      }

      while (i != v17);
      v15 = v128;
    }

    else
    {
      v16 = 0;
    }

    v48 = *(v0 + 272);
    v49 = *(v0 + 232);
    v50 = *(v0 + 200);
    v110 = MEMORY[0x1E69E7CC0];

    v51 = v48 + 56;
    v115 = v48;
    v52 = -1;
    v53 = -1 << *(v48 + 32);
    if (-v53 < 64)
    {
      v52 = ~(-1 << -v53);
    }

    v54 = v52 & *(v48 + 56);
    v55 = (63 - v53) >> 6;
    v132 = *MEMORY[0x1E696ED80];
    v131 = (v50 + 104);
    v127 = (v50 + 8);
    v114 = v49;
    v111 = (v49 + 8);
    v109 = xmmword_1C2F78B90;
    v129 = v15;
    v112 = v55;
    v113 = v48 + 56;
    v56 = 0;
    if (!v54)
    {
      break;
    }

    while (1)
    {
      while (1)
      {
        v134 = v16;
        v57 = v56;
        v59 = *(v0 + 240);
        v58 = *(v0 + 248);
        v61 = *(v0 + 216);
        v60 = *(v0 + 224);
        v62 = *(v0 + 208);
        v63 = *(v0 + 192);
        (*(v114 + 16))(v58, *(v115 + 48) + *(v114 + 72) * (__clz(__rbit64(v54)) | (v57 << 6)), v60);
        (*(v114 + 32))(v59, v58, v60);
        v124 = sub_1C2F7604C();
        v121 = v64;
        sub_1C2F7603C();
        v118 = *v131;
        (*v131)(v62, v132, v63);
        sub_1C2F5C354(&unk_1EDEBC5C0, MEMORY[0x1E696EDA8]);
        sub_1C2F767BC();
        sub_1C2F767BC();
        v65 = *v127;
        (*v127)(v62, v63);
        v65(v61, v63);
        v66 = *(v0 + 144);
        v67 = *(v0 + 152);
        v68 = sub_1C2F7604C();
        v70 = v69;
        if (v66 != v67)
        {
          goto LABEL_42;
        }

LABEL_37:
        v71 = sub_1C2F766AC();
        v72 = PNCopyBestGuessCountryCodeForNumber();

        if (v72)
        {
          v73 = sub_1C2F766AC();
          v74 = CFPhoneNumberCreate();

          if (v74)
          {
            String = CFPhoneNumberCreateString();
            if (String)
            {
              v76 = String;
              v116 = sub_1C2F766CC();
              v78 = v77;

              v70 = v78;
            }

            else
            {
              v116 = v68;
            }
          }

          else
          {
            v116 = v68;
          }
        }

        else
        {
LABEL_42:
          v116 = v68;
        }

        v54 &= v54 - 1;
        v79 = *(v0 + 240);
        v81 = *(v0 + 208);
        v80 = *(v0 + 216);
        v82 = *(v0 + 192);
        sub_1C2F7603C();
        v118(v81, v132, v82);
        sub_1C2F767BC();
        sub_1C2F767BC();
        v65(v81, v82);
        v65(v80, v82);
        v83 = *(v0 + 160) != *(v0 + 168);
        *(v0 + 88) = v124;
        *(v0 + 96) = v121;
        *(v0 + 104) = v116;
        *(v0 + 112) = v70;
        *(v0 + 120) = v83;
        if ((sub_1C2F56B4C((v0 + 88), v136) & 1) == 0)
        {
          break;
        }

        (*v111)(*(v0 + 240), *(v0 + 224));
        sub_1C2F5C39C(v0 + 88);
        v56 = v57;
        v15 = v129;
        v16 = v134;
        v55 = v112;
        v51 = v113;
        if (!v54)
        {
          goto LABEL_33;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076580, &qword_1C2F79BE0);
      v84 = swift_allocObject();
      v85 = *(v0 + 88);
      *(v84 + 16) = xmmword_1C2F78B90;
      *(v84 + 32) = v85;
      *(v84 + 48) = *(v0 + 104);
      *(v84 + 64) = *(v0 + 120);
      sub_1C2F76FEC();
      MEMORY[0x1C6929580](0);
      v86 = *(v84 + 16);

      v125 = v86;
      if (v86)
      {
        break;
      }

LABEL_52:

      *(v0 + 48) = v139;
      *(v0 + 64) = v140;
      *(v0 + 80) = v141;
      *(v0 + 16) = v137;
      *(v0 + 32) = v138;
      v96 = sub_1C2F76FCC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_1C2F1C890(0, *(v110 + 2) + 1, 1, v110);
      }

      v15 = v129;
      v16 = v134;
      v98 = *(v110 + 2);
      v97 = *(v110 + 3);
      if (v98 >= v97 >> 1)
      {
        v110 = sub_1C2F1C890((v97 > 1), v98 + 1, 1, v110);
      }

      (*v111)(*(v0 + 240), *(v0 + 224));
      *(v110 + 2) = v98 + 1;
      v99 = &v110[40 * v98];
      *(v99 + 4) = v96;
      *(v99 + 5) = 0;
      *(v99 + 6) = 0;
      *(v99 + 7) = 0;
      *(v99 + 8) = v84;
      v55 = v112;
      v51 = v113;
      v56 = v57;
      if (!v54)
      {
        goto LABEL_33;
      }
    }

    v87 = 0;
    v88 = (v84 + 64);
    v122 = v84;
    while (v87 < *(v84 + 16))
    {
      ++v87;
      v89 = *v88;
      v90 = *(v88 - 2);
      v91 = *(v88 - 1);
      v93 = *(v88 - 4);
      v92 = *(v88 - 3);
      sub_1C2F76F9C();

      sub_1C2F7673C();
      sub_1C2F7673C();
      v94 = v89;
      v84 = v122;
      MEMORY[0x1C6929580](v94);
      v95 = sub_1C2F76FDC();
      MEMORY[0x1C6929580](v95);

      v88 += 40;
      if (v125 == v87)
      {
        goto LABEL_52;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  while (1)
  {
LABEL_33:
    v57 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v57 >= v55)
    {
      break;
    }

    v54 = *(v51 + 8 * v57);
    ++v56;
    if (v54)
    {
      v134 = v16;
      goto LABEL_37;
    }
  }

  v100 = *(v0 + 272);

  *&v142 = v15;

  sub_1C2F586E8(&v142);
  v101 = v142;
  *&v142 = v110;

  sub_1C2F586E8(&v142);
  v103 = *(v0 + 248);
  v102 = *(v0 + 256);
  v104 = *(v0 + 240);
  v106 = *(v0 + 208);
  v105 = *(v0 + 216);

  v107 = v142;

  v108 = *(v0 + 8);

  v108(v101, v107);
}

uint64_t sub_1C2F5B8E0(__int128 *a1)
{
  v72 = sub_1C2F7612C();
  v75 = *(v72 - 8);
  v2 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1C2F7616C();
  v74 = *(v77 - 8);
  v4 = *(v74 + 64);
  v5 = MEMORY[0x1EEE9AC00](v77);
  v69 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v76 = v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v64 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v64 - v16;
  v18 = *a1;
  v78 = a1[1];
  v67 = v18;
  v19 = *(a1 + 4);
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v20 = sub_1C2F761FC();
  __swift_project_value_buffer(v20, qword_1EDEBDA78);
  v21 = *(&v78 + 1);
  v22 = *(&v78 + 1);

  v23 = sub_1C2F761DC();
  v24 = sub_1C2F769EC();

  v25 = v24;
  v26 = os_log_type_enabled(v23, v24);
  v68 = v22;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v73 = v12;
    v28 = v27;
    v29 = swift_slowAlloc();
    v81 = v19;
    v82[0] = v29;
    *v28 = 136315138;
    v80 = v78;
    v79 = v67;

    v30 = v22;
    v31 = v19;

    v32 = sub_1C2F7670C();
    v34 = sub_1C2EFAB28(v32, v33, v82);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_1C2EF2000, v23, v25, "deleteBlocklistEntry %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1C6929E80](v29, -1, -1);
    v35 = v28;
    v12 = v73;
    MEMORY[0x1C6929E80](v35, -1, -1);
  }

  else
  {
    v31 = v19;
  }

  sub_1C2F760BC();
  v36 = sub_1C2F7608C();
  v37 = v76;
  v38 = v77;
  if (v21)
  {
    v39 = v36;
    v40 = sub_1C2F768AC();
    (*(*(v40 - 8) + 56))(v17, 1, 1, v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v42 = v68;
    v41[4] = v39;
    v41[5] = v42;
    v43 = v42;
    sub_1C2F574B0(0, 0, v17, &unk_1C2F7CD98, v41);
  }

  else
  {
    v44 = *(v31 + 16);
    if (v44)
    {
      v68 = v36;
      v73 = v12;
      *&v67 = *(v75 + 104);
      v75 += 104;
      v66 = *MEMORY[0x1E696ED80];
      v65 = *MEMORY[0x1E696ED90];
      v64[2] = v74 + 16;
      v64[1] = v74 + 32;
      v64[0] = v74 + 8;
      v45 = (v31 + 64);
      do
      {
        *&v78 = v44;
        v46 = *(v45 - 4);
        v47 = *(v45 - 3);
        if (*v45)
        {
          v48 = v65;
        }

        else
        {
          v48 = v66;
        }

        (v67)(v71, v48, v72);

        sub_1C2F7613C();
        v49 = sub_1C2F768AC();
        v50 = *(v49 - 8);
        (*(v50 + 56))(v15, 1, 1, v49);
        v51 = v74;
        v52 = v15;
        v53 = v69;
        (*(v74 + 16))(v69, v37, v38);
        v54 = (*(v51 + 80) + 40) & ~*(v51 + 80);
        v55 = swift_allocObject();
        *(v55 + 2) = 0;
        *(v55 + 3) = 0;
        *(v55 + 4) = v68;
        v56 = v53;
        v15 = v52;
        (*(v51 + 32))(&v55[v54], v56, v38);
        v57 = v73;
        sub_1C2F5C164(v52, v73);
        LODWORD(v54) = (*(v50 + 48))(v57, 1, v49);

        if (v54 == 1)
        {
          sub_1C2F5C1D4(v57);
        }

        else
        {
          sub_1C2F7689C();
          (*(v50 + 8))(v57, v49);
        }

        v58 = *(v55 + 2);
        v59 = *(v55 + 3);
        swift_unknownObjectRetain();

        if (v58)
        {
          swift_getObjectType();
          v60 = sub_1C2F7684C();
          v62 = v61;
          swift_unknownObjectRelease();
        }

        else
        {
          v60 = 0;
          v62 = 0;
        }

        sub_1C2F5C1D4(v52);
        if (v62 | v60)
        {
          v82[1] = 0;
          v82[2] = 0;
          v82[3] = v60;
          v82[4] = v62;
        }

        swift_task_create();

        v37 = v76;
        v38 = v77;
        (*v64[0])(v76, v77);
        v45 += 40;
        v44 = v78 - 1;
      }

      while (v78 != 1);
    }
  }
}

uint64_t sub_1C2F5C06C(uint64_t a1)
{
  v4 = *(sub_1C2F7616C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C2F06348;

  return sub_1C2F5771C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1C2F5C164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2F5C1D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F5C23C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C2F0AC48;

  return sub_1C2F57410(a1, v4, v5, v7, v6);
}

uint64_t sub_1C2F5C2FC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C2F76EFC() & 1;
  }
}

uint64_t sub_1C2F5C354(unint64_t *a1, void (*a2)(uint64_t))
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

void *AudioCallPunchOutMoreMenuViewModel.__allocating_init(call:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = 0;
  return result;
}

void *AudioCallPunchOutMoreMenuViewModel.init(call:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = 0;
  return v3;
}

uint64_t AudioCallPunchOutMoreMenuViewModel.createMenuItem()()
{
  v1 = v0;
  v57 = 0;
  v2 = sub_1C2F75AEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v53 - v15);
  v17 = sub_1C2F5CA7C();
  v56 = v18;
  sub_1C2F5CDF8(v16);
  v19 = *(v0 + 32);
  v55 = *(v0 + 24);
  v53 = v19;
  v58 = v16;
  sub_1C2F4F4BC(v16, v14);
  sub_1C2F75ADC();
  v20 = type metadata accessor for FTMenuItem(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v24 = 0;
  v24[1] = 0;
  v25 = v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  v26 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v27 = type metadata accessor for FTMenuItem.IconType(0);
  (*(*(v27 - 8) + 56))(v23 + v26, 1, 1, v27);
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v28 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v28 = 0;
  v28[1] = 0;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v29 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v30[1] = 0;
  v30[2] = 0;
  *v30 = 0;
  sub_1C2F75DDC();
  v59 = v3;
  v60 = v2;
  v31 = *(v3 + 16);
  v54 = v6;
  v31(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v6, v2);
  v32 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v33 = v56;
  *v32 = v17;
  v32[1] = v33;
  sub_1C2F4F468(*v25, *(v25 + 8), *(v25 + 16), *(v25 + 24));
  *v25 = 0u;
  *(v25 + 16) = 0u;
  v56 = v14;
  sub_1C2F4F4BC(v14, v11);
  sub_1C2F4F548(v23 + v26);
  v34 = v23 + v26;
  v35 = v53;
  sub_1C2F4F72C(v11, v34);
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v36 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v36 = v55;
  v36[1] = v35;
  v37 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v37 = nullsub_1;
  v37[1] = 0;
  v38 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v38[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v53 - 3) = 0;
    *(&v53 - 2) = 0;
    *(&v53 - 4) = v23;
    v62 = v23;
    sub_1C2F5D17C();

    sub_1C2F75D9C();
  }

  else
  {
    *v38 = 0;
    v38[1] = 0;
  }

  v40 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v23 + v40))
  {
    v41 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v41);
    *(&v53 - 2) = v23;
    *(&v53 - 1) = 0;
    v61 = v23;
    sub_1C2F5D17C();
    sub_1C2F75D9C();
  }

  (*(v59 + 8))(v54, v60);
  sub_1C2F4F548(v56);
  sub_1C2F4F548(v58);
  v42 = *(v1 + 40);
  *(v1 + 40) = v23;

  v43 = *(v1 + 16);
  if (v43 && (v44 = v43, v45 = [v44 provider], v46 = objc_msgSend(v45, sel_isSystemProvider), v45, v44, (v46 & 1) == 0))
  {
    v52 = *(v1 + 40);
  }

  else
  {
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v47 = sub_1C2F761FC();
    __swift_project_value_buffer(v47, qword_1EDEBDA78);
    v48 = sub_1C2F761DC();
    v49 = sub_1C2F769EC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1C2EF2000, v48, v49, "Not creating punchout more menu item as call is system provider", v50, 2u);
      MEMORY[0x1C6929E80](v50, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1C2F5CA7C()
{
  v1 = sub_1C2F75C8C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1C2F7669C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25[-v9];
  v11 = *(v0 + 16);
  if (v11)
  {
    v12 = v11;
    sub_1C2F7663C();
    (*(v4 + 16))(v8, v10, v3);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    sub_1C2F75BFC();
    sub_1C2F766EC();
    (*(v4 + 8))(v10, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076E30, &qword_1C2F7CE88);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C2F78B90;
    v16 = [v12 provider];
    v17 = [v16 localizedName];

    v18 = sub_1C2F766CC();
    v20 = v19;

    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1C2F5D2EC();
    *(v15 + 32) = v18;
    *(v15 + 40) = v20;
    v21 = sub_1C2F766DC();
  }

  else
  {
    sub_1C2F7663C();
    (*(v4 + 16))(v8, v10, v3);
    type metadata accessor for StringDummy();
    v22 = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    sub_1C2F75BFC();
    v21 = sub_1C2F766EC();
    (*(v4 + 8))(v10, v3);
  }

  return v21;
}

id sub_1C2F5CDF8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E695DEE0]);
  v5 = v3;
  v6 = [v4 init];
  v7 = [v5 provider];
  result = [v7 identifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;

  v10 = [v6 objectForKey_];
  if (!v10)
  {
    v17 = [v5 provider];
    v18 = [v17 iconTemplateImageData];

    if (v18)
    {
      v19 = sub_1C2F75A7C();
      v21 = v20;

      v22 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1C2F5D244(v19, v21);
      v23 = sub_1C2F75A6C();
      v24 = [v22 initWithData_];

      sub_1C2F5D298(v19, v21);
      if (v24)
      {
        v25 = [v5 provider];
        result = [v25 identifier];
        if (result)
        {
          v26 = result;

          [v6 setObject:v24 forKey:v26];
          v27 = [v24 imageWithRenderingMode_];
          v28 = sub_1C2F7644C();

          sub_1C2F5D298(v19, v21);
          *a1 = v28;
          goto LABEL_5;
        }

LABEL_17:
        __break(1u);
        return result;
      }

      sub_1C2F5D298(v19, v21);
    }

    else
    {
    }

LABEL_12:
    v29 = type metadata accessor for FTMenuItem.IconType(0);
    v13 = *(*(v29 - 8) + 56);
    v16 = v29;
    v14 = a1;
    v15 = 1;
    goto LABEL_13;
  }

  v11 = sub_1C2F7644C();

  *a1 = v11;
LABEL_5:
  v12 = type metadata accessor for FTMenuItem.IconType(0);
  swift_storeEnumTagMultiPayload();
  v13 = *(*(v12 - 8) + 56);
  v14 = a1;
  v15 = 0;
  v16 = v12;
LABEL_13:

  return v13(v14, v15, 1, v16);
}

uint64_t AudioCallPunchOutMoreMenuViewModel.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t AudioCallPunchOutMoreMenuViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_1C2F5D17C()
{
  result = qword_1EDEBD520;
  if (!qword_1EDEBD520)
  {
    type metadata accessor for FTMenuItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBD520);
  }

  return result;
}

uint64_t sub_1C2F5D244(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C2F5D298(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1C2F5D2EC()
{
  result = qword_1EC076E38;
  if (!qword_1EC076E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076E38);
  }

  return result;
}

uint64_t AudioCallSplitCallMoreMenuViewModel.__allocating_init(callCenter:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  v4 = *(a1 + 16);

  v5 = [v4 conferenceParticipantCalls];
  sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
  v6 = sub_1C2F767EC();

  *(v2 + 24) = v6;
  return v2;
}

uint64_t AudioCallSplitCallMoreMenuViewModel.init(callCenter:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  v3 = *(a1 + 16);

  v4 = [v3 conferenceParticipantCalls];
  sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
  v5 = sub_1C2F767EC();

  v6 = *(v1 + 24);
  *(v1 + 24) = v5;

  return v1;
}

void *AudioCallSplitCallMoreMenuViewModel.createMenuItem()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076E40, &qword_1C2F7CE90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - v4;
  v43 = type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0);
  v39 = *(v43 - 8);
  v6 = *(v39 + 64);
  v7 = MEMORY[0x1EEE9AC00](v43);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v36 - v9;
  v10 = *(v0 + 24);
  if (v10 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C2F76BBC())
  {
    v12 = i <= 2;
    v13 = i <= 2 ? 0x61432074696C7053 : 0xD000000000000010;
    v14 = v12 ? 0xEA00000000006C6CLL : 0x80000001C2F80010;
    v36 = _s20CommunicationsUICore10FTMenuItemC13splitCallsRow5titleACSS_tFZ_0(v13, v14);

    v15 = *(v1 + 24);
    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v35 = *(v1 + 24);
      }

      v16 = sub_1C2F76BBC();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v16)
    {
      break;
    }

    v17 = 0;
    v40 = v15 & 0xFFFFFFFFFFFFFF8;
    v41 = v15 & 0xC000000000000001;
    v18 = (v39 + 48);
    v19 = MEMORY[0x1E69E7CC0];
    v37 = v1;
    while (1)
    {
      if (v41)
      {
        v20 = MEMORY[0x1C6929250](v17, v15);
      }

      else
      {
        if (v17 >= *(v40 + 16))
        {
          goto LABEL_36;
        }

        v20 = *(v15 + 8 * v17 + 32);
      }

      v21 = v20;
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v44 = v20;
      sub_1C2F5D9DC(&v44, v1, v5);

      if ((*v18)(v5, 1, v43) == 1)
      {
        sub_1C2F0A8D8(v5, &qword_1EC076E40, &qword_1C2F7CE90);
      }

      else
      {
        v23 = v38;
        sub_1C2F5E594(v5, v38);
        sub_1C2F5E594(v23, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1C2F1C9B0(0, v19[2] + 1, 1, v19);
        }

        v25 = v19[2];
        v24 = v19[3];
        if (v25 >= v24 >> 1)
        {
          v19 = sub_1C2F1C9B0(v24 > 1, v25 + 1, 1, v19);
        }

        v19[2] = v25 + 1;
        sub_1C2F5E594(v42, v19 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25);
        v1 = v37;
      }

      ++v17;
      if (v22 == v16)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_27:

  if (v19[2])
  {
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v19;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v29 = v36;
    *(&v36 - 4) = v36;
    *(&v36 - 3) = 1;
    *(&v36 - 2) = sub_1C2F5E64C;
    *(&v36 - 1) = v27;
    v44 = v29;
    sub_1C2F5D17C();

    sub_1C2F75D9C();
  }

  else
  {

    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v30 = sub_1C2F761FC();
    __swift_project_value_buffer(v30, qword_1EDEBDA78);
    v31 = sub_1C2F761DC();
    v32 = sub_1C2F769EC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C2EF2000, v31, v32, "No need to show this split call row as no one's carrier supports ungrouping", v33, 2u);
      MEMORY[0x1C6929E80](v33, -1, -1);
    }

    return 0;
  }

  return v29;
}

uint64_t sub_1C2F5D9DC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1C2F75AEC();
  v80 = *(v7 - 8);
  v81 = v7;
  v8 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v72 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v72 - v18;
  v20 = *a1;
  v21 = [*a1 model];
  v22 = [v21 supportsUngrouping];

  if (v22 && ((v23 = [*(*(a2 + 16) + 16) currentCallGroups], sub_1C2EF5A14(0, &qword_1EC076970, 0x1E69D8A70), v24 = sub_1C2F767EC(), v23, v24 >> 62) ? (v25 = sub_1C2F76BBC()) : (v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v25 == 1))
  {
    v77 = a3;
    v78 = v3;
    v26 = [v20 displayFirstName];
    if (!v26)
    {
      v26 = [v20 displayName];
    }

    v27 = v26;
    v28 = sub_1C2F766CC();
    v73 = v29;
    v74 = v28;

    v30 = type metadata accessor for FTMenuItem.IconType(0);
    v72 = *(*(v30 - 8) + 56);
    v72(v19, 1, 1, v30);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v20;
    v76 = v19;
    sub_1C2F4F4BC(v19, v17);
    v75 = v31;

    v33 = v20;
    v34 = v17;
    v35 = v79;
    sub_1C2F75ADC();
    v36 = type metadata accessor for FTMenuItem(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v39 = swift_allocObject();
    v40 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
    *v40 = 0;
    v40[1] = 0;
    v41 = v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
    *v41 = 0u;
    *(v41 + 16) = 0u;
    v42 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
    v72((v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v30);
    *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
    v43 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
    *v43 = 0;
    v43[1] = 0;
    *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
    *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
    v44 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
    *v44 = 0;
    v44[1] = 0;
    v45 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
    v45[1] = 0;
    v45[2] = 0;
    *v45 = 0;
    sub_1C2F75DDC();
    (*(v80 + 16))(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v35, v81);
    v46 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
    v47 = v73;
    *v46 = v74;
    v46[1] = v47;
    sub_1C2F4F468(*v41, *(v41 + 8), *(v41 + 16), *(v41 + 24));
    *v41 = 0u;
    *(v41 + 16) = 0u;
    v74 = v34;
    sub_1C2F4F4BC(v34, v14);
    sub_1C2F0A8D8(v39 + v42, &qword_1EC076C80, &qword_1C2F7CDB0);
    sub_1C2F4F72C(v14, v39 + v42);
    *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
    *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
    *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
    *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
    v48 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
    *v48 = sub_1C2F5E6F8;
    v48[1] = v32;
    v49 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
    *v49 = nullsub_1;
    v49[1] = 0;
    v50 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
    swift_beginAccess();
    if (v50[1])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v72 - 3) = 0;
      *(&v72 - 2) = 0;
      *(&v72 - 4) = v39;
      v82 = v39;
      sub_1C2F5D17C();

      sub_1C2F75D9C();
    }

    else
    {
      *v50 = 0;
      v50[1] = 0;
    }

    v67 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
    swift_beginAccess();
    v69 = v76;
    v68 = v77;
    if (*(v39 + v67))
    {
      v70 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v70);
      *(&v72 - 2) = v39;
      *(&v72 - 1) = 0;
      v83[4] = v39;
      sub_1C2F5D17C();
      sub_1C2F75D9C();
    }

    (*(v80 + 8))(v79, v81);
    sub_1C2F0A8D8(v74, &qword_1EC076C80, &qword_1C2F7CDB0);
    sub_1C2F0A8D8(v69, &qword_1EC076C80, &qword_1C2F7CDB0);

    sub_1C2F75ADC();
    v71 = type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0);
    *(v68 + *(v71 + 20)) = v39;
    *(v68 + *(v71 + 24)) = MEMORY[0x1E69E7CC0];
    return (*(*(v71 - 8) + 56))(v68, 0, 1, v71);
  }

  else
  {
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v52 = sub_1C2F761FC();
    __swift_project_value_buffer(v52, qword_1EDEBDA78);
    v53 = v20;
    v54 = sub_1C2F761DC();
    v55 = sub_1C2F769EC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = a3;
      v58 = swift_slowAlloc();
      v83[0] = v58;
      *v56 = 136315138;
      v59 = [v53 displayName];
      v60 = sub_1C2F766CC();
      v62 = v61;

      v63 = sub_1C2EFAB28(v60, v62, v83);

      *(v56 + 4) = v63;
      _os_log_impl(&dword_1C2EF2000, v54, v55, "Carrier does not support this call %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      v64 = v58;
      a3 = v57;
      MEMORY[0x1C6929E80](v64, -1, -1);
      MEMORY[0x1C6929E80](v56, -1, -1);
    }

    v65 = type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0);
    return (*(*(v65 - 8) + 56))(a3, 1, 1, v65);
  }
}

uint64_t sub_1C2F5E2BC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v5 = sub_1C2F761FC();
    __swift_project_value_buffer(v5, qword_1EDEBDA78);
    v6 = a2;
    v7 = sub_1C2F761DC();
    v8 = sub_1C2F769EC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
      v11 = v6;
      v12 = sub_1C2F7670C();
      v14 = sub_1C2EFAB28(v12, v13, &v15);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1C2EF2000, v7, v8, "Taking call private %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1C6929E80](v10, -1, -1);
      MEMORY[0x1C6929E80](v9, -1, -1);
    }

    [*(*(v4 + 16) + 16) ungroupCall_];
  }

  return result;
}

uint64_t sub_1C2F5E484()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1C2F5E6A4();

    sub_1C2F764AC();
    return 0xD000000000000013;
  }

  return result;
}

uint64_t AudioCallSplitCallMoreMenuViewModel.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1C2F5E594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2F5E5F8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);

  v3 = *(v1 + 24);

  return a1(v1, 32, 7);
}

uint64_t sub_1C2F5E64C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C2F5E484();
}

unint64_t sub_1C2F5E6A4()
{
  result = qword_1EC076E48;
  if (!qword_1EC076E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076E48);
  }

  return result;
}

void sub_1C2F5E700()
{
  type metadata accessor for ContactStoreProvider();
  v0 = swift_allocObject();
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 tu_assumedIdentity];

  *(v0 + 16) = v2;
  qword_1EC076E50 = v0;
}

uint64_t ContactStoreProvider.__allocating_init(defaultAssumedIdentity:)(id a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  if (!a1)
  {
    v3 = [objc_opt_self() mainBundle];
    a1 = [v3 tu_assumedIdentity];
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t static ContactStoreProvider.shared.getter()
{
  if (qword_1EC075CA0 != -1)
  {
    swift_once();
  }
}

uint64_t ContactStoreProvider.init(defaultAssumedIdentity:)(id a1)
{
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  if (!a1)
  {
    v3 = [objc_opt_self() mainBundle];
    a1 = [v3 tu_assumedIdentity];
  }

  *(v1 + 16) = a1;
  return v1;
}

id ContactStoreProvider.contactStore(for:)(uint64_t a1)
{
  if (a1)
  {
    v3 = a1;
LABEL_5:
    v5 = *(v1 + 24);
    swift_unknownObjectRetain_n();
    v6 = v5;
    tcc_identity_get_identifier();
    sub_1C2F7676C();
    v7 = sub_1C2F766AC();

    v8 = [v6 objectForKey_];
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v1 + 16);
    swift_unknownObjectRetain_n();
    goto LABEL_5;
  }

  v12 = *(v1 + 24);
  sub_1C2F5EB80();
  v6 = v12;
  v7 = sub_1C2F76ABC();
  v8 = [v6 objectForKey_];
  v3 = 0;
LABEL_6:

  if (!v8)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
    [v9 setAssumedIdentity_];
    [v9 setIncludeAcceptedIntroductions_];
    v8 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
    if (a1)
    {
      swift_unknownObjectRetain();
      tcc_identity_get_identifier();
      sub_1C2F7676C();
      v10 = *(v1 + 24);
      v11 = sub_1C2F766AC();

      [v10 setObject:v8 forKey:v11];
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = *(v1 + 24);
      sub_1C2F5EB80();
      v10 = v13;
      v11 = sub_1C2F76ABC();
      [v10 setObject:v8 forKey:v11];
    }
  }

  swift_unknownObjectRelease();
  return v8;
}

unint64_t sub_1C2F5EB80()
{
  result = qword_1EC076E58;
  if (!qword_1EC076E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC076E58);
  }

  return result;
}

uint64_t ContactStoreProvider.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ContactStoreProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t AudioCallConferenceParticipantMoreMenuViewModel.__allocating_init(call:callCenter:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AudioCallConferenceParticipantMoreMenuViewModel.init(call:callCenter:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AudioCallConferenceParticipantMoreMenuViewModel.createMenuItem()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v17 - v3);
  v5 = *(v0 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v6 displayFirstName];
  if (!v7)
  {
    v7 = [v6 displayName];
  }

  v8 = v7;
  v9 = sub_1C2F766CC();
  v11 = v10;

  sub_1C2F5EE60(v6, v4);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v6;
  v14 = v6;

  v15 = _s20CommunicationsUICore10FTMenuItemC24conferenceParticipantRow5title8iconType13endCallActionACSS_AC04IconJ0OSgyyctFZ_0(v9, v11, v4, sub_1C2F5F0CC, v13);

  sub_1C2F4F548(v4);

  return v15;
}

uint64_t sub_1C2F5EE60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 remoteParticipantHandles];
  sub_1C2F5F1B0();
  sub_1C2F2FA98();
  v4 = sub_1C2F7697C();

  v5 = sub_1C2F2DEE8(v4);

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E20, &qword_1C2F79BB0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C2F78B90;
    v7 = [v5 value];
    v8 = sub_1C2F766CC();
    v10 = v9;

    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    v11 = sub_1C2F767DC();

    v12 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v11];

    *a2 = v12;
    v13 = type metadata accessor for FTMenuItem.IconType(0);
    swift_storeEnumTagMultiPayload();
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for FTMenuItem.IconType(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_1C2F5F034(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 24);

    v5 = *(v4 + 16);

    [v5 disconnectCall_];
  }
}

uint64_t AudioCallConferenceParticipantMoreMenuViewModel.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AudioCallConferenceParticipantMoreMenuViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1C2F5F1B0()
{
  result = qword_1EC076000;
  if (!qword_1EC076000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC076000);
  }

  return result;
}

uint64_t CallRecordingAvailability.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F5F284()
{
  type metadata accessor for CallRecordingAvailabilityManager();
  result = swift_allocObject();
  qword_1EC076E60 = result;
  return result;
}

uint64_t static CallRecordingAvailabilityManager.shared.getter()
{
  if (qword_1EC075CA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CallRecordingAvailabilityManager.shared.setter(uint64_t a1)
{
  if (qword_1EC075CA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EC076E60 = a1;
}

uint64_t (*static CallRecordingAvailabilityManager.shared.modify())()
{
  if (qword_1EC075CA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C2F5F430@<X0>(void *a1@<X8>)
{
  if (qword_1EC075CA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EC076E60;
}

uint64_t sub_1C2F5F4B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EC075CA8;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EC076E60 = v1;
}

unint64_t sub_1C2F5F538@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1C2F75FFC();
  result = TUTranscriptionAvailabilityForUseCase();
  if ((v2 & 1) == 0)
  {
    if (result < 3)
    {
      v4 = 0x10100u >> (8 * result);
      goto LABEL_7;
    }

LABEL_6:
    LOBYTE(v4) = 3;
    goto LABEL_7;
  }

  if (result - 1 >= 2)
  {
    goto LABEL_6;
  }

  LOBYTE(v4) = 2;
LABEL_7:
  *a1 = v4;
  return result;
}

unint64_t sub_1C2F5F5C8()
{
  result = qword_1EC076E68;
  if (!qword_1EC076E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076E68);
  }

  return result;
}

uint64_t ContactsService.__allocating_init(contactStore:keys:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ContactsService.init(contactStore:keys:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

CNContact_optional __swiftcall ContactsService.findContact(predicate:)(NSPredicate *predicate)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076B00, &unk_1C2F7B958);
  v5 = sub_1C2F767DC();
  v17[0] = 0;
  v6 = [v4 unifiedContactsMatchingPredicate:predicate keysToFetch:v5 error:v17];

  v7 = v17[0];
  if (!v6)
  {
    v14 = v17[0];
    v15 = sub_1C2F75A2C();

    swift_willThrow();
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  sub_1C2F208DC();
  v8 = sub_1C2F767EC();
  v9 = v7;

  if (v8 >> 62)
  {
    if (sub_1C2F76BBC())
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C6929250](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;

  v13 = v11;
LABEL_12:
  v16 = *MEMORY[0x1E69E9840];
  result.value.super.isa = v13;
  result.is_nil = v12;
  return result;
}

uint64_t ContactsService.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ContactsService.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F5FA00()
{
  v0 = *MEMORY[0x1E69D9038];
  result = sub_1C2F766CC();
  qword_1EC07B920 = result;
  *algn_1EC07B928 = v2;
  return result;
}

uint64_t sub_1C2F5FA30(uint64_t a1)
{
  v2 = sub_1C2F67450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F5FA6C(uint64_t a1)
{
  v2 = sub_1C2F67450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F5FAA8()
{
  if (qword_1EC075CB0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC07B920;

  return v0;
}

uint64_t sub_1C2F5FB10()
{
  sub_1C2F75E4C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2F5FBA0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F90, &unk_1C2F7D420);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F67450();
  sub_1C2F7702C();
  return (*(v3 + 8))(v6, v2);
}

id sub_1C2F5FCB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2F761FC();
  __swift_project_value_buffer(v3, qword_1EDEBC650);
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "deinit session", v6, 2u);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  v7 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session;
  if (*&v1[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session])
  {
    v8 = *&v1[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session];

    sub_1C2F0B620();
  }

  if (*&v1[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionObserverTask])
  {
    v9 = *&v1[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionObserverTask];

    sub_1C2F7692C();
  }

  v10 = *&v1[v7];
  *&v1[v7] = 0;

  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

void sub_1C2F5FF34(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_lock);
  os_unfair_lock_lock(v4 + 4);
  sub_1C2F68754();
  os_unfair_lock_unlock(v4 + 4);
  if (*(v2 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToReportRemoteStarted) == 1)
  {
    *(v2 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToReportRemoteStarted) = 0;
    ObjectType = swift_getObjectType();
    (*(a2 + 8))(ObjectType, a2);
  }
}

uint64_t sub_1C2F5FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WeakDelegate();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v6 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_observers;
  v7 = swift_beginAccess();
  MEMORY[0x1C6928DA0](v7);
  if (*((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v9 = *((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C2F7680C();
  }

  sub_1C2F7682C();
  return swift_endAccess();
}

uint64_t sub_1C2F600EC(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_observers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v6 = sub_1C2F66BC8((a1 + v5), a2);
  if (!v2)
  {
    v7 = v6;
    swift_unknownObjectRelease();
    v8 = *(a1 + v5);
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v11 = *(a1 + v5);
      }

      v9 = sub_1C2F76BBC();
      if (v9 >= v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v7)
      {
LABEL_4:
        sub_1C2F66FE4(v7, v9);
        return swift_endAccess();
      }
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1C2F601DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v6 = sub_1C2F761FC();
  __swift_project_value_buffer(v6, qword_1EDEBC650);
  v7 = sub_1C2F761DC();
  v8 = sub_1C2F769EC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C2EF2000, v7, v8, "start observeTranslationActivity", v9, 2u);
    MEMORY[0x1C6929E80](v9, -1, -1);
  }

  v10 = sub_1C2F768AC();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C2F7688C();

  v12 = sub_1C2F7687C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;

  result = sub_1C2F06978(0, 0, v5, &unk_1C2F7D3C8, v13);
  v16 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionObserverTask);
  *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionObserverTask) = result;
  if (v16)
  {

    sub_1C2F7692C();
  }

  return result;
}

uint64_t sub_1C2F60438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_1C2F75AEC();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F18, &qword_1C2F7D3D0);
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F20, &unk_1C2F7D3D8);
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v13 = *(v12 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_1C2F7688C();
  v4[19] = sub_1C2F7687C();
  v15 = sub_1C2F7684C();
  v4[20] = v15;
  v4[21] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1C2F60600, v15, v14);
}

uint64_t sub_1C2F60600()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[8];
  sub_1C2F671D8();
  sub_1C2F75FAC();
  sub_1C2F75F6C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v6 = v0[18];
  v0[22] = sub_1C2F7687C();
  v7 = sub_1C2EF7414(&unk_1EC076F30, &qword_1EC076F20, &unk_1C2F7D3D8);
  v8 = *(MEMORY[0x1E69E85A8] + 4);
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_1C2F6075C;
  v10 = v0[17];
  v11 = v0[15];

  return MEMORY[0x1EEE6D8C8](v0 + 5, v11, v7);
}

uint64_t sub_1C2F6075C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1C2F7684C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1C2F6113C;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1C2F7684C();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1C2F608F4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_1C2F608F4()
{
  v1 = v0[22];

  v0[25] = v0[5];
  v2 = v0[20];
  v3 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1C2F60960, v2, v3);
}

uint64_t sub_1C2F60960()
{
  v65 = v0;
  v1 = v0[25];
  if (!v1)
  {
    v6 = v0[19];
    (*(v0[16] + 8))(v0[17], v0[15]);
    goto LABEL_7;
  }

  v2 = v0[8];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v7 = v0[19];
    (*(v0[16] + 8))(v0[17], v0[15]);

    goto LABEL_7;
  }

  v4 = Strong;
  if ((sub_1C2F7694C() & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session;
    if (*&v4[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session])
    {
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v14 = sub_1C2F761FC();
      __swift_project_value_buffer(v14, qword_1EDEBC650);

      v15 = sub_1C2F761DC();
      v16 = sub_1C2F769DC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v64[0] = v18;
        *v17 = 136315138;
        v0[7] = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
        sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0);
        v19 = sub_1C2F76EEC();
        v21 = sub_1C2EFAB28(v19, v20, v64);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_1C2EF2000, v15, v16, "Gets interaction session for group session: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1C6929E80](v18, -1, -1);
        MEMORY[0x1C6929E80](v17, -1, -1);
      }

      sub_1C2F75F0C();
    }

    else
    {
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v22 = sub_1C2F761FC();
      __swift_project_value_buffer(v22, qword_1EDEBC650);

      v23 = sub_1C2F761DC();
      v24 = sub_1C2F769EC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v0[10];
        v26 = v0[11];
        v27 = v0[9];
        buf = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64[0] = v63;
        *buf = 136315138;
        v62 = v24;
        sub_1C2F75EFC();
        sub_1C2F670DC(&unk_1EDEBD700, MEMORY[0x1E69695A8]);
        v28 = v27;
        v29 = sub_1C2F76EEC();
        v31 = v30;
        (*(v25 + 8))(v26, v28);
        v32 = sub_1C2EFAB28(v29, v31, v64);

        *(buf + 4) = v32;
        _os_log_impl(&dword_1C2EF2000, v23, v62, "Creating translation interaction sesion for group session: %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x1C6929E80](v63, -1, -1);
        MEMORY[0x1C6929E80](buf, -1, -1);
      }

      v33 = [objc_opt_self() sharedInstance];
      if (!v33)
      {
        __break(1u);
        return MEMORY[0x1EEE6D8C8](v33, v34, v35);
      }

      v36 = v33;
      type metadata accessor for TranslationInteractionSession();
      swift_allocObject();

      v37 = v4;
      v38 = sub_1C2F0AEE4(v1, v37, v36);
      v39 = *&v4[v13];
      *&v4[v13] = v38;

      v40 = *&v4[v13];
      if (v40)
      {
        v41 = v0[24];
        v42 = *(v40 + 72);
        v43 = swift_task_alloc();
        v43[2] = v40;
        v43[3] = v37;
        v43[4] = &off_1F42B5318;
        v44 = swift_task_alloc();
        *(v44 + 16) = sub_1C2F6722C;
        *(v44 + 24) = v43;
        v45 = v37;

        os_unfair_lock_lock(v42 + 4);
        sub_1C2F68754();
        os_unfair_lock_unlock(v42 + 4);

        if (v41)
        {
          return result;
        }
      }

      sub_1C2F611C8(v1);
      v46 = sub_1C2F75EDC();
      v47 = sub_1C2F761DC();
      v48 = sub_1C2F769EC();
      v49 = os_log_type_enabled(v47, v48);
      if (v46)
      {
        if (v49)
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_1C2EF2000, v47, v48, "Join translation session, since translation has started locally.", v50, 2u);
          MEMORY[0x1C6929E80](v50, -1, -1);
        }
      }

      else
      {
        if (v49)
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_1C2EF2000, v47, v48, "Notify remote has started translation.", v51, 2u);
          MEMORY[0x1C6929E80](v51, -1, -1);
        }

        sub_1C2F61684();
        v52 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession;
        if (v37[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession] != 1)
        {
          goto LABEL_35;
        }

        v53 = sub_1C2F761DC();
        v54 = sub_1C2F769EC();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_1C2EF2000, v53, v54, "Joining session for telephony call.", v55, 2u);
          MEMORY[0x1C6929E80](v55, -1, -1);
        }

        v37[v52] = 0;
      }

      sub_1C2F75F1C();
    }

LABEL_35:

    v56 = v0[18];
    v0[22] = sub_1C2F7687C();
    v57 = sub_1C2EF7414(&unk_1EC076F30, &qword_1EC076F20, &unk_1C2F7D3D8);
    v58 = *(MEMORY[0x1E69E85A8] + 4);
    v59 = swift_task_alloc();
    v0[23] = v59;
    *v59 = v0;
    v59[1] = sub_1C2F6075C;
    v60 = v0[17];
    v34 = v0[15];
    v33 = v0 + 5;
    v35 = v57;

    return MEMORY[0x1EEE6D8C8](v33, v34, v35);
  }

  v5 = v0[19];
  (*(v0[16] + 8))(v0[17], v0[15]);

LABEL_7:

  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C2F6113C()
{
  *(v0 + 48) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF0, &unk_1C2F7A4C0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1C2F611C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F48, &qword_1C2F7D3E8);
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v25 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F50, &unk_1C2F7D3F0);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v25 - v8;
  v10 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionCancellables;
  swift_beginAccess();
  v11 = *(v1 + v10);
  *(v1 + v10) = MEMORY[0x1E69E7CC0];

  v12 = sub_1C2F75EDC();
  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v13 = sub_1C2F761FC();
  __swift_project_value_buffer(v13, qword_1EDEBC650);
  v14 = sub_1C2F761DC();
  v15 = sub_1C2F769CC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v12 & 1;
    _os_log_impl(&dword_1C2EF2000, v14, v15, "Observing translation session. created locally: %{BOOL}d", v16, 8u);
    MEMORY[0x1C6929E80](v16, -1, -1);
  }

  sub_1C2F75F5C();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v12 & 1;
  *(v18 + 32) = a1;
  sub_1C2EF7414(&qword_1EC076F58, &qword_1EC076F50, &unk_1C2F7D3F0);

  v19 = v25;
  sub_1C2F7631C();

  (*(v6 + 8))(v9, v19);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076F60, &unk_1C2F78BE0);
  sub_1C2EF7414(&unk_1EDEBC530, &unk_1EC076F60, &unk_1C2F78BE0);
  sub_1C2F7621C();
  swift_endAccess();

  v20 = v26;
  sub_1C2F75EEC();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a1;
  *(v22 + 32) = v12 & 1;
  sub_1C2EF7414(&qword_1EC076F70, &qword_1EC076F48, &qword_1C2F7D3E8);

  v23 = v28;
  sub_1C2F7631C();

  (*(v27 + 8))(v20, v23);
  swift_beginAccess();
  sub_1C2F7621C();
  swift_endAccess();
}

uint64_t sub_1C2F61684()
{
  v1 = v0;
  v2 = sub_1C2F764EC();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1C2F7651C();
  v31 = *(v33 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEBC648 != -1)
  {
LABEL_23:
    swift_once();
  }

  v7 = sub_1C2F761FC();
  __swift_project_value_buffer(v7, qword_1EDEBC650);
  v8 = sub_1C2F761DC();
  v9 = sub_1C2F769EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C2EF2000, v8, v9, "remoteStartsTranslation", v10, 2u);
    MEMORY[0x1C6929E80](v10, -1, -1);
  }

  v29 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_lock);
  os_unfair_lock_lock(v29 + 4);
  v11 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_observers;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12 >> 62)
  {
    v13 = sub_1C2F76BBC();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  while (v13 != v14)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1C6929250](v14, v12);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v15 = *(v12 + 8 * v14 + 32);

      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = *(v15 + 24);

    ++v14;
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1C2F1C074(0, v1[2] + 1, 1, v1);
      }

      v20 = v1[2];
      v19 = v1[3];
      if (v20 >= v19 >> 1)
      {
        v1 = sub_1C2F1C074((v19 > 1), v20 + 1, 1, v1);
      }

      v1[2] = v20 + 1;
      v21 = &v1[2 * v20];
      v21[4] = Strong;
      v21[5] = v18;
      v14 = v16;
    }
  }

  os_unfair_lock_unlock(v29 + 4);
  sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
  v22 = sub_1C2F76A2C();
  v23 = swift_allocObject();
  v23[2] = v1;
  v23[3] = sub_1C2F65598;
  v23[4] = 0;
  aBlock[4] = sub_1C2F0CAA8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F40688;
  aBlock[3] = &block_descriptor_9;
  v24 = _Block_copy(aBlock);

  v25 = v30;
  sub_1C2F764FC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C2F670DC(&qword_1EC076700, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000);
  v26 = v32;
  v27 = v35;
  sub_1C2F76B3C();
  MEMORY[0x1C6929010](0, v25, v26, v24);
  _Block_release(v24);

  (*(v34 + 8))(v26, v27);
  return (*(v31 + 8))(v25, v33);
}

void sub_1C2F61BB8()
{
  v1 = v0;
  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBC650);
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C2EF2000, v3, v4, "stop observeTranslationActivity", v5, 2u);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionObserverTask);
  *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionObserverTask) = 0;
  if (v6)
  {
    sub_1C2F7692C();
  }
}

void sub_1C2F61CF0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - v4;
  v6 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_currentStartSessionTask;
  if (*&v0[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_currentStartSessionTask])
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v7 = sub_1C2F761FC();
    __swift_project_value_buffer(v7, qword_1EDEBC650);
    v21 = sub_1C2F761DC();
    v8 = sub_1C2F769DC();
    if (os_log_type_enabled(v21, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C2EF2000, v21, v8, "translation session has already started.", v9, 2u);
      MEMORY[0x1C6929E80](v9, -1, -1);
    }

    v10 = v21;
  }

  else
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v11 = sub_1C2F761FC();
    __swift_project_value_buffer(v11, qword_1EDEBC650);
    v12 = sub_1C2F761DC();
    v13 = sub_1C2F769EC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C2EF2000, v12, v13, "startTranslationSession", v14, 2u);
      MEMORY[0x1C6929E80](v14, -1, -1);
    }

    v15 = sub_1C2F768AC();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v1;
    v17 = v1;
    v18 = sub_1C2F06978(0, 0, v5, &unk_1C2F7D418, v16);
    v19 = *&v1[v6];
    *&v1[v6] = v18;
    if (v19)
    {

      sub_1C2F7692C();
    }
  }
}

uint64_t sub_1C2F61FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(MEMORY[0x1E696B328] + 4);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  v7 = sub_1C2F671D8();
  *v6 = v4;
  v6[1] = sub_1C2F62084;

  return MEMORY[0x1EEDC7540](&type metadata for TranslationInteractionActivity, v7);
}

uint64_t sub_1C2F62084()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1C2F622DC;
  }

  else
  {
    v3 = sub_1C2F62198;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C2F62198()
{
  if (sub_1C2F7694C())
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v1 = sub_1C2F761FC();
    __swift_project_value_buffer(v1, qword_1EDEBC650);
    v2 = sub_1C2F761DC();
    v3 = sub_1C2F769DC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1C2EF2000, v2, v3, "Translation session cancelled.", v4, 2u);
      MEMORY[0x1C6929E80](v4, -1, -1);
    }

    v5 = *(v0 + 16);

    if (*(v5 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session))
    {
      v6 = *(v5 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session);

      sub_1C2F0B620();
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1C2F622DC()
{
  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBC650);
  v3 = v1;
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "Failed to begin with error: %@", v8, 0xCu);
    sub_1C2F0A8D8(v9, &unk_1EC076070, &qword_1C2F7A190);
    MEMORY[0x1C6929E80](v9, -1, -1);
    MEMORY[0x1C6929E80](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_1C2F62480()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_currentStartSessionTask;
  if (*(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_currentStartSessionTask) || *(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session))
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v3 = sub_1C2F761FC();
    __swift_project_value_buffer(v3, qword_1EDEBC650);
    v4 = sub_1C2F761DC();
    v5 = sub_1C2F769EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C2EF2000, v4, v5, "stopTranslationSession", v6, 2u);
      MEMORY[0x1C6929E80](v6, -1, -1);
    }

    if (*(v1 + v2))
    {
      v7 = *(v1 + v2);

      sub_1C2F7692C();
    }

    if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session))
    {
      v8 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session);

      sub_1C2F0B620();
    }

    sub_1C2F6271C();
    v9 = *(v1 + v2);
    *(v1 + v2) = 0;
    if (v9)
    {
      sub_1C2F7692C();
    }
  }

  else
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v10 = sub_1C2F761FC();
    __swift_project_value_buffer(v10, qword_1EDEBC650);
    oslog = sub_1C2F761DC();
    v11 = sub_1C2F769DC();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C2EF2000, oslog, v11, "translation session has already stopped.", v12, 2u);
      MEMORY[0x1C6929E80](v12, -1, -1);
    }
  }
}

uint64_t sub_1C2F6271C()
{
  v1 = v0;
  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBC650);
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C2EF2000, v3, v4, "resetSession", v5, 2u);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session);
  *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session) = 0;

  v7 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionCancellables;
  swift_beginAccess();
  v8 = *(v1 + v7);
  *(v1 + v7) = MEMORY[0x1E69E7CC0];
}

void sub_1C2F62844()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F78, &unk_1C2F7D400);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session);
  if (v9)
  {
    v10 = *(v9 + 16);

    sub_1C2F75F4C();
    (*(v2 + 104))(v6, *MEMORY[0x1E696B2C8], v1);
    sub_1C2F671D8();
    LOBYTE(v10) = sub_1C2F75F2C();
    v11 = *(v2 + 8);
    v11(v6, v1);
    v11(v8, v1);
    if (v10)
    {
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v12 = sub_1C2F761FC();
      __swift_project_value_buffer(v12, qword_1EDEBC650);
      v13 = sub_1C2F761DC();
      v14 = sub_1C2F769DC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1C2EF2000, v13, v14, "Leaving group session.", v15, 2u);
        MEMORY[0x1C6929E80](v15, -1, -1);
      }

      v16 = *(v9 + 16);

      sub_1C2F75F3C();
    }

    else
    {
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v17 = sub_1C2F761FC();
      __swift_project_value_buffer(v17, qword_1EDEBC650);
      v18 = sub_1C2F761DC();
      v19 = sub_1C2F769DC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1C2EF2000, v18, v19, "Group session is not in joined state. Won't be able to leave.", v20, 2u);
        MEMORY[0x1C6929E80](v20, -1, -1);
      }
    }
  }
}

void sub_1C2F62B44(int *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076EF0, &qword_1C2F7D3A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26 - v5;
  v7 = sub_1C2F75FCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session);
  if (v12)
  {
    v13 = *a1;
    v14 = *(a1 + 4);
    v15 = *(a1 + 5);
    v16 = *(a1 + 1);
    v28 = *(a1 + 2);
    v29 = v16;
    v17 = *(a1 + 3);
    v26 = *(a1 + 4);
    v27 = v17;
    v18 = *(v12 + 16);

    v19 = sub_1C2F75ECC();

    v20 = sub_1C2F666A8(v19, v12);

    if (*(v20 + 16) == 1)
    {
      sub_1C2F2E030(v20, v6);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {

        (*(v8 + 32))(v11, v6, v7);
        LODWORD(v30) = v13;
        BYTE4(v30) = v14;
        BYTE5(v30) = v15;
        *(&v30 + 1) = v29;
        v31 = v28;
        v32 = v27;
        v33 = v26;
        sub_1C2F0BEC8(&v30, v11);

        (*(v8 + 8))(v11, v7);
        return;
      }

      sub_1C2F0A8D8(v6, &unk_1EC076EF0, &qword_1C2F7D3A8);
    }

    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v21 = sub_1C2F761FC();
    __swift_project_value_buffer(v21, qword_1EDEBC650);

    v22 = sub_1C2F761DC();
    v23 = sub_1C2F769EC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      v25 = *(v20 + 16);

      *(v24 + 4) = v25;

      _os_log_impl(&dword_1C2EF2000, v22, v23, "sendTranscriptsToRemote, remoteParticipants.count: %ld", v24, 0xCu);
      MEMORY[0x1C6929E80](v24, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C2F62E84()
{
  v1 = sub_1C2F75AEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F78, &unk_1C2F7D400);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v110 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_call);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v28 = sub_1C2F761FC();
    __swift_project_value_buffer(v28, qword_1EDEBC650);
    v120 = sub_1C2F761DC();
    v29 = sub_1C2F769EC();
    if (os_log_type_enabled(v120, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1C2EF2000, v120, v29, "invalid tuCall, return", v30, 2u);
      MEMORY[0x1C6929E80](v30, -1, -1);
    }

    goto LABEL_50;
  }

  v119 = v2;
  v120 = Strong;
  v16 = [Strong provider];
  v17 = [v16 isFaceTimeProvider];

  if (v17)
  {
    if ([*(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_featureFlags) sendTranscriptToRemoteForFaceTimeAudioEnabled])
    {
      v18 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session);
      if (v18)
      {
        v19 = *(v18 + 16);

        sub_1C2F75F4C();
        (*(v7 + 104))(v11, *MEMORY[0x1E696B2D0], v6);
        sub_1C2F671D8();
        LOBYTE(v19) = sub_1C2F75F2C();
        v20 = *(v7 + 8);
        v20(v11, v6);
        v20(v13, v6);
        if (v19)
        {
          v21 = *(v18 + 16);

          v22 = sub_1C2F75EDC();

          if ((v22 & 1) == 0)
          {
            if (qword_1EDEBC648 != -1)
            {
              swift_once();
            }

            v52 = sub_1C2F761FC();
            __swift_project_value_buffer(v52, qword_1EDEBC650);
            v53 = sub_1C2F761DC();
            v54 = sub_1C2F769EC();
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              *v55 = 0;
              _os_log_impl(&dword_1C2EF2000, v53, v54, "startGettingRemoteTranslationTranscripts", v55, 2u);
              MEMORY[0x1C6929E80](v55, -1, -1);
            }

            v56 = *(v18 + 16);

            sub_1C2F75F1C();

            goto LABEL_58;
          }

          if (qword_1EDEBC648 != -1)
          {
            swift_once();
          }

          v23 = sub_1C2F761FC();
          __swift_project_value_buffer(v23, qword_1EDEBC650);
          v24 = sub_1C2F761DC();
          v25 = sub_1C2F769DC();
          if (!os_log_type_enabled(v24, v25))
          {
LABEL_43:

LABEL_58:
            return;
          }

          v26 = swift_slowAlloc();
          *v26 = 0;
          v27 = "Request to get remote transcripts, but translation starts locally.";
        }

        else
        {
          if (qword_1EDEBC648 != -1)
          {
            swift_once();
          }

          v49 = sub_1C2F761FC();
          __swift_project_value_buffer(v49, qword_1EDEBC650);
          v24 = sub_1C2F761DC();
          v25 = sub_1C2F769EC();
          if (!os_log_type_enabled(v24, v25))
          {
            goto LABEL_43;
          }

          v26 = swift_slowAlloc();
          *v26 = 0;
          v27 = "group session is not in waiting state, return";
        }

        _os_log_impl(&dword_1C2EF2000, v24, v25, v27, v26, 2u);
        MEMORY[0x1C6929E80](v26, -1, -1);
        goto LABEL_43;
      }

      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v48 = sub_1C2F761FC();
      __swift_project_value_buffer(v48, qword_1EDEBC650);
      v43 = sub_1C2F761DC();
      v44 = sub_1C2F769EC();
      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_49;
      }

      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "invalid session, return";
      goto LABEL_48;
    }

LABEL_27:
    if (qword_1EDEBC648 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_106;
  }

  v31 = [v120 provider];
  v32 = [v31 isTelephonyProvider];

  if (!v32)
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v47 = sub_1C2F761FC();
    __swift_project_value_buffer(v47, qword_1EDEBC650);
    v43 = sub_1C2F761DC();
    v44 = sub_1C2F769EC();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_49;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "tuCallProvider is not FaceTimeProvider or TelephonyProvider";
    goto LABEL_48;
  }

  if (![*(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_featureFlags) sendTranscriptToRemoteForCallEnabled])
  {
    goto LABEL_27;
  }

  if (![v120 isSharePlayCapable])
  {
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v50 = sub_1C2F761FC();
    __swift_project_value_buffer(v50, qword_1EDEBC650);
    v43 = sub_1C2F761DC();
    v44 = sub_1C2F769EC();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_49;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "not able to start getting remote translation transcripts, return";
    goto LABEL_48;
  }

  v33 = swift_unknownObjectWeakLoadStrong();
  v117 = v0;
  if (!v33)
  {
    v33 = [*(*(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_callCenter) + 16) activeConversationForCall_];
    if (!v33)
    {
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v91 = sub_1C2F761FC();
      __swift_project_value_buffer(v91, qword_1EDEBC650);
      v92 = sub_1C2F761DC();
      v93 = sub_1C2F769CC();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_1C2EF2000, v92, v93, "Not able to find conversation. Return.", v94, 2u);
        MEMORY[0x1C6929E80](v94, -1, -1);
      }

LABEL_98:
      *(v117 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession) = 1;
      return;
    }
  }

  v34 = v33;
  if ([v33 state] == 3)
  {
    v35 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session);
    if (v35)
    {
      v36 = qword_1EDEBC648;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = sub_1C2F761FC();
      __swift_project_value_buffer(v37, qword_1EDEBC650);
      v38 = sub_1C2F761DC();
      v39 = sub_1C2F769EC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1C2EF2000, v38, v39, "Joining group session for telephony.", v40, 2u);
        MEMORY[0x1C6929E80](v40, -1, -1);
      }

      v41 = *(v35 + 16);

      sub_1C2F75F1C();
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession) = 1;
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v64 = sub_1C2F761FC();
      __swift_project_value_buffer(v64, qword_1EDEBC650);
      v65 = sub_1C2F761DC();
      v66 = sub_1C2F769EC();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1C2EF2000, v65, v66, "Waiting for group session to form", v67, 2u);
        MEMORY[0x1C6929E80](v67, -1, -1);
      }
    }

    goto LABEL_50;
  }

  v112 = v34;
  v57 = [v34 systemActivitySessions];
  v58 = sub_1C2EF5A14(0, &qword_1EDEBC4F0, 0x1E69D8B58);
  sub_1C2F67280();
  v59 = sub_1C2F7697C();

  v111 = v59;
  v113 = v58;
  if ((v59 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C2F76B7C();
    sub_1C2F769AC();
    v59 = v123;
    v60 = v124;
    v61 = v125;
    v62 = v126;
    v63 = v127;
  }

  else
  {
    v68 = -1 << *(v59 + 32);
    v60 = v59 + 56;
    v61 = ~v68;
    v69 = -v68;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    else
    {
      v70 = -1;
    }

    v63 = v70 & *(v59 + 56);

    v62 = 0;
  }

  v110 = v61;
  v71 = (v61 + 64) >> 6;
  v116 = v59;
  if (v59 < 0)
  {
    goto LABEL_76;
  }

LABEL_71:
  v72 = v62;
  v73 = v63;
  v74 = v62;
  if (v63)
  {
LABEL_75:
    v118 = (v73 - 1) & v73;
    v75 = *(*(v59 + 48) + ((v74 << 9) | (8 * __clz(__rbit64(v73)))));
    while (v75)
    {
      v114 = v62;
      v115 = v63;
      v77 = v75;
      v78 = [v75 activity];
      v79 = [v78 activityIdentifier];

      v80 = sub_1C2F766CC();
      v82 = v81;

      if (qword_1EC075CB0 != -1)
      {
        swift_once();
      }

      if (v80 == qword_1EC07B920 && v82 == *algn_1EC07B928)
      {

LABEL_100:
        sub_1C2F0AAB8();

        *(v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession) = 1;
        v95 = objc_allocWithZone(MEMORY[0x1E69D8C10]);
        v96 = v112;
        v97 = [v95 initWithConversation:v112 originatingUIType:62];
        v98 = [v77 activity];
        [v97 setActivity_];

        v99 = [v96 provider];
        [v97 setProvider_];

        v100 = [v120 uniqueProxyIdentifierUUID];
        sub_1C2F75ACC();

        v101 = sub_1C2F75AAC();
        (*(v119 + 8))(v5, v1);
        [v97 setUUID_];

        if (qword_1EDEBC648 != -1)
        {
          swift_once();
        }

        v102 = sub_1C2F761FC();
        __swift_project_value_buffer(v102, qword_1EDEBC650);
        v103 = v77;
        v104 = sub_1C2F761DC();
        v105 = sub_1C2F769EC();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          *v106 = 138412290;
          v108 = [v103 activity];
          *(v106 + 4) = v108;
          *v107 = v108;
          _os_log_impl(&dword_1C2EF2000, v104, v105, "joinConversation with joinRequest %@", v106, 0xCu);
          sub_1C2F0A8D8(v107, &unk_1EC076070, &qword_1C2F7A190);
          MEMORY[0x1C6929E80](v107, -1, -1);
          MEMORY[0x1C6929E80](v106, -1, -1);
        }

        v109 = [*(*(v117 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_callCenter) + 16) conversationManager];
        [v109 joinConversationWithRequest_];

        goto LABEL_58;
      }

      v84 = sub_1C2F76EFC();

      if (v84)
      {
        goto LABEL_100;
      }

      v62 = v74;
      v63 = v118;
      v59 = v116;
      if ((v116 & 0x8000000000000000) == 0)
      {
        goto LABEL_71;
      }

LABEL_76:
      v76 = sub_1C2F76BDC();
      if (!v76)
      {
        break;
      }

      v121 = v76;
      swift_dynamicCast();
      v75 = v122;
      v74 = v62;
      v118 = v63;
      v0 = v117;
    }

LABEL_88:
    sub_1C2F0AAB8();

    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v85 = sub_1C2F761FC();
    __swift_project_value_buffer(v85, qword_1EDEBC650);
    v86 = sub_1C2F761DC();
    v87 = sub_1C2F769DC();
    v88 = os_log_type_enabled(v86, v87);
    v89 = v112;
    if (v88)
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_1C2EF2000, v86, v87, "Not able to join conversation. Missing translation session.", v90, 2u);
      MEMORY[0x1C6929E80](v90, -1, -1);
    }

    goto LABEL_98;
  }

  while (1)
  {
    v74 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v74 >= v71)
    {
      goto LABEL_88;
    }

    v73 = *(v60 + 8 * v74);
    ++v72;
    if (v73)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_106:
  swift_once();
LABEL_28:
  v42 = sub_1C2F761FC();
  __swift_project_value_buffer(v42, qword_1EDEBC650);
  v43 = sub_1C2F761DC();
  v44 = sub_1C2F769DC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "sendTranscriptToRemoteForCallEnabled is not enabled, not joining the conversation";
LABEL_48:
    _os_log_impl(&dword_1C2EF2000, v43, v44, v46, v45, 2u);
    MEMORY[0x1C6929E80](v45, -1, -1);
  }

LABEL_49:

LABEL_50:
  v51 = v120;
}

void sub_1C2F63FA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v46 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F78, &unk_1C2F7D400);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v44 = v11;
    if (qword_1EDEBC648 != -1)
    {
      swift_once();
    }

    v19 = sub_1C2F761FC();
    v20 = __swift_project_value_buffer(v19, qword_1EDEBC650);
    v45 = v7[2];
    v45(v16, v46, v6);
    v43 = v20;
    v21 = sub_1C2F761DC();
    v22 = sub_1C2F769EC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v41 = v18;
      v24 = v23;
      v25 = swift_slowAlloc();
      v42 = a4;
      v26 = v25;
      v47 = v25;
      *v24 = 136315138;
      v45(v14, v16, v6);
      v27 = sub_1C2F7670C();
      v40 = v5;
      v5 = v28;
      v39 = v7;
      v29 = v7[1];
      v29(v16, v6);
      v30 = sub_1C2EFAB28(v27, v5, &v47);
      LOBYTE(v5) = v40;

      *(v24 + 4) = v30;
      _os_log_impl(&dword_1C2EF2000, v21, v22, "Session state changed to %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1C6929E80](v26, -1, -1);
      v31 = v24;
      v18 = v41;
      MEMORY[0x1C6929E80](v31, -1, -1);

      v32 = v39;
    }

    else
    {

      v32 = v7;
      v29 = v7[1];
      v29(v16, v6);
    }

    v33 = v44;
    v45(v44, v46, v6);
    v34 = (v32[11])(v33, v6);
    if (v34 == *MEMORY[0x1E696B2C0])
    {
      v29(v33, v6);
      sub_1C2F6271C();
    }

    else if (v34 == *MEMORY[0x1E696B2D0])
    {
      if ((v5 & 1) == 0)
      {
        sub_1C2F61684();
        v35 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession;
        if (*(v18 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession) == 1)
        {
          v36 = sub_1C2F761DC();
          v37 = sub_1C2F769EC();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_1C2EF2000, v36, v37, "Joining group session upon session state change.", v38, 2u);
            MEMORY[0x1C6929E80](v38, -1, -1);
          }

          *(v18 + v35) = 0;
          sub_1C2F75F1C();
        }
      }
    }

    else
    {

      v29(v33, v6);
    }
  }
}

void sub_1C2F643EC(char **a1, uint64_t a2, uint64_t a3, int a4)
{
  v83 = a4;
  v87 = sub_1C2F75FCC();
  v91 = *(v87 - 8);
  v6 = *(v91 + 64);
  v7 = MEMORY[0x1EEE9AC00](v87);
  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F78, &unk_1C2F7D400);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v81 - v16;
  v18 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v90 = a3;
    sub_1C2F75F4C();
    (*(v11 + 104))(v15, *MEMORY[0x1E696B2C8], v10);
    sub_1C2F671D8();
    v21 = sub_1C2F75F2C();
    v22 = *(v11 + 8);
    v22(v15, v10);
    v22(v17, v10);
    if (v21)
    {
      if (qword_1EDEBC648 != -1)
      {
LABEL_40:
        swift_once();
      }

      v23 = sub_1C2F761FC();
      v24 = __swift_project_value_buffer(v23, qword_1EDEBC650);

      v25 = v90;

      v26 = sub_1C2F761DC();
      v27 = sub_1C2F769EC();

      v28 = os_log_type_enabled(v26, v27);
      v81 = v24;
      v82 = v20;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v93 = v30;
        *v29 = 134218242;
        *(v29 + 4) = *(v18 + 2);

        *(v29 + 12) = 2080;
        v92 = v25;
        v20 = &qword_1C2F791B0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
        sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0);
        v31 = sub_1C2F76EEC();
        v33 = sub_1C2EFAB28(v31, v32, &v93);

        *(v29 + 14) = v33;
        _os_log_impl(&dword_1C2EF2000, v26, v27, "Participants changed to %ld for session %s", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x1C6929E80](v30, -1, -1);
        MEMORY[0x1C6929E80](v29, -1, -1);
      }

      else
      {
      }

      v38 = v18 + 56;
      v39 = 1 << v18[32];
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v41 = v40 & *(v18 + 7);
      v42 = (v39 + 63) >> 6;
      v84 = (v91 + 8);
      v85 = v91 + 16;
      v86 = v18;

      v43 = 0;
      v44 = v87;
      v45 = v89;
      while (v41)
      {
        v46 = v43;
        v47 = v86;
LABEL_22:
        v48 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v49 = v91;
        v18 = v88;
        (*(v91 + 16))(v88, *(v47 + 6) + *(v91 + 72) * (v48 | (v46 << 6)), v44);
        sub_1C2F75EBC();
        sub_1C2F670DC(&unk_1EC076F80, MEMORY[0x1E696B330]);
        v50 = sub_1C2F7662C();
        v51 = *(v49 + 8);
        v20 = v84;
        v51(v45, v44);
        v51(v18, v44);
        if ((v50 & 1) == 0)
        {

          v52 = v90;

          v53 = sub_1C2F761DC();
          v54 = sub_1C2F769EC();

          v55 = os_log_type_enabled(v53, v54);
          if (v83)
          {
            v56 = v82;
            if (v55)
            {
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v92 = v52;
              v93 = v58;
              *v57 = 136315138;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
              sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0);
              v59 = sub_1C2F76EEC();
              v61 = sub_1C2EFAB28(v59, v60, &v93);

              *(v57 + 4) = v61;
              _os_log_impl(&dword_1C2EF2000, v53, v54, "remote joins the groupSession for translation %s. Translation starts locally.", v57, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v58);
              MEMORY[0x1C6929E80](v58, -1, -1);
              MEMORY[0x1C6929E80](v57, -1, -1);
            }
          }

          else
          {
            v56 = v82;
            if (v55)
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v92 = v52;
              v93 = v77;
              *v76 = 136315138;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
              sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0);
              v78 = sub_1C2F76EEC();
              v80 = sub_1C2EFAB28(v78, v79, &v93);

              *(v76 + 4) = v80;
              _os_log_impl(&dword_1C2EF2000, v53, v54, "remote joins the groupSession for translation %s", v76, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v77);
              MEMORY[0x1C6929E80](v77, -1, -1);
              MEMORY[0x1C6929E80](v76, -1, -1);
            }

            sub_1C2F61684();
          }

LABEL_34:

          return;
        }
      }

      v47 = v86;
      while (1)
      {
        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v46 >= v42)
        {
          break;
        }

        v41 = *&v38[8 * v46];
        ++v43;
        if (v41)
        {
          v43 = v46;
          goto LABEL_22;
        }
      }

      if ((v83 & 1) == 0)
      {
        v67 = v90;

        v68 = sub_1C2F761DC();
        v69 = sub_1C2F769EC();

        v70 = os_log_type_enabled(v68, v69);
        v56 = v82;
        if (v70)
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v92 = v67;
          v93 = v72;
          *v71 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
          sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0);
          v73 = sub_1C2F76EEC();
          v75 = sub_1C2EFAB28(v73, v74, &v93);

          *(v71 + 4) = v75;
          _os_log_impl(&dword_1C2EF2000, v68, v69, "remote leaves the groupSession for translation %s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v72);
          MEMORY[0x1C6929E80](v72, -1, -1);
          MEMORY[0x1C6929E80](v71, -1, -1);
        }

        sub_1C2F64E00();
        goto LABEL_34;
      }

      v62 = sub_1C2F761DC();
      v63 = sub_1C2F769EC();
      v64 = os_log_type_enabled(v62, v63);
      v65 = v82;
      if (v64)
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1C2EF2000, v62, v63, "remote leaves the groupSession for translation starts locally.", v66, 2u);
        MEMORY[0x1C6929E80](v66, -1, -1);
      }
    }

    else
    {
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v34 = sub_1C2F761FC();
      __swift_project_value_buffer(v34, qword_1EDEBC650);
      v35 = sub_1C2F761DC();
      v36 = sub_1C2F769EC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1C2EF2000, v35, v36, "Skip participants update because we have not joined.", v37, 2u);
        MEMORY[0x1C6929E80](v37, -1, -1);
      }
    }
  }
}

uint64_t sub_1C2F64E00()
{
  v1 = v0;
  v2 = sub_1C2F764EC();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1C2F7651C();
  v31 = *(v33 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEBC648 != -1)
  {
LABEL_23:
    swift_once();
  }

  v7 = sub_1C2F761FC();
  __swift_project_value_buffer(v7, qword_1EDEBC650);
  v8 = sub_1C2F761DC();
  v9 = sub_1C2F769EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C2EF2000, v8, v9, "controller: remoteEndsTranslation", v10, 2u);
    MEMORY[0x1C6929E80](v10, -1, -1);
  }

  v29 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_lock);
  os_unfair_lock_lock(v29 + 4);
  v11 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_observers;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12 >> 62)
  {
    v13 = sub_1C2F76BBC();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  while (v13 != v14)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1C6929250](v14, v12);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v15 = *(v12 + 8 * v14 + 32);

      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = *(v15 + 24);

    ++v14;
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1C2F1C074(0, v1[2] + 1, 1, v1);
      }

      v20 = v1[2];
      v19 = v1[3];
      if (v20 >= v19 >> 1)
      {
        v1 = sub_1C2F1C074((v19 > 1), v20 + 1, 1, v1);
      }

      v1[2] = v20 + 1;
      v21 = &v1[2 * v20];
      v21[4] = Strong;
      v21[5] = v18;
      v14 = v16;
    }
  }

  os_unfair_lock_unlock(v29 + 4);
  sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
  v22 = sub_1C2F76A2C();
  v23 = swift_allocObject();
  v23[2] = v1;
  v23[3] = sub_1C2F655D8;
  v23[4] = 0;
  aBlock[4] = sub_1C2F6876C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F40688;
  aBlock[3] = &block_descriptor_32;
  v24 = _Block_copy(aBlock);

  v25 = v30;
  sub_1C2F764FC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C2F670DC(&qword_1EC076700, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000);
  v26 = v32;
  v27 = v35;
  sub_1C2F76B3C();
  MEMORY[0x1C6929010](0, v25, v26, v24);
  _Block_release(v24);

  (*(v34 + 8))(v26, v27);
  return (*(v31 + 8))(v25, v33);
}

void sub_1C2F654A8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1C2F0A860();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1C2F65618(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1C2F764EC();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1C2F7651C();
  v43 = *(v45 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v53 = *a1;
  v54 = v9;
  v55 = *(a1 + 4);
  if (qword_1EDEBC648 != -1)
  {
LABEL_23:
    swift_once();
  }

  v10 = sub_1C2F761FC();
  __swift_project_value_buffer(v10, qword_1EDEBC650);
  sub_1C2F09740(&v53, &aBlock);
  v11 = sub_1C2F761DC();
  v12 = sub_1C2F769EC();
  sub_1C2F0AA10(&v53);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v52 = v14;
    *v13 = 136315138;
    aBlock = v53;
    v49 = v54;
    v50 = v55;
    v15 = CallTranslationTranscript.description.getter();
    v17 = sub_1C2EFAB28(v15, v16, &v52);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1C2EF2000, v11, v12, "passRemoteMessage %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1C6929E80](v14, -1, -1);
    MEMORY[0x1C6929E80](v13, -1, -1);
  }

  v18 = swift_allocObject();
  v19 = v54;
  *(v18 + 16) = v53;
  *(v18 + 32) = v19;
  v41 = v18;
  *(v18 + 48) = v55;
  v20 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_lock);
  sub_1C2F09740(&v53, &aBlock);
  v40 = v20;
  os_unfair_lock_lock(v20 + 4);
  v21 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_observers;
  swift_beginAccess();
  v22 = *(v2 + v21);
  if (v22 >> 62)
  {
    if (v22 < 0)
    {
      v39 = *(v2 + v21);
    }

    v2 = sub_1C2F76BBC();
  }

  else
  {
    v2 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  while (v2 != v23)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1C6929250](v23, v22);
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v23 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v25 = *(v22 + 8 * v23 + 32);

      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v28 = *(v25 + 24);

    ++v23;
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1C2F1C074(0, v24[2] + 1, 1, v24);
      }

      v30 = v24[2];
      v29 = v24[3];
      if (v30 >= v29 >> 1)
      {
        v24 = sub_1C2F1C074((v29 > 1), v30 + 1, 1, v24);
      }

      v24[2] = v30 + 1;
      v31 = &v24[2 * v30];
      v31[4] = Strong;
      v31[5] = v28;
      v23 = v26;
    }
  }

  os_unfair_lock_unlock(v40 + 4);
  sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
  v32 = sub_1C2F76A2C();
  v33 = swift_allocObject();
  v33[2] = v24;
  v33[3] = sub_1C2F6739C;
  v33[4] = v41;
  v50 = sub_1C2F6876C;
  v51 = v33;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v49 = sub_1C2F40688;
  *(&v49 + 1) = &block_descriptor_47;
  v34 = _Block_copy(&aBlock);

  v35 = v42;
  sub_1C2F764FC();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1C2F670DC(&qword_1EC076700, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000);
  v36 = v44;
  v37 = v47;
  sub_1C2F76B3C();
  MEMORY[0x1C6929010](0, v35, v36, v34);
  _Block_release(v34);

  (*(v46 + 8))(v36, v37);
  return (*(v43 + 8))(v35, v45);
}

uint64_t sub_1C2F65C44(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = *(a1 + 5);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  LODWORD(v6) = *a1;
  BYTE4(v6) = v1;
  BYTE5(v6) = v2;
  *(&v6 + 1) = v3;
  v7 = v4;
  v8 = *(a1 + 24);
  return sub_1C2F65618(&v6);
}

uint64_t sub_1C2F65C90()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EDEBC650);
  __swift_project_value_buffer(v0, qword_1EDEBC650);
  return sub_1C2F761EC();
}

unint64_t sub_1C2F65D48()
{
  result = qword_1EC076EE0;
  if (!qword_1EC076EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076EE0);
  }

  return result;
}

unint64_t sub_1C2F65DA0()
{
  result = qword_1EC076EE8;
  if (!qword_1EC076EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076EE8);
  }

  return result;
}

uint64_t sub_1C2F65E14(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1C2F76BBC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1C2F76C8C();
  *v1 = result;
  return result;
}

unint64_t *sub_1C2F65EB4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1C2F662DC(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1C2F65F50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1C2F75FCC();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076F00, &unk_1C2F7D3B0);
  result = sub_1C2F76C4C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1C2F670DC(&unk_1EC076F08, MEMORY[0x1E696B330]);
    result = sub_1C2F7660C();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C2F66278(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C2F76BBC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1C2F76C8C();
}

uint64_t sub_1C2F662DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v54 = a4;
  v39 = a1;
  v53 = sub_1C2F75AEC();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v38 - v9;
  v50 = sub_1C2F75FCC();
  v10 = *(*(v50 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v50);
  v48 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v47 = &v38 - v15;
  v16 = 0;
  v55 = a3;
  v17 = *(a3 + 56);
  v42 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v40 = 0;
  v41 = (v18 + 63) >> 6;
  v49 = v14;
  v45 = v14 + 8;
  v46 = v14 + 16;
  v44 = (v5 + 8);
  v21 = v47;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v58 = (v20 - 1) & v20;
LABEL_11:
    v25 = v22 | (v16 << 6);
    v26 = *(v55 + 48);
    v28 = v49;
    v27 = v50;
    v29 = *(v49 + 72);
    v43 = v25;
    (*(v49 + 16))(v21, v26 + v29 * v25, v50);
    v30 = v51;
    sub_1C2F75FBC();
    v31 = *(v54 + 16);
    v32 = v48;
    sub_1C2F75EBC();
    v33 = v52;
    sub_1C2F75FBC();
    v57 = *(v28 + 8);
    v57(v32, v27);
    sub_1C2F670DC(&unk_1EDEBD710, MEMORY[0x1E69695A8]);
    v34 = v53;
    v56 = sub_1C2F7662C();
    v35 = *v44;
    (*v44)(v33, v34);
    v35(v30, v34);
    result = (v57)(v21, v27);
    v20 = v58;
    if ((v56 & 1) == 0)
    {
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
LABEL_15:
        v37 = v55;

        return sub_1C2F65F50(v39, v38, v40, v37);
      }
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v41)
    {
      goto LABEL_15;
    }

    v24 = *(v42 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v58 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F666A8(void (*a1)(char *, size_t), uint64_t a2)
{
  v3 = v2;
  v64 = *MEMORY[0x1E69E9840];
  v57 = sub_1C2F75AEC();
  v6 = *(v57 - 8);
  v7 = *(v6 + 8);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v56 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = v41 - v10;
  v54 = sub_1C2F75FCC();
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v54);
  v53 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = v41 - v15;
  v16 = *(a1 + 32);
  v17 = v16 & 0x3F;
  v18 = ((1 << v16) + 63) >> 6;
  v19 = 8 * v18;
  v59 = a2;

  if (v17 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v42 = v18;
    v43 = v3;
    v41[1] = v41;
    MEMORY[0x1EEE9AC00](v20);
    v44 = v41 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v44, v19);
    v18 = 0;
    v58 = a1;
    v22 = *(a1 + 7);
    a1 = (a1 + 56);
    v21 = v22;
    v47 = a1;
    v23 = 1 << *(a1 - 24);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v21;
    v45 = 0;
    v46 = (v23 + 63) >> 6;
    v60 = v11;
    v50 = v11 + 8;
    v51 = v11 + 16;
    v49 = (v6 + 8);
    while (v25)
    {
      v63 = (v25 - 1) & v25;
      v26 = __clz(__rbit64(v25)) | (v18 << 6);
      v27 = v60;
LABEL_12:
      v30 = *(v58 + 6);
      v31 = *(v27 + 72);
      v48 = v26;
      v6 = v52;
      v11 = v54;
      (*(v27 + 16))(v52, v30 + v31 * v26, v54);
      v3 = v55;
      sub_1C2F75FBC();
      v32 = *(v59 + 16);
      v33 = v53;
      sub_1C2F75EBC();
      v34 = v56;
      sub_1C2F75FBC();
      v62 = *(v27 + 8);
      v62(v33, v11);
      sub_1C2F670DC(&unk_1EDEBD710, MEMORY[0x1E69695A8]);
      v19 = v57;
      v61 = sub_1C2F7662C();
      a1 = *v49;
      (*v49)(v34, v19);
      a1(v3, v19);
      v62(v6, v11);
      v25 = v63;
      if ((v61 & 1) == 0)
      {
        *&v44[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
        if (__OFADD__(v45++, 1))
        {
          __break(1u);
LABEL_16:
          v36 = sub_1C2F65F50(v44, v42, v45, v58);

          goto LABEL_17;
        }
      }
    }

    v28 = v18;
    v27 = v60;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v18 >= v46)
      {
        goto LABEL_16;
      }

      v29 = *(v47 + v18);
      ++v28;
      if (v29)
      {
        v63 = (v29 - 1) & v29;
        v26 = __clz(__rbit64(v29)) | (v18 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v39 = swift_slowAlloc();
  v40 = v59;

  v36 = sub_1C2F65EB4(v39, v18, a1, v40);

  MEMORY[0x1C6929E80](v39, -1, -1);

LABEL_17:
  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t sub_1C2F66BC8(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 >> 62;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v4)
  {
    goto LABEL_66;
  }

  v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      if (v4)
      {
        return sub_1C2F76BBC();
      }

      return *(v5 + 16);
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6929250](v7, v3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_59;
      }

      v9 = *(v3 + 8 * v7 + 32);
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      break;
    }

    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        goto LABEL_18;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_60;
    }
  }

LABEL_18:
  v12 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v5 = a1;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v12 == sub_1C2F76BBC())
        {
          return v7;
        }
      }

      else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v7;
      }

      v4 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6929250](v12, v3);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v6 = sub_1C2F76BBC();
          goto LABEL_3;
        }

        if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v15 = *(v3 + 8 * v12 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v16 = swift_unknownObjectWeakLoadStrong();

        if (!v16 || (swift_unknownObjectRelease(), v16 != a2))
        {
          if (v7 != v12)
          {
            if (v4)
            {
              v17 = MEMORY[0x1C6929250](v7, v3);
              v18 = MEMORY[0x1C6929250](v12, v3);
            }

            else
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                goto LABEL_63;
              }

              v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v7 >= v19)
              {
                goto LABEL_64;
              }

              if (v12 >= v19)
              {
                goto LABEL_65;
              }

              v17 = *(v3 + 32 + 8 * v7);
              v18 = *(v3 + 32 + 8 * v12);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_1C2F66278(v3);
              v20 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v20) = 0;
            }

            v4 = v3 & 0xFFFFFFFFFFFFFF8;
            v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

            if ((v3 & 0x8000000000000000) != 0 || v20)
            {
              v3 = sub_1C2F66278(v3);
              v4 = v3 & 0xFFFFFFFFFFFFFF8;
              if ((v12 & 0x8000000000000000) != 0)
              {
LABEL_54:
                __break(1u);
                return sub_1C2F76BBC();
              }
            }

            else if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v12 >= *(v4 + 16))
            {
              goto LABEL_62;
            }

            v13 = v4 + 8 * v12;
            v14 = *(v13 + 32);
            *(v13 + 32) = v17;

            *a1 = v3;
          }

          v8 = __OFADD__(v7++, 1);
          if (v8)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
      }

      v8 = __OFADD__(v12++, 1);
      if (v8)
      {
        goto LABEL_58;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F66EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for WeakDelegate();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C2F76BBC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C2F76BBC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2F66FE4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C2F76BBC();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1C2F76BBC();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1C2F65E14(result);

  return sub_1C2F66EE4(v4, v2, 0);
}

uint64_t sub_1C2F670DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2F67124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F0AC48;

  return sub_1C2F60438(a1, v4, v5, v6);
}

unint64_t sub_1C2F671D8()
{
  result = qword_1EC076F28;
  if (!qword_1EC076F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076F28);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C2F67280()
{
  result = qword_1EDEBC4E0;
  if (!qword_1EDEBC4E0)
  {
    sub_1C2EF5A14(255, &qword_1EDEBC4F0, 0x1E69D8B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBC4E0);
  }

  return result;
}

uint64_t sub_1C2F672E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F06348;

  return sub_1C2F61FDC(a1, v4, v5, v6);
}

uint64_t sub_1C2F6739C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 32);
  v7[0] = *(v2 + 16);
  v7[1] = v5;
  v8 = *(v2 + 48);
  return (*(a2 + 24))(v7, ObjectType, a2);
}

uint64_t objectdestroy_10Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

unint64_t sub_1C2F67450()
{
  result = qword_1EC076F98;
  if (!qword_1EC076F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076F98);
  }

  return result;
}

void sub_1C2F674A4(char *a1)
{
  v147 = sub_1C2F75AEC();
  v3 = *(v147 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v6 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076080, &unk_1C2F79010);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v140 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076088, &qword_1C2F7D430);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v140 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v140 - v19;
  v21 = *&v1[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_call];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EDEBC648 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_80;
  }

  v145 = v3;
  v146 = a1;
  v142 = v21;
  v143 = v6;
  v144 = v1;
  v148 = Strong;
  v23 = [Strong provider];
  v21 = &selRef_objectForKey_;
  v24 = [v23 isFaceTimeProvider];

  if ((v24 & 1) != 0 || (v25 = -[NSObject provider](v148, sel_provider), v26 = [v25 isTelephonyProvider], v25, v26))
  {
    v27 = [v148 provider];
    v28 = [v27 isFaceTimeProvider];

    if (!v28)
    {
LABEL_30:
      if (qword_1EDEBC648 != -1)
      {
        swift_once();
      }

      v75 = sub_1C2F761FC();
      v76 = __swift_project_value_buffer(v75, qword_1EDEBC650);
      v77 = v146;
      v78 = sub_1C2F761DC();
      v79 = sub_1C2F769EC();

      v80 = os_log_type_enabled(v78, v79);
      v142 = v76;
      if (v80)
      {
        v81 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v151[0] = v21;
        *v81 = 136315138;
        v82 = [v77 systemActivitySessions];
        sub_1C2EF5A14(0, &qword_1EDEBC4F0, 0x1E69D8B58);
        sub_1C2F67280();
        sub_1C2F7697C();

        v83 = sub_1C2F7698C();
        v85 = v84;

        v86 = sub_1C2EFAB28(v83, v85, v151);

        *(v81 + 4) = v86;
        _os_log_impl(&dword_1C2EF2000, v78, v79, "received systemActivitySessionsChangedFor %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x1C6929E80](v21, -1, -1);
        MEMORY[0x1C6929E80](v81, -1, -1);
      }

      v141 = v77;
      v87 = [v77 systemActivitySessions];
      v1 = sub_1C2EF5A14(0, &qword_1EDEBC4F0, 0x1E69D8B58);
      v88 = sub_1C2F67280();
      v89 = sub_1C2F7697C();

      v145 = v89;
      v146 = v1;
      v140 = v88;
      if ((v89 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1C2F76B7C();
        sub_1C2F769AC();
        v89 = v151[0];
        v90 = v151[1];
        v91 = v151[2];
        v92 = v151[3];
        v93 = v151[4];
      }

      else
      {
        v94 = -1 << *(v89 + 32);
        v90 = v89 + 56;
        v91 = ~v94;
        v95 = -v94;
        if (v95 < 64)
        {
          v96 = ~(-1 << v95);
        }

        else
        {
          v96 = -1;
        }

        v93 = v96 & *(v89 + 56);

        v92 = 0;
      }

      v143 = v91;
      v97 = (v91 + 64) >> 6;
      v147 = v92;
      if (v89 < 0)
      {
        goto LABEL_47;
      }

LABEL_41:
      v98 = v92;
      v99 = v93;
      if (!v93)
      {
        while (1)
        {
          v92 = v98 + 1;
          if (__OFADD__(v98, 1))
          {
            break;
          }

          if (v92 >= v97)
          {
            goto LABEL_58;
          }

          v99 = *(v90 + 8 * v92);
          ++v98;
          if (v99)
          {
            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_80:
        swift_once();
LABEL_8:
        v35 = sub_1C2F761FC();
        __swift_project_value_buffer(v35, qword_1EDEBC650);
        v36 = v1;
        v148 = sub_1C2F761DC();
        v37 = sub_1C2F769DC();

        if (os_log_type_enabled(v148, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v151[0] = v39;
          *v38 = 136315138;
          v40 = v21[3];
          v41 = v21[4];

          v42 = sub_1C2EFAB28(v40, v41, v151);

          *(v38 + 4) = v42;
          _os_log_impl(&dword_1C2EF2000, v148, v37, "ignore activity updates. not able to find current call. %s.", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          MEMORY[0x1C6929E80](v39, -1, -1);
          MEMORY[0x1C6929E80](v38, -1, -1);
LABEL_70:

          return;
        }

        goto LABEL_15;
      }

LABEL_45:
      v100 = (v99 - 1) & v99;
      v101 = *(*(v89 + 48) + ((v92 << 9) | (8 * __clz(__rbit64(v99)))));
      if (v101)
      {
        while (1)
        {
          v103 = [v101 activity];
          v21 = [v103 activityIdentifier];

          v104 = sub_1C2F766CC();
          v1 = v105;

          if (qword_1EC075CB0 != -1)
          {
            swift_once();
          }

          if (v104 == qword_1EC07B920 && v1 == *algn_1EC07B928)
          {
            break;
          }

          v107 = sub_1C2F76EFC();

          if (v107)
          {
            goto LABEL_72;
          }

          v93 = v100;
          v147 = v92;
          if ((v89 & 0x8000000000000000) == 0)
          {
            goto LABEL_41;
          }

LABEL_47:
          v102 = sub_1C2F76BDC();
          if (v102)
          {
            v149 = v102;
            swift_dynamicCast();
            v101 = v150;
            v100 = v93;
            if (v150)
            {
              continue;
            }
          }

          goto LABEL_58;
        }

LABEL_72:
        sub_1C2F0AAB8();

        v121 = *&v144[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession];
        *&v144[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession] = v101;
        v122 = v101;

        v123 = v141;
        swift_unknownObjectWeakAssign();
        v124 = v122;
        v125 = sub_1C2F761DC();
        v126 = sub_1C2F769EC();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          *v127 = 138412290;
          *(v127 + 4) = v124;
          *v128 = v101;
          v129 = v124;
          _os_log_impl(&dword_1C2EF2000, v125, v126, "setting activitySession to %@", v127, 0xCu);
          sub_1C2F0A8D8(v128, &unk_1EC076070, &qword_1C2F7A190);
          MEMORY[0x1C6929E80](v128, -1, -1);
          MEMORY[0x1C6929E80](v127, -1, -1);
        }

        if ([v124 isLocallyInitiated])
        {
          v130 = v123;
          v131 = sub_1C2F761DC();
          v132 = sub_1C2F769EC();

          if (os_log_type_enabled(v131, v132))
          {
            v133 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            v150 = v134;
            *v133 = 136315138;
            v135 = [v130 systemActivitySessions];
            sub_1C2F7697C();

            v136 = sub_1C2F7698C();
            v138 = v137;

            v139 = sub_1C2EFAB28(v136, v138, &v150);

            *(v133 + 4) = v139;
            _os_log_impl(&dword_1C2EF2000, v131, v132, "locally created systemActivitySessionsChangedFor %s", v133, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v134);
            MEMORY[0x1C6929E80](v134, -1, -1);
            MEMORY[0x1C6929E80](v133, -1, -1);
          }
        }

        else
        {
          sub_1C2F61684();
        }

        goto LABEL_70;
      }

LABEL_58:
      sub_1C2F0AAB8();

      v108 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession;
      v109 = v144;
      v110 = *&v144[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession];
      if (v110)
      {
        v111 = v110;
        if (([v111 isLocallyInitiated] & 1) == 0)
        {
          v112 = sub_1C2F761DC();
          v113 = sub_1C2F769EC();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            *v114 = 0;
            _os_log_impl(&dword_1C2EF2000, v112, v113, "remote ends translation from callback", v114, 2u);
            MEMORY[0x1C6929E80](v114, -1, -1);
          }

          sub_1C2F64E00();
        }

        v115 = sub_1C2F761DC();
        v116 = sub_1C2F769EC();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_1C2EF2000, v115, v116, "Clear activitySession", v117, 2u);
          MEMORY[0x1C6929E80](v117, -1, -1);
        }

        v118 = *&v109[v108];
        *&v109[v108] = 0;

        return;
      }

      v54 = sub_1C2F761DC();
      v119 = sub_1C2F769EC();
      if (!os_log_type_enabled(v54, v119))
      {
LABEL_69:

        goto LABEL_70;
      }

      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_1C2EF2000, v54, v119, "No activitySession", v120, 2u);
      v70 = v120;
LABEL_68:
      MEMORY[0x1C6929E80](v70, -1, -1);
      goto LABEL_69;
    }

    v29 = [v148 callGroupUUID];
    if (v29)
    {
      v30 = v29;
      sub_1C2F75ACC();

      v31 = v145;
      v32 = *(v145 + 56);
      v33 = v20;
      v34 = 0;
    }

    else
    {
      v31 = v145;
      v32 = *(v145 + 56);
      v33 = v20;
      v34 = 1;
    }

    v48 = v147;
    v32(v33, v34, 1, v147);
    v49 = [v146 groupUUID];
    sub_1C2F75ACC();

    v32(v18, 0, 1, v48);
    v50 = *(v7 + 48);
    sub_1C2F68614(v20, v10);
    sub_1C2F68614(v18, &v10[v50]);
    v21 = *(v31 + 48);
    if ((v21)(v10, 1, v48) == 1)
    {
      sub_1C2F0A8D8(v18, &unk_1EC076088, &qword_1C2F7D430);
      sub_1C2F0A8D8(v20, &unk_1EC076088, &qword_1C2F7D430);
      if ((v21)(&v10[v50], 1, v147) == 1)
      {
        sub_1C2F0A8D8(v10, &unk_1EC076088, &qword_1C2F7D430);
        goto LABEL_30;
      }
    }

    else
    {
      sub_1C2F68614(v10, v15);
      if ((v21)(&v10[v50], 1, v48) != 1)
      {
        v71 = v145;
        v72 = &v10[v50];
        v73 = v143;
        (*(v145 + 32))(v143, v72, v48);
        sub_1C2F670DC(&unk_1EDEBD710, MEMORY[0x1E69695A8]);
        v74 = sub_1C2F7662C();
        v21 = *(v71 + 8);
        (v21)(v73, v48);
        sub_1C2F0A8D8(v18, &unk_1EC076088, &qword_1C2F7D430);
        sub_1C2F0A8D8(v20, &unk_1EC076088, &qword_1C2F7D430);
        (v21)(v15, v48);
        sub_1C2F0A8D8(v10, &unk_1EC076088, &qword_1C2F7D430);
        if (v74)
        {
          goto LABEL_30;
        }

LABEL_25:
        if (qword_1EDEBC648 != -1)
        {
          swift_once();
        }

        v51 = sub_1C2F761FC();
        __swift_project_value_buffer(v51, qword_1EDEBC650);
        v52 = v144;
        v53 = v146;
        v54 = sub_1C2F761DC();
        v55 = sub_1C2F769CC();

        v56 = os_log_type_enabled(v54, v55);
        v57 = v145;
        if (!v56)
        {
          goto LABEL_69;
        }

        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v151[0] = v59;
        *v58 = 136315394;
        v60 = *(v142 + 24);
        v61 = *(v142 + 32);

        v62 = sub_1C2EFAB28(v60, v61, v151);

        *(v58 + 4) = v62;
        *(v58 + 12) = 2080;
        v63 = [v53 groupUUID];
        v64 = v143;
        sub_1C2F75ACC();

        sub_1C2F670DC(&unk_1EDEBD700, MEMORY[0x1E69695A8]);
        v65 = v147;
        v66 = sub_1C2F76EEC();
        v68 = v67;
        (*(v57 + 8))(v64, v65);
        v69 = sub_1C2EFAB28(v66, v68, v151);

        *(v58 + 14) = v69;
        _os_log_impl(&dword_1C2EF2000, v54, v55, "ignore activity updates. conversation group uuid didn't match to current call. %s. group uuid: %s", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6929E80](v59, -1, -1);
        v70 = v58;
        goto LABEL_68;
      }

      sub_1C2F0A8D8(v18, &unk_1EC076088, &qword_1C2F7D430);
      sub_1C2F0A8D8(v20, &unk_1EC076088, &qword_1C2F7D430);
      (*(v145 + 8))(v15, v147);
    }

    sub_1C2F0A8D8(v10, &qword_1EC076080, &unk_1C2F79010);
    goto LABEL_25;
  }

  if (qword_1EDEBC648 != -1)
  {
    swift_once();
  }

  v43 = sub_1C2F761FC();
  __swift_project_value_buffer(v43, qword_1EDEBC650);
  v44 = sub_1C2F761DC();
  v45 = sub_1C2F769CC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1C2EF2000, v44, v45, "Not handling unexpected providers.", v46, 2u);
    MEMORY[0x1C6929E80](v46, -1, -1);
  }

LABEL_15:
  v47 = v148;
}