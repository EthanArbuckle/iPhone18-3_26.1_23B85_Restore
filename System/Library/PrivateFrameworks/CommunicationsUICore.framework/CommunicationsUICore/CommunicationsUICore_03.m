uint64_t sub_1C2F3992C()
{
  sub_1C2F7688C();
  *(v0 + 16) = sub_1C2F7687C();
  v2 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F399C0, v2, v1);
}

uint64_t sub_1C2F399C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_1C2F39A28(unint64_t a1)
{
  v41 = sub_1C2F75C8C();
  v39 = *(v41 - 8);
  v2 = v39[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEBC620 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v4 = sub_1C2F761FC();
    __swift_project_value_buffer(v4, qword_1EDEBC628);
    v5 = sub_1C2F761DC();
    v6 = sub_1C2F769EC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C2EF2000, v5, v6, "Update language model status", v7, 2u);
      MEMORY[0x1C6929E80](v7, -1, -1);
    }

    v8 = MEMORY[0x1E69E7CC0];
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        break;
      }

      goto LABEL_9;
    }

    v10 = sub_1C2F76BBC();
    if (!v10)
    {
      break;
    }

LABEL_9:
    v43[0] = v8;

    sub_1C2F76D0C();
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    a1 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6929250](a1, v9);
        goto LABEL_12;
      }

      if ((a1 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (a1 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v11 = *(v9 + 8 * a1 + 32);
LABEL_12:
      v12 = v11;
      ++a1;
      sub_1C2F3B454(v11);

      sub_1C2F76CEC();
      v13 = *(v43[0] + 16);
      sub_1C2F76D1C();
      sub_1C2F76D2C();
      sub_1C2F76CFC();
      if (v10 == a1)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

LABEL_23:

  v43[0] = sub_1C2F3ED30(v14, sub_1C2F3EF80);
  a1 = 0;
  sub_1C2F3DA48(v43);

  v15 = v42;
  sub_1C2F381DC(v43[0]);
  v16 = *(v15 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_suggestedLocales);
  v44 = v8;
  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_34;
  }

  v18 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap;
  v38 = v39[2];
  v39 += 2;
  v19 = v16 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
  v20 = v39[7];
  v36 = 0;
  v37 = v20;
  v21 = (v39 - 1);

  while (2)
  {
    v38(v40, v19, v41);
    v22 = sub_1C2F75B0C();
    v24 = v23;
    v25 = v42;
    swift_beginAccess();
    v26 = *(v25 + v18);
    if (!*(v26 + 16))
    {

LABEL_26:
      swift_endAccess();
      (*v21)(v40, v41);
      goto LABEL_27;
    }

    v27 = sub_1C2EFAEC0(v22, v24);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      goto LABEL_26;
    }

    v30 = *(*(v26 + 56) + 8 * v27);
    swift_endAccess();
    v31 = *v21;

    v32 = (v31)(v40, v41);
    MEMORY[0x1C6928DA0](v32);
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v33 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C2F7680C();
    }

    sub_1C2F7682C();
LABEL_27:
    v19 += v37;
    if (--v17)
    {
      continue;
    }

    break;
  }

  a1 = v36;
LABEL_34:

  v43[0] = sub_1C2F3ED30(v34, sub_1C2F3EF80);
  sub_1C2F3DA48(v43);
  if (!a1)
  {

    return sub_1C2F38330(v43[0]);
  }

LABEL_37:

  __break(1u);
  return result;
}

uint64_t LanguageSelectionViewModel.initialTranslateToModel.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - v7;
  v9 = sub_1C2F75C8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v68 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v60 - v16;
  v18 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentTranslateTo;
  swift_beginAccess();
  sub_1C2EF6A3C(v1 + v18, v8, &unk_1EC076A90, &qword_1C2F78FF0);
  v19 = *(v10 + 48);
  v20 = v19(v8, 1, v9);
  v69 = v10;
  if (v20 == 1)
  {
    sub_1C2F0A8D8(v8, &unk_1EC076A90, &qword_1C2F78FF0);
  }

  else
  {
    (*(v10 + 32))(v17, v8, v9);
    v21 = sub_1C2F75B0C();
    v23 = v22;
    v24 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap;
    swift_beginAccess();
    v25 = *(v1 + v24);
    if (*(v25 + 16))
    {
      v26 = sub_1C2EFAEC0(v21, v23);
      v28 = v27;

      if (v28)
      {
        v29 = *(*(v25 + 56) + 8 * v26);
        swift_endAccess();
        v30 = *(v69 + 8);

        v31 = v17;
LABEL_43:
        v30(v31, v9);
        return v29;
      }
    }

    else
    {
    }

    swift_endAccess();
    v10 = v69;
    (*(v69 + 8))(v17, v9);
  }

  sub_1C2EF6A3C(v1 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentTranslateToLocale, v6, &unk_1EC076A90, &qword_1C2F78FF0);
  if (v19(v6, 1, v9) == 1)
  {
    sub_1C2F0A8D8(v6, &unk_1EC076A90, &qword_1C2F78FF0);
  }

  else
  {
    (*(v10 + 32))(v68, v6, v9);
    v32 = sub_1C2F75B0C();
    v34 = v33;
    v35 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap;
    swift_beginAccess();
    v36 = *(v1 + v35);
    if (*(v36 + 16))
    {
      v37 = sub_1C2EFAEC0(v32, v34);
      v39 = v38;

      if (v39)
      {
        v29 = *(*(v36 + 56) + 8 * v37);
        swift_endAccess();
        v40 = *(v10 + 8);

        v40(v68, v9);
        return v29;
      }
    }

    else
    {
    }

    swift_endAccess();
    (*(v10 + 8))(v68, v9);
  }

  swift_getKeyPath();
  v41 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel___observationRegistrar;
  v71 = v1;
  v67 = sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel);
  v68 = v41;
  sub_1C2F75DAC();

  v42 = *(v1 + 16);
  v61 = v9;
  if (v42 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C2F76BBC())
  {

    if (i)
    {
      v44 = 0;
      do
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1C6929250](v44, v42);
          v45 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
LABEL_27:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_45;
          }

          v29 = *(v42 + 8 * v44 + 32);

          v45 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_27;
          }
        }

        swift_getKeyPath();
        v71 = v29;
        sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
        sub_1C2F75DAC();

        if (*(v29 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel))
        {
          goto LABEL_42;
        }

        ++v44;
      }

      while (v45 != i);
    }

    v66 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_preferredLanguages);
    v9 = v61;
    v62 = *(v66 + 16);
    if (!v62)
    {
      break;
    }

    v46 = 0;
    v42 = 0;
    v47 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap;
    v48 = v70;
    v64 = v66 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v63 = v69 + 16;
    v65 = (v69 + 8);
    while (v46 < *(v66 + 16))
    {
      (*(v69 + 16))(v70, v64 + *(v69 + 72) * v46, v9);
      v49 = sub_1C2F75B0C();
      v51 = v50;
      swift_beginAccess();
      v52 = *(v1 + v47);
      if (*(v52 + 16))
      {
        v53 = sub_1C2EFAEC0(v49, v51);
        v55 = v54;

        if (v55)
        {
          v29 = *(*(v52 + 56) + 8 * v53);
          swift_endAccess();
          v30 = *v65;

          v31 = v70;
          goto LABEL_43;
        }
      }

      else
      {
      }

      swift_endAccess();
      swift_getKeyPath();
      v71 = v1;
      sub_1C2F75DAC();

      v57 = *(v1 + 16);
      MEMORY[0x1EEE9AC00](v56);
      *(&v60 - 2) = v48;

      v29 = sub_1C2F37D18(sub_1C2F3F7C4, (&v60 - 4), v57);

      (*v65)(v48, v9);
      if (v29)
      {
        return v29;
      }

      if (v62 == ++v46)
      {
        goto LABEL_37;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

LABEL_37:
  swift_getKeyPath();
  v71 = v1;
  sub_1C2F75DAC();

  v58 = *(v1 + 16);
  if (!(v58 >> 62))
  {
    result = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_39;
    }

    return 0;
  }

  result = sub_1C2F76BBC();
  if (!result)
  {
    return 0;
  }

LABEL_39:
  if ((v58 & 0xC000000000000001) != 0)
  {

    v29 = MEMORY[0x1C6929250](0, v58);
LABEL_42:

    return v29;
  }

  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v58 + 32);

    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F3A738(void *a1)
{
  v2 = sub_1C2F75C6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = *a1 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;
  sub_1C2F75C7C();
  v11 = sub_1C2F75C2C();
  v13 = v12;
  v14 = *(v3 + 8);
  v14(v9, v2);
  sub_1C2F75C7C();
  v15 = sub_1C2F75C2C();
  v17 = v16;
  v14(v7, v2);
  if (v11 == v15 && v13 == v17)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1C2F76EFC();
  }

  return v19 & 1;
}

Swift::Void __swiftcall LanguageSelectionViewModel.downloadModels(_:useCellular:)(Swift::OpaquePointer _, Swift::Bool useCellular)
{
  v46 = useCellular;
  v4 = sub_1C2F75C8C();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - v8;
  v54 = MEMORY[0x1E69E7CC0];
  if (_._rawValue >> 62)
  {
LABEL_43:
    v10 = sub_1C2F76BBC();
  }

  else
  {
    v10 = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  v45 = v9;
  if (v10)
  {
    v12 = 0;
    v48 = _._rawValue & 0xFFFFFFFFFFFFFF8;
    v49 = (_._rawValue & 0xC000000000000001);
    v47 = v10;
    while (1)
    {
      if (v49)
      {
        v9 = MEMORY[0x1C6929250](v12, _._rawValue);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v12 >= *(v48 + 16))
        {
          __break(1u);
          goto LABEL_43;
        }

        v9 = *(_._rawValue + v12 + 4);

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v17 = v54;
          v11 = MEMORY[0x1E69E7CC0];
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_44;
        }
      }

      swift_getKeyPath();
      v2 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel___observationRegistrar;
      v53 = v9;
      sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
      sub_1C2F75DAC();

      v15 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state;
      if (*&v9[OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state] == 2)
      {

        v13 = v47;
      }

      else
      {
        swift_getKeyPath();
        v53 = v9;
        sub_1C2F75DAC();

        if (*&v9[v15] == 1)
        {
        }

        else
        {
          sub_1C2F76CEC();
          v16 = *(v54 + 16);
          sub_1C2F76D1C();
          sub_1C2F76D2C();
          sub_1C2F76CFC();
        }

        v13 = v47;
      }

      ++v12;
      if (v14 == v13)
      {
        goto LABEL_18;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_21:
  if ((v17 & 0x4000000000000000) == 0)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      goto LABEL_23;
    }

LABEL_45:

    v2 = MEMORY[0x1E69E7CC0];
    _._rawValue = *(MEMORY[0x1E69E7CC0] + 16);
    if (!_._rawValue)
    {
      goto LABEL_46;
    }

    goto LABEL_32;
  }

LABEL_44:
  v18 = sub_1C2F76BBC();
  if (!v18)
  {
    goto LABEL_45;
  }

LABEL_23:
  v54 = v11;
  sub_1C2EF671C(0, v18 & ~(v18 >> 63), 0);
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  v19 = 0;
  v2 = v54;
  v20 = (v51 + 16);
  v21 = v45;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1C6929250](v19, v17);
      (*v20)(v21, v22 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale, v52);
      swift_unknownObjectRelease();
    }

    else
    {
      (*v20)(v21, *(v17 + 8 * v19 + 32) + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale, v52);
    }

    v54 = v2;
    v24 = *(v2 + 16);
    v23 = *(v2 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_1C2EF671C(v23 > 1, v24 + 1, 1);
      v21 = v45;
      v2 = v54;
    }

    ++v19;
    *(v2 + 16) = v24 + 1;
    (*(v51 + 32))(v2 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v24, v21, v52);
  }

  while (v18 != v19);

  _._rawValue = *(v2 + 16);
  if (_._rawValue)
  {
LABEL_32:
    if (qword_1EDEBC620 == -1)
    {
LABEL_33:
      v25 = sub_1C2F761FC();
      __swift_project_value_buffer(v25, qword_1EDEBC628);

      v26 = sub_1C2F761DC();
      v27 = sub_1C2F769EC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v54 = v29;
        *v28 = 136315394;
        v30 = MEMORY[0x1C6928DD0](v2, v52);
        v32 = sub_1C2EFAB28(v30, v31, &v54);

        *(v28 + 4) = v32;
        *(v28 + 12) = 1024;
        *(v28 + 14) = v46;
        _os_log_impl(&dword_1C2EF2000, v26, v27, "Request download assets for %s useCellular: %{BOOL}d", v28, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x1C6929E80](v29, -1, -1);
        MEMORY[0x1C6929E80](v28, -1, -1);
      }

      v54 = MEMORY[0x1E69E7CC0];
      sub_1C2F08754(0, _._rawValue, 0);
      v33 = v54;
      v34 = *(v51 + 16);
      v35 = v2 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v48 = *(v51 + 72);
      v49 = v34;
      v51 += 16;
      v36 = (v51 - 8);
      do
      {
        v37 = v50;
        v38 = v52;
        v49(v50, v35, v52);
        v39 = sub_1C2F75B0C();
        v41 = v40;
        (*v36)(v37, v38);
        v54 = v33;
        v43 = *(v33 + 16);
        v42 = *(v33 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1C2F08754((v42 > 1), v43 + 1, 1);
          v33 = v54;
        }

        *(v33 + 16) = v43 + 1;
        v44 = v33 + 16 * v43;
        *(v44 + 32) = v39;
        *(v44 + 40) = v41;
        v35 += v48;
        --_._rawValue;
      }

      while (_._rawValue);

      if (qword_1EC075C98 != -1)
      {
        swift_once();
      }

      sub_1C2F55744(v33, v46, nullsub_1, 0);
      goto LABEL_46;
    }

LABEL_48:
    swift_once();
    goto LABEL_33;
  }

LABEL_46:
}

uint64_t sub_1C2F3B020@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1C2EF6A3C(v2 + v4, a2, &unk_1EC076A90, &qword_1C2F78FF0);
}

uint64_t sub_1C2F3B090(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1C2F3F7E4(a1, v2 + v4);
  return swift_endAccess();
}

Swift::Void __swiftcall LanguageSelectionViewModel.updateSuggestedLanguages(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_1C2F75C8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_suggestedLocales;
  v10 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_suggestedLocales);

  v12 = sub_1C2F1FD2C(v11, a1._rawValue);

  if (v12)
  {
    return;
  }

  v13 = *(v2 + v9);
  *(v2 + v9) = a1;

  v14 = *(v2 + v9);
  v42 = MEMORY[0x1E69E7CC0];
  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_13;
  }

  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v38 = v17;
  v39 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap;
  v18 = v14 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v19 = *(v16 + 56);
  v40 = v16;
  v36 = (v16 - 8);
  v37 = v19;
  v35[1] = v14;

  do
  {
    v20 = v4;
    v38(v8, v18, v4);
    v21 = sub_1C2F75B0C();
    v23 = v22;
    v24 = v39;
    swift_beginAccess();
    v25 = v2;
    v26 = *(v2 + v24);
    if (!*(v26 + 16))
    {

LABEL_5:
      swift_endAccess();
      v4 = v20;
      (*v36)(v8, v20);
      goto LABEL_6;
    }

    v27 = sub_1C2EFAEC0(v21, v23);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      goto LABEL_5;
    }

    v30 = *(*(v26 + 56) + 8 * v27);
    swift_endAccess();
    v31 = *v36;

    v4 = v20;
    v32 = (v31)(v8, v20);
    MEMORY[0x1C6928DA0](v32);
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v33 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C2F7680C();
    }

    sub_1C2F7682C();
LABEL_6:
    v2 = v25;
    v18 += v37;
    --v15;
  }

  while (v15);

LABEL_13:

  v41[0] = sub_1C2F3ED30(v34, sub_1C2F3EF80);
  sub_1C2F3DA48(v41);

  sub_1C2F38330(v41[0]);
}

uint64_t sub_1C2F3B454(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v90 - v6;
  v8 = sub_1C2F75C8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v95 = &v90 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v90 - v16;
  v18 = [a1 locale];
  sub_1C2F75B9C();

  v19 = sub_1C2F75B0C();
  v21 = v20;
  v22 = *(v9 + 8);
  v99 = v9 + 8;
  v100 = v8;
  v98 = v22;
  v22(v17, v8);
  v23 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap;
  v97 = 0;
  swift_beginAccess();
  v94 = v23;
  v96 = v2;
  v24 = *(v2 + v23);
  if (*(v24 + 16))
  {
    v25 = sub_1C2EFAEC0(v19, v21);
    v27 = v26;

    if (v27)
    {
      v28 = *(*(v24 + 56) + 8 * v25);
      swift_endAccess();

      v29 = v100;
      v30 = &selRef_objectForKey_;
      goto LABEL_6;
    }
  }

  else
  {
  }

  swift_endAccess();
  v30 = &selRef_objectForKey_;
  v31 = [a1 locale];
  v32 = v95;
  sub_1C2F75B9C();

  v33 = type metadata accessor for LanguageSelectionDownloadModel(0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v28 = swift_allocObject();
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress) = 0;
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__downloadSize) = 0;
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state) = 0;
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel) = 0;
  sub_1C2F75DDC();
  v29 = v100;
  (*(v9 + 32))(v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale, v32, v100);
