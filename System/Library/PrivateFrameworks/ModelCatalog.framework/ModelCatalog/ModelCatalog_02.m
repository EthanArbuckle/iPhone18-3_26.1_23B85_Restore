void sub_18E204B54()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_18E1D055C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_18E204BF4@<X0>(void (*a1)(const void *, _BYTE *)@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  a1(v2, v6);
  sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (sub_18E1C5CBC())
  {
    sub_18E224478(v7, v9);
    sub_18E1E15F4(v9, v10);
    sub_18E1C4FE0();
    return sub_18E1C9934(v9);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    result = sub_18E298E58(v7);
    *a2 = 0;
    *(a2 + 5) = 0;
    *(a2 + 16) = MEMORY[0x1E69E7CC0];
    *(a2 + 24) = 1;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t ManagedRuntimeInformation.vmInferenceProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  return sub_18E1D02D8(*(v1 + 32), a1);
}

void sub_18E204CE0(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_18E1C5534();
    if (v13 != v14)
    {
      sub_18E1E1CA8();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_18E1C5E88();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    sub_18E2706EC(a5, a6);
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 40);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[5 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 40 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18E2706EC(a7, a8);
    swift_arrayInitWithCopy();
  }

  sub_18E1E1DA0();
}

void AssetBackedTokenInputDenyListBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E2614(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = sub_18E2706EC(&qword_1EABE2270, &qword_18E4AAC78);
  sub_18E1C539C(v7);
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CAE74();
  sub_18E1C975C();
  sub_18E224800();
  sub_18E1CF90C();
  if (!v1)
  {
    v11 = sub_18E1E63B4();
    sub_18E2706EC(v11, v12);
    sub_18E240610();
    sub_18E1C6B74();
    sub_18E1E1638(v13, v14, &qword_18E4AAC80);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E1E2AEC();
    sub_18E1D5E94();
    sub_18E2243B8();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E242C9C();
    sub_18E23386C();
    sub_18E1E33AC();
    sub_18E2C4300();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E22461C();
    sub_18E1C86E0();
    v15 = swift_allocObject();
    sub_18E1CFEE4(v15);
    sub_18E2402BC();
    sub_18E1C86E0();
    v16 = swift_allocObject();
    v17 = sub_18E1D001C(v16);
    memcpy(v17, v18, 0xD8uLL);

    sub_18E22EA6C();

    sub_18E44E54C();
    sub_18E1E6510(&qword_18E4AAC80);
    if (v19)
    {
      v20 = sub_18E1CBE2C();
      v21(v20);
      sub_18E1E8F44(&qword_18E4AAC80, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1FF2C8();
    }

    else
    {
      v22 = sub_18E44E49C();
      v24 = sub_18E1E2B98(v22, v23);
      v25(v24);
      sub_18E212008();
      v27 = *(v26 + 8);
      v28 = sub_18E202CF4();
      v29(v28);

      sub_18E1E6458();
    }

    sub_18E1E195C();
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E205194()
{
  sub_18E1C575C();
  v4 = sub_18E1D625C(v2, v3);
  v63 = sub_18E1C4EAC(v4);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v7 = sub_18E1E1FD8();
  v8 = sub_18E1C4EAC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1CA704();
  MEMORY[0x1EEE9AC00](v13);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  sub_18E1C5040(v1 + 2, v15);
  v16(v15);
  sub_18E201EA0();
  v18 = v18 && v17 == 0xE700000000000000;
  if (v18)
  {

    goto LABEL_10;
  }

  sub_18E232E1C();
  sub_18E1E2238();

  if (v15)
  {
LABEL_10:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  sub_18E2F81FC();
  v20 = v1[5];
  v19 = v1[6];
  sub_18E1C5040(v1 + 2, v20);
  v21(v20);
  sub_18E1D0274();
  sub_18E221BD4();
  sub_18E44E28C();

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E1E2388(v22);
  if (v23)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v20 = v59;
  }

  *(v20 + 16) = v19;
  sub_18E1CFBC0(v10);
  v25 = sub_18E1CF778(v24);
  v26(v25);
  sub_18E224178();
LABEL_11:
  v27 = v1[10];
  sub_18E1C5040(v1 + 7, v27);
  v28(v27);
  sub_18E201EA0();
  if (v18 && v29 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E232E1C();
    sub_18E1CF9C4();

    if ((v27 & 1) == 0)
    {
      v31 = v1[10];
      sub_18E1C5040(v1 + 7, v31);
      v32(v31);
      sub_18E1D0274();
      sub_18E22362C();
      sub_18E22324C();
      sub_18E44E28C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = *(v20 + 16);
        sub_18E1C6868();
        sub_18E3EF9F0();
        v20 = v61;
      }

      v34 = *(v20 + 16);
      v33 = *(v20 + 24);
      sub_18E2F79B8();
      if (v23)
      {
        sub_18E1E3320();
        sub_18E3EF9F0();
        v20 = v62;
      }

      sub_18E1CA184();
      sub_18E1EA5D4();
      v35();
    }
  }

  sub_18E44E37C();
  sub_18E223EB0();
  sub_18E201E40();
  if (*(v20 + 16))
  {
    sub_18E2F85FC();
    sub_18E2F85E4();
    if (v7)
    {

      __break(1u);
      return;
    }

    sub_18E2F85CC();
  }

  else
  {
  }

  sub_18E44E36C();
  if (v36)
  {
    v37 = sub_18E1E3DDC();
    v38(v37);
    sub_18E2405F8();
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4();
    }

    v39 = sub_18E44E83C();
    sub_18E1C95EC(v39, qword_1ED6A9858);
    v40 = sub_18E223FF0();
    v41(v40);
    v42 = sub_18E44E80C();
    v43 = sub_18E44EE0C();
    if (sub_18E201860(v43))
    {
      v44 = sub_18E2342D4();
      v45 = sub_18E2202BC();
      sub_18E2F7E00(v45);
      sub_18E232ED8(4.8151e-34);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v46 = sub_18E44F39C();
      sub_18E2F86D4(v46, v47);
      sub_18E233674();
      sub_18E220B30();
      v48 = sub_18E223294();
      v49(v48);
      v50 = sub_18E1C5BFC();
      sub_18E1C9624(v50, v51, v52);
      sub_18E233674();
      *(v44 + 14) = v10;
      sub_18E1EA5F8(&dword_18E1C1000, v53, v54, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E2F7A80();
      v55 = sub_18E1D1964();
      MEMORY[0x193ACD400](v55);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v56 = sub_18E223294();
      v57(v56);
    }

    sub_18E201938();
    v58 = sub_18E1E3DF8();
    v10(v58);
  }

  sub_18E216A6C();
  sub_18E1C5544();
}

uint64_t _s12ModelCatalog15ManagedResourcePA2A018ConfigurationBasedD0RzrlE4costAA11CostProfileVvg_0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 24))(v8);
  v3 = v8[9];

  result = sub_18E1FE044(v8);
  if (v3)
  {
    if (*(v3 + 16))
    {
      memcpy(__dst, (v3 + 32), sizeof(__dst));
      sub_18E1FF650(__dst, v6);

      sub_18E327BB0(&__dst[64], v6);
      result = sub_18E1FF6D4(__dst);
      v5 = *&__dst[80];
      *a2 = *&__dst[64];
      *(a2 + 16) = v5;
      *(a2 + 32) = __dst[96];
      return result;
    }
  }

  *(a2 + 5) = 0;
  *a2 = 0;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  return result;
}

uint64_t AssetBackedModelConfigurationReplacementBase.configuration.getter()
{
  memcpy(__dst, v0, 0xC1uLL);
  v1 = sub_18E1C5BFC();
  memcpy(v1, v2, 0xC1uLL);
  return sub_18E200C0C(__dst, v4);
}

uint64_t sub_18E2057AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_18E1C5F34(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  v9 = sub_18E1C6C0C();
  return sub_18E204BF4(v9, v8);
}

ModelCatalog::InferenceProvider::InferenceProviderOptions_optional __swiftcall InferenceProvider.InferenceProviderOptions.init(rawValue:)(Swift::String rawValue)
{
  sub_18E220CF8();
  v2 = sub_18E44F19C();

  v4 = 13;
  if (v2 < 0xD)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t InferenceProvider.hostedOnServer.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v2 = *v0;
    v3 = v0[1];

    v4._countAndFlagsBits = sub_18E1CF50C();
    InferenceProvider.InferenceProviderOptions.init(rawValue:)(v4);
    v1 = 0;
    switch(v25)
    {
      case 3:
      case 4:
      case 6:
      case 9:
      case 10:
        v1 = 1;
        goto LABEL_4;
      case 13:
        if (qword_1ED6A8418 != -1)
        {
          sub_18E1C8AB4();
        }

        v17 = sub_18E44E83C();
        sub_18E1C95EC(v17, qword_1ED6A9858);

        v18 = sub_18E44E80C();
        v19 = sub_18E44EDEC();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v25 = v21;
          *v20 = 136315138;
          v22 = sub_18E1CF50C();
          *(v20 + 4) = sub_18E1C9624(v22, v23, v24);
          _os_log_impl(&dword_18E1C1000, v18, v19, "InferenceProvider.hostedOnServer could not find valid inference provider options from: %s", v20, 0xCu);
          sub_18E1C9934(v21);
          sub_18E1C5008();
          sub_18E1C5008();
        }

        LOBYTE(v1) = 0;
        return v1 & 1;
      default:
LABEL_4:
        if (qword_1ED6A8418 != -1)
        {
          sub_18E1C8AB4();
        }

        v5 = sub_18E44E83C();
        sub_18E1C95EC(v5, qword_1ED6A9858);
        v6 = sub_18E44E80C();
        v7 = sub_18E44EDEC();
        if (!os_log_type_enabled(v6, v7))
        {
          goto LABEL_13;
        }

        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v25 = v9;
        *v8 = 67109378;
        *(v8 + 4) = v1;
        *(v8 + 8) = 2080;
        v10 = sub_18E44EAFC();
        v12 = sub_18E1C9624(v10, v11, &v25);

        *(v8 + 10) = v12;
        _os_log_impl(&dword_18E1C1000, v6, v7, "InferenceProvider.hostedOnServer returning hostedOnServer: %{BOOL}d for %s", v8, 0x12u);
        sub_18E1C9934(v9);
        sub_18E1C5008();
        break;
    }

    goto LABEL_12;
  }

  if (qword_1ED6A8418 != -1)
  {
    sub_18E1C8AB4();
  }

  v13 = sub_18E44E83C();
  sub_18E1C95EC(v13, qword_1ED6A9858);
  v6 = sub_18E44E80C();
  v14 = sub_18E44EDEC();
  if (os_log_type_enabled(v6, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v1 & 1;
    _os_log_impl(&dword_18E1C1000, v6, v14, "InferenceProvider.hostedOnServer returning override: %{BOOL}d", v15, 8u);
LABEL_12:
    sub_18E1C5008();
  }

LABEL_13:

  return v1 & 1;
}

uint64_t ManagedRuntimeInformation.inferenceProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  return sub_18E1D02D8(v1[1], a1);
}

void sub_18E205BD0()
{
  sub_18E1C575C();
  v70 = v4;
  v6 = v0[5];
  v5 = v0[6];
  v68 = v7;
  v69 = v5;
  sub_18E1E15F4(v0 + 2, v6);
  sub_18E1C5780();
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v19 = sub_18E21674C(v11, v12, v13, v14, v15, v16, v17, v18, v68);
  v1(v19);
  sub_18E220AAC();
  sub_18E211EDC();
  v21 = sub_18E23392C(v20);
  if (v22)
  {
    sub_18E211EDC();
    v21 = sub_18E2F817C(v66);
  }

  v23 = MEMORY[0x1EEE9AC00](v21);
  v31 = sub_18E242CC8(v23, v24, v25, v26, v27, v28, v29, v30, v68);
  v1(v31);
  sub_18E1DF2A8(v2, v9, &v76, v6, *(v69 + 8));
  v32 = sub_18E2F81A0();
  v33(v32);
  sub_18E2F7D7C();
  if (v72[3])
  {
    v34 = sub_18E1E8728();
    v68(v34);
    v35 = v74;
    v36 = v75;
    sub_18E1E15F4(&v73, v74);
    sub_18E2349BC();
    v71 = v37;
    sub_18E1C5780();
    v39 = *(v38 + 64);
    v41 = MEMORY[0x1EEE9AC00](v40);
    v49 = sub_18E1E89D0(v41, v42, v43, v44, v45, v46, v47, v48, v68);
    (v3)(v49);
    sub_18E2F7F1C();
    if (v22)
    {
      sub_18E2F79AC();
      sub_18E211EDC();
      sub_18E2F817C(v67);
    }

    sub_18E2F81DC();
    v51 = MEMORY[0x1EEE9AC00](v50);
    sub_18E1CEAD0(v51, v52, v53, v54, v55, v56, v57, v58, v68);
    sub_18E223BDC();
    v3();
    v59 = *(v36 + 8);
    v60 = sub_18E1CF9A0();
    sub_18E1DF2A8(v60, v61, v62, v35, v63);
    v64 = sub_18E221A60();
    v65(v64);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v72, v0, &v68);
  }

  sub_18E1C5544();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMWithDraft()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMTokenizer()();
  static Catalog.Resource.LLM.Model.CodeLM()();
  sub_18E1D456C();
  static Catalog.Resource.LLM.DraftModel.CodeLM()();
  sub_18E1C7F10();
  sub_18E1E87BC();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMV1ANE3B()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMV1ANE3BTokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMV1ANE3B()();
  sub_18E1D456C();
  static Catalog.Resource.LLM.DraftModel.CodeLMV1ANE3B()();
  sub_18E1C7F10();
  sub_18E1E67A0(41);
}

void static Catalog.ResourceBundle.Motion.CoreMotionPednetFoundationModel()()
{
  sub_18E1E1FB0();
  sub_18E2430A0();
  static Catalog.Resource.Motion.Model.Pednet(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    v2 = sub_18E223A10();
    MEMORY[0x193ACC300](v2);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E44F0DC();
    sub_18E1CD52C();
    __break(1u);
  }

  else
  {
    sub_18E221904("com.apple.fm.coremotion.pednet_v1.base");
  }
}

