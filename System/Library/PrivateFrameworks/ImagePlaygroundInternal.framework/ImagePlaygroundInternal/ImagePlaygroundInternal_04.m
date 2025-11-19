uint64_t sub_1D22F86B8(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 == (result & 1))
  {
    *(v1 + 16) = result & 1;
    if ((v2 & 1) == 0)
    {
      swift_getKeyPath();
      sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719E8();

      if (*(v1 + 16) == 1)
      {
        swift_getKeyPath();
        sub_1D28719E8();

        if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16) == 2)
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          sub_1D28719D8();

          return sub_1D2303ED4(0);
        }
      }
    }
  }

  else
  {
    v3 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v3);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D22F892C(uint64_t result, char a2)
{
  v2 = *(result + 16);
  *(result + 16) = a2;
  if ((v2 & 1) == 0)
  {
    v3 = result;
    swift_getKeyPath();
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if (*(v3 + 16))
    {
      swift_getKeyPath();
      sub_1D28719E8();

      if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16) == 2)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1D28719D8();

        return sub_1D2303ED4(0);
      }
    }
  }

  return result;
}

uint64_t sub_1D22F8ADC()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D22F8B80(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;
  sub_1D2870F78();
}

uint64_t sub_1D22F8BBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2871DD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1D233B278(&qword_1EC6DA1B0, MEMORY[0x1E696E290]);
  LOBYTE(v8) = sub_1D2877F98();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v8)
  {
    v9(v7, a1, v4);
    sub_1D22FCBA0(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[2] = v2;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1D22F8E60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldScaleDownBlobAfterSaveTrigger;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1D233B278(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
  v9 = sub_1D2877F98();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1D22F911C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = sub_1D2870F68();
  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22F92E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles;
  v4 = sub_1D2870F68();
  v5 = sub_1D2338564(v4, a1, MEMORY[0x1E696E310], &qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);

  if (v5)
  {
    *(v1 + v3) = a1;

    return sub_1D2307670();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22F9488(unsigned __int8 a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == a1)
  {

    return sub_1D2324CC4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22F95C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pregeneratedImageForLoadedRecipe;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &unk_1EC6DE5A0);
  v7 = sub_1D233D890(v5, a1);
  sub_1D22BD238(v5, &unk_1EC6DE5A0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D22D7384(a1, v1 + v6, &unk_1EC6DE5A0);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &unk_1EC6DE5A0);
}

uint64_t sub_1D22F97E4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName);
  v6 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1D2879618() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D22F9960(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(v5 + *a2) == (a1 & 1))
  {
    *(v5 + *a2) = a1 & 1;

    return a5();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22F9A8C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D2870F78();
  v5 = sub_1D2878698();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_1D22F9C0C(unsigned __int8 *a1)
{
  if (*(v1 + 40) == *a1)
  {

    return sub_1D22FC8E0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }
}

uint64_t ComposingViewModel.genmojiDelegate.setter()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D22F9E1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v20 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__defaultStyle;
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, v1 + v10, v4);
  sub_1D233B278(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v12 = sub_1D2877F98();
  v21 = *(v5 + 8);
  v21(v9, v4);
  if (v12)
  {
    v11(v9, a1, v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v10, v9, v4);
    swift_endAccess();
    sub_1D22FECC4();
    swift_getKeyPath();
    v19 = a1;
    v22 = v2;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();
    v13 = v19;

    v14 = v2 + v10;
    v15 = v20;
    v11(v20, v14, v4);
    sub_1D2643750(v15);

    v16 = v21;
    v21(v9, v4);
    return (v16)(v13, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = a1;
    v22 = v2;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();

    return (v21)(a1, v4);
  }
}

uint64_t sub_1D22FA1AC()
{
  v0 = sub_1D2874208();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_1D2874218();
    (*(v1 + 104))(v4, *MEMORY[0x1E6977D40], v0);
    v9 = sub_1D28741F8();
    v10 = *(v1 + 8);
    v10(v4, v0);
    v10(v6, v0);
    v11 = sub_1D2878568();
    MEMORY[0x1EEE9AC00](v11);
    *(&v12 - 2) = v8;
    *(&v12 - 8) = v9 & 1;
    sub_1D239DDE8(sub_1D2340BF4, (&v12 - 4));
  }

  return result;
}

uint64_t sub_1D22FA394(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22F86B8(a2);
  sub_1D2872658();
  v7 = sub_1D2873CA8();
  v8 = sub_1D2878A38();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a2 & 1;
    _os_log_impl(&dword_1D226E000, v7, v8, "isNetworkConnected %{BOOL}d", v9, 8u);
    MEMORY[0x1D38A3520](v9, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D22FA4FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__spotlightAvailabiilyCheckTask;
  if (!*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__spotlightAvailabiilyCheckTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  v4 = sub_1D2878698();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1D22FA6A0(void (*a1)(char *, uint64_t))
{
  v2 = sub_1D28727F8();
  v160 = *(v2 - 8);
  v161 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v159 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v166 = &v151 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v155 = &v151 - v7;
  v165 = sub_1D2872858();
  v162 = *(v165 - 8);
  v8 = MEMORY[0x1EEE9AC00](v165);
  v156 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v152 = &v151 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v164 = &v151 - v12;
  v13 = sub_1D2872868();
  v168 = *(v13 - 8);
  v169 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v174 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D28728C8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D2873CB8();
  v175 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v154 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v163 = &v151 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v157 = &v151 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v158 = &v151 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v153 = &v151 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v172 = &v151 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v151 - v35;
  sub_1D28726A8();
  v37 = *(v19 + 16);
  v173 = a1;
  v38 = v18;
  v37(v21, a1, v18);
  v39 = sub_1D2873CA8();
  v40 = sub_1D2878A38();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v171 = v17;
    v42 = v41;
    v43 = swift_slowAlloc();
    v167 = v22;
    v44 = v43;
    v176[0] = v43;
    *v42 = 136315138;
    v45 = sub_1D2872898();
    v170 = v15;
    v47 = v46;
    (*(v19 + 8))(v21, v38);
    v48 = sub_1D23D7C84(v45, v47, v176);
    v15 = v170;

    *(v42 + 4) = v48;
    _os_log_impl(&dword_1D226E000, v39, v40, "generativeModelsAvailabilityDidChange: GMS availability: current %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v49 = v44;
    v22 = v167;
    MEMORY[0x1D38A3520](v49, -1, -1);
    v50 = v42;
    v17 = v171;
    MEMORY[0x1D38A3520](v50, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v21, v38);
  }

  v51 = *(v175 + 8);
  v51(v36, v22);
  v52 = sub_1D28728A8();
  v53 = v174;
  if (v52)
  {
    swift_storeEnumTagMultiPayload();
    return sub_1D2306E7C(v17);
  }

  if (qword_1ED8A4928 == -1)
  {
    if (sub_1D23CDB68())
    {
LABEL_8:
      sub_1D28726A8();
      v55 = sub_1D2873CA8();
      v56 = sub_1D28789F8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = v22;
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1D226E000, v55, v56, "generativeModelsAvailabilityDidChange called with device compatibility check disabled; marking resources as available.", v58, 2u);
        v59 = v58;
        v22 = v57;
        MEMORY[0x1D38A3520](v59, -1, -1);
      }

      v51(v172, v22);
      sub_1D232B560();
      swift_storeEnumTagMultiPayload();
      return sub_1D2306E7C(v17);
    }
  }

  else
  {
    swift_once();
    if (sub_1D23CDB68())
    {
      goto LABEL_8;
    }
  }

  sub_1D2872878();
  v61 = v168;
  v60 = v169;
  v62 = (*(v168 + 88))(v53, v169);
  if (v62 == *MEMORY[0x1E69A0EF8])
  {
    v173 = v51;
    v170 = v15;
    v171 = v17;
    (*(v61 + 96))(v53, v60);
    v64 = v160;
    v63 = v161;
    v65 = v166;
    (*(v160 + 32))(v166, v53, v161);
    v66 = v163;
    sub_1D28726A8();
    v67 = *(v64 + 16);
    v68 = v159;
    v67(v159, v65, v63);
    v69 = sub_1D2873CA8();
    v70 = sub_1D2878A38();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v167 = v22;
      v72 = v71;
      v73 = swift_slowAlloc();
      v174 = v67;
      v74 = v73;
      v176[0] = v73;
      *v72 = 136315138;
      v75 = sub_1D28727C8();
      v77 = v76;
      v78 = v68;
      v79 = *(v64 + 8);
      v79(v78, v63);
      v80 = sub_1D23D7C84(v75, v77, v176);

      *(v72 + 4) = v80;
      _os_log_impl(&dword_1D226E000, v69, v70, "generativeModelsAvailabilityDidChange called with: restricted (%s)", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      v81 = v74;
      v67 = v174;
      MEMORY[0x1D38A3520](v81, -1, -1);
      MEMORY[0x1D38A3520](v72, -1, -1);

      v82 = v163;
      v83 = v167;
    }

    else
    {

      v112 = v68;
      v79 = *(v64 + 8);
      v79(v112, v63);
      v82 = v66;
      v83 = v22;
    }

    v173(v82, v83);
    v113 = v171;
    v114 = v166;
    v67(v171, v166, v63);
    swift_storeEnumTagMultiPayload();
    sub_1D2306E7C(v113);
    return (v79)(v114, v63);
  }

  else if (v62 == *MEMORY[0x1E69A0F00])
  {
    v167 = v22;
    v171 = v17;
    (*(v61 + 96))(v53, v60);
    (*(v162 + 32))(v164, v53, v165);
    v84 = sub_1D2872848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA218);
    v85 = sub_1D2872818();
    v86 = *(v85 - 8);
    v87 = *(v86 + 72);
    v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_1D287F550;
    v90 = v89 + v88;
    v91 = *(v86 + 104);
    v91(v90, *MEMORY[0x1E69A1090], v85);
    v91(v90 + v87, *MEMORY[0x1E69A1130], v85);
    v92 = sub_1D24002F0(v89);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    LOBYTE(v85) = sub_1D232B904(v92, v84);

    v170 = v15;
    if ((v85 & 1) != 0 || (sub_1D22BCFD0(0, &qword_1ED89CDA0), v93 = sub_1D2878A58(), v94 = sub_1D2878068(), v95 = [v93 BOOLForKey_], v93, v94, !v95))
    {
      v123 = v158;
      sub_1D28726A8();
      v124 = v162;
      v125 = *(v162 + 16);
      v126 = v156;
      v127 = v165;
      v125(v156, v164, v165);
      v128 = sub_1D2873CA8();
      v129 = sub_1D2878A38();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v174 = v125;
        v132 = v131;
        v176[0] = v131;
        *v130 = 136315138;
        v133 = sub_1D2872828();
        v134 = v126;
        v136 = v135;
        v137 = *(v124 + 8);
        v137(v134, v165);
        v138 = sub_1D23D7C84(v133, v136, v176);

        *(v130 + 4) = v138;
        _os_log_impl(&dword_1D226E000, v128, v129, "generativeModelsAvailabilityDidChange called with: unavailable (%s)", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v132);
        v139 = v132;
        v125 = v174;
        MEMORY[0x1D38A3520](v139, -1, -1);
        v140 = v130;
        v127 = v165;
        MEMORY[0x1D38A3520](v140, -1, -1);

        v141 = v158;
      }

      else
      {

        v137 = *(v124 + 8);
        v137(v126, v127);
        v141 = v123;
      }

      v51(v141, v167);
      v148 = v171;
      v149 = v164;
      v125(v171, v164, v127);
      swift_storeEnumTagMultiPayload();
      sub_1D2306E7C(v148);
      return (v137)(v149, v127);
    }

    else
    {
      v96 = v153;
      sub_1D28726A8();
      v97 = v162;
      v98 = v152;
      v99 = v165;
      (*(v162 + 16))(v152, v164, v165);
      v100 = sub_1D2873CA8();
      v101 = sub_1D2878A38();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v176[0] = v103;
        *v102 = 136315138;
        v104 = sub_1D2872828();
        v105 = v98;
        v107 = v106;
        v108 = *(v97 + 8);
        v108(v105, v165);
        v109 = sub_1D23D7C84(v104, v107, v176);

        *(v102 + 4) = v109;
        _os_log_impl(&dword_1D226E000, v100, v101, "generativeModelsAvailabilityDidChange called with: unavailable (%s), ignoring", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v103);
        MEMORY[0x1D38A3520](v103, -1, -1);
        v110 = v102;
        v99 = v165;
        MEMORY[0x1D38A3520](v110, -1, -1);

        v111 = v153;
      }

      else
      {

        v108 = *(v97 + 8);
        v108(v98, v99);
        v111 = v96;
      }

      v51(v111, v167);
      sub_1D232B560();
      v150 = v171;
      swift_storeEnumTagMultiPayload();
      sub_1D2306E7C(v150);
      return (v108)(v164, v99);
    }
  }

  else if (v62 == *MEMORY[0x1E69A11A0])
  {
    sub_1D28726A8();
    v115 = sub_1D2873CA8();
    v116 = sub_1D2878A38();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = v22;
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_1D226E000, v115, v116, "generativeModelsAvailabilityDidChange called with: available", v118, 2u);
      v119 = v118;
      v22 = v117;
      MEMORY[0x1D38A3520](v119, -1, -1);
    }

    v51(v157, v22);
    v120 = v155;
    sub_1D2878578();
    v121 = sub_1D28785F8();
    (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
    v122 = swift_allocObject();
    *(v122 + 16) = 0;
    *(v122 + 24) = 0;
    sub_1D26D0050(0, 0, v120, &unk_1D2881E88, v122);

    sub_1D22BD238(v120, &qword_1EC6D8E60);
    swift_storeEnumTagMultiPayload();
    sub_1D2306E7C(v17);
    return sub_1D232B560();
  }

  else
  {
    v142 = v154;
    sub_1D28726A8();
    v143 = sub_1D2873CA8();
    v144 = sub_1D2878A38();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = v22;
      v146 = swift_slowAlloc();
      *v146 = 0;
      _os_log_impl(&dword_1D226E000, v143, v144, "generativeModelsAvailabilityDidChange called with: unknown case", v146, 2u);
      v147 = v146;
      v22 = v145;
      MEMORY[0x1D38A3520](v147, -1, -1);
    }

    v51(v142, v22);
    return (*(v168 + 8))(v53, v169);
  }
}

uint64_t sub_1D22FB808(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1D2873CB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1D28726A8();
    v13 = sub_1D2873CA8();
    v14 = sub_1D28789F8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D226E000, v13, v14, "Received GMS availability didChange notification", v15, 2u);
      MEMORY[0x1D38A3520](v15, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    v16 = sub_1D28785F8();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    sub_1D2878568();
    sub_1D2870F78();
    v17 = sub_1D2878558();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *(v18 + 32) = v12;
    *(v18 + 40) = a3;
    sub_1D22AE01C(0, 0, v6, &unk_1D2881E78, v18);
  }

  return result;
}

uint64_t sub_1D22FBA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D2872178();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1D28728C8();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_1D2878568();
  v4[9] = sub_1D2878558();
  v8 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D22FBBD0, v8, v7);
}

uint64_t sub_1D22FBBD0()
{

  v1 = sub_1D27D8E2C();
  v2 = MEMORY[0x1E696E438];
  if ((v1 & 1) == 0 && (sub_1D27D8EFC() & 1) == 0 && (sub_1D27D8FCC() & 1) == 0)
  {
    v2 = MEMORY[0x1E696E430];
  }

  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  (*(v8 + 104))(v6, *v2, v7);
  sub_1D2872188();
  sub_1D2872138();
  (*(v8 + 8))(v6, v7);
  sub_1D22FA6A0(v3);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D22FBD08(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v2[10] = swift_task_alloc();
  sub_1D2878568();
  v2[11] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D22FBDD8, v4, v3);
}

uint64_t sub_1D22FBDD8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v2 = v0[10];
    v3 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
    v4 = Strong;
    sub_1D23C7044();
    v5 = sub_1D27ED8C8();

    v6 = v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_analyticsContext;
    swift_beginAccess();
    v7 = *(_s16AnalyticsContextVMa(0) + 24);
    v8 = v7 + *(_s16AnalyticsContextV12SessionStateVMa(0) + 20);
    v9 = sub_1D2871818();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v2, v6 + v8, v9);
    (*(v10 + 56))(v2, 0, 1, v9);
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_1D22FC03C;
    v12 = v0[10];
    v13 = v0[8];

    return sub_1D238E3AC(v13, v3, v5 & 1, v12);
  }

  else
  {

    v15 = v0[8];
    v16 = type metadata accessor for ImageGeneration.GenerationParameters();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1D22FC03C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(*v1 + 128) = v0;

  sub_1D22BD238(v3, &qword_1EC6D8F70);
  v4 = *(v2 + 104);
  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_1D22FC264;
  }

  else
  {
    v6 = sub_1D22FC1A4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D22FC1A4()
{

  v1 = *(v0 + 64);
  v2 = type metadata accessor for ImageGeneration.GenerationParameters();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D22FC264()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D22FC2DC()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___imageConditioningRepresentationsManager;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___imageConditioningRepresentationsManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___imageConditioningRepresentationsManager);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
    v4 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher);
    type metadata accessor for ImageConditioningRepresentationsManager();
    v2 = swift_allocObject();
    *(v2 + 24) = 1;
    v5 = MEMORY[0x1E69E7CC0];
    *(v2 + 40) = v3;
    *(v2 + 48) = v5;
    *(v2 + 32) = v5;
    *(v2 + 16) = v4;
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D267E8EC();
    *(v0 + v1) = v2;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v2;
}

uint64_t ComposingViewModel.deinit()
{
  v1 = v0;
  sub_1D2870F78();
  sub_1D28741C8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_generativeModelsAvailabilityNotifications))
  {
    sub_1D2870F78();
    sub_1D2872888();
  }

  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio;
  v3 = sub_1D2871DD8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_1D22729C0(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate);
  sub_1D22729C0(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__genmojiDelegate);
  sub_1D22729C0(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_internalDelegate);

  sub_1D22BD238(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError, &qword_1EC6DA108);
  sub_1D22FD918(*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation), *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 8), *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16));

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldScaleDownBlobAfterSaveTrigger;
  v5 = sub_1D2871818();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  sub_1D22FD944(*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending), *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending + 8));
  sub_1D22FD9A8(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus, type metadata accessor for ComposingViewModel.AvailabilityStatus);

  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__defaultStyle;
  v7 = sub_1D2872008();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  sub_1D22FD9A8(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_analyticsContext, _s16AnalyticsContextVMa);

  sub_1D22A576C(*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAnalyticsLogBlock));

  __swift_destroy_boxed_opaque_existential_0(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager);

  sub_1D22FDA08(*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset));

  sub_1D22BD238(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pregeneratedImageForLoadedRecipe, &unk_1EC6DE5A0);
  sub_1D22BD238(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__prewarmedDependencies, &qword_1EC6DA118);
  sub_1D22BD238(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pausePhotoImportForConfirmationContinuation, &qword_1EC6D9A80);
  sub_1D22BD238(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pauseRecipeLoadingForConfirmationContinuation, &qword_1EC6D9A80);
  sub_1D22BD238(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__waitForSwitchingToExternalStyleContinuation, &qword_1EC6D9A80);
  sub_1D22BD238(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pausePhotoImportForStyleSuggestionContinuation, &qword_1EC6D9A80);

  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  v9 = sub_1D2871A28();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  return v1;
}

uint64_t ComposingViewModel.__deallocating_deinit()
{
  ComposingViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D22FC8E0()
{
  v1 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__creationViewStyle) == *(v0 + 40))
  {
    sub_1D22CFDEC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D22FCAA0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a1 = *(v1 + 40);
  return result;
}

uint64_t sub_1D22FCBA0(uint64_t a1)
{
  v2 = v1;
  v19[0] = a1;
  v4 = sub_1D2871DD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
  swift_getKeyPath();
  v19[1] = v2;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v13 = *(v5 + 16);
  v13(v10, v2 + v11, v4);
  v13(v7, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v7, v4);
  v16 = (v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = 0;
  v16[1] = 0;
  sub_1D2758420(v12, sub_1D233EFD0, v15);

  v17 = *(v5 + 8);
  v17(v19[0], v4);
  return v17(v10, v4);
}

uint64_t sub_1D22FCE4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2871DD8();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a2, v4);
  return sub_1D22FCBA0(v6);
}

uint64_t sub_1D22FCF34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isFromEmojiPicker);
  return result;
}

uint64_t sub_1D22FCFE4()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if ((*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__displayScale + 8) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__displayScale);
    v3 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
    if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) == v2)
    {
      *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D233B278(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
      sub_1D28719D8();
    }
  }

  return result;
}

uint64_t sub_1D22FD1C0()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__displayScale);
}

uint64_t sub_1D22FD270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__displayScale + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__displayScale);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D22FD32C(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__displayScale;
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__displayScale + 8))
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719D8();
    }
  }

  else if ((a2 & 1) != 0 || *v3 != *&a1)
  {
    goto LABEL_9;
  }

  *v3 = *&a1;
  *(v3 + 8) = a2 & 1;

  return sub_1D22FCFE4();
}

uint64_t ComposingViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ComposingViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D22FD5F0;
}

void sub_1D22FD5F0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ComposingViewModel.genmojiDelegate.getter()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D22FD740@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__genmojiDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D22FD810()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D22FD918(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D22FD92C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D22FD92C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_1D22FD944(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D22FD9A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D22FDA08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void (*ComposingViewModel.genmojiDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_getKeyPath();
  v4[6] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  *v4 = v1;
  v4[7] = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__genmojiDelegate;
  v4[8] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__genmojiDelegate;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v4[3] = Strong;
  v4[4] = v8;
  return sub_1D22FDBA8;
}

void sub_1D22FDBA8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 64) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  v4 = v3[5];
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  *v3 = v4;
  swift_getKeyPath();
  sub_1D28719F8();

  free(v3);
}

uint64_t sub_1D22FDC70()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___errorViewModel;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___errorViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___errorViewModel);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher);
    type metadata accessor for ErrorViewModel();
    v4 = swift_allocObject();
    sub_1D2870F78();
    sub_1D2870F78();
    v2 = sub_1D233C27C(v3, v0, v4);
    *(v0 + v1) = v2;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v2;
}