LABEL_6:
  v36 = v30[128];
  v93 = a1;
  v37 = [a1 v36];
  sub_1C2F75B9C();

  v38 = sub_1C2F75B0C();
  v40 = v39;
  v41 = v98;
  v98(v13, v29);
  sub_1C2EF6A3C(v96 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_defaultTranslateToLocale, v7, &unk_1EC076A90, &qword_1C2F78FF0);
  if ((*(v9 + 48))(v7, 1, v29) == 1)
  {
    sub_1C2F0A8D8(v7, &unk_1EC076A90, &qword_1C2F78FF0);

    v42 = 0;
    v43 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel);
    v44 = v93;
    v45 = (&FTMenuItem + 48);
    p_ivars = &FTMenuItem.ivars;
    if (*(v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel))
    {
LABEL_8:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v90 - 2) = v28;
      *(&v90 - 8) = v42 & 1;
      v48 = p_ivars[285];
      v102 = v28;
      sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
      v49 = v97;
      sub_1C2F75D9C();

      goto LABEL_15;
    }
  }

  else
  {
    v50 = sub_1C2F75B0C();
    v52 = v51;
    v41(v7, v29);
    if (v38 == v50 && v40 == v52)
    {

      v43 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel);
      v42 = 1;
      v44 = v93;
      v45 = (&FTMenuItem + 48);
      p_ivars = (&FTMenuItem + 48);
      if ((*(v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v42 = sub_1C2F76EFC();

      v43 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel);
      v44 = v93;
      v45 = &FTMenuItem.ivars;
      p_ivars = &FTMenuItem.ivars;
      if ((v42 & 1) != *(v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel))
      {
        goto LABEL_8;
      }
    }
  }

  *v43 = v42 & 1;
  v49 = v97;
LABEL_15:
  swift_getKeyPath();
  v53 = p_ivars[285];
  v102 = v28;
  v54 = sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  v55 = v45[284];
  v56 = *(v55 + v28);
  if (v56 != [v44 status])
  {
    v93 = v54;
    v97 = v49;
    if (qword_1EDEBC620 != -1)
    {
      swift_once();
    }

    v57 = sub_1C2F761FC();
    __swift_project_value_buffer(v57, qword_1EDEBC628);
    v58 = v44;
    v59 = sub_1C2F761DC();
    v60 = sub_1C2F769EC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v92 = v53;
      v62 = v61;
      v91 = swift_slowAlloc();
      v102 = v91;
      *v62 = 136315394;
      v63 = [v58 locale];
      v64 = v95;
      sub_1C2F75B9C();

      v65 = sub_1C2F75B0C();
      v67 = v66;
      v98(v64, v100);
      v68 = sub_1C2EFAB28(v65, v67, &v102);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2048;
      v69 = [v58 status];

      *(v62 + 14) = v69;
      _os_log_impl(&dword_1C2EF2000, v59, v60, "Update language model status for %s to %ld", v62, 0x16u);
      v70 = v91;
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x1C6929E80](v70, -1, -1);
      MEMORY[0x1C6929E80](v62, -1, -1);
    }

    else
    {
    }
  }

  v71 = [v44 status];
  if (*(v55 + v28) != v71)
  {
    v72 = v71;
    v73 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v73);
    *(&v90 - 2) = v28;
    *(&v90 - 1) = v72;
    v102 = v28;
    sub_1C2F75D9C();
  }

  v74 = v96;
  [v44 progress];
  v76 = v75;
  if (*(v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress) == v75)
  {
    *(v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress) = v75;
  }

  else
  {
    v77 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v77);
    *(&v90 - 2) = v28;
    *(&v90 - 1) = v76;
    v102 = v28;
    sub_1C2F75D9C();
  }

  v78 = [v44 downloadSize];
  if (*(v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__downloadSize) != v78)
  {
    v79 = v78;
    v80 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v80);
    *(&v90 - 2) = v28;
    *(&v90 - 1) = v79;
    v102 = v28;
    sub_1C2F75D9C();
  }

  v81 = [v44 locale];
  v82 = v95;
  sub_1C2F75B9C();

  v83 = sub_1C2F75B0C();
  v85 = v84;
  v98(v82, v100);
  v86 = v94;
  swift_beginAccess();

  v87 = *(v74 + v86);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v101 = *(v74 + v86);
  *(v74 + v86) = 0x8000000000000000;
  sub_1C2F6A400(v28, v83, v85, isUniquelyReferenced_nonNull_native);

  *(v74 + v86) = v101;
  swift_endAccess();
  return v28;
}

uint64_t sub_1C2F3BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[13] = sub_1C2F7688C();
  v5[14] = sub_1C2F7687C();
  v7 = sub_1C2F7684C();
  v5[15] = v7;
  v5[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C2F3BF44, v7, v6);
}

uint64_t sub_1C2F3BF44()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v1[3];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1C2F7695C();

  swift_beginAccess();
  v8 = v0[13];
  v9 = sub_1C2F7687C();
  v0[17] = v9;
  v10 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v11 = *(MEMORY[0x1E69E85B0] + 4);
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_1C2F3C128;
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 10, v9, v13);
}

uint64_t sub_1C2F3C128()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[17];

    v6 = v2[15];
    v7 = v2[16];

    return MEMORY[0x1EEE6DFA0](sub_1C2F3C23C, v6, v7);
  }

  return result;
}

uint64_t sub_1C2F3C23C()
{
  v1 = v0[10];
  if (v1 == 1)
  {
    v2 = v0[14];

LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v11 = v0[1];

    return v11();
  }

  v3 = v0[12];
  if (!swift_weakLoadStrong())
  {
    v10 = v0[14];

    sub_1C2F401C4(v1);
    goto LABEL_8;
  }

  sub_1C2F39A28(v1);

  sub_1C2F401C4(v1);
  v4 = v0[13];
  v5 = sub_1C2F7687C();
  v0[17] = v5;
  v6 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v7 = *(MEMORY[0x1E69E85B0] + 4);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_1C2F3C128;
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 10, v5, v9);
}

double sub_1C2F3C3BC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  result = *(v3 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress);
  *a2 = result;
  return result;
}

double sub_1C2F3C494()
{
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  return *(v0 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress);
}

void sub_1C2F3C53C(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress) == a1)
  {
    *(v1 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F3C65C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  *a2 = *(v3 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__downloadSize);
  return result;
}

uint64_t sub_1C2F3C770@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  *a2 = *(v3 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state);
  return result;
}

uint64_t sub_1C2F3C85C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  return *(v2 + *a2);
}

uint64_t sub_1C2F3C924(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t sub_1C2F3CA1C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t sub_1C2F3CB34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = sub_1C2F75C6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v17 = sub_1C2F75B3C();
  v34 = *(v17 - 8);
  v18 = v34[8];
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - v21;
  if (a1)
  {
    v31 = v20;
    v32 = v6;
    v33 = v10;
    sub_1C2F75C8C();
    sub_1C2F3F75C(&qword_1EC076610, MEMORY[0x1E6969770]);

    if (sub_1C2F7662C())
    {

      v23 = 1;
    }

    else
    {
      sub_1C2F75C7C();
      sub_1C2F75C0C();
      v35 = *(v33 + 8);
      v35(v16, v9);
      v24 = v34;
      v33 = v34[6];
      if ((v33)(v8, 1, v17) != 1)
      {
        v29 = v24[4];
        v30 = v24 + 4;
        v29(v22, v8, v17);
        sub_1C2F75C7C();
        v8 = v32;
        sub_1C2F75C0C();
        v35(v14, v9);
        if ((v33)(v8, 1, v17) != 1)
        {
          v25 = v31;
          v29(v31, v8, v17);
          v23 = MEMORY[0x1C6928100](v22, v25);

          v26 = v34[1];
          v26(v25, v17);
          v26(v22, v17);
          return v23 & 1;
        }

        (v34[1])(v22, v17);
      }

      sub_1C2F0A8D8(v8, &unk_1EC076030, qword_1C2F7C380);
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1C2F3CF4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  *a2 = *(v3 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel);
  return result;
}

uint64_t sub_1C2F3D024()
{
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  return *(v0 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel);
}

uint64_t sub_1C2F3D0D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;
  v4 = sub_1C2F75C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C2F3D148()
{
  sub_1C2F75C8C();
  sub_1C2F3F75C(&qword_1EC076B30, MEMORY[0x1E6969770]);
  return sub_1C2F7661C();
}

uint64_t LanguageSelectionDownloadModel.deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;
  v2 = sub_1C2F75C8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel___observationRegistrar;
  v4 = sub_1C2F75DEC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LanguageSelectionDownloadModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;
  v2 = sub_1C2F75C8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel___observationRegistrar;
  v4 = sub_1C2F75DEC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F3D35C()
{
  sub_1C2F76F9C();
  sub_1C2F75C8C();
  sub_1C2F3F75C(&qword_1EC076B30, MEMORY[0x1E6969770]);
  sub_1C2F7661C();
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F3D3F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;
  v5 = sub_1C2F75C8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C2F3D474()
{
  v1 = *v0;
  sub_1C2F76F9C();
  sub_1C2F75C8C();
  sub_1C2F3F75C(&qword_1EC076B30, MEMORY[0x1E6969770]);
  sub_1C2F7661C();
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F3D514()
{
  v1 = *v0;
  sub_1C2F75C8C();
  sub_1C2F3F75C(&qword_1EC076B30, MEMORY[0x1E6969770]);
  return sub_1C2F7661C();
}

uint64_t sub_1C2F3D59C()
{
  sub_1C2F76F9C();
  v1 = *v0;
  sub_1C2F75C8C();
  sub_1C2F3F75C(&qword_1EC076B30, MEMORY[0x1E6969770]);
  sub_1C2F7661C();
  return sub_1C2F76FDC();
}

void sub_1C2F3D638(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  JUMPOUT(0x1C6928160);
}

uint64_t sub_1C2F3D654()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EDEBC628);
  __swift_project_value_buffer(v0, qword_1EDEBC628);
  return sub_1C2F761EC();
}

uint64_t sub_1C2F3D6D4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_1C2EF5A14(0, &qword_1EDEBC4F8, 0x1E6982C10);
    v2 = sub_1C2F767EC();
  }

  v4(v2);
}

void *sub_1C2F3D75C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076AF8, &qword_1C2F7D770);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1C2F3D7E4(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B18, &qword_1C2F7B978) - 8) + 80);

  return sub_1C2F38F60(a1);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C2F3D888(unsigned int a1)
{
  v3 = MEMORY[0x1C6929560](*(v1 + 40), a1, 4);

  return sub_1C2F3D914(a1, v3);
}

unint64_t sub_1C2F3D8D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C2F76BFC();

  return sub_1C2F3D980(a1, v5);
}

unint64_t sub_1C2F3D914(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C2F3D980(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C2F401E4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C69291E0](v9, a1);
      sub_1C2F265AC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C2F3DA48(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C2F5C3F0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C2F3DAC4(v6);
  return sub_1C2F76CFC();
}

uint64_t sub_1C2F3DAC4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C2F76ECC();
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
        type metadata accessor for LanguageSelectionDownloadModel(0);
        v6 = sub_1C2F7681C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1C2F3DE88(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1C2F3DBC8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C2F3DBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = sub_1C2F75C8C();
  v8 = *(*(v40 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v40);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v49 = *a4;
    v14 = (v49 + 8 * a3 - 8);
    v15 = a1 - a3;
LABEL_5:
    v38 = v14;
    v39 = a3;
    v16 = *(v49 + 8 * a3);
    v37 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;

      sub_1C2F75BFC();
      v20 = _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(v16 + v19, v12);
      if (v21)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }

      v23 = 0xE000000000000000;
      if (v21)
      {
        v23 = v21;
      }

      v47 = v22;
      v48 = v23;
      v24 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(v16 + v19, v12);
      if (v25)
      {
        v45 = 32;
        v46 = 0xE100000000000000;
        MEMORY[0x1C6928D30](v24);

        MEMORY[0x1C6928D30](v45, v46);
      }

      v26 = _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(v18 + v19, v12);
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0xE000000000000000;
      }

      if (v27)
      {
        v29 = v26;
      }

      else
      {
        v29 = 0;
      }

      v45 = v29;
      v46 = v28;
      v30 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(v18 + v19, v12);
      if (v31)
      {
        v43 = 32;
        v44 = 0xE100000000000000;
        MEMORY[0x1C6928D30](v30);

        MEMORY[0x1C6928D30](v43, v44);

        v29 = v45;
        v28 = v46;
      }

      v43 = v47;
      v44 = v48;
      v41 = v29;
      v42 = v28;
      sub_1C2EF66C8();
      v32 = sub_1C2F76B0C();

      (*v13)(v12, v40);

      if (v32 != -1)
      {
LABEL_4:
        a3 = v39 + 1;
        v14 = v38 + 1;
        v15 = v37 - 1;
        if (v39 + 1 == v36)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v33 = *v14;
      v16 = v14[1];
      *v14 = v16;
      v14[1] = v33;
      --v14;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C2F3DE88(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v5 = v4;
  v132 = a1;
  v142 = sub_1C2F75C8C();
  v8 = *(*(v142 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v142);
  v11 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v140 = &v128 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v130 = &v128 - v16;
  v17 = a3[1];
  v133 = a3;
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_118:
    v20 = *v132;
    if (!*v132)
    {
      goto LABEL_156;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_150:
      result = sub_1C2F59928(v19);
      v19 = result;
    }

    v151 = v19;
    v123 = *(v19 + 2);
    if (v123 >= 2)
    {
      while (1)
      {
        v124 = *a3;
        if (!*a3)
        {
          goto LABEL_154;
        }

        a3 = (v123 - 1);
        v125 = *&v19[16 * v123];
        v126 = *&v19[16 * v123 + 24];
        sub_1C2F3E858((v124 + 8 * v125), (v124 + 8 * *&v19[16 * v123 + 16]), (v124 + 8 * v126), v20);
        if (v5)
        {
        }

        if (v126 < v125)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1C2F59928(v19);
        }

        if (v123 - 2 >= *(v19 + 2))
        {
          goto LABEL_144;
        }

        v127 = &v19[16 * v123];
        *v127 = v125;
        *(v127 + 1) = v126;
        v151 = v19;
        result = sub_1C2F5989C(v123 - 1);
        v19 = v151;
        v123 = *(v151 + 2);
        a3 = v133;
        if (v123 <= 1)
        {
        }
      }
    }
  }

  v129 = a4;
  v18 = 0;
  v141 = (v15 + 8);
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v20 = v18 + 1;
    v138 = v19;
    v134 = v18;
    if (v18 + 1 < v17)
    {
      v137 = v17;
      v131 = v5;
      v21 = *a3;
      v22 = *(*a3 + 8 * v20);
      v135 = 8 * v18;
      v23 = (v21 + 8 * v18);
      v25 = *v23;
      v24 = v23 + 2;
      v26 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;

      v27 = v130;
      sub_1C2F75BFC();
      LODWORD(v139) = sub_1C2F30670(v22 + v26, v25 + v26, v27);
      v136 = *v141;
      v136(v27, v142);

      v28 = (v18 + 2);
      while (1)
      {
        v20 = v137;
        if (v137 == v28)
        {
          break;
        }

        v30 = *(v24 - 1);
        v31 = *v24;
        v32 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;

        v33 = v140;
        sub_1C2F75BFC();
        v34 = _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(v31 + v32, v33);
        if (v35)
        {
          v36 = v34;
        }

        else
        {
          v36 = 0;
        }

        v37 = 0xE000000000000000;
        if (v35)
        {
          v37 = v35;
        }

        v149 = v36;
        v150 = v37;
        v38 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(v31 + v32, v33);
        if (v39)
        {
          v147 = 32;
          v148 = 0xE100000000000000;
          MEMORY[0x1C6928D30](v38);

          MEMORY[0x1C6928D30](v147, v148);
        }

        v40 = v140;
        v41 = _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(v30 + v32, v140);
        if (v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0xE000000000000000;
        }

        if (v42)
        {
          v44 = v41;
        }

        else
        {
          v44 = 0;
        }

        v147 = v44;
        v148 = v43;
        v45 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(v30 + v32, v40);
        if (v46)
        {
          v145 = 32;
          v146 = 0xE100000000000000;
          MEMORY[0x1C6928D30](v45);

          MEMORY[0x1C6928D30](v145, v146);

          v44 = v147;
          v43 = v148;
        }

        v145 = v149;
        v146 = v150;
        v143 = v44;
        v144 = v43;
        sub_1C2EF66C8();
        v29 = sub_1C2F76B0C();

        v136(v140, v142);

        v28 = (v28 + 1);
        ++v24;
        v19 = v138;
        if (((v139 ^ (v29 != -1)) & 1) == 0)
        {
          v20 = v28 - 1;
          break;
        }
      }

      v5 = v131;
      a3 = v133;
      v47 = v135;
      if (v139)
      {
        v48 = v134;
        if (v20 < v134)
        {
          goto LABEL_147;
        }

        if (v134 < v20)
        {
          v49 = 8 * v20 - 8;
          v50 = v20;
          do
          {
            if (v48 != --v50)
            {
              v52 = *a3;
              if (!*a3)
              {
                goto LABEL_153;
              }

              v51 = *(v52 + v47);
              *(v52 + v47) = *(v52 + v49);
              *(v52 + v49) = v51;
            }

            ++v48;
            v49 -= 8;
            v47 += 8;
          }

          while (v48 < v50);
        }
      }
    }

    v53 = a3[1];
    if (v20 >= v53)
    {
      goto LABEL_66;
    }

    if (__OFSUB__(v20, v134))
    {
      goto LABEL_146;
    }

    if (v20 - v134 >= v129)
    {
LABEL_66:
      v55 = v134;
      goto LABEL_67;
    }

    if (__OFADD__(v134, v129))
    {
      goto LABEL_148;
    }

    if (v134 + v129 >= v53)
    {
      v54 = a3[1];
    }

    else
    {
      v54 = v134 + v129;
    }

    if (v54 < v134)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v55 = v134;
    if (v20 != v54)
    {
      break;
    }

LABEL_67:
    if (v20 < v55)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C2F1C78C(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v78 = *(v19 + 2);
    v77 = *(v19 + 3);
    v79 = v78 + 1;
    if (v78 >= v77 >> 1)
    {
      result = sub_1C2F1C78C((v77 > 1), v78 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = v79;
    v80 = &v19[16 * v78];
    *(v80 + 4) = v134;
    *(v80 + 5) = v20;
    v81 = *v132;
    if (!*v132)
    {
      goto LABEL_155;
    }

    v139 = v20;
    if (v78)
    {
      while (1)
      {
        v20 = v79 - 1;
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v82 = *(v19 + 4);
          v83 = *(v19 + 5);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_87:
          if (v85)
          {
            goto LABEL_134;
          }

          v98 = &v19[16 * v79];
          v100 = *v98;
          v99 = *(v98 + 1);
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_137;
          }

          v104 = &v19[16 * v20 + 32];
          v106 = *v104;
          v105 = *(v104 + 1);
          v92 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v92)
          {
            goto LABEL_140;
          }

          if (__OFADD__(v102, v107))
          {
            goto LABEL_141;
          }

          if (v102 + v107 >= v84)
          {
            if (v84 < v107)
            {
              v20 = v79 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        v108 = &v19[16 * v79];
        v110 = *v108;
        v109 = *(v108 + 1);
        v92 = __OFSUB__(v109, v110);
        v102 = v109 - v110;
        v103 = v92;
LABEL_101:
        if (v103)
        {
          goto LABEL_136;
        }

        v111 = &v19[16 * v20];
        v113 = *(v111 + 4);
        v112 = *(v111 + 5);
        v92 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v92)
        {
          goto LABEL_139;
        }

        if (v114 < v102)
        {
          goto LABEL_3;
        }

LABEL_108:
        v119 = v20 - 1;
        if (v20 - 1 >= v79)
        {
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
          goto LABEL_149;
        }

        if (!*a3)
        {
          goto LABEL_152;
        }

        v120 = *&v19[16 * v119 + 32];
        v121 = *&v19[16 * v20 + 40];
        sub_1C2F3E858((*a3 + 8 * v120), (*a3 + 8 * *&v19[16 * v20 + 32]), (*a3 + 8 * v121), v81);
        if (v5)
        {
        }

        if (v121 < v120)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1C2F59928(v19);
        }

        if (v119 >= *(v19 + 2))
        {
          goto LABEL_131;
        }

        v122 = &v19[16 * v119];
        *(v122 + 4) = v120;
        *(v122 + 5) = v121;
        v151 = v19;
        result = sub_1C2F5989C(v20);
        v19 = v151;
        v79 = *(v151 + 2);
        if (v79 <= 1)
        {
          goto LABEL_3;
        }
      }

      v86 = &v19[16 * v79 + 32];
      v87 = *(v86 - 64);
      v88 = *(v86 - 56);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_132;
      }

      v91 = *(v86 - 48);
      v90 = *(v86 - 40);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_133;
      }

      v93 = &v19[16 * v79];
      v95 = *v93;
      v94 = *(v93 + 1);
      v92 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v92)
      {
        goto LABEL_135;
      }

      v92 = __OFADD__(v84, v96);
      v97 = v84 + v96;
      if (v92)
      {
        goto LABEL_138;
      }

      if (v97 >= v89)
      {
        v115 = &v19[16 * v20 + 32];
        v117 = *v115;
        v116 = *(v115 + 1);
        v92 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v92)
        {
          goto LABEL_142;
        }

        if (v84 < v118)
        {
          v20 = v79 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_87;
    }

LABEL_3:
    v17 = a3[1];
    v18 = v139;
    if (v139 >= v17)
    {
      goto LABEL_118;
    }
  }

  v131 = v5;
  v56 = *a3;
  v57 = (v56 + 8 * v20 - 8);
  v58 = (v134 - v20);
  v135 = v54;