unint64_t sub_18E205FC8()
{
  result = qword_1EABE0868;
  if (!qword_1EABE0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0868);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.DistilledMessagesActionTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.DistilledMessagesActionTokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235538();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.DistilledMessagesAction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.DistilledMessagesAction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23368C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.DistilledMessagesReplyTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.DistilledMessagesReplyTokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2389A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.DistilledMessagesReply()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.DistilledMessagesReply(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EB00C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

unint64_t sub_18E2062CC()
{
  result = qword_1EABE01E8;
  if (!qword_1EABE01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE01E8);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.VisualGenerationQueryHandlingLite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.VisualGenerationQueryHandlingLite(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223258();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ADMBackgroundPrompt()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.ADMBackgroundPrompt()();
  sub_18E246F88();
  sub_18E1E67A0(57);
}

uint64_t static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.ADMBackgroundPrompt()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ADMBackgroundPrompt(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ADMPeopleGrounding()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.ADMPeopleGrounding()();
  sub_18E246F88();
  sub_18E1DD330();
}

uint64_t static Catalog.Resource.LLM.Adapter.ADMPeopleGrounding()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ADMPeopleGrounding(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ADMPromptRewriting()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.ADMPromptRewriting()();
  static Catalog.Resource.LLM.DraftModel.ADMPromptRewriting()();
  sub_18E1C7F10();
  sub_18E1DD330();
}

uint64_t static Catalog.Resource.LLM.Adapter.ADMPromptRewriting()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ADMPromptRewriting(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.FactualConsistencyClassifier()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.FactualConsistencyClassifier()();
  sub_18E246F88();
  sub_18E1E67A0(66);
}

uint64_t static Catalog.Resource.LLM.Adapter.FactualConsistencyClassifier()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.FactualConsistencyClassifier(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesActionSmall()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.MessagesActionSmall()();
  sub_18E246F88();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.Adapter.MessagesActionSmall()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MessagesActionSmall(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesReplyWatch()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.MessagesReplyWatch()();
  sub_18E246F88();
  sub_18E1E67A0(50);
}

uint64_t static Catalog.Resource.LLM.Adapter.MessagesReplyWatch()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MessagesReplyWatch(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MiscSafety()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.MiscSafety()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M()();
  sub_18E1C5364();
  sub_18E1E67A0(47);
}

uint64_t static Catalog.Resource.LLM.Adapter.MiscSafety()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MiscSafety(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2389A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MiscSafetyCustomized()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.MiscSafetyCustomized()();
  sub_18E1E36A8();
  static Catalog.Resource.EmbeddingPreprocessor.MiscSafetyCustomizedEmbeddingPreprocessor()();
  sub_18E1CA298();
  sub_18E1D4350();
}

uint64_t static Catalog.Resource.LLM.Adapter.MiscSafetyCustomized()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MiscSafetyCustomized(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

id sub_18E206E44()
{
  if (qword_1ED6A9428 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = [objc_opt_self() interfaceWithProtocol_];
  if (qword_1ED6A9040 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(off_1ED6A8DD0 + 2);
  if (v1)
  {
    v2 = ( + 48);
    do
    {
      v3 = *(v2 - 2);
      v4 = *(v2 - 1);
      v5 = *v2;
      v2 += 3;

      v6 = sub_18E44ED9C();

      [v0 setClasses:v6 forSelector:v3 argumentIndex:v4 ofReply:0];

      --v1;
    }

    while (v1);
  }

  if (qword_1ED6A8DC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = *(off_1ED6A8DC0 + 2);
  if (v7)
  {
    v8 = ( + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v8 += 3;

      v12 = sub_18E44ED9C();

      [v0 setClasses:v12 forSelector:v9 argumentIndex:v10 ofReply:1];

      --v7;
    }

    while (v7);
  }

  return v0;
}

void sub_18E207128()
{
  sub_18E1C575C();
  v6 = v1;
  v7 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v7);
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CA5EC();
  v36 = sub_18E44E38C();
  v11 = sub_18E1C4EAC(v36);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C4EDC();
  sub_18E2217DC(v14);
  if (qword_1ED6A8360 != -1)
  {
LABEL_20:
    sub_18E1CF494();
  }

  v15 = v6[6];
  if (*(off_1ED6A8720 + 2) && (v16 = v6[4], v17 = v6[5], v18 = sub_18E1CBD4C(), (v19 & 1) != 0) && (sub_18E222EB0(v18), v2 = sub_18E21654C(v2, v6, v3), , v2))
  {
    v6 = 0;
    sub_18E249B9C(v2);

    sub_18E201EAC();
    v35 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v21 = (v20 + 16 * v5);
      if (v4 == v5)
      {

        goto LABEL_16;
      }

      if (v5 >= v4)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

      v22 = *(v21 - 1);
      v23 = *v21;

      sub_18E1E2AF8();
      sub_18E44E37C();

      MEMORY[0x193ACBAD0](v22, v23);

      sub_18E44E2FC();
      sub_18E44E32C();
      v24 = sub_18E44E54C();
      sub_18E220124(v0, 1, v24);
      if (v25)
      {
        break;
      }

      type metadata accessor for CatalogIndex();
      sub_18E1C5D78();
      v2 = v0;
      static CatalogIndex.resolveResourceQueryURI(uri:variantResolverMappings:)();

      v26 = sub_18E1E2A8C();
      v27(v26);
      sub_18E1E1C3C();
      v29 = *(v28 + 8);
      v30 = sub_18E1E3DF8();
      v31(v30);
      v5 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = *(v35 + 16);
        sub_18E1C6868();
        sub_18E264698();
        v5 = v33;
      }

      v0 = *(v5 + 16);
      v3 = v0 + 1;
      if (v0 >= *(v5 + 24) >> 1)
      {
        sub_18E264698();
        v5 = v34;
      }

      sub_18E1E6B4C();
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    sub_18E1C5544();
  }
}

void sub_18E20747C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  memcpy(v8, v9, 0xD8uLL);
  sub_18E207128();
}

uint64_t static Catalog.Resource.LLM.Adapter.PQAVerification()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PQAVerification(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.EmbeddingPreprocessor.MiscSafetyCustomizedEmbeddingPreprocessor()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.EmbeddingPreprocessor.MiscSafetyCustomizedEmbeddingPreprocessor(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD00000000000006DLL);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MMGuardSafetyGuardrail()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M()();
  sub_18E1C5364();
  sub_18E1D7FB0();
}

uint64_t static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223258();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MMSafety()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.MMSafety()();
  sub_18E246F88();
  sub_18E1E87BC();
}

uint64_t static Catalog.Resource.LLM.Adapter.MMSafety()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MMSafety(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PQAVerification()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.PQAVerification()();
  sub_18E246F88();
  sub_18E1E67A0(52);
}

void Platform.encode(to:)()
{
  sub_18E1C62A0();
  v3 = v2;
  v4 = sub_18E2706EC(&qword_1EABE3440, &qword_18E4B0F78);
  sub_18E1C4EAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C57AC();
  v10 = *v0;
  v16 = *(v0 + 2);
  v17 = *(v0 + 1);
  v11 = v3[3];
  v12 = v3[4];
  sub_18E1E1D50(v3);
  sub_18E200BB8();
  sub_18E1E2A60();
  sub_18E1E3634();
  sub_18E44F4EC();
  sub_18E20798C();
  sub_18E1CF790();
  sub_18E44F35C();
  if (!v1)
  {
    sub_18E237084();
    sub_18E1CFB6C();
    sub_18E44F31C();
  }

  v13 = *(v6 + 8);
  v14 = sub_18E1D4BF4();
  v15(v14);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

unint64_t sub_18E20798C()
{
  result = qword_1EABE00E0;
  if (!qword_1EABE00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00E0);
  }

  return result;
}

BOOL sub_18E207A34(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_18E207A4C()
{
  result = qword_1EABE06A0;
  if (!qword_1EABE06A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06A0);
  }

  return result;
}

uint64_t sub_18E207AA0()
{
  *(v0 + 184) = v1;

  return sub_18E44F2FC();
}

uint64_t sub_18E207AF0()
{

  return sub_18E44F3CC();
}

void sub_18E207B20()
{

  sub_18E3EF9F0();
}

void sub_18E207B38()
{

  JUMPOUT(0x193ACC300);
}

uint64_t AssetBackedModelConfigurationReplacementBase.variant.getter()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return sub_18E1C5BFC();
}

uint64_t *XPCServiceClientConnection.deinit()
{
  v1 = *v0;
  v2 = v0[2];
  sub_18E1CFF9C();
  v9[2] = *(v3 + 80);
  sub_18E1CFF9C();
  v9[3] = *(v4 + 88);
  v5 = type metadata accessor for XPCServiceClientConnection.State();

  v6 = sub_18E2706EC(&qword_1EABE93C0, &qword_18E4E3B78);
  sub_18E224B04(sub_18E224BDC, v9, v2, v5, v6);

  v7 = v0[2];

  sub_18E207C54((v0 + 4));
  return v0;
}

uint64_t sub_18E207C7C(uint64_t a1)
{
  result = MEMORY[0x193ACC550](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_18E207D3C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_18E207D3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_18E44F48C();
  sub_18E44EB4C();
  sub_18E44F4CC();
  v9 = *(v7 + 32);
  sub_18E1C5B14();
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
    if (v16 || (sub_18E44F3CC() & 1) != 0)
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
  v21 = *v3;

  sub_18E207E84(a2, a3, v13);
  *v3 = v21;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

void sub_18E207E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E1CA234();
  if (!(!v26 & v10) || (v7 & 1) == 0)
  {
    if (v7)
    {
      sub_18E24634C(v8 + 1);
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      sub_18E3F49C4(v8 + 1);
LABEL_11:
      v19 = *v3;
      v20 = *(*v3 + 40);
      sub_18E44F48C();
      sub_18E44EB4C();
      sub_18E44F4CC();
      v21 = *(v19 + 32);
      sub_18E1C5B14();
      v24 = ~v23;
      while (1)
      {
        a3 = v22 & v24;
        if (((*(v19 + 56 + (((v22 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v24)) & 1) == 0)
        {
          goto LABEL_8;
        }

        v25 = (*(v19 + 48) + 16 * a3);
        v26 = *v25 == a1 && v25[1] == a2;
        if (v26 || (sub_18E44F3CC() & 1) != 0)
        {
          goto LABEL_20;
        }

        v22 = a3 + 1;
      }
    }

    sub_18E3F4028();
  }

LABEL_8:
  v11 = *v3;
  sub_18E1E3A70();
  sub_18E1C8610(v12);
  v14 = (v13 + 16 * a3);
  *v14 = a1;
  v14[1] = a2;
  sub_18E1CEA30(v15);
  if (v18)
  {
    __break(1u);
LABEL_20:
    sub_18E44F40C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v17;
  }
}

uint64_t sub_18E207FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 168) = a6;

  return sub_18E44E83C();
}

uint64_t sub_18E207FF8()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E208050@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 80) = a2;
  *(result + 88) = 808334898;
  *(result + 96) = v2;
  return result;
}

__n128 sub_18E208064(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  a1[2].n128_u8[0] = 2;
  a1[2].n128_u64[1] = 808334641;
  a1[3].n128_u64[0] = 0xE400000000000000;
  return result;
}

Swift::Void __swiftcall ResourceBundleContainer.encode(with:)(NSCoder with)
{
  sub_18E1C6948(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
  v3 = sub_18E44E60C();
  sub_18E1C5144();
  v4 = sub_18E44EA8C();
  sub_18E1CB068(v4, sel_encodeObject_forKey_);

  sub_18E1C6948(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleType);
  v5 = sub_18E44EA8C();
  sub_18E1C5144();
  v6 = sub_18E44EA8C();
  sub_18E1CB068(v6, sel_encodeObject_forKey_);

  v7 = *(v1 + OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
  sub_18E1C6C90();
  v8 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];
}

uint64_t ManagedRuntimeInformation.instanceID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_18E1C5BFC();
}

void AssetBackedTokenInputDenyListBase.init(configuration:variant:)()
{
  sub_18E223548();
  sub_18E1C826C();
  v12 = sub_18E1CD9B8(v4, v5, v6, v7, v8, v9, v10, v11, v49, v54, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206);
  sub_18E1D0338(v12, v13, v14, v15, v16, v17, v18, v19, v50, v55);
  sub_18E1E3BD4();
  v22 = sub_18E21D09C(18, v20, v21);
  if (v1)
  {
    goto LABEL_7;
  }

  if (!v207 || !*(v207 + 16))
  {
    sub_18E2D0B44();
    v46 = sub_18E1C8558();
    sub_18E1E6860(v46, v47);
    sub_18E221DDC(v48, 41);

LABEL_7:

    sub_18E1FE044(&v206);
    goto LABEL_8;
  }

  sub_18E223A20(v22, v23, v24, v25, v26, v27, v28, v29, v51, v56, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v206);
  sub_18E1C973C();
  v38 = sub_18E1D5E70(v30, v31, v32, v33, v34, v35, v36, v37, v52, v57, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v206);
  sub_18E1D4410(v38, v39, v40, v41, v42, v43, v44, v45, v53, v58);
  *(v3 + 200) = v2;
  *(v3 + 208) = v0;
LABEL_8:
  sub_18E1CFAAC();
  sub_18E220CC4();
}

uint64_t static Catalog.Resource.LLM.Adapter.TamalePOI()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TamalePOI(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223258();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

unint64_t sub_18E2083A8()
{
  result = qword_1EABE02B8;
  if (!qword_1EABE02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE02B8);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.TextPersonExtraction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TextPersonExtraction()();
  static Catalog.Resource.LLM.DraftModel.TextPersonExtraction()();
  sub_18E1C7F10();
  sub_18E1DD330();
}

uint64_t static Catalog.Resource.LLM.Adapter.TextPersonExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TextPersonExtraction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.DeviceSummarizationTextSummarizer()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TextSummarizer()();
  static Catalog.Resource.LLM.DraftModel.TextSummarizer()();
  sub_18E1C7F10();
  sub_18E1E67A0(49);
}

uint64_t static Catalog.Resource.LLM.DraftModel.Textunderstanding()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.Textunderstanding(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.AFMTextInstruct3BThirdParty()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.AFMTextInstruct3BThirdParty()();
  sub_18E246F88();
  sub_18E1E87BC();
}

uint64_t static Catalog.Resource.LLM.DraftModel.AFMTextInstruct3BThirdParty()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.AFMTextInstruct3BThirdParty(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.UIGrounding()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.UIGrounding()();
  sub_18E246F88();
  sub_18E1E67A0(46);
}

uint64_t static Catalog.Resource.LLM.DraftModel.UIPreviews()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.UIPreviews(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.InstructServerTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesisServer()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.AnswerSynthesisServer()();
  static Catalog.Resource.LLM.DraftModel.AnswerSynthesisServer()();
  sub_18E1C7F10();
  sub_18E1E67A0(57);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerBulletsTransform()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerBulletsTransform()();
  static Catalog.Resource.LLM.DraftModel.ServerBulletsTransform()();
  sub_18E1C7F10();
  sub_18E1D4350();
}

uint64_t static Catalog.Resource.LLM.DraftModel.ServerConciseTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerConciseTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerFitnessWorkoutVoice()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerFitnessWorkoutVoice()();
  static Catalog.Resource.LLM.DraftModel.ServerFitnessWorkoutVoice()();
  sub_18E1C7F10();
  sub_18E1E67A0(62);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerFriendlyTone()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedTone()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedTone()();
  sub_18E1C7F10();
  sub_18E1E67A0(54);
}

uint64_t static Catalog.Resource.LLM.Adapter.OpenEndedInteraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.OpenEndedInteraction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221B50();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.ChatGPT()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.ChatGPT(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000034);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.OpenEndedSchema()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.OpenEndedSchema(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E207B38();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t sub_18E2092F8()
{
}

uint64_t sub_18E209314()
{

  return sub_18E44EA3C();
}

uint64_t sub_18E20933C()
{
}

uint64_t sub_18E209370()
{
  result = v0 - 144;
  v2 = *(v0 - 200);
  return result;
}

void sub_18E20937C()
{

  JUMPOUT(0x193ACC300);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.TakeawaysTransform()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TakeawaysTransform()();
  static Catalog.Resource.LLM.DraftModel.TakeawaysTransform()();
  sub_18E1C7F10();
  sub_18E1E67A0(53);
}

uint64_t static Catalog.Resource.LLM.Adapter.TakeawaysTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TakeawaysTransform(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.TakeawaysTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.TakeawaysTransform(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.TamalePOI()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TamalePOI()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer()();
  sub_18E1C5364();
  sub_18E1D7FB0();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.TextEventExtraction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TextEventExtraction()();
  static Catalog.Resource.LLM.DraftModel.TextEventExtraction()();
  sub_18E1C7F10();
  sub_18E1E67A0(55);
}

uint64_t static Catalog.Resource.LLM.Adapter.TextEventExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TextEventExtraction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.TextEventExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.TextEventExtraction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.TextPersonExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.TextPersonExtraction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.TextSummarizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TextSummarizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.TextSummarizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.TextSummarizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.AFMTextInstruct3BThirdParty()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.AFMTextInstruct3BThirdParty(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.AFMTextInstruct3BThirdPartySD()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.AFMTextInstruct3BThirdParty()();
  static Catalog.Resource.LLM.DraftModel.AFMTextInstruct3BThirdParty()();
  sub_18E1C7F10();
  sub_18E1E67A0(48);
}

uint64_t static Catalog.Resource.LLM.Adapter.UIGrounding()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.UIGrounding(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.UIPreviews()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.UIPreviews(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.SmallMessagesReplyWatch()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct85MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct85MBase()();
  static Catalog.Resource.LLM.Adapter.SmallMessagesReplyWatch()();
  sub_18E246F88();
  sub_18E1E67A0(49);
}

uint64_t static Catalog.Resource.LLM.Model.InstructServerBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.ServerBulletsTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ServerBulletsTransform(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ServerBulletsTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerBulletsTransform(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E207B38();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerConciseTone()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedTone()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedTone()();
  sub_18E1C7F10();
  sub_18E1E67A0(53);
}

uint64_t static Catalog.Resource.LLM.Adapter.ServerConciseTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ServerConciseTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.ServerFitnessWorkoutVoice()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ServerFitnessWorkoutVoice(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ServerFitnessWorkoutVoice()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerFitnessWorkoutVoice(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221F7C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.ServerFriendlyTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ServerFriendlyTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ServerFriendlyTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerFriendlyTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.JournalFollowUpPrompts()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.JournalFollowUpPrompts(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E6A38();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMagicRewrite()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedTone()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedTone()();
  sub_18E1C7F10();
  sub_18E1E67A0(54);
}

uint64_t static Catalog.Resource.LLM.Adapter.ServerMagicRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ServerMagicRewrite(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ServerMagicRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerMagicRewrite(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMailReplyLongFormRewrite()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormRewrite()();
  static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormRewrite()();
  sub_18E1C7F10();
  sub_18E1E67A0(69);
}

uint64_t static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormRewrite(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000067);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMailReplyQA()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerMailReplyQA()();
  static Catalog.Resource.LLM.DraftModel.ServerMailReplyQA()();
  sub_18E1C7F10();
  sub_18E1E67A0(54);
}

uint64_t static Catalog.Resource.LLM.Adapter.ServerMailReplyQA()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ServerMailReplyQA(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesUserRequest()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.MessagesUserRequest()();
  static Catalog.Resource.LLM.DraftModel.MessagesUserRequest()();
  sub_18E1C7F10();
  sub_18E1E67A0(62);
}

uint64_t static Catalog.Resource.LLM.DraftModel.MessagesUserRequest()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.MessagesUserRequest(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221F7C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrailServer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrailServer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedInteraction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedInteraction()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedInteraction()();
  sub_18E1C7F10();
  sub_18E1E67A0(63);
}

uint64_t static Catalog.Resource.LLM.DraftModel.OpenEndedInteraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.OpenEndedInteraction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2289AC();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedReflection()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedReflection()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedReflection()();
  sub_18E1C7F10();
  sub_18E1E67A0(62);
}

uint64_t static Catalog.Resource.LLM.Adapter.OpenEndedReflection()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.OpenEndedReflection(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.OpenEndedReflection()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.OpenEndedReflection(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221F7C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedSchema()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedSchema()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedSchema()();
  sub_18E1C7F10();
  sub_18E1D4350();
}

uint64_t static Catalog.Resource.LLM.Adapter.OpenEndedSchema()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.OpenEndedSchema(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.Safety()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.Safety()();
  sub_18E246F88();
  sub_18E1E67A0(42);
}

uint64_t static Catalog.Resource.LLM.Adapter.Safety()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.Safety(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EB00C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.StructuralIntegrity()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.StructuralIntegrity(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.StructuralIntegrityCustomized()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.StructuralIntegrityCustomized(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3258();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.EmbeddingPreprocessor.StructuralIntegrityCustomizedEmbeddingPreprocessor()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.EmbeddingPreprocessor.StructuralIntegrityCustomizedEmbeddingPreprocessor(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000076);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesis()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.AnswerSynthesis()();
  static Catalog.Resource.LLM.DraftModel.AnswerSynthesis()();
  sub_18E1C7F10();
  sub_18E1E67A0(50);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.FullPayloadCorrection()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.FullPayloadCorrection()();
  sub_18E246F88();
  sub_18E1E67A0(59);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.AutoTagger()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.AutoTagger()();
  sub_18E246F88();
  sub_18E1E87BC();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.AFMTextInstruct3BBase()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.InstructBaseAdapter()();
  sub_18E246F88();
  sub_18E1E67A0(38);
}

uint64_t static Catalog.Resource.LLM.Adapter.InstructBaseAdapter()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.InstructBaseAdapter(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ConciseTone()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ConciseTone()();
  static Catalog.Resource.LLM.DraftModel.ConciseTone()();
  sub_18E1C7F10();
  sub_18E1E67A0(46);
}

uint64_t static Catalog.Resource.LLM.Adapter.ConciseTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ConciseTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ConciseTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ConciseTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.ContextAwareness()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ContextAwareness(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ContextProgram()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ContextProgram()();
  static Catalog.Resource.LLM.DraftModel.ContextProgram()();
  sub_18E1C7F10();
  sub_18E1E67A0(49);
}

uint64_t static Catalog.Resource.LLM.Adapter.ContextProgram()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ContextProgram(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ContextProgram()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ContextProgram(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.FitnessSummary()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.FitnessSummary()();
  sub_18E246F88();
  sub_18E1E67A0(49);
}

uint64_t static Catalog.Resource.LLM.Adapter.FitnessSummary()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.FitnessSummary(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.InstructFMApiGeneric()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.InstructFMApiGeneric()();
  static Catalog.Resource.LLM.DraftModel.InstructFMApiGeneric()();
  sub_18E1C7F10();
  sub_18E1E67A0(48);
}

uint64_t static Catalog.Resource.LLM.Adapter.InstructFMApiGeneric()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.InstructFMApiGeneric(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235538();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.InstructFMApiGeneric()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.InstructFMApiGeneric(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.FriendlyTone()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.FriendlyTone()();
  static Catalog.Resource.LLM.DraftModel.FriendlyTone()();
  sub_18E1C7F10();
  sub_18E1E67A0(47);
}

uint64_t static Catalog.Resource.LLM.Adapter.FriendlyTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.FriendlyTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2389A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.FriendlyTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.FriendlyTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.JournalMomentsClassification()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.JournalMomentsClassification()();
  static Catalog.Resource.LLM.DraftModel.JournalMomentsClassification()();
  sub_18E1C7F10();
  sub_18E1E67A0(64);
}

uint64_t static Catalog.Resource.LLM.Adapter.JournalMomentsClassification()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.JournalMomentsClassification(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E207B38();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.JournalMomentsClassification()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.JournalMomentsClassification(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAED8();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.JournalMomentsReflection()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.JournalMomentsReflection()();
  static Catalog.Resource.LLM.DraftModel.JournalMomentsReflection()();
  sub_18E1C7F10();
  sub_18E1E67A0(60);
}

uint64_t static Catalog.Resource.LLM.Adapter.JournalMomentsReflection()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.JournalMomentsReflection(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.JournalMomentsReflection()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.JournalMomentsReflection(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.MagicRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.MagicRewrite(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MailReply()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MailReply()();
  static Catalog.Resource.LLM.DraftModel.MailReply()();
  sub_18E1C7F10();
  sub_18E1D7FB0();
}

uint64_t static Catalog.Resource.LLM.Adapter.MailReply()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MailReply(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223258();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.MailReply()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.MailReply(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MailReplyLongFormBasic()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MailReplyLongFormBasic()();
  static Catalog.Resource.LLM.DraftModel.MailReplyLongFormBasic()();
  sub_18E1C7F10();
  sub_18E1E67A0(60);
}

uint64_t static Catalog.Resource.LLM.Adapter.MailReplyLongFormBasic()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MailReplyLongFormBasic(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.MailReplyLongFormBasic()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.MailReplyLongFormBasic(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MailReplyLongFormRewrite()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MailReplyLongFormRewrite()();
  static Catalog.Resource.LLM.DraftModel.MailReplyLongFormRewrite()();
  sub_18E1C7F10();
  sub_18E1E67A0(62);
}

uint64_t static Catalog.Resource.LLM.Adapter.MailReplyLongFormRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MailReplyLongFormRewrite(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.MailReplyLongFormRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.MailReplyLongFormRewrite(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221F7C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MailReplyQA()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MailReplyQA()();
  static Catalog.Resource.LLM.DraftModel.MailReplyQA()();
  sub_18E1C7F10();
  sub_18E1E67A0(47);
}

uint64_t static Catalog.Resource.LLM.Adapter.MailReplyQA()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MailReplyQA(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2389A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.MailReplyQA()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.MailReplyQA(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesAction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MessagesAction()();
  static Catalog.Resource.LLM.DraftModel.MessagesAction()();
  sub_18E1C7F10();
  sub_18E1E67A0(49);
}

uint64_t static Catalog.Resource.LLM.Adapter.MessagesAction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MessagesAction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.Resource.LLM.DraftModel.MessagesAction()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.MessagesAction(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    sub_18E1CD52C();
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesReply()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MessagesReply()();
  static Catalog.Resource.LLM.DraftModel.MessagesReply()();
  sub_18E1C7F10();
  sub_18E1E67A0(48);
}

uint64_t static Catalog.Resource.LLM.Adapter.MessagesReply()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MessagesReply(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235538();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.MessagesReply()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.MessagesReply(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MMGuardSafetyGuardrail3B()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail3B()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer()();
  sub_18E1C5364();
  sub_18E1E67A0(42);
}

uint64_t static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail3B()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail3B(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EB00C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.ImageTokenizer.AFMImageTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.ImageTokenizer.AFMImageTokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.Nutrition()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.Nutrition()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer()();
  sub_18E1C5364();
  sub_18E1E67A0(43);
}

uint64_t static Catalog.Resource.LLM.Adapter.Nutrition()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.Nutrition(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23368C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosLibraryUnderstandingMM()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingMM()();
  sub_18E1E36A8();
  static Catalog.Resource.EmbeddingPreprocessor.AFMPlusEmbeddingPreprocessor()();
  sub_18E1CA298();
  sub_18E1E67A0(65);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingMM()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingMM(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2387E8();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.EmbeddingPreprocessor.AFMPlusEmbeddingPreprocessor()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.EmbeddingPreprocessor.AFMPlusEmbeddingPreprocessor(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosLibraryUnderstandingT2T()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingT2T()();
  sub_18E246F88();
  sub_18E1E67A0(66);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingT2T()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingT2T(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationAssetCurationOutlier3b()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCurationOutlier3b()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCurationOutlier3b()();
  sub_18E1C7F10();
  sub_18E1E67A0(72);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCurationOutlier3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCurationOutlier3b(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAF38();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCurationOutlier3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCurationOutlier3b(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD00000000000006ALL);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationGlobalTraits3b()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraits3b()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits3b()();
  sub_18E1C7F10();
  sub_18E1E67A0(63);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraits3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraits3b(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221B50();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits3b(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2289AC();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstanding3b()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding3b()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding3b()();
  sub_18E1C7F10();
  sub_18E1E67A0(69);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding3b(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2289AC();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationStoryteller3b()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStoryteller3b()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStoryteller3b()();
  sub_18E1C7F10();
  sub_18E1E67A0(61);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStoryteller3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStoryteller3b(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStoryteller3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStoryteller3b(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3258();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesTitle()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesTitle(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationTitle3b()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesTitle()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesTitle()();
  sub_18E1C7F10();
  sub_18E1D4350();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV4()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PlannerV4()();
  static Catalog.Resource.LLM.DraftModel.PlannerV4()();
  sub_18E1C7F10();
  sub_18E1D7FB0();
}

uint64_t static Catalog.Resource.LLM.Adapter.PlannerV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PlannerV5(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223258();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV6()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PlannerV6()();
  static Catalog.Resource.LLM.DraftModel.PlannerV6()();
  sub_18E1C7F10();
  sub_18E1D7FB0();
}

uint64_t static Catalog.Resource.LLM.DraftModel.PlannerV6()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PlannerV6(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ProfessionalTone()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ProfessionalTone()();
  static Catalog.Resource.LLM.DraftModel.ProfessionalTone()();
  sub_18E1C7F10();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.Adapter.ProfessionalTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ProfessionalTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ProfessionalTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ProfessionalTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ProofreadingReview()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ProofreadingReview()();
  static Catalog.Resource.LLM.DraftModel.ProofreadingReview()();
  sub_18E1C7F10();
  sub_18E1E67A0(53);
}

uint64_t static Catalog.Resource.LLM.Adapter.ProofreadingReview()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ProofreadingReview(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ProofreadingReview()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ProofreadingReview(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersSuggestActionItems()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.RemindersSuggestActionItems()();
  sub_18E246F88();
  sub_18E1E67A0(64);
}

uint64_t static Catalog.Resource.LLM.Adapter.RemindersSuggestActionItems()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.RemindersSuggestActionItems(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E207B38();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV4()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ResponseGenerationV4()();
  static Catalog.Resource.LLM.DraftModel.ResponseGenerationV4()();
  sub_18E1C7F10();
  sub_18E1DD330();
}

uint64_t static Catalog.Resource.LLM.Adapter.ResponseGenerationV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ResponseGenerationV4(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ResponseGenerationV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ResponseGenerationV4(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.ResponseGenerationV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ResponseGenerationV5(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ResponseGenerationV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ResponseGenerationV5(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.ResponseGenerationV6()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ResponseGenerationV6(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.SafetyGuardrail()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.SafetyGuardrail()();
  static Catalog.Resource.LLM.DraftModel.SafetyGuardrail()();
  sub_18E1C7F10();
  sub_18E1E67A0(50);
}

uint64_t static Catalog.Resource.LLM.DraftModel.SafetyGuardrail()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.SafetyGuardrail(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingOnDevice()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingOnDevice(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.SearchQueryUnderstandingOnDevice()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.SearchQueryUnderstandingOnDevice(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction3B()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction3B(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction3B()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction3B(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3258();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.SmartAppActions()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.SmartAppActions()();
  static Catalog.Resource.LLM.DraftModel.SmartAppActions()();
  sub_18E1C7F10();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.Adapter.SmartAppActions()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.SmartAppActions(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.SmartAppActions()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.SmartAppActions(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.StructuralExtraction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.StructuralExtraction()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer()();
  sub_18E1C5364();
  sub_18E1E67A0(55);
}

uint64_t static Catalog.Resource.LLM.Adapter.StructuralExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.StructuralExtraction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.StructuredExtraction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.StructuredExtraction()();
  static Catalog.Resource.LLM.DraftModel.StructuredExtraction()();
  sub_18E1C7F10();
  sub_18E1E67A0(55);
}

uint64_t static Catalog.Resource.LLM.Adapter.StructuredExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.StructuredExtraction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.StructuredExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.StructuredExtraction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PrepubescentSafety()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.PrepubescentSafety()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M()();
  sub_18E1C5364();
  sub_18E1E67A0(55);
}

uint64_t static Catalog.Resource.LLM.Adapter.PrepubescentSafety()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PrepubescentSafety(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PrepubescentSafetyCustomized()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.PrepubescentSafetyCustomized()();
  sub_18E1E36A8();
  static Catalog.Resource.EmbeddingPreprocessor.PrepubescentSafetyCustomizedEmbeddingPreprocessor()();
  sub_18E1CA298();
  sub_18E1E67A0(66);
}

uint64_t static Catalog.Resource.LLM.Adapter.PrepubescentSafetyCustomized()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PrepubescentSafetyCustomized(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.EmbeddingPreprocessor.PrepubescentSafetyCustomizedEmbeddingPreprocessor()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.EmbeddingPreprocessor.PrepubescentSafetyCustomizedEmbeddingPreprocessor(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000075);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.StructuralIntegrity()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.StructuralIntegrity()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M()();
  sub_18E1C5364();
  sub_18E1DD330();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.StructuralIntegrityCustomized()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.StructuralIntegrityCustomized()();
  sub_18E1E36A8();
  static Catalog.Resource.EmbeddingPreprocessor.StructuralIntegrityCustomizedEmbeddingPreprocessor()();
  sub_18E1CA298();
  sub_18E1E67A0(67);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.TextGuardSafetyGuardrail()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.TextGuardSafetyGuardrail()();
  sub_18E246F88();
  sub_18E1E67A0(46);
}

uint64_t static Catalog.Resource.LLM.Adapter.TextGuardSafetyGuardrail()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TextGuardSafetyGuardrail(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.VIContentClassifier()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.VIContentClassifier()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M()();
  sub_18E1C5364();
  sub_18E1E67A0(57);
}

uint64_t static Catalog.Resource.LLM.Adapter.VIContentClassifier()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.VIContentClassifier(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23368C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000042);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.AnswerSynthesis()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.AnswerSynthesis(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.AnswerSynthesis()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.AnswerSynthesis(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.AutoTagger()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.AutoTagger(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.AutonamingMessages()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.AutonamingMessages()();
  static Catalog.Resource.LLM.DraftModel.AutonamingMessages()();
  sub_18E1C7F10();
  sub_18E1E67A0(53);
}

uint64_t static Catalog.Resource.LLM.Adapter.AutonamingMessages()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.AutonamingMessages(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.AutonamingMessages()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.AutonamingMessages(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.BulletsTransform()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.BulletsTransform()();
  static Catalog.Resource.LLM.DraftModel.BulletsTransform()();
  sub_18E1C7F10();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.Adapter.BulletsTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.BulletsTransform(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.BulletsTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.BulletsTransform(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ContextAwareness()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ContextAwareness()();
  sub_18E246F88();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding3b(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000067);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesTitle()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesTitle()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesTitle()();
  sub_18E1C7F10();
  sub_18E1E67A0(55);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesTitle()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesTitle(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.PlannerV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PlannerV4(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223258();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.PlannerV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PlannerV4(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV5()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PlannerV5()();
  static Catalog.Resource.LLM.DraftModel.PlannerV5()();
  sub_18E1C7F10();
  sub_18E1D7FB0();
}

uint64_t static Catalog.Resource.LLM.DraftModel.PlannerV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PlannerV5(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.PlannerV6()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PlannerV6(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223258();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV5()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ResponseGenerationV5()();
  static Catalog.Resource.LLM.DraftModel.ResponseGenerationV5()();
  sub_18E1C7F10();
  sub_18E1DD330();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV6()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ResponseGenerationV6()();
  static Catalog.Resource.LLM.DraftModel.ResponseGenerationV6()();
  sub_18E1C7F10();
  sub_18E1DD330();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.SearchQueryUnderstandingOnDevice()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingOnDevice()();
  static Catalog.Resource.LLM.DraftModel.SearchQueryUnderstandingOnDevice()();
  sub_18E1C7F10();
  sub_18E1E67A0(60);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMAction3B()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction3B()();
  static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction3B()();
  sub_18E1C7F10();
  sub_18E1E67A0(61);
}

uint64_t static Catalog.Resource.LLM.Adapter.FullPayloadCorrection()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.FullPayloadCorrection(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ResponseGenerationV6()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ResponseGenerationV6(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.SafetyGuardrail()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.SafetyGuardrail(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.SuggestRecipeItems()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.SuggestRecipeItems()();
  sub_18E246F88();
  sub_18E1E67A0(54);
}

uint64_t static Catalog.Resource.LLM.Adapter.SuggestRecipeItems()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.SuggestRecipeItems(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.Summarization()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.Summarization()();
  static Catalog.Resource.LLM.DraftModel.Summarization()();
  sub_18E1C7F10();
  sub_18E1E67A0(47);
}

uint64_t static Catalog.Resource.LLM.Adapter.Summarization()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.Summarization(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2389A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.Summarization()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.Summarization(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.TablesTransform()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TablesTransform()();
  static Catalog.Resource.LLM.DraftModel.TablesTransform()();
  sub_18E1C7F10();
  sub_18E1E67A0(50);
}

uint64_t static Catalog.Resource.LLM.Adapter.TablesTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TablesTransform(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.TablesTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.TablesTransform(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.UIPreviews()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.UIPreviews()();
  static Catalog.Resource.LLM.DraftModel.UIPreviews()();
  sub_18E1C7F10();
  sub_18E1E87BC();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.UrgencyClassification()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.UrgencyClassification()();
  sub_18E246F88();
  sub_18E1DD330();
}

uint64_t static Catalog.Resource.LLM.Adapter.UrgencyClassification()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.UrgencyClassification(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.AFMTextInstruct85MBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.AFMTextInstruct85MBase(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23509C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.SmallMessagesReplyWatch()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.SmallMessagesReplyWatch(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.AccessibilityMagnifier()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.AccessibilityMagnifier()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer()();
  sub_18E1C5364();
  sub_18E1E67A0(64);
}

uint64_t static Catalog.Resource.LLM.DraftModel.AnswerSynthesisServer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.AnswerSynthesisServer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221B50();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMailReplyLongFormBasic()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormBasic()();
  static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormBasic()();
  sub_18E1C7F10();
  sub_18E1E67A0(67);
}

uint64_t static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormBasic()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormBasic(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3258();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormBasic()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormBasic(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAFF4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.AccessibilityMagnifier()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.AccessibilityMagnifier(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E207B38();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.AnswerSynthesisServer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.AnswerSynthesisServer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormRewrite(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2289AC();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ServerMailReplyQA()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerMailReplyQA(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.MessagesUserRequest()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MessagesUserRequest(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MMGuardSafetyGuardrailServer()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrailServer()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer()();
  sub_18E1C5364();
  sub_18E1E67A0(49);
}

uint64_t AssetBackedLLMBundle.resources.getter()
{
  AssetBackedLLMBundle.assetBackedResources.getter();
  sub_18E1DF33C(v1);
  sub_18E1C5D78();

  return v0;
}

uint64_t sub_18E211288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{

  return sub_18E27418C(&a39, v39 - 224);
}

uint64_t sub_18E2112A0()
{

  return sub_18E44E6DC();
}

unint64_t sub_18E211300(uint64_t a1)
{

  return sub_18E1D5D44(a1);
}

void sub_18E211324(uint64_t *a1@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  *(v3 + 72) = v7;
  *(v3 + 96) = 150000;
  *(v3 + 104) = 0;
  *(v3 + 108) = 0;
}

void sub_18E21139C()
{
  sub_18E1C62A0();
  v6 = v5;
  v7 = sub_18E44E27C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_18E44E26C();
  sub_18E2F66D4(v6, v233, &qword_1EABE1010, &unk_18E4E24D0);
  if (!v233[3])
  {
    goto LABEL_114;
  }

  sub_18E2F66D4(v233, v232, &qword_1EABE1010, &unk_18E4E24D0);
  sub_18E2706EC(&qword_1EABE2AE8, &unk_18E4AF6D0);
  v10 = sub_18E1CFC78();
  if (!v10)
  {
    v20 = sub_18E1CFC78();
    if (v20)
    {
      v28 = sub_18E224EBC(v20, v21, v22, v23, v24, v25, v26, v27, v231[0]);
      memcpy(v28, v29, 0x60uLL);
      sub_18E2F6E6C();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F0534(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E2F8040();
      sub_18E1E0FD0();
      sub_18E2F0534(v51);
      goto LABEL_17;
    }

    v30 = sub_18E1CFC78();
    if (v30)
    {
      v38 = sub_18E224EBC(v30, v31, v32, v33, v34, v35, v36, v37, v231[0]);
      memcpy(v38, v39, 0x60uLL);
      sub_18E2F6E18();
      sub_18E233C44();
      if (v1)
      {
        sub_18E231E1C(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1CFE98();
      sub_18E231E1C(v52);
      sub_18E240570();
      v2 = 0xE600000000000000;
LABEL_115:
      sub_18E1E8F44(v233, &qword_1EABE1010, &unk_18E4E24D0);
      v226 = objc_allocWithZone(v0);
      v227 = sub_18E233460();
      ResourceBundleContainer.init(resourceBundleData:resourceBundleType:assetBacked:)(v227, v228, v3, v2, v4);

      goto LABEL_116;
    }

    v41 = sub_18E1CFC78();
    if (v41)
    {
      v49 = sub_18E224EBC(v41, v42, v43, v44, v45, v46, v47, v48, v231[0]);
      memcpy(v49, v50, 0x60uLL);
      sub_18E2F6DC4();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2AE120(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1CFE98();
      sub_18E2AE120(v53);
      sub_18E1C9934(v232);
      v2 = 0xE600000000000000;
      goto LABEL_18;
    }

    if (sub_18E1CFC78())
    {
      sub_18E1C61E0();
      sub_18E2F6D70();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F0964(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0964(v64);
      goto LABEL_31;
    }

    if (sub_18E1CFC78())
    {
      sub_18E1C61E0();
      sub_18E2F6D1C();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F08A8(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F08A8(v76);
      goto LABEL_36;
    }

    v54 = sub_18E1CFC78();
    if (v54)
    {
      v62 = sub_18E224EBC(v54, v55, v56, v57, v58, v59, v60, v61, v231[0]);
      memcpy(v62, v63, 0x60uLL);
      sub_18E2F6CC8();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F0AAC(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0AAC(v88);
      sub_18E1E9FC8();
      v3 = v89 | 4;
      goto LABEL_115;
    }

    v66 = sub_18E1CFC78();
    if (v66)
    {
      v74 = sub_18E224EBC(v66, v67, v68, v69, v70, v71, v72, v73, v231[0]);
      memcpy(v74, v75, 0x60uLL);
      sub_18E24AF88();
      sub_18E233C44();
      if (v1)
      {
        sub_18E203F7C(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E203F7C(v100);
      sub_18E1C9934(v232);
      sub_18E221BD4();
      v3 = v101 | 4;
      goto LABEL_18;
    }

    v78 = sub_18E1CFC78();
    if (v78)
    {
      v86 = sub_18E224EBC(v78, v79, v80, v81, v82, v83, v84, v85, v231[0]);
      memcpy(v86, v87, 0x88uLL);
      sub_18E2F6C74();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F0CCC(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0CCC(v112);
      sub_18E1E9FC8();
      v3 = v113 + 16;
      goto LABEL_115;
    }

    v90 = sub_18E1CFC78();
    if (v90)
    {
      v98 = sub_18E224EBC(v90, v91, v92, v93, v94, v95, v96, v97, v231[0]);
      memcpy(v98, v99, 0x88uLL);
      sub_18E2F6C20();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F0C10(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0C10(v124);
      sub_18E1C9934(v232);
      sub_18E221BD4();
      v3 = v125 + 16;
      goto LABEL_18;
    }

    v102 = sub_18E1CFC78();
    if (v102)
    {
      v110 = sub_18E224EBC(v102, v103, v104, v105, v106, v107, v108, v109, v231[0]);
      memcpy(v110, v111, 0x60uLL);
      sub_18E2F6BCC();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F0E44(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0E44(v136);
      sub_18E240570();
      sub_18E2F7FAC();
      goto LABEL_115;
    }

    v114 = sub_18E1CFC78();
    if (v114)
    {
      v122 = sub_18E224EBC(v114, v115, v116, v117, v118, v119, v120, v121, v231[0]);
      memcpy(v122, v123, 0x60uLL);
      sub_18E2F6B78();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F0D88(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0D88(v147);
      sub_18E1C9934(v232);
      sub_18E2F7FAC();
      goto LABEL_18;
    }

    v126 = sub_18E1CFC78();
    if (v126)
    {
      v134 = sub_18E224EBC(v126, v127, v128, v129, v130, v131, v132, v133, v231[0]);
      memcpy(v134, v135, 0x88uLL);
      sub_18E2F6B24();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F1010(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F1010(v148);
      sub_18E1E9FC8();
      v3 = v149 + 17;
      goto LABEL_115;
    }

    v137 = sub_18E1CFC78();
    if (v137)
    {
      v145 = sub_18E224EBC(v137, v138, v139, v140, v141, v142, v143, v144, v231[0]);
      memcpy(v145, v146, 0x88uLL);
      sub_18E2F6AD0();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F0F54(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0F54(v150);
      sub_18E1C9934(v232);
      sub_18E221BD4();
      v3 = v151 + 17;
      goto LABEL_18;
    }

    if (sub_18E1CFC78())
    {
      sub_18E1C61E0();
      sub_18E2F6A7C();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F11DC(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F11DC(v152);
      goto LABEL_73;
    }

    if (sub_18E1CFC78())
    {
      sub_18E1C61E0();
      sub_18E2F6A28();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F10CC(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F10CC(v154);
      goto LABEL_78;
    }

    if (sub_18E1CFC78())
    {
      sub_18E1C61E0();
      sub_18E2F69D4();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F13A8(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E21697C();
      sub_18E2F13A8(v166);
      sub_18E240570();
      goto LABEL_87;
    }

    if (sub_18E1CFC78())
    {
      sub_18E1C61E0();
      sub_18E2F6980();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F12EC(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E21697C();
      sub_18E2F12EC(v177);
      sub_18E1C9934(v232);
      v4 = 1;
LABEL_87:
      v2 = 0xEF73636974796C61;
      goto LABEL_115;
    }

    v156 = sub_18E1CFC78();
    if (v156)
    {
      v164 = sub_18E224EBC(v156, v157, v158, v159, v160, v161, v162, v163, v231[0]);
      memcpy(v164, v165, 0x128uLL);
      sub_18E2F692C();
      sub_18E233C44();
      if (v1)
      {
        sub_18E231EAC(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E231EAC(v178);
      sub_18E1E9FC8();
      v3 = v179 - 5;
      goto LABEL_115;
    }

    v167 = sub_18E1CFC78();
    if (v167)
    {
      v175 = sub_18E224EBC(v167, v168, v169, v170, v171, v172, v173, v174, v231[0]);
      memcpy(v175, v176, 0x128uLL);
      sub_18E21210C();
      sub_18E233C44();
      if (v1)
      {
        sub_18E212684(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E212684(v180);
      sub_18E1C9934(v232);
      sub_18E221BD4();
      v3 = v181 - 5;
      goto LABEL_18;
    }

    if (sub_18E1CFC78())
    {
      sub_18E1C61E0();
      sub_18E2F68D8();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F16C4(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F16C4(v192);
LABEL_73:
      sub_18E1E9FC8();
      v3 = v153 | 7;
      goto LABEL_115;
    }

    if (sub_18E1CFC78())
    {
      sub_18E1C61E0();
      sub_18E2F6884();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F1608(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F1608(v203);
LABEL_78:
      sub_18E1C9934(v232);
      sub_18E221BD4();
      v3 = v155 | 7;
      goto LABEL_18;
    }

    v182 = sub_18E1CFC78();
    if (v182)
    {
      v190 = sub_18E224EBC(v182, v183, v184, v185, v186, v187, v188, v189, v231[0]);
      memcpy(v190, v191, 0x60uLL);
      sub_18E2F6830();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F183C(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E2F8040();
      sub_18E1E0FD0();
      sub_18E2F183C(v214);
      goto LABEL_12;
    }

    v193 = sub_18E1CFC78();
    if (v193)
    {
      v201 = sub_18E224EBC(v193, v194, v195, v196, v197, v198, v199, v200, v231[0]);
      memcpy(v201, v202, 0x60uLL);
      sub_18E2F67DC();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F1780(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E2F8040();
      sub_18E1E0FD0();
      sub_18E2F1780(v225);
LABEL_17:
      sub_18E1C9934(v232);
LABEL_18:
      v4 = 1;
      goto LABEL_115;
    }

    v204 = sub_18E1CFC78();
    if (v204)
    {
      v212 = sub_18E224EBC(v204, v205, v206, v207, v208, v209, v210, v211, v231[0]);
      memcpy(v212, v213, 0x60uLL);
      sub_18E2F6788();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F19B4(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F19B4(v229);
LABEL_31:
      sub_18E1E9FC8();
      v3 = v65 | 2;
      goto LABEL_115;
    }

    v215 = sub_18E1CFC78();
    if (v215)
    {
      v223 = sub_18E224EBC(v215, v216, v217, v218, v219, v220, v221, v222, v231[0]);
      memcpy(v223, v224, 0x60uLL);
      sub_18E2F6734();
      sub_18E233C44();
      if (v1)
      {
        sub_18E2F18F8(v231);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F18F8(v230);
LABEL_36:
      sub_18E1C9934(v232);
      sub_18E221BD4();
      v3 = v77 | 2;
      goto LABEL_18;
    }

    sub_18E1C9934(v232);
LABEL_114:
    v4 = 0;
    v3 = 0;
    v2 = 0xE000000000000000;
    goto LABEL_115;
  }

  v18 = sub_18E224EBC(v10, v11, v12, v13, v14, v15, v16, v17, v231[0]);
  memcpy(v18, v19, 0x60uLL);
  sub_18E2F6EC0();
  sub_18E233C44();
  if (!v1)
  {
    sub_18E1E9DE8();
    sub_18E2F8040();
    sub_18E1E0FD0();
    sub_18E2F0648(v40);
LABEL_12:
    sub_18E240570();
    goto LABEL_115;
  }

  sub_18E2F0648(v231);
LABEL_111:

  sub_18E1C9934(v232);
  sub_18E1E8F44(v233, &qword_1EABE1010, &unk_18E4E24D0);
LABEL_116:
  sub_18E1C6650();
}

void sub_18E211EDC()
{
  sub_18E1CADE0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v6 == v7)
  {
LABEL_7:
    sub_18E1C5AD8(v5);
    if (v2)
    {
      sub_18E2706EC(&qword_1EABE0E90, &unk_18E4E26B0);
      v8 = sub_18E1CA780();
      sub_18E1D61B8(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_18E1CB0D4();
        sub_18E24E604(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
    sub_18E1CFC20();
    goto LABEL_12;
  }

  sub_18E1E1CA8();
  if (!v6)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

double sub_18E211F98()
{

  return sub_18E26C3FC(v1, (v0 + 968));
}

unint64_t sub_18E2120B8()
{
  result = qword_1EABE0388;
  if (!qword_1EABE0388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0388);
  }

  return result;
}

unint64_t sub_18E21210C()
{
  result = qword_1EABE0498;
  if (!qword_1EABE0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0498);
  }

  return result;
}

unint64_t sub_18E212184()
{
  result = qword_1EABE0C10;
  if (!qword_1EABE0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0C10);
  }

  return result;
}

unint64_t sub_18E212238()
{
  result = qword_1ED6A7E90;
  if (!qword_1ED6A7E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7E90);
  }

  return result;
}

uint64_t sub_18E212294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0 && *(a1 + 216))
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

  return sub_18E1CFA04(v2);
}

unint64_t sub_18E2122D0()
{
  result = qword_1EABE0CC0;
  if (!qword_1EABE0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0CC0);
  }

  return result;
}

unint64_t sub_18E212324()
{
  result = qword_1EABE08D8;
  if (!qword_1EABE08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE08D8);
  }

  return result;
}

void UseCase.AssetRequired.encode(to:)()
{
  sub_18E1C62A0();
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE3458, &qword_18E4B0F88);
  v6 = sub_18E1C4EAC(v5);
  v56 = v7;
  v57 = v6;
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CAF50();
  v55 = v11;
  v12 = sub_18E2706EC(&qword_1EABE3460, &qword_18E4B0F90);
  v13 = sub_18E1C4EAC(v12);
  v53 = v14;
  v54 = v13;
  v16 = *(v15 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1E6530(v18, v46);
  v19 = sub_18E2706EC(&qword_1EABE3468, &qword_18E4B0F98);
  v20 = sub_18E1C4EAC(v19);
  v50 = v21;
  v51 = v20;
  v23 = *(v22 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v24);
  sub_18E1CAF50();
  v49 = v25;
  v26 = sub_18E2706EC(&qword_1EABE3470, &qword_18E4B0FA0);
  v27 = sub_18E1C4EAC(v26);
  v47 = v28;
  v48 = v27;
  v30 = *(v29 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v31);
  sub_18E1E88C0();
  v32 = sub_18E2706EC(&unk_1EABE3478, &qword_18E4B0FA8);
  sub_18E1C4EAC(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1C8E58();
  v38 = *v0;
  v40 = *(v4 + 24);
  v39 = *(v4 + 32);
  v41 = sub_18E1E2F3C();
  sub_18E1DD34C(v41, v42);
  sub_18E200B50();
  sub_18E2169D8();
  switch(v38)
  {
    case 1:
      sub_18E237084();
      sub_18E1E8B0C();
      v43 = v49;
      sub_18E247028();
      sub_18E44F2AC();
      v45 = v50;
      v44 = v51;
      goto LABEL_6;
    case 2:
      sub_18E1E33AC();
      sub_18E22476C();
      v43 = v52;
      sub_18E247028();
      sub_18E44F2AC();
      v45 = v53;
      v44 = v54;
      goto LABEL_6;
    case 3:
      sub_18E23346C();
      sub_18E327E44();
      v43 = v55;
      sub_18E247028();
      sub_18E44F2AC();
      v45 = v56;
      v44 = v57;
LABEL_6:
      (*(v45 + 8))(v43, v44);
      break;
    default:
      sub_18E327E98();
      sub_18E247028();
      sub_18E44F2AC();
      (*(v47 + 8))(v1, v48);
      break;
  }

  (*(v34 + 8))(v2, v32);
  sub_18E1C6650();
}

uint64_t sub_18E212AA0()
{

  return sub_18E1CEB5C((v0 + 16));
}

void CostProfile.encode(to:)()
{
  sub_18E1C62A0();
  v4 = v3;
  v5 = sub_18E2706EC(&unk_1EABE3410, &unk_18E4B0F58);
  sub_18E1C4EAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1E88C0();
  v11 = *v0;
  v23 = *(v0 + 9);
  v24 = *(v0 + 8);
  v21 = *(v0 + 11);
  v22 = *(v0 + 10);
  v20 = *(v0 + 12);
  v12 = v0[3];
  v19 = v0[2];
  v13 = *(v0 + 32);
  v15 = v4[3];
  v14 = v4[4];
  v16 = v4;
  v18 = v17;
  sub_18E1DD34C(v16, v15);
  sub_18E200570();
  sub_18E1E1F54();
  sub_18E44F4EC();
  sub_18E44F34C();
  if (!v1)
  {
    sub_18E1D0280(1);
    sub_18E1E696C();
    sub_18E44F32C();
    sub_18E1D0280(2);
    sub_18E1E696C();
    sub_18E44F32C();
    sub_18E1D0280(3);
    sub_18E1CFD70();
    sub_18E44F32C();
    sub_18E1D0280(4);
    sub_18E1CFD70();
    sub_18E44F32C();
    sub_18E1D0280(5);
    sub_18E1CFD70();
    sub_18E44F32C();
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1C892C(&unk_1EABE0088);
    sub_18E1E3CAC();
    sub_18E44F35C();
    sub_18E1D0280(7);
    sub_18E1CFD70();
    sub_18E44F34C();
    sub_18E1D0280(8);
    sub_18E1CFD70();
    sub_18E44F32C();
  }

  (*(v7 + 8))(v2, v18);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void static Catalog.Resource.LLM.Adapter.BaseAdapter(variant:)()
{
  sub_18E1D41F8();
  sub_18E1E8CC8();
  sub_18E2706EC(&qword_1EABE1118, &qword_18E49DD60);
  v2 = sub_18E1E1920();
  *(v2 + 16) = xmmword_18E49D9B0;
  if (qword_1ED6A8918 != -1)
  {
    sub_18E1C8950();
  }

  sub_18E1E2BE0(qword_1ED6A8920);
  *(v2 + 112) = MEMORY[0x1E69E7CC0];
  *(v2 + 120) = 1;
  *(v2 + 128) = 0;
  sub_18E1CE8FC();
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v3 = sub_18E1E8670();
  v4 = sub_18E1E2EAC(v3, xmmword_18E4B0120);
  sub_18E1C8B84(v4);
  sub_18E1CD5C8();
  sub_18E1E87F8();
  sub_18E1E1470();
  v0[3] = &type metadata for LLMAdapterBase;
  v0[4] = sub_18E22402C();
  sub_18E220B24();
  v5 = swift_allocObject();
  sub_18E1E266C(v5);

  sub_18E211FC4();
  LLMAdapterBase.init(configuration:variant:)();
  if (v1)
  {
    sub_18E287190(v0);
  }

  sub_18E1E1BF0();
}

void LLMBundle.id.getter()
{
  sub_18E1C575C();
  v149 = sub_18E223DD0(v3);
  v4 = sub_18E1C4EAC(v149);
  v147 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C4EDC();
  v10 = v9 - v8;
  v11 = sub_18E44E2BC();
  v12 = sub_18E1C4EAC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1C86C0();
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1C617C();
  v146 = v18;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v19);
  sub_18E1C617C();
  v145 = v20;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v21);
  sub_18E1C617C();
  v144 = v22;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v23);
  sub_18E1C617C();
  v143 = v24;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v25);
  sub_18E2F81C8();
  MEMORY[0x1EEE9AC00](v26);
  sub_18E216B10();
  v28 = *(v0 + 40);
  v27 = *(v0 + 48);
  sub_18E1C5040(v2 + 2, v28);
  v29(v28);
  sub_18E223708();
  v31 = v31 && v30 == 0xE700000000000000;
  if (v31)
  {

    goto LABEL_10;
  }

  v32 = sub_18E223B20();

  if (v32)
  {
LABEL_10:
    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  sub_18E2372D8();
  v11 = "fovestimatorVariant";
  v34 = v2[5];
  v33 = v2[6];
  sub_18E1C5040(v2 + 2, v34);
  v35(v34);
  sub_18E1D0274();
  sub_18E216A24();

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E2F7E90(v36);
  if (v37)
  {
    sub_18E1E36E8();
    v34 = v123;
  }

  *(v34 + 16) = v33;
  sub_18E1C6730(v10);
  v38 = sub_18E2230DC();
  v39(v38);
  v10 = v142;
LABEL_11:
  v41 = v2[10];
  v40 = v2[11];
  sub_18E1E15F4(v2 + 7, v41);
  sub_18E1C5608(*(*(v40 + 8) + 8));
  v42(v41);
  v44 = v43;
  sub_18E2404F8();
  if (v46 == v41 && v45 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E2430B0();
    sub_18E1E1F80();

    if ((v41 & 1) == 0)
    {
      sub_18E2372D8();
      v48 = v2[10];
      v44 = v2[11];
      sub_18E1E15F4(v2 + 7, v48);
      sub_18E1C5608(*(*(v44 + 8) + 8));
      v49(v48);
      sub_18E1D0274();
      sub_18E216A24();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v124 = *(v34 + 16);
        sub_18E1C6868();
        sub_18E3EF9F0();
        v34 = v125;
      }

      v51 = *(v34 + 16);
      v50 = *(v34 + 24);
      sub_18E2F79B8();
      v11 = v14;
      if (v37)
      {
        sub_18E1E36E8();
        v34 = v126;
      }

      v14 = v10;
      *(v34 + 16) = v44;
      sub_18E1C6730(v10);
      v54(v52 + v53 * v51, v1, v11);
    }

    sub_18E2404F8();
  }

  sub_18E2F66D4((v2 + 12), &v154, &qword_1EABE12F0, &unk_18E49ED90);
  if (v155)
  {
    sub_18E1D48D8();
    v55 = sub_18E1CB00C(*(*(v44 + 8) + 8));
    v56(v55);
    sub_18E1E8378();
    if (v31 && v57 == 0xE700000000000000)
    {
    }

    else
    {
      sub_18E2430B0();
      sub_18E233F98();
      if ((v1 & 1) == 0)
      {
        LOBYTE(v1) = v152;
        v44 = v153;
        sub_18E1E15F4(v151, v152);
        v59 = sub_18E1CB00C(*(*(v44 + 8) + 8));
        v60(v59);
        sub_18E1D0274();
        v61 = sub_18E1CF874();
        sub_18E2452D8(v61);
        sub_18E44E28C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = *(v34 + 16);
          sub_18E1C6868();
          sub_18E3EF9F0();
          v34 = v128;
        }

        sub_18E2234D4();
        if (v37)
        {
          sub_18E1E36E8();
          v34 = v129;
        }

        v62 = sub_18E1C5FC0();
        v63(v62, v143, v11);
      }
    }

    sub_18E1C9934(v151);
  }

  else
  {
    sub_18E1E8F44(&v154, &qword_1EABE12F0, &unk_18E49ED90);
  }

  sub_18E2F66D4((v2 + 17), &v154, &qword_1EABE12F8, &qword_18E4AAE90);
  if (v155)
  {
    sub_18E1C551C(&v154, v151);
    v64 = sub_18E1C7F64();
    v65(v64);
    sub_18E1E8378();
    if (v31 && v66 == 0xE700000000000000)
    {
    }

    else
    {
      sub_18E2430B0();
      sub_18E233F98();
      if ((v1 & 1) == 0)
      {
        v68 = sub_18E1C7F64();
        v69(v68);
        sub_18E1CF6A4();
        sub_18E2F8284();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = *(v34 + 16);
          sub_18E1C6868();
          sub_18E3EF9F0();
          v34 = v131;
        }

        sub_18E2234D4();
        if (v37)
        {
          sub_18E1E36E8();
          v34 = v132;
        }

        v70 = sub_18E1C5FC0();
        v71(v70, v144, v11);
      }
    }

    sub_18E1C9934(v151);
  }

  else
  {
    sub_18E1E8F44(&v154, &qword_1EABE12F8, &qword_18E4AAE90);
  }

  sub_18E2F66D4((v2 + 22), &v154, &qword_1EABE2568, &qword_18E4AAE98);
  if (v155)
  {
    sub_18E1C551C(&v154, v151);
    v72 = sub_18E1C7F64();
    v73(v72);
    sub_18E1E8378();
    if (v31 && v74 == 0xE700000000000000)
    {
    }

    else
    {
      sub_18E2430B0();
      sub_18E233F98();
      if ((v1 & 1) == 0)
      {
        v76 = sub_18E1C7F64();
        v77(v76);
        sub_18E1CF6A4();
        sub_18E2F8464();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = *(v34 + 16);
          sub_18E1C6868();
          sub_18E3EF9F0();
          v34 = v134;
        }

        sub_18E2234D4();
        if (v37)
        {
          sub_18E1E36E8();
          v34 = v135;
        }

        v78 = sub_18E1C5FC0();
        v79(v78, v145, v11);
      }
    }

    sub_18E1C9934(v151);
  }

  else
  {
    sub_18E1E8F44(&v154, &qword_1EABE2568, &qword_18E4AAE98);
  }

  sub_18E2F66D4((v2 + 27), &v154, &qword_1EABE2570, &qword_18E4AAEA0);
  if (v155)
  {
    v80 = sub_18E1D48D8();
    v81 = sub_18E1C8FFC(v80, *(v44 + 8));
    v82(v81);
    sub_18E1E8378();
    if (v31 && v83 == 0xE700000000000000)
    {
    }

    else
    {
      sub_18E2430B0();
      sub_18E233F98();
      if ((v1 & 1) == 0)
      {
        LOBYTE(v1) = v152;
        v44 = v153;
        v85 = sub_18E1E15F4(v151, v152);
        v86 = sub_18E1C8FFC(v85, *(v44 + 8));
        v87(v86);
        sub_18E1CF6A4();
        sub_18E2F8444();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v136 = *(v34 + 16);
          sub_18E1C6868();
          sub_18E3EF9F0();
          v34 = v137;
        }

        sub_18E2234D4();
        if (v37)
        {
          sub_18E1E36E8();
          v34 = v138;
        }

        v88 = sub_18E1C5FC0();
        v89(v88, v146, v11);
      }
    }

    sub_18E1C9934(v151);
  }

  else
  {
    sub_18E1E8F44(&v154, &qword_1EABE2570, &qword_18E4AAEA0);
  }

  sub_18E2F66D4((v2 + 32), &v154, &qword_1EABE2578, &qword_18E4AAEA8);
  if (v155)
  {
    sub_18E1C551C(&v154, v151);
    v90 = sub_18E1C7F64();
    v91(v90);
    sub_18E1E8378();
    if (v31 && v92 == 0xE700000000000000)
    {
    }

    else
    {
      sub_18E2430B0();
      sub_18E233F98();
      if ((v1 & 1) == 0)
      {
        v94 = sub_18E1C7F64();
        v95(v94);
        sub_18E1CF6A4();
        sub_18E2288AC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = *(v34 + 16);
          sub_18E1C6868();
          sub_18E3EF9F0();
          v34 = v140;
        }

        sub_18E2234D4();
        if (v37)
        {
          sub_18E1E36E8();
          v34 = v141;
        }

        *(v34 + 16) = v44;
        v96 = *(v14 + 32);
        v97 = *(v14 + 80);
        sub_18E1E2708();
        v98 = sub_18E223AAC();
        v99(v98);
      }
    }

    sub_18E1C9934(v151);
  }

  else
  {
    sub_18E1E8F44(&v154, &qword_1EABE2578, &qword_18E4AAEA8);
  }

  sub_18E44E37C();
  v100 = *v2;
  v101 = v2[1];

  v102 = sub_18E1CFFC0();
  MEMORY[0x193ACBAD0](v102);
  if (*(v34 + 16))
  {
    v151[0] = v34;

    sub_18E2EEDB8(v151);

    sub_18E44E2FC();
  }

  else
  {
  }

  v103 = sub_18E44E36C();
  if (v104)
  {
    v105 = v103;
    v106 = v104;
    v107 = *(v147 + 8);
    v108 = sub_18E1E63C0();
    v109(v108);
    v100 = v105;
    v101 = v106;
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4();
    }

    v110 = sub_18E44E83C();
    sub_18E1C95EC(v110, qword_1ED6A9858);
    sub_18E1DF090(v2, v151);
    v111 = sub_18E44E80C();
    v112 = sub_18E44EE0C();
    if (sub_18E2333E4(v112))
    {
      sub_18E2342D4();
      v150 = sub_18E220C80();
      sub_18E1E18F0(4.8151e-34);
      sub_18E2F0564();
      v113 = sub_18E44F39C();
      v115 = v114;
      sub_18E1C9624(v113, v114, &v150);
      sub_18E223638();

      sub_18E1D4214();
      sub_18E231EAC(v151);
      v116 = sub_18E2016D4();
      sub_18E1C9624(v116, v117, v118);
      sub_18E1E6C9C();

      *(v2 + 14) = v115;
      sub_18E1D81D8(&dword_18E1C1000, v119, v120, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      swift_arrayDestroy();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      sub_18E231EAC(v151);
    }

    v121 = *(v147 + 8);

    v122 = sub_18E1E63C0();
    v121(v122);
  }

  *v148 = v100;
  v148[1] = v101;
  sub_18E1C5544();
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMSmallV1()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMSmallV1(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

unint64_t sub_18E216784()
{
  result = qword_1ED6A9138;
  if (!qword_1ED6A9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9138);
  }

  return result;
}

uint64_t sub_18E2167E8(uint64_t a1)
{

  return sub_18E30B3A8(a1);
}

void sub_18E216810(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  os_unfair_lock_unlock(v2 + 6);
}

uint64_t sub_18E216840()
{
}

void *sub_18E216880()
{

  return memcpy((v0 + 24), (v0 + 424), 0xC1uLL);
}

uint64_t sub_18E21689C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  *(v2 + 48) = 0;
  *(v2 + 52) = 0;
  return result;
}

void sub_18E216910()
{

  JUMPOUT(0x193ACC300);
}

unint64_t sub_18E216928()
{
  result = qword_1ED6A9058;
  if (!qword_1ED6A9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9058);
  }

  return result;
}

uint64_t sub_18E2169D8()
{

  return sub_18E44F4EC();
}

void sub_18E216A0C()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E216A24()
{

  return sub_18E44E28C();
}

uint64_t sub_18E216A88()
{
}

unint64_t sub_18E216AA0()
{
  result = qword_1ED6A88E8;
  if (!qword_1ED6A88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A88E8);
  }

  return result;
}

uint64_t sub_18E216B20()
{

  return sub_18E44E99C();
}

void sub_18E216B38()
{
  v1 = *(v0 + 880);
  *(v0 + 72) = *(v0 + 888);
  *(v0 + 80) = v1;
  *(v0 + 64) = *(v0 + 896);
  *(v0 + 1591) = 10;
}

__n128 *sub_18E216B64(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18E216B74()
{

  return sub_18E1CEB5C((v0 + 16));
}

uint64_t sub_18E216B90()
{
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMLargeV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMLargeV5(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Motion.Model.Pednet()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Motion.Model.Pednet(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000042);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.HandwritingSynthesizer.HandwritingSynthesis()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.HandwritingSynthesizer.HandwritingSynthesis(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E1B5C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.Resource.LLM.DraftModel.MessagesAction(variant:)()
{
  sub_18E1C6878();
  v8 = v0;
  v2 = v1;
  sub_18E2706EC(&qword_1EABE1118, &qword_18E49DD60);
  *(sub_18E1E1920() + 16) = xmmword_18E49D9B0;
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E221764(&qword_1ED6A89F0);
  v3 = qword_1ED6A8958;

  if (v3 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E211324(&qword_1ED6A8960);
  sub_18E224720();
  sub_18E1CAF68();
  sub_18E1C5790();
  sub_18E3CDDEC();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v4 = sub_18E1CF518();
  v5 = sub_18E1E32C4(v4, xmmword_18E49D9C0);
  sub_18E1C85D4(v5, v6 | 0x322E0000u);
  sub_18E25E1E4();
  sub_18E1E29F8();
  sub_18E202CE4();
  sub_18E3EAE38();
  sub_18E2235D0();
  sub_18E1DD2AC();
  sub_18E3EAE4C();
  sub_18E1E8610();
  v2[3] = &type metadata for AssetBackedLLMDraftModelBase;
  v2[4] = sub_18E1E7BB4();
  sub_18E1C86E0();
  v7 = swift_allocObject();
  sub_18E1E266C(v7);

  AssetBackedLLMDraftModelBase.init(configuration:variant:)();
  if (v8)
  {
    sub_18E287190(v2);
  }

  sub_18E1CA12C();
}

uint64_t sub_18E21D09C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_18E1D45EC(v4, a2, a3);
}

void sub_18E21D144(uint64_t a1@<X8>)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  *(v2 + 80) = v1;
  *(v2 + 88) = v1;
  *(v2 + 96) = 256;
  *(v2 + 104) = v1;
}

__n128 sub_18E21D1B0()
{
  result = *(v1 - 448);
  *v0 = result.n128_u32[0];
  return result;
}

uint64_t sub_18E21D1C0()
{
  *v0 = v1;
  v2 = v0[67];
  v3 = v0[68];
  return v0[1];
}

void sub_18E22013C()
{
  v3 = *(v0 + 8);
  *(v2 + 200) = v1;
  *(v2 + 208) = v3;
}

void sub_18E220158()
{
  v2 = *(v0 - 536);
}

unint64_t sub_18E220170()
{
  result = qword_1ED6A8678;
  if (!qword_1ED6A8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8678);
  }

  return result;
}

uint64_t sub_18E2201D0()
{

  return sub_18E44F3CC();
}

uint64_t sub_18E2201FC()
{
  v0[1] = v1;
  v2 = v0[67];
  v3 = v0[68];
  return v0[2];
}

void *sub_18E22026C(void *a1)
{

  return memcpy(a1, (v1 + 752), 0xD8uLL);
}

void sub_18E2202A4()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E2202BC()
{

  return swift_slowAlloc();
}

uint64_t sub_18E2202E0()
{
  result = v0 - 232;
  v2 = *(v0 - 296);
  return result;
}

uint64_t sub_18E2202F0()
{

  return sub_18E44EA6C();
}

unint64_t sub_18E220354()
{
  result = qword_1ED6A8300;
  if (!qword_1ED6A8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8300);
  }

  return result;
}

void AssetBackedSecureAnalyticsBase.init(configuration:variant:)()
{
  sub_18E223548();
  sub_18E1C826C();
  v12 = sub_18E1CD9B8(v4, v5, v6, v7, v8, v9, v10, v11, v50, v55, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207);
  sub_18E1D0338(v12, v13, v14, v15, v16, v17, v18, v19, v51, v56);
  sub_18E1E3BD4();
  v23 = sub_18E237058(v20, v21, v22);
  if (v1)
  {
    goto LABEL_7;
  }

  if (!v208 || !*(v208 + 16))
  {
    sub_18E2D0B44();
    v47 = sub_18E1C8558();
    sub_18E1E6860(v47, v48);
    sub_18E221DDC(v49, 41);

LABEL_7:

    sub_18E1FE044(&v207);
    goto LABEL_8;
  }

  sub_18E223A20(v23, v24, v25, v26, v27, v28, v29, v30, v52, v57, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v207);
  sub_18E1C973C();
  v39 = sub_18E1D5E70(v31, v32, v33, v34, v35, v36, v37, v38, v53, v58, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v207);
  sub_18E1D4410(v39, v40, v41, v42, v43, v44, v45, v46, v54, v59);
  *(v3 + 200) = v2;
  *(v3 + 208) = v0;
LABEL_8:
  sub_18E1CFAAC();
  sub_18E220CC4();
}

uint64_t sub_18E220478()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E2204C4()
{

  return sub_18E44F03C();
}

void sub_18E220504(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = 10000;
  *(v1 + 104) = 1;
  *(v1 + 105) = 0;
}

void *sub_18E220844()
{

  return memcpy((v0 + 696), (v0 + 952), 0xD8uLL);
}

uint64_t sub_18E22086C()
{
  v2 = *v0;

  return swift_dynamicCast();
}

uint64_t sub_18E2208A8()
{

  return sub_18E44F3CC();
}

double sub_18E2208C4@<D0>(unsigned __int16 a1@<W8>)
{
  *(v1 + 96) = a1 | 0x30000u;
  *&result = 0x10000000100;
  *(v1 + 104) = 256;
  return result;
}

__n128 sub_18E2208D8()
{
  result = *(v2 - 400);
  *v0 = result.n128_u32[0];
  v4 = *(v1 + 24);
  return result;
}

uint64_t sub_18E220940()
{
  v3 = *(v0 - 224);
  v2 = *(v0 - 216);

  return sub_18E44F3CC();
}

uint64_t sub_18E220998()
{

  return sub_18E44F0DC();
}

void *sub_18E220A28()
{

  return memcpy((v0 + 64), (v0 + 320), 0xD8uLL);
}

uint64_t sub_18E220A44()
{
  v5 = *(*(v2 + 8) + 8);

  return sub_18E244FC8(v1, (v3 - 168), v0, v5);
}

uint64_t sub_18E220A68()
{

  return sub_18E44E6DC();
}

void sub_18E220ABC()
{
  *(v2 + 16) = v0;
  v3 = *(v1 + 32);
  v4 = v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v5 = *(v1 + 72);
}

void sub_18E220AE0(uint64_t a1@<X8>)
{
  *(v1 + 72) = a1;
  *(v1 + 80) = v2;
  *(v1 + 88) = 0;
  *(v1 + 96) = a1;
  *(v1 + 104) = a1;
  *(v1 + 112) = 256;
  *(v1 + 120) = a1;
}

uint64_t sub_18E220AFC(uint64_t result)
{
  *(result + 104) = 5;
  *(result + 112) = 3419698;
  *(result + 120) = 0xE300000000000000;
  return result;
}

uint64_t sub_18E220B30()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
  v4 = *(v2 - 192);
  v5 = *(v2 - 184);
}

id sub_18E220B64()
{

  return v0;
}

void *sub_18E220B7C(void *a1)
{

  return memcpy(a1, (v1 + 1496), 0xD8uLL);
}

unint64_t sub_18E220BC8()
{
  result = qword_1ED6A9270;
  if (!qword_1ED6A9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9270);
  }

  return result;
}

void sub_18E220C34()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E220C68()
{

  return sub_18E1E8C38(v1, v0 + 616);
}

uint64_t sub_18E220C80()
{

  return swift_slowAlloc();
}

uint64_t sub_18E220C9C()
{
}

uint64_t sub_18E220CD8()
{

  return sub_18E44F35C();
}

unint64_t sub_18E220D24()
{
  result = qword_1ED6A8AB8;
  if (!qword_1ED6A8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8AB8);
  }

  return result;
}

__n128 sub_18E220DC0()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v1[3];
  v6 = v1[4];
  result = *(v1 + 5);
  v8 = *(v1 + 7);
  v9 = *(v1 + 72);
  return result;
}

void sub_18E220DF0()
{
  *(v0 + 96) = 250000;
  *(v0 + 104) = 0;
  *(v0 + 108) = 0;
}

void AssetBackedEmbeddingPreprocessorBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1C826C();
  sub_18E1DD340();
  memcpy(v4, v5, v6);
  sub_18E1DD340();
  memcpy(v7, v8, v9);
  sub_18E1D5FB4();
  v13 = sub_18E237058(v10, v11, v12);
  if (v1)
  {

    sub_18E1FE044(v141);
  }

  else
  {
    sub_18E223A20(v13, v14, v15, v16, v17, v18, v19, v20, v37, v40, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141[0]);
    sub_18E1C973C();
    v29 = sub_18E1D5E70(v21, v22, v23, v24, v25, v26, v27, v28, v38, v41, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v141[0]);
    sub_18E1D4410(v29, v30, v31, v32, v33, v34, v35, v36, v39, v42);
    *(v3 + 200) = v2;
    *(v3 + 208) = v0;
  }

  sub_18E1CFAAC();
  sub_18E1CD624();
}

void sub_18E220EB0()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E221494()
{

  return sub_18E44F3CC();
}

void sub_18E2214B4()
{
  v3 = *(v0 + 8);
  *(v2 + 200) = v1;
  *(v2 + 208) = v3;
}

uint64_t sub_18E2214E8()
{
  *(v1 - 328) = v0;
}

void *sub_18E221668()
{

  return memcpy((v0 + 1168), (v0 + 1384), 0xD8uLL);
}

__n128 sub_18E221684()
{
  *(v0 + 200) = *(v1 + 200);
  result = *(v1 + 216);
  *(v0 + 216) = result;
  v4 = *(v2 - 96);
  return result;
}

uint64_t sub_18E22169C()
{

  return swift_dynamicCast();
}

uint64_t sub_18E2216D0()
{

  return swift_slowAlloc();
}

uint64_t sub_18E2216E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, __int128 a60, uint64_t a61, uint64_t a62, char a63)
{
  *(&a60 + 5) = 0;
  *&a60 = 0;
  a61 = v63;
  a62 = 1;
  a63 = 0;

  return sub_18E292124(&a60);
}

void sub_18E221764(uint64_t *a1@<X8>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
}

void sub_18E221770()
{
  v1 = *(v0 + 152);
  *(v0 + 144) = *(v0 + 144);
  *(v0 + 152) = v1;
}

void sub_18E22177C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = a1;
}

uint64_t sub_18E22179C(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_18E1D45EC(v4, v3, a3);
}

uint64_t sub_18E2217B8(float a1)
{
  *v1 = a1;

  return swift_beginAccess();
}

BOOL sub_18E2217FC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_18E22186C()
{
  v3 = *(v2 + 8);
  result = v1;
  v5 = *(v0 + 112);
  return result;
}

char *sub_18E221894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  result = &a11;
  v13 = *(v11 - 72);
  return result;
}

uint64_t sub_18E2218AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_18E1DF2A8(v6, v3, a3, v4, v5);
}

uint64_t sub_18E2218EC()
{
}

double sub_18E221904@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 88) = 0;
  result = 0.0;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *v1 = v2;
  *(v1 + 8) = (a1 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_18E221924(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_18E1D45EC(0xD000000000000013, a2, va);
}

void sub_18E221960()
{
  *(v0 + 16) = v2;
  v7 = v0 + v6 * v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v1;
  *(v7 + 48) = v5;
}

void sub_18E2219B0()
{
  v2 = (*(v0 + 16) + 24);

  os_unfair_lock_lock(v2);
}

uint64_t sub_18E2219D4()
{
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  *(v2 - 72) = v1;
  *(v0 + 536) = 1;
  v8 = *(v0 + 184);
  v9 = *(v0 + 180);

  return sub_18E44F2EC();
}

unint64_t sub_18E221A84()
{
  result = qword_1ED6A8468;
  if (!qword_1ED6A8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8468);
  }

  return result;
}

uint64_t sub_18E221AD8()
{
  v2 = *(v0 + 8);
}

uint64_t sub_18E221AF0()
{

  return sub_18E44F3CC();
}

void *sub_18E221B14()
{

  return memcpy((v0 + 480), (v0 + 952), 0xD8uLL);
}

void sub_18E221B50()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E221BAC()
{
  v3 = *(v1 + 8);
  result = v2;
  v5 = *(v0 + 32);
  return result;
}

void sub_18E221BE0(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;
}

void sub_18E221C04(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

void sub_18E221C38()
{
  *(v1 - 96) = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
}

uint64_t sub_18E221C48@<X0>(uint64_t a1@<X8>)
{

  return sub_18E2491A4(0xD000000000000010, (a1 - 32) | 0x8000000000000000, v1);
}

void sub_18E221C7C(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 64) = v2;
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = a1;
  *(v1 + 96) = 0;
  *(v1 + 104) = a1;
}

uint64_t sub_18E221C94(uint64_t result)
{
  *(result + 40) = 808335409;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334641;
  *(result + 72) = 0xE400000000000000;
  return result;
}

void sub_18E221CE4()
{
  v2 = *(v0 - 344);

  JUMPOUT(0x193ACD400);
}

int8x8_t sub_18E221D28(int8x8_t a1)
{

  return sub_18E3CFA54(1, 3, a1);
}

void sub_18E221D4C()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E221D64()
{
  v0[3] = v2;
  v0[4] = v3;
  v0[5] = v1;
  v6 = v0[94];
  v7 = v0[95];
  *(v5 - 72) = *(v4 + 16);
  v0[2] = v4 + 32;
}

uint64_t sub_18E221D8C()
{
  *(v2 - 120) = v1;
  *(v2 - 112) = v0;
  v4 = *(v2 - 88);

  return sub_18E44F28C();
}

uint64_t sub_18E221DB8()
{

  return sub_18E44F26C();
}

uint64_t sub_18E221DDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = v2;

  return swift_willThrow();
}

BOOL sub_18E221E1C()
{

  return os_log_type_enabled(v0, v1);
}

void *sub_18E221E40()
{
  *(v0 + 176) = *(v0 + 60);
  *(v0 + 184) = *(v0 + 168);
  v4 = *(v2 - 96);
  *(v0 + 8) = v4;
  *(v0 + 192) = v4;
  *(v0 + 193) = *(v0 + 56);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  *(v0 + 200) = *(v0 + 48);
  *(v0 + 208) = v6;
  *(v0 + 16) = v1;
  *(v0 + 216) = v1;
  *(v0 + 224) = v5;
  *(v0 + 232) = *(v0 + 40);
  LODWORD(v5) = *(v2 - 104);
  *(v0 + 12) = v5;
  *(v0 + 240) = v5;

  return memcpy((v0 + 241), (v0 + 2440), 0xC0uLL);
}

uint64_t sub_18E221EAC()
{

  return sub_18E44F4DC();
}

void sub_18E221EF4(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 152) = v4;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
}

void sub_18E221F7C()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E221FA0()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E221FC8()
{

  return sub_18E44EA3C();
}

double sub_18E221FE0(unint64_t a1)
{
  STACK[0x200] = v2;
  STACK[0x208] = 0;
  LOBYTE(STACK[0x210]) = 0;
  result = 0.0;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  *(v3 + 170) = 0u;
  STACK[0x260] = 0;
  STACK[0x258] = 0;
  STACK[0x268] = v2;
  STACK[0x270] = v1;
  STACK[0x278] = a1;
  LOBYTE(STACK[0x280]) = 0;
  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMLargeV1()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMLargeV1(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMLargeV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMLargeV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMLargeV3()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMLargeV3(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMLargeV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMLargeV4(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMSmallV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMSmallV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMSmallV3()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMSmallV3(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMSmallV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMSmallV4(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMSmallV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMSmallV5(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t sub_18E222EB0(uint64_t a1)
{
  v4 = *(*(v1 + 56) + 8 * a1);
  v6 = *(v2 + 200);
  v5 = *(v2 + 208);
}

void AssetBackedHandwritingSynthesizerBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1C826C();
  sub_18E1DD340();
  memcpy(v4, v5, v6);
  sub_18E1DD340();
  memcpy(v7, v8, v9);
  sub_18E1D5FB4();
  v12 = sub_18E21D09C(22, v10, v11);
  if (v1)
  {

    sub_18E1FE044(v140);
  }

  else
  {
    sub_18E223A20(v12, v13, v14, v15, v16, v17, v18, v19, v36, v39, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140[0]);
    sub_18E1C973C();
    v28 = sub_18E1D5E70(v20, v21, v22, v23, v24, v25, v26, v27, v37, v40, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v140[0]);
    sub_18E1D4410(v28, v29, v30, v31, v32, v33, v34, v35, v38, v41);
    *(v3 + 200) = v2;
    *(v3 + 208) = v0;
  }

  sub_18E1CFAAC();
  sub_18E1CD624();
}

BOOL sub_18E2230F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_18E23458C();
  v7 = *(v6 + 40);
  sub_18E44F48C();
  sub_18E1CAE1C();
  sub_18E44EB4C();
  sub_18E44F4CC();
  v8 = *(a3 + 32);
  sub_18E1C5B14();
  v11 = ~v10;
  do
  {
    v12 = v9 & v11;
    v13 = (1 << (v9 & v11)) & *(a3 + 56 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8));
    v14 = v13 != 0;
    if (!v13)
    {
      break;
    }

    v15 = (*(a3 + 48) + 16 * v12);
    if (*v15 == v4 && v15[1] == v3)
    {
      break;
    }

    sub_18E1C8F70();
    v17 = sub_18E44F3CC();
    v9 = v12 + 1;
  }

  while ((v17 & 1) == 0);
  return v14;
}

void sub_18E2231CC()
{
  v1 = v0[127];
  v2 = v0[128];
  v3 = v0[10];
}

uint64_t sub_18E2231EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_18E223208()
{
  *(v0 - 65) = 0;

  return sub_18E44F22C();
}

void sub_18E223258()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E223294()
{
  result = v0 - 192;
  v2 = *(v0 - 248);
  return result;
}

void *sub_18E2232D0(void *a1)
{

  return memcpy(a1, (v1 + 480), 0xD8uLL);
}

uint64_t sub_18E223308()
{
  v3 = *(v1 - 168);

  return sub_18E2706EC(v0, v3);
}

void *sub_18E22332C()
{
  *(v0 + 880) = v1;
  *(v0 + 881) = *(v0 + 2641);
  *(v0 + 884) = *(v0 + 2644);
  *(v0 + 888) = *(v0 + 168);
  *(v0 + 896) = *(v0 + 8);
  *(v0 + 897) = *(v0 + 56);
  *(v0 + 898) = *(v0 + 2634);
  *(v0 + 902) = *(v3 - 98);
  *(v0 + 904) = *(v0 + 48);
  *(v0 + 912) = *(v0 + 160);
  *(v0 + 920) = *(v0 + 16);
  *(v0 + 928) = *(v0 + 152);
  *(v0 + 936) = *(v0 + 40);
  *(v0 + 944) = *(v0 + 12);

  return memcpy((v2 + 65), (v0 + 2440), 0xC0uLL);
}

uint64_t sub_18E2233E0(uint64_t result)
{
  *(result + 104) = 3;
  *(result + 112) = 808334898;
  *(result + 120) = v1;
  return result;
}

__n128 sub_18E223470()
{
  v3 = *(v0 + 104);
  v4 = *(v0 + 120);
  result = *(v0 + 130);
  *(v1 + 170) = result;
  return result;
}

void sub_18E223488(uint64_t *a1@<X8>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
}

double sub_18E2234A0(double a1)
{

  return sub_18E3CF2CC(2, a1);
}

uint64_t sub_18E223510()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v1 - 304);
}

uint64_t sub_18E223530()
{

  return sub_18E44E99C();
}

uint64_t sub_18E22355C()
{
  v2 = *(v0 + 8);
}

uint64_t sub_18E223580()
{

  return swift_dynamicCast();
}

uint64_t sub_18E22359C(uint64_t result)
{
  *(result + 104) = 5;
  *(result + 112) = 3288626;
  *(result + 120) = 0xE300000000000000;
  return result;
}

uint64_t sub_18E2235B8()
{

  return swift_dynamicCast();
}

void *sub_18E2235E0(void *a1)
{

  return memcpy(a1, (v1 + 1280), 0xD8uLL);
}

void sub_18E223604()
{

  sub_18E3F0110();
}

void sub_18E223644()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E223668(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_18E327BB0(v1 - 128, va);
}

uint64_t sub_18E223680()
{

  return swift_dynamicCast();
}

void *sub_18E2236A4()
{

  return memcpy((v0 + 320), (v0 + 536), 0xD8uLL);
}

uint64_t sub_18E2236C0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;
  *(v1 - 104) = 1;
  *(v1 - 96) = 0;

  return sub_18E292124(v1 - 128);
}

void sub_18E2236F8(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;
  *(v1 - 120) = 0;
  *(v1 - 116) = 0;
}

void *sub_18E223730(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 320), 0xD8uLL);
}

__n128 *sub_18E223764(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18E223960()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_18E44E50C();
}

uint64_t sub_18E223994()
{

  return swift_dynamicCast();
}

void sub_18E2239AC()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E2239F0()
{
  *(v1 - 192) = v0;

  return swift_slowAlloc();
}

void *sub_18E223A20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char __dst, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char __src)
{

  return memcpy(&__dst, &__src, 0xC1uLL);
}

void sub_18E223A60()
{
  *(v0 + 232) = v1;
  *(v0 + 240) = v1;
  *(v0 + 248) = 256;
  *(v0 + 256) = v1;
}

uint64_t sub_18E223A74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  result = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v3;
  *(v1 + 40) = result;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  return result;
}

uint64_t sub_18E223A9C()
{
  result = v0;
  v3 = *(v1 - 312);
  return result;
}

uint64_t sub_18E223AC4()
{

  return sub_18E44F48C();
}

uint64_t sub_18E223B08(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_18E223B20()
{

  return sub_18E44F3CC();
}

uint64_t sub_18E223B44()
{

  return sub_18E44F2FC();
}

uint64_t sub_18E223B70@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_18E223BA0()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;
  v4 = *(v2 - 232);
  v5 = *(v2 - 224);
}

void sub_18E223BC4()
{

  JUMPOUT(0x193ACC300);
}

void *sub_18E223C30(void *a1)
{

  return memcpy(a1, (v1 + 160), 0xD8uLL);
}

void sub_18E223C68()
{
  *(v0 + 72) = v1;

  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
}

uint64_t sub_18E223CC0()
{

  return sub_18E44E6DC();
}

void sub_18E223D34(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = a1;
  *(v1 + 96) = 0;
  *(v1 + 104) = a1;
}

__n128 *sub_18E223D50(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 1;
  result[2].n128_u64[1] = 841889841;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 841889073;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E223D80()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_18E223DD0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;

  return sub_18E44E38C();
}

void sub_18E223E1C()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E223E58()
{

  return swift_slowAlloc();
}

uint64_t sub_18E223E74()
{
  v2 = **(v1 - 344);
  result = v0;
  v4 = *(v1 - 304);
  return result;
}

uint64_t sub_18E223EB0()
{
  v2 = *v0;
  v3 = v0[1];
}

double sub_18E223EC8()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

uint64_t sub_18E223ED8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 200) = a1;
  *(v2 - 192) = a2;

  return sub_18E44E38C();
}

uint64_t sub_18E223F08(uint64_t result)
{
  v1[4] = result;
  v1[5] = 0;
  *(v1 + 45) = 0;
  return result;
}

uint64_t sub_18E223F28()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_18E223F78@<X0>(__int16 a1@<W8>)
{
  *(v1 + 1558) = a1;
  *(v1 + 1560) = v3;
  *(v1 + 1568) = v2;
  *(v1 + 1576) = *(v1 + 24);
  return v1 + 880;
}

uint64_t sub_18E223F94(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_18E223FC4()
{
  v2 = *(v0 + 880);
  *(v0 + 1590) = 14;

  return sub_18E44F1CC();
}

uint64_t sub_18E223FF0()
{
  result = v0;
  v3 = *(v1 - 256);
  return result;
}

unint64_t sub_18E22402C()
{
  result = qword_1ED6A93B8;
  if (!qword_1ED6A93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A93B8);
  }

  return result;
}

uint64_t sub_18E2240C8()
{
  v2 = *(v0 + 56);

  return swift_dynamicCast();
}

uint64_t sub_18E2240EC()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  return sub_18E44E50C();
}

uint64_t sub_18E22413C()
{
  v2 = *v0;
  v3 = v0[1];
}

void sub_18E224160()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E224198(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 5);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_18E1CFA04((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_18E1CFA04(v8);
}

uint64_t sub_18E224264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xD8uLL);
  return sub_18E200C68();
}

uint64_t sub_18E2242E4(char a1)
{
  if (!a1)
  {
    return sub_18E221A10();
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000011;
}

unint64_t sub_18E224364()
{
  result = qword_1ED6A8570;
  if (!qword_1ED6A8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8570);
  }

  return result;
}

unint64_t sub_18E2243B8()
{
  result = qword_1ED6A7B30;
  if (!qword_1ED6A7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7B30);
  }

  return result;
}

_OWORD *sub_18E224478(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_18E224490()
{
  v2 = *(v1 + 8);
  result = *(v0 + 304);
  v4 = *(v0 + 312);
  return result;
}

void sub_18E2244DC()
{
  *(v1 - 96) = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
}

uint64_t sub_18E2244FC()
{

  return sub_18E44F20C();
}

uint64_t sub_18E22453C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = a5;
  *(v10 + 40) = a6;
  *(v10 + 48) = a7;
  *(v10 + 56) = 1;
  *(v10 + 64) = a8;
  *(v10 + 72) = v9;
  *(v10 + 80) = v8;
  return v10 + 81;
}

uint64_t sub_18E22459C()
{

  return sub_18E44E46C();
}

uint64_t sub_18E2245BC()
{
  result = v0;
  v3 = *(v1 - 328);
  return result;
}

uint64_t sub_18E2245EC()
{
  v2 = *(v0 + 64);

  return swift_dynamicCast();
}

void sub_18E224604(char a1)
{

  sub_18E26F1E0(a1, v1, 0);
}

unint64_t sub_18E22461C()
{
  result = qword_1ED6A9198;
  if (!qword_1ED6A9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9198);
  }

  return result;
}

ModelCatalog::RequestResourcesKey_optional __swiftcall RequestResourcesKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18E44F19C();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void *sub_18E2246CC()
{

  return memcpy((v0 + 880), ((v0 + 2440) | 7), 0xB9uLL);
}

uint64_t sub_18E2246EC()
{

  return swift_slowAlloc();
}

uint64_t sub_18E22472C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

unint64_t sub_18E22476C()
{
  result = qword_1ED6A82D0;
  if (!qword_1ED6A82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A82D0);
  }

  return result;
}

uint64_t sub_18E2247D8()
{

  return sub_18E44F2AC();
}

unint64_t sub_18E224800()
{
  result = qword_1EABE06D0;
  if (!qword_1EABE06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06D0);
  }

  return result;
}

unint64_t sub_18E224854()
{
  result = qword_1EABDF850;
  if (!qword_1EABDF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF850);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestResourcesKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t XPCServiceClientConnection.__deallocating_deinit()
{
  XPCServiceClientConnection.deinit();
  v0 = sub_18E1E1AE0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *CatalogClient.deinit()
{
  v1 = v0[2];

  sub_18E1C9934(v0 + 3);
  v2 = v0[8];

  return v0;
}

uint64_t CatalogIndex.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadURL;
  v4 = sub_18E44E54C();
  sub_18E1C4EEC(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = *(v0 + OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadedResources);

  v7 = *(v0 + OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadedResourceBundles);

  return v0;
}

uint64_t CatalogIndex.__deallocating_deinit()
{
  CatalogIndex.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_18E224A7C(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t CatalogClient.__deallocating_deinit()
{
  CatalogClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

id *sub_18E224BDC@<X0>(id *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    result = [*result invalidate];
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t SubscriptionManagerProvider.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_18E224C68()
{

  return sub_18E44F35C();
}

uint64_t sub_18E224C88()
{
  v2 = *(v0 - 144);

  return sub_18E44F22C();
}

uint64_t sub_18E224CC8()
{
  v1 = sub_18E1D4B84();
  v0(v1);
  sub_18E1D432C();

  return sub_18E44F4CC();
}

uint64_t sub_18E224D34()
{

  return swift_dynamicCast();
}

void *sub_18E224D5C()
{

  return memcpy((v0 + 488), (v0 + 920), 0xD8uLL);
}

uint64_t sub_18E224D78()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);
  v4 = *(v0 - 144);
  v5 = *(v0 - 88);

  return sub_18E44F31C();
}

void *sub_18E224DA8()
{

  return memcpy((v0 + 16), (v0 + 488), 0xD8uLL);
}

uint64_t sub_18E224DC4()
{
}

uint64_t sub_18E224DFC()
{

  return swift_allocObject();
}

uint64_t sub_18E224E4C(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 56) = 10000;
  *(v1 + 64) = 1;
  *(v1 + 65) = 0;
  return result;
}

uint64_t sub_18E224E88(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

void sub_18E224ED8()
{
  v2 = *(v0 - 424);
}

void sub_18E224EF4(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v10 = sub_18E1C2A94(a1, v8, a2, a3, a4, a5, a6, a7, v13, v14);
  memcpy(v10, v11, v12);
  sub_18E1DF210(a8);
}

void *sub_18E224F3C()
{

  return memcpy((v0 + 1344), (v0 + 1016), 0xD8uLL);
}

uint64_t sub_18E224F80()
{

  return sub_18E44F35C();
}

uint64_t sub_18E224FA0()
{
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = v1;
  *(v0 + 192) = 0;
  return v1;
}

uint64_t static Catalog.Resource.ImageMagicCleanUp.GenerativeEditsMagicCleanUp()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.ImageMagicCleanUp.GenerativeEditsMagicCleanUp(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

unint64_t sub_18E225350()
{
  result = qword_1ED6A8EF8;
  if (!qword_1ED6A8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8EF8);
  }

  return result;
}

void ManagedRuntimeInformation.encode(to:)()
{
  sub_18E1C62A0();
  v3 = v2;
  v4 = sub_18E2706EC(&unk_1EABE33B8, &qword_18E4B0F28);
  sub_18E1C4EAC(v4);
  v26 = v5;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C6BA8();
  v9 = *v0;
  v10 = v0[1];
  v11 = *(v0 + 16);
  v24 = v0[3];
  v25 = v0[4];
  v35 = *(v0 + 40);
  v23 = v0[6];
  v22 = v0[7];
  v12 = *(v0 + 5);
  v32 = *(v0 + 4);
  v33 = v12;
  v34 = *(v0 + 96);
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  v15 = sub_18E1D5F00();
  sub_18E1DD34C(v15, v16);
  sub_18E1EA24C();

  sub_18E1E6748();
  sub_18E44F4EC();
  *&v29 = v9;
  *(&v29 + 1) = v10;
  LOBYTE(v30) = v11;
  LOBYTE(v27[0]) = 0;
  sub_18E228910();
  sub_18E216A40();
  sub_18E44F35C();

  if (v1)
  {
    v17 = sub_18E1E37E4();
    v18(v17);
  }

  else
  {
    LOBYTE(v27[0]) = 1;

    sub_18E216A40();
    sub_18E1E696C();
    sub_18E44F2FC();

    sub_18E1DD5A0();
    sub_18E1E696C();
    sub_18E44F2BC();
    v29 = v32;
    v30 = v33;
    v31 = v34;
    sub_18E23346C();
    sub_18E327BB0(&v32, v27);
    sub_18E232D2C();
    sub_18E1E696C();
    sub_18E44F35C();
    v27[0] = v29;
    v27[1] = v30;
    LOBYTE(v28) = v31;
    sub_18E292124(v27);
    v19 = *(v26 + 8);
    v20 = sub_18E1E11B4();
    v21(v20);
  }

  sub_18E1CEAC4();
  sub_18E1C6650();
}

void AssetBackedImageMagicCleanUpBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1C826C();
  sub_18E1DD340();
  memcpy(v4, v5, v6);
  sub_18E1DD340();
  memcpy(v7, v8, v9);
  sub_18E1D5FB4();
  v13 = sub_18E233268(v10, v11, v12);
  if (v1)
  {

    sub_18E1FE044(v141);
  }

  else
  {
    sub_18E223A20(v13, v14, v15, v16, v17, v18, v19, v20, v37, v40, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141[0]);
    sub_18E1C973C();
    v29 = sub_18E1D5E70(v21, v22, v23, v24, v25, v26, v27, v28, v38, v41, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v141[0]);
    sub_18E1D4410(v29, v30, v31, v32, v33, v34, v35, v36, v39, v42);
    *(v3 + 200) = v2;
    *(v3 + 208) = v0;
  }

  sub_18E1CFAAC();
  sub_18E1CD624();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationStorytellerV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStorytellerV2()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStorytellerV2()();
  sub_18E1C7F10();
  sub_18E1E67A0(71);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.Planner()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.Planner()();
  static Catalog.Resource.LLM.DraftModel.Planner()();
  sub_18E1C7F10();
  sub_18E1E67A0(48);
}

uint64_t static Catalog.Resource.LLM.Adapter.Planner()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.Planner(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235538();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.PlannerV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PlannerV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.PlannerV3()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PlannerV3(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV7()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PlannerV7()();
  static Catalog.Resource.LLM.DraftModel.PlannerV7()();
  sub_18E1C7F10();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.Adapter.PlannerV8()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PlannerV8(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.PlannerV9()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PlannerV9(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.PlannerV9()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PlannerV9(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ServerProfessionalTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerProfessionalTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E207B38();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}