uint64_t sub_1D22FDD2C(uint64_t a1)
{
  v2 = v1;
  sub_1D22FDC70();
  sub_1D22BD1D0(a1, v6, &qword_1EC6DA108);
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A4480, type metadata accessor for ErrorViewModel);
  sub_1D28719D8();

  sub_1D22BD238(v6, &qword_1EC6DA108);
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
  swift_beginAccess();
  sub_1D22BD298(a1, v2 + v4, &qword_1EC6DA108);
  return swift_endAccess();
}

uint64_t sub_1D22FDE88@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
  swift_beginAccess();
  return sub_1D22BD1D0(v5 + v3, a1, &qword_1EC6DA108);
}

uint64_t sub_1D22FDF60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v4, a2, &qword_1EC6DA108);
}

uint64_t sub_1D22FE038(uint64_t a1)
{
  sub_1D22BD1D0(a1, v2, &qword_1EC6DA108);
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();

  return sub_1D22BD238(v2, &qword_1EC6DA108);
}

uint64_t sub_1D22FE198()
{
  v1 = v0;
  swift_getKeyPath();
  v11[0] = v0;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v2 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16) == 255)
  {
    swift_getKeyPath();
    v11[0] = v0;
    sub_1D28719E8();

    v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
    swift_beginAccess();
    sub_1D22BD1D0(v0 + v3, v11, &qword_1EC6DA108);
    v4 = v12;
    sub_1D22BD238(v11, &qword_1EC6DA108);
    if (v4)
    {
      v5 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
      *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = 1;
      v6 = swift_allocObject();
      swift_weakInit();
      sub_1D2870F78();
      sub_1D2758420(v5, sub_1D23410CC, v6);
    }
  }

  v7 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  swift_getKeyPath();
  v11[0] = v1;
  sub_1D28719E8();

  if ((*(v2 + 16) & 0xFE) == 4 || (sub_1D230326C() & 1) == 0)
  {
    v8 = 0;
    if ((*(v7 + 121) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1D23C7998();

    v12 = &type metadata for FeedbackFeatures;
    v13 = sub_1D233EEC8();
    v8 = sub_1D2871AA8();
    __swift_destroy_boxed_opaque_existential_0(v11);
    if ((v8 & 1) == *(v7 + 121))
    {
LABEL_7:
      *(v7 + 121) = v8 & 1;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v11[0] = v7;
  sub_1D233B278(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D22FE534()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation);
  sub_1D233EA00(v1, *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 8), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16));
  return v1;
}

uint64_t sub_1D22FE600@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation;
  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation);
  v6 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 8);
  *a2 = v5;
  *(a2 + 8) = v6;
  v7 = *(v4 + 16);
  *(a2 + 16) = v7;
  return sub_1D233EA00(v5, v6, v7);
}

uint64_t sub_1D22FE6C0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_1D233EA00(*a1, v2, v3);
  return sub_1D22FE710(v1, v2, v3);
}

uint64_t sub_1D22FE710(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation;
  v8 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation);
  v9 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 8);
  v10 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);
  if (v10 == 255)
  {
    if (a3 == -1)
    {
      goto LABEL_4;
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
    sub_1D22FD918(a1, a2, a3);
  }

  if (a3 == -1 || (sub_1D23DA32C(*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation), *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 8), *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16), a1, a2, a3) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  sub_1D22FD918(v8, v9, v10);

  return sub_1D22FE198();
}

uint64_t sub_1D22FE8C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation;
  v5 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation);
  v6 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 8);
  *v4 = a2;
  *(v4 + 8) = a3;
  v7 = *(v4 + 16);
  *(v4 + 16) = a4;
  sub_1D233EA00(a2, a3, a4);
  sub_1D22FD918(v5, v6, v7);
  return sub_1D22FE198();
}

uint64_t sub_1D22FE93C()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v1 = (v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation);
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);
  if (v2 <= 2)
  {
    if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16))
    {
      if (v2 == 2)
      {
        return 3;
      }

      goto LABEL_12;
    }

    swift_allocObject();
    swift_weakInit();
    return 2;
  }

  else
  {
    if (v2 == 3)
    {
      goto LABEL_11;
    }

    if (v2 != 4)
    {
      if (v2 != 6)
      {
LABEL_12:
        swift_allocObject();
        swift_weakInit();
        return 0;
      }

      v4 = *v1;
      v3 = v1[1];
      if (v4 ^ 0x1A | v3)
      {
        if (!(v4 ^ 9 | v3))
        {
          swift_allocObject();
          swift_weakInit();
          return 1;
        }

        goto LABEL_12;
      }

LABEL_11:
      swift_allocObject();
      swift_weakInit();
      return 4;
    }

    return 0;
  }
}

uint64_t sub_1D22FEB58()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1D22FECC4();

    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) == 1)
    {
      *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = 1;
      sub_1D264698C(1);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
      sub_1D28719D8();
    }
  }

  return result;
}

void *sub_1D22FECC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v49 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v49 - v9;
  v11 = sub_1D2872008();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v49 - v15;
  if (!*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___stylePickerViewModel))
  {
    v51 = v14;
    v52 = v4;
    v50 = v8;
    v59 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___stylePickerViewModel;
    v55 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher);
    sub_1D22D7044(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager, v68);
    v62 = sub_1D22FC2DC();
    v54 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager);
    swift_getKeyPath();
    v67[0] = v1;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__defaultStyle;
    swift_beginAccess();
    v61 = *(v12 + 16);
    v61(v16, v1 + v18, v11);
    swift_getKeyPath();
    v67[0] = v1;
    sub_1D28719E8();

    v56 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles);
    swift_getKeyPath();
    v67[0] = v1;
    sub_1D2870F68();
    sub_1D28719E8();

    LODWORD(v53) = *(v1 + 40) - 1 < 4;
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
    v58 = v49;
    MEMORY[0x1EEE9AC00](v19);
    v21 = (v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = *v21;
    v24 = _s7ManagerCMa();
    v67[3] = v24;
    v67[4] = &off_1F4DC2000;
    v67[0] = v23;
    v49[3] = type metadata accessor for StylePickerViewModel();
    v17 = swift_allocObject();
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v67, v24);
    v57 = v49;
    MEMORY[0x1EEE9AC00](v25);
    v27 = (v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v29 = *v27;
    v65 = v24;
    v66 = &off_1F4DC2000;
    v64[0] = v29;
    v17[11] = 0;
    swift_unknownObjectWeakInit();
    *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = 0;
    *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__isPendingResetToInternalStyle) = 0;
    *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel_onboardingSheetPresentationDelay) = 0x3FC999999999999ALL;
    *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation) = 0;
    v60 = v12;
    v30 = *(v12 + 56);
    v49[1] = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
    v30(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding, 1, 1, v11);
    v49[2] = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
    sub_1D2871A18();
    v17[9] = v55;
    sub_1D22D7044(v64, (v17 + 2));
    v31 = v54;
    v17[7] = v62;
    v17[8] = v31;
    v49[0] = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles;
    *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles) = v56;
    *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel_shouldSaveStyle) = v53;
    v53 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__previousStyle;
    v56 = v12 + 16;
    v61(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__previousStyle, v16, v11);
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D22729C0((v17 + 10));
    v17[11] = &off_1F4DC0648;
    swift_unknownObjectWeakInit();
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v32 = sub_1D23B5D64();
    sub_1D2871F58();
    v33 = sub_1D2871F38();
    v34 = *(*(v33 - 8) + 48);
    if (v34(v10, 1, v33) == 1)
    {
      v35 = sub_1D22BD238(v10, &qword_1EC6D9D58);
      v55 = v49;
      MEMORY[0x1EEE9AC00](v35);
      v49[-2] = v16;
      v36 = v52;
      sub_1D274B77C(sub_1D234016C, v32, v52);

      v37 = v60;
      if ((*(v60 + 48))(v36, 1, v11) == 1)
      {
        v38 = &qword_1EC6D9A30;
        v39 = v36;
      }

      else
      {
        (*(v37 + 32))(v51, v36, v11);
        v41 = v50;
        sub_1D2871F58();
        if (v34(v41, 1, v33) != 1)
        {
          sub_1D22BD238(v41, &qword_1EC6D9D58);
          v47 = v51;
          v48 = v61;
          v61(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle, v51, v11);
          v48(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem, v47, v11);
          sub_1D2645728();
          (*(v37 + 8))(v47, v11);
          v40 = v37;
          goto LABEL_11;
        }

        (*(v37 + 8))(v51, v11);
        v38 = &qword_1EC6D9D58;
        v39 = v41;
      }

      sub_1D22BD238(v39, v38);
      v40 = v37;
    }

    else
    {

      sub_1D22BD238(v10, &qword_1EC6D9D58);
      v40 = v60;
    }

    v42 = v61;
    v61(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle, v16, v11);
    v42(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem, v16, v11);
LABEL_11:
    v43 = sub_1D2870F78();
    sub_1D23501D4(v43, v62);

    swift_getKeyPath();
    v63 = v17;
    sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719E8();

    sub_1D2870F78();
    v44 = sub_1D23C6B54();

    v45 = sub_1D2870F78();
    sub_1D233C0E0(v45, v44);

    sub_1D28719C8();

    (*(v40 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_0(v64);
    __swift_destroy_boxed_opaque_existential_0(v67);
    __swift_destroy_boxed_opaque_existential_0(v68);
    *(v1 + v59) = v17;
    sub_1D2870F78();

    goto LABEL_12;
  }

  v17 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___stylePickerViewModel);
LABEL_12:
  sub_1D2870F78();
  return v17;
}

void sub_1D22FF8A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    sub_1D2871678();
    v5 = sub_1D28716B8();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v2, 1, v5) != 1)
    {
      v7 = sub_1D28715B8();
      (*(v6 + 8))(v2, v5);
      sub_1D25D7270(MEMORY[0x1E69E7CC0]);
      v8 = sub_1D2877E78();

      [v4 openSensitiveURL:v7 withOptions:v8];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D22FFA4C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(*(result + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager) + 16))
    {
      [*(*(result + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager) + 16) undo];
    }
  }

  return result;
}

uint64_t sub_1D22FFAC4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D2303ED4(0);
  }

  return result;
}

uint64_t sub_1D22FFB34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentHasSignificantEdits);
  return result;
}

uint64_t sub_1D22FFBF8()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsViewModel))
  {
    v5 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsViewModel);
  }

  else
  {
    v43 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsViewModel;
    v40 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher);
    sub_1D22D7044(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager, v48);
    v42 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_previewsStore);
    sub_1D2870F78();
    sub_1D2870F78();
    v6 = v0;
    v41 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
    swift_getKeyPath();
    v47[0] = v0;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    v7 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__genmojiDelegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v38 = *(v7 + 8);
    swift_getKeyPath();
    v47[0] = v6;
    sub_1D28719E8();

    v37 = *(v6 + 40);
    v8 = *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
    v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
    swift_beginAccess();
    (*(v2 + 16))(v4, v8 + v9, v1);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v48, v48[3]);
    v36[1] = v36;
    MEMORY[0x1EEE9AC00](v12);
    v14 = (v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v17 = _s7ManagerCMa();
    v47[3] = v17;
    v47[4] = &off_1F4DC2000;
    v47[0] = v16;
    type metadata accessor for PreviewsViewModel(0);
    v5 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v47, v17);
    v36[0] = v36;
    MEMORY[0x1EEE9AC00](v18);
    v20 = (v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v45 = v17;
    v46 = &off_1F4DC2000;
    *&v44 = v22;
    *(v5 + 32) = 0;
    *(v5 + 17) = 0;
    *(v5 + 21) = 0;
    swift_unknownObjectWeakInit();
    v23 = MEMORY[0x1E69E7CD0];
    *(v5 + 40) = MEMORY[0x1E69E7CD0];
    v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
    v25 = sub_1D2871818();
    (*(*(v25 - 8) + 56))(v5 + v24, 1, 1, v25);
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase) = 1;
    v26 = v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError;
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = -4;
    v27 = (v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationPausedID);
    *v27 = 0;
    v27[1] = 0;
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGenerationCancelledFromBackgrounding) = 0;
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested) = 0;
    v28 = MEMORY[0x1E69E7CC0];
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__cancelContinuations) = MEMORY[0x1E69E7CC0];
    v29 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentPreviewGenPriority;
    v30 = sub_1D28785F8();
    (*(*(v30 - 8) + 56))(v5 + v29, 1, 1, v30);
    v31 = v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__animatedEffectsInteractable;
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__animatedEffectsInteractable + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) = 0;
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages) = 0;
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__keyboardIsAnimating) = 0;
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__precomputedGenerationSeeds) = v28;
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__previewIndicesToSavedSeedMap) = sub_1D25D66F4(v28);
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__feedbackPresentedMap) = v23;
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2871A18();
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_servicesFetcher) = v40;
    sub_1D227268C(&v44, v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager);
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore) = v42;
    sub_1D22729C0(v31);
    *(v31 + 8) = &off_1F4DD47E8;
    swift_unknownObjectWeakInit();

    sub_1D22729C0(v5 + 24);
    *(v5 + 32) = v38;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    *(v5 + 16) = v37;
    (*(v2 + 32))(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle, v4, v1);
    v32 = (v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_canStartPreviewGeneration);
    *v32 = sub_1D23410F0;
    v32[1] = v10;
    v33 = (v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_buildRecipe);
    *v33 = sub_1D23410F8;
    v33[1] = v11;
    __swift_destroy_boxed_opaque_existential_0(v47);
    __swift_destroy_boxed_opaque_existential_0(v48);

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v36[-4] = v5;
    v36[-3] = v6;
    v36[-2] = &off_1F4DC54A8;
    v48[0] = v5;
    sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();

    *(v6 + v43) = v5;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v5;
}

uint64_t sub_1D2300444()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D23C7044();
  swift_getKeyPath();
  v13 = v6;
  sub_1D233B278(&qword_1ED8A04F8, type metadata accessor for PersonalizationFeatures);
  sub_1D28719E8();

  v7 = *(v6 + 17);

  if (v7 == 1 && (swift_getKeyPath(), v13 = v1, sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel), sub_1D28719E8(), , *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 1))
  {
    v8 = sub_1D22FECC4();
    swift_getKeyPath();
    v13 = v8;
    sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719E8();

    v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
    swift_beginAccess();
    (*(v3 + 16))(v5, v8 + v9, v2);

    v10 = sub_1D2871E68();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D23006FC()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_previewsStore);
    swift_getKeyPath();
    sub_1D233B278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
    sub_1D28719E8();

    swift_beginAccess();
    v2 = *(*(v1 + 16) + 16);
    if (v2)
    {
      swift_getKeyPath();
      sub_1D28719E8();

      LOBYTE(v2) = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground) ^ 1;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

BOOL sub_1D23008B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  swift_getKeyPath();
  v13 = v0;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 2)
  {
    return 0;
  }

  swift_getKeyPath();
  v13 = v0;
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground))
  {
    return 0;
  }

  sub_1D23015FC(v6);
  v7 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v8 = *(*(v7 - 8) + 48);
  v9 = v8(v6, 1, v7);
  sub_1D22BD238(v6, &qword_1EC6D9490);
  if (v9 == 1)
  {
    return 0;
  }

  sub_1D23015FC(v3);
  v11 = v8(v3, 1, v7) != 1;
  sub_1D22BD238(v3, &qword_1EC6D9490);
  return v11;
}

uint64_t sub_1D2300AF8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  return *(v2 + *a2);
}

uint64_t sub_1D2300B98(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource);
  if (v2 == 3)
  {
    if (result != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719D8();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource) = result;
  return result;
}

uint64_t sub_1D2300CD0()
{
  swift_getKeyPath();
  v14[0] = v0;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v1, &v12, &qword_1EC6DA108);
  if (!v13)
  {
    sub_1D22BD238(&v12, &qword_1EC6DA108);
    return 0;
  }

  sub_1D227268C(&v12, v14);
  v2 = sub_1D22FDC70();
  swift_getKeyPath();
  *&v12 = v2;
  sub_1D233B278(&qword_1ED8A4480, type metadata accessor for ErrorViewModel);
  sub_1D28719E8();

  v3 = *(v2 + 24);

  if (v3 == 1 || (sub_1D22D7044(v14, &v12), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1A8), (swift_dynamicCast() & 1) != 0) && (sub_1D22BCDC4(v9, v10, v11), (v11 & 0xF0) == 0x40))
  {
    __swift_destroy_boxed_opaque_existential_0(v14);
    return 0;
  }

  if (os_variant_has_internal_ui())
  {
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D22BCFD0(0, &qword_1ED89CDA0);
    v5 = sub_1D2878A58();
    v6 = sub_1D2878068();
    v7 = [v5 BOOLForKey_];

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v8;
}

uint64_t sub_1D2300F84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground);
  return result;
}

uint64_t sub_1D23010A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__savedStickers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1D2870F68();
}

uint64_t sub_1D23011EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldScaleDownBlobAfterSaveTrigger;
  swift_beginAccess();
  v5 = sub_1D2871818();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1D230129C()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D2870F68();
}

uint64_t sub_1D2301354(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
  sub_1D2870F68();
}

unint64_t sub_1D23013C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D23015FC(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1D22BD238(v2, &qword_1EC6D9490);
    return 0xD000000000000016;
  }

  else
  {
    sub_1D233FFEC(v2, v6, type metadata accessor for ImageGeneration.PreviewImage);
    v8 = &v6[*(v3 + 24)];
    v9 = *(v8 + 3);
    v10 = *(v8 + 4);
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v11 = (*(v10 + 32))(v9, v10);
    if (v12)
    {
      v7 = v11;
    }

    else
    {
      v7 = 0xD000000000000016;
    }

    if (sub_1D2878188())
    {
      sub_1D22FD9A8(v6, type metadata accessor for ImageGeneration.PreviewImage);
    }

    else
    {

      sub_1D22FD9A8(v6, type metadata accessor for ImageGeneration.PreviewImage);
      return 0xD000000000000011;
    }
  }

  return v7;
}

uint64_t sub_1D23015FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v17[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D22FFBF8();
  swift_getKeyPath();
  v17[5] = v10;
  sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
  swift_beginAccess();
  sub_1D22BD1D0(v10 + v11, v5, &qword_1EC6D8F70);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D22BD238(v5, &qword_1EC6D8F70);
    v12 = type metadata accessor for ImageGeneration.PreviewImage(0);
    return (*(*(v12 - 8) + 56))(v17[0], 1, 1, v12);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_previewsStore);
    swift_getKeyPath();
    v17[2] = v14;
    sub_1D233B278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
    sub_1D28719E8();

    v15 = swift_beginAccess();
    v16 = *(v14 + 16);
    MEMORY[0x1EEE9AC00](v15);
    v17[-2] = v9;
    sub_1D2870F68();
    sub_1D274B9EC(sub_1D233E9A0, v16, v17[0]);

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1D2301970(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v2 = swift_task_alloc();
  v1[3] = v2;
  v1[4] = sub_1D2878568();
  v1[5] = sub_1D2878558();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_1D2301A6C;

  return sub_1D2301CE4(v2);
}

uint64_t sub_1D2301A6C()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2301BA8, v1, v0);
}

uint64_t sub_1D2301BA8()
{
  v1 = v0[3];

  v2 = type metadata accessor for PlaygroundImage();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D22BD238(v0[3], &unk_1EC6DE5A0);
    sub_1D233E200();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }

  else
  {
    sub_1D233FFEC(v0[3], v0[2], type metadata accessor for PlaygroundImage);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2301CE4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_1D2878568();
  v2[11] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v2[12] = v5;
  v2[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2301E10, v5, v4);
}