LABEL_44:
  v139 = v20;
  v59 = *(v56 + 8 * v20);
  v136 = v58;
  v137 = v57;
  while (1)
  {
    v60 = *v57;
    v61 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;

    sub_1C2F75BFC();
    v62 = _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(v59 + v61, v11);
    if (v63)
    {
      v64 = v62;
    }

    else
    {
      v64 = 0;
    }

    v65 = 0xE000000000000000;
    if (v63)
    {
      v65 = v63;
    }

    v149 = v64;
    v150 = v65;
    v66 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(v59 + v61, v11);
    if (v67)
    {
      v147 = 32;
      v148 = 0xE100000000000000;
      MEMORY[0x1C6928D30](v66);

      MEMORY[0x1C6928D30](v147, v148);
    }

    v68 = _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(v60 + v61, v11);
    if (v69)
    {
      v70 = v69;
    }

    else
    {
      v70 = 0xE000000000000000;
    }

    if (v69)
    {
      v71 = v68;
    }

    else
    {
      v71 = 0;
    }

    v147 = v71;
    v148 = v70;
    v72 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(v60 + v61, v11);
    if (v73)
    {
      v145 = 32;
      v146 = 0xE100000000000000;
      MEMORY[0x1C6928D30](v72);

      MEMORY[0x1C6928D30](v145, v146);

      v71 = v147;
      v70 = v148;
    }

    v145 = v149;
    v146 = v150;
    v143 = v71;
    v144 = v70;
    sub_1C2EF66C8();
    v74 = sub_1C2F76B0C();

    (*v141)(v11, v142);

    if (v74 != -1)
    {
LABEL_43:
      v20 = v139 + 1;
      v57 = v137 + 1;
      v58 = v136 - 1;
      if (v139 + 1 != v135)
      {
        goto LABEL_44;
      }

      v20 = v135;
      v5 = v131;
      a3 = v133;
      v19 = v138;
      goto LABEL_66;
    }

    if (!v56)
    {
      break;
    }

    v75 = *v57;
    v59 = v57[1];
    *v57 = v59;
    v57[1] = v75;
    --v57;
    if (__CFADD__(v58++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t sub_1C2F3E858(char *a1, char *a2, char *a3, char *a4)
{
  v45 = sub_1C2F75C8C();
  v8 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 - a1;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    if (a4 != a2 || &a2[8 * v16] <= a4)
    {
      v27 = v9;
      memmove(a4, a2, 8 * v16);
      v9 = v27;
    }

    v20 = &a4[8 * v16];
    v18 = a4;
    if (a3 - a2 < 8)
    {
      v26 = a2;
    }

    else
    {
      v26 = a2;
      if (a2 > a1)
      {
        v42 = v11;
        v43 = (v9 + 8);
        v44 = a4;
        v40 = a1;
        do
        {
          v41 = v26;
          v28 = v26 - 8;
          a3 -= 8;
          v29 = v20;
          v30 = v20;
          while (1)
          {
            v31 = a3 + 8;
            v32 = *(v30 - 1);
            v30 -= 8;
            v33 = v28;
            v34 = *v28;
            v35 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;

            v36 = v42;
            sub_1C2F75BFC();
            LOBYTE(v35) = sub_1C2F30670(v32 + v35, v34 + v35, v36);
            (*v43)(v36, v45);

            if (v35)
            {
              break;
            }

            if (v31 != v29)
            {
              *a3 = *v30;
            }

            a3 -= 8;
            v29 = v30;
            v28 = v33;
            if (v30 <= v44)
            {
              v20 = v30;
              v18 = v44;
              v26 = v41;
              goto LABEL_39;
            }
          }

          v37 = v40;
          v38 = v33;
          if (v31 != v41)
          {
            *a3 = *v33;
          }

          v18 = v44;
          v20 = v29;
          if (v29 <= v44)
          {
            break;
          }

          v26 = v38;
        }

        while (v38 > v37);
        v26 = v38;
      }
    }
  }

  else
  {
    v17 = a2;
    v18 = a4;
    if (a4 != a1 || &a1[8 * v14] <= a4)
    {
      v19 = v9;
      memmove(a4, a1, 8 * v14);
      v9 = v19;
    }

    v20 = &a4[8 * v14];
    if (v12 >= 8 && v17 < a3)
    {
      v43 = (v9 + 8);
      while (1)
      {
        v21 = *v17;
        v22 = *v18;
        v23 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;

        sub_1C2F75BFC();
        LOBYTE(v23) = sub_1C2F30670(v21 + v23, v22 + v23, v11);
        (*v43)(v11, v45);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v24 = v17;
        v25 = a1 == v17;
        v17 += 8;
        if (!v25)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 += 8;
        if (v18 >= v20 || v17 >= a3)
        {
          goto LABEL_20;
        }
      }

      v24 = v18;
      v25 = a1 == v18;
      v18 += 8;
      if (v25)
      {
        goto LABEL_18;
      }

LABEL_17:
      *a1 = *v24;
      goto LABEL_18;
    }

LABEL_20:
    v26 = a1;
  }

LABEL_39:
  if (v26 != v18 || v26 >= &v18[(v20 - v18 + (v20 - v18 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v26, v18, 8 * ((v20 - v18) / 8));
  }

  return 1;
}

uint64_t (*sub_1C2F3EC08(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C6929250](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1C2F3EC88;
  }

  __break(1u);
  return result;
}

void (*sub_1C2F3EC90(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6929250](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C2F3ED10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F3ED30(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1C2F76BBC();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = sub_1C2F3D75C(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C2F3EDCC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C2F76BBC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C2F76BBC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C2EF7414(&qword_1EDEBD790, &qword_1EC076B58, &unk_1C2F7BCE0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B58, &unk_1C2F7BCE0);
            v9 = sub_1C2F3EC90(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C2EF5A14(0, &unk_1EDEBD778, 0x1E69D8CA8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F3EF80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C2F76BBC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C2F76BBC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C2EF7414(&qword_1EC076B48, &qword_1EC076B40, &qword_1C2F7BC40);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B40, &qword_1C2F7BC40);
            v9 = sub_1C2F3EC08(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for LanguageSelectionDownloadModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F3F124(uint64_t a1, uint64_t a2)
{
  v2[12] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B20, &qword_1C2F7B980);
  v2[5] = v4;
  v2[6] = sub_1C2EF7414(&qword_1EDEBC528, &qword_1EC076B20, &qword_1C2F7B980);
  v2[14] = __swift_allocate_boxed_opaque_existential_0(v2 + 2);
  (*(*(v4 - 8) + 16))();
  v2[15] = sub_1C2F7688C();
  v2[16] = sub_1C2F7687C();
  v6 = sub_1C2F7684C();
  v2[17] = v6;
  v2[18] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C2F3F290, v6, v5);
}

uint64_t sub_1C2F3F290()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = sub_1C2F768AC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_1C2F09348(v0 + 16, v0 + 56);

  v6 = sub_1C2F7687C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  sub_1C2EF6918((v0 + 56), (v7 + 4));
  v7[9] = v5;

  v9 = sub_1C2F06978(0, 0, v3, &unk_1C2F7BC90, v7);
  v10 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_initialUpdateTask;
  *(v0 + 152) = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_initialUpdateTask;
  v11 = *(v2 + v10);
  *(v2 + v10) = v9;
  if (v11)
  {

    sub_1C2F7692C();

    v9 = *(v2 + v10);
  }

  *(v0 + 160) = v9;
  if (v9)
  {
    v12 = *(MEMORY[0x1E69E86C0] + 4);

    v13 = swift_task_alloc();
    *(v0 + 168) = v13;
    *v13 = v0;
    v13[1] = sub_1C2F3F528;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    v14 = *(v0 + 128);

    v15 = *(v0 + 152);
    v16 = *(v0 + 96);
    v17 = *(v16 + v15);
    *(v16 + v15) = 0;
    if (v17)
    {
      sub_1C2F7692C();
    }

    v18 = *(v0 + 104);
    sub_1C2F3FD68(*(v0 + 112), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1C2F3F528()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1C2F3F66C, v5, v4);
}

uint64_t sub_1C2F3F66C()
{
  v1 = v0[16];

  v2 = v0[19];
  v3 = v0[12];
  v4 = *(v3 + v2);
  *(v3 + v2) = 0;
  if (v4)
  {
    sub_1C2F7692C();
  }

  v5 = v0[13];
  sub_1C2F3FD68(v0[14], v0[12]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t keypath_setTm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1C2F3F75C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2F3F7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C2F3F8EC()
{
  sub_1C2F3FA2C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1C2F75DEC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C2F3FA2C()
{
  if (!qword_1EDEBD6F8)
  {
    sub_1C2F75C8C();
    v0 = sub_1C2F76ADC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEBD6F8);
    }
  }
}

uint64_t sub_1C2F3FA8C()
{
  result = sub_1C2F75C8C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C2F75DEC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

double sub_1C2F3FD14()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress) = result;
  return result;
}

uint64_t sub_1C2F3FD2C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_1C2F3FD68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B20, &qword_1C2F7B980);
  v19[3] = v8;
  v19[4] = sub_1C2EF7414(&qword_1EDEBC528, &qword_1EC076B20, &qword_1C2F7B980);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a1, v8);
  v10 = sub_1C2F768AC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_1C2F09348(v19, v18);
  sub_1C2F7688C();

  v12 = sub_1C2F7687C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  sub_1C2EF6918(v18, (v13 + 4));
  v13[9] = v11;

  v15 = sub_1C2F06978(0, 0, v7, &unk_1C2F7BCA0, v13);
  v16 = *(a2 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_observationTask);
  *(a2 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_observationTask) = v15;
  if (v16)
  {

    sub_1C2F7692C();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

uint64_t sub_1C2F3FFC0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_1C2F3FFFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F0AC48;

  return sub_1C2F394C0(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_60Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C2F40104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F06348;

  return sub_1C2F3BEA8(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1C2F401C4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1C2F402BC(int *a1, void *a2)
{
  if (a2)
  {
    v3 = *a1;
    v5 = *(a1 + 1);
    v4 = *(a1 + 2);
    v7 = *(a1 + 3);
    v6 = *(a1 + 4);
    v30 = a2;
    if ((([v30 isRTT] & 1) != 0 || objc_msgSend(v30, sel_isTTY)) && v6)
    {
      v8 = *(v2 + 16);
      v9 = *(v2 + 20);
      *(v2 + 16) = v3;
      *(v2 + 20) = 0;
      v10 = objc_opt_self();

      v11 = [v10 sharedInstance];
      if (v11)
      {
        v12 = v11;
        if (v3 == v8)
        {
          v13 = v9;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          v14 = 7;
        }

        else
        {
          v14 = 8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076738, &qword_1C2F7A1B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C2F7BCF0;
        v16 = *MEMORY[0x1E69C6B10];
        sub_1C2F766CC();
        v17 = MEMORY[0x1E69E6158];
        sub_1C2F76C1C();
        *(inited + 96) = v17;
        *(inited + 72) = v5;
        *(inited + 80) = v4;
        v18 = *MEMORY[0x1E69C6B28];
        sub_1C2F766CC();

        sub_1C2F76C1C();
        *(inited + 168) = v17;
        *(inited + 144) = v7;
        *(inited + 152) = v6;
        v19 = *MEMORY[0x1E69C6B18];
        sub_1C2F766CC();
        sub_1C2F76C1C();
        v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v21 = sub_1C2F4063C();
        *(inited + 240) = v21;
        *(inited + 216) = v20;
        v22 = *MEMORY[0x1E69C6B20];
        sub_1C2F766CC();
        sub_1C2F76C1C();
        v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(inited + 312) = v21;
        *(inited + 288) = v23;
        v24 = *MEMORY[0x1E69C6B08];
        sub_1C2F766CC();
        sub_1C2F76C1C();
        v25 = [v30 callUUID];
        v26 = sub_1C2F766CC();
        v28 = v27;

        *(inited + 384) = v17;
        *(inited + 360) = v26;
        *(inited + 368) = v28;
        sub_1C2F263A4(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076740, &qword_1C2F7A1B8);
        swift_arrayDestroy();
        v29 = sub_1C2F7659C();

        [v12 sendMessageWithPayload:v29 andIdentifier:0x400000000000];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

unint64_t sub_1C2F4063C()
{
  result = qword_1EC076748;
  if (!qword_1EC076748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC076748);
  }

  return result;
}

uint64_t sub_1C2F40688(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_1C2F406CC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [BiomeLibrary() Translation];
    swift_unknownObjectRelease();
    v4 = [v3 Communication];
    swift_unknownObjectRelease();
    v5 = [v4 LanguageCode];
    swift_unknownObjectRelease();
    v6 = *(v0 + 24);
    *(v0 + 24) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

id sub_1C2F40798()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_1C2F406CC();
    v4 = [v3 source];

    v5 = *(v0 + 32);
    *(v0 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void *sub_1C2F40810()
{
  v13 = sub_1C2F76A1C();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2F769FC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1C2F7651C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1C2F0CA5C();
  v12[0] = "$__lazy_storage_$_eventSource";
  v12[1] = v9;
  sub_1C2F7650C();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1C2F41200(&qword_1EC076B78, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B80, &unk_1C2F7BE10);
  sub_1C2F41248(&qword_1EC076B88, &qword_1EC076B80, &unk_1C2F7BE10);
  sub_1C2F76B3C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v13);
  v10 = sub_1C2F76A4C();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v10;
  sub_1C2F761EC();
  return v0;
}

uint64_t sub_1C2F40AB4(void *a1)
{
  v2 = v1;
  v4 = sub_1C2F764EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C2F7651C();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1C2F411E0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F40688;
  aBlock[3] = &block_descriptor_6;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  sub_1C2F764FC();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1C2F41200(&qword_1EC076700, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2F41248(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000);
  sub_1C2F76B3C();
  MEMORY[0x1C6929010](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);
}

void sub_1C2F40D78(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1C2EF2000, v3, v4, "send Event to Biome, %@", v5, 0xCu);
    sub_1C2F0C8EC(v6);
    MEMORY[0x1C6929E80](v6, -1, -1);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  v8 = sub_1C2F40798();
  [v8 sendEvent_];
}

id *CallTranslationBiomeLanguageController.deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore38CallTranslationBiomeLanguageController_logger;
  v2 = sub_1C2F761FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CallTranslationBiomeLanguageController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore38CallTranslationBiomeLanguageController_logger;
  v2 = sub_1C2F761FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void sub_1C2F40FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = objc_allocWithZone(MEMORY[0x1E698EF68]);
  v10 = sub_1C2F767DC();
  v11 = sub_1C2F766AC();
  v12 = sub_1C2F766AC();
  v13 = [v9 initWithHandles:v10 translationLanguageCode:v11 source:a6 translationToLanguageCode:v12];

  sub_1C2F40AB4(v13);
}

uint64_t type metadata accessor for CallTranslationBiomeLanguageController()
{
  result = qword_1EC076B68;
  if (!qword_1EC076B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2F4111C()
{
  result = sub_1C2F761FC();
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

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2F41200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2F41248(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t CallScreeningTranscript.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CallScreeningTranscript.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CallScreeningTranscript.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CallScreeningTranscript.text.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void __swiftcall CallScreeningTranscript.init(identifier:name:title:text:isAssistant:isRinging:isReasonForCalling:)(CommunicationsUICore::CallScreeningTranscript *__return_ptr retstr, Swift::String identifier, Swift::String_optional name, Swift::String_optional title, Swift::String text, Swift::Bool isAssistant, Swift::Bool isRinging, Swift::Bool isReasonForCalling)
{
  retstr->identifier = identifier;
  retstr->title = title;
  retstr->name = name;
  retstr->text = text;
  retstr->isAssistant = isAssistant;
  retstr->isRinging = isRinging;
  retstr->isReasonForCalling = isReasonForCalling;
}

uint64_t _s20CommunicationsUICore23CallScreeningTranscriptV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v15 = *(a1 + 66);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v18 = *(a2 + 64);
  v19 = *(a1 + 64);
  v16 = *(a2 + 65);
  v17 = *(a1 + 65);
  v14 = *(a2 + 66);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1C2F76EFC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v6 || v4 != v7) && (sub_1C2F76EFC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!v8 || (v3 != v9 || v5 != v8) && (sub_1C2F76EFC() & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if (v20 == v10 && v21 == v11)
  {
    result = 0;
    if (v19 != v18)
    {
      return result;
    }

    goto LABEL_25;
  }

  v13 = sub_1C2F76EFC();
  result = 0;
  if ((v13 & 1) != 0 && ((v19 ^ v18) & 1) == 0)
  {
LABEL_25:
    if (((v17 ^ v16) & 1) == 0)
    {
      return v15 ^ v14 ^ 1u;
    }
  }

  return result;
}

__n128 __swift_memcpy67_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C2F41568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 67))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2F415B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 67) = 1;
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

    *(result + 67) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2F4162C()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x656D697465636166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_1C2F4168C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2F42724(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2F416B4(uint64_t a1)
{
  v2 = sub_1C2F41C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F416F0(uint64_t a1)
{
  v2 = sub_1C2F41C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F4172C(uint64_t a1)
{
  v2 = sub_1C2F41C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F41768(uint64_t a1)
{
  v2 = sub_1C2F41C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F417A4(uint64_t a1)
{
  v2 = sub_1C2F41CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F417E0(uint64_t a1)
{
  v2 = sub_1C2F41CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F4181C(uint64_t a1)
{
  v2 = sub_1C2F41CA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F41858(uint64_t a1)
{
  v2 = sub_1C2F41CA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityLabelStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B90, &qword_1C2F7BEE0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B98, &qword_1C2F7BEE8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076BA0, &qword_1C2F7BEF0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076BA8, &qword_1C2F7BEF8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F41C00();
  sub_1C2F7702C();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1C2F41CA8();
      v12 = v26;
      sub_1C2F76E3C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1C2F41C54();
      v12 = v29;
      sub_1C2F76E3C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1C2F41CFC();
    sub_1C2F76E3C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1C2F41C00()
{
  result = qword_1EC076BB0;
  if (!qword_1EC076BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076BB0);
  }

  return result;
}

unint64_t sub_1C2F41C54()
{
  result = qword_1EC076BB8;
  if (!qword_1EC076BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076BB8);
  }

  return result;
}

unint64_t sub_1C2F41CA8()
{
  result = qword_1EC076BC0;
  if (!qword_1EC076BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076BC0);
  }

  return result;
}

unint64_t sub_1C2F41CFC()
{
  result = qword_1EC076BC8;
  if (!qword_1EC076BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076BC8);
  }

  return result;
}

uint64_t ActivityLabelStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t ActivityLabelStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076BD0, &qword_1C2F7BF00);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076BD8, &qword_1C2F7BF08);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076BE0, &qword_1C2F7BF10);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076BE8, &unk_1C2F7BF18);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1C2F41C00();
  v20 = v43;
  sub_1C2F7701C();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1C2F76E2C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1C2F2B530();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1C2F76CAC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076810, &qword_1C2F7A880) + 48);
      *v30 = &type metadata for ActivityLabelStyle;
      sub_1C2F76DAC();
      sub_1C2F76C9C();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1C2F41CA8();
          sub_1C2F76D9C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1C2F41C54();
          v33 = v22;
          sub_1C2F76D9C();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1C2F41CFC();
        sub_1C2F76D9C();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v44);
}

unint64_t sub_1C2F42368()
{
  result = qword_1EC076BF0;
  if (!qword_1EC076BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076BF0);
  }

  return result;
}

unint64_t sub_1C2F42410()
{
  result = qword_1EC076BF8;
  if (!qword_1EC076BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076BF8);
  }

  return result;
}

unint64_t sub_1C2F42468()
{
  result = qword_1EC076C00;
  if (!qword_1EC076C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C00);
  }

  return result;
}

unint64_t sub_1C2F424C0()
{
  result = qword_1EC076C08;
  if (!qword_1EC076C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C08);
  }

  return result;
}

unint64_t sub_1C2F42518()
{
  result = qword_1EC076C10;
  if (!qword_1EC076C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C10);
  }

  return result;
}

unint64_t sub_1C2F42570()
{
  result = qword_1EC076C18;
  if (!qword_1EC076C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C18);
  }

  return result;
}

unint64_t sub_1C2F425C8()
{
  result = qword_1EC076C20;
  if (!qword_1EC076C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C20);
  }

  return result;
}

unint64_t sub_1C2F42620()
{
  result = qword_1EC076C28;
  if (!qword_1EC076C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C28);
  }

  return result;
}

unint64_t sub_1C2F42678()
{
  result = qword_1EC076C30;
  if (!qword_1EC076C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C30);
  }

  return result;
}

unint64_t sub_1C2F426D0()
{
  result = qword_1EC076C38;
  if (!qword_1EC076C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C38);
  }

  return result;
}

uint64_t sub_1C2F42724(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xE900000000000079 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D697465636166 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C2F76EFC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static LanguageDisplayName.inCall(_:in:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2F75C8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1C2F7669C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20[-v12];
  sub_1C2F75B0C();
  v14 = sub_1C2F7678C();

  if ((v14 & 1) == 0)
  {
    sub_1C2F75B0C();
    v15 = sub_1C2F7678C();

    if ((v15 & 1) == 0)
    {
      return _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(a1, a2);
    }
  }

  sub_1C2F7663C();
  (*(v7 + 16))(v11, v13, v6);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v18 = sub_1C2F766EC();
  (*(v7 + 8))(v13, v6);
  return v18;
}

uint64_t static LanguageDisplayName.short(_:in:)()
{
  v0 = sub_1C2F75C6C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  sub_1C2F75C7C();
  sub_1C2F75C0C();
  (*(v1 + 8))(v4, v0);
  v9 = sub_1C2F75B3C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C2F0A8D8(v8, &unk_1EC076030, qword_1C2F7C380);
    return 0;
  }

  else
  {
    sub_1C2F75B1C();
    (*(v10 + 8))(v8, v9);
    v12 = sub_1C2F75B4C();

    return v12;
  }
}

uint64_t sub_1C2F42CB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C48, &qword_1C2F7C3D8);
    v3 = sub_1C2F76C4C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1C2F76F9C();

      sub_1C2F7673C();
      result = sub_1C2F76FDC();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1C2F76EFC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1C2F42E1C()
{
  v0 = sub_1C2F75C6C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C40, &qword_1C2F7C3D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v29 - v10;
  if (sub_1C2F75B0C() == 0x57545F687ALL && v12 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v14 = sub_1C2F76EFC();

  if (v14)
  {
LABEL_5:
    v13 = 1;
    return v13 & 1;
  }

  sub_1C2F75C7C();
  sub_1C2F75C5C();
  v15 = *(v1 + 8);
  v15(v7, v0);
  v16 = sub_1C2F75BDC();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_1C2F0A8D8(v11, &qword_1EC076C40, &qword_1C2F7C3D0);
    goto LABEL_8;
  }

  v22 = sub_1C2F75B1C();
  v24 = v23;
  (*(v17 + 8))(v11, v16);
  v30 = v22;
  v31 = v24;
  sub_1C2EF66C8();
  v25 = sub_1C2F76AEC();
  v27 = v26;

  if (v25 != 1414414664 || v27 != 0xE400000000000000)
  {
    v28 = sub_1C2F76EFC();

    if (v28)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1C2F75C7C();
    v18 = sub_1C2F75C1C();
    v20 = v19;
    v15(v5, v0);
    v30 = v18;
    v31 = v20;
    v29[0] = 0x2D746E61482DLL;
    v29[1] = 0xE600000000000000;
    sub_1C2EF66C8();
    v13 = sub_1C2F76B1C();

    return v13 & 1;
  }

LABEL_3:

  v13 = 1;
  return v13 & 1;
}

uint64_t sub_1C2F43174()
{
  v0 = sub_1C2F75C6C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C40, &qword_1C2F7C3D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v29 - v10;
  if (sub_1C2F75B0C() == 0x4E435F687ALL && v12 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v14 = sub_1C2F76EFC();

  if (v14)
  {
LABEL_5:
    v13 = 1;
    return v13 & 1;
  }

  sub_1C2F75C7C();
  sub_1C2F75C5C();
  v15 = *(v1 + 8);
  v15(v7, v0);
  v16 = sub_1C2F75BDC();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_1C2F0A8D8(v11, &qword_1EC076C40, &qword_1C2F7C3D0);
    goto LABEL_8;
  }

  v22 = sub_1C2F75B1C();
  v24 = v23;
  (*(v17 + 8))(v11, v16);
  v30 = v22;
  v31 = v24;
  sub_1C2EF66C8();
  v25 = sub_1C2F76AEC();
  v27 = v26;

  if (v25 != 1397637448 || v27 != 0xE400000000000000)
  {
    v28 = sub_1C2F76EFC();

    if (v28)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1C2F75C7C();
    v18 = sub_1C2F75C1C();
    v20 = v19;
    v15(v5, v0);
    v30 = v18;
    v31 = v20;
    v29[0] = 0x2D736E61482DLL;
    v29[1] = 0xE600000000000000;
    sub_1C2EF66C8();
    v13 = sub_1C2F76B1C();

    return v13 & 1;
  }

LABEL_3:

  v13 = 1;
  return v13 & 1;
}

uint64_t _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v53[1] = a2;
  v2 = sub_1C2F75C8C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2F7669C();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v54 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v53 - v12;
  v14 = sub_1C2F75C6C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v53 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076040, &qword_1C2F78FF8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = v53 - v24;
  sub_1C2F75C7C();
  sub_1C2F75C4C();
  v26 = *(v15 + 8);
  v26(v21, v14);
  v27 = sub_1C2F75BBC();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v25, 1, v27) == 1)
  {
    v29 = &unk_1EC076040;
    v30 = &qword_1C2F78FF8;
    v31 = v25;
LABEL_5:
    sub_1C2F0A8D8(v31, v29, v30);
    return 0;
  }

  v53[0] = sub_1C2F75B1C();
  (*(v28 + 8))(v25, v27);
  sub_1C2F75C7C();
  sub_1C2F75C0C();
  v26(v19, v14);
  v32 = sub_1C2F75B3C();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v13, 1, v32) == 1)
  {

    v29 = &unk_1EC076030;
    v30 = qword_1C2F7C380;
    v31 = v13;
    goto LABEL_5;
  }

  v35 = sub_1C2F75B1C();
  v37 = v36;
  (*(v33 + 8))(v13, v32);
  v38 = sub_1C2F42CB4(&unk_1F42B2CB8);
  swift_arrayDestroy();
  v39 = sub_1C2F56A54(v35, v37, v38);

  if (v39)
  {

    if (sub_1C2F42E1C() & 1) != 0 || (sub_1C2F43174())
    {

      v45 = v55;
      sub_1C2F7663C();
      v47 = v57;
      v46 = v58;
      (*(v57 + 16))(v54, v45, v58);
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v49 = [objc_opt_self() bundleForClass_];
      sub_1C2F75BFC();
      v50 = sub_1C2F766EC();
      (*(v47 + 8))(v45, v46);
      return v50;
    }

    v42 = sub_1C2F75B6C();
    v43 = sub_1C2F766AC();

    v44 = [v42 localizedStringForRegion:v43 context:3 short:1];
  }

  else
  {
    v40 = sub_1C2F42CB4(&unk_1F42B2CF8);
    swift_arrayDestroy();
    v41 = sub_1C2F56A54(v35, v37, v40);

    if ((v41 & 1) == 0)
    {

      return 0;
    }

    v42 = sub_1C2F75B6C();
    v43 = sub_1C2F766AC();

    v44 = [v42 localizedStringForRegion:v43 context:3 short:0];
  }

  v51 = v44;

  if (!v51)
  {
    return 0;
  }

  v52 = sub_1C2F766CC();

  return v52;
}