uint64_t sub_1D2301E10()
{
  if ((sub_1D23006FC() & 1) == 0)
  {

    goto LABEL_5;
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1D23015FC(v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[7];
  if (v4 == 1)
  {

    sub_1D22BD238(v5, &qword_1EC6D9490);
LABEL_5:
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    v6 = v0[5];
    sub_1D233E200();
    v7 = swift_allocError();
    *v8 = 0;
    sub_1D25428EC(v7);

    v9 = type metadata accessor for PlaygroundImage();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);

    v10 = v0[1];

    return v10();
  }

  v12 = v0[6];
  sub_1D233FFEC(v0[7], v0[10], type metadata accessor for ImageGeneration.PreviewImage);
  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground;
  v0[14] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground;
  if (*(v12 + v13) == 1)
  {
    *(v12 + v13) = 1;
  }

  else
  {
    v14 = v0[6];
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 24) = 1;
    v0[2] = v14;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  v16[1] = sub_1D230211C;
  v17 = v0[10];
  v18 = v0[5];

  return sub_1D2316134(v18, v17);
}

uint64_t sub_1D230211C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1D230243C;
  }

  else
  {
    v5 = sub_1D2302258;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2302258()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[6];

  v4 = type metadata accessor for PlaygroundImage();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  if (*(v3 + v1) == 1)
  {
    v5 = v0[10];
    v6 = v0[6];
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[4] = v6;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();

    sub_1D22FD9A8(v5, type metadata accessor for ImageGeneration.PreviewImage);
  }

  else
  {
    v8 = v0[14];
    v9 = v0[6];
    sub_1D22FD9A8(v0[10], type metadata accessor for ImageGeneration.PreviewImage);
    *(v9 + v8) = 0;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D230243C()
{

  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[5];
  v4 = v0[6];
  sub_1D25428EC(v1);

  v5 = type metadata accessor for PlaygroundImage();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  if (*(v4 + v2) == 1)
  {
    v6 = v0[10];
    v7 = v0[6];
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v0[3] = v7;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();

    sub_1D22FD9A8(v6, type metadata accessor for ImageGeneration.PreviewImage);
  }

  else
  {
    v9 = v0[14];
    v10 = v0[6];
    sub_1D22FD9A8(v0[10], type metadata accessor for ImageGeneration.PreviewImage);
    *(v10 + v9) = 0;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2302660(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1D2878568();
  *(v1 + 24) = sub_1D2878558();
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D23026F8, v3, v2);
}

uint64_t sub_1D23026F8()
{
  v1 = *(v0 + 16);

  sub_1D262ADDC(0x6F746F6870, 0xE500000000000000, v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D23027C0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_1D2878568();
  v2[9] = sub_1D2878558();
  v5 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2302924, v5, v4);
}

uint64_t sub_1D2302924()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];

  sub_1D23015FC(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    v5 = &qword_1EC6D9490;
LABEL_8:
    sub_1D22BD238(v4, v5);
    sub_1D233E200();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();

    v16 = v0[1];
    goto LABEL_10;
  }

  v6 = v0[8];
  v7 = v0[6];
  sub_1D233FFEC(v0[5], v6, type metadata accessor for ImageGeneration.PreviewImage);
  v8 = *(v6 + *(v7 + 28));
  v9 = *(v8 + 16);
  v10 = type metadata accessor for PlaygroundImage();
  v11 = *(v10 - 8);
  if (v9)
  {
    sub_1D233DEB0(v8 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), v0[4], type metadata accessor for PlaygroundImage);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v0[8];
  v14 = v0[4];
  (*(v11 + 56))(v14, v12, 1, v10);
  sub_1D22FD9A8(v13, type metadata accessor for ImageGeneration.PreviewImage);
  if ((*(v11 + 48))(v14, 1, v10) == 1)
  {
    v4 = v0[4];
    v5 = &unk_1EC6DE5A0;
    goto LABEL_8;
  }

  sub_1D233FFEC(v0[4], v0[2], type metadata accessor for PlaygroundImage);

  v16 = v0[1];
LABEL_10:

  return v16();
}

uint64_t sub_1D2302BA4()
{
  if (sub_1D2302E00())
  {
    swift_getKeyPath();
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    v1 = *(v0 + 40) - 7 < 0xFFFFFFFE;
  }

  else
  {
    v1 = 1;
  }

  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v2 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset;
  v3 = v1;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset))
  {
    v5 = *(v2 + 8);
    v4 = *(v2 + 16);
    sub_1D2870F78();
    sub_1D2870F68();
    sub_1D22FFBF8();
    v6 = sub_1D25A40AC();
    v8 = v7;

    if ((v8 & 1) != 0 || v6 <= 0)
    {
      if (v5 == sub_1D2673418() && v4 == v9)
      {

        v3 = 0;
      }

      else
      {
        v11 = sub_1D2879618();

        v3 = v11 ^ 1;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  if (sub_1D23006FC())
  {
    sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
    v12 = sub_1D22C26A8();

    v13 = (v12 ^ 1) & v3 & v1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1D2302E00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D23015FC(v4);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_1D233FFEC(v4, v8, type metadata accessor for ImageGeneration.PreviewImage);
    swift_getKeyPath();
    v15 = v0;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if (*(v0 + 40) - 5 > 1)
    {
      swift_getKeyPath();
      v15 = v0;
      sub_1D28719E8();

      v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedInBackground;
      swift_beginAccess();
      if (*(*(v1 + v11) + 16))
      {
        sub_1D2870F68();
        sub_1D25D064C(v8);
        if (v12)
        {
          sub_1D2870F78();
          sub_1D22FD9A8(v8, type metadata accessor for ImageGeneration.PreviewImage);

          goto LABEL_10;
        }

        goto LABEL_11;
      }
    }

    else
    {
      swift_getKeyPath();
      v15 = v0;
      sub_1D28719E8();

      v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__savedStickers;
      swift_beginAccess();
      if (*(*(v1 + v9) + 16))
      {
        sub_1D2870F68();
        sub_1D25D064C(v8);
        if (v10)
        {
          sub_1D2870F68();
          sub_1D2870F68();
          sub_1D2870F68();
          sub_1D2870F68();
          sub_1D22FD9A8(v8, type metadata accessor for ImageGeneration.PreviewImage);

LABEL_10:

          return 1;
        }

LABEL_11:
      }
    }

    sub_1D22FD9A8(v8, type metadata accessor for ImageGeneration.PreviewImage);
    return 0;
  }

  sub_1D22BD238(v4, &qword_1EC6D9490);
  return 0;
}

uint64_t sub_1D23031A0()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset);
  sub_1D233EBC4(v1);
  return v1;
}

uint64_t sub_1D230326C()
{
  if (sub_1D2673C1C())
  {
    goto LABEL_2;
  }

  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v2 = (v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation);
  v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);
  if (v3 == 5)
  {
    v7 = 1;
    goto LABEL_22;
  }

  if (v3 != 255)
  {
    if (v3 != 6)
    {
      v7 = 0;
      goto LABEL_22;
    }

    v5 = *v2;
    v4 = v2[1];
    v6 = *v2 == 9 && v4 == 0;
    v7 = v6;
    if (!v6 && v5 == 1 && v4 == 0)
    {
      sub_1D233EA00(1, 0, 6u);
      v9 = sub_1D27D8C8C();
      v7 = 0;
      v1 = 0;
      if (v9)
      {
        return v1 & 1;
      }

      goto LABEL_22;
    }

    sub_1D233E9E8(*v2, v2[1], 6u);
    if (__PAIR128__((v5 >= 3) + v4 - 1, v5 - 3) >= 5)
    {
LABEL_22:
      sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
      v10 = sub_1D22C26A8();

      v1 = v7 | v10 ^ 1;
      return v1 & 1;
    }
  }

LABEL_2:
  v1 = 0;
  return v1 & 1;
}

uint64_t sub_1D230340C(int a1)
{
  v2 = v1;
  v50 = a1;
  v51 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = v40 - v4;
  v5 = sub_1D2872008();
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2873C58();
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2873C28();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D2873C48();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  v54 = v1;
  v16 = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v52 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear) == 1)
  {
    v41 = v5;
    swift_getKeyPath();
    v54 = v1;
    v40[2] = v15;
    v40[1] = v16;
    sub_1D28719E8();

    if (*(v1 + 24))
    {
      sub_1D2870F78();
      sub_1D28720E8();
      v17 = sub_1D2873C38();
      sub_1D2873C68();
      v18 = sub_1D2878BA8();
      if (sub_1D2878EE8())
      {
        sub_1D2870F78();
        sub_1D2873C98();

        v19 = v42;
        if ((*(v42 + 88))(v9, v7) == *MEMORY[0x1E69E93E8])
        {
          v20 = "[Error] Interval already ended";
        }

        else
        {
          (*(v19 + 8))(v9, v7);
          v20 = "";
        }

        v21 = swift_slowAlloc();
        *v21 = 0;
        v22 = sub_1D2873C08();
        _os_signpost_emit_with_name_impl(&dword_1D226E000, v17, v18, v22, "EnterComposingView", v20, v21, 2u);
        MEMORY[0x1D38A3520](v21, -1, -1);
      }

      (*(v45 + 8))(v12, v46);
      (*(v43 + 8))(v14, v44);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v40[-2] = v2;
      v40[-1] = 0;
      v54 = v2;
      v24 = v51;
      sub_1D28719D8();
      v51 = v24;

      v5 = v41;
    }

    else
    {
      v5 = v41;
    }
  }

  swift_getKeyPath();
  v54 = v2;
  sub_1D28719E8();

  if (*(v2 + v52) == 1)
  {
    v25 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
    v26 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v26);
    v40[-4] = v25;
    v40[-3] = v2;
    v40[-2] = &off_1F4DC56C8;
    v54 = v25;
    sub_1D233B278(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();

    sub_1D2870F78();
    sub_1D22CA210();
    sub_1D254A228();

    sub_1D22C9C60();
    sub_1D24A3688(0);

    swift_getKeyPath();
    v54 = v2;
    sub_1D28719E8();

    sub_1D2303ED4((*(v2 + v52) ^ v50) & 1);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = sub_1D22FECC4();
      swift_getKeyPath();
      v54 = v27;
      sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
      sub_1D28719E8();

      v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
      swift_beginAccess();
      v30 = v47;
      v29 = v48;
      (*(v48 + 16))(v47, v27 + v28, v5);

      sub_1D256AE5C(v2, v30);
      swift_unknownObjectRelease();
      (*(v29 + 8))(v30, v5);
    }

    sub_1D23C7CA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D287F500;
    *(inited + 32) = 0x65727574616546;
    *(inited + 40) = 0xE700000000000000;
    swift_getKeyPath();
    v53 = v2;
    sub_1D28719E8();

    v37 = sub_1D2878068();

    *(inited + 48) = v37;
    v38 = sub_1D25D6F4C(inited);
    swift_setDeallocating();
    sub_1D22BD238(inited + 32, &qword_1EC6DA198);
    sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0x7261657070414955, 0xEA00000000006465, v38, 0);
  }

  else
  {
    v32 = sub_1D28785F8();
    v33 = v49;
    (*(*(v32 - 8) + 56))(v49, 1, 1, v32);
    sub_1D2878568();
    sub_1D2870F78();
    v34 = sub_1D2878558();
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E85E0];
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v2;
    sub_1D22AE01C(0, 0, v33, &unk_1D2881690, v35);
  }
}

uint64_t sub_1D2303ED4(int a1)
{
  v2 = v1;
  v133 = a1;
  v3 = type metadata accessor for CuratedPrompt();
  v137 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v147 = &v129[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA168);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v134 = &v129[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v139 = &v129[-v8];
  v145 = sub_1D2872008();
  v9 = *(v145 - 8);
  v10 = MEMORY[0x1EEE9AC00](v145);
  v141 = &v129[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v129[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v129[-v15];
  v146 = sub_1D2873CB8();
  v17 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v19 = &v129[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2872658();
  swift_retain_n();
  v20 = sub_1D2873CA8();
  v21 = sub_1D28789F8();
  v22 = os_log_type_enabled(v20, v21);
  v143 = v14;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v136 = v9;
    v24 = v23;
    *v23 = 67109632;
    swift_getKeyPath();
    *&v150 = v1;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    v24[1] = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear);

    *(v24 + 4) = 1024;
    *(v24 + 10) = sub_1D2673C1C();

    *(v24 + 7) = 1024;
    v14 = v143;
    v24[4] = sub_1D2673120() & 1;

    _os_log_impl(&dword_1D226E000, v20, v21, "ComposingViewModel - contextDidChange - didAppear: %{BOOL}d - context.isEmpty: %{BOOL}d - context.canGenerate: %{BOOL}d", v24, 0x14u);
    v25 = v24;
    v9 = v136;
    MEMORY[0x1D38A3520](v25, -1, -1);
  }

  else
  {
  }

  (*(v17 + 8))(v19, v146);
  v26 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  v27 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
  v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v29 = *(v9 + 16);
  v144 = v27;
  v142 = v28;
  v30 = v145;
  v29(v16, v27 + v28, v145);
  v31 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle;
  swift_beginAccess();
  v32 = v26 + v31;
  v33 = v29;
  v146 = v9 + 16;
  v29(v14, v32, v30);
  sub_1D233B278(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  LOBYTE(v28) = sub_1D2877F98();
  v36 = *(v9 + 8);
  v34 = v9 + 8;
  v35 = v36;
  v36(v14, v30);
  v140 = v36;
  if (v28)
  {
    v29(v14, v16, v30);
    sub_1D22CF944(v14);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v136 = v2;
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v129[-16] = v26;
    *&v129[-8] = v16;
    *&v150 = v26;
    sub_1D233B278(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
    v14 = v143;

    v33 = v29;
    v35 = v140;
    v2 = v136;
  }

  v35(v16, v30);

  sub_1D22FFBF8();
  v33(v14, v144 + v142, v30);
  v38 = v141;
  v135 = v33;
  v33(v141, v14, v30);
  sub_1D25AB650(v38);

  v35(v14, v30);
  swift_getKeyPath();
  v39 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  *&v150 = v2;
  v40 = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) != 1)
  {
    return result;
  }

  swift_getKeyPath();
  *&v150 = v2;
  sub_1D28719E8();

  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear) != 1)
  {
    return result;
  }

  v131 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear;
  swift_getKeyPath();
  *&v150 = v2;
  v138 = v40;
  sub_1D28719E8();

  v42 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAnalyticsLogBlock);
  if (v42)
  {
    v43 = sub_1D2870F78();
    v42(v43);
    sub_1D22A576C(v42);
  }

  v44 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v44);
  *&v129[-24] = 0;
  *&v129[-16] = 0;
  *&v129[-32] = v2;
  *&v150 = v2;
  sub_1D28719D8();

  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v45 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v45);
  *&v129[-16] = v2;
  *&v129[-8] = &v150;
  v149 = v2;
  sub_1D28719D8();

  sub_1D22BD238(&v150, &qword_1EC6DA108);
  v46 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation);
  v47 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16) == 255;
  v141 = v39;
  if (v47)
  {
    v132 = 0;
    *v46 = 0;
    v46[1] = 0;
    sub_1D22FE198();
  }

  else
  {
    v48 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v48);
    *&v129[-24] = 0;
    *&v129[-16] = 0;
    *&v129[-32] = v2;
    v129[-8] = -1;
    *&v150 = v2;
    sub_1D28719D8();
    v132 = 0;
  }

  v49 = v144;
  LODWORD(v50) = sub_1D2673C1C();
  v51 = sub_1D2673C1C();
  v52 = v145;
  v53 = v140;
  v130 = v50;
  if (v51)
  {
    sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
    sub_1D277D0C0(v133 & 1);

    sub_1D26742D0();
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager), *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager + 24));
    v54 = sub_1D23B1D5C();
    v55 = *(v54 + 16);
    if (v55)
    {
      v56 = v50;
      v136 = v2;
      v57 = v53;
      v50 = v34;
      v58 = v54 + 32;
      do
      {
        sub_1D22D7044(v58, &v150);
        v59 = *(&v151 + 1);
        v60 = v152;
        __swift_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
        (*(v60 + 120))(v59, v60);
        __swift_destroy_boxed_opaque_existential_0(&v150);
        v58 += 40;
        --v55;
      }

      while (v55);

      v34 = v50;
      v53 = v57;
      v2 = v136;
      LOBYTE(v50) = v56;
      v52 = v145;
      v61 = 1;
    }

    else
    {

      v61 = 1;
    }

    goto LABEL_34;
  }

  v62 = v140;
  v63 = v34;
  swift_getKeyPath();
  *&v150 = v2;
  sub_1D28719E8();

  v64 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset);
  v65 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset + 8);
  v66 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset + 16);
  if (v64)
  {
    sub_1D2870F68();
    v67 = v65;
    v68 = v66;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  sub_1D233EBC4(v64);
  sub_1D22FDA08(v64);
  v69 = sub_1D2673418();
  if (!v68)
  {

    v52 = v145;
    v34 = v63;
    v53 = v62;
    goto LABEL_30;
  }

  v52 = v145;
  v34 = v63;
  v53 = v62;
  if (v67 != v69 || v68 != v70)
  {
    v71 = sub_1D2879618();

    if (v71)
    {
      goto LABEL_29;
    }

LABEL_30:
    sub_1D23C7448();
    v72 = v143;
    v135(v143, v49 + v142, v52);
    v73 = sub_1D2777B18(v72);

    v53(v72, v52);
    v74 = sub_1D22FFBF8();
    if (*(v74 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) == 1)
    {
      v75 = v74;
      v76 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v76);
      *&v129[-16] = v75;
      v129[-8] = 0;
      *&v150 = v75;
      sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
      v34 = v63;
      v77 = v132;
      sub_1D28719D8();
      v132 = v77;
    }

    else
    {
      *(v74 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) = 0;
    }

    LOBYTE(v50) = v130;
    v78 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
    v79 = v143;
    v135(v143, v49 + v142, v52);
    v80 = sub_1D2871F78();
    v53(v79, v52);
    v61 = 1;
    sub_1D277E434(*&v73, v80 & 1, 1, v78);

    goto LABEL_34;
  }

LABEL_29:
  sub_1D22FFBF8();
  sub_1D25A4614();

  v61 = 0;
  LOBYTE(v50) = v130;
LABEL_34:
  v81 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession;
  if (*(v49 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) == 1)
  {
    v82 = MEMORY[0x1E69E7CC0];
    v83 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
    swift_beginAccess();
    *(v49 + v83) = v82;

    v84 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedCuratedPrompts;
    swift_beginAccess();
    *(v49 + v84) = v82;

    *(v49 + v81) = 0;
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager), *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager + 24));
    v85 = sub_1D23B1D5C();
    v86 = *(v85 + 16);
    if (v86)
    {
      v136 = v34;
      v87 = v2;
      v88 = v85 + 32;
      do
      {
        sub_1D22D7044(v88, &v150);
        v89 = *(&v151 + 1);
        v90 = v152;
        __swift_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
        (*(v90 + 120))(v89, v90);
        __swift_destroy_boxed_opaque_existential_0(&v150);
        v88 += 40;
        --v86;
      }

      while (v86);

      v2 = v87;
      v52 = v145;
      v53 = v140;
    }

    else
    {
    }

    LOBYTE(v50) = v130;
  }

  sub_1D22FFBF8();
  sub_1D25A4D3C(v61);

  swift_getKeyPath();
  *&v150 = v2;
  sub_1D28719E8();

  v91 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentHasSignificantEdits;
  if ((v50 & 1) == *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentHasSignificantEdits))
  {
    v92 = v50 ^ 1;
    v93 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v94 = *(v93 + 8);
      ObjectType = swift_getObjectType();
      (*(v94 + 32))(v2, (v50 ^ 1) & 1, ObjectType, v94);
      swift_unknownObjectRelease();
    }

    if ((v50 & 1) == *(v2 + v91))
    {
      v96 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v96);
      *&v129[-16] = v2;
      v129[-8] = v92 & 1;
      v149 = v2;
      v97 = v132;
      sub_1D28719D8();
      v132 = v97;
    }

    else
    {
      *(v2 + v91) = v92 & 1;
    }
  }

  v98 = v139;
  v99 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager), *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager + 24));
  v100 = sub_1D28785F8();
  (*(*(v100 - 8) + 56))(v98, 1, 1, v100);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v101 = sub_1D2878558();
  v102 = swift_allocObject();
  v103 = MEMORY[0x1E69E85E0];
  v102[2] = v101;
  v102[3] = v103;
  v102[4] = v99;
  v102[5] = v49;
  sub_1D22AE01C(0, 0, v98, &unk_1D2881748, v102);

  if (sub_1D2673120())
  {
    sub_1D22FFBF8();
    sub_1D25A5800(0);

    v104 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
    swift_getKeyPath();
    v149 = v104;
    sub_1D233B278(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719E8();

    v105 = *(v104 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state);
    v106 = *(v104 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8);

    if (v106 < 0 && !(v105 | v106 & 0x7F))
    {
      sub_1D23C7448();
      v107 = v143;
      v135(v143, v49 + v142, v52);
      v108 = sub_1D2777B18(v107);

      v53(v107, v52);
      v109 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel);
      sub_1D2870F78();
      sub_1D277E434(*&v108, 0, 1, v109);
    }

    sub_1D23C7CA8();
    swift_getKeyPath();
    v149 = v2;
    sub_1D28719E8();

    LOBYTE(v149) = *(v2 + 40);
    sub_1D2416968(v49);

    swift_beginAccess();
    v110 = v134;
    sub_1D28792C8();
    v111 = sub_1D2879308();
    v112 = *(*(v111 - 8) + 56);
    v112(v110, 0, 1, v111);
    _s16AnalyticsContextVMa(0);
    sub_1D25CE91C(v110, 0);
    sub_1D28792C8();
    v112(v110, 0, 1, v111);
    sub_1D25CE91C(v110, 2);
    sub_1D28792C8();
    v112(v110, 0, 1, v111);
    v113 = v110;
    v49 = v144;
    sub_1D25CE91C(v113, 3);
    swift_endAccess();
  }

  sub_1D2870F78();
  v114 = sub_1D22C3068();

  v115 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v116 = *(v49 + v115);
  v117 = *(v116 + 16);
  v118 = MEMORY[0x1E69E7CC0];
  if (v117)
  {
    v146 = v114;
    v148 = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
    sub_1D23D81B8(0, v117, 0);
    v118 = v148;
    v119 = v116 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
    v120 = *(v137 + 72);
    do
    {
      v121 = v147;
      sub_1D233DEB0(v119, v147, type metadata accessor for CuratedPrompt);
      v122 = *v121;
      v123 = v121[1];
      sub_1D2870F68();
      sub_1D22FD9A8(v121, type metadata accessor for CuratedPrompt);
      v148 = v118;
      v125 = *(v118 + 16);
      v124 = *(v118 + 24);
      if (v125 >= v124 >> 1)
      {
        sub_1D23D81B8((v124 > 1), v125 + 1, 1);
        v118 = v148;
      }

      *(v118 + 16) = v125 + 1;
      v126 = v118 + 16 * v125;
      *(v126 + 32) = v122;
      *(v126 + 40) = v123;
      v119 += v120;
      --v117;
    }

    while (v117);
  }

  v127 = sub_1D233C990(v118);

  sub_1D27A10AC(v127);

  swift_getKeyPath();
  v148 = v2;
  sub_1D28719E8();

  if (*(v2 + v131))
  {
    sub_1D23C7998();
    sub_1D24036D0();
  }

  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart))
  {
    v128 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v128);
    *&v129[-16] = v2;
    v129[-8] = 0;
    v148 = v2;
    sub_1D28719D8();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) = 0;
  }

  return sub_1D232F828();
}

uint64_t sub_1D230577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D2878568();
  *(v4 + 24) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2305814, v6, v5);
}