uint64_t _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2F7669C();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v48 - v8;
  v9 = sub_1C2F75C8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = sub_1C2F75C6C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v48 - v23;
  sub_1C2F75C7C();
  sub_1C2F75C0C();
  (*(v17 + 8))(v20, v16);
  v25 = sub_1C2F75B3C();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v24, 1, v25) != 1)
  {
    sub_1C2F75B1C();
    (*(v26 + 8))(v24, v25);
    v27 = sub_1C2F75B4C();
    v29 = v28;

    if (v29)
    {
      v55 = v27;
      v56 = v29;
      sub_1C2EF66C8();
      v27 = sub_1C2F76AEC();
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v48 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(a1, a2);
    v49 = v32;
    sub_1C2F75BFC();
    v33 = sub_1C2F75B0C();
    v35 = v34;
    (*(v10 + 8))(v15, v9);
    if (v33 == sub_1C2F75B0C() && v35 == v36)
    {
    }

    else
    {
      v37 = sub_1C2F76EFC();

      if ((v37 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_1C2F75B0C();
    v38 = sub_1C2F7678C();

    if (v38 & 1) != 0 || (sub_1C2F75B0C(), v39 = sub_1C2F7678C(), , (v39))
    {

      v40 = v52;
      sub_1C2F7663C();
      v42 = v53;
      v41 = v54;
      (*(v53 + 16))(v51, v40, v54);
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v44 = [objc_opt_self() bundleForClass_];
      sub_1C2F75BFC();
      v27 = sub_1C2F766EC();
      v31 = v45;
      (*(v42 + 8))(v40, v41);
LABEL_14:

      v46 = v49;
      if (v49)
      {

        v55 = v27;
        v56 = v31;
        MEMORY[0x1C6928D30](10272, 0xE200000000000000);
        MEMORY[0x1C6928D30](v48, v46);

        MEMORY[0x1C6928D30](41, 0xE100000000000000);
        return v55;
      }

LABEL_16:

      return v27;
    }

LABEL_13:
    if (!v31)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  sub_1C2F0A8D8(v24, &unk_1EC076030, qword_1C2F7C380);
  return 0;
}

uint64_t sub_1C2F441B8()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EDEBDA78);
  __swift_project_value_buffer(v0, qword_1EDEBDA78);
  return sub_1C2F761EC();
}

uint64_t sub_1C2F44230(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_1C2F44284()
{
  result = [objc_allocWithZone(type metadata accessor for PhoneLockStateObserver()) init];
  qword_1EDEBCB88 = result;
  return result;
}

id static PhoneLockStateObserver.shared.getter()
{
  if (qword_1EDEBCB80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EDEBCB88;

  return v0;
}

void static PhoneLockStateObserver.shared.setter(uint64_t a1)
{
  if (qword_1EDEBCB80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDEBCB88;
  qword_1EDEBCB88 = a1;
}

uint64_t (*static PhoneLockStateObserver.shared.modify())()
{
  if (qword_1EDEBCB80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1C2F44440@<X0>(void *a1@<X8>)
{
  if (qword_1EDEBCB80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDEBCB88;
  *a1 = qword_1EDEBCB88;

  return v2;
}

void sub_1C2F444CC(id *a1)
{
  v1 = qword_1EDEBCB80;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1EDEBCB88;
  qword_1EDEBCB88 = v2;
}

uint64_t PhoneLockStateObserver.isLocked.getter()
{
  v1 = OBJC_IVAR___CUICPhoneLockStateObserver_isLocked;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t PhoneLockStateObserver.isLocked.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CUICPhoneLockStateObserver_isLocked;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_1C2F44654()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___CUICPhoneLockStateObserver_isLocked;
  type metadata accessor for DeviceConditions();
  swift_initStaticObject();
  sub_1C2F25CF4();
  sub_1C2F7628C();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *&v0[v2] = sub_1C2F7629C();
  *&v0[OBJC_IVAR___CUICPhoneLockStateObserver_token] = 0;
  v6 = &v0[OBJC_IVAR___CUICPhoneLockStateObserver_lockStateNotification];
  *v6 = 0xD00000000000002DLL;
  *(v6 + 1) = 0x80000001C2F7DEE0;
  v23.receiver = v0;
  v23.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v23, sel_init);
  v9 = *&v7[OBJC_IVAR___CUICPhoneLockStateObserver_lockStateNotification];
  v8 = *&v7[OBJC_IVAR___CUICPhoneLockStateObserver_lockStateNotification + 8];
  sub_1C2F0CA5C();
  v10 = v7;

  v11 = sub_1C2F76A2C();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22[4] = sub_1C2F45A1C;
  v22[5] = v12;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1C2F44230;
  v22[3] = &block_descriptor_7;
  v13 = _Block_copy(v22);

  v14 = sub_1C2F7672C();

  v15 = OBJC_IVAR___CUICPhoneLockStateObserver_token;
  swift_beginAccess();
  v16 = notify_register_dispatch((v14 + 32), &v10[v15], v11, v13);
  swift_endAccess();

  _Block_release(v13);

  if (v16)
  {
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v17 = sub_1C2F761FC();
    __swift_project_value_buffer(v17, qword_1EDEBDA78);
    v18 = sub_1C2F761DC();
    v19 = sub_1C2F769DC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67240192;
      *(v20 + 4) = v16;
      _os_log_impl(&dword_1C2EF2000, v18, v19, "Failed to observe PhoneLockState with status %{public}u", v20, 8u);
      MEMORY[0x1C6929E80](v20, -1, -1);
    }
  }

  return v10;
}

uint64_t sub_1C2F4494C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_1C2F768AC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1C2F7688C();

  v8 = sub_1C2F7687C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_1C2F06C78(0, 0, v6, &unk_1C2F7C468, v9);
}

uint64_t sub_1C2F44A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1C2F7688C();
  v4[7] = sub_1C2F7687C();
  v6 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F44B08, v6, v5);
}

uint64_t sub_1C2F44B08()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1C2F44BA4();
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C2F44BA4()
{
  v1 = v0;
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBDA78);
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    type metadata accessor for DeviceConditions();
    swift_initStaticObject();
    sub_1C2F25CF4();
    sub_1C2F7628C();

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C2EF2000, v3, v4, "updateLockState, send value: %{BOOL}d", v5, 8u);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  v6 = OBJC_IVAR___CUICPhoneLockStateObserver_isLocked;
  swift_beginAccess();
  v7 = *(v1 + v6);
  type metadata accessor for DeviceConditions();
  swift_initStaticObject();

  sub_1C2F25CF4();
  sub_1C2F7628C();

  sub_1C2F7627C();
}

Swift::Bool __swiftcall PhoneLockStateObserver.fetchLockState()()
{
  v1 = OBJC_IVAR___CUICPhoneLockStateObserver_isLocked;
  swift_beginAccess();
  v2 = *(v0 + v1);

  sub_1C2F7628C();

  return v4;
}

uint64_t PhoneLockStateObserver.listen_objc(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = sub_1C2F768AC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1C2F7688C();
  v12 = v3;

  v13 = sub_1C2F7687C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  v14[5] = a1;
  v14[6] = a2;
  v16 = sub_1C2F06F8C(0, 0, v10, &unk_1C2F7C3F0, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C58, &qword_1C2F7C3F8);
  a3[3] = result;
  *a3 = v16;
  return result;
}

uint64_t sub_1C2F44F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a1;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C60, qword_1C2F7C400);
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  sub_1C2F7688C();
  v6[13] = sub_1C2F7687C();
  v11 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F45034, v11, v10);
}

uint64_t sub_1C2F45034()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v13 = v0[6];

  v8 = OBJC_IVAR___CUICPhoneLockStateObserver_isLocked;
  swift_beginAccess();
  v0[5] = *(v7 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2F762FC();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  sub_1C2EF7414(&qword_1EC076C68, &qword_1EC076C60, qword_1C2F7C400);

  v10 = sub_1C2F7631C();

  (*(v4 + 8))(v2, v3);
  *v13 = v10;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C2F451FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C2F0AC48;

  return sub_1C2F44F30(a1, v4, v5, v6, v7, v8);
}

uint64_t PhoneLockStateObserver.listen(wantsCurrentValue:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C60, qword_1C2F7C400);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = OBJC_IVAR___CUICPhoneLockStateObserver_isLocked;
  swift_beginAccess();
  v15 = *(v3 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2F762FC();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  sub_1C2EF7414(&qword_1EC076C68, &qword_1EC076C60, qword_1C2F7C400);

  v13 = sub_1C2F7631C();

  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_1C2F45684(unsigned __int8 *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1C2F761FC();
  __swift_project_value_buffer(v4, qword_1EDEBDA78);
  v5 = sub_1C2F761DC();
  v6 = sub_1C2F769EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_1C2EF2000, v5, v6, "Spring Board has updated value to: %{BOOL}d", v7, 8u);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  return a2(v3);
}

id PhoneLockStateObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___CUICPhoneLockStateObserver_token;
  swift_beginAccess();
  notify_cancel(*&v0[v2]);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2F45954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C2F06348;

  return sub_1C2F44F30(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2F45A3C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1C2F45A6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F0AC48;

  return sub_1C2F44A70(a1, v4, v5, v6);
}

uint64_t FTMenuItem.buttonLabel()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076640, &qword_1C2F79E70);
  v2 = sub_1C2F20A98();
  v3 = MEMORY[0x1E6981148];
  v4 = MEMORY[0x1E6981138];

  return MEMORY[0x1EEDDC7A0](sub_1C2F20A88, v0, sub_1C2F20A90, v0, v3, v1, v4, v2);
}

uint64_t FTMenuItem.SymbolConfig.init(name:foreground:background:font:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  v14 = a3[3];
  v15 = __swift_project_boxed_opaque_existential_1(a3, v14);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  (*(v18 + 16))(&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(a6 + 16) = sub_1C2F7632C();
  v19 = a4[3];
  v20 = __swift_project_boxed_opaque_existential_1(a4, v19);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  (*(v23 + 16))(&v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(a6 + 24) = sub_1C2F7632C();
  *(a6 + 32) = a5;
  *(a6 + 40) = a7;
  *(a6 + 48) = a8;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return __swift_destroy_boxed_opaque_existential_1Tm(a3);
}

uint64_t FTMenuItem.SymbolConfig.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double FTMenuItem.SymbolConfig.offset.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t FTMenuItem.SecondaryViewPresentationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t FTMenuItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id;
  v4 = sub_1C2F75AEC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C2F45F8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = (v3 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_1C2F46058(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1C2F46168(v2, v3);
}

uint64_t sub_1C2F46098()
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v1 = (v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1C2F46168(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (v7 = v5[1], (sub_1C2F76EFC() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F462C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a2;
  v5[1] = a3;
}

void (*sub_1C2F4633C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F45F2C();
  return sub_1C2F46474;
}

void (*sub_1C2F46548(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F46480();
  return sub_1C2F46680;
}

uint64_t sub_1C2F466EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = (v3 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  *a2 = *v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return sub_1C2F4F3F0(v5, v6, v7, v8);
}

uint64_t sub_1C2F467C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  sub_1C2F4F3F0(*a1, v3, v4, v5);
  return sub_1C2F46908(v2, v3, v4, v5);
}

uint64_t sub_1C2F46820()
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v1 = (v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle);
  swift_beginAccess();
  v2 = *v1;
  sub_1C2F4F3F0(*v1, v1[1], v1[2], v1[3]);
  return v2;
}

uint64_t sub_1C2F46908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  if (!v12)
  {
    if (!a4)
    {
      v20 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
    sub_1C2F4F468(a1, a2, a3, a4);
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  v23 = a4;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = *v9;
  sub_1C2F4F434(v10, v11, v13 & 1);

  v18 = sub_1C2F7639C();
  v19 = v17;
  a3 = v16;
  a2 = v15;
  a1 = v14;
  a4 = v23;
  sub_1C2F4F468(v19, v11, v13, v12);
  if ((v18 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v20 = v9[3];
LABEL_8:
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return sub_1C2F4F468(v10, v11, v13, v20);
}

uint64_t sub_1C2F46B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  sub_1C2F4F3F0(a2, a3, a4, a5);
  return sub_1C2F4F468(v10, v11, v13, v12);
}

void (*sub_1C2F46BC0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F4668C();
  return sub_1C2F46CF8;
}

uint64_t sub_1C2F46D64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  swift_beginAccess();
  return sub_1C2F4F4BC(v3 + v4, a2);
}

uint64_t sub_1C2F46E2C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C2F4F4BC(a1, &v10[-v6]);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75D9C();

  return sub_1C2F4F548(v7);
}

uint64_t sub_1C2F46F5C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v3 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  swift_beginAccess();
  return sub_1C2F4F4BC(v5 + v3, a1);
}

uint64_t sub_1C2F47024(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75D9C();

  return sub_1C2F4F548(a1);
}

uint64_t sub_1C2F470F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1C2F4F4BC(a2, &v10 - v6);
  v8 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  swift_beginAccess();
  sub_1C2F511A8(v7, a1 + v8);
  return swift_endAccess();
}

void (*sub_1C2F471B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F46D04();
  return sub_1C2F472F0;
}

void (*sub_1C2F473E4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F4730C();
  return sub_1C2F4751C;
}

uint64_t sub_1C2F4759C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void (*sub_1C2F476C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F47528();
  return sub_1C2F47800;
}

void (*sub_1C2F4791C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F4781C();
  return sub_1C2F47A54;
}

uint64_t sub_1C2F47AF0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t a3@<X6>, void *a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v8 = (v7 + *a2);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *a4 = a3;
  a4[1] = v11;
}

uint64_t sub_1C2F47C24(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);

  sub_1C2F75D9C();
}

uint64_t sub_1C2F47D40(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

void (*sub_1C2F47E08(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F47A60();
  return sub_1C2F47F40;
}

uint64_t sub_1C2F47F4C()
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  return *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss);
}

uint64_t sub_1C2F47FF4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t sub_1C2F48190@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v6 = (v5 + *a2);
  swift_beginAccess();
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t keypath_set_3Tm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_1C2F482D4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

uint64_t sub_1C2F483C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      if (*v6 == a1 && v7 == a2)
      {
        goto LABEL_8;
      }

      v9 = v6[1];
      if (sub_1C2F76EFC())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v6 = a1;
    v6[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75D9C();
}

uint64_t sub_1C2F4854C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a2;
  v6[1] = a3;
}

void (*sub_1C2F485BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F4811C();
  return sub_1C2F486F4;
}

uint64_t sub_1C2F48760@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C2F48828(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C2F48914(v4);
}

uint64_t sub_1C2F48854()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v1 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1C2F48914(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (!*(v1 + v3))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + v3);

  v5 = sub_1C2F763EC();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1C2F48A78(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*sub_1C2F48AE8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F48700();
  return sub_1C2F48C20;
}

uint64_t sub_1C2F48CA0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1C2F48D7C(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t sub_1C2F48E98(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_1C2F48EF4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F48C2C();
  return sub_1C2F4902C;
}

uint64_t sub_1C2F49098@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = (v3 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1C2F51128;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_1C2EFDE20(v5);
}

uint64_t sub_1C2F491A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C2F510F0;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2EFDE20(v3);
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75D9C();
  sub_1C2EFDE10(v6);
}

uint64_t sub_1C2F49300()
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v1 = (v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_1C2EFDE20(v3);
  return v3;
}

uint64_t sub_1C2F493D4(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75D9C();
  sub_1C2EFDE10(a1);
}

uint64_t sub_1C2F494B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  sub_1C2EFDE20(a2);
  return sub_1C2EFDE10(v6);
}

void (*sub_1C2F4953C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F49038();
  return sub_1C2F49674;
}

uint64_t sub_1C2F496E0@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v3 = (v1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return sub_1C2F20B44(v4, v5);
}

uint64_t sub_1C2F497B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75D9C();
  sub_1C2F2039C(v1, v2);
}

uint64_t sub_1C2F4989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  sub_1C2F20B44(a2, a3);
  return sub_1C2F2039C(v8, v9);
}

void (*sub_1C2F4993C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F49680();
  return sub_1C2F49A74;
}