uint64_t sub_1D2305814()
{

  ComposingViewModel.reset()();
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall ComposingViewModel.reset()()
{
  v1 = v0;
  v53 = _s16AnalyticsContextV12SessionStateVMa(0);
  MEMORY[0x1EEE9AC00](v53);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872658();
  v8 = sub_1D2873CA8();
  v9 = sub_1D28789F8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D226E000, v8, v9, "ComposingViewModel - reset()", v10, 2u);
    MEMORY[0x1D38A3520](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  *&v56 = v1;
  v12 = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v13 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAnalyticsLogBlock);
  if (v13)
  {
    v14 = sub_1D2870F78();
    v13(v14);
    sub_1D22A576C(v13);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v51[-3] = 0;
  v51[-2] = 0;
  v51[-4] = v1;
  *&v56 = v1;
  sub_1D28719D8();

  sub_1D22F7E84();
  sub_1D22FC2DC();
  sub_1D26742D0();
  sub_1D267F6F0();
  sub_1D267E8EC();

  v16 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  sub_1D22CBE98();
  sub_1D22CA210();
  sub_1D2546CB4();

  v17 = *(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage);
  v54 = v11;
  if (v17 == 1)
  {
    v18 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v18);
    v51[-2] = v16;
    LOBYTE(v51[-1]) = 0;
    *&v56 = v16;
    sub_1D233B278(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) = 0;
  }

  swift_getKeyPath();
  *&v56 = v1;
  sub_1D28719E8();

  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) != 1 || (swift_getKeyPath(), *&v56 = v1, sub_1D28719E8(), , (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear) & 1) == 0))
  {
    sub_1D22FFBF8();
    sub_1D25A4D3C(0);

    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart))
    {
      v20 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v20);
      v51[-2] = v1;
      LOBYTE(v51[-1]) = 0;
      *&v56 = v1;
      sub_1D28719D8();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) = 0;
    }

    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask))
    {
      v21 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v21);
      v51[-2] = v1;
      LOBYTE(v51[-1]) = 0;
      *&v56 = v1;
      sub_1D28719D8();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask) = 0;
    }

    swift_getKeyPath();
    *&v56 = v1;
    sub_1D28719E8();

    v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__scheduleExternalProviderGenerationTask;
    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__scheduleExternalProviderGenerationTask) && (sub_1D2870F78(), sub_1D28786B8(), , *(v1 + v22)))
    {
      v23 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v23);
      v51[-2] = v1;
      v51[-1] = 0;
      *&v56 = v1;
      sub_1D28719D8();
    }

    else
    {
      *(v1 + v22) = 0;
    }
  }

  v51[1] = v12;
  v24 = sub_1D22FFBF8();
  v25 = *(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode);
  v52 = v3;
  v51[0] = v19;
  if (v25 == 1)
  {
    v26 = v24;
    v27 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v27);
    v51[-2] = v26;
    LOBYTE(v51[-1]) = 0;
    *&v56 = v26;
    sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) = 0;
  }

  v28 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel);
  v29 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v29);
  v51[-4] = v28;
  v51[-3] = v1;
  v51[-2] = &off_1F4DC56C8;
  *&v56 = v28;
  sub_1D233B278(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D2870F78();
  sub_1D28719D8();

  sub_1D2870F78();
  sub_1D22CA210();
  sub_1D254A228();

  sub_1D22C9C60();
  sub_1D24A3688(0);

  v30 = (v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager);
  [*(*(*__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager) *(v1 + OBJC:sel_removeAllObjects IVAR:? :? :? :? TtC23ImagePlaygroundInternal18ComposingViewModel:?imageGenerationManager + 24)) + 48) + 16)];
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  v31 = sub_1D23B7984();
  v32 = *(v31 + 16);
  v33 = v52;
  if (v32)
  {
    v34 = v31 + 32;
    sub_1D2870F68();
    do
    {
      sub_1D22D7044(v34, &v56);
      v35 = *(&v57 + 1);
      v36 = v58;
      __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
      (*(v36 + 120))(v35, v36);
      __swift_destroy_boxed_opaque_existential_0(&v56);
      v34 += 40;
      --v32;
    }

    while (v32);
  }

  sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
  sub_1D277D0C0(0);

  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v37 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v37);
  v51[-2] = v1;
  v51[-1] = &v56;
  v55 = v1;
  sub_1D28719D8();

  sub_1D22BD238(&v56, &qword_1EC6DA108);
  v38 = (v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation);
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16) == 255)
  {
    *v38 = 0;
    v38[1] = 0;
    sub_1D22FE198();
  }

  else
  {
    v39 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v39);
    v51[-3] = 0;
    v51[-2] = 0;
    v51[-4] = v1;
    LOBYTE(v51[-1]) = -1;
    *&v56 = v1;
    sub_1D28719D8();
  }

  v40 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v40);
  v51[-4] = v1;
  v51[-3] = 0;
  v51[-2] = 0;
  v51[-1] = 0;
  *&v56 = v1;
  sub_1D28719D8();

  v41 = MEMORY[0x1E69E7CC0];
  v42 = sub_1D25D83DC(MEMORY[0x1E69E7CC0]);
  sub_1D22F911C(v42, &OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedInBackground, sub_1D2555BE0);
  v43 = sub_1D25D83DC(v41);
  sub_1D22F911C(v43, &OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedAfterLeavingPlayground, sub_1D2555BE0);
  swift_getKeyPath();
  *&v56 = v1;
  sub_1D28719E8();

  *&v56 = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  v44 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__savedStickers;
  swift_beginAccess();
  *(v1 + v44) = MEMORY[0x1E69E7CC8];

  v55 = v1;
  swift_getKeyPath();
  sub_1D28719F8();

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground))
  {
    v45 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v45);
    v51[-2] = v1;
    LOBYTE(v51[-1]) = 0;
    v55 = v1;
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground) = 0;
  }

  v46 = (v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_analyticsContext);
  swift_beginAccess();
  *v46 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  v46[1] = sub_1D25D87D0(MEMORY[0x1E69E7CC0]);

  v48 = sub_1D25D88B0(v47);
  v49 = _s16AnalyticsContextVMa(0);
  *(v46 + *(v49 + 28)) = v48;

  sub_1D2871808();
  sub_1D2871808();
  sub_1D233CA58(v33, v46 + *(v49 + 24));
  swift_endAccess();
  sub_1D2320190();
  if (*(v1 + v51[0]) == 1)
  {
    sub_1D2324CC4();
  }

  else
  {
    v50 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v50);
    v51[-2] = v1;
    LOBYTE(v51[-1]) = 1;
    v55 = v1;
    sub_1D28719D8();
  }
}

uint64_t sub_1D230675C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear);
  return result;
}

uint64_t sub_1D230686C(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear);
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear) = a2;
  return sub_1D230340C(v3);
}

uint64_t sub_1D23068A8(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) != v2)
  {
    v5 = sub_1D22FC2DC();
    swift_getKeyPath();
    sub_1D28719E8();

    v6 = *(v1 + v4);
    *(v5 + 24) = v6 ^ 1;
    if ((v6 & 1) == 0)
    {
      sub_1D267F6F0();
      sub_1D267F94C();
    }
  }

  return result;
}

uint64_t sub_1D23069E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading);
  return result;
}

uint64_t sub_1D2306AF4(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading);
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) = a2;
  return sub_1D23068A8(v3);
}

uint64_t sub_1D2306B44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isImportingImage);
  return result;
}

uint64_t sub_1D2306C08()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending);
  sub_1D2340C14(v1, *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending + 8));
  return v1;
}

uint64_t sub_1D2306CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending);
  v6 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending);
  v7 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending + 8);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  sub_1D2340C14(a2, a3);
  return sub_1D22FD944(v6, v7);
}

uint64_t sub_1D2306DA0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
  swift_beginAccess();
  return sub_1D233DEB0(v5 + v3, a1, type metadata accessor for ComposingViewModel.AvailabilityStatus);
}

uint64_t sub_1D2306E7C(uint64_t a1)
{
  v3 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
  swift_beginAccess();
  sub_1D233DEB0(v1 + v6, v5, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  v7 = sub_1D233C3CC(v5, a1);
  sub_1D22FD9A8(v5, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  if (v7)
  {
    swift_beginAccess();
    sub_1D234036C(a1, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  return sub_1D22FD9A8(a1, type metadata accessor for ComposingViewModel.AvailabilityStatus);
}

uint64_t sub_1D230706C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
  swift_beginAccess();
  sub_1D234036C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1D2307114(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2307254@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v10 = v3;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v10 + v7, v8);
}

uint64_t sub_1D2307354@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v8 = *a2;
  swift_beginAccess();
  v9 = a3(0);
  return (*(*(v9 - 8) + 16))(a4, v7 + v8, v9);
}

uint64_t sub_1D2307458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v15 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v14 = *(v5 + 16);
  v14(&v13 - v8, a2, v4);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__defaultStyle;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v10, v9, v4);
  swift_endAccess();
  sub_1D22FECC4();
  swift_getKeyPath();
  v16 = a1;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v11 = v15;
  v14(v15, a1 + v10, v4);
  sub_1D2643750(v11);

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1D2307670()
{
  sub_1D22FECC4();
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles);
  sub_1D2870F68();
  v2 = sub_1D2870F68();
  v3 = sub_1D2338564(v2, v1, MEMORY[0x1E696E310], &qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);

  if (v3)
  {
    sub_1D2646654(v1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2307888()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  return sub_1D2870F68();
}

uint64_t sub_1D2307934()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v46 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D60);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v39 - v11;
  v12 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  swift_getKeyPath();
  v48 = v0;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
  swift_beginAccess();
  sub_1D233DEB0(v1 + v18, v17, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v18) = sub_1D233C3CC(v17, v14);
  sub_1D22FD9A8(v14, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  sub_1D22FD9A8(v17, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  if ((v18 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_getKeyPath();
  v47 = v1;
  sub_1D28719E8();

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isSpotlightModelsAvailable) != 1)
  {
    goto LABEL_16;
  }

  swift_getKeyPath();
  v47 = v1;
  sub_1D28719E8();

  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles;
  if (*(*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles) + 16) <= 1uLL)
  {
    swift_getKeyPath();
    v47 = v1;
    sub_1D28719E8();

    v21 = *(v1 + v19);
    if (*(v21 + 16))
    {
      v23 = v45;
      v22 = v46;
      (*(v46 + 16))(v45, v21 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v2);
      v24 = 0;
    }

    else
    {
      v24 = 1;
      v23 = v45;
      v22 = v46;
    }

    v25 = v44;
    v26 = *(v22 + 56);
    v26(v23, v24, 1, v2);
    sub_1D2871EC8();
    v26(v25, 0, 1, v2);
    v27 = *(v4 + 48);
    v28 = v43;
    sub_1D22BD1D0(v23, v43, &qword_1EC6D9A30);
    v40 = v27;
    sub_1D22BD1D0(v25, v28 + v27, &qword_1EC6D9A30);
    v29 = v23;
    v30 = *(v22 + 48);
    if (v30(v28, 1, v2) == 1)
    {
      sub_1D22BD238(v25, &qword_1EC6D9A30);
      sub_1D22BD238(v29, &qword_1EC6D9A30);
      if (v30(v28 + v40, 1, v2) == 1)
      {
        sub_1D22BD238(v28, &qword_1EC6D9A30);
LABEL_15:
        v37 = *(sub_1D23C6B54() + 56);

        if ((v37 & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_16:
        v20 = 0;
        return v20 & 1;
      }
    }

    else
    {
      v31 = v42;
      sub_1D22BD1D0(v28, v42, &qword_1EC6D9A30);
      v32 = v40;
      if (v30(v28 + v40, 1, v2) != 1)
      {
        v33 = v46;
        v34 = v41;
        (*(v46 + 32))(v41, v28 + v32, v2);
        sub_1D233B278(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
        v35 = sub_1D2877F98();
        v36 = *(v33 + 8);
        v36(v34, v2);
        sub_1D22BD238(v44, &qword_1EC6D9A30);
        sub_1D22BD238(v45, &qword_1EC6D9A30);
        v36(v42, v2);
        sub_1D22BD238(v28, &qword_1EC6D9A30);
        if ((v35 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      sub_1D22BD238(v44, &qword_1EC6D9A30);
      sub_1D22BD238(v45, &qword_1EC6D9A30);
      (*(v46 + 8))(v31, v2);
    }

    sub_1D22BD238(v28, &unk_1EC6E1D60);
    goto LABEL_16;
  }

LABEL_4:
  swift_getKeyPath();
  v47 = v1;
  sub_1D28719E8();

  v20 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__hideStylePickerPendingSetAllowedStyles) ^ 1;
  return v20 & 1;
}

uint64_t sub_1D23080AC(uint64_t a1)
{
  v30 = sub_1D2871818();
  v2 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2872008();
  v28 = v5;
  v33 = *(v5 - 8);
  v6 = v33;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager);
  v31 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher);
  v32 = v9;
  v10 = sub_1D22FC2DC();
  swift_getKeyPath();
  v38 = a1;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v29 = *(a1 + 40);
  v11 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v13(v8, v11 + v12, v5);
  v14 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for FloatingBubblesViewModel();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 16) = MEMORY[0x1E69E7CC0];
  *(v15 + 24) = 0;
  sub_1D2870F78();
  sub_1D2871808();
  (*(v2 + 32))(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentAnimationID, v4, v30);
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__attractorColors) = sub_1D25D7ED4(v16);
  v17 = (v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID);
  *v17 = 0;
  v17[1] = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldDisableFloatingAnimation[0]) = 0;
  v18 = (v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageThumbnail;
  v20 = type metadata accessor for PlaygroundImage();
  (*(*(v20 - 8) + 56))(v15 + v19, 1, 1, v20);
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingPhotoSharingConfirmation) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingStyleSuggestionConfirmation) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldBlockPhotoImport) = 1;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__acceptedSwitchToExternalStyleSuggestion) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D2871A18();
  v21 = v32;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel_servicesFetcher) = v31;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel_representationsManager) = v10;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel_sessionUndoManager) = v21;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__creationStyle) = v29;
  v22 = v28;
  v13((v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentStyle), v8, v28);
  v23 = (v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldAnimateAddedBubbles);
  *v23 = sub_1D233EF1C;
  v23[1] = v14;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2698E00();
  v24 = sub_1D2870F78();
  sub_1D23501E0(v24, v10);

  (*(v33 + 8))(v8, v22);

  swift_getKeyPath();
  v34 = v15;
  v35 = a1;
  v36 = &off_1F4DC04C0;
  v37 = v15;
  sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719D8();

  v25 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
  *(v25 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_attractorsColorUpdatingDelegate + 8) = &off_1F4DCEF00;
  swift_unknownObjectWeakAssign();
  v26 = swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2758420(v25, sub_1D233EF44, v26);

  return v15;
}

uint64_t sub_1D2308690()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if ((*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) & 1) == 0)
    {
      sub_1D22FFBF8();
      v2 = sub_1D25A3F44();

      if ((v2 & 1) == 0)
      {
        swift_getKeyPath();
        sub_1D28719E8();

        v5 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isImportingImage);

        v3 = v5 ^ 1;
        return v3 & 1;
      }
    }
  }

  v3 = 0;
  return v3 & 1;
}

uint64_t sub_1D23087E8(uint64_t a1)
{
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45[2] = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45[1] = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2872008();
  v48 = v6;
  v51 = *(v6 - 8);
  v7 = v51;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v9;
  v54 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher);
  sub_1D22D7044(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager, v61);
  v53 = sub_1D22FC2DC();
  v52 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager);
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  v60[0] = a1;
  v11 = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  v49 = v10;
  v45[3] = v11;
  sub_1D28719E8();

  v50 = *(a1 + 40);
  v12 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v14(v9, v12 + v13, v6);
  v15 = v14;
  swift_getKeyPath();
  v60[0] = a1;
  sub_1D28719E8();

  v55 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isFromEmojiPicker;
  v46 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isFromEmojiPicker);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v61, v61[3]);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v21 = _s7ManagerCMa();
  v60[3] = v21;
  v60[4] = &off_1F4DC2000;
  v60[0] = v20;
  type metadata accessor for ComposingFooterViewModel();
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v60, v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v59[3] = v21;
  v59[4] = &off_1F4DC2000;
  v59[0] = v27;
  *(v22 + 80) = 0u;
  *(v22 + 96) = 0u;
  *(v22 + 112) = 0u;
  *(v22 + 125) = 0;
  v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__selectedCameraImage;
  v29 = type metadata accessor for PlaygroundImage();
  (*(*(v29 - 8) + 56))(v22 + v28, 1, 1, v29);
  v30 = (v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationSubjectName);
  *v30 = 0;
  v30[1] = 0;
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shareConfirmationContainsPerson) = 0;
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowShareConfirmation) = 0;
  v31 = OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__pausePhotoImportForConfirmationContinuation;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v33 = *(*(v32 - 8) + 56);
  v33(v22 + v31, 1, 1, v32);
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldBlockPhotoImport) = 1;
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldShowStyleSuggestionConfirmation) = 0;
  v33(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__pausePhotoImportForStyleSuggestionContinuation, 1, 1, v32);
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__shouldSwitchStyle) = 0;
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__genmojiDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___cameraAuthViewModel) = 0;
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___textPromptViewModel) = 0;
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___effectsPickerViewModel) = 0;
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___peoplePickerViewModel) = 0;
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel_facePickerCarouselViewModel) = 0;
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel_characterEditingViewModel) = 0;
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___descriptionEditorViewModel) = 0;
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel____lazy_storage___appProtectionShieldViewModel) = 0;
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isLoadingImage) = 0;
  sub_1D2871A18();
  *(v22 + 16) = v54;
  sub_1D22D7044(v59, v22 + 24);
  v34 = v53;
  v35 = v52;
  *(v22 + 64) = v53;
  *(v22 + 72) = v35;
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__creationViewStyle) = v50;
  v36 = v47;
  v37 = v48;
  v15(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__currentStyle, v47, v48);
  *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24ComposingFooterViewModel__isFromEmojiPicker) = v46;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  v38 = sub_1D2870F78();
  sub_1D23501BC(v38, v34);

  (*(v51 + 8))(v36, v37);
  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v60);
  __swift_destroy_boxed_opaque_existential_0(v61);
  swift_getKeyPath();
  v61[0] = a1;
  sub_1D28719E8();

  v39 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__genmojiDelegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v41 = *(v39 + 8);
  swift_getKeyPath();
  v56 = v22;
  v57 = Strong;
  v58 = v41;
  v60[0] = v22;
  sub_1D233B278(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719D8();

  swift_unknownObjectRelease();
  swift_getKeyPath();
  v60[0] = a1;
  sub_1D28719E8();

  if (*(a1 + v55) == 1)
  {
    sub_1D22CA210();
    sub_1D2877FE8();
    sub_1D28718C8();
    v42 = sub_1D28780E8();
    sub_1D2547B58(v42, v43);
  }

  return v22;
}

uint64_t sub_1D23090E4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D2870F78();
    v0 = sub_1D2673120();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1D2309170@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for GenerationRecipeFactory();
    v2 = sub_1D2870F78();
    sub_1D2461838(v2, 1, a1);

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1D2872438();
  return (*(*(v4 - 8) + 56))(a1, v3, 1, v4);
}

uint64_t sub_1D2309250(uint64_t a1)
{
  v22 = sub_1D2871988();
  v2 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2871DD8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v20 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  swift_getKeyPath();
  v23 = a1;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v21 = *(a1 + 40);
  swift_getKeyPath();
  v23 = a1;
  sub_1D28719E8();

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio;
  swift_beginAccess();
  v12 = *(v6 + 16);
  v12(v10, a1 + v11, v5);
  LOBYTE(a1) = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_forceDarkMode);
  type metadata accessor for EffectViewModel();
  v13 = swift_allocObject();
  v14 = v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state;
  *v14 = 0;
  *(v14 + 8) = 0x80;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___rampSize) = 1065353216;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__image) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__forceOpaque) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__isImageVisible) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_isForStickers) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_attractorsColorUpdatingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D2871978();
  (*(v2 + 32))(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__attractorsIndices, v4, v22);
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___layer) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___imageLayer) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset) = 0;
  v15 = (v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize);
  *v15 = 0;
  v15[1] = 0;
  sub_1D2871A18();
  v16 = v20;
  v12(v20, v10, v5);
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) = 0x3FF0000000000000;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v17 = v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isAnimationPaused) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isBlurred) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs) = MEMORY[0x1E69E7CC0];
  sub_1D2871A18();
  *(v13 + 17) = v21;
  v12((v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_defaultAspectRatio), v16, v5);
  *(v13 + 16) = a1;
  sub_1D233EE24(*v17);
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_shouldUseVFXRenderingDelegate) = 1;
  sub_1D2756CAC();
  v18 = *(v6 + 8);
  v18(v16, v5);
  v18(v10, v5);
  return v13;
}

void *sub_1D23096CC()
{
  v1 = sub_1D2871CA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___contextualMenuViewModel;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___contextualMenuViewModel))
  {
    v6 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___contextualMenuViewModel);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher);
    v8 = v0;
    v9 = sub_1D23C7998()[4];
    (*(v2 + 104))(v4, *MEMORY[0x1E699C1D8], v1);
    v10 = v9;
    v11 = sub_1D2877C18();
    v13 = v12;

    (*(v2 + 8))(v4, v1);
    sub_1D2870F78();
    v14 = sub_1D23013C0();
    v16 = v15;
    type metadata accessor for ContextualMenuViewModel();
    v6 = swift_allocObject();
    v6[7] = 0;
    swift_unknownObjectWeakInit();
    sub_1D2871A18();
    v6[2] = v11;
    v6[3] = v13;
    sub_1D22729C0((v6 + 6));
    v6[7] = &off_1F4DC55C0;
    swift_unknownObjectWeakInit();
    v6[8] = v7;
    v6[4] = v14;
    v6[5] = v16;
    *(v8 + v5) = v6;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v6;
}

uint64_t sub_1D23098E0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v5;
}

void *sub_1D2309948(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher);
  type metadata accessor for FeedbackSectionViewModel();
  v2 = swift_allocObject();
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[4] = 0;
  sub_1D2870F78();
  sub_1D2871A18();
  v2[5] = v1;
  sub_1D23096CC();
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A0028, type metadata accessor for FeedbackSectionViewModel);
  sub_1D28719D8();

  swift_getKeyPath();
  sub_1D28719D8();

  return v2;
}

BOOL sub_1D2309AF0()
{
  sub_1D22FFBF8();
  v1 = sub_1D25A43F4();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 1;
}

BOOL sub_1D2309BC4()
{
  sub_1D23C7998();

  v6 = &type metadata for FeedbackFeatures;
  v7 = sub_1D233EEC8();
  v0 = sub_1D2871AA8();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if ((os_variant_has_internal_diagnostics() & 1) == 0)
  {
    return (v0 & 1) != 0;
  }

  if ((v0 & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v1 = sub_1D2878A58();
  v2 = sub_1D2878068();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_1D2309CF4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA160);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v24 - v4 + 16;
  sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  sub_1D22CBE98();

  v6 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v1, a1 & 1, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D256E7A0();
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  v24[0] = v1;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v9, v24, &qword_1EC6DA108);
  v10 = v24[3];
  sub_1D22BD238(v24, &qword_1EC6DA108);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_previewsStore);
    swift_getKeyPath();
    v24[0] = v12;
    sub_1D233B278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
    sub_1D28719E8();

    swift_beginAccess();
    if (*(*(v12 + 16) + 16))
    {
      v11 = 0;
    }

    else
    {
      v11 = 6;
    }
  }

  v13 = type metadata accessor for Analytics.ImageGenerationEventPayload();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  sub_1D2345DF8(v11, 3, 4, v5, 0);
  sub_1D22BD238(v5, &qword_1EC6DA160);
  v14 = sub_1D23C7CA8();
  v15 = sub_1D2878068();
  v16 = sub_1D2878068();
  v17 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v14 + 48))
  {
    sub_1D2870F68();
    v18 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v17;
    sub_1D24E8054(v18, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v17 = v23;
  }

  v20 = sub_1D2878068();
  v21 = sub_1D2418030(v17);

  if (v21)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D233B278(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v22 = sub_1D2877E78();
  }

  else
  {
    v22 = 0;
  }

  [objc_opt_self() asyncSendSignal:v16 toChannel:v15 withNullableUniqueStringID:v20 withPayload:v22];
}

uint64_t sub_1D230A1E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowGeneratorOnboardingSheet);
  return result;
}

uint64_t sub_1D230A2E0()
{
  v0 = sub_1D2877B48();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D2877B68();
  v19 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowGeneratorOnboardingSheet))
    {
      v6 = Strong;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v19 - 2) = v6;
      *(&v19 - 8) = 0;
      aBlock[0] = v6;
      sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowGeneratorOnboardingSheet) = 0;
    }
  }

  sub_1D2873BA8();
  v8 = v24;
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(aBlock, v24);
    v8 = sub_1D2873BD8();
    __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  else
  {
    sub_1D22BD238(aBlock, &qword_1EC6DA1A0);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = sub_1D23C6B54();

    v10 = *(v9 + 56);
    *(v9 + 56) = (v8 & 1) == 0;
    sub_1D274F9F4(v10);
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = v11;
    swift_getKeyPath();
    aBlock[0] = v12;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    v13 = *(v12 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generatorOnboardingCallback);
    sub_1D2870F78();

    v13(v8 & 1);
  }

  sub_1D22BCFD0(0, &qword_1ED89CD50);
  v14 = sub_1D2878AB8();
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v8 & 1;
  v25 = sub_1D233EE84;
  v26 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  v24 = &block_descriptor_1;
  v17 = _Block_copy(aBlock);
  sub_1D2870F78();
  sub_1D2877B58();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D233B278(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80);
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v4, v2, v17);
  _Block_release(v17);

  (*(v21 + 8))(v2, v0);
  (*(v19 + 8))(v4, v20);
}

uint64_t sub_1D230A8D8()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generatorOnboardingCallback);
  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D230A994(uint64_t a1, int a2)
{
  v55 = a2;
  v2 = sub_1D2872008();
  v52 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D60);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v47 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A80);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v54 = v12;
    v47 = v5;
    v48 = v2;
    swift_getKeyPath();
    v57 = v24;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__waitForSwitchingToExternalStyleContinuation;
    swift_beginAccess();
    sub_1D22BD1D0(v24 + v25, v22, &qword_1EC6D9A80);
    if ((*(v14 + 48))(v22, 1, v13))
    {
      sub_1D22BD238(v22, &qword_1EC6D9A80);
    }

    else
    {
      (*(v14 + 16))(v16, v22, v13);
      sub_1D22BD238(v22, &qword_1EC6D9A80);
      sub_1D2878518();
      (*(v14 + 8))(v16, v13);
    }

    (*(v14 + 56))(v19, 1, 1, v13);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v47 - 2) = v24;
    *(&v47 - 1) = v19;
    v56 = v24;
    sub_1D28719D8();

    sub_1D22BD238(v19, &qword_1EC6D9A80);
    v27 = v54;
    if (v55)
    {
    }

    swift_getKeyPath();
    v56 = v24;
    sub_1D28719E8();

    v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles;
    if (*(*(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles) + 16) != 1)
    {
    }

    swift_getKeyPath();
    v56 = v24;
    sub_1D28719E8();

    v29 = *(v24 + v28);
    if (*(v29 + 16))
    {
      v30 = v52;
      v31 = v48;
      (*(v52 + 16))(v27, v29 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v48);
      v32 = 0;
      v33 = v47;
    }

    else
    {
      v32 = 1;
      v33 = v47;
      v31 = v48;
      v30 = v52;
    }

    v34 = v53;
    v35 = *(v30 + 56);
    v35(v27, v32, 1, v31);
    sub_1D2871EC8();
    v35(v34, 0, 1, v31);
    v36 = *(v51 + 48);
    sub_1D22BD1D0(v27, v33, &qword_1EC6D9A30);
    sub_1D22BD1D0(v34, v33 + v36, &qword_1EC6D9A30);
    v37 = *(v30 + 48);
    if (v37(v33, 1, v31) == 1)
    {
      sub_1D22BD238(v34, &qword_1EC6D9A30);
      sub_1D22BD238(v27, &qword_1EC6D9A30);
      if (v37(v33 + v36, 1, v31) == 1)
      {
        sub_1D22BD238(v33, &qword_1EC6D9A30);
        goto LABEL_17;
      }
    }

    else
    {
      v38 = v50;
      sub_1D22BD1D0(v33, v50, &qword_1EC6D9A30);
      if (v37(v33 + v36, 1, v31) != 1)
      {
        v39 = v33 + v36;
        v40 = v49;
        (*(v30 + 32))(v49, v39, v31);
        sub_1D233B278(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
        v41 = v38;
        v42 = sub_1D2877F98();
        v43 = *(v30 + 8);
        v43(v40, v31);
        sub_1D22BD238(v53, &qword_1EC6D9A30);
        sub_1D22BD238(v27, &qword_1EC6D9A30);
        v43(v41, v31);
        sub_1D22BD238(v33, &qword_1EC6D9A30);
        if (v42)
        {
LABEL_17:
          v44 = v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v45 = *(v44 + 8);
            ObjectType = swift_getObjectType();
            (*(v45 + 8))(v24, 0, ObjectType, v45);

            return swift_unknownObjectRelease();
          }
        }
      }

      sub_1D22BD238(v53, &qword_1EC6D9A30);
      sub_1D22BD238(v27, &qword_1EC6D9A30);
      (*(v30 + 8))(v38, v31);
    }

    sub_1D22BD238(v33, &unk_1EC6E1D60);
  }

  return result;
}

uint64_t sub_1D230B27C()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowGeneratorOnboardingSheet) == 1)
  {
    *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowGeneratorOnboardingSheet) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D230B3FC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generatorOnboardingCallback);
  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generatorOnboardingCallback + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1D233D700;
  a2[1] = v6;
  return sub_1D2870F78();
}

uint64_t sub_1D230B50C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D2870F78();
  sub_1D28719D8();
}

BOOL sub_1D230B660()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isFromEmojiPicker) == 1)
  {
    if (qword_1ED8A0600 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D233B278(&qword_1ED8A4920, type metadata accessor for DebugSettings);
    sub_1D28719E8();
    sub_1D2870F78();
    v1 = sub_1D23CC22C();
  }

  else
  {
    if (qword_1ED8A0600 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D233B278(&qword_1ED8A4920, type metadata accessor for DebugSettings);
    sub_1D28719E8();
    sub_1D2870F78();
    v1 = sub_1D23CC070();
  }

  v2 = v1;

  return (v2 & 1) == 0;
}

uint64_t sub_1D230B8E0()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  v9 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  if (sub_1D230B660())
  {
    v26 = v2;
    v27 = v3;
    swift_getKeyPath();
    v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
    v29 = v0;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if ((*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed) & 1) == 0)
    {
      swift_getKeyPath();
      v29 = v0;
      v25[1] = v15;
      sub_1D28719E8();

      v16 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
      swift_beginAccess();
      sub_1D233DEB0(v1 + v16, v14, type metadata accessor for ComposingViewModel.AvailabilityStatus);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v16) = sub_1D233C3CC(v14, v11);
      sub_1D22FD9A8(v11, type metadata accessor for ComposingViewModel.AvailabilityStatus);
      sub_1D22FD9A8(v14, type metadata accessor for ComposingViewModel.AvailabilityStatus);
      if ((v16 & 1) == 0)
      {
        v17 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
        swift_getKeyPath();
        v28 = v17;
        sub_1D233B278(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
        sub_1D28719E8();

        v18 = *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
        sub_1D233EDE0(v18);

        if (v18 >= 3)
        {

          swift_getKeyPath();
          v28 = v1;
          sub_1D28719E8();

          v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__defaultStyle;
          swift_beginAccess();
          v22 = v26;
          v23 = v27;
          (*(v27 + 16))(v8, v1 + v21, v26);
          sub_1D2871F48();
          sub_1D233B278(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
          LOBYTE(v21) = sub_1D2877F98();
          v24 = *(v23 + 8);
          v24(v5, v22);
          v24(v8, v22);
          v19 = v21 ^ 1;
          return v19 & 1;
        }

        sub_1D233EE24(v18);
      }
    }
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1D230BD6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed);
  return result;
}

BOOL sub_1D230BE78()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v0 + 40) != 4)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    if (*(v0 + 40) - 5 > 1)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset) == 0;
}

Swift::Void __swiftcall ComposingViewModel.setUndoManager(_:)(NSUndoManager_optional a1)
{
  isa = a1.value.super.isa;
  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager);
  v4 = *(v3 + 16);
  if (v4)
  {
    [v4 removeAllActions];
    v6 = *(v3 + 16);
  }

  else
  {
    v6 = 0;
  }

  *(v3 + 16) = isa;
  v5 = isa;
}

uint64_t sub_1D230C02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v6 = sub_1D2873CB8();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = type metadata accessor for PlaygroundImage();
  v5[30] = swift_task_alloc();
  v7 = sub_1D2872008();
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C0);
  v5[34] = swift_task_alloc();
  v8 = sub_1D2872438();
  v5[35] = v8;
  v5[36] = *(v8 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = sub_1D2878568();
  v5[40] = sub_1D2878558();
  v10 = sub_1D28784F8();
  v5[41] = v10;
  v5[42] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D230C250, v10, v9);
}

uint64_t sub_1D230C250()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[43] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state))
    {
      swift_getKeyPath();
      v3 = swift_task_alloc();
      *(v3 + 16) = v2;
      *(v3 + 24) = 0;
      v0[19] = v2;
      sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719D8();
    }

    else
    {
      sub_1D2324CC4();
    }

    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) == 1)
    {
      *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) = 1;
      sub_1D23068A8(1);
    }

    else
    {
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v2;
      *(v6 + 24) = 1;
      v0[20] = v2;
      sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719D8();
    }

    v0[44] = sub_1D2878558();
    v8 = sub_1D28784F8();
    v0[45] = v8;
    v0[46] = v7;

    return MEMORY[0x1EEE6DFA0](sub_1D230C53C, v8, v7);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D230C53C()
{
  v1 = v0[25];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[47] = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v0[25] + 16), *(v0[25] + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    v0[48] = v4;
    *v4 = v0;
    v4[1] = sub_1D230C690;
    v5 = v0[38];

    return sub_1D23E4308(v5, v3);
  }

  else
  {

    sub_1D233F184();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v0[56] = v7;
    v9 = v0[41];
    v10 = v0[42];

    return MEMORY[0x1EEE6DFA0](sub_1D230CD50, v9, v10);
  }
}

uint64_t sub_1D230C690()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 368);
  v4 = *(v2 + 360);
  if (v0)
  {
    v5 = sub_1D230CCDC;
  }

  else
  {
    v5 = sub_1D230C7CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D230C7CC()
{
  v1 = v0[47];

  v2 = v0[41];
  v3 = v0[42];

  return MEMORY[0x1EEE6DFA0](sub_1D230C838, v2, v3);
}

uint64_t sub_1D230C838()
{
  v1 = v0[43];
  v20 = v0[36];
  v21 = v0[37];
  v19 = v0[35];
  v2 = v0[34];
  (*(v20 + 16))();
  swift_getKeyPath();
  v0[50] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  v0[21] = v1;
  v0[51] = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v17 = *(v1 + 40);
  v16 = swift_allocObject();
  v18 = v1;
  swift_weakInit();
  v15 = sub_1D22FC2DC();
  v14 = sub_1D230E0CC();
  type metadata accessor for LoadRecipeInContextOperation();
  v3 = swift_allocObject();
  v0[52] = v3;
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_actionItem;
  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_actionItem;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C8);
  v6 = *(*(v5 - 1) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_undoActionItem, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_supportsUndoing) = 1;
  v7 = v5[12];
  v8 = (v2 + v5[16]);
  v9 = v5[20];
  v10 = v5[24];
  (*(v20 + 32))(v2, v21, v19);
  *(v2 + v7) = v17;
  *v8 = sub_1D233F1D8;
  v8[1] = v16;
  *(v2 + v9) = v15;
  *(v2 + v10) = v14;
  v6(v2, 0, 1, v5);
  swift_beginAccess();
  sub_1D22BD298(v2, v3 + v13, &qword_1EC6DA1C0);
  swift_endAccess();
  v0[53] = *(v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager);
  sub_1D2870F78();
  sub_1D2870F78();
  v11 = swift_task_alloc();
  v0[54] = v11;
  *v11 = v0;
  v11[1] = sub_1D230CB6C;

  return sub_1D27F9C50(v3, &off_1EEC2D850);
}

uint64_t sub_1D230CB6C()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);
  if (v0)
  {
    v5 = sub_1D230D784;
  }

  else
  {
    v5 = sub_1D230CF5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D230CCDC()
{
  v1 = v0[47];

  v0[56] = v0[49];
  v2 = v0[41];
  v3 = v0[42];

  return MEMORY[0x1EEE6DFA0](sub_1D230CD50, v2, v3);
}

uint64_t sub_1D230CD50()
{

  v1 = v0[56];
  sub_1D2872658();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1D226E000, v3, v4, "Could not get recipe from asset with error: %@", v5, 0xCu);
    sub_1D22BD238(v6, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v6, -1, -1);
    MEMORY[0x1D38A3520](v5, -1, -1);
  }

  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[26];

  (*(v10 + 8))(v9, v11);
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  v12 = v0[43];
  sub_1D25428EC(v1);

  sub_1D230DBF4(v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D230CF5C()
{
  v1 = v0[43];
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context;
  v0[57] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context;
  sub_1D2870F78();
  v3 = sub_1D2673C1C();

  if (v3)
  {

    v4 = sub_1D22FFBF8();
    if (*(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) == 1)
    {
      v5 = v4;
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = 0;
      v0[23] = v5;
      sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) = 0;
    }

    v21 = v0[43];
    v22 = v0[38];
    v23 = v0[35];
    v24 = v0[36];
    sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
    sub_1D277D0C0(0);

    (*(v24 + 8))(v22, v23);
    sub_1D230DBF4(v21);

    v25 = v0[1];

    return v25();
  }

  else
  {
    v7 = v0[43];
    v26 = v0[32];
    v27 = v0[31];
    v28 = v0[33];
    v8 = v0[25];
    sub_1D2870F78();
    v9 = sub_1D2673418();
    v11 = v10;

    swift_getKeyPath();
    v12 = swift_task_alloc();
    v12[2] = v7;
    v12[3] = v8;
    v12[4] = v9;
    v12[5] = v11;
    v0[22] = v7;
    sub_1D2870F78();
    sub_1D28719D8();

    sub_1D23C7448();
    v13 = *(v1 + v2);
    v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
    swift_beginAccess();
    (*(v26 + 16))(v28, v13 + v14, v27);
    v15 = sub_1D2777B18(v28);

    (*(v26 + 8))(v28, v27);
    v16 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
    v17 = swift_allocObject();
    sub_1D22FFBF8();
    swift_weakInit();

    sub_1D2870F78();
    sub_1D2783130(*&v15, 0, 0, v16, sub_1D233F1E0, v17);

    v18 = swift_task_alloc();
    v0[58] = v18;
    *v18 = v0;
    v18[1] = sub_1D230D45C;
    v19 = v0[30];

    return sub_1D230E1D0(v19);
  }
}

uint64_t sub_1D230D45C()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);
  if (v0)
  {
    v5 = sub_1D230D9BC;
  }

  else
  {
    v5 = sub_1D230D598;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D230D598()
{
  v1 = v0[43];
  v10 = v0[38];
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[29];
  v4 = v0[30];

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager), *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager + 24));
  v0[5] = v5;
  v0[6] = &protocol witness table for PlaygroundImage;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1D233DEB0(v4, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
  sub_1D2673418();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D287F500;
  sub_1D22D7044((v0 + 2), v7 + 32);
  sub_1D2398E1C(v7);

  sub_1D22FD9A8(v4, type metadata accessor for PlaygroundImage);
  (*(v2 + 8))(v10, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  sub_1D230DBF4(v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D230D784()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];

  (*(v3 + 8))(v1, v2);
  v4 = v0[55];
  sub_1D2872658();
  v5 = v4;
  v6 = sub_1D2873CA8();
  v7 = sub_1D2878A18();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D226E000, v6, v7, "Could not get recipe from asset with error: %@", v8, 0xCu);
    sub_1D22BD238(v9, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[26];

  (*(v13 + 8))(v12, v14);
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  v15 = v0[43];
  sub_1D25428EC(v4);

  sub_1D230DBF4(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D230D9BC()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];

  (*(v3 + 8))(v1, v2);
  v4 = v0[59];
  sub_1D2872658();
  v5 = v4;
  v6 = sub_1D2873CA8();
  v7 = sub_1D2878A18();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D226E000, v6, v7, "Could not get recipe from asset with error: %@", v8, 0xCu);
    sub_1D22BD238(v9, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[26];

  (*(v13 + 8))(v12, v14);
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  v15 = v0[43];
  sub_1D25428EC(v4);

  sub_1D230DBF4(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D230DBF4(uint64_t a1)
{
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 1)
  {
    sub_1D2324CC4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v14 - 2) = a1;
    *(&v14 - 8) = 1;
    v16 = a1;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  if (*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading))
  {
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7);
    *(&v14 - 2) = a1;
    *(&v14 - 8) = 0;
    v16 = a1;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) = 0;
    sub_1D23068A8(0);
  }

  v8 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  (*(v3 + 16))(v5, v8 + v9, v2);
  LOBYTE(v8) = sub_1D2871F78();
  result = (*(v3 + 8))(v5, v2);
  if (v8)
  {
    swift_getKeyPath();
    v15 = a1;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__scheduleExternalProviderGenerationTask;
    if (*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__scheduleExternalProviderGenerationTask) && (sub_1D2870F78(), sub_1D28786B8(), , *(a1 + v11)))
    {
      v12 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v12);
      *(&v14 - 2) = a1;
      *(&v14 - 1) = 0;
      v15 = a1;
      sub_1D28719D8();
    }

    else
    {
      *(a1 + v11) = 0;
    }

    if (*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart))
    {
      v13 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v13);
      *(&v14 - 2) = a1;
      *(&v14 - 8) = 0;
      v15 = a1;
      sub_1D28719D8();
    }

    else
    {
      *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) = 0;
    }

    sub_1D22FFBF8();
    sub_1D25A5800(1);
  }

  return result;
}

uint64_t sub_1D230E0CC()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___creationContextFactory;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___creationContextFactory))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___creationContextFactory);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher);
    sub_1D2870F78();
    v4 = sub_1D22FC2DC();
    type metadata accessor for CreationContextFactory();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 32) = v4;
    *(v2 + 40) = 0;
    *(v2 + 24) = v3;
    *(v0 + v1) = v2;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v2;
}

uint64_t sub_1D230E170()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D25A4614();
    sub_1D25A4768(0);
  }

  return result;
}

uint64_t sub_1D230E1D0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1D2872438();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = sub_1D2878568();
  v2[11] = sub_1D2878558();
  v2[12] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v2[13] = v5;
  v2[14] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D230E2D4, v5, v4);
}

uint64_t sub_1D230E2D4()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[15] = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v0[6] + 16), *(v0[6] + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_1D230E444;
    v5 = v0[9];

    return sub_1D23E4308(v5, v3);
  }

  else
  {

    sub_1D233F184();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v0[18] = v7;
    v10 = sub_1D28784F8();

    return MEMORY[0x1EEE6DFA0](sub_1D230E610, v10, v9);
  }
}

uint64_t sub_1D230E444()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1D230E580;
  }

  else
  {
    v5 = sub_1D230E67C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D230E580()
{
  v1 = v0[15];

  v0[18] = v0[17];
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D230E610, v3, v2);
}

uint64_t sub_1D230E610()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D230E67C()
{
  v1 = v0[15];

  v3 = sub_1D28784F8();
  v0[19] = v3;
  v0[20] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D230E710, v3, v2);
}

uint64_t sub_1D230E710()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = sub_1D2878558();
  v0[21] = v3;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[23] = v5;
  v6 = type metadata accessor for PlaygroundImage();
  *v5 = v0;
  v5[1] = sub_1D230E828;
  v7 = v0[5];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v7, v3, v8, 0xD000000000000010, 0x80000001D28B0A60, sub_1D233F1E8, v4, v6);
}

uint64_t sub_1D230E828()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_1D230E9E0;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_1D230E94C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D230E94C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D230E9E0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D230EA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v20 - v11;
  if (*(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isImportingImage) == 1)
  {
    *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isImportingImage) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v20[-2] = v4;
    LOBYTE(v20[-1]) = 1;
    v20[1] = v4;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___floatingbubblesViewModel, sub_1D23080AC);
  sub_1D2870F68();
  sub_1D2697334(a1, a2);

  v14 = sub_1D28785F8();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v15 = sub_1D2878558();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v5;
  v18 = sub_1D22AE01C(0, 0, v12, &unk_1D2881FB8, v16);
  return sub_1D22F9A8C(v18, &OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImageTask);
}

uint64_t sub_1D230ED3C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a6;
  v6[9] = sub_1D2878568();
  v6[10] = sub_1D2878558();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[11] = v8;
  *v8 = v6;
  v8[1] = sub_1D230EE50;

  return v10();
}

uint64_t sub_1D230EE50()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D230EF8C, v1, v0);
}