void sub_1C2F49A80()
{
  if (*(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) == 1)
  {
    *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F49B98(uint64_t result)
{
  v2 = v1;
  v3 = result;
  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();

    if (v3)
    {
      return result;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
    if (result)
    {
      return result;
    }
  }

  v5 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView;
  result = swift_beginAccess();
  if (*(v2 + v5))
  {
    v6 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v6);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
    *(v2 + v5) = 0;
  }

  return result;
}

uint64_t sub_1C2F49DAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id;
  v5 = sub_1C2F75AEC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void static FTMenuItem.addPeopleRow(subtitle:rowAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v5 = sub_1C2F75AEC();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v55 - v14);
  v16 = sub_1C2F75C8C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = sub_1C2F7669C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v55 - v24;
  sub_1C2F7663C();
  (*(v19 + 16))(v23, v25, v18);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v28 = sub_1C2F766EC();
  v56 = v29;
  v57 = v28;
  (*(v19 + 8))(v25, v18);
  if (qword_1EDEBCF88 != -1)
  {
    swift_once();
  }

  v59 = a4;
  v30 = qword_1EDEBCF90;
  v31 = sub_1C2F766AC();
  v32 = [objc_opt_self() imageNamed:v31 inBundle:v30];

  if (v32)
  {
    *v15 = sub_1C2F7644C();
    v33 = type metadata accessor for FTMenuItem.IconType(0);
    swift_storeEnumTagMultiPayload();
    v34 = *(*(v33 - 8) + 56);
    v34(v15, 0, 1, v33);
    sub_1C2F75ADC();
    v35 = type metadata accessor for FTMenuItem(0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    v38 = swift_allocObject();
    v39 = (v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
    *v39 = 0;
    v39[1] = 0;
    v40 = v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
    *v40 = 0u;
    *(v40 + 16) = 0u;
    v41 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
    v34((v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v33);
    *(v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
    v42 = (v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
    *v42 = 0;
    v42[1] = 0;
    *(v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
    *(v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
    v43 = (v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
    *v43 = 0;
    v43[1] = 0;
    v44 = (v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
    v44[1] = 0;
    v44[2] = 0;
    *v44 = 0;
    sub_1C2F75DDC();
    v45 = *(v60 + 16);
    v55 = v8;
    v45(v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v8, v61);
    v46 = (v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
    v47 = v56;
    *v46 = v57;
    v46[1] = v47;
    sub_1C2F4F468(*v40, *(v40 + 8), *(v40 + 16), *(v40 + 24));
    *v40 = 0u;
    *(v40 + 16) = 0u;
    sub_1C2F4F4BC(v15, v13);
    sub_1C2F4F548(v38 + v41);
    sub_1C2F4F72C(v13, v38 + v41);
    *(v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
    *(v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
    *(v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
    *(v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 1;
    v48 = (v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
    v49 = v59;
    *v48 = v58;
    v48[1] = v49;
    v50 = (v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
    *v50 = nullsub_1;
    v50[1] = 0;
    v51 = (v38 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
    swift_beginAccess();
    if (v51[1])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v55 - 3) = 0;
      *(&v55 - 2) = 0;
      *(&v55 - 4) = v38;
      v63 = v38;
      sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);

      sub_1C2F75D9C();
    }

    else
    {
      *v51 = 0;
      v51[1] = 0;
    }

    v53 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
    swift_beginAccess();
    if (*(v38 + v53))
    {
      v54 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v54);
      *(&v55 - 2) = v38;
      *(&v55 - 1) = 0;
      v62 = v38;
      sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
      sub_1C2F75D9C();
    }

    (*(v60 + 8))(v55, v61);
    sub_1C2F4F548(v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static FTMenuItem.addViewContactRow(title:iconType:rowAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  v53 = a5;
  v50 = a1;
  v51 = a2;
  v6 = sub_1C2F75AEC();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v49 - v17);
  sub_1C2F4F4BC(a3, v16);
  v19 = type metadata accessor for FTMenuItem.IconType(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v16, 1, v19) == 1)
  {
    if (qword_1EDEBCF88 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDEBCF90;
    *v18 = sub_1C2F7647C();
    swift_storeEnumTagMultiPayload();
    if (v21(v16, 1, v19) != 1)
    {
      sub_1C2F4F548(v16);
    }
  }

  else
  {
    sub_1C2F4F79C(v16, v18);
  }

  v23 = *(v20 + 56);
  v23(v18, 0, 1, v19);
  v24 = v54;
  sub_1C2F75ADC();
  v25 = type metadata accessor for FTMenuItem(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v29 = 0;
  v29[1] = 0;
  v30 = v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  v31 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v23((v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v19);
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v32 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v32 = 0;
  v32[1] = 0;
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v33 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v34[1] = 0;
  v34[2] = 0;
  *v34 = 0;
  sub_1C2F75DDC();
  (*(v55 + 16))(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v24, v56);
  v35 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v36 = v51;
  *v35 = v50;
  v35[1] = v36;
  v37 = *v30;
  v38 = *(v30 + 8);
  v40 = *(v30 + 16);
  v39 = *(v30 + 24);

  sub_1C2F4F468(v37, v38, v40, v39);
  *v30 = 0u;
  *(v30 + 16) = 0u;
  sub_1C2F4F4BC(v18, v13);
  sub_1C2F4F548(v28 + v31);
  sub_1C2F4F72C(v13, v28 + v31);
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 1;
  v41 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  v42 = v53;
  *v41 = v52;
  v41[1] = v42;
  v43 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v43 = nullsub_1;
  v43[1] = 0;
  v44 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v44[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v49 - 3) = 0;
    *(&v49 - 2) = 0;
    *(&v49 - 4) = v28;
    v58 = v28;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v44 = 0;
    v44[1] = 0;
  }

  v46 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v28 + v46))
  {
    v47 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v47);
    *(&v49 - 2) = v28;
    *(&v49 - 1) = 0;
    v57 = v28;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  (*(v55 + 8))(v54, v56);
  sub_1C2F4F548(v18);
  return v28;
}

void static FTMenuItem.callRecordingRow(isSessionActive:dismissOnTap:rowAction:stopAction:)(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a4;
  v93 = a6;
  v90 = a3;
  v91 = a5;
  v89 = a2;
  v7 = sub_1C2F75AEC();
  v98 = *(v7 - 8);
  v99 = v7;
  v8 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v100 = (&v83 - v14);
  v15 = sub_1C2F75C8C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = sub_1C2F7669C();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v83 - v23;
  sub_1C2F7663C();
  v25 = v18[2];
  v25(v22, v24, v17);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v96 = objc_opt_self();
  v94 = ObjCClassFromMetadata;
  v27 = [v96 bundleForClass_];
  sub_1C2F75BFC();
  v28 = sub_1C2F766EC();
  v30 = v29;
  v95 = v18[1];
  v95(v24, v17);
  v88 = a1;
  if (a1)
  {
    goto LABEL_2;
  }

  if (qword_1EC075CA8 != -1)
  {
    swift_once();
  }

  v33 = sub_1C2F75FFC();
  v34 = TUTranscriptionAvailabilityForUseCase();
  if (v33)
  {
    if ((v34 - 1) >= 2)
    {
LABEL_2:
      v31 = v25;
      v32 = v94;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if ((v34 - 1) < 2)
  {
LABEL_7:

    sub_1C2F7663C();
    v31 = v25;
    v25(v22, v24, v17);
    v32 = v94;
    v35 = [v96 bundleForClass_];
LABEL_11:
    v36 = v35;
    sub_1C2F75BFC();
    v28 = sub_1C2F766EC();
    v30 = v37;
    v95(v24, v17);
    goto LABEL_12;
  }

  v31 = v25;
  if (!v34)
  {

    sub_1C2F7663C();
    v25(v22, v24, v17);
    v32 = v94;
    v35 = [v96 bundleForClass_];
    goto LABEL_11;
  }

  v32 = v94;
LABEL_12:
  sub_1C2F7663C();
  v31(v22, v24, v17);
  v38 = [v96 bundleForClass_];
  sub_1C2F75BFC();
  v86 = sub_1C2F766EC();
  v85 = v39;
  v95(v24, v17);
  v103 = v28;
  v104 = v30;
  sub_1C2EF66C8();

  v94 = sub_1C2F763AC();
  v95 = v40;
  v42 = v41;
  v96 = v43;
  if (qword_1EDEBCF88 != -1)
  {
    swift_once();
  }

  v44 = qword_1EDEBCF90;
  v45 = sub_1C2F766AC();
  v46 = [objc_opt_self() imageNamed:v45 inBundle:v44];

  if (v46)
  {

    v47 = sub_1C2F7644C();
    v48 = v100;
    *v100 = v47;
    v49 = type metadata accessor for FTMenuItem.IconType(0);
    swift_storeEnumTagMultiPayload();
    v50 = *(*(v49 - 8) + 56);
    v50(v48, 0, 1, v49);
    v51 = v97;
    sub_1C2F75ADC();
    v84 = v42 & 1;
    v52 = type metadata accessor for FTMenuItem(0);
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    v55 = swift_allocObject();
    v56 = (v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
    *v56 = 0;
    v56[1] = 0;
    v57 = v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
    *v57 = 0u;
    *(v57 + 16) = 0u;
    v58 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
    v50((v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v49);
    *(v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
    v59 = (v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
    *v59 = 0;
    v59[1] = 0;
    *(v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
    *(v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
    v60 = (v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
    *v60 = 0;
    v60[1] = 0;
    v61 = (v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
    v61[1] = 0;
    v61[2] = 0;
    *v61 = 0;
    sub_1C2F75DDC();
    (*(v98 + 16))(v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v51, v99);
    v62 = (v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
    v63 = v85;
    *v62 = v86;
    v62[1] = v63;
    v64 = *v57;
    v65 = *(v57 + 8);
    v66 = *(v57 + 16);
    v67 = *(v57 + 24);
    v68 = v96;

    v86 = v42;
    v69 = v42 & 1;
    v70 = v94;
    v71 = v95;
    sub_1C2F4F434(v94, v95, v69);
    sub_1C2F4F468(v64, v65, v66, v67);
    *v57 = v70;
    *(v57 + 8) = v71;
    *(v57 + 16) = v84;
    *(v57 + 24) = v68;
    v72 = v87;
    sub_1C2F4F4BC(v100, v87);
    sub_1C2F4F548(v55 + v58);
    sub_1C2F4F72C(v72, v55 + v58);
    *(v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
    *(v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = v88 & 1;
    v73 = v89 & 1;
    *(v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = v89 & 1;
    *(v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = v73;
    v74 = (v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
    v76 = v92;
    v75 = v93;
    *v74 = v90;
    v74[1] = v76;
    v77 = (v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
    v78 = (v55 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
    *v77 = v91;
    v77[1] = v75;
    swift_beginAccess();
    if (v78[1])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v83 - 3) = 0;
      *(&v83 - 2) = 0;
      *(&v83 - 4) = v55;
      v102 = v55;
      sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);

      sub_1C2F75D9C();
    }

    else
    {
      *v78 = 0;
      v78[1] = 0;
    }

    v80 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
    swift_beginAccess();
    v81 = v86;
    if (*(v55 + v80))
    {
      v82 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v82);
      *(&v83 - 2) = v55;
      *(&v83 - 1) = 0;
      v101 = v55;
      sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
      sub_1C2F75D9C();

      sub_1C2F4F4AC(v94, v95, v81 & 1);
    }

    else
    {
      sub_1C2F4F4AC(v94, v95, v86 & 1);
    }

    (*(v98 + 8))(v97, v99);
    sub_1C2F4F548(v100);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static FTMenuItem.tvHandoffRow(id:title:icon:dismissOnTap:rowAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v52 = a3;
  v53 = a7;
  v56 = a6;
  v57 = 0;
  v54 = a5;
  v51 = a2;
  v9 = sub_1C2F75AEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v50 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - v18;
  sub_1C2F4F800(a4, &v49 - v18);
  v20 = type metadata accessor for FTMenuItem.IconType(0);
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 0, 1, v20);
  v59 = v10;
  v49 = *(v10 + 16);
  v49(v13, a1, v9);
  v22 = type metadata accessor for FTMenuItem(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = (v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v26 = 0;
  v26[1] = 0;
  v27 = v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  v28 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v21((v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v20);
  *(v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v29 = (v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v29 = 0;
  v29[1] = 0;
  *(v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v30 = (v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v31[1] = 0;
  v31[2] = 0;
  *v31 = 0;
  sub_1C2F75DDC();
  v58 = v13;
  v55 = v9;
  v49((v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id), v13, v9);
  v32 = (v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v33 = v52;
  *v32 = v51;
  v32[1] = v33;
  v34 = *v27;
  v35 = *(v27 + 8);
  v37 = *(v27 + 16);
  v36 = *(v27 + 24);

  v38 = v35;
  v39 = v19;
  v40 = v53;
  sub_1C2F4F468(v34, v38, v37, v36);
  *v27 = 0u;
  *(v27 + 16) = 0u;
  v41 = v50;
  sub_1C2F4F4BC(v39, v50);
  sub_1C2F4F548(v25 + v28);
  sub_1C2F4F72C(v41, v25 + v28);
  *(v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
  *(v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = v54;
  *(v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v42 = (v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v42 = v56;
  v42[1] = v40;
  v43 = (v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v43 = nullsub_1;
  v43[1] = 0;
  v44 = (v25 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v44[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v49 - 3) = 0;
    *(&v49 - 2) = 0;
    *(&v49 - 4) = v25;
    v61 = v25;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v44 = 0;
    v44[1] = 0;
  }

  v46 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v25 + v46))
  {
    v47 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v47);
    *(&v49 - 2) = v25;
    *(&v49 - 1) = 0;
    v60 = v25;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  (*(v59 + 8))(v58, v55);
  sub_1C2F4F548(v39);
  return v25;
}

uint64_t static FTMenuItem.liveCaptionsRow(isSessionActive:rowAction:stopAction:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v82 = a4;
  v83 = a3;
  v81 = a2;
  v87 = a1;
  v5 = sub_1C2F75AEC();
  v94 = *(v5 - 8);
  v95 = v5;
  v6 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v92 = (&v75 - v12);
  v13 = sub_1C2F75C8C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C2F7669C();
  v78 = v17;
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v75 - v23;
  v91 = 0x80000001C2F7FB80;
  v25 = sub_1C2F7642C();

  v26 = sub_1C2F7641C();

  sub_1C2F7636C();
  sub_1C2F7635C();
  v90 = sub_1C2F7637C();

  v98 = v25;
  v89 = sub_1C2F7632C();
  v98 = v26;
  v88 = sub_1C2F7632C();

  sub_1C2F7663C();
  v27 = v18[2];
  v27(v22, v24, v17);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = objc_opt_self();
  v30 = [v29 bundleForClass_];
  sub_1C2F75BFC();
  v86 = v16;
  v79 = sub_1C2F766EC();
  v77 = v31;
  v32 = v78;
  v85 = v18[1];
  v85(v24);
  sub_1C2F7663C();
  v27(v22, v24, v32);
  v33 = [v29 bundleForClass_];
  sub_1C2F75BFC();
  v34 = sub_1C2F766EC();
  v36 = v35;
  (v85)(v24, v32);
  v98 = v34;
  v99 = v36;
  sub_1C2EF66C8();
  v37 = sub_1C2F763AC();
  v85 = v39;
  v86 = v38;
  LODWORD(v78) = v40;
  v76 = v40 & 1;
  v41 = v91;
  v42 = v92;
  *v92 = 0xD000000000000014;
  v42[1] = v41;
  v43 = v88;
  v42[2] = v89;
  v42[3] = v43;
  v42[4] = v90;
  *(v42 + 5) = xmmword_1C2F7C470;
  v44 = type metadata accessor for FTMenuItem.IconType(0);
  swift_storeEnumTagMultiPayload();
  v45 = *(*(v44 - 8) + 56);
  v45(v42, 0, 1, v44);

  v46 = v93;
  sub_1C2F75ADC();
  v47 = type metadata accessor for FTMenuItem(0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  v51 = (v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v51 = 0;
  v51[1] = 0;
  v52 = v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v52 = 0u;
  *(v52 + 16) = 0u;
  v75 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v45((v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v44);
  *(v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v53 = (v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v53 = 0;
  v53[1] = 0;
  *(v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v54 = (v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v54 = 0;
  v54[1] = 0;
  v55 = (v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v55[1] = 0;
  v55[2] = 0;
  *v55 = 0;
  sub_1C2F75DDC();
  (*(v94 + 16))(v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v46, v95);
  v56 = (v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v57 = v77;
  *v56 = v79;
  v56[1] = v57;
  v58 = *v52;
  v59 = *(v52 + 8);
  v60 = *(v52 + 16);
  v79 = *(v52 + 24);
  v61 = v85;

  v62 = v86;
  v63 = v76;
  sub_1C2F4F434(v37, v86, v76);
  sub_1C2F4F468(v58, v59, v60, v79);
  v79 = v37;
  *v52 = v37;
  *(v52 + 8) = v62;
  *(v52 + 16) = v63;
  *(v52 + 24) = v61;
  v64 = v80;
  sub_1C2F4F4BC(v42, v80);
  v65 = v75;
  sub_1C2F4F548(v50 + v75);
  sub_1C2F4F72C(v64, v50 + v65);
  *(v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = v87 & 1;
  *(v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 1;
  v66 = (v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  v67 = v83;
  *v66 = v81;
  v66[1] = v67;
  v68 = (v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  v69 = (v50 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  v70 = v84;
  *v68 = v82;
  v68[1] = v70;
  swift_beginAccess();
  if (v69[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v50;
    v97 = v50;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v69 = 0;
    v69[1] = 0;
  }

  v72 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v50 + v72))
  {
    v73 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v73);
    *(&v75 - 2) = v50;
    *(&v75 - 1) = 0;
    v96 = v50;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  sub_1C2F4F4AC(v79, v86, v78 & 1);

  (*(v94 + 8))(v93, v95);
  sub_1C2F4F548(v92);
  return v50;
}

uint64_t static FTMenuItem.liveTranslationRow(isVideo:)()
{
  v85 = 0;
  v0 = sub_1C2F75AEC();
  v97 = *(v0 - 8);
  v98 = v0;
  v1 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v96 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v78 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v74 - v7;
  v92 = &v74 - v7;
  v9 = sub_1C2F75C8C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C2F7669C();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v74 - v19;
  v93 = _s20CommunicationsUICore10FTMenuItemC30liveTranslationDefaultSubtitle7isVideoSSSb_tFZ_0();
  v86 = v21;
  v22 = sub_1C2F7642C();

  v23 = sub_1C2F7640C();

  sub_1C2F7634C();
  sub_1C2F7635C();
  v94 = sub_1C2F7637C();

  v101 = v22;
  v95 = sub_1C2F7632C();
  v101 = v23;
  v24 = sub_1C2F7632C();

  sub_1C2F7663C();
  v25 = v14[2];
  v84 = v14 + 2;
  v83 = v25;
  v25(v18, v20, v13);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v81 = objc_opt_self();
  v82 = ObjCClassFromMetadata;
  v27 = [v81 bundleForClass_];
  sub_1C2F75BFC();
  v87 = v18;
  v90 = v12;
  v77 = sub_1C2F766EC();
  v76 = v28;
  v29 = v14[1];
  v88 = v20;
  v89 = v14 + 1;
  v30 = v94;
  v91 = v13;
  v80 = v29;
  v29(v20, v13);
  v101 = v93;
  v102 = v86;
  sub_1C2EF66C8();
  v31 = sub_1C2F763AC();
  v93 = v32;
  v34 = v33;
  v79 = v35;
  v36 = v35 & 1;
  *v8 = 0x74616C736E617274;
  v37 = v95;
  *(v8 + 1) = 0xE900000000000065;
  *(v8 + 2) = v37;
  *(v8 + 3) = v24;
  *(v8 + 4) = v30;
  *(v8 + 40) = xmmword_1C2F7C480;
  v38 = type metadata accessor for FTMenuItem.IconType(0);
  swift_storeEnumTagMultiPayload();
  v39 = *(*(v38 - 8) + 56);
  v39(v8, 0, 1, v38);

  v86 = v24;

  v40 = v96;
  sub_1C2F75ADC();
  v41 = type metadata accessor for FTMenuItem(0);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  v44 = swift_allocObject();
  v45 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v45 = 0;
  v45[1] = 0;
  v46 = v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v46 = 0u;
  *(v46 + 16) = 0u;
  v75 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v39((v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v38);
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v47 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v47 = 0;
  v47[1] = 0;
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v48 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v48 = 0;
  v48[1] = 0;
  v49 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v49[1] = 0;
  v49[2] = 0;
  *v49 = 0;
  sub_1C2F75DDC();
  (*(v97 + 16))(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v40, v98);
  v50 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v51 = v76;
  *v50 = v77;
  v50[1] = v51;
  v52 = *v46;
  v53 = *(v46 + 8);
  v55 = *(v46 + 16);
  v54 = *(v46 + 24);

  v56 = v31;
  v57 = v31;
  v58 = v93;
  sub_1C2F4F434(v57, v93, v36);
  sub_1C2F4F468(v52, v53, v55, v54);
  *v46 = v56;
  *(v46 + 8) = v58;
  *(v46 + 16) = v36;
  *(v46 + 24) = v34;
  v59 = v78;
  sub_1C2F4F4BC(v92, v78);
  v60 = v75;
  sub_1C2F4F548(v44 + v75);
  sub_1C2F4F72C(v59, v44 + v60);
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 0;
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v61 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v61 = nullsub_1;
  v61[1] = 0;
  v62 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v62 = nullsub_1;
  v62[1] = 0;
  v63 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v63[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v74 - 3) = 0;
    *(&v74 - 2) = 0;
    *(&v74 - 4) = v44;
    v100 = v44;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
    *v63 = 0;
    v63[1] = 0;
  }

  v65 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v44 + v65))
  {
    v66 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v66);
    *(&v74 - 2) = v44;
    *(&v74 - 1) = 0;
    v99 = v44;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  sub_1C2F4F4AC(v56, v93, v79 & 1);

  (*(v97 + 8))(v96, v98);
  sub_1C2F4F548(v92);
  v67 = v88;
  sub_1C2F7663C();
  v68 = v91;
  v83(v87, v67, v91);
  v69 = [v81 bundleForClass_];
  sub_1C2F75BFC();
  v70 = sub_1C2F766EC();
  v72 = v71;
  v80(v67, v68);
  sub_1C2F46520(v70, v72);

  return v44;
}

uint64_t static FTMenuItem.holdThisCallRow(rowAction:stopAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a4;
  v87 = a3;
  v85 = a2;
  v86 = a1;
  v89 = 0;
  v96 = sub_1C2F75AEC();
  v98 = *(v96 - 8);
  v4 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v99 = (&v78 - v10);
  v11 = sub_1C2F75C8C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1C2F7669C();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v78 - v19;
  v21 = [objc_opt_self() systemOrangeColor];
  v22 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v23 = [v21 resolvedColorWithTraitCollection_];

  v95 = 0x80000001C2F7FC10;
  v24 = sub_1C2F7642C();

  v88 = v23;
  v25 = sub_1C2F7643C();

  sub_1C2F7636C();
  sub_1C2F7635C();
  v93 = sub_1C2F7637C();

  v102 = v24;
  v94 = sub_1C2F7632C();
  v102 = v25;
  v92 = sub_1C2F7632C();

  sub_1C2F7663C();
  v26 = v14[2];
  v26(v18, v20, v13);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();
  v29 = [v28 bundleForClass_];
  sub_1C2F75BFC();
  v82 = sub_1C2F766EC();
  v80 = v30;
  v31 = v14[1];
  v31(v20, v13);
  sub_1C2F7663C();
  v26(v18, v20, v13);
  v32 = [v28 bundleForClass_];
  sub_1C2F75BFC();
  v33 = sub_1C2F766EC();
  v35 = v34;
  v31(v20, v13);
  v102 = v33;
  v103 = v35;
  sub_1C2EF66C8();
  v90 = sub_1C2F763AC();
  v91 = v36;
  v38 = v37;
  v81 = v39;
  v79 = v39 & 1;
  v40 = v99;
  v42 = v94;
  v41 = v95;
  *v99 = 0xD000000000000010;
  v40[1] = v41;
  v44 = v92;
  v43 = v93;
  v40[2] = v42;
  v40[3] = v44;
  v40[4] = v43;
  *(v40 + 5) = xmmword_1C2F7C490;
  v45 = type metadata accessor for FTMenuItem.IconType(0);
  swift_storeEnumTagMultiPayload();
  v46 = *(*(v45 - 8) + 56);
  v46(v40, 0, 1, v45);

  v47 = v97;
  sub_1C2F75ADC();
  v48 = type metadata accessor for FTMenuItem(0);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  v51 = swift_allocObject();
  v52 = (v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v52 = 0;
  v52[1] = 0;
  v53 = v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  v78 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v46((v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v45);
  *(v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v54 = (v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v54 = 0;
  v54[1] = 0;
  *(v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v55 = (v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v55 = 0;
  v55[1] = 0;
  v56 = (v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v56[1] = 0;
  v56[2] = 0;
  *v56 = 0;
  sub_1C2F75DDC();
  (*(v98 + 16))(v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v47, v96);
  v57 = (v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v58 = v80;
  *v57 = v82;
  v57[1] = v58;
  v59 = *v53;
  v60 = *(v53 + 8);
  v62 = *(v53 + 16);
  v61 = *(v53 + 24);
  v63 = v38;

  v65 = v90;
  v64 = v91;
  v66 = v79;
  sub_1C2F4F434(v90, v91, v79);
  sub_1C2F4F468(v59, v60, v62, v61);
  *v53 = v65;
  *(v53 + 8) = v64;
  *(v53 + 16) = v66;
  *(v53 + 24) = v63;
  v82 = v63;
  v67 = v84;
  v68 = v83;
  sub_1C2F4F4BC(v99, v83);
  v69 = v78;
  sub_1C2F4F548(v51 + v78);
  v70 = v85;
  sub_1C2F4F72C(v68, v51 + v69);
  *(v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v71 = (v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v71 = v86;
  v71[1] = v70;
  v72 = (v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  v73 = (v51 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v72 = v87;
  v72[1] = v67;
  swift_beginAccess();
  if (v73[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v78 - 3) = 0;
    *(&v78 - 2) = 0;
    *(&v78 - 4) = v51;
    v101 = v51;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v73 = 0;
    v73[1] = 0;
  }

  v75 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v51 + v75))
  {
    v76 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v76);
    *(&v78 - 2) = v51;
    *(&v78 - 1) = 0;
    v100 = v51;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  sub_1C2F4F4AC(v90, v91, v81 & 1);

  (*(v98 + 8))(v97, v96);
  sub_1C2F4F548(v99);
  return v51;
}

uint64_t static FTMenuItem.deskViewRow()()
{
  v56 = 0;
  v0 = sub_1C2F75AEC();
  v59 = *(v0 - 8);
  v60 = v0;
  v1 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v58 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v53 - v7);
  v9 = sub_1C2F75C8C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = sub_1C2F7669C();
  v11 = *(v55 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v55);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v53 - v16;
  v18 = sub_1C2F7642C();

  v19 = sub_1C2F7641C();

  sub_1C2F7636C();
  sub_1C2F7635C();
  v57 = sub_1C2F7637C();

  v63 = v18;
  v20 = sub_1C2F7632C();
  v63 = v19;
  v21 = sub_1C2F7632C();

  sub_1C2F7663C();
  v22 = v55;
  (*(v11 + 16))(v15, v17, v55);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v25 = sub_1C2F766EC();
  v53[0] = v26;
  (*(v11 + 8))(v17, v22);
  *v8 = 0x776569766B736564;
  v8[1] = 0xE800000000000000;
  v8[2] = v20;
  v8[3] = v21;
  v8[4] = v57;
  v27 = type metadata accessor for FTMenuItem.IconType(0);
  v8[5] = 0;
  v8[6] = 0;
  swift_storeEnumTagMultiPayload();
  v28 = *(*(v27 - 8) + 56);
  v28(v8, 0, 1, v27);

  v55 = v20;
  v29 = v8;

  v53[1] = v21;

  v30 = v58;
  sub_1C2F75ADC();
  v31 = type metadata accessor for FTMenuItem(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  v35 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v35 = 0;
  v35[1] = 0;
  v36 = v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v36 = 0u;
  *(v36 + 16) = 0u;
  v37 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v28((v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v27);
  *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v38 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v38 = 0;
  v38[1] = 0;
  *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v39 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v40[1] = 0;
  v40[2] = 0;
  *v40 = 0;
  sub_1C2F75DDC();
  (*(v59 + 16))(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v30, v60);
  v41 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v42 = v53[0];
  *v41 = v25;
  v41[1] = v42;
  sub_1C2F4F468(*v36, *(v36 + 8), *(v36 + 16), *(v36 + 24));
  *v36 = 0u;
  *(v36 + 16) = 0u;
  v43 = v29;
  v44 = v29;
  v45 = v54;
  sub_1C2F4F4BC(v44, v54);
  sub_1C2F4F548(v34 + v37);
  sub_1C2F4F72C(v45, v34 + v37);
  *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v46 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v46 = nullsub_1;
  v46[1] = 0;
  v47 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v47 = nullsub_1;
  v47[1] = 0;
  v48 = (v34 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v48[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v53[-3] = 0;
    v53[-2] = 0;
    v53[-4] = v34;
    v62 = v34;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
    *v48 = 0;
    v48[1] = 0;
  }

  v50 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v34 + v50))
  {
    v51 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v51);
    v53[-2] = v34;
    v53[-1] = 0;
    v61 = v34;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
  }

  (*(v59 + 8))(v58, v60);
  sub_1C2F4F548(v43);
  return v34;
}

uint64_t static FTMenuItem.genericContextMenuRow(title:icon:dismissOnTap:rowAction:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v49 = a5;
  v50 = 0;
  v48 = a4;
  v9 = sub_1C2F75AEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  sub_1C2F4F4BC(a3, &v46 - v19);
  sub_1C2F75ADC();
  v21 = type metadata accessor for FTMenuItem(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = (v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v25 = 0;
  v25[1] = 0;
  v26 = v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  v27 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v28 = type metadata accessor for FTMenuItem.IconType(0);
  (*(*(v28 - 8) + 56))(v24 + v27, 1, 1, v28);
  *(v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v29 = (v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v29 = 0;
  v29[1] = 0;
  *(v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v30 = (v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v31[1] = 0;
  v31[2] = 0;
  *v31 = 0;
  sub_1C2F75DDC();
  v51 = v13;
  v52 = v10;
  v32 = *(v10 + 16);
  v53 = v9;
  v32(v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v13, v9);
  v33 = (v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  *v33 = a1;
  v33[1] = a2;
  v35 = *v26;
  v34 = *(v26 + 8);
  v37 = *(v26 + 16);
  v36 = *(v26 + 24);
  v38 = v47;

  sub_1C2F4F468(v35, v34, v37, v36);
  *v26 = 0u;
  *(v26 + 16) = 0u;
  sub_1C2F4F4BC(v20, v18);
  sub_1C2F4F548(v24 + v27);
  sub_1C2F4F72C(v18, v24 + v27);
  *(v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
  *(v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = v48;
  *(v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v39 = (v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v39 = v49;
  v39[1] = v38;
  v40 = (v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v40 = nullsub_1;
  v40[1] = 0;
  v41 = (v24 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v41[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v46 - 3) = 0;
    *(&v46 - 2) = 0;
    *(&v46 - 4) = v24;
    v55 = v24;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v41 = 0;
    v41[1] = 0;
  }

  v43 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v24 + v43))
  {
    v44 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v44);
    *(&v46 - 2) = v24;
    *(&v46 - 1) = 0;
    v54 = v24;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  (*(v52 + 8))(v51, v53);
  sub_1C2F4F548(v20);
  return v24;
}

uint64_t static FTMenuItem.routeMenuRow(title:subtitle:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a1;
  v58 = a2;
  v59 = 0;
  v8 = sub_1C2F75AEC();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v56 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - v16;
  v63 = &v53 - v16;
  v68 = a3;
  v69 = a4;
  sub_1C2EF66C8();

  v64 = sub_1C2F763AC();
  v55 = v18;
  v20 = v19;
  v60 = v21;
  v22 = v21 & 1;
  sub_1C2F4F800(a5, v17);
  v23 = type metadata accessor for FTMenuItem.IconType(0);
  v24 = *(*(v23 - 8) + 56);
  v24(v17, 0, 1, v23);
  sub_1C2F75ADC();
  v25 = type metadata accessor for FTMenuItem(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v29 = 0;
  v29[1] = 0;
  v30 = v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  v54 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v24((v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v23);
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v31 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v31 = 0;
  v31[1] = 0;
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v32 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v33[1] = 0;
  v33[2] = 0;
  *v33 = 0;
  sub_1C2F75DDC();
  v34 = *(v65 + 16);
  v61 = v11;
  v62 = v8;
  v34(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v11, v8);
  v35 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v36 = v58;
  *v35 = v57;
  v35[1] = v36;
  v37 = *v30;
  v38 = *(v30 + 8);
  v40 = *(v30 + 16);
  v39 = *(v30 + 24);

  v41 = v20;

  v42 = v64;
  v43 = v55;
  sub_1C2F4F434(v64, v55, v22);
  sub_1C2F4F468(v37, v38, v40, v39);
  *v30 = v42;
  *(v30 + 8) = v43;
  *(v30 + 16) = v22;
  *(v30 + 24) = v41;
  v44 = v56;
  sub_1C2F4F4BC(v63, v56);
  v45 = v54;
  sub_1C2F4F548(v28 + v54);
  sub_1C2F4F72C(v44, v28 + v45);
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v46 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v46 = nullsub_1;
  v46[1] = 0;
  v47 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v47 = nullsub_1;
  v47[1] = 0;
  v48 = (v28 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v48[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v53 - 3) = 0;
    *(&v53 - 2) = 0;
    *(&v53 - 4) = v28;
    v67 = v28;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
    *v48 = 0;
    v48[1] = 0;
  }

  v50 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v28 + v50))
  {
    v51 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v51);
    *(&v53 - 2) = v28;
    *(&v53 - 1) = 0;
    v66 = v28;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  sub_1C2F4F4AC(v64, v43, v60 & 1);

  (*(v65 + 8))(v61, v62);
  sub_1C2F4F548(v63);
  return v28;
}

uint64_t sub_1C2F4EF4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C2F75ABC();
}

uint64_t sub_1C2F4EF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = (a1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  swift_beginAccess();
  v9 = *v4;
  v10 = v4[1];
  sub_1C2EF66C8();

  result = sub_1C2F763AC();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_1C2F4F064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2F7645C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  swift_getKeyPath();
  v28 = a1;
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v16 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  swift_beginAccess();
  sub_1C2F4F4BC(a1 + v16, v15);
  v17 = type metadata accessor for FTMenuItem.IconType(0);
  if ((*(*(v17 - 8) + 48))(v15, 1, v17) == 1)
  {
    goto LABEL_5;
  }

  sub_1C2F4F4BC(v15, v13);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C2F51218(v13);
LABEL_5:
    v24 = 0;
    v25 = 1;
    sub_1C2F7633C();
    goto LABEL_6;
  }

  v18 = *v13;
  (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
  v19 = sub_1C2F7646C();
  (*(v5 + 8))(v8, v4);
  v24 = v19;
  v25 = 0;
  swift_retain_n();
  sub_1C2F7633C();

LABEL_6:
  v20 = v26;
  v21 = v27;
  result = sub_1C2F4F548(v15);
  *a2 = v20;
  *(a2 + 8) = v21;
  return result;
}

uint64_t sub_1C2F4F3F0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C2F4F434(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C2F4F434(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C2F4F468(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C2F4F4AC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C2F4F4AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C2F4F4BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2F4F548(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F4F6B4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_1C2F4F72C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2F4F79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMenuItem.IconType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2F4F800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMenuItem.IconType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s20CommunicationsUICore10FTMenuItemC30liveTranslationDefaultSubtitle7isVideoSSSb_tFZ_0()
{
  v0 = sub_1C2F75C8C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1C2F7669C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  sub_1C2F7663C();
  (*(v3 + 16))(v7, v9, v2);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v12 = sub_1C2F766EC();
  (*(v3 + 8))(v9, v2);
  return v12;
}

uint64_t _s20CommunicationsUICore10FTMenuItemC13splitCallsRow5titleACSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v53 = a2;
  v57 = 0;
  v2 = sub_1C2F75AEC();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v51 - v10);
  v12 = sub_1C2F764DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  v20 = sub_1C2F7642C();

  sub_1C2F764CC();
  sub_1C2F7636C();
  sub_1C2F7635C();
  v21 = sub_1C2F7637C();

  v64 = v20;
  v22 = sub_1C2F7632C();
  (*(v13 + 16))(v17, v19, v12);
  v23 = sub_1C2F7632C();

  (*(v13 + 8))(v19, v12);
  *v11 = 0xD000000000000019;
  v11[1] = 0x80000001C2F7FE10;
  v11[2] = v22;
  v11[3] = v23;
  v11[4] = v21;
  v24 = type metadata accessor for FTMenuItem.IconType(0);
  v11[5] = 0;
  v11[6] = 0;
  swift_storeEnumTagMultiPayload();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 0, 1, v24);
  v58 = 0x80000001C2F7FE10;

  v56 = v22;

  v54 = v23;

  v55 = v21;

  sub_1C2F75ADC();
  v26 = type metadata accessor for FTMenuItem(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v30 = (v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v30 = 0;
  v30[1] = 0;
  v31 = v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  v32 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v25((v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v24);
  *(v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v33 = (v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v33 = 0;
  v33[1] = 0;
  *(v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v34 = (v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v35[1] = 0;
  v35[2] = 0;
  *v35 = 0;
  sub_1C2F75DDC();
  v36 = *(v60 + 16);
  v59 = v5;
  v36(v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v5, v61);
  v37 = (v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v38 = v53;
  *v37 = v52;
  v37[1] = v38;
  v39 = *v31;
  v40 = *(v31 + 8);
  v41 = *(v31 + 16);
  v42 = *(v31 + 24);

  sub_1C2F4F468(v39, v40, v41, v42);
  *v31 = 0u;
  *(v31 + 16) = 0u;
  v43 = v51;
  sub_1C2F4F4BC(v11, v51);
  sub_1C2F4F548(v29 + v32);
  sub_1C2F4F72C(v43, v29 + v32);
  *(v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
  *(v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v44 = (v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v44 = nullsub_1;
  v44[1] = 0;
  v45 = (v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v45 = nullsub_1;
  v45[1] = 0;
  v46 = (v29 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v46[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v51 - 3) = 0;
    *(&v51 - 2) = 0;
    *(&v51 - 4) = v29;
    v63 = v29;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
    *v46 = 0;
    v46[1] = 0;
  }

  v48 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v29 + v48))
  {
    v49 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v49);
    *(&v51 - 2) = v29;
    *(&v51 - 1) = 0;
    v62 = v29;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
  }

  (*(v60 + 8))(v59, v61);
  sub_1C2F4F548(v11);
  return v29;
}

uint64_t _s20CommunicationsUICore10FTMenuItemC24conferenceParticipantRow5title8iconType13endCallActionACSS_AC04IconJ0OSgyyctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v7 = sub_1C2F75AEC();
  v8 = *(v7 - 8);
  v9 = v8;
  v41 = v7;
  v42 = v8;
  v10 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  sub_1C2F4F4BC(a3, &v41 - v18);
  v44 = sub_1C2F763FC();
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
  (*(v9 + 16))(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v12, v7);
  v31 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v32 = v43;
  *v31 = a1;
  v31[1] = v32;
  v34 = *v25;
  v33 = *(v25 + 8);
  v36 = *(v25 + 16);
  v35 = *(v25 + 24);

  sub_1C2F4F468(v34, v33, v36, v35);
  *v25 = 0u;
  *(v25 + 16) = 0u;
  sub_1C2F4F4BC(v19, v17);
  sub_1C2F4F548(v23 + v26);
  sub_1C2F4F72C(v17, v23 + v26);
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 1;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v37 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v37 = nullsub_1;
  v37[1] = 0;
  v38 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  v39 = v46;
  *v38 = v45;
  v38[1] = v39;

  sub_1C2F4839C(6581829, 0xE300000000000000);
  sub_1C2F48914(v44);
  (*(v42 + 8))(v12, v41);
  sub_1C2F4F548(v19);
  return v23;
}

unint64_t sub_1C2F50568()
{
  result = qword_1EC076C88;
  if (!qword_1EC076C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C88);
  }

  return result;
}

void sub_1C2F5060C()
{
  v0 = sub_1C2F75AEC();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1C2F50E84();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1C2F75DEC();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C2F50E84()
{
  if (!qword_1EDEBD5A8[0])
  {
    type metadata accessor for FTMenuItem.IconType(255);
    v0 = sub_1C2F76ADC();
    if (!v1)
    {
      atomic_store(v0, qword_1EDEBD5A8);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C2F50EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2F50F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2F50FEC()
{
  result = sub_1C2F75A5C();
  if (v1 <= 0x3F)
  {
    result = sub_1C2F208DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C2F5108C()
{
  result = qword_1EC076630;
  if (!qword_1EC076630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC076620, &qword_1C2F79E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076630);
  }

  return result;
}

uint64_t sub_1C2F510F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_1C2F51128@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1C2F51158()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C2F51180()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C2F511A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2F51218(uint64_t a1)
{
  v2 = type metadata accessor for FTMenuItem.IconType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F51344()
{
  v1[2] = v0;
  sub_1C2F7688C();
  v1[3] = sub_1C2F7687C();
  v3 = sub_1C2F7684C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C2F513DC, v3, v2);
}

uint64_t sub_1C2F513DC()
{
  if ([*(v0[2] + 56) audioCallTranslationEnabled])
  {
    v1 = v0[2];
    v2 = v1[5];
    v3 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
    v4 = *(v3 + 16);
    v11 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_1C2F51560;

    return v11(v2, v3);
  }

  else
  {
    v8 = v0[3];

    v9 = v0[1];
    v10 = MEMORY[0x1E69E7CC0];

    return v9(v10);
  }
}

uint64_t sub_1C2F51560(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = a1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1C2F51688, v5, v4);
}

uint64_t sub_1C2F51688()
{
  v1 = v0[3];

  v2 = v0[7];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1C2F516EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_1C2F75E3C();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v10 = sub_1C2F75C8C();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_1C2F7688C();
  v2[16] = sub_1C2F7687C();
  v14 = sub_1C2F7684C();
  v2[17] = v14;
  v2[18] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1C2F518EC, v14, v13);
}

uint64_t sub_1C2F518EC()
{
  v1 = *(v0[3] + 56);
  v0[19] = v1;
  if ([v1 audioCallTranslationEnabled])
  {
    v2 = v0[15];
    v0[20] = sub_1C2F7687C();
    v4 = sub_1C2F7684C();
    v0[21] = v4;
    v0[22] = v3;

    return MEMORY[0x1EEE6DFA0](sub_1C2F51A10, v4, v3);
  }

  else
  {
    v5 = v0[16];

    v6 = v0[14];
    v7 = v0[10];
    v8 = v0[11];
    v10 = v0[6];
    v9 = v0[7];

    v11 = v0[1];
    v12 = MEMORY[0x1E69E7CC0];

    return v11(v12);
  }
}

uint64_t sub_1C2F51A10()
{
  if ([*(v0 + 152) audioCallTranslationEnabled])
  {
    v1 = *(v0 + 24);
    v2 = v1[5];
    v3 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
    v4 = *(v3 + 16);
    v11 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v6[1] = sub_1C2F51B98;

    return v11(v2, v3);
  }

  else
  {
    v8 = *(v0 + 160);

    *(v0 + 200) = MEMORY[0x1E69E7CC0];
    v9 = *(v0 + 136);
    v10 = *(v0 + 144);

    return MEMORY[0x1EEE6DFA0](sub_1C2F51D2C, v9, v10);
  }
}

uint64_t sub_1C2F51B98(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = a1;

  v4 = *(v2 + 176);
  v5 = *(v2 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1C2F51CC0, v5, v4);
}

uint64_t sub_1C2F51CC0()
{
  v1 = v0[20];

  v0[25] = v0[24];
  v2 = v0[17];
  v3 = v0[18];

  return MEMORY[0x1EEE6DFA0](sub_1C2F51D2C, v2, v3);
}

uint64_t sub_1C2F51D2C()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);
  *(v0 + 208) = v2;
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v6 = *(v5 + 80);
    *(v0 + 264) = v6;
    *(v0 + 216) = *(v5 + 72);
    v7 = *(v5 + 16);
    *(v0 + 268) = *MEMORY[0x1E6982BD8];
    *(v0 + 272) = *MEMORY[0x1E6982BD0];
    v8 = MEMORY[0x1E69E7CC0];
    *(v0 + 224) = v7;
    *(v0 + 232) = 0;
    v9 = *(v0 + 112);
    v10 = *(v0 + 56);
    *(v0 + 240) = v8;
    *(v0 + 248) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v9, v1 + ((v6 + 32) & ~v6), v4);
    v11 = v3[5];
    v12 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v11);
    v7(v10, v9, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    v13 = *(v12 + 8);
    v28 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 256) = v15;
    *v15 = v0;
    v15[1] = sub_1C2F51FCC;
    v16 = *(v0 + 88);
    v17 = *(v0 + 56);
    v18 = *(v0 + 16);

    return v28(v16, v18, v17, v11, v12);
  }

  else
  {
    v20 = *(v0 + 128);

    v21 = *(v0 + 112);
    v22 = *(v0 + 80);
    v23 = *(v0 + 88);
    v25 = *(v0 + 48);
    v24 = *(v0 + 56);

    v26 = *(v0 + 8);
    v27 = MEMORY[0x1E69E7CC0];

    return v26(v27);
  }
}

uint64_t sub_1C2F51FCC()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 56);
  v7 = *v0;

  sub_1C2F0A8D8(v3, &unk_1EC076A90, &qword_1C2F78FF0);
  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1C2F52120, v5, v4);
}

uint64_t sub_1C2F52120()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v3 + 104);
  v4(v1, *(v0 + 268), v2);
  v5 = sub_1C2F75E2C();
  v6 = *(v3 + 8);
  v6(v1, v2);
  if (v5 & 1) != 0 || (v7 = *(v0 + 80), v8 = *(v0 + 64), v4(v7, *(v0 + 272), v8), v9 = sub_1C2F75E2C(), v6(v7, v8), (v9))
  {
    v11 = *(v0 + 240);
    v10 = *(v0 + 248);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v15 = *(v0 + 48);
    v16 = *(*(v0 + 32) + 48);
    (*(v0 + 224))(v15, *(v0 + 112), *(v0 + 96));
    (*(v14 + 16))(v15 + v16, v12, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v0 + 240);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1C2F1C098(0, v18[2] + 1, 1, *(v0 + 240));
    }

    v20 = v18[2];
    v19 = v18[3];
    v21 = v6;
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1C2F1C098(v19 > 1, v20 + 1, 1, v18);
    }

    v23 = *(v0 + 104);
    v22 = *(v0 + 112);
    v24 = *(v0 + 96);
    v26 = *(v0 + 40);
    v25 = *(v0 + 48);
    v21(*(v0 + 88), *(v0 + 64));
    (*(v23 + 8))(v22, v24);
    v18[2] = v20 + 1;
    sub_1C2F52F80(v25, v18 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v20);
  }

  else
  {
    v28 = *(v0 + 104);
    v27 = *(v0 + 112);
    v29 = *(v0 + 96);
    v6(*(v0 + 88), *(v0 + 64));
    (*(v28 + 8))(v27, v29);
    v18 = *(v0 + 240);
  }

  v30 = *(v0 + 232) + 1;
  if (v30 == *(v0 + 208))
  {
    v31 = *(v0 + 200);
    v32 = *(v0 + 128);

    v33 = *(v0 + 112);
    v35 = *(v0 + 80);
    v34 = *(v0 + 88);
    v37 = *(v0 + 48);
    v36 = *(v0 + 56);

    v38 = *(v0 + 8);

    return v38(v18);
  }

  else
  {
    *(v0 + 232) = v30;
    *(v0 + 240) = v18;
    v40 = *(v0 + 224);
    v42 = *(v0 + 104);
    v41 = *(v0 + 112);
    v43 = *(v0 + 96);
    v44 = *(v0 + 56);
    v45 = *(v0 + 24);
    v46 = *(v0 + 200) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 216) * v30;
    *(v0 + 248) = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v40(v41, v46, v43);
    v47 = v45[5];
    v48 = v45[6];
    __swift_project_boxed_opaque_existential_1(v45 + 2, v47);
    v40(v44, v41, v43);
    (*(v42 + 56))(v44, 0, 1, v43);
    v49 = *(v48 + 8);
    v55 = (v49 + *v49);
    v50 = v49[1];
    v51 = swift_task_alloc();
    *(v0 + 256) = v51;
    *v51 = v0;
    v51[1] = sub_1C2F51FCC;
    v52 = *(v0 + 88);
    v53 = *(v0 + 56);
    v54 = *(v0 + 16);

    return v55(v52, v54, v53, v47, v48);
  }
}

uint64_t LanguageAssetManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t sub_1C2F52594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC076C90, qword_1C2F7C9E8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_1C2F75C6C();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2F526C8, 0, 0);
}

uint64_t sub_1C2F526C8()
{
  v1 = v0[10];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_1C2F75C7C();
  sub_1C2EF5C98(v3, v2);
  v5 = sub_1C2F75C8C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    sub_1C2F0A8D8(v0[6], &unk_1EC076A90, &qword_1C2F78FF0);
    v7 = 1;
  }

  else
  {
    v9 = v0[6];
    v8 = v0[7];
    sub_1C2F75C7C();
    (*(v6 + 8))(v9, v5);
    v7 = 0;
  }

  (*(v0[9] + 56))(v0[7], v7, 1, v0[8]);
  v10 = *(MEMORY[0x1E6982BF0] + 4);
  v17 = (*MEMORY[0x1E6982BF0] + MEMORY[0x1E6982BF0]);
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_1C2F52860;
  v12 = v0[10];
  v13 = v0[7];
  v14 = v0[5];
  v15 = v0[2];

  return v17(v15, v12, v13);
}

uint64_t sub_1C2F52860()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v9 = *v0;

  sub_1C2F0A8D8(v5, qword_1EC076C90, qword_1C2F7C9E8);
  (*(v3 + 8))(v2, v4);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1C2F52A10()
{
  v1 = sub_1C2F75C6C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_1C2F75C8C();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v7 = *(MEMORY[0x1E6982BC0] + 4);
  v10 = (*MEMORY[0x1E6982BC0] + MEMORY[0x1E6982BC0]);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1C2F52B68;

  return v10();
}

uint64_t sub_1C2F52B68(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C2F52C68, 0, 0);
}

uint64_t sub_1C2F52C68()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[3];
    v24 = MEMORY[0x1E69E7CC0];
    sub_1C2EF671C(0, v2, 0);
    v5 = v24;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v22 = *(v4 + 56);
    v23 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[7];
      v10 = v0[4];
      v11 = v0[2];
      v23(v10, v7, v11);
      sub_1C2F75C1C();
      sub_1C2F75AFC();
      (*v8)(v10, v11);
      v13 = *(v24 + 16);
      v12 = *(v24 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C2EF671C(v12 > 1, v13 + 1, 1);
      }

      v14 = v0[7];
      v15 = v0[5];
      *(v24 + 16) = v13 + 1;
      (*(v3 + 32))(v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v14, v15);
      v7 += v22;
      --v2;
    }

    while (v2);
    v16 = v0[9];
  }

  else
  {
    v17 = v0[9];

    v5 = MEMORY[0x1E69E7CC0];
  }

  v18 = v0[7];
  v19 = v0[4];

  v20 = v0[1];

  return v20(v5);
}

uint64_t sub_1C2F52E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C2F06348;

  return sub_1C2F52594(a1, a2, a3);
}

uint64_t sub_1C2F52EF0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C2F06110;

  return sub_1C2F52A10();
}

uint64_t sub_1C2F52F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of LanguageAssetManager.supportedLanguages()()
{
  v2 = *(*v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C2F06110;

  return v6();
}

uint64_t dispatch thunk of LanguageAssetManager.supportTranslationLanguages(_:)(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C2F53238;

  return v8(a1);
}

uint64_t sub_1C2F5323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1C2F06348;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_1C2F53380(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F06110;

  return v9(a1, a2);
}

void _Streamed.wrappedValue.getter(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 88);
  type metadata accessor for _Streamed.State();
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1C2F535F4(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t _Streamed.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1C2F54B04();
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1C2F535F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = type metadata accessor for _Streamed.State();
  return (*(*(v6 - 8) + 16))(a2, a1 + *(v7 + 40), v6);
}

uint64_t sub_1C2F53688(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v33 - v7;
  v40 = sub_1C2F768CC();
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v33 - v10;
  v11 = sub_1C2F7691C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v33 - v14;
  v15 = v1[2];
  v45 = v4;
  v46 = *(v3 + 88);
  v47 = a1;
  v42 = v4;
  v43 = a1;
  type metadata accessor for _Streamed.State();
  v38 = v11;
  sub_1C2F765CC();
  sub_1C2F76ADC();
  v16 = *(*v15 + *MEMORY[0x1E69E6B68] + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  sub_1C2F5539C(v15 + v16, &v48);
  os_unfair_lock_unlock((v15 + v17));
  result = v48;
  if (v48)
  {
    v19 = v48 + 64;
    v20 = 1 << *(v48 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v48 + 64);
    v23 = (v20 + 63) >> 6;
    v34 = (v5 + 16);
    v35 = v12 + 16;
    v36 = v12;
    v33 = v12 + 8;
    v24 = (v8 + 8);
    v44 = v48;

    v25 = 0;
    v26 = v36;
    for (i = v39; v22; result = (*v24)(i, v40))
    {
      v28 = v25;
      v29 = v44;
LABEL_11:
      v30 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v31 = v37;
      v32 = v38;
      (*(v26 + 16))(v37, *(v29 + 56) + *(v26 + 72) * (v30 | (v28 << 6)), v38);
      (*v34)(v41, v43, v42);
      sub_1C2F768FC();
      (*(v26 + 8))(v31, v32);
    }

    v29 = v44;
    while (1)
    {
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
      }

      v22 = *(v19 + 8 * v28);
      ++v25;
      if (v22)
      {
        v25 = v28;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void (*_Streamed.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  _Streamed.wrappedValue.getter(v9);
  return sub_1C2F53B84;
}

void sub_1C2F53B84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_1C2F53688(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1C2F53688((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *_Streamed.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_1C2F54B84(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

void *_Streamed.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1C2F54B84(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t _Streamed.deinit()
{
  sub_1C2F53D7C();
  v1 = *(v0 + 16);

  return v0;
}

void sub_1C2F53D7C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1C2F7691C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v8 = v0[2];
  v21[4] = v2;
  v21[5] = *(v1 + 88);
  type metadata accessor for _Streamed.State();
  sub_1C2F765EC();
  v9 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_1C2F552E8(v8 + v9, &v22);
  os_unfair_lock_unlock((v8 + v10));
  v11 = 0;
  v12 = v22;
  v14 = v22 + 64;
  v13 = *(v22 + 64);
  v15 = 1 << *(v22 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v21[1] = v4 + 16;
  if ((v16 & v13) != 0)
  {
    do
    {
      v19 = v11;
LABEL_9:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      (*(v4 + 16))(v7, *(v12 + 56) + *(v4 + 72) * (v20 | (v19 << 6)), v3);
      sub_1C2F7690C();
      (*(v4 + 8))(v7, v3);
    }

    while (v17);
  }

  while (1)
  {
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(v14 + 8 * v19);
    ++v11;
    if (v17)
    {
      v11 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t _Streamed.__deallocating_deinit()
{
  sub_1C2F53D7C();
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t _Streamed.projectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = v2;
  v6 = sub_1C2F768CC();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = v40 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = TupleTypeMetadata2 - 8;
  v11 = *(*(TupleTypeMetadata2 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = v40 - v13;
  v43 = *(v4 - 8);
  v15 = *(v43 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v45 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v41 = v40 - v18;
  v19 = sub_1C2F768EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v40 - v22;
  v24 = sub_1C2F7691C();
  v44 = *(v24 - 8);
  v25 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v40 - v26;
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8650], v19);
  sub_1C2F768BC();
  (*(v20 + 8))(v23, v19);
  v40[1] = v5;
  v28 = v5[2];
  v49 = v4;
  v50 = *(v3 + 88);
  v29 = v50;
  v51 = v27;
  type metadata accessor for _Streamed.State();
  v30 = *(*v28 + *MEMORY[0x1E69E6B68] + 16);
  v31 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v28 + v31));
  sub_1C2F54D64((v28 + v30), v14);
  os_unfair_lock_unlock((v28 + v31));
  v32 = *v14;
  v33 = v43;
  v34 = &v14[*(v10 + 56)];
  v35 = v41;
  (*(v43 + 32))(v41, v34, v4);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  v37[2] = v4;
  v37[3] = v29;
  v37[4] = v36;
  v37[5] = v32;
  sub_1C2F768DC();
  (*(v33 + 16))(v45, v35, v4);
  v38 = v46;
  sub_1C2F768FC();
  (*(v47 + 8))(v38, v48);
  (*(v33 + 8))(v35, v4);
  return (*(v44 + 8))(v27, v24);
}