uint64_t sub_1D230EF8C()
{
  v1 = v0[8];

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isImportingImage))
  {
    v2 = v0[8];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[7] = v2;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isImportingImage) = 0;
  }

  v4 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___floatingbubblesViewModel, sub_1D23080AC);
  v5 = (v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID);
  if (*(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID + 8))
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    v6[3] = 0;
    v6[4] = 0;
    v6[2] = v4;
    v0[6] = v4;
    sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
    sub_1D28719D8();
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    sub_1D2698A94();
  }

  v7 = v0[8];
  swift_getKeyPath();
  v0[2] = v7;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v0[3] = v7;
  swift_getKeyPath();
  sub_1D2871A08();

  v8 = (v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending);
  v9 = *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending + 8);
  if (v9)
  {
    v10 = v8[3];
    v23 = v8[2];
    v24 = *v8;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v12;
    v13[4] = v23;
    v13[5] = v10;
    swift_unknownObjectRetain();
    v14 = &unk_1D2881FC8;
  }

  else
  {
    v24 = 0;
    v14 = 0;
    v13 = 0;
  }

  v15 = v0[8];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v0[4] = v15;
  swift_getKeyPath();
  sub_1D28719F8();

  v16 = v0[8];
  if (v9)
  {
    v17 = v13[2];
    v18 = v13[3];
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = v14;
    v19[5] = v13;
    swift_unknownObjectRetain();
    sub_1D230EA90(v24, v9, &unk_1D2881FC0, v19);
  }

  else if (*(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImageTask))
  {
    swift_getKeyPath();
    v20 = swift_task_alloc();
    *(v20 + 16) = v16;
    *(v20 + 24) = 0;
    v0[5] = v16;
    sub_1D28719D8();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1D230F430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - v6;
  v8 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___floatingbubblesViewModel, sub_1D23080AC);
  sub_1D233DEB0(a1, v7, type metadata accessor for PlaygroundImage);
  v9 = type metadata accessor for PlaygroundImage();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageThumbnail;
  swift_beginAccess();
  sub_1D22BD1D0(v8 + v10, v4, &unk_1EC6DE5A0);
  LOBYTE(v10) = sub_1D26A22A4(v4, v7);
  sub_1D22BD238(v4, &unk_1EC6DE5A0);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v8;
    v13[-1] = v7;
    v13[2] = v8;
    sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
    sub_1D28719D8();
  }

  else
  {
    sub_1D22BD1D0(v7, v4, &unk_1EC6DE5A0);
    sub_1D269BE0C(v4);
  }

  return sub_1D22BD238(v7, &unk_1EC6DE5A0);
}

uint64_t sub_1D230F700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA120);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v23 - v6;
  v7 = type metadata accessor for PlaygroundImage();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v25 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_asyncClosureQueue);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v14, v24, v10);
  sub_1D233DEB0(a1, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaygroundImage);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v8 + 80) + v17 + 8) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v16, v14, v10);
  *(v19 + v17) = v15;
  sub_1D233FFEC(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PlaygroundImage);
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1D2881BD0;
  *(v20 + 24) = v19;
  v29 = &unk_1D2881BD8;
  v30 = v20;
  sub_1D2870F78();
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60);
  v21 = v26;
  sub_1D2878638();

  (*(v27 + 8))(v21, v28);
}

uint64_t sub_1D230FA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a2;
  v3[52] = a3;
  v3[50] = a1;
  v4 = sub_1D2873CB8();
  v3[53] = v4;
  v3[54] = *(v4 - 8);
  v3[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v3[56] = swift_task_alloc();
  v5 = sub_1D2872068();
  v3[57] = v5;
  v3[58] = *(v5 - 8);
  v3[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A80);
  v3[60] = swift_task_alloc();
  v6 = sub_1D2872008();
  v3[61] = v6;
  v3[62] = *(v6 - 8);
  v3[63] = swift_task_alloc();
  v7 = type metadata accessor for PlaygroundImage();
  v3[64] = v7;
  v3[65] = *(v7 - 8);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200);
  v3[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = sub_1D2878568();
  v3[77] = sub_1D2878558();
  v9 = sub_1D28784F8();
  v3[78] = v9;
  v3[79] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D230FDB4, v9, v8);
}

uint64_t sub_1D230FDB4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[80] = Strong;
  if (Strong)
  {
    v2 = v0[70];
    v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context;
    v0[81] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context;
    v54 = v3;
    v4 = *(Strong + v3);
    v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
    v55 = Strong;
    swift_beginAccess();
    sub_1D22BD1D0(v4 + v5, v2, &qword_1EC6DA200);
    v6 = type metadata accessor for SketchConditioningImage();
    if ((*(*(v6 - 8) + 48))(v2, 1, v6) == 1)
    {
      sub_1D22BD238(v0[70], &qword_1EC6DA200);
      v7 = 1;
    }

    else
    {
      v10 = v0[70];
      sub_1D233DEB0(v10, v0[75], type metadata accessor for PlaygroundImage);
      sub_1D22FD9A8(v10, type metadata accessor for SketchConditioningImage);
      v7 = 0;
    }

    v11 = v0[75];
    v12 = v0[74];
    v13 = v0[65];
    v14 = v0[64];
    v15 = *(v13 + 56);
    v0[82] = v15;
    v53 = v15;
    v15(v11, v7, 1, v14);
    sub_1D22BD1D0(v11, v12, &unk_1EC6DE5A0);
    v16 = *(v13 + 48);
    v0[83] = v16;
    v0[84] = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v17 = v16(v12, 1, v14);
    v18 = v0[74];
    v19 = v0[69];
    if (v17 == 1)
    {
      v20 = v0[64];
      sub_1D233DEB0(v0[52], v19, type metadata accessor for PlaygroundImage);
      if (v16(v18, 1, v20) != 1)
      {
        sub_1D22BD238(v0[74], &unk_1EC6DE5A0);
      }
    }

    else
    {
      sub_1D233FFEC(v0[74], v19, type metadata accessor for PlaygroundImage);
    }

    v21 = v0[73];
    v22 = v0[72];
    v23 = v0[69];
    v24 = v0[65];
    v25 = v0[64];
    sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___floatingbubblesViewModel, sub_1D23080AC);
    v26 = sub_1D28717B8();
    sub_1D2697334(v26, v27);

    v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___floatingbubblesViewModel;
    v0[85] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___floatingbubblesViewModel;
    v29 = *(v55 + v28);
    sub_1D233DEB0(v23, v21, type metadata accessor for PlaygroundImage);
    v0[86] = (v24 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v53(v21, 0, 1, v25);
    v30 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageThumbnail;
    swift_beginAccess();
    sub_1D22BD1D0(v29 + v30, v22, &unk_1EC6DE5A0);
    sub_1D2870F78();
    LOBYTE(v21) = sub_1D26A22A4(v22, v21);
    sub_1D22BD238(v22, &unk_1EC6DE5A0);
    v31 = v0[73];
    v32 = MEMORY[0x1E69E7CA8];
    if (v21)
    {
      swift_getKeyPath();
      v33 = swift_task_alloc();
      *(v33 + 16) = v29;
      *(v33 + 24) = v31;
      v0[49] = v29;
      sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
      sub_1D28719D8();
    }

    else
    {
      v34 = v0[72];
      sub_1D22BD1D0(v0[73], v34, &unk_1EC6DE5A0);
      sub_1D269BE0C(v34);
    }

    v0[87] = 0;
    v35 = v0[62];
    v36 = v0[63];
    v37 = v0[61];
    sub_1D22BD238(v0[73], &unk_1EC6DE5A0);
    v38 = *(v55 + v54);
    v39 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
    swift_beginAccess();
    v40 = *(v35 + 16);
    v0[88] = v40;
    v0[89] = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v40(v36, v38 + v39, v37);
    LOBYTE(v38) = sub_1D2871F78();
    v41 = *(v35 + 8);
    v0[90] = v41;
    v0[91] = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v41(v36, v37);
    if (v38)
    {
      v42 = *(v55 + v28);
      v43 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingPhotoSharingConfirmation;
      if (*(v42 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingPhotoSharingConfirmation) == 1)
      {
        *(v42 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingPhotoSharingConfirmation) = 1;
        swift_getKeyPath();
        v0[47] = v42;
        sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
        sub_1D2870F78();
        sub_1D28719E8();

        if (*(v42 + v43) != 1)
        {
          swift_getKeyPath();
          v0[48] = v42;
          sub_1D28719E8();

          v44 = v42 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v45 = *(v44 + 8);
            ObjectType = swift_getObjectType();
            (*(v45 + 24))(ObjectType, v45);
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        swift_getKeyPath();
        v49 = swift_task_alloc();
        *(v49 + 16) = v42;
        *(v49 + 24) = 1;
        v0[43] = v42;
        sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
        sub_1D2870F78();
        sub_1D28719D8();
      }

      v0[92] = 0;
      v50 = sub_1D2878558();
      v0[93] = v50;
      v51 = swift_task_alloc();
      v0[94] = v51;
      *v51 = v0;
      v51[1] = sub_1D231075C;
      v52 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6DDE0](v51, v50, v52, 0xD000000000000021, 0x80000001D28B0B00, sub_1D233FBE4, v55, v32 + 8);
    }

    else
    {
      v0[95] = sub_1D23C7314();
      v47 = swift_task_alloc();
      v0[96] = v47;
      *v47 = v0;
      v47[1] = sub_1D2310F6C;
      v48 = v0[52];

      return sub_1D28421E4((v0 + 2), v48, 1);
    }
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
    sub_1D2878518();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D231075C()
{
  v1 = *v0;

  v2 = *(v1 + 632);
  v3 = *(v1 + 624);

  return MEMORY[0x1EEE6DFA0](sub_1D23108A0, v3, v2);
}

uint64_t sub_1D23108A0()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 640);
  v3 = *(v0 + 480);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v0 + 352) = v2;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();

  sub_1D22BD238(v3, &qword_1EC6D9A80);
  v6 = *(v2 + v1);
  swift_getKeyPath();
  *(v0 + 360) = v6;
  sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D2870F78();
  sub_1D28719E8();

  v7 = *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldBlockPhotoImport);

  v8 = *(v2 + v1);
  if (*(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldBlockPhotoImport) == 1)
  {
    *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldBlockPhotoImport) = 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    swift_getKeyPath();
    v23 = swift_task_alloc();
    *(v23 + 16) = v8;
    *(v23 + 24) = 1;
    *(v0 + 368) = v8;
    sub_1D2870F78();
    sub_1D28719D8();

    if ((v7 & 1) == 0)
    {
LABEL_3:
      v9 = *(v0 + 664);
      v10 = *(v0 + 568);
      v11 = *(v0 + 512);
      sub_1D22BD1D0(*(v0 + 600), v10, &unk_1EC6DE5A0);
      if (v9(v10, 1, v11) == 1)
      {
        v34 = *(v0 + 720);
        v12 = *(v0 + 704);
        v13 = *(v0 + 648);
        v14 = *(v0 + 640);
        v15 = *(v0 + 504);
        v16 = *(v0 + 488);
        sub_1D22BD238(*(v0 + 568), &unk_1EC6DE5A0);
        *(v0 + 848) = sub_1D23C7314();
        v17 = *(v14 + v13);
        v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
        swift_beginAccess();
        v12(v15, v17 + v18, v16);
        v19 = sub_1D2871F78();
        *(v0 + 65) = v19 & 1;
        v34(v15, v16);
        *(v0 + 856) = sub_1D2878558();
        v20 = swift_task_alloc();
        *(v0 + 864) = v20;
        *v20 = v0;
        v20[1] = sub_1D2312390;
        v21 = *(v0 + 416);

        return sub_1D28421E4(v0 + 72, v21, (v19 & 1) == 0);
      }

      else
      {
        v35 = *(v0 + 656);
        v27 = *(v0 + 576);
        v28 = *(v0 + 544);
        v29 = *(v0 + 528);
        v30 = *(v0 + 512);
        v31 = *(v0 + 416);
        sub_1D233FFEC(*(v0 + 568), v28, type metadata accessor for PlaygroundImage);
        sub_1D2878C18();
        sub_1D233DEB0(v28, v29, type metadata accessor for PlaygroundImage);
        sub_1D233DEB0(v31, v27, type metadata accessor for PlaygroundImage);
        v35(v27, 0, 1, v30);
        *(v0 + 976) = sub_1D27FC910(v29, v27);
        *(v0 + 984) = sub_1D22FC2DC();
        *(v0 + 992) = sub_1D23C7314();
        *(v0 + 1000) = sub_1D2878558();
        v33 = sub_1D28784F8();
        *(v0 + 1008) = v33;
        *(v0 + 1016) = v32;

        return MEMORY[0x1EEE6DFA0](sub_1D2312D58, v33, v32);
      }
    }
  }

  v24 = *(v0 + 600);
  v25 = *(v0 + 552);

  sub_1D22FD9A8(v25, type metadata accessor for PlaygroundImage);
  sub_1D22BD238(v24, &unk_1EC6DE5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  sub_1D2878518();

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D2310F6C()
{
  v1 = *v0;
  *(*v0 + 776) = *(*v0 + 56);

  v2 = *(v1 + 632);
  v3 = *(v1 + 624);

  return MEMORY[0x1EEE6DFA0](sub_1D23110C4, v3, v2);
}

uint64_t sub_1D23110C4()
{
  if (*(v0 + 776) >= 2 && (v2 = *(v0 + 464), v1 = *(v0 + 472), v3 = *(v0 + 456), (*(v2 + 104))(v1, *MEMORY[0x1E696E3A0], v3), v4 = sub_1D2872058(), (*(v2 + 8))(v1, v3), (v4 & 1) != 0) && (v5 = *(v0 + 720), v6 = *(v0 + 640), v7 = *(v0 + 504), v8 = *(v0 + 488), swift_getKeyPath(), *(v0 + 784) = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar, *(v0 + 288) = v6, *(v0 + 792) = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel), sub_1D28719E8(), , v9 = *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles), sub_1D2870F68(), sub_1D2871EC8(), v10 = sub_1D22D19B8(v7, v9), , v5(v7, v8), v10))
  {
    v11 = *(*(v0 + 640) + *(v0 + 680));
    v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingStyleSuggestionConfirmation;
    v13 = MEMORY[0x1E69E7CA8];
    if (*(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingStyleSuggestionConfirmation) == 1)
    {
      *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingStyleSuggestionConfirmation) = 1;
      swift_getKeyPath();
      *(v0 + 328) = v11;
      sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
      sub_1D2870F78();
      sub_1D28719E8();

      if (*(v11 + v12) != 1)
      {
        swift_getKeyPath();
        *(v0 + 336) = v11;
        sub_1D28719E8();

        v14 = v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v15 = *(v14 + 8);
          ObjectType = swift_getObjectType();
          (*(v15 + 32))(ObjectType, v15);
          swift_unknownObjectRelease();
        }
      }

      v17 = *(v0 + 696);
    }

    else
    {
      v17 = *(v0 + 696);
      swift_getKeyPath();
      v39 = swift_task_alloc();
      *(v39 + 16) = v11;
      *(v39 + 24) = 1;
      *(v0 + 296) = v11;
      sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
      sub_1D2870F78();
      sub_1D28719D8();
    }

    *(v0 + 800) = v17;
    v40 = sub_1D2878558();
    *(v0 + 808) = v40;
    v41 = swift_task_alloc();
    *(v0 + 816) = v41;
    *v41 = v0;
    v41[1] = sub_1D23117BC;
    v42 = *(v0 + 640);
    v43 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DDE0](v41, v40, v43, 0xD000000000000021, 0x80000001D28B0B00, sub_1D233FB6C, v42, v13 + 8);
  }

  else
  {
    v18 = *(v0 + 664);
    v19 = *(v0 + 568);
    v20 = *(v0 + 512);
    sub_1D22BD1D0(*(v0 + 600), v19, &unk_1EC6DE5A0);
    if (v18(v19, 1, v20) == 1)
    {
      v44 = *(v0 + 720);
      v21 = *(v0 + 704);
      v22 = *(v0 + 648);
      v23 = *(v0 + 640);
      v24 = *(v0 + 504);
      v25 = *(v0 + 488);
      sub_1D22BD238(*(v0 + 568), &unk_1EC6DE5A0);
      *(v0 + 848) = sub_1D23C7314();
      v26 = *(v23 + v22);
      v27 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
      swift_beginAccess();
      v21(v24, v26 + v27, v25);
      v28 = sub_1D2871F78();
      *(v0 + 65) = v28 & 1;
      v44(v24, v25);
      *(v0 + 856) = sub_1D2878558();
      v29 = swift_task_alloc();
      *(v0 + 864) = v29;
      *v29 = v0;
      v29[1] = sub_1D2312390;
      v30 = *(v0 + 416);

      return sub_1D28421E4(v0 + 72, v30, (v28 & 1) == 0);
    }

    else
    {
      v45 = *(v0 + 656);
      v32 = *(v0 + 576);
      v33 = *(v0 + 544);
      v34 = *(v0 + 528);
      v35 = *(v0 + 512);
      v36 = *(v0 + 416);
      sub_1D233FFEC(*(v0 + 568), v33, type metadata accessor for PlaygroundImage);
      sub_1D2878C18();
      sub_1D233DEB0(v33, v34, type metadata accessor for PlaygroundImage);
      sub_1D233DEB0(v36, v32, type metadata accessor for PlaygroundImage);
      v45(v32, 0, 1, v35);
      *(v0 + 976) = sub_1D27FC910(v34, v32);
      *(v0 + 984) = sub_1D22FC2DC();
      *(v0 + 992) = sub_1D23C7314();
      *(v0 + 1000) = sub_1D2878558();
      v38 = sub_1D28784F8();
      *(v0 + 1008) = v38;
      *(v0 + 1016) = v37;

      return MEMORY[0x1EEE6DFA0](sub_1D2312D58, v38, v37);
    }
  }
}

uint64_t sub_1D23117BC()
{
  v1 = *v0;

  v2 = *(v1 + 632);
  v3 = *(v1 + 624);

  return MEMORY[0x1EEE6DFA0](sub_1D2311900, v3, v2);
}

uint64_t sub_1D2311900()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 680);
  v3 = *(v0 + 640);
  v4 = *(v0 + 480);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v0 + 304) = v3;
  sub_1D28719D8();
  *(v0 + 824) = v1;

  sub_1D22BD238(v4, &qword_1EC6D9A80);
  v7 = *(v3 + v2);
  swift_getKeyPath();
  *(v0 + 312) = v7;
  *(v0 + 832) = sub_1D233B278(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D2870F78();
  sub_1D28719E8();

  LODWORD(v1) = *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__acceptedSwitchToExternalStyleSuggestion);

  if (v1 == 1)
  {
    v8 = swift_task_alloc();
    *(v0 + 840) = v8;
    *v8 = v0;
    v8[1] = sub_1D2311EB0;

    return sub_1D2313638();
  }

  else
  {
    v10 = *(*(v0 + 640) + *(v0 + 680));
    if (*(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__acceptedSwitchToExternalStyleSuggestion))
    {
      swift_getKeyPath();
      v11 = swift_task_alloc();
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v0 + 320) = v10;
      sub_1D2870F78();
      sub_1D28719D8();
    }

    else
    {
      *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__acceptedSwitchToExternalStyleSuggestion) = 0;
    }

    v12 = *(v0 + 664);
    v13 = *(v0 + 568);
    v14 = *(v0 + 512);
    sub_1D22BD1D0(*(v0 + 600), v13, &unk_1EC6DE5A0);
    if (v12(v13, 1, v14) == 1)
    {
      v32 = *(v0 + 720);
      v15 = *(v0 + 704);
      v16 = *(v0 + 648);
      v17 = *(v0 + 640);
      v18 = *(v0 + 504);
      v19 = *(v0 + 488);
      sub_1D22BD238(*(v0 + 568), &unk_1EC6DE5A0);
      *(v0 + 848) = sub_1D23C7314();
      v20 = *(v17 + v16);
      v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
      swift_beginAccess();
      v15(v18, v20 + v21, v19);
      v22 = sub_1D2871F78();
      *(v0 + 65) = v22 & 1;
      v32(v18, v19);
      *(v0 + 856) = sub_1D2878558();
      v23 = swift_task_alloc();
      *(v0 + 864) = v23;
      *v23 = v0;
      v23[1] = sub_1D2312390;
      v24 = *(v0 + 416);

      return sub_1D28421E4(v0 + 72, v24, (v22 & 1) == 0);
    }

    else
    {
      v33 = *(v0 + 656);
      v25 = *(v0 + 576);
      v26 = *(v0 + 544);
      v27 = *(v0 + 528);
      v28 = *(v0 + 512);
      v29 = *(v0 + 416);
      sub_1D233FFEC(*(v0 + 568), v26, type metadata accessor for PlaygroundImage);
      sub_1D2878C18();
      sub_1D233DEB0(v26, v27, type metadata accessor for PlaygroundImage);
      sub_1D233DEB0(v29, v25, type metadata accessor for PlaygroundImage);
      v33(v25, 0, 1, v28);
      *(v0 + 976) = sub_1D27FC910(v27, v25);
      *(v0 + 984) = sub_1D22FC2DC();
      *(v0 + 992) = sub_1D23C7314();
      *(v0 + 1000) = sub_1D2878558();
      v31 = sub_1D28784F8();
      *(v0 + 1008) = v31;
      *(v0 + 1016) = v30;

      return MEMORY[0x1EEE6DFA0](sub_1D2312D58, v31, v30);
    }
  }
}

uint64_t sub_1D2311EB0()
{
  v1 = *v0;

  v2 = *(v1 + 632);
  v3 = *(v1 + 624);

  return MEMORY[0x1EEE6DFA0](sub_1D2311FD0, v3, v2);
}

uint64_t sub_1D2311FD0()
{
  v1 = *(*(v0 + 640) + *(v0 + 680));
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__acceptedSwitchToExternalStyleSuggestion))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    *(v0 + 320) = v1;
    sub_1D2870F78();
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__acceptedSwitchToExternalStyleSuggestion) = 0;
  }

  v3 = *(v0 + 664);
  v4 = *(v0 + 568);
  v5 = *(v0 + 512);
  sub_1D22BD1D0(*(v0 + 600), v4, &unk_1EC6DE5A0);
  if (v3(v4, 1, v5) == 1)
  {
    v24 = *(v0 + 720);
    v6 = *(v0 + 704);
    v7 = *(v0 + 648);
    v8 = *(v0 + 640);
    v9 = *(v0 + 504);
    v10 = *(v0 + 488);
    sub_1D22BD238(*(v0 + 568), &unk_1EC6DE5A0);
    *(v0 + 848) = sub_1D23C7314();
    v11 = *(v8 + v7);
    v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
    swift_beginAccess();
    v6(v9, v11 + v12, v10);
    v13 = sub_1D2871F78();
    *(v0 + 65) = v13 & 1;
    v24(v9, v10);
    *(v0 + 856) = sub_1D2878558();
    v14 = swift_task_alloc();
    *(v0 + 864) = v14;
    *v14 = v0;
    v14[1] = sub_1D2312390;
    v15 = *(v0 + 416);

    return sub_1D28421E4(v0 + 72, v15, (v13 & 1) == 0);
  }

  else
  {
    v25 = *(v0 + 656);
    v17 = *(v0 + 576);
    v18 = *(v0 + 544);
    v19 = *(v0 + 528);
    v20 = *(v0 + 512);
    v21 = *(v0 + 416);
    sub_1D233FFEC(*(v0 + 568), v18, type metadata accessor for PlaygroundImage);
    sub_1D2878C18();
    sub_1D233DEB0(v18, v19, type metadata accessor for PlaygroundImage);
    sub_1D233DEB0(v21, v17, type metadata accessor for PlaygroundImage);
    v25(v17, 0, 1, v20);
    *(v0 + 976) = sub_1D27FC910(v19, v17);
    *(v0 + 984) = sub_1D22FC2DC();
    *(v0 + 992) = sub_1D23C7314();
    *(v0 + 1000) = sub_1D2878558();
    v23 = sub_1D28784F8();
    *(v0 + 1008) = v23;
    *(v0 + 1016) = v22;

    return MEMORY[0x1EEE6DFA0](sub_1D2312D58, v23, v22);
  }
}

uint64_t sub_1D2312390()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 872) = *(v2 + 72);
  *(v2 + 888) = *(v2 + 88);
  *(v2 + 66) = *(v2 + 104);
  *(v2 + 904) = *(v1 + 112);
  *(v2 + 67) = *(v2 + 120);

  *(v2 + 912) = sub_1D2878558();
  v4 = sub_1D28784F8();
  *(v2 + 920) = v4;
  *(v2 + 928) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D2312514, v4, v3);
}

uint64_t sub_1D2312514()
{
  v1 = *(v0 + 66);
  sub_1D23C7044();
  v2 = sub_1D27ED8C8();

  if (v2 & 1) == 0 || (v1)
  {
    v10 = *(v0 + 67);
    v11 = *(v0 + 66);
    v12 = *(v0 + 416);

    sub_1D23C7044();
    v13 = sub_1D27ED8C8();

    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if ((v13 | (v11 & ~v10)))
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = type metadata accessor for SceneConditioningImage();
    *(v0 + 152) = v16;
    *(v0 + 160) = sub_1D233B278(&qword_1EC6D9A88, type metadata accessor for SceneConditioningImage);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 128));
    sub_1D233DEB0(v12, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
    *(boxed_opaque_existential_1 + *(v16 + 20)) = v15;
    goto LABEL_13;
  }

  v3 = *(v0 + 65);
  sub_1D233DEB0(*(v0 + 416), *(v0 + 536), type metadata accessor for PlaygroundImage);
  if (v3)
  {
    if (*(v0 + 904) != 1)
    {
      v4 = *(v0 + 448);

      v5 = type metadata accessor for PhotosPersonAsset();
      (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
      v6 = *(v0 + 536);
      v7 = *(v0 + 448);
      v8 = type metadata accessor for PersonConditioningImage();
      *(v0 + 152) = v8;
      *(v0 + 160) = sub_1D233B278(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage);
      v9 = __swift_allocate_boxed_opaque_existential_1((v0 + 128));
      sub_1D233FFEC(v6, v9 + *(v8 + 20), type metadata accessor for PlaygroundImage);
      sub_1D22EC9BC(v7, v9, &unk_1EC6DDDC0);
LABEL_13:
      v18 = sub_1D28784F8();
      v20 = v19;
      v21 = sub_1D2312A1C;
      goto LABEL_16;
    }
  }

  else
  {
    v22 = *(v0 + 896);
    v23 = *(v0 + 888);
    v24 = *(v0 + 536);
    v25 = *(v0 + 512);
    v29.origin.x = *(v0 + 872) - v23 * 0.5;
    v29.origin.y = *(v0 + 880) - v22 * 0.5;
    v29.size.width = v23 + v23;
    v29.size.height = v22 + v22;
    v30.origin.x = 0.0;
    v30.origin.y = 0.0;
    v30.size.width = 1.0;
    v30.size.height = 1.0;
    *(v24 + *(v25 + 36)) = CGRectIntersection(v29, v30);
  }

  *(v0 + 936) = sub_1D2878558();
  v18 = sub_1D28784F8();
  v20 = v26;
  v21 = sub_1D2312848;
LABEL_16:

  return MEMORY[0x1EEE6DFA0](v21, v18, v20);
}

uint64_t sub_1D2312848()
{
  v1 = v0[56];

  v2 = type metadata accessor for PhotosPersonAsset();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[116];
  v4 = v0[115];

  return MEMORY[0x1EEE6DFA0](sub_1D23128F4, v4, v3);
}

uint64_t sub_1D23128F4()
{

  v1 = v0[67];
  v2 = v0[56];
  v3 = type metadata accessor for PersonConditioningImage();
  v0[19] = v3;
  v0[20] = sub_1D233B278(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 16);
  sub_1D233FFEC(v1, boxed_opaque_existential_1 + *(v3 + 20), type metadata accessor for PlaygroundImage);
  sub_1D22EC9BC(v2, boxed_opaque_existential_1, &unk_1EC6DDDC0);
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2312A1C, v6, v5);
}

uint64_t sub_1D2312A1C()
{

  v1 = *(v0 + 632);
  v2 = *(v0 + 624);

  return MEMORY[0x1EEE6DFA0](sub_1D2312A90, v2, v1);
}

uint64_t sub_1D2312A90()
{
  v1 = v0[80];
  v2 = type metadata accessor for AddImageConditioningRepresentationOperation();
  v3 = v0[19];
  v4 = v0[20];
  v5 = __swift_project_boxed_opaque_existential_1(v0 + 16, v3);
  v6 = sub_1D22FC2DC();
  v7 = *(v3 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v5, v3);
  v9 = sub_1D27FDCE0(v8, v6, 0, v2, v3, *(v4 + 8));
  v0[118] = v9;

  v0[119] = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager);
  sub_1D2870F78();
  sub_1D2870F78();
  v10 = swift_task_alloc();
  v0[120] = v10;
  *v10 = v0;
  v10[1] = sub_1D2312C28;

  return sub_1D27F9C50(v9, &off_1EEC2DCA8);
}

uint64_t sub_1D2312C28()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v3 = *(v2 + 632);
    v4 = *(v2 + 624);
    v5 = sub_1D2313314;
  }

  else
  {

    v3 = *(v2 + 632);
    v4 = *(v2 + 624);
    v5 = sub_1D2313160;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2312D58()
{
  v1 = swift_task_alloc();
  v0[128] = v1;
  *v1 = v0;
  v1[1] = sub_1D2312DF8;
  v2 = v0[124];
  v3 = v0[122];

  return sub_1D2674838(v3, v2);
}

uint64_t sub_1D2312DF8()
{
  v1 = *v0;

  v2 = *(v1 + 1016);
  v3 = *(v1 + 1008);

  return MEMORY[0x1EEE6DFA0](sub_1D2312F18, v3, v2);
}

uint64_t sub_1D2312F18()
{

  sub_1D267F6F0();
  sub_1D267E8EC();

  v1 = *(v0 + 632);
  v2 = *(v0 + 624);

  return MEMORY[0x1EEE6DFA0](sub_1D2312FA0, v2, v1);
}

uint64_t sub_1D2312FA0()
{
  v1 = v0[122];
  v2 = v0[75];
  v3 = v0[69];
  v4 = v0[68];

  sub_1D22FD9A8(v4, type metadata accessor for PlaygroundImage);
  sub_1D22FD9A8(v3, type metadata accessor for PlaygroundImage);
  sub_1D22BD238(v2, &unk_1EC6DE5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  sub_1D2878518();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D2313160()
{

  v1 = v0[75];
  v2 = v0[69];

  sub_1D22FD9A8(v2, type metadata accessor for PlaygroundImage);
  sub_1D22BD238(v1, &unk_1EC6DE5A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  sub_1D2878518();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D2313314()
{
  v1 = v0[121];

  sub_1D28726B8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[121];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D226E000, v3, v4, "Cannot add image conditioning representation with error: %@", v6, 0xCu);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v11 = v0[54];
  v10 = v0[55];
  v12 = v0[53];

  (*(v11 + 8))(v10, v12);
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  v13 = v0[121];
  sub_1D25428EC(v13);

  v14 = v0[75];
  v15 = v0[69];

  sub_1D22FD9A8(v15, type metadata accessor for PlaygroundImage);
  sub_1D22BD238(v14, &unk_1EC6DE5A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  sub_1D2878518();

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D2313638()
{
  v1[16] = v0;
  v2 = sub_1D2872008();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = sub_1D2878568();
  v1[21] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v1[22] = v4;
  v1[23] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D2313730, v4, v3);
}

uint64_t sub_1D2313730()
{
  v1 = *(sub_1D23C6B54() + 56);

  if (v1)
  {
    swift_allocObject();
    swift_weakInit();
    sub_1D2870F78();
    sub_1D230B27C();

    v0[24] = sub_1D2878558();
    v3 = sub_1D28784F8();
    v0[25] = v3;
    v0[26] = v2;

    return MEMORY[0x1EEE6DFA0](sub_1D2313A10, v3, v2);
  }

  else
  {
    v5 = v0[18];
    v4 = v0[19];
    v6 = v0[16];
    v7 = v0[17];

    sub_1D2871EC8();
    v8 = sub_1D22FC2DC();
    v0[11] = v7;
    v0[12] = sub_1D233B278(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
    (*(v5 + 16))(boxed_opaque_existential_1, v4, v7);
    type metadata accessor for AddImageConditioningRepresentationOperation();
    v10 = swift_allocObject();
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 80) = 0u;
    *(v10 + 96) = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 112) = 1;
    *(v10 + 114) = 1;
    sub_1D227268C(v0 + 4, (v0 + 2));
    v0[7] = v8;
    swift_beginAccess();
    sub_1D22BD298((v0 + 2), v10 + 16, &qword_1EC6D9A18);
    swift_endAccess();
    *(v10 + 113) = 0;
    (*(v5 + 8))(v4, v7);
    v11 = *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager);
    sub_1D2870F78();
    sub_1D27FDB14();
    sub_1D27DF058(v10, v11);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1D2313A10()
{
  *(v0 + 216) = sub_1D2878558();
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_1D2313AF8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1D2313AF8()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1D2313C3C, v3, v2);
}

uint64_t sub_1D2313C3C()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D2313CA0, v1, v2);
}

uint64_t sub_1D2313CA0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D2313D08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v70 = &v63 - v3;
  v4 = sub_1D2872008();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA168);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v63 - v10;
  v12 = type metadata accessor for Analytics.ImageGenerationEventPayload();
  v65 = *(v12 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v63 - v18;
  v20 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v72 = &v63 - v24;
  if ((sub_1D23006FC() & 1) == 0)
  {
LABEL_4:
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D233E200();
    v25 = swift_allocError();
    *v26 = 0;
    sub_1D25428EC(v25);

    return;
  }

  sub_1D23015FC(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1D22BD238(v19, &qword_1EC6D9490);
    goto LABEL_4;
  }

  v64 = v21;
  sub_1D233FFEC(v19, v72, type metadata accessor for ImageGeneration.PreviewImage);
  swift_getKeyPath();
  v75 = v0;
  v27 = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedInBackground;
  swift_beginAccess();
  if (*(*(v1 + v28) + 16) && (sub_1D2870F68(), sub_1D25D064C(v72), v30 = v29, , (v30 & 1) != 0) && (swift_getKeyPath(), v74 = v1, sub_1D28719E8(), , v31 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__savedStickers, swift_beginAccess(), *(*(v1 + v31) + 16)) && (sub_1D2870F68(), sub_1D25D064C(v72), v33 = v32, , (v33 & 1) != 0))
  {
    v34 = v72;
  }

  else
  {
    v63 = v27;
    v35 = v71;
    sub_1D23450A0(v71);
    swift_beginAccess();
    sub_1D28792C8();
    v36 = sub_1D2879308();
    (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
    _s16AnalyticsContextVMa(0);
    sub_1D25CE91C(v11, 1);
    swift_endAccess();
    v37 = swift_allocObject();
    swift_weakInit();
    sub_1D233DEB0(v35, v14, type metadata accessor for Analytics.ImageGenerationEventPayload);
    v38 = (*(v65 + 80) + 24) & ~*(v65 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    sub_1D233FFEC(v14, v39 + v38, type metadata accessor for Analytics.ImageGenerationEventPayload);
    v40 = sub_1D22FECC4();
    swift_getKeyPath();
    v74 = v40;
    sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719E8();

    v41 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
    swift_beginAccess();
    v43 = v67;
    v42 = v68;
    (*(v67 + 16))(v8, v40 + v41, v68);

    v44 = v66;
    sub_1D2871FC8();
    LOBYTE(v40) = MEMORY[0x1D389AA00](v8, v44);
    v45 = *(v43 + 8);
    v45(v44, v42);
    v45(v8, v42);
    if (v40)
    {
      v46 = sub_1D28785F8();
      v47 = v70;
      (*(*(v46 - 8) + 56))(v70, 1, 1, v46);
      v48 = v72;
      v49 = v69;
      sub_1D233DEB0(v72, v69, type metadata accessor for ImageGeneration.PreviewImage);
      sub_1D2878568();
      sub_1D2870F78();
      sub_1D2870F78();
      v50 = sub_1D2878558();
      v51 = (*(v64 + 80) + 40) & ~*(v64 + 80);
      v52 = swift_allocObject();
      v53 = MEMORY[0x1E69E85E0];
      v52[2] = v50;
      v52[3] = v53;
      v52[4] = v1;
      sub_1D233FFEC(v49, v52 + v51, type metadata accessor for ImageGeneration.PreviewImage);
      v54 = (v52 + ((v22 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v54 = sub_1D233E254;
      v54[1] = v39;
      v55 = &unk_1D28814F0;
    }

    else
    {
      if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground) == 1)
      {
        *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v63 - 2) = v1;
        *(&v63 - 8) = 1;
        v73 = v1;
        sub_1D28719D8();
      }

      v57 = sub_1D28785F8();
      v47 = v70;
      (*(*(v57 - 8) + 56))(v70, 1, 1, v57);
      v48 = v72;
      v58 = v69;
      sub_1D233DEB0(v72, v69, type metadata accessor for ImageGeneration.PreviewImage);
      sub_1D2878568();
      sub_1D2870F78();
      sub_1D2870F78();
      v59 = sub_1D2878558();
      v60 = (*(v64 + 80) + 40) & ~*(v64 + 80);
      v52 = swift_allocObject();
      v61 = MEMORY[0x1E69E85E0];
      v52[2] = v59;
      v52[3] = v61;
      v52[4] = v1;
      sub_1D233FFEC(v58, v52 + v60, type metadata accessor for ImageGeneration.PreviewImage);
      v62 = (v52 + ((v22 + v60 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v62 = sub_1D233E254;
      v62[1] = v39;
      v55 = &unk_1D28814E0;
    }

    sub_1D22AE01C(0, 0, v47, v55, v52);

    sub_1D22FD9A8(v71, type metadata accessor for Analytics.ImageGenerationEventPayload);
    v34 = v48;
  }

  sub_1D22FD9A8(v34, type metadata accessor for ImageGeneration.PreviewImage);
}

uint64_t sub_1D23147B4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA160);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v11 - v4 + 16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    sub_1D2345B60(1);
    sub_1D2345B60(2);
    swift_endAccess();
    swift_getKeyPath();
    v11[0] = v7;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
    swift_beginAccess();
    sub_1D22BD1D0(v7 + v8, v11, &qword_1EC6DA108);
    LODWORD(v8) = v11[3] != 0;
    sub_1D22BD238(v11, &qword_1EC6DA108);
    sub_1D233DEB0(a2, v5, type metadata accessor for Analytics.ImageGenerationEventPayload);
    v9 = type metadata accessor for Analytics.ImageGenerationEventPayload();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    sub_1D2345DF8(v8, 2, 5, v5, 0);

    return sub_1D22BD238(v5, &qword_1EC6DA160);
  }

  return result;
}

uint64_t sub_1D2314A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[9] = a4;
  sub_1D2871818();
  v7[12] = swift_task_alloc();
  v7[13] = sub_1D2878568();
  v7[14] = sub_1D2878558();
  v9 = swift_task_alloc();
  v7[15] = v9;
  *v9 = v7;
  v9[1] = sub_1D2314AF8;

  return sub_1D2314CD8((v7 + 2), a5);
}

uint64_t sub_1D2314AF8()
{
  v1 = *v0;

  sub_1D233E658(v1 + 16);
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2314C44, v3, v2);
}

uint64_t sub_1D2314C44()
{
  v1 = v0[12];
  v2 = v0[10];

  sub_1D2871808();
  v3 = sub_1D22F8E60(v1);
  v2(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2314CD8(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  sub_1D2878568();
  v3[28] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[29] = v5;
  v3[30] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2314D74, v5, v4);
}

uint64_t sub_1D2314D74()
{
  v1 = *(v0[27] + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
  sub_1D23969C0(v1, 1, v0 + 2);
  v2 = sub_1D239130C();
  v4 = v3;
  v0[31] = v2;
  v0[32] = v3;
  v5 = sub_1D2391754();
  v7 = v6;
  sub_1D233E6C8((v0 + 2));
  v8 = &v1[OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription];
  v9 = *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription + 8];
  if (v9)
  {
    v10 = *v8;
    v11 = v9;
  }

  else
  {
    sub_1D2870F68();
    v10 = v2;
    v11 = v4;
  }

  v0[33] = v10;
  v0[34] = v11;
  v12 = v0[26];
  v0[35] = v7;
  v0[36] = v5;
  v13 = *(v12 + *(type metadata accessor for ImageGeneration.PreviewImage(0) + 28));
  v0[37] = v13;
  v0[12] = v2;
  v0[13] = v4;
  v0[14] = v5;
  v0[15] = v7;
  v0[16] = v10;
  v0[17] = v11;
  v0[18] = v13;
  sub_1D2870F68();
  sub_1D2870F68();
  v0[38] = sub_1D23C7FE0();

  return MEMORY[0x1EEE6DFA0](sub_1D2314EC8, 0, 0);
}

uint64_t sub_1D2314EC8()
{
  v1 = v0[38];
  v2 = swift_task_alloc();
  v0[39] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 12;
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_1D2314FC8;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, 0, 0, 0x6E79734165766173, 0xED0000293A5F2863, sub_1D233E71C, v2, v4);
}

uint64_t sub_1D2314FC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D23150E0, 0, 0);
}

uint64_t sub_1D23150E0()
{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1D2315144, v1, v2);
}

uint64_t sub_1D2315144()
{
  v7 = v0[37];
  v8 = v0[35];
  v13 = v0[33];
  v14 = v0[36];
  v11 = v0[32];
  v12 = v0[31];
  v1 = v0[27];
  v2 = v0[25];
  v9 = v0[34];
  v10 = v0[26];

  swift_getKeyPath();
  v0[22] = v1;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D2870F68();
  sub_1D2870F68();
  sub_1D2870F68();
  sub_1D2870F68();
  sub_1D28719E8();

  v0[23] = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__savedStickers;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v1 + v3);
  *(v1 + v3) = 0x8000000000000000;
  sub_1D24E8740((v0 + 12), v10, isUniquelyReferenced_nonNull_native);
  *(v1 + v3) = v15;
  swift_endAccess();
  v0[24] = v1;
  swift_getKeyPath();
  sub_1D28719F8();

  *v2 = v12;
  v2[1] = v11;
  v2[2] = v14;
  v2[3] = v8;
  v2[4] = v13;
  v2[5] = v9;
  v2[6] = v7;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1D2315370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v9 = sub_1D2871798();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v10 = sub_1D2872438();
  v7[19] = v10;
  v7[20] = *(v10 - 8);
  v7[21] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v11 = swift_task_alloc();
  v7[22] = v11;
  v7[23] = sub_1D2878568();
  v7[24] = sub_1D2878558();
  v12 = swift_task_alloc();
  v7[25] = v12;
  *v12 = v7;
  v12[1] = sub_1D2315524;

  return sub_1D2316134(v11, a5);
}

uint64_t sub_1D2315524()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v5 = sub_1D2315F80;
  }

  else
  {
    *(v2 + 216) = v3;
    *(v2 + 224) = v4;
    v5 = sub_1D2315688;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2315688()
{
  v0[29] = sub_1D2878558();
  v2 = sub_1D28784F8();
  v0[30] = v2;
  v0[31] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D2315714, v2, v1);
}

uint64_t sub_1D2315714()
{
  if (qword_1EC6D8B40 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[12];
  v3 = qword_1EC6D8B50;
  type metadata accessor for GenerationRecipeFactory();
  sub_1D2461838(*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context), 1, v1);
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_shouldFetchAssets;
  swift_beginAccess();
  *(v3 + v4) = 1;
  sub_1D2871778();
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_1D2315858;
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[18];

  return sub_1D23DC984(v7, v6, 0, v8);
}

uint64_t sub_1D2315858(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v4[33] = v1;

  v6 = (v5 + 8);
  v7 = v4[18];
  v8 = v4[16];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = v4[30];
    v10 = v4[31];
    v11 = sub_1D2315D20;
  }

  else
  {
    v4[34] = a1;
    (*v6)(v7, v8);
    v9 = v4[30];
    v10 = v4[31];
    v11 = sub_1D23159E4;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1D23159E4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);
  v4 = v0[27];
  v5 = v0[28];

  return MEMORY[0x1EEE6DFA0](sub_1D2315A70, v4, v5);
}

uint64_t sub_1D2315A70()
{
  v1 = *(v0 + 272);
  v11 = *(v0 + 176);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);

  swift_getKeyPath();
  *(v0 + 72) = v3;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D2870F78();
  sub_1D28719E8();

  *(v0 + 80) = v3;
  swift_getKeyPath();
  sub_1D2871A08();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedInBackground;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + v4);
  *(v3 + v4) = 0x8000000000000000;
  sub_1D24E8C28(v1, v2, isUniquelyReferenced_nonNull_native);
  *(v3 + v4) = v12;
  swift_endAccess();
  *(v0 + 88) = v3;
  swift_getKeyPath();
  sub_1D28719F8();

  v6 = sub_1D22FD9A8(v11, type metadata accessor for PlaygroundImage);
  v7 = *(v0 + 96);
  if (*(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground))
  {
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v0 + 64) = v7;
    sub_1D28719D8();
  }

  else
  {
    *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground) = 0;
  }

  (*(v0 + 112))(v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D2315D20()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);
  v4 = v0[27];
  v5 = v0[28];

  return MEMORY[0x1EEE6DFA0](sub_1D2315DAC, v4, v5);
}

uint64_t sub_1D2315DAC()
{
  v1 = *(v0 + 176);

  sub_1D22FD9A8(v1, type metadata accessor for PlaygroundImage);
  v2 = *(v0 + 264);
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  sub_1D25428EC(v2);

  v4 = *(v0 + 96);
  if (*(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground))
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    *(v0 + 64) = v4;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground) = 0;
  }

  (*(v0 + 112))(v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D2315F80()
{

  v1 = *(v0 + 208);
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  sub_1D25428EC(v1);

  v3 = *(v0 + 96);
  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground))
  {
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    *(v0 + 64) = v3;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground) = 0;
  }

  (*(v0 + 112))(v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D2316134(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA160);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for ImageGeneration.FinalImageStatus(0);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA10);
  v3[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA178);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = sub_1D2873CB8();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA20);
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA180);
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = sub_1D2878568();
  v3[35] = sub_1D2878558();
  v10 = sub_1D28784F8();
  v3[36] = v10;
  v3[37] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D2316458, v10, v9);
}

uint64_t sub_1D2316458()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0[13] + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager), *(v0[13] + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager + 24));
  v2 = *v1;
  v3 = *v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    sub_1D22D7044(v3, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    (*(v5 + 112))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  }

  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  v9 = v0[12];
  v10 = swift_task_alloc();
  *(v10 + 16) = v2;
  *(v10 + 24) = v9;
  (*(v7 + 104))(v6, *MEMORY[0x1E69E8790], v8);
  sub_1D2878778();

  sub_1D2872658();
  v11 = sub_1D2873CA8();
  v12 = sub_1D2878A08();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D226E000, v11, v12, "upscaling - will start listening to stream", v13, 2u);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  v14 = v0[27];
  v15 = v0[22];
  v16 = v0[23];

  v17 = *(v16 + 8);
  v0[38] = v17;
  v17(v14, v15);
  sub_1D2878658();
  v18 = sub_1D2878558();
  v0[39] = v18;
  v19 = swift_task_alloc();
  v0[40] = v19;
  *v19 = v0;
  v19[1] = sub_1D23166EC;
  v20 = v0[18];
  v21 = v0[19];
  v22 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v20, v18, v22, v21, v0 + 10);
}

uint64_t sub_1D23166EC()
{
  v2 = *v1;

  v3 = *(v2 + 288);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_1D2316FD4;
  }

  else
  {
    v5 = sub_1D231680C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D231680C()
{
  v1 = v0[18];
  if ((*(v0[16] + 48))(v1, 1, v0[15]) == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    sub_1D2872658();
    v2 = sub_1D2873CA8();
    v3 = sub_1D2878A08();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D226E000, v2, v3, "upscaling - did stop listening to stream", v4, 2u);
      MEMORY[0x1D38A3520](v4, -1, -1);
    }

    v5 = v0[38];
    v7 = v0[32];
    v6 = v0[33];
    v8 = v0[31];
    v9 = v0[24];
    v10 = v0[22];

    v5(v9, v10);
    sub_1D233E200();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();
    (*(v7 + 8))(v6, v8);

    v12 = v0[1];
LABEL_19:

    return v12();
  }

  sub_1D233FFEC(v1, v0[17], type metadata accessor for ImageGeneration.FinalImageStatus);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v31 = v0[17];
    v32 = v0[11];

    sub_1D233FFEC(v31, v32, type metadata accessor for PlaygroundImage);
    sub_1D2872658();
    v33 = sub_1D2873CA8();
    v34 = sub_1D2878A08();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D226E000, v33, v34, "upscaling - did imageGenerationManager", v35, 2u);
      MEMORY[0x1D38A3520](v35, -1, -1);
    }

    v36 = v0[38];
    v37 = v0[26];
    v38 = v0[22];

    v36(v37, v38);
    v39 = sub_1D23C7CA8();
    v55 = sub_1D2878068();
    v53 = sub_1D2878068();
    v40 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    if (*(v39 + 48))
    {
      sub_1D2870F68();
      v41 = sub_1D2878068();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D24E8054(v41, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    }

    v52 = sub_1D2878068();
    v43 = sub_1D2418030(v40);

    if (v43)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22BCFD0(0, &qword_1ED89CC48);
      sub_1D233B278(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
      v44 = sub_1D2877E78();
    }

    else
    {
      v44 = 0;
    }

    v45 = v0[32];
    v46 = v0[33];
    v51 = v0[31];
    v47 = v0[20];
    v48 = v0[21];
    v49 = v0[19];
    [objc_opt_self() asyncSendSignal:v53 toChannel:v55 withNullableUniqueStringID:v52 withPayload:v44];

    (*(v47 + 8))(v48, v49);
    (*(v45 + 8))(v46, v51);

    v12 = v0[1];
    goto LABEL_19;
  }

  v13 = v0[17];
  v14 = *(v13 + 8);
  v54 = *v13;
  v15 = *(v13 + 16);
  sub_1D2872658();
  v16 = sub_1D2873CA8();
  v17 = sub_1D28789F8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D226E000, v16, v17, "upscaling - retrying after a failure", v18, 2u);
    MEMORY[0x1D38A3520](v18, -1, -1);
  }

  v19 = v0[38];
  v20 = v0[25];
  v21 = v0[22];
  v22 = v0[14];

  v19(v20, v21);
  v23 = type metadata accessor for Analytics.ImageGenerationEventPayload();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  sub_1D22BCE64();
  v24 = swift_allocError();
  *v25 = v54;
  *(v25 + 8) = v14;
  *(v25 + 16) = v15;
  sub_1D233E72C(v54, v14, v15);
  sub_1D2345DF8(5, 2, 5, v22, v24);

  sub_1D22BCDC4(v54, v14, v15);
  sub_1D22BD238(v22, &qword_1EC6DA160);
  v26 = sub_1D2878558();
  v0[39] = v26;
  v27 = swift_task_alloc();
  v0[40] = v27;
  *v27 = v0;
  v27[1] = sub_1D23166EC;
  v28 = v0[18];
  v29 = v0[19];
  v30 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v28, v26, v30, v29, v0 + 10);
}

uint64_t sub_1D2316FD4()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

double sub_1D2317108@<D0>(unint64_t *a1@<X8>)
{
  v61 = a1;
  v63[10] = *MEMORY[0x1E69E9840];
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlaygroundImage();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v56 - v10;
  v12 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v1;
  sub_1D23015FC(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D22BD238(v11, &qword_1EC6D9490);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D233E200();
    v16 = swift_allocError();
    *v17 = 0;
    sub_1D25428EC(v16);

    v18 = v61;
    v61[6] = 0;
    result = 0.0;
    *(v18 + 1) = 0u;
    *(v18 + 2) = 0u;
    *v18 = 0u;
    return result;
  }

  v57 = v3;
  v58 = v2;
  sub_1D233FFEC(v11, v15, type metadata accessor for ImageGeneration.PreviewImage);
  v20 = *(v12 + 28);
  v56 = v15;
  v21 = *&v15[v20];
  v22 = MEMORY[0x1E69E7CC0];
  v63[0] = MEMORY[0x1E69E7CC0];
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v25 = *(v6 + 72);
    do
    {
      sub_1D233DEB0(v24, v8, type metadata accessor for PlaygroundImage);
      v26 = *v8;
      if (v8[8] > 1u)
      {
        if (v8[8] != 2)
        {
          imageOut = 0;
          v33 = v26;
          v34 = VTCreateCGImageFromCVPixelBuffer(v33, 0, &imageOut);
          v35 = sub_1D2874198();

          v29 = sub_1D22FD9A8(v8, type metadata accessor for PlaygroundImage);
          if (v34 == v35)
          {
            if (imageOut)
            {
              goto LABEL_22;
            }
          }

          else
          {
          }

          goto LABEL_8;
        }

        v28 = v26;
        if ([v28 CGImage])
        {

          goto LABEL_15;
        }

        v31 = [v28 CIImage];
        v32 = [v31 CGImage];
      }

      else
      {
        if (!v8[8])
        {
          v27 = v26;
LABEL_15:
          v29 = sub_1D22FD9A8(v8, type metadata accessor for PlaygroundImage);
LABEL_22:
          MEMORY[0x1D38A0E30](v29);
          if (*((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D2878428();
          }

          sub_1D2878488();
          v22 = v63[0];
          goto LABEL_8;
        }

        v30 = objc_allocWithZone(MEMORY[0x1E695F620]);
        v31 = v26;
        v28 = [v30 init];
        [v31 extent];
        v32 = [v28 createCGImage:v31 fromRect:?];
      }

      v36 = v32;

      v29 = sub_1D22FD9A8(v8, type metadata accessor for PlaygroundImage);
      if (v36)
      {
        goto LABEL_22;
      }

LABEL_8:
      v24 += v25;
      --v23;
    }

    while (v23);
  }

  v37 = v56;
  if (v22 >> 62)
  {
    v50 = sub_1D2879368();
    v39 = v57;
    v38 = v58;
    if (v50)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v39 = v57;
    v38 = v58;
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_27:
      v40 = *(v60 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
      sub_1D23969C0(v40, 1, v63);
      v41 = sub_1D239130C();
      v43 = v42;
      v44 = sub_1D2391754();
      v46 = v45;
      sub_1D233E6C8(v63);
      sub_1D22FD9A8(v37, type metadata accessor for ImageGeneration.PreviewImage);
      v48 = *&v40[OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription];
      v47 = *&v40[OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription + 8];
      v49 = v61;
      *v61 = v22;
      v49[1] = v41;
      v49[2] = v43;
      v49[3] = v44;
      v49[4] = v46;
      v49[5] = v48;
      v49[6] = v47;
      sub_1D2870F68();
      return result;
    }
  }

  v51 = v59;
  sub_1D28724D8();
  v52 = sub_1D2873CA8();
  v53 = sub_1D2878A18();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_1D226E000, v52, v53, "Error when getting the current preview genmoji result image", v54, 2u);
    MEMORY[0x1D38A3520](v54, -1, -1);
  }

  (*(v39 + 8))(v51, v38);
  sub_1D22FD9A8(v37, type metadata accessor for ImageGeneration.PreviewImage);
  result = 0.0;
  v55 = v61;
  *v61 = 0u;
  *(v55 + 1) = 0u;
  *(v55 + 2) = 0u;
  v55[6] = 0;
  return result;
}

uint64_t sub_1D23177D0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA120);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  v8 = sub_1D2872438();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v16[1] = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_asyncClosureQueue);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v9 + 32))(v13 + v12, v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_1D2881CD0;
  *(v14 + 24) = v13;
  v16[2] = &unk_1D2881CD8;
  v16[3] = v14;
  sub_1D2870F78();
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60);
  sub_1D2878638();

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D2317A58(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_1D2873CB8();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C0);
  v2[18] = swift_task_alloc();
  v4 = sub_1D2872438();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = sub_1D2872278();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = sub_1D2878568();
  v2[27] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v2[28] = v7;
  v2[29] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2317C84, v7, v6);
}

uint64_t sub_1D2317C84()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[30] = Strong;
  if (!Strong)
  {

LABEL_19:

    v30 = v0[1];

    return v30();
  }

  v2 = Strong;
  swift_getKeyPath();
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  v0[8] = v2;
  v0[31] = v3;
  v0[32] = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading;
  v0[33] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading;
  if (*(v2 + v4))
  {

    sub_1D2872658();
    v5 = sub_1D2873CA8();
    v6 = sub_1D2878A18();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[15];
    v9 = v0[16];
    v10 = v0[14];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v5, v6, "A recipe is already loading in the viewModel, dropping the request for a new load", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v9, v10);
    goto LABEL_19;
  }

  v12 = v0[23];
  swift_getKeyPath();
  v13 = swift_task_alloc();
  *(v13 + 16) = v2;
  *(v13 + 24) = 1;
  v0[9] = v2;
  sub_1D28719D8();
  v0[34] = 0;

  result = sub_1D28722E8();
  v15 = result;
  v16 = 0;
  v17 = *(result + 16);
  do
  {
    v18 = v16;
    if (v17 == v16)
    {
      break;
    }

    if (v16 >= *(v15 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v19 = v0[25];
    v20 = v0[22];
    (*(v12 + 16))(v19, v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v16++, v20);
    v21 = sub_1D2872258();
    result = (*(v12 + 8))(v19, v20);
  }

  while ((v21 & 1) == 0);
  v31 = v17;

  result = sub_1D28722E8();
  v22 = result;
  v23 = 0;
  v24 = *(result + 16);
  do
  {
    v25 = v23;
    if (v24 == v23)
    {
      break;
    }

    if (v23 >= *(v22 + 16))
    {
      goto LABEL_23;
    }

    v26 = v0[24];
    v27 = v0[22];
    (*(v12 + 16))(v26, v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23++, v27);
    v28 = sub_1D2872268();
    result = (*(v12 + 8))(v26, v27);
  }

  while ((v28 & 1) == 0);

  v29 = swift_task_alloc();
  v0[35] = v29;
  *v29 = v0;
  v29[1] = sub_1D2318120;

  return sub_1D2318744(v31 != v18, v24 != v25);
}

uint64_t sub_1D2318120(char a1)
{
  v2 = *v1;
  *(*v1 + 288) = a1;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1D2318248, v4, v3);
}

uint64_t sub_1D2318248()
{
  v1 = *(v0 + 288);

  if (v1 == 1)
  {
    v2 = *(v0 + 240);
    v30 = *(v0 + 160);
    v31 = *(v0 + 168);
    v3 = *(v0 + 144);
    v29 = *(v0 + 152);
    v32 = *(v0 + 136);
    (*(v30 + 16))();
    swift_getKeyPath();
    *(v0 + 88) = v2;
    v28 = v2;
    sub_1D28719E8();

    v27 = *(v2 + 40);
    v26 = swift_allocObject();
    swift_weakInit();
    sub_1D2870F78();
    v25 = sub_1D22FC2DC();
    v24 = sub_1D230E0CC();
    type metadata accessor for LoadRecipeInContextOperation();
    v4 = swift_allocObject();
    v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_actionItem;
    v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_actionItem;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1C8);
    v7 = *(*(v6 - 1) + 56);
    v7(v4 + v5, 1, 1, v6);
    v7(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_undoActionItem, 1, 1, v6);
    *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal28LoadRecipeInContextOperation_supportsUndoing) = 1;
    v8 = v6[12];
    v9 = (v3 + v6[16]);
    v10 = v6[20];
    v11 = v6[24];
    (*(v30 + 32))(v3, v31, v29);
    *(v3 + v8) = v27;
    *v9 = sub_1D2341890;
    v9[1] = v26;
    *(v3 + v10) = v25;
    *(v3 + v11) = v24;
    v7(v3, 0, 1, v6);
    swift_beginAccess();
    sub_1D22BD298(v3, v4 + v23, &qword_1EC6DA1C0);
    swift_endAccess();
    v12 = *(v28 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager);
    v13 = swift_allocObject();
    swift_weakInit();
    sub_1D2870F78();
    sub_1D2870F78();

    v14 = sub_1D28785F8();
    (*(*(v14 - 8) + 56))(v32, 1, 1, v14);
    swift_retain_n();
    sub_1D2870F78();
    swift_retain_n();
    v15 = sub_1D2878558();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    *(v16 + 16) = v15;
    *(v16 + 24) = v17;
    *(v16 + 32) = v4;
    *(v16 + 40) = &off_1EEC2D850;
    *(v16 + 48) = 1;
    *(v16 + 56) = v12;
    *(v16 + 64) = sub_1D233FD70;
    *(v16 + 72) = v13;
    sub_1D22AE01C(0, 0, v32, &unk_1D288CB00, v16);
  }

  else
  {
    v18 = *(v0 + 264);
    v19 = *(v0 + 240);
    if (*(v19 + v18))
    {
      swift_getKeyPath();
      v20 = swift_task_alloc();
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v0 + 80) = v19;
      sub_1D28719D8();

      goto LABEL_7;
    }

    *(v19 + v18) = 0;
    sub_1D23068A8(0);
  }

LABEL_7:

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D2318744(char a1, char a2)
{
  *(v3 + 72) = v2;
  *(v3 + 161) = a2;
  *(v3 + 160) = a1;
  v4 = sub_1D2872008();
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = sub_1D2878568();
  *(v3 + 112) = sub_1D2878558();
  v6 = sub_1D28784F8();
  *(v3 + 120) = v6;
  *(v3 + 128) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D2318844, v6, v5);
}

uint64_t sub_1D2318844()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(*(v0 + 72) + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  LOBYTE(v4) = sub_1D2871F78();
  (*(v2 + 8))(v1, v3);
  if (v4 & 1) != 0 && ((v6 = *(v0 + 160), (v6) || *(v0 + 161)))
  {
    v9 = *(v0 + 72);
    v10 = MEMORY[0x1E69E7CA8];
    if (v6 == *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__recipeToLoadContainsPhoto))
    {
      *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__recipeToLoadContainsPhoto) = v6;
    }

    else
    {
      swift_getKeyPath();
      v11 = swift_task_alloc();
      *(v11 + 16) = v9;
      *(v11 + 24) = v6;
      *(v0 + 40) = v9;
      sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719D8();
    }

    v12 = *(v0 + 72);
    if (*(v12 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowExternalSharingAlert) == 1)
    {
      *(v12 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowExternalSharingAlert) = 1;
      sub_1D232E924(1);
    }

    else
    {
      swift_getKeyPath();
      v13 = swift_task_alloc();
      *(v13 + 16) = v12;
      *(v13 + 24) = 1;
      *(v0 + 48) = v12;
      sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719D8();
    }

    *(v0 + 136) = 0;
    v14 = sub_1D2878558();
    *(v0 + 144) = v14;
    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *v15 = v0;
    v15[1] = sub_1D2318BB8;
    v16 = *(v0 + 72);
    v17 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DDE0](v15, v14, v17, 0xD000000000000042, 0x80000001D28B0B60, sub_1D233FD78, v16, v10 + 8);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7(1);
  }
}

uint64_t sub_1D2318BB8()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D2318CFC, v3, v2);
}

uint64_t sub_1D2318CFC()
{
  v1 = v0[9];

  swift_getKeyPath();
  v0[7] = v1;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert);
  if (v2)
  {
    v3 = v0[9];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[8] = v3;
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert) = 0;
  }

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_1D2318E90()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) = 0;
      sub_1D23068A8(0);
    }
  }

  return result;
}

uint64_t ComposingViewModel.load(fromAPIRecipe:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA120);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - v4;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_1D2880C48;
  *(v8 + 24) = v7;
  v11[0] = &unk_1D2883570;
  v11[1] = v8;
  sub_1D2870F78();
  v9 = a1;
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60);
  sub_1D2878638();

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D23191A4(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = sub_1D2873CB8();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v2[33] = swift_task_alloc();
  v4 = type metadata accessor for PlaygroundImage();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v5 = sub_1D2872008();
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  sub_1D2878568();
  v2[40] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v2[41] = v7;
  v2[42] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D23193A0, v7, v6);
}

uint64_t sub_1D23193A0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[43] = Strong;
  if (!Strong)
  {

LABEL_11:

    v17 = v0[1];

    return v17();
  }

  v2 = Strong;
  swift_getKeyPath();
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  v0[18] = v2;
  v0[44] = v3;
  v0[45] = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading;
  v0[46] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading;
  if (*(v2 + v4))
  {

    sub_1D2872658();
    v5 = sub_1D2873CA8();
    v6 = sub_1D2878A18();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[32];
    v9 = v0[28];
    v10 = v0[29];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v5, v6, "A recipe is already loading in the viewModel, dropping the request for a new load", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v8, v9);
    goto LABEL_11;
  }

  swift_getKeyPath();
  v12 = swift_task_alloc();
  *(v12 + 16) = v2;
  *(v12 + 24) = 1;
  v0[19] = v2;
  sub_1D28719D8();
  v0[47] = 0;

  v13 = sub_1D2878D18();
  v14 = sub_1D2878D38();
  v15 = swift_task_alloc();
  v0[48] = v15;
  *v15 = v0;
  v15[1] = sub_1D23196E0;

  return sub_1D2318744(v13 & 1, v14 & 1);
}

uint64_t sub_1D23196E0(char a1)
{
  v2 = *v1;
  *(*v1 + 496) = a1;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);

  return MEMORY[0x1EEE6DFA0](sub_1D2319808, v4, v3);
}

uint64_t sub_1D2319808()
{
  if (*(v0 + 496) == 1)
  {
    v1 = *(v0 + 344);
    v3 = *(v0 + 304);
    v2 = *(v0 + 312);
    v4 = *(v0 + 296);
    v5 = *(v0 + 216);
    swift_getKeyPath();
    *(v0 + 176) = v1;
    sub_1D28719E8();

    v6 = *(v1 + 40);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context;
    *(v0 + 392) = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context;
    v9 = *(v1 + v8);
    v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
    swift_beginAccess();
    (*(v3 + 16))(v2, v9 + v10, v4);
    LOBYTE(v10) = sub_1D2871F78();
    (*(v3 + 8))(v2, v4);
    v11 = sub_1D22FC2DC();
    v12 = sub_1D230E0CC();
    *(v0 + 400) = type metadata accessor for LoadGPRecipeInContextOperation();
    v13 = swift_allocObject();
    *(v0 + 408) = v13;
    *(v13 + 72) = 0u;
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0u;
    *(v13 + 120) = 0;
    *(v13 + 128) = 1;
    *(v13 + 16) = v5;
    *(v13 + 24) = v6;
    *(v13 + 32) = sub_1D2341890;
    *(v13 + 40) = v7;
    *(v13 + 48) = v10 & 1;
    *(v13 + 56) = v11;
    *(v13 + 64) = v12;
    v14 = v5;
    sub_1D2340EEC(0);
    v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager;
    *(v0 + 416) = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager;
    *(v0 + 424) = *(v1 + v15);
    sub_1D2870F78();
    sub_1D2870F78();
    v16 = swift_task_alloc();
    *(v0 + 432) = v16;
    *v16 = v0;
    v16[1] = sub_1D2319C94;

    return sub_1D27F9C50(v13, &off_1EEC2DB40);
  }

  else
  {

    v18 = *(v0 + 368);
    v19 = *(v0 + 344);
    if (*(v19 + v18))
    {
      swift_getKeyPath();
      v20 = swift_task_alloc();
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v0 + 168) = v19;
      sub_1D28719D8();
    }

    else
    {
      *(v19 + v18) = 0;
      sub_1D23068A8(0);
    }

    v21 = *(v0 + 344);
    sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
    sub_1D22CA210();
    sub_1D254A228();

    sub_1D22C9C60();
    sub_1D24A3688(1);

    if (*(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 1)
    {
      sub_1D2324CC4();
    }

    else
    {
      v22 = *(v0 + 344);
      swift_getKeyPath();
      v23 = swift_task_alloc();
      *(v23 + 16) = v22;
      *(v23 + 24) = 1;
      *(v0 + 160) = v22;
      sub_1D28719D8();
    }

    v24 = *(v0 + 8);

    return v24();
  }
}