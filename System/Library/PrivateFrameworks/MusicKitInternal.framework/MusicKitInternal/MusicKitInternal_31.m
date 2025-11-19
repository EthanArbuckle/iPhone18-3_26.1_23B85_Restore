uint64_t sub_1D51154B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0330, &unk_1D5636CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5115528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0330, &unk_1D5636CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5115598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0330, &unk_1D5636CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicLibrary.downloadedItemsCenter.getter()
{
  v0 = *(sub_1D4E5A1CC() + 16);

  return v0;
}

uint64_t sub_1D511563C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D51156B4();
  *a2 = v5;
  return result;
}

uint64_t sub_1D5115678(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return sub_1D5115740(&v4);
}

uint64_t sub_1D51156B4()
{
  v1 = *(v0 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21DownloadedItemsCenter_lock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0338, &qword_1D5636D00);
  return OUTLINED_FUNCTION_1_84();
}

uint64_t sub_1D5115740(uint64_t *a1)
{
  v2 = *a1;
  v12 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21DownloadedItemsCenter_lock);
  OUTLINED_FUNCTION_0_93();
  if (!v2)
  {
  }

  v4 = v12;
  result = sub_1D4E62628(v12);
  if (!result)
  {
LABEL_9:
  }

  v6 = result;
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA6EB9B0](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      ++v7;
      v9 = *(v8 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary23DownloadedItemsObserver_handler);
      v10 = *(v8 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary23DownloadedItemsObserver_handler + 8);
      v11 = v2;
      v9(&v11);
    }

    while (v6 != v7);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D511585C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0340, &qword_1D5636D08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    if (!a2)
    {
    }

    goto LABEL_8;
  }

  if (!a2)
  {
    v16 = *(a1 + 16);
LABEL_8:

    goto LABEL_9;
  }

  v12 = *(a1 + 16);
  swift_bridgeObjectRetain_n();

  sub_1D4F91528(v11, a2);
  v14 = v13;

  result = swift_bridgeObjectRelease_n();
  if ((v14 & 1) == 0)
  {
LABEL_9:
    v17 = *(a1 + 16);
    *(a1 + 16) = a2;

    v18 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21DownloadedItemsCenter_downloadedItemsObservers;
    swift_beginAccess();
    (*(v7 + 16))(v10, a1 + v18, v6);
    v19 = sub_1D5611E58();
    (*(v7 + 8))(v10, v6);
    v20 = *a3;
    *a3 = v19;
  }

  return result;
}

uint64_t (*sub_1D5115A5C(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v2 = *(v1 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21DownloadedItemsCenter_lock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0338, &qword_1D5636D00);
  OUTLINED_FUNCTION_1_84();
  return sub_1D5115AE8;
}

uint64_t sub_1D5115AE8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v5 = *a1;

    sub_1D5115740(&v5);
  }

  else
  {
    v5 = *a1;
    return sub_1D5115740(&v5);
  }
}

uint64_t sub_1D5115C14(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D560C368();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a2);
  v9 = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0340, &qword_1D5636D08);
  sub_1D5611E88();
  return swift_endAccess();
}

uint64_t MusicLibrary.DownloadedItemsCenter.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21DownloadedItemsCenter_downloadedItemsObservers;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0340, &qword_1D5636D08);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21DownloadedItemsCenter_lock);

  return v0;
}

uint64_t MusicLibrary.DownloadedItemsCenter.__deallocating_deinit()
{
  MusicLibrary.DownloadedItemsCenter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5115E0C()
{
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
}

uint64_t sub_1D5115F20()
{
  result = sub_1D560D4B8();
  v2 = v1;
  v3 = HIBYTE(v1) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    goto LABEL_71;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v7 = sub_1D5341FA0();
    v23 = v24;
LABEL_70:

    if ((v23 & 1) == 0)
    {
LABEL_72:
      sub_1D511622C();
      sub_1D560D488();
      return sub_1D51161B0(v7);
    }

LABEL_71:
    v7 = 0;
    goto LABEL_72;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1D5615C58();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_22_0();
              if (!v9 & v8)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_5_63();
              if (!v9)
              {
                goto LABEL_68;
              }

              v7 = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_40_0();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_78;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_68;
            }

            v20 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_68;
            }

            v7 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_68;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v7 = 0;
      v12 = 1;
      goto LABEL_69;
    }

    if (v4 >= 1)
    {
      if (v4 != 1)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v9 & v8)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_5_63();
            if (!v9)
            {
              goto LABEL_68;
            }

            v7 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_40_0();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v12 = 0;
LABEL_69:
        v23 = v12;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_5_63();
          if (!v9)
          {
            break;
          }

          v7 = v22 + v21;
          if (__OFADD__(v22, v21))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v9)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v3)
    {
      if (v3 != 1)
      {
        OUTLINED_FUNCTION_3_77();
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_5_63();
          if (!v9)
          {
            break;
          }

          v7 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v9)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_77;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      OUTLINED_FUNCTION_3_77();
      while (1)
      {
        OUTLINED_FUNCTION_22_0();
        if (!v9 & v8)
        {
          break;
        }

        OUTLINED_FUNCTION_5_63();
        if (!v9)
        {
          break;
        }

        v7 = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        OUTLINED_FUNCTION_40_0();
        if (v9)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_79:
  __break(1u);
  return result;
}

id sub_1D51161B0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1D5614D38();

  v4 = [v2 initWithValue:a1 databaseID:v3];

  return v4;
}

unint64_t sub_1D511622C()
{
  result = qword_1EDD52638;
  if (!qword_1EDD52638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD52638);
  }

  return result;
}

uint64_t type metadata accessor for StorePlatformArtist()
{
  result = qword_1EDD55DD8;
  if (!qword_1EDD55DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D51162F0()
{
  sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EC7EDD50, &qword_1EC7EDD58, qword_1D5636D90);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_1D4F18AF4();
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_1D511651C(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  sub_1D511651C(319, &qword_1EDD56980, type metadata accessor for StorePlatformUber);
                  if (v18 > 0x3F)
                  {
                    return v17;
                  }

                  else
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1D511651C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL sub_1D51165B8(uint64_t a1, uint64_t a2)
{
  v191 = type metadata accessor for StorePlatformUber();
  v4 = OUTLINED_FUNCTION_14(v191);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v187 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v192 = v12;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDD8, &unk_1D5639570);
  OUTLINED_FUNCTION_14(v190);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v196 = v16;
  v199 = sub_1D560C0A8();
  v17 = OUTLINED_FUNCTION_4(v199);
  v195 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v189 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v23 = OUTLINED_FUNCTION_22(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v188 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v27);
  v194 = &v187 - v28;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v29 = OUTLINED_FUNCTION_14(v198);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v193 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v33);
  v197 = &v187 - v34;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v205);
  v202 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  v200 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v201 = v44;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14(v203);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  v204 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v49);
  v51 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v187 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v187 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_11();
  v67 = MEMORY[0x1EEE9AC00](v66);
  v69 = &v187 - v68;
  v70 = *(v67 + 56);
  v206 = a1;
  sub_1D4F1C460(a1, &v187 - v68, &qword_1EC7EB5B8, &unk_1D56206A0);
  v207 = a2;
  sub_1D4F1C460(a2, &v69[v70], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v69, 1, v49);
  if (v71)
  {
    OUTLINED_FUNCTION_57(&v69[v70], 1, v49);
    if (v71)
    {
      sub_1D4E50004(v69, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_14;
    }

LABEL_9:
    v72 = &qword_1EC7EC330;
    v73 = &qword_1D56222C0;
    v74 = v69;
LABEL_10:
    sub_1D4E50004(v74, v72, v73);
    return 0;
  }

  sub_1D4F1C460(v69, v62, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v69[v70], 1, v49);
  if (v71)
  {
    (*(v51 + 8))(v62, v49);
    goto LABEL_9;
  }

  (*(v51 + 32))(v56, &v69[v70], v49);
  sub_1D4F39858();
  v76 = sub_1D5614D18();
  v77 = *(v51 + 8);
  v78 = OUTLINED_FUNCTION_63_1();
  v77(v78);
  (v77)(v62, v49);
  sub_1D4E50004(v69, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v76 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v79 = type metadata accessor for StorePlatformArtist();
  v80 = v79[5];
  v81 = v206;
  v82 = v207;
  v83 = *(v207 + v80);
  if (*(v206 + v80))
  {
    if (!v83)
    {
      return 0;
    }

    v84 = *(v207 + v80);

    OUTLINED_FUNCTION_63_1();
    sub_1D4F28F1C();
    v86 = v85;

    if ((v86 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v83)
  {
    return 0;
  }

  v87 = v79[6];
  v88 = *(v82 + v87);
  if (*(v81 + v87))
  {
    if (!v88)
    {
      return 0;
    }

    v89 = *(v82 + v87);

    OUTLINED_FUNCTION_63_1();
    sub_1D4F29174();
    v91 = v90;

    if ((v91 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v88)
  {
    return 0;
  }

  v92 = v79[7];
  v93 = *(v82 + v92);
  if (*(v81 + v92))
  {
    if (!v93)
    {
      return 0;
    }

    v94 = *(v82 + v92);

    OUTLINED_FUNCTION_63_1();
    sub_1D4EF8BA4();
    v96 = v95;

    if ((v96 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v93)
  {
    return 0;
  }

  v97 = v79[8];
  v98 = *(v81 + v97);
  v99 = *(v82 + v97);
  if (v98)
  {
    if (!v99 || (sub_1D4EF81E0(v98, v99) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v99)
  {
    return 0;
  }

  v100 = v79[9];
  v101 = *(v81 + v100);
  v102 = *(v81 + v100 + 8);
  v103 = (v82 + v100);
  v104 = v101 == *v103 && v102 == v103[1];
  if (!v104 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v105 = v79[10];
  v106 = v204;
  v107 = *(v203 + 48);
  sub_1D4F1C460(v81 + v105, v204, &qword_1EC7EC960, &unk_1D56334C0);
  sub_1D4F1C460(v82 + v105, v106 + v107, &qword_1EC7EC960, &unk_1D56334C0);
  v108 = v205;
  OUTLINED_FUNCTION_57(v106, 1, v205);
  if (v71)
  {
    OUTLINED_FUNCTION_57(v106 + v107, 1, v108);
    if (v71)
    {
      sub_1D4E50004(v106, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_50;
    }

LABEL_47:
    v72 = &qword_1EC7EC968;
    v73 = &unk_1D5622290;
LABEL_48:
    v74 = v106;
    goto LABEL_10;
  }

  v109 = v201;
  sub_1D4F1C460(v106, v201, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v106 + v107, 1, v108);
  if (v110)
  {
    (*(v202 + 8))(v109, v108);
    goto LABEL_47;
  }

  v111 = v202;
  v112 = v106 + v107;
  v113 = v200;
  (*(v202 + 32))(v200, v112, v108);
  sub_1D4F7BF60();
  v114 = sub_1D5614D18();
  v115 = *(v111 + 8);
  v115(v113, v108);
  v115(v109, v108);
  sub_1D4E50004(v106, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v114 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v116 = v79[11];
  OUTLINED_FUNCTION_27_32();
  if (v117)
  {
    if (!v118)
    {
      return 0;
    }

    v121 = *v119 == *v120 && v117 == v118;
    if (!v121 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v118)
  {
    return 0;
  }

  v122 = v79[12];
  OUTLINED_FUNCTION_27_32();
  if (v123)
  {
    if (!v124)
    {
      return 0;
    }

    v127 = *v125 == *v126 && v123 == v124;
    if (!v127 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v124)
  {
    return 0;
  }

  v128 = v79[13];
  v106 = v197;
  v129 = *(v198 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v130, v131, v132, v133);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v134, v135, v136, v137);
  v138 = v199;
  OUTLINED_FUNCTION_57(v106, 1, v199);
  if (v71)
  {
    OUTLINED_FUNCTION_57(v106 + v129, 1, v138);
    if (v71)
    {
      v205 = v79;
      sub_1D4E50004(v106, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  v205 = v79;
  v139 = v194;
  sub_1D4F1C460(v106, v194, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v106 + v129, 1, v138);
  if (v140)
  {
    (*(v195 + 8))(v139, v138);
LABEL_76:
    v72 = &qword_1EC7E9FB0;
    v73 = &qword_1D562C590;
    goto LABEL_48;
  }

  v141 = v195;
  v142 = v189;
  (*(v195 + 32))(v189, v106 + v129, v138);
  OUTLINED_FUNCTION_0_94();
  sub_1D5119238(v143);
  v144 = sub_1D5614D18();
  v145 = *(v141 + 8);
  v145(v142, v138);
  v145(v139, v138);
  sub_1D4E50004(v106, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v144 & 1) == 0)
  {
    return 0;
  }

LABEL_78:
  v146 = *(v205 + 56);
  v147 = *(v190 + 48);
  v148 = v196;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v149, v150, v151, v152);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v153, v154, v155, v156);
  v157 = v191;
  OUTLINED_FUNCTION_57(v148, 1, v191);
  if (v71)
  {
    OUTLINED_FUNCTION_57(v148 + v147, 1, v157);
    if (v71)
    {
      sub_1D4E50004(v196, &qword_1EC7EFBD0, &qword_1D5634650);
      goto LABEL_88;
    }

    goto LABEL_86;
  }

  sub_1D4F1C460(v148, v192, &qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_57(v148 + v147, 1, v157);
  if (v158)
  {
    OUTLINED_FUNCTION_17_40();
    sub_1D5119130(v192, v159);
LABEL_86:
    v72 = &qword_1EC7EFDD8;
    v73 = &unk_1D5639570;
    v74 = v196;
    goto LABEL_10;
  }

  v160 = v196;
  v161 = v196 + v147;
  v162 = v187;
  sub_1D5119188(v161, v187);
  v163 = v192;
  v164 = sub_1D54D5E40(v192, v162);
  sub_1D5119130(v162, type metadata accessor for StorePlatformUber);
  sub_1D5119130(v163, type metadata accessor for StorePlatformUber);
  sub_1D4E50004(v160, &qword_1EC7EFBD0, &qword_1D5634650);
  if (!v164)
  {
    return 0;
  }

LABEL_88:
  v165 = *(v205 + 60);
  v166 = *(v198 + 48);
  v167 = v193;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v168, v169, v170, v171);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v172, v173, v174, v175);
  OUTLINED_FUNCTION_57(v167, 1, v199);
  if (v71)
  {
    OUTLINED_FUNCTION_57(v193 + v166, 1, v199);
    if (v71)
    {
      sub_1D4E50004(v193, &unk_1EC7E9CA8, &unk_1D561D1D0);
      return 1;
    }

    goto LABEL_96;
  }

  v176 = v193;
  sub_1D4F1C460(v193, v188, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v176 + v166, 1, v199);
  if (v177)
  {
    (*(v195 + 8))(v188, v199);
LABEL_96:
    v72 = &qword_1EC7E9FB0;
    v73 = &qword_1D562C590;
    v74 = v193;
    goto LABEL_10;
  }

  v178 = v195;
  v179 = v193;
  v180 = v193 + v166;
  v181 = v189;
  v182 = v199;
  (*(v195 + 32))(v189, v180, v199);
  OUTLINED_FUNCTION_0_94();
  sub_1D5119238(v183);
  v184 = v188;
  v185 = sub_1D5614D18();
  v186 = *(v178 + 8);
  v186(v181, v182);
  v186(v184, v182);
  sub_1D4E50004(v179, &unk_1EC7E9CA8, &unk_1D561D1D0);
  return (v185 & 1) != 0;
}

uint64_t sub_1D5117310(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 25705 && a2 == 0xE200000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F4E73656E757469 && a2 == 0xEB00000000736574;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1684957547 && a2 == 0xE400000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 1701667182 && a2 == 0xE400000000000000;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6C725574726F6873 && a2 == 0xE800000000000000;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 1919246965 && a2 == 0xE400000000000000;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 7107189 && a2 == 0xE300000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1D5616168();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1D51176C0(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6169726F74696465;
      break;
    case 3:
      result = 0x7365726E6567;
      break;
    case 4:
      result = 0x6D614E65726E6567;
      break;
    case 5:
      result = 25705;
      break;
    case 6:
      result = 0x6F4E73656E757469;
      break;
    case 7:
      result = 1684957547;
      break;
    case 8:
      result = 1701667182;
      break;
    case 9:
      result = 0x6C725574726F6873;
      break;
    case 10:
      result = 1919246965;
      break;
    case 11:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D51177F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0360, &qword_1D5636E80);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5119008();
  sub_1D56163D8();
  LOBYTE(v33) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  sub_1D4F7CD24();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_4_3();
  if (v2)
  {
    return (*(v7 + 8))(v12, v5);
  }

  v14 = type metadata accessor for StorePlatformArtist();
  OUTLINED_FUNCTION_61_1(v14[5]);
  v35 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D500E734(&qword_1EC7EC9D8);
  OUTLINED_FUNCTION_6_59();
  OUTLINED_FUNCTION_61_1(v14[6]);
  v35 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D51190C0(&qword_1EC7EC9F0);
  OUTLINED_FUNCTION_6_59();
  OUTLINED_FUNCTION_61_1(v14[7]);
  v35 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
  sub_1D500E7A4();
  OUTLINED_FUNCTION_6_59();
  OUTLINED_FUNCTION_61_1(v14[8]);
  v35 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D4F88BF4(&unk_1EC7ECA00);
  OUTLINED_FUNCTION_6_59();
  v15 = (v3 + v14[9]);
  v17 = *v15;
  v16 = v15[1];
  v33 = v17;
  v34 = v16;
  v35 = 5;
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160C8();
  v18 = v14[10];
  LOBYTE(v33) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  sub_1D4F7D044();
  OUTLINED_FUNCTION_4_3();
  v19 = (v3 + v14[11]);
  v20 = *v19;
  v21 = v19[1];
  LOBYTE(v33) = 7;
  OUTLINED_FUNCTION_22_14();
  sub_1D5616028();
  v22 = (v3 + v14[12]);
  v23 = *v22;
  v24 = v22[1];
  LOBYTE(v33) = 8;
  OUTLINED_FUNCTION_22_14();
  sub_1D5616028();
  v32 = v7;
  v25 = v14[13];
  LOBYTE(v33) = 9;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_94();
  sub_1D5119238(v26);
  OUTLINED_FUNCTION_22_14();
  sub_1D5616068();
  v27 = v14[14];
  LOBYTE(v33) = 10;
  type metadata accessor for StorePlatformUber();
  OUTLINED_FUNCTION_16_43();
  sub_1D5119238(v28);
  OUTLINED_FUNCTION_4_3();
  v29 = v14[15];
  LOBYTE(v33) = 11;
  OUTLINED_FUNCTION_22_14();
  sub_1D5616068();
  return (*(v32 + 8))(v12, v5);
}

uint64_t sub_1D5117C9C()
{
  v1 = v0;
  v99 = type metadata accessor for StorePlatformUber();
  v2 = OUTLINED_FUNCTION_14(v99);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v101 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v98 = v10;
  v11 = sub_1D560C0A8();
  v12 = OUTLINED_FUNCTION_4(v11);
  v103 = v13;
  v104 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v102 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v100 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v91 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v24);
  v93 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v92 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v91 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v91 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v45 = OUTLINED_FUNCTION_22(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13();
  v94 = v48;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v91 - v50;
  sub_1D4F1C460(v1, &v91 - v50, &qword_1EC7EB5B8, &unk_1D56206A0);
  v52 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v52, v53, v36);
  v96 = v43;
  v97 = v38;
  if (v82)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v38 + 32))(v43, v51, v36);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v38 + 8))(v43, v36);
  }

  v54 = type metadata accessor for StorePlatformArtist();
  if (*(v1 + v54[5]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v54[6]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v54[7]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F08318();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v54[8]))
  {
    OUTLINED_FUNCTION_27();
    v55 = OUTLINED_FUNCTION_128();
    sub_1D4F06928(v55, v56);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v57 = (v1 + v54[9]);
  v58 = *v57;
  v59 = v57[1];
  sub_1D5614E28();
  sub_1D4F1C460(v1 + v54[10], v35, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v35, 1, v24);
  if (v82)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v61 = v92;
    v60 = v93;
    (*(v93 + 32))(v92, v35, v24);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v60 + 8))(v61, v24);
  }

  v62 = (v1 + v54[11]);
  if (v62[1])
  {
    v63 = *v62;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v64 = (v1 + v54[12]);
  if (v64[1])
  {
    v65 = *v64;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v66 = v95;
  sub_1D4F1C460(v1 + v54[13], v95, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v67 = OUTLINED_FUNCTION_35_1();
  v68 = v104;
  OUTLINED_FUNCTION_57(v67, v69, v104);
  if (v82)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v71 = v102;
    v70 = v103;
    (*(v103 + 32))(v102, v66, v68);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_94();
    sub_1D5119238(v72);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v70 + 8))(v71, v68);
  }

  v73 = v101;
  v75 = v96;
  v74 = v97;
  v76 = v98;
  sub_1D4F1C460(v1 + v54[14], v98, &qword_1EC7EFBD0, &qword_1D5634650);
  v77 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v77, v78, v99);
  if (v82)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    sub_1D5119188(v76, v73);
    OUTLINED_FUNCTION_27();
    v79 = v94;
    sub_1D4F1C460(v73, v94, &qword_1EC7EB5B8, &unk_1D56206A0);
    v80 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v80, v81, v36);
    if (v82)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      (*(v74 + 32))(v75, v79, v36);
      OUTLINED_FUNCTION_27();
      sub_1D4F395F4();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      (*(v74 + 8))(v75, v36);
    }

    OUTLINED_FUNCTION_17_40();
    sub_1D5119130(v73, v83);
  }

  v84 = v100;
  sub_1D4F1C460(v1 + v54[15], v100, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v85 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v85, v86, v68);
  if (v82)
  {
    return OUTLINED_FUNCTION_36();
  }

  v88 = v102;
  v87 = v103;
  (*(v103 + 32))(v102, v84, v68);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_94();
  sub_1D5119238(v89);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  return (*(v87 + 8))(v88, v68);
}

uint64_t sub_1D5118410()
{
  sub_1D56162D8();
  sub_1D5117C9C();
  return sub_1D5616328();
}

uint64_t sub_1D5118450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v79 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v78 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v76 - v27;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0350, &unk_1D5636E70);
  OUTLINED_FUNCTION_4(v81);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v76 - v32;
  v85 = type metadata accessor for StorePlatformArtist();
  v34 = OUTLINED_FUNCTION_14(v85);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v84 = v37;
  v38 = a1[3];
  v39 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1D5119008();
  v80 = v33;
  sub_1D5616398();
  if (v2)
  {
    v83 = v2;
    v40 = 0;
    LODWORD(v41) = 0;
    v42 = 0;
    LODWORD(v80) = 0;
    v43 = v84;
    v44 = v85;
    result = __swift_destroy_boxed_opaque_existential_1(v82);
    LODWORD(v81) = 0;
    v49 = 0;
    v88 = 0;
    v50 = 0;
    goto LABEL_14;
  }

  v41 = v22;
  v76 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  LOBYTE(v86) = 0;
  sub_1D4F886BC();
  OUTLINED_FUNCTION_31_1();
  sub_1D5615F78();
  v54 = v84;
  sub_1D4FD23EC(v28, v84, &qword_1EC7EB5B8, &unk_1D56206A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  v89 = 1;
  sub_1D500E734(&qword_1EDD528F8);
  sub_1D5615F78();
  v55 = v85;
  *(v54 + v85[5]) = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  v89 = 2;
  sub_1D51190C0(&qword_1EDD52908);
  OUTLINED_FUNCTION_11_56();
  *(v54 + v55[6]) = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
  v89 = 3;
  sub_1D500E5CC();
  OUTLINED_FUNCTION_11_56();
  *(v54 + v55[7]) = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  v89 = 4;
  sub_1D4F88BF4(&qword_1EDD52778);
  OUTLINED_FUNCTION_11_56();
  *(v54 + v55[8]) = v86;
  v89 = 5;
  sub_1D4F89C9C();
  sub_1D5615FD8();
  v56 = v87;
  v57 = (v54 + v55[9]);
  *v57 = v86;
  v57[1] = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  LOBYTE(v86) = 6;
  sub_1D4F88A24();
  OUTLINED_FUNCTION_31_1();
  sub_1D5615F78();
  sub_1D4FD23EC(v41, v54 + v55[10], &qword_1EC7EC960, &unk_1D56334C0);
  LOBYTE(v86) = 7;
  v59 = sub_1D5615F38();
  v60 = (v54 + v55[11]);
  *v60 = v59;
  v60[1] = v61;
  LOBYTE(v86) = 8;
  v62 = sub_1D5615F38();
  v88 = 1;
  v63 = (v54 + v55[12]);
  *v63 = v62;
  v63[1] = v64;
  sub_1D560C0A8();
  LOBYTE(v86) = 9;
  OUTLINED_FUNCTION_0_94();
  sub_1D5119238(v65);
  sub_1D5615F78();
  v83 = 0;
  sub_1D4FD23EC(v76, v84 + v85[13], &unk_1EC7E9CA8, &unk_1D561D1D0);
  type metadata accessor for StorePlatformUber();
  LOBYTE(v86) = 10;
  OUTLINED_FUNCTION_16_43();
  sub_1D5119238(v66);
  OUTLINED_FUNCTION_31_1();
  v40 = v80;
  v67 = v83;
  sub_1D5615F78();
  v83 = v67;
  if (v67)
  {
    v68 = OUTLINED_FUNCTION_29_29();
    v69(v68);
    LODWORD(v81) = 0;
    v49 = 1;
  }

  else
  {
    sub_1D4FD23EC(v79, v84 + v85[14], &qword_1EC7EFBD0, &qword_1D5634650);
    LOBYTE(v86) = 11;
    v40 = v80;
    v70 = v83;
    sub_1D5615F78();
    v83 = v70;
    if (!v70)
    {
      v73 = OUTLINED_FUNCTION_29_29();
      v74(v73);
      v75 = v84;
      sub_1D4FD23EC(v78, v84 + v85[15], &unk_1EC7E9CA8, &unk_1D561D1D0);
      sub_1D511905C(v75, v77);
      __swift_destroy_boxed_opaque_existential_1(v82);
      return sub_1D5119130(v75, type metadata accessor for StorePlatformArtist);
    }

    v71 = OUTLINED_FUNCTION_29_29();
    v72(v71);
    v49 = 1;
    LODWORD(v81) = 1;
  }

  v43 = v84;
  v44 = v85;
  __swift_destroy_boxed_opaque_existential_1(v82);
  OUTLINED_FUNCTION_10_58();
  v42 = 1;
  LODWORD(v80) = 1;
  v50 = 1;
  result = sub_1D4E50004(v43, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v58 & 1) == 0)
  {
LABEL_14:
    if (v40)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v46 = *(v43 + v44[5]);

  if (v40)
  {
LABEL_15:
    v51 = *(v43 + v44[6]);
  }

LABEL_16:
  if (!v41)
  {
    if (!v42)
    {
      goto LABEL_18;
    }

LABEL_8:
    v47 = *(v43 + v44[9] + 8);

    if (v80)
    {
      goto LABEL_19;
    }

LABEL_9:
    if (!v50)
    {
      goto LABEL_20;
    }

LABEL_10:
    v48 = *(v43 + v44[11] + 8);

    if (v88)
    {
      goto LABEL_21;
    }

LABEL_11:
    if (!v49)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v52 = *(v43 + v44[8]);

  if (v42)
  {
    goto LABEL_8;
  }

LABEL_18:
  if (!v80)
  {
    goto LABEL_9;
  }

LABEL_19:
  result = sub_1D4E50004(v43 + v44[10], &qword_1EC7EC960, &unk_1D56334C0);
  if (v50)
  {
    goto LABEL_10;
  }

LABEL_20:
  if (!v88)
  {
    goto LABEL_11;
  }

LABEL_21:
  v53 = *(v43 + v44[12] + 8);

  if ((v49 & 1) == 0)
  {
LABEL_22:
    if (!v81)
    {
      return result;
    }

    return sub_1D4E50004(v43 + v44[14], &qword_1EC7EFBD0, &qword_1D5634650);
  }

LABEL_12:
  result = sub_1D4E50004(v43 + v44[13], &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v81 & 1) == 0)
  {
    return result;
  }

  return sub_1D4E50004(v43 + v44[14], &qword_1EC7EFBD0, &qword_1D5634650);
}

uint64_t sub_1D5118EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5117310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5118F18(uint64_t a1)
{
  v2 = sub_1D5119008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5118F54(uint64_t a1)
{
  v2 = sub_1D5119008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5118FCC()
{
  sub_1D56162D8();
  sub_1D5117C9C();
  return sub_1D5616328();
}

unint64_t sub_1D5119008()
{
  result = qword_1EC7F0358;
  if (!qword_1EC7F0358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0358);
  }

  return result;
}

uint64_t sub_1D511905C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformArtist();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D51190C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v4();
    result = OUTLINED_FUNCTION_73_2();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D5119130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D5119188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformUber();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51191EC()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C0E0);
  __swift_project_value_buffer(v0, qword_1EC87C0E0);
  return sub_1D560FFD8();
}

unint64_t sub_1D5119238(uint64_t a1)
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

_BYTE *storeEnumTagSinglePayload for StorePlatformArtist.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D511935C()
{
  result = qword_1EC7F0368;
  if (!qword_1EC7F0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0368);
  }

  return result;
}

unint64_t sub_1D51193B4()
{
  result = qword_1EC7F0370;
  if (!qword_1EC7F0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0370);
  }

  return result;
}

unint64_t sub_1D511940C()
{
  result = qword_1EC7F0378;
  if (!qword_1EC7F0378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0378);
  }

  return result;
}

uint64_t sub_1D51194F4()
{
  v0 = sub_1D560C758();
  __swift_allocate_value_buffer(v0, qword_1EDD76AA8);
  OUTLINED_FUNCTION_0_95();
  OUTLINED_FUNCTION_1_85();
  return sub_1D560C748();
}

uint64_t sub_1D5119560()
{
  v0 = sub_1D560C758();
  __swift_allocate_value_buffer(v0, qword_1EDD76DE0);
  __swift_project_value_buffer(v0, qword_1EDD76DE0);
  return sub_1D560C748();
}

uint64_t sub_1D51195E0()
{
  v0 = sub_1D560C758();
  __swift_allocate_value_buffer(v0, qword_1EDD76A90);
  OUTLINED_FUNCTION_0_95();
  return sub_1D560C748();
}

uint64_t sub_1D5119680()
{
  v0 = sub_1D560C758();
  __swift_allocate_value_buffer(v0, qword_1EC87C128);
  OUTLINED_FUNCTION_0_95();
  return sub_1D560C748();
}

uint64_t sub_1D51196F4()
{
  v0 = sub_1D560C758();
  __swift_allocate_value_buffer(v0, qword_1EC87C140);
  OUTLINED_FUNCTION_0_95();
  OUTLINED_FUNCTION_1_85();
  return sub_1D560C748();
}

uint64_t sub_1D5119760()
{
  v0 = sub_1D560C758();
  __swift_allocate_value_buffer(v0, qword_1EDD76AC0);
  OUTLINED_FUNCTION_0_95();
  OUTLINED_FUNCTION_1_85();
  return sub_1D560C748();
}

uint64_t MusicLibrary.AddToPlaylistBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D51198C8()
{
  result = qword_1EC7F0380;
  if (!qword_1EC7F0380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0388, &qword_1D5636FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0380);
  }

  return result;
}

unint64_t sub_1D5119930()
{
  result = qword_1EC7F0390;
  if (!qword_1EC7F0390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0390);
  }

  return result;
}

_BYTE *_s21AddToPlaylistBehaviorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for MusicSummaryPropertyProvider()
{
  result = qword_1EC7F0398;
  if (!qword_1EC7F0398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5119AD4()
{
  sub_1D4E518A0(319, &qword_1EDD52708);
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD53A08);
    if (v1 <= 0x3F)
    {
      sub_1D4F4E49C();
      if (v2 <= 0x3F)
      {
        sub_1D560D838();
        if (v3 <= 0x3F)
        {
          sub_1D5610088();
          if (v4 <= 0x3F)
          {
            sub_1D4E518A0(319, &qword_1EDD5F070);
            if (v5 <= 0x3F)
            {
              sub_1D4E5CF94();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D5119C4C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF28, &qword_1D56371F0);
  if (!swift_dynamicCastClass())
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002CLL, 0x80000001D5684B60);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_4_1();
LABEL_18:
    result = OUTLINED_FUNCTION_3_78();
    __break(1u);
    return result;
  }

  v4 = qword_1EC7E8A60;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_1_86();
  }

  sub_1D511AA8C();
  if (OUTLINED_FUNCTION_39_0())
  {
    if (v1[1])
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v6 = *v1;
      v5 = MEMORY[0x1E69E6530];
    }

    *a1 = v6;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = v5;
    return result;
  }

  v7 = qword_1EC7E8A68;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_0_96();
  }

  v8 = OUTLINED_FUNCTION_39_0();

  if ((v8 & 1) == 0)
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_4_1();
    goto LABEL_18;
  }

  v9 = v2[3];
  if (v9)
  {
    v10 = v2[2];

    v11 = MEMORY[0x1E6975528];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  *a1 = v10;
  a1[1] = v9;
  a1[2] = 0;
  a1[3] = v11;
  return result;
}

void sub_1D5119ECC()
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
  sub_1D560CDE8();
  sub_1D5615D48();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_78();
  __break(1u);
}

void sub_1D5119F78(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F03C0, &unk_1D56371E0);
  if (swift_dynamicCastClass())
  {

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000029, 0x80000001D5684B30);
    sub_1D5615D48();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000032, 0x80000001D5684AF0);
    v2 = *(v1 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
  }

  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_78();
  __break(1u);
}

uint64_t sub_1D511A100()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C770;
  if (qword_1EC7E8A60 != -1)
  {
    OUTLINED_FUNCTION_1_86();
  }

  *(v0 + 32) = qword_1EC87BE88;
  v1 = qword_1EC7E8A68;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_0_96();
  }

  *(v0 + 40) = qword_1EC87BE90;
  qword_1EC87C170 = v0;
}

void sub_1D511A1C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return;
    }
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1D5616168() & 1) == 0)
    {
      return;
    }
  }

  else if (v6)
  {
    return;
  }

  v8 = *(a1 + 32);
  v9 = *(a2 + 32);
  sub_1D4EF6F7C();
  if ((v10 & 1) == 0)
  {
    return;
  }

  v11 = type metadata accessor for MusicSummaryPropertyProvider();
  v12 = v11[7];
  if ((sub_1D560D6E8() & 1) == 0)
  {
    return;
  }

  v13 = v11[8];
  if ((sub_1D4F3B22C() & 1) == 0)
  {
    return;
  }

  v14 = v11[9];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (!v18)
    {
      return;
    }

    v19 = *v15 == *v17 && v16 == v18;
    if (!v19 && (sub_1D5616168() & 1) == 0)
    {
      return;
    }
  }

  else if (v18)
  {
    return;
  }

  OUTLINED_FUNCTION_44_0(v11[10]);
  sub_1D4F286E0();
  if (v20)
  {
    OUTLINED_FUNCTION_44_0(v11[11]);
    sub_1D4F286E0();
    if (v21)
    {
      OUTLINED_FUNCTION_44_0(v11[12]);
      sub_1D4F286E0();
      if (v22)
      {
        OUTLINED_FUNCTION_44_0(v11[13]);

        sub_1D4F286E0();
      }
    }
  }
}

void sub_1D511A330()
{
  v1 = v0;
  if (*(v0 + 8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v2 = *v0;
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v2);
  }

  if (v0[3])
  {
    v3 = v0[2];
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v4 = v0[4];
  sub_1D4F070FC();
  v5 = type metadata accessor for MusicSummaryPropertyProvider();
  v6 = v5[7];
  sub_1D560D838();
  sub_1D511AAF0(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  OUTLINED_FUNCTION_22_2();
  v7 = v5[8];
  sub_1D5610088();
  sub_1D511AAF0(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
  OUTLINED_FUNCTION_22_2();
  v8 = (v1 + v5[9]);
  if (v8[1])
  {
    v9 = *v8;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  OUTLINED_FUNCTION_32_2(v5[10]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v5[11]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v5[12]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v5[13]);

  sub_1D4F31AC0();
}

uint64_t sub_1D511A4F4()
{
  sub_1D56162D8();
  sub_1D511A330();
  return sub_1D5616328();
}

void (*sub_1D511A548(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D5119C4C(v5);
  return sub_1D511A5B4;
}

void sub_1D511A5B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 64);
    sub_1D4F508D8(v2, v2 + 32);

    sub_1D5119ECC();
  }

  v4 = *(v2 + 64);

  sub_1D5119ECC();
}

uint64_t sub_1D511A614()
{
  sub_1D56162D8();
  sub_1D511A330();
  return sub_1D5616328();
}

uint64_t sub_1D511A698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D511AAF0(&qword_1EC7F03B8, type metadata accessor for MusicSummaryPropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D511A734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D511A7A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D511A81C(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1D511A840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D511A8B4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D511A8F8(uint64_t a1)
{
  v2 = sub_1D511AAF0(&qword_1EC7F03B8, type metadata accessor for MusicSummaryPropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D511A974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D511AAF0(&qword_1EC7F03A8, type metadata accessor for MusicSummaryPropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D511AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D511AAF0(&qword_1EC7F03B0, type metadata accessor for MusicSummaryPropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

unint64_t sub_1D511AA8C()
{
  result = qword_1EC7F03C8;
  if (!qword_1EC7F03C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECF28, &qword_1D56371F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F03C8);
  }

  return result;
}

uint64_t sub_1D511AAF0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1D511AB38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD30, &qword_1D561DB18);
  v0 = swift_allocObject();
  *&result = 6;
  *(v0 + 16) = xmmword_1D562D010;
  *(v0 + 32) = &_s12Migrate0To10VN;
  *(v0 + 40) = &off_1F50AE1A0;
  *(v0 + 48) = &_s13Migrate10To20VN;
  *(v0 + 56) = &off_1F50AE188;
  *(v0 + 64) = &_s13Migrate20To30VN;
  *(v0 + 72) = &off_1F50AE170;
  *(v0 + 80) = &_s13Migrate30To40VN;
  *(v0 + 88) = &off_1F50AE158;
  *(v0 + 96) = &_s13Migrate40To50VN;
  *(v0 + 104) = &off_1F50AE140;
  *(v0 + 112) = &_s13Migrate50To60VN;
  *(v0 + 120) = &off_1F50AE128;
  qword_1EDD76CE0 = v0;
  return result;
}

uint64_t sub_1D511AC58(uint64_t a1)
{
  *(v1 + 16) = 0xD000000000000030;
  *(v1 + 96) = a1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 0x80000001D5684B90;
  *(v1 + 48) = 0;
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_1D511AD34;

  return (sub_1D52AC764)(v1 + 16);
}

uint64_t sub_1D511AD34()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 104);
  *v4 = *v1;
  v3[14] = v7;
  v3[15] = v8;

  if (v0)
  {
    OUTLINED_FUNCTION_71_0();

    return v9();
  }

  else
  {
    v11 = v3[12];

    return MEMORY[0x1EEE6DFA0](sub_1D511AE64, v11, 0);
  }
}

uint64_t sub_1D511AE64()
{
  v1 = *(v0 + 120);
  if (!v1)
  {
    return sub_1D5615E08();
  }

  if (v1 != 0xE100000000000000 || *(v0 + 112) != 49)
  {
    v3 = *(v0 + 120);
    v4 = sub_1D5616168();

    if (v4)
    {
      goto LABEL_6;
    }

    return sub_1D5615E08();
  }

  v2 = *(v0 + 120);

LABEL_6:
  OUTLINED_FUNCTION_9_0();
  *(v0 + 56) = 0xD00000000000002CLL;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = v5;
  *(v0 + 88) = 0;
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_1D511AFD0;
  v7 = *(v0 + 96);

  return sub_1D54F1FF0(v0 + 56);
}

uint64_t sub_1D511AFD0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D511B0BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4E6ED20;

  return sub_1D511AC58(a1);
}

uint64_t sub_1D511B150()
{
  *(v0 + 16) = 0xD000000000000061;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0x80000001D5684CF0;
  *(v0 + 48) = 0;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D511B210;

  return sub_1D54F1FF0(v0 + 16);
}

uint64_t sub_1D511B210()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D511B2FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return sub_1D511B150();
}

uint64_t sub_1D511B390(uint64_t a1)
{
  *(v1 + 96) = a1;
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 0x80000001D5684D60;
  *(v1 + 48) = 0;
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_1D511B454;

  return sub_1D54F1FF0(v1 + 16);
}

uint64_t sub_1D511B454()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_71_0();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_3_79(v11);
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_7_62(v12);
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_8_53(v13);

    return sub_1D54F1FF0(v15);
  }
}

uint64_t sub_1D511B5AC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D511B698(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4E73560;

  return sub_1D511B390(a1);
}

uint64_t sub_1D511B72C(uint64_t a1)
{
  *(v1 + 96) = a1;
  *(v1 + 16) = 0xD000000000000053;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 0x80000001D5684DA0;
  *(v1 + 48) = 0;
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_1D511B7F0;

  return sub_1D54F1FF0(v1 + 16);
}

uint64_t sub_1D511B7F0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_71_0();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_3_79(v11);
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_7_62(v12);
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_8_53(v13);

    return sub_1D54F1FF0(v15);
  }
}

uint64_t sub_1D511B954(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4E73560;

  return sub_1D511B72C(a1);
}

uint64_t sub_1D511B9E8(uint64_t a1)
{
  *(v1 + 96) = a1;
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 0x80000001D5684D60;
  *(v1 + 48) = 0;
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_1D511BAAC;

  return sub_1D54F1FF0(v1 + 16);
}

uint64_t sub_1D511BAAC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_71_0();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_3_79(v11);
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_7_62(v12);
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_8_53(v13);

    return sub_1D54F1FF0(v15);
  }
}

uint64_t sub_1D511BC10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4E73560;

  return sub_1D511B9E8(a1);
}

uint64_t sub_1D511BCA4(uint64_t a1)
{
  *(v1 + 136) = a1;
  *(v1 + 16) = 0xD000000000000017;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 0x80000001D5684E60;
  *(v1 + 48) = 0;
  v2 = swift_task_alloc();
  *(v1 + 144) = v2;
  *v2 = v1;
  v2[1] = sub_1D511BD68;

  return sub_1D54F1FF0(v1 + 16);
}

uint64_t sub_1D511BD68()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_71_0();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_3_79(v11);
    v12 = swift_task_alloc();
    *(v3 + 152) = v12;
    *v12 = v7;
    v12[1] = sub_1D511BED0;
    v13 = *(v3 + 136);

    return sub_1D54F1FF0(v3 + 56);
  }
}

uint64_t sub_1D511BED0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_71_0();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    *(v3 + 96) = 0xD000000000000016;
    *(v3 + 104) = v11;
    *(v3 + 112) = 0;
    *(v3 + 120) = 0;
    *(v3 + 128) = 0;
    v12 = swift_task_alloc();
    *(v3 + 160) = v12;
    *v12 = v7;
    v12[1] = sub_1D511C044;
    v13 = *(v3 + 136);

    return sub_1D54F1FF0(v3 + 96);
  }
}

uint64_t sub_1D511C044()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D511C130(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4E73560;

  return sub_1D511BCA4(a1);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D511C1DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D511C230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D511C2A4(uint64_t a1)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE90, &unk_1D561F3B0);
  v2 = *(*(v56 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v56);
  v55 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v48 - v5;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v73 = MEMORY[0x1E69E7CC0];
  sub_1D4F03A1C(0, v6, 0);
  v7 = v73;
  result = sub_1D5068458(a1);
  v10 = result;
  v11 = 0;
  v12 = a1 + 64;
  v13 = *(a1 + 32);
  v49 = a1 + 72;
  v50 = v6;
  v51 = v9;
  v52 = a1 + 64;
  v53 = a1;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << v13)
  {
    if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    if (*(a1 + 36) != v9)
    {
      goto LABEL_22;
    }

    v58 = v10 >> 6;
    v59 = 1 << v10;
    v57 = v11;
    v14 = v56;
    v63 = v7;
    v15 = *(v56 + 48);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v18 = (v16 + 16 * v10);
    v20 = *v18;
    v19 = v18[1];
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE80, &qword_1D561F3A0);
    OUTLINED_FUNCTION_4(v21);
    v23 = v22;
    v25 = v54;
    (*(v22 + 16))(&v54[v15], v17 + *(v24 + 72) * v10, v21);
    v26 = v55;
    v62 = v20;
    *v55 = v20;
    *(v26 + 8) = v19;
    v27 = &v25[v15];
    v28 = v19;
    (*(v23 + 32))(v26 + *(v14 + 48), v27, v21);
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_4_61();
    sub_1D5610708();
    v61 = v69;
    v60 = v70;
    OUTLINED_FUNCTION_4_61();
    sub_1D5610708();

    v29 = v67;
    LOBYTE(v23) = v68;
    OUTLINED_FUNCTION_4_61();
    sub_1D5610708();

    v30 = v64;
    LOBYTE(v14) = v65;
    OUTLINED_FUNCTION_4_61();
    v31 = sub_1D5610718();
    v7 = v63;
    v32 = v31;
    v72 = v23;
    v71 = v14;
    result = sub_1D511D210(v26);
    v33 = v72;
    v34 = v71;
    v73 = v7;
    v36 = *(v7 + 16);
    v35 = *(v7 + 24);
    if (v36 >= v35 >> 1)
    {
      result = sub_1D4F03A1C((v35 > 1), v36 + 1, 1);
      v7 = v73;
    }

    *(v7 + 16) = v36 + 1;
    v37 = v7 + 72 * v36;
    *(v37 + 32) = v62;
    *(v37 + 40) = v28;
    v38 = v60;
    *(v37 + 48) = v61;
    *(v37 + 56) = v38;
    *(v37 + 64) = v29;
    *(v37 + 72) = v33;
    LODWORD(v38) = *(&v69 + 3);
    *(v37 + 73) = v69;
    *(v37 + 76) = v38;
    *(v37 + 80) = v30;
    *(v37 + 88) = v34;
    LODWORD(v38) = v66[0];
    *(v37 + 92) = *(v66 + 3);
    *(v37 + 89) = v38;
    *(v37 + 96) = v32;
    a1 = v53;
    v13 = *(v53 + 32);
    v39 = 1 << v13;
    if (v10 >= 1 << v13)
    {
      goto LABEL_23;
    }

    v12 = v52;
    v40 = *(v52 + 8 * v58);
    if ((v40 & v59) == 0)
    {
      goto LABEL_24;
    }

    LODWORD(v9) = v51;
    if (*(v53 + 36) != v51)
    {
      goto LABEL_25;
    }

    v41 = v40 & (-2 << (v10 & 0x3F));
    if (v41)
    {
      v39 = __clz(__rbit64(v41)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v42 = v50;
    }

    else
    {
      v43 = v58 << 6;
      v44 = v58 + 1;
      v45 = (v49 + 8 * v58);
      v42 = v50;
      while (v44 < (v39 + 63) >> 6)
      {
        v47 = *v45++;
        v46 = v47;
        v43 += 64;
        ++v44;
        if (v47)
        {
          v39 = __clz(__rbit64(v46)) + v43;
          break;
        }
      }
    }

    v10 = v39;
    v11 = v57 + 1;
    if (v57 + 1 == v42)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D511C730(uint64_t a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE80, &qword_1D561F3A0);
  v2 = OUTLINED_FUNCTION_4(v34);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v33 - v5;
  v33[1] = v7 + 32;
  v33[2] = v7;
  v33[0] = v7 + 40;
  v8 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  v10 = (a1 + 48);
  if (!v9)
  {
    return v8;
  }

  while (1)
  {
    v35 = v9;
    v11 = *(v10 - 2);
    v12 = *(v10 - 1);
    v13 = v10[6];
    v14 = *(v10 + 40);
    v15 = v10[4];
    v16 = *(v10 + 24);
    v17 = *v10;
    v38 = *(v10 + 1);
    v39 = v16;
    v40 = v15;
    v41 = v14;
    v36 = v38;
    v37 = v17;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1D56106F8();
    swift_isUniquelyReferenced_nonNull_native();
    v37 = v8;
    v18 = sub_1D4E4EFA0();
    if (__OFADD__(*(v8 + 16), (v19 & 1) == 0))
    {
      break;
    }

    v20 = v18;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F03E0, &unk_1D5637418);
    if (sub_1D5615D78())
    {
      v22 = sub_1D4E4EFA0();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_14;
      }

      v20 = v22;
    }

    if (v21)
    {

      v8 = v37;
      v24 = OUTLINED_FUNCTION_3_80();
      (*(v25 + 40))(v24, v6);
    }

    else
    {
      v8 = v37;
      *(v37 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v26 = (*(v8 + 48) + 16 * v20);
      *v26 = v11;
      v26[1] = v12;
      v27 = OUTLINED_FUNCTION_3_80();
      (*(v28 + 32))(v27, v6);

      v29 = *(v8 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_13;
      }

      *(v8 + 16) = v31;
    }

    v10 += 9;
    v9 = v35 - 1;
    if (v35 == 1)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

uint64_t sub_1D511C9F8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = *(a2 + 24);
  if (a1[3])
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (a1[2] != *(a2 + 16))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(a2 + 40);
  if (a1[5])
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a1[4] != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D511CAAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1802396018 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D511CBC0(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 1802396018;
  }

  return 0x65756C6176;
}

uint64_t sub_1D511CC04(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F03D8, &unk_1D5637408);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D511D1BC();
  sub_1D56163D8();
  v14 = *v3;
  v15 = v3[1];
  v21[15] = 0;
  OUTLINED_FUNCTION_2_79();
  sub_1D5616028();
  if (!v2)
  {
    v16 = v3[2];
    v17 = *(v3 + 24);
    v21[14] = 1;
    OUTLINED_FUNCTION_2_79();
    sub_1D5616058();
    v18 = v3[4];
    v19 = *(v3 + 40);
    v21[13] = 2;
    OUTLINED_FUNCTION_2_79();
    sub_1D5616058();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1D511CD74()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (*(v0 + 24) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v2 = v0[2];
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v2);
  }

  if (*(v0 + 40) == 1)
  {
    return sub_1D56162F8();
  }

  v4 = v0[4];
  sub_1D56162F8();
  return MEMORY[0x1DA6EC0D0](v4);
}

uint64_t sub_1D511CE28()
{
  sub_1D56162D8();
  sub_1D511CD74();
  return sub_1D5616328();
}

uint64_t sub_1D511CE68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F03D0, &qword_1D5637400);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D511D1BC();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  OUTLINED_FUNCTION_6_33();
  v14 = sub_1D5615F38();
  v16 = v15;
  v28 = 1;
  OUTLINED_FUNCTION_6_33();
  v17 = sub_1D5615F68();
  v26 = v18;
  v25 = v17;
  v27 = 2;
  OUTLINED_FUNCTION_6_33();
  v19 = sub_1D5615F68();
  v20 = v12;
  v22 = v21;
  (*(v8 + 8))(v20, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26 & 1;
  *(a2 + 32) = v19;
  *(a2 + 40) = v22 & 1;
  return result;
}

uint64_t sub_1D511D078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D511CAAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D511D0A0(uint64_t a1)
{
  v2 = sub_1D511D1BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D511D0DC(uint64_t a1)
{
  v2 = sub_1D511D1BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D511D118@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D511CE68(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1D511D180()
{
  sub_1D56162D8();
  sub_1D511CD74();
  return sub_1D5616328();
}

unint64_t sub_1D511D1BC()
{
  result = qword_1EDD55650[0];
  if (!qword_1EDD55650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD55650);
  }

  return result;
}

uint64_t sub_1D511D210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE90, &unk_1D561F3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for CloudVideoContentRating.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D511D358()
{
  result = qword_1EC7F03E8;
  if (!qword_1EC7F03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F03E8);
  }

  return result;
}

unint64_t sub_1D511D3B0()
{
  result = qword_1EDD55640;
  if (!qword_1EDD55640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55640);
  }

  return result;
}

unint64_t sub_1D511D408()
{
  result = qword_1EDD55648;
  if (!qword_1EDD55648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55648);
  }

  return result;
}

uint64_t sub_1D511D45C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t EditorialItem.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v14 = sub_1D560D708();
  v16 = v15;
  (*(v7 + 8))(v12, v4);
  *a2 = v14;
  a2[1] = v16;
  v17 = a1[3];
  v18 = a1[4];
  v19 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v21 = a2 + *(type metadata accessor for EditorialItem() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EditorialItem.name.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  if (qword_1EDD54000 != -1)
  {
    OUTLINED_FUNCTION_17_41();
  }

  v7 = sub_1D5610978();
  OUTLINED_FUNCTION_9_57();
  sub_1D5120738(v8, v0);
  OUTLINED_FUNCTION_0_97();
  sub_1D5120738(v9, v0);
  OUTLINED_FUNCTION_21_34();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D4E50004(v6, &qword_1EC7EAC98, &unk_1D561DA80);
LABEL_6:

    return 0;
  }

  v10 = sub_1D5610938();
  v12 = v11;
  OUTLINED_FUNCTION_24_0(v7);
  (*(v13 + 8))(v6, v7);
  if (!v12)
  {
    goto LABEL_6;
  }

  return v10;
}

uint64_t static EditorialItem.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for EditorialItem() + 20);

  return sub_1D5611A78();
}

uint64_t EditorialItem.siriRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v2 = sub_1D560D838();
  v3 = OUTLINED_FUNCTION_4(v2);
  v104 = v4;
  v105 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v103 = v8 - v7;
  v9 = sub_1D5610088();
  v97 = OUTLINED_FUNCTION_4(v9);
  v98 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_5();
  v93 = v14 - v13;
  v94 = sub_1D5611AB8();
  v15 = OUTLINED_FUNCTION_4(v94);
  v92 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v91 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v22 = OUTLINED_FUNCTION_22(v21);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v102 = &v88 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v88 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v88 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  v46 = (&v88 - v45);
  v47 = type metadata accessor for EditorialItem();
  v48 = OUTLINED_FUNCTION_14(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  v53 = v52 - v51;
  sub_1D511F2C4(v1, v52 - v51);
  v54 = EditorialItem.name.getter();
  v95 = v55;
  v96 = v54;
  v99 = v46;
  sub_1D4F5C79C();
  sub_1D56106B8();
  v100 = v40;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  if (qword_1EDD53FE0 != -1)
  {
    swift_once();
  }

  sub_1D560C0A8();
  OUTLINED_FUNCTION_4_62();
  sub_1D5120738(v60, v46);
  OUTLINED_FUNCTION_0_97();
  v62 = sub_1D5120738(v61, v46);
  v90 = v34;
  sub_1D560EC28();
  v63 = v102;
  OUTLINED_FUNCTION_33();
  v64 = v97;
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v97);
  v107 = v47;
  v108 = v62;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v106);
  v89 = v53;
  sub_1D511F2C4(v53, boxed_opaque_existential_0);
  v69 = __swift_project_boxed_opaque_existential_1(v106, v107);
  v70 = v91;
  v71 = v92;
  v72 = v94;
  (*(v92 + 16))(v91, &v69[*(v47 + 20)], v94);
  v73 = v93;
  sub_1D5611A98();
  (*(v71 + 8))(v70, v72);
  sub_1D560FDD8();
  (*(v98 + 8))(v73, v64);
  sub_1D4E50004(v63, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v64);
  sub_1D4F39A1C(v27, v63, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_destroy_boxed_opaque_existential_1(v106);
  v74 = v103;
  sub_1D560EC98();
  sub_1D4F39AB0(v63, v27, &qword_1EC7EA358, &unk_1D561DF50);
  v75 = type metadata accessor for MusicSiriRepresentation();
  v76 = v27;
  v77 = v101;
  v78 = v99;
  sub_1D4F39AB0(v99, v101 + v75[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v79 = v100;
  sub_1D4F39AB0(v100, v77 + v75[9], &qword_1EC7EC478, &unk_1D56299D0);
  v80 = v77 + v75[10];
  v81 = v90;
  sub_1D4F39AB0(v90, v80, &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v106[0]) = 4;
  sub_1D50391CC();
  v83 = v82;
  v85 = v84;
  sub_1D4E50004(v76, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v104 + 8))(v74, v105);
  sub_1D4E50004(v63, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v81, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v79, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v78, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = sub_1D5120508(v89, type metadata accessor for EditorialItem);
  *v77 = v83;
  *(v77 + 8) = v85;
  *(v77 + 16) = 4;
  v87 = v95;
  *(v77 + 24) = v96;
  *(v77 + 32) = v87;
  *(v77 + 40) = 0;
  *(v77 + 48) = 0;
  return result;
}

uint64_t EditorialItem.debugDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31();
  v6 = sub_1D5610978();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  strcpy(v24, "EditorialItem(");
  HIBYTE(v24[1]) = -18;
  v15 = *v0;
  v16 = v0[1];
  v17 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v17);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A646920200ALL, 0xE800000000000000);

  v18 = EditorialItem.name.getter();
  MEMORY[0x1DA6EAC70](v18);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x656D616E20200A2CLL, 0xEB0000000022203ALL);

  if (qword_1EDD54000 != -1)
  {
    OUTLINED_FUNCTION_17_41();
  }

  sub_1D5120738(&qword_1EDD57650, type metadata accessor for EditorialItem);
  OUTLINED_FUNCTION_0_97();
  sub_1D5120738(v19, type metadata accessor for EditorialItem);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v1, 1, v6) == 1)
  {
    sub_1D4E50004(v1, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    (*(v9 + 32))(v14, v1, v6);
    sub_1D5615B68();

    sub_1D5610928();
    sub_1D4F53278();
    v20 = sub_1D5615968();
    v22 = v21;

    MEMORY[0x1DA6EAC70](v20, v22);

    MEMORY[0x1DA6EAC70](0xD000000000000014, 0x80000001D5682030);

    (*(v9 + 8))(v14, v6);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v24[0];
}

uint64_t EditorialItem.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t EditorialItem.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditorialItem() + 20);
  v4 = sub_1D5611AB8();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t EditorialItem._editorialArtworks.getter()
{
  if (qword_1EDD53FE8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_3_81();
  sub_1D5120738(v1, v0);
  OUTLINED_FUNCTION_0_97();
  sub_1D5120738(v2, v0);
  OUTLINED_FUNCTION_36_1();
  return v4;
}

uint64_t EditorialItem._editorialVideoArtworks.getter()
{
  sub_1D4F84B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_3_81();
  sub_1D5120738(v1, v0);
  OUTLINED_FUNCTION_0_97();
  sub_1D5120738(v2, v0);
  OUTLINED_FUNCTION_36_1();

  return v4;
}

uint64_t sub_1D511E4DC(void *a1, uint64_t *a2, void (*a3)(void))
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = *a2;
  a3(0);
  OUTLINED_FUNCTION_9_57();
  sub_1D5120738(v7, v3);
  OUTLINED_FUNCTION_0_97();
  sub_1D5120738(v8, v3);
  OUTLINED_FUNCTION_21_34();

  return sub_1D560EC28();
}

uint64_t EditorialItem.mainUberArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CloudEditorialUber();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2F8, &unk_1D5637550);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_31();
  if (qword_1EDD53FF0 != -1)
  {
    swift_once();
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3C8, &unk_1D5631030);
  sub_1D5120738(&qword_1EDD57650, type metadata accessor for EditorialItem);
  OUTLINED_FUNCTION_0_97();
  sub_1D5120738(v21, type metadata accessor for EditorialItem);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v15, 1, v20) == 1)
  {
    v22 = &qword_1EC7EF2F8;
    v23 = &unk_1D5637550;
    v24 = v15;
  }

  else
  {
    sub_1D5610708();
    OUTLINED_FUNCTION_24_0(v20);
    (*(v25 + 8))(v15, v20);
    sub_1D4F39A1C(v9, v1, &qword_1EC7EB5B8, &unk_1D56206A0);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    if (__swift_getEnumTagSinglePayload(v1, 1, v26) != 1)
    {
      sub_1D5610758();
      OUTLINED_FUNCTION_24_0(v26);
      (*(v28 + 8))(v1, v26);
      v27 = 0;
      goto LABEL_9;
    }

    v22 = &qword_1EC7EB5B8;
    v23 = &unk_1D56206A0;
    v24 = v1;
  }

  sub_1D4E50004(v24, v22, v23);
  v27 = 1;
LABEL_9:
  v29 = sub_1D56140F8();
  return __swift_storeEnumTagSinglePayload(a1, v27, 1, v29);
}

uint64_t sub_1D511E8A0(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED210, &unk_1D5637540);
  OUTLINED_FUNCTION_3_81();
  sub_1D5120738(v5, v2);
  OUTLINED_FUNCTION_0_97();
  sub_1D5120738(v6, v2);
  OUTLINED_FUNCTION_36_1();
  if (v8)
  {
    return v8;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t EditorialItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for EditorialItem() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_8_54();
  sub_1D5120738(v4, v5);
  return sub_1D5614CB8();
}

uint64_t EditorialItem.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for EditorialItem() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_8_54();
  sub_1D5120738(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D511EAF8(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D5120738(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D511EB9C@<X0>(uint64_t *a1@<X8>)
{
  result = EditorialItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EditorialItem.subscript.getter(void *a1)
{
  return sub_1D511EC04(a1, MEMORY[0x1E69750B8]);
}

{
  return sub_1D511EC04(a1, MEMORY[0x1E6975378]);
}

{
  v2 = (*a1 + *MEMORY[0x1E6975138]);
  v3 = v2[1];
  v4 = v2[2];
  sub_1D560DAB8();
  OUTLINED_FUNCTION_4_62();
  sub_1D5120738(v5, v1);
  OUTLINED_FUNCTION_13_42(&qword_1EDD57650);
  OUTLINED_FUNCTION_0_97();
  sub_1D5120738(v6, v1);
  v8 = v2[3];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D511EC04(void *a1, void *a2)
{
  v3 = *a1 + *a2;
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_4_62();
  sub_1D5120738(v5, v2);
  OUTLINED_FUNCTION_13_42(&qword_1EDD57650);
  OUTLINED_FUNCTION_0_97();
  sub_1D5120738(v6, v2);
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D511EDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D5120738(&qword_1EDD57650, type metadata accessor for EditorialItem);
  v12 = sub_1D5120738(&qword_1EC7EAA18, type metadata accessor for EditorialItem);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D511EF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D5120738(&qword_1EDD57650, type metadata accessor for EditorialItem);
  v14 = sub_1D5120738(&qword_1EC7EAA18, type metadata accessor for EditorialItem);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D511F06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D5120738(&qword_1EDD57650, type metadata accessor for EditorialItem);
  v14 = sub_1D5120738(&qword_1EC7EAA18, type metadata accessor for EditorialItem);
  *v12 = v5;
  v12[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D511F1B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD70, &unk_1D5622F60);
  swift_getKeyPath();
  sub_1D4FCE3FC();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD768D8 = v0;
  return result;
}

uint64_t sub_1D511F230()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD70, &unk_1D5622F60);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_57();
  sub_1D5120738(v1, v2);
  OUTLINED_FUNCTION_28_1();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD768E8 = v0;
  return result;
}

uint64_t sub_1D511F2C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D511F328()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD70, &unk_1D5622F60);
  swift_getKeyPath();
  sub_1D5120738(&qword_1EDD55C48, type metadata accessor for EditorialElementLink);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD768C8 = v0;
  return result;
}

uint64_t sub_1D511F3C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD70, &unk_1D5622F60);
  swift_getKeyPath();
  sub_1D5120738(&qword_1EDD5CF88, MEMORY[0x1E6968FB0]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD768D0 = v0;
  return result;
}

uint64_t sub_1D511F460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD70, &unk_1D5622F60);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D5120684();
  OUTLINED_FUNCTION_28_1();
  v0 = sub_1D560D128();

  qword_1EDD54010 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.editorialCards.getter()
{
  OUTLINED_FUNCTION_26_36();
  return sub_1D50355DC(v0);
}

{
  return sub_1D50355DC(&qword_1EDD542D8);
}

{
  return sub_1D50355DC(&qword_1EC7E95A8);
}

uint64_t sub_1D511F554()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD70, &unk_1D5622F60);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D5120684();
  OUTLINED_FUNCTION_23_36(18);
  v0 = sub_1D560D128();

  qword_1EDD54038 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.plainEditorialCards.getter()
{
  OUTLINED_FUNCTION_24_32();
  return sub_1D50355DC(v0);
}

{
  return sub_1D50355DC(&qword_1EC7E95B8);
}

uint64_t sub_1D511F640()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD70, &unk_1D5622F60);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_11_57();
  sub_1D5120738(v0, v1);
  OUTLINED_FUNCTION_23_36(19);
  v2 = sub_1D560D138();

  qword_1EDD54020 = v2;
  return result;
}

uint64_t sub_1D511F74C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD70, &unk_1D5622F60);
  swift_getKeyPath();
  sub_1D5120738(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD768E0 = v0;
  return result;
}

uint64_t sub_1D511F7F4()
{
  sub_1D5120738(&qword_1EDD57650, type metadata accessor for EditorialItem);
  sub_1D5120738(&qword_1EC7EB3D0, type metadata accessor for EditorialItem);

  return sub_1D560CBD8();
}

uint64_t static EditorialItem.catalogFilterID(for:)()
{
  swift_getKeyPath();
  sub_1D56159B8();
  v0 = sub_1D5614D18();

  if (v0)
  {
    return sub_1D5610A08();
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t static EditorialItem.requiredQueryItemsForCloudRequest<A>(configuration:)(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v63 = sub_1D560BB98();
  v4 = OUTLINED_FUNCTION_4(v63);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v62 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31();
  v15 = type metadata accessor for MusicRequestConfiguration();
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v60 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0400, &unk_1D5637590);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v59 - v26;
  v28 = *(a2 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v33 = sub_1D560CD48();
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  (*(v28 + 16))(v32, v61, a2);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v33);
    (*(v36 + 32))(v41, v27, v33);
    sub_1D560CCE8();
    (*(v36 + 8))(v41, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v2, 0, 1, v15);
      v42 = v60;
      sub_1D4E56C6C(v2, v60);
      v43 = *(v42 + *(v15 + 68));
      sub_1D5120508(v42, type metadata accessor for MusicRequestConfiguration);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v15);
    v47 = &qword_1EC7EA838;
    v48 = &unk_1D561CB10;
    v49 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v33);
    v47 = &qword_1EC7F0400;
    v48 = &unk_1D5637590;
    v49 = v27;
  }

  sub_1D4E50004(v49, v47, v48);
  v43 = 7;
LABEL_7:
  v64[0] = v43;
  v53 = v62;
  sub_1D514E568(v64);
  sub_1D4EFFE00();
  v55 = v54;
  v56 = *(v54 + 16);
  if (v56 >= *(v54 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v55 = v58;
  }

  *(v55 + 16) = v56 + 1;
  (*(v6 + 32))(v55 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v56, v53, v63);
  return v55;
}

uint64_t sub_1D511FE1C()
{
  sub_1D5120738(&qword_1EC7EB3D0, type metadata accessor for EditorialItem);

  return sub_1D5610C58();
}

uint64_t EditorialItem.init(from:)(uint64_t *a1)
{
  type metadata accessor for EditorialItem();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_1_87();
  sub_1D5120738(v3, v4);
  OUTLINED_FUNCTION_12_46();
  sub_1D5120738(v5, v1);
  OUTLINED_FUNCTION_14_43(&qword_1EDD56740);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EditorialItem.encode(to:)()
{
  type metadata accessor for EditorialItem();
  OUTLINED_FUNCTION_1_87();
  sub_1D5120738(v1, v2);
  OUTLINED_FUNCTION_12_46();
  sub_1D5120738(v3, v0);
  OUTLINED_FUNCTION_14_43(&qword_1EDD56740);
  return sub_1D5612688();
}

unint64_t EditorialItem.description.getter()
{
  sub_1D5615B68();

  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](0x3A656D616E202C22, 0xEA00000000002220);
  v4 = EditorialItem.name.getter();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0xD000000000000013;
}

uint64_t sub_1D5120164()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7F03F0 = v4;
  return result;
}

uint64_t sub_1D5120270()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D561C050;
  result = (*(v2 + 104))(v6 + v5, *MEMORY[0x1E6975218], v0);
  qword_1EDD57698 = v6;
  return result;
}

uint64_t sub_1D5120378()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD57670);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for EditorialItem();
  OUTLINED_FUNCTION_1_87();
  sub_1D5120738(v3, v4);
  return sub_1D560D988();
}

uint64_t sub_1D5120424()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53D78);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD57668 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDD57670);
  OUTLINED_FUNCTION_24_0(v0);
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D5120508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D51205A8(uint64_t a1)
{
  result = sub_1D5120738(&qword_1EDD57650, type metadata accessor for EditorialItem);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5120684()
{
  result = qword_1EDD52838;
  if (!qword_1EDD52838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED210, &unk_1D5637540);
    sub_1D5120738(&qword_1EDD57740, type metadata accessor for EditorialCard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52838);
  }

  return result;
}

uint64_t sub_1D5120738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TVEpisodePropertyProvider()
{
  result = qword_1EC7F0410;
  if (!qword_1EC7F0410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5120828()
{
  sub_1D51210E8(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 > 0x3F)
  {
    return v1;
  }

  sub_1D4E518A0(319, &qword_1EC7F0420);
  if (v4 > 0x3F)
  {
    return v3;
  }

  sub_1D51210E8(319, &qword_1EDD533B8, MEMORY[0x1E6975930], MEMORY[0x1E69E6720]);
  if (v5 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EDD52820, &qword_1EC7EA3D0, &unk_1D56223F0);
  if (v6 > 0x3F)
  {
    return v3;
  }

  sub_1D4E518A0(319, &qword_1EDD5F070);
  if (v8 > 0x3F)
  {
    return v7;
  }

  sub_1D4E6D600(319, &qword_1EC7F0428, &qword_1EC7ED208, &unk_1D5623F80);
  if (v9 > 0x3F)
  {
    return v3;
  }

  sub_1D51210E8(319, &qword_1EDD5CF48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v11 > 0x3F)
  {
    return v10;
  }

  sub_1D4E518A0(319, &qword_1EDD52730);
  if (v12 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
  if (v13 > 0x3F)
  {
    return v3;
  }

  sub_1D51210E8(319, &qword_1EDD53188, MEMORY[0x1E6975E48], MEMORY[0x1E69E6720]);
  if (v15 > 0x3F)
  {
    return v14;
  }

  sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
  if (v16 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
  if (v17 > 0x3F)
  {
    return v3;
  }

  sub_1D4E518A0(319, &qword_1EDD5F550);
  v19 = v18;
  if (v20 > 0x3F)
  {
    return v19;
  }

  sub_1D51210E8(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v21 > 0x3F)
  {
    return v3;
  }

  sub_1D51210E8(319, &qword_1EDD52EE8, MEMORY[0x1E69768B0], MEMORY[0x1E69E6720]);
  if (v22 > 0x3F)
  {
    return v3;
  }

  sub_1D51210E8(319, &qword_1EDD52ED0, MEMORY[0x1E69768E8], MEMORY[0x1E69E6720]);
  if (v23 > 0x3F)
  {
    return v3;
  }

  sub_1D51210E8(319, &qword_1EDD52EB0, MEMORY[0x1E6976A18], MEMORY[0x1E69E6720]);
  if (v24 > 0x3F)
  {
    return v3;
  }

  sub_1D4E518A0(319, &qword_1EC7F0430);
  if (v25 > 0x3F)
  {
    return v3;
  }

  sub_1D51210E8(319, &qword_1EDD52A40, MEMORY[0x1E69774A0], MEMORY[0x1E69E6720]);
  if (v26 > 0x3F)
  {
    return v3;
  }

  sub_1D4E518A0(319, &qword_1EDD52708);
  v19 = v27;
  if (v28 > 0x3F)
  {
    return v19;
  }

  sub_1D4E6D600(319, &qword_1EDD52850, &qword_1EC7ECBC0, &qword_1D562BF20);
  if (v29 > 0x3F)
  {
    return v3;
  }

  sub_1D4E518A0(319, &qword_1EDD56B78);
  if (v30 > 0x3F)
  {
    return v3;
  }

  sub_1D51210E8(319, &qword_1EDD53158, MEMORY[0x1E6975E88], MEMORY[0x1E69E6720]);
  if (v31 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EC7F0438, &qword_1EC7EDBB0, L"X\b\t");
  v1 = v32;
  if (v33 <= 0x3F)
  {
    sub_1D51210E8(319, &qword_1EC7F0440, MEMORY[0x1E6975BA8], MEMORY[0x1E69E6720]);
    v1 = v34;
    if (v35 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD557F8);
      v1 = v36;
      if (v37 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EDD5D780, &qword_1EC7EA378, &qword_1D561D140);
        v1 = v38;
        if (v39 <= 0x3F)
        {
          sub_1D4E6D600(319, &qword_1EC7F0448, &qword_1EC7EA518, &unk_1D5623F50);
          v1 = v40;
          if (v41 <= 0x3F)
          {
            sub_1D4E6D600(319, &qword_1EC7F0450, &qword_1EC7EA380, &qword_1D561C090);
            v1 = v42;
            if (v43 <= 0x3F)
            {
              sub_1D4E6D600(319, &qword_1EDD53BB0, &qword_1EC7EA448, &unk_1D561D110);
              v1 = v44;
              if (v45 <= 0x3F)
              {
                sub_1D4E6D600(319, &qword_1EC7F0458, &qword_1EC7EA370, &unk_1D561C080);
                v1 = v46;
                if (v47 <= 0x3F)
                {
                  sub_1D4E6D600(319, &qword_1EDD53B60, &qword_1EC7EA538, &qword_1D561C490);
                  v1 = v48;
                  if (v49 <= 0x3F)
                  {
                    sub_1D4E6D600(319, &qword_1EDD52790, &qword_1EC7ED150, &unk_1D565B6C0);
                    v1 = v50;
                    if (v51 <= 0x3F)
                    {
                      sub_1D51210E8(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
                      v1 = v52;
                      if (v53 <= 0x3F)
                      {
                        v1 = sub_1D560D838();
                        if (v54 <= 0x3F)
                        {
                          v1 = sub_1D5610088();
                          if (v55 <= 0x3F)
                          {
                            sub_1D4E5CF94();
                            v1 = v56;
                            if (v57 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                              return 0;
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

  return v1;
}

void sub_1D51210E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5121194(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v412 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_22(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  v63 = v411 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v65 = OUTLINED_FUNCTION_22(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v69);
  v71 = v411 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v73 = OUTLINED_FUNCTION_22(v72);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v76);
  v78 = v411 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v80 = OUTLINED_FUNCTION_22(v79);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v85);
  v87 = v411 - v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v88);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v91);
  v93 = v411 - v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v95 = OUTLINED_FUNCTION_22(v94);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v98);
  v100 = v411 - v99;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  v102 = swift_dynamicCastClass();
  if (!v102)
  {
    *&v415 = 0;
    *(&v415 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D5685600);
    v414[0] = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_193;
  }

  v103 = v102;
  v104 = qword_1EC7E9170;
  v413 = a1;

  if (v104 != -1)
  {
    OUTLINED_FUNCTION_121_6();
  }

  *&v415 = qword_1EC87C388;
  v414[0] = v103;
  sub_1D4EC5794(&qword_1EC7F0490, &qword_1EC7ECD78, &qword_1D5637C70);
  if (sub_1D5614D18())
  {
    sub_1D4F1C460(v411[19], v100, &qword_1EC7E9CA0, &unk_1D561A0C0);
    sub_1D56140F8();
    OUTLINED_FUNCTION_1(v100);
    if (!v105)
    {
LABEL_6:
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      (*(v117 + 32))();
LABEL_27:

      goto LABEL_28;
    }

    v106 = &qword_1EC7E9CA0;
    v107 = &unk_1D561A0C0;
    v108 = v100;
LABEL_8:
    sub_1D4E50004(v108, v106, v107);
    v415 = 0u;
    v416 = 0u;
LABEL_28:
    OUTLINED_FUNCTION_30_6();
    *v127 = v128;
    v127[1] = v129;
    return;
  }

  v109 = qword_1EC7E9178;

  if (v109 != -1)
  {
    OUTLINED_FUNCTION_120_4();
  }

  OUTLINED_FUNCTION_2_80(qword_1EC87C390);
  OUTLINED_FUNCTION_139_5();
  if (v109)
  {
    v110 = 0;
    v111 = 0;
    v112 = *(type metadata accessor for TVEpisodePropertyProvider() + 20);
    OUTLINED_FUNCTION_51_2();
    v115 = (v114 + v113);
    if ((v115[1] & 1) == 0)
    {
      v111 = *v115;
      v110 = &type metadata for VideoCapabilities;
    }

LABEL_14:

    OUTLINED_FUNCTION_30_6();
    *v116 = v111;
    v116[1] = 0;
    v116[2] = 0;
    v116[3] = v110;
    return;
  }

  v118 = qword_1EC7E9180;

  if (v118 != -1)
  {
    OUTLINED_FUNCTION_119_5();
  }

  OUTLINED_FUNCTION_2_80(qword_1EC87C398);
  OUTLINED_FUNCTION_139_5();
  if (v118)
  {
    v119 = type metadata accessor for TVEpisodePropertyProvider();
    v120 = OUTLINED_FUNCTION_17_42(*(v119 + 24));
    sub_1D4F1C460(v120, v93, v121, v122);
    sub_1D560F928();
    OUTLINED_FUNCTION_1(v93);
    if (!v105)
    {
      goto LABEL_6;
    }

    v106 = &qword_1EC7EDB98;
    v107 = L"X\b\a";
    v108 = v93;
    goto LABEL_8;
  }

  v123 = qword_1EC7E9188;

  if (v123 != -1)
  {
    OUTLINED_FUNCTION_118_0();
  }

  OUTLINED_FUNCTION_2_80(qword_1EC87C3A0);
  OUTLINED_FUNCTION_139_5();
  if (v123)
  {
    v124 = type metadata accessor for TVEpisodePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v124 + 28));
    if (v63)
    {
      v125 = &qword_1EC7EA3D0;
      v126 = &unk_1D56223F0;
LABEL_26:
      __swift_instantiateConcreteTypeFromMangledNameV2(v125, v126);
      OUTLINED_FUNCTION_82();

LABEL_72:

      OUTLINED_FUNCTION_30_6();
      *v163 = v63;
      v163[1] = 0;
      v163[2] = 0;
      v163[3] = v101;
      return;
    }

    goto LABEL_71;
  }

  v130 = qword_1EC7E9190;

  if (v130 != -1)
  {
    OUTLINED_FUNCTION_117_4();
  }

  OUTLINED_FUNCTION_2_80(qword_1EC87C3A8);
  OUTLINED_FUNCTION_139_5();
  if (v130)
  {
    v131 = *(type metadata accessor for TVEpisodePropertyProvider() + 32);
    OUTLINED_FUNCTION_51_2();
    v134 = (v133 + v132);
    v135 = v134[1];
    if (v135)
    {
      v136 = *v134;
      v137 = v134[1];

      v138 = MEMORY[0x1E69E6158];
    }

    else
    {
      v138 = 0;
      v136 = 0;
    }

LABEL_46:

    OUTLINED_FUNCTION_30_6();
    *v146 = v136;
    v146[1] = v135;
    v146[2] = 0;
    v146[3] = v138;
    return;
  }

  v139 = qword_1EC7E9290;

  if (v139 != -1)
  {
    OUTLINED_FUNCTION_24_33();
  }

  OUTLINED_FUNCTION_2_80(qword_1EC7F21C8);
  OUTLINED_FUNCTION_139_5();
  if (v139)
  {
    v140 = type metadata accessor for TVEpisodePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v140 + 36));
    if (v63)
    {
      v125 = &qword_1EC7ED208;
      v126 = &unk_1D5623F80;
      goto LABEL_26;
    }

LABEL_71:
    v101 = 0;
    goto LABEL_72;
  }

  v141 = qword_1EC7E9198;

  if (v141 != -1)
  {
    OUTLINED_FUNCTION_116_8();
  }

  OUTLINED_FUNCTION_2_80(qword_1EC87C3B0);
  OUTLINED_FUNCTION_139_5();
  if (v141)
  {
    v142 = type metadata accessor for TVEpisodePropertyProvider();
    v143 = OUTLINED_FUNCTION_17_42(*(v142 + 40));
    sub_1D4F1C460(v143, v87, v144, v145);
    sub_1D560C328();
    OUTLINED_FUNCTION_1(v87);
    if (!v105)
    {
      goto LABEL_6;
    }

    v106 = &qword_1EC7EA3B8;
    v107 = &unk_1D561E370;
    v108 = v87;
    goto LABEL_8;
  }

  v147 = qword_1EC7E91A0;

  if (v147 != -1)
  {
    OUTLINED_FUNCTION_115_7();
  }

  OUTLINED_FUNCTION_2_80(qword_1EC87C3B8);
  OUTLINED_FUNCTION_139_5();
  if (v147)
  {
    v110 = 0;
    v111 = 0;
    v148 = *(type metadata accessor for TVEpisodePropertyProvider() + 44);
    OUTLINED_FUNCTION_51_2();
    v151 = (v150 + v149);
    if ((v151[1] & 1) == 0)
    {
      v111 = *v151;
      v110 = MEMORY[0x1E69E63B0];
    }

    goto LABEL_14;
  }

  v152 = qword_1EC7E91A8;

  if (v152 != -1)
  {
    OUTLINED_FUNCTION_23_37();
  }

  OUTLINED_FUNCTION_2_80(qword_1EC87C3C0);
  OUTLINED_FUNCTION_139_5();
  if (v152)
  {
    v153 = type metadata accessor for TVEpisodePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v153 + 48));
    if (v63)
    {
      v125 = &qword_1EC7EC480;
      v126 = &unk_1D56222E0;
      goto LABEL_26;
    }

    goto LABEL_71;
  }

  v154 = qword_1EC7E91B0;

  if (v154 != -1)
  {
    OUTLINED_FUNCTION_112_7();
  }

  OUTLINED_FUNCTION_2_80(qword_1EC87C3C8);
  OUTLINED_FUNCTION_139_5();
  if (v154)
  {
    v155 = type metadata accessor for TVEpisodePropertyProvider();
    v156 = OUTLINED_FUNCTION_17_42(*(v155 + 52));
    sub_1D4F1C460(v156, v78, v157, v158);
    sub_1D5610978();
    OUTLINED_FUNCTION_1(v78);
    if (!v105)
    {
      goto LABEL_6;
    }

    v106 = &qword_1EC7EAC98;
    v107 = &unk_1D561DA80;
    v108 = v78;
    goto LABEL_8;
  }

  *&v415 = sub_1D4F84A58();
  v159 = OUTLINED_FUNCTION_7_63();

  if (v159)
  {
    v160 = type metadata accessor for TVEpisodePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v160 + 56));
    if (v63)
    {
      v125 = &qword_1EC7EC9E8;
      v126 = &qword_1D562B870;
      goto LABEL_26;
    }

    goto LABEL_71;
  }

  v161 = qword_1EC7E91B8;

  if (v161 != -1)
  {
    OUTLINED_FUNCTION_111_1();
  }

  OUTLINED_FUNCTION_2_80(qword_1EC87C3D0);
  OUTLINED_FUNCTION_139_5();
  if (v161)
  {
    v162 = type metadata accessor for TVEpisodePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v162 + 60));
    if (v63)
    {
      v125 = &qword_1EC7EABD8;
      v126 = &unk_1D561D780;
      goto LABEL_26;
    }

    goto LABEL_71;
  }

  v164 = qword_1EC7E91C0;

  if (v164 != -1)
  {
    OUTLINED_FUNCTION_110_8();
  }

  OUTLINED_FUNCTION_2_80(qword_1EC87C3D8);
  OUTLINED_FUNCTION_139_5();
  if (v164)
  {
    v165 = *(type metadata accessor for TVEpisodePropertyProvider() + 64);
    OUTLINED_FUNCTION_51_2();
    v168 = *(v167 + v166);
LABEL_93:

    v184 = MEMORY[0x1E69E6370];
    if (v168 == 2)
    {
      v184 = 0;
    }

    v185 = v412;
    *v412 = v168 & 1;
    v185[1] = 0;
    v185[2] = 0;
    v185[3] = v184;
    return;
  }

  v169 = qword_1EC7E9298;

  if (v169 != -1)
  {
    OUTLINED_FUNCTION_22_37();
  }

  OUTLINED_FUNCTION_2_80(qword_1EC7F21D0);
  OUTLINED_FUNCTION_139_5();
  if (v169)
  {
    v170 = type metadata accessor for TVEpisodePropertyProvider();
    v171 = OUTLINED_FUNCTION_17_42(*(v170 + 68));
    sub_1D4F1C460(v171, v71, v172, v173);
    sub_1D560C0A8();
    OUTLINED_FUNCTION_1(v71);
    if (v105)
    {
      OUTLINED_FUNCTION_45_23();

      v106 = &unk_1EC7E9CA8;
      v107 = &unk_1D561D1D0;
      v108 = v71;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_134_4();
    OUTLINED_FUNCTION_15_1();
    v178 = *(v177 + 32);
LABEL_87:
    v178();
    OUTLINED_FUNCTION_45_23();
    goto LABEL_27;
  }

  v174 = qword_1EC7E91C8;

  if (v174 != -1)
  {
    OUTLINED_FUNCTION_109_8();
  }

  v175 = OUTLINED_FUNCTION_2_80(qword_1EC87C3E0);
  OUTLINED_FUNCTION_45_23();

  if (v175)
  {
    v176 = *(type metadata accessor for TVEpisodePropertyProvider() + 72);
LABEL_92:
    OUTLINED_FUNCTION_51_2();
    v168 = *(v183 + v182);
    OUTLINED_FUNCTION_45_23();
    goto LABEL_93;
  }

  v179 = qword_1EC7E91D0;
  OUTLINED_FUNCTION_45_23();

  if (v179 != -1)
  {
    OUTLINED_FUNCTION_108_6();
  }

  v180 = OUTLINED_FUNCTION_2_80(qword_1EC87C3E8);
  OUTLINED_FUNCTION_45_23();

  if (v180)
  {
    v181 = *(type metadata accessor for TVEpisodePropertyProvider() + 76);
    goto LABEL_92;
  }

  v186 = qword_1EC7E91D8;
  OUTLINED_FUNCTION_45_23();

  if (v186 != -1)
  {
    OUTLINED_FUNCTION_107_6();
  }

  v187 = OUTLINED_FUNCTION_2_80(qword_1EC87C3F0);
  OUTLINED_FUNCTION_45_23();

  if (v187)
  {
    v188 = type metadata accessor for TVEpisodePropertyProvider();
    v189 = OUTLINED_FUNCTION_17_42(*(v188 + 80));
    sub_1D4F1C460(v189, v63, v190, v191);
    sub_1D5613178();
    v192 = OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_57(v192, 1, v101);
    if (v105)
    {
      OUTLINED_FUNCTION_45_23();

      v106 = &qword_1EC7EC538;
      v107 = &unk_1D5621080;
      v108 = v63;
      goto LABEL_8;
    }

    *(&v416 + 1) = v101;
    __swift_allocate_boxed_opaque_existential_0(&v415);
    v178 = *(*(v101 - 8) + 32);
    goto LABEL_87;
  }

  v193 = qword_1EC7E91E0;
  OUTLINED_FUNCTION_45_23();

  if (v193 != -1)
  {
    OUTLINED_FUNCTION_105_8();
  }

  v194 = OUTLINED_FUNCTION_2_80(qword_1EC87C3F8);
  OUTLINED_FUNCTION_45_23();

  if (v194)
  {
    v195 = type metadata accessor for TVEpisodePropertyProvider();
    v196 = OUTLINED_FUNCTION_17_42(*(v195 + 84));
    OUTLINED_FUNCTION_132_5(v196, v197, v198, &v428);
    v199 = sub_1D5613198();
    OUTLINED_FUNCTION_1_9(v199);
    if (!v105)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v178 = *(v208 + 32);
      v209 = &v428;
LABEL_124:
      v220 = *(v209 - 32);
      goto LABEL_87;
    }

    OUTLINED_FUNCTION_45_23();

    v106 = &qword_1EC7EC530;
    v107 = &unk_1D5632150;
    v200 = &v428;
    goto LABEL_114;
  }

  v201 = qword_1EC7E91E8;
  OUTLINED_FUNCTION_45_23();

  if (v201 != -1)
  {
    OUTLINED_FUNCTION_104_8();
  }

  v202 = OUTLINED_FUNCTION_2_80(qword_1EC87C400);
  OUTLINED_FUNCTION_45_23();

  if (v202)
  {
    v203 = type metadata accessor for TVEpisodePropertyProvider();
    v204 = OUTLINED_FUNCTION_17_42(*(v203 + 88));
    OUTLINED_FUNCTION_132_5(v204, v205, v206, &v427);
    v207 = sub_1D56134E8();
    OUTLINED_FUNCTION_1_9(v207);
    if (!v105)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v178 = *(v219 + 32);
      v209 = &v427;
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_45_23();

    v106 = &qword_1EC7EC528;
    v107 = &unk_1D5621070;
    v200 = &v427;
LABEL_114:
    v108 = *(v200 - 32);
    goto LABEL_8;
  }

  v210 = qword_1EC7E91F0;
  OUTLINED_FUNCTION_45_23();

  if (v210 != -1)
  {
    OUTLINED_FUNCTION_103_7();
  }

  v211 = OUTLINED_FUNCTION_2_80(qword_1EC87C408);
  OUTLINED_FUNCTION_45_23();

  if (v211)
  {
    v212 = *(type metadata accessor for TVEpisodePropertyProvider() + 92);
    OUTLINED_FUNCTION_51_2();
    v215 = *(v214 + v213);
    OUTLINED_FUNCTION_45_23();

    v216 = &type metadata for TVEpisode.Kind;
    if (v215 == 26)
    {
      v217 = 0;
    }

    else
    {
      v217 = v215;
    }

    if (v215 == 26)
    {
      v216 = 0;
    }

    v218 = v412;
    *v412 = v217;
    v218[1] = 0;
    v218[2] = 0;
    v218[3] = v216;
    return;
  }

  v221 = qword_1EC7E91F8;
  OUTLINED_FUNCTION_45_23();

  if (v221 != -1)
  {
    OUTLINED_FUNCTION_102_9();
  }

  v222 = OUTLINED_FUNCTION_2_80(qword_1EC87C410);
  OUTLINED_FUNCTION_45_23();

  if (v222)
  {
    v223 = type metadata accessor for TVEpisodePropertyProvider();
    v224 = OUTLINED_FUNCTION_17_42(*(v223 + 96));
    OUTLINED_FUNCTION_132_5(v224, v225, v226, &v426);
    v227 = sub_1D560C328();
    OUTLINED_FUNCTION_1_9(v227);
    if (!v105)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v178 = *(v235 + 32);
      v209 = &v426;
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_45_23();

    v106 = &qword_1EC7EA3B8;
    v107 = &unk_1D561E370;
    v200 = &v426;
    goto LABEL_114;
  }

  v228 = qword_1EC7E9200;
  OUTLINED_FUNCTION_45_23();

  if (v228 != -1)
  {
    OUTLINED_FUNCTION_99_9();
  }

  v229 = OUTLINED_FUNCTION_2_80(qword_1EC87C418);
  OUTLINED_FUNCTION_45_23();

  if (v229)
  {
    v230 = type metadata accessor for TVEpisodePropertyProvider();
    v231 = OUTLINED_FUNCTION_17_42(*(v230 + 100));
    OUTLINED_FUNCTION_132_5(v231, v232, v233, &v425);
    v234 = sub_1D560C328();
    OUTLINED_FUNCTION_1_9(v234);
    if (!v105)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v178 = *(v243 + 32);
      v209 = &v425;
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_45_23();

    v106 = &qword_1EC7EA3B8;
    v107 = &unk_1D561E370;
    v200 = &v425;
    goto LABEL_114;
  }

  v236 = qword_1EC7E9208;
  OUTLINED_FUNCTION_45_23();

  if (v236 != -1)
  {
    OUTLINED_FUNCTION_98_9();
  }

  v237 = OUTLINED_FUNCTION_2_80(qword_1EC87C420);
  OUTLINED_FUNCTION_45_23();

  if (v237)
  {
    v238 = type metadata accessor for TVEpisodePropertyProvider();
    v239 = OUTLINED_FUNCTION_17_42(*(v238 + 104));
    OUTLINED_FUNCTION_132_5(v239, v240, v241, &v424);
    v242 = sub_1D5614A78();
    OUTLINED_FUNCTION_1_9(v242);
    if (!v105)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v178 = *(v250 + 32);
      v209 = &v424;
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_45_23();

    v106 = &qword_1EC7EF5D8;
    v107 = &unk_1D5632160;
    v200 = &v424;
    goto LABEL_114;
  }

  v244 = qword_1EC7E9210;
  OUTLINED_FUNCTION_45_23();

  if (v244 != -1)
  {
    OUTLINED_FUNCTION_97_10();
  }

  v245 = OUTLINED_FUNCTION_2_80(qword_1EC87C428);
  OUTLINED_FUNCTION_45_23();

  if (v245)
  {
    v111 = 0;
    v110 = 0;
    v246 = *(type metadata accessor for TVEpisodePropertyProvider() + 108);
LABEL_147:
    OUTLINED_FUNCTION_51_2();
    v249 = (v248 + v247);
    if ((v249[1] & 1) == 0)
    {
      v111 = *v249;
      v110 = MEMORY[0x1E69E6530];
    }

    OUTLINED_FUNCTION_45_23();
    goto LABEL_14;
  }

  v251 = qword_1EC7E9218;
  OUTLINED_FUNCTION_45_23();

  if (v251 != -1)
  {
    OUTLINED_FUNCTION_96_9();
  }

  v63 = OUTLINED_FUNCTION_2_80(qword_1EC87C430);
  OUTLINED_FUNCTION_45_23();

  if (v63)
  {
    v252 = type metadata accessor for TVEpisodePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v252 + 112));
    if (v63)
    {
      v253 = &qword_1EC7ECBC0;
      v254 = &qword_1D562BF20;
      goto LABEL_155;
    }

LABEL_284:
    v101 = 0;
    goto LABEL_285;
  }

  v255 = qword_1EC7E9220;
  OUTLINED_FUNCTION_45_23();

  if (v255 != -1)
  {
    OUTLINED_FUNCTION_95_9();
  }

  v256 = OUTLINED_FUNCTION_2_80(qword_1EC87C438);
  OUTLINED_FUNCTION_45_23();

  if (v256)
  {
    v257 = type metadata accessor for TVEpisodePropertyProvider();
    v258 = OUTLINED_FUNCTION_17_42(*(v257 + 116));
    OUTLINED_FUNCTION_132_5(v258, v259, v260, &v416 + 8);
    v261 = sub_1D5610978();
    OUTLINED_FUNCTION_1_9(v261);
    if (!v105)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v178 = *(v271 + 32);
      v209 = &v416 + 8;
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_45_23();

    v106 = &qword_1EC7EAC98;
    v107 = &unk_1D561DA80;
    v200 = &v416 + 8;
    goto LABEL_114;
  }

  v262 = qword_1EC7E9228;
  OUTLINED_FUNCTION_45_23();

  if (v262 != -1)
  {
    OUTLINED_FUNCTION_42_20();
  }

  v263 = OUTLINED_FUNCTION_2_80(qword_1EC87C440);
  OUTLINED_FUNCTION_45_23();

  if (v263)
  {
    v264 = *(type metadata accessor for TVEpisodePropertyProvider() + 120);
    OUTLINED_FUNCTION_51_2();
    v267 = (v266 + v265);
    v268 = v267[1];
    if (v268 == 2)
    {
LABEL_166:
      OUTLINED_FUNCTION_45_23();

      v269 = 0;
      v270 = 0;
    }

    else
    {
      v280 = v267[3];
      v279 = v267[4];
      v281 = v267[2];
      v282 = *v267;
      v269 = swift_allocObject();
      OUTLINED_FUNCTION_45_23();

      *(v269 + 16) = v282;
      *(v269 + 24) = v268 & 1;
      *(v269 + 25) = BYTE1(v268) & 1;
      *(v269 + 32) = v281;
      *(v269 + 40) = v280;
      *(v269 + 48) = v279;
      v270 = &type metadata for PlaybackPosition;
    }

    goto LABEL_174;
  }

  v272 = qword_1EC7E9230;
  OUTLINED_FUNCTION_45_23();

  if (v272 != -1)
  {
    OUTLINED_FUNCTION_94_9();
  }

  v273 = OUTLINED_FUNCTION_2_80(qword_1EC87C448);
  OUTLINED_FUNCTION_45_23();

  if (v273)
  {
    v274 = type metadata accessor for TVEpisodePropertyProvider();
    v275 = OUTLINED_FUNCTION_17_42(*(v274 + 124));
    OUTLINED_FUNCTION_132_5(v275, v276, v277, &v418);
    v278 = sub_1D56109F8();
    OUTLINED_FUNCTION_1_9(v278);
    if (!v105)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v178 = *(v291 + 32);
      v209 = &v418;
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_45_23();

    v106 = &qword_1EC7EB5C0;
    v107 = &unk_1D56223C0;
    v200 = &v418;
    goto LABEL_114;
  }

  v284 = qword_1EC7E9238;
  OUTLINED_FUNCTION_45_23();

  if (v284 != -1)
  {
    OUTLINED_FUNCTION_92_8();
  }

  v285 = OUTLINED_FUNCTION_2_80(qword_1EC87C450);
  OUTLINED_FUNCTION_45_23();

  if (v285)
  {
    v286 = type metadata accessor for TVEpisodePropertyProvider();
    v287 = OUTLINED_FUNCTION_17_42(*(v286 + 128));
    OUTLINED_FUNCTION_132_5(v287, v288, v289, &v417);
    v290 = sub_1D56140F8();
    OUTLINED_FUNCTION_1_9(v290);
    if (!v105)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v178 = *(v294 + 32);
      v209 = &v417;
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_45_23();

    v106 = &qword_1EC7E9CA0;
    v107 = &unk_1D561A0C0;
    v200 = &v417;
    goto LABEL_114;
  }

  v292 = qword_1EC7E9240;
  OUTLINED_FUNCTION_45_23();

  if (v292 != -1)
  {
    OUTLINED_FUNCTION_91_9();
  }

  v63 = OUTLINED_FUNCTION_2_80(qword_1EC87C458);
  OUTLINED_FUNCTION_45_23();

  if (v63)
  {
    v293 = type metadata accessor for TVEpisodePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v293 + 132));
    if (v63)
    {
      v253 = &qword_1EC7EDBB0;
      v254 = L"X\b\t";
      goto LABEL_155;
    }

    goto LABEL_284;
  }

  v295 = qword_1EC7E9248;
  OUTLINED_FUNCTION_45_23();

  if (v295 != -1)
  {
    OUTLINED_FUNCTION_90_11();
  }

  v296 = OUTLINED_FUNCTION_2_80(qword_1EC87C460);
  OUTLINED_FUNCTION_45_23();

  if (v296)
  {
    v297 = type metadata accessor for TVEpisodePropertyProvider();
    v298 = OUTLINED_FUNCTION_17_42(*(v297 + 136));
    OUTLINED_FUNCTION_132_5(v298, v299, v300, &v417 + 8);
    v301 = sub_1D560C328();
    OUTLINED_FUNCTION_1_9(v301);
    if (!v105)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v178 = *(v305 + 32);
      v209 = &v417 + 8;
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_45_23();

    v106 = &qword_1EC7EA3B8;
    v107 = &unk_1D561E370;
    v200 = &v417 + 8;
    goto LABEL_114;
  }

  while (1)
  {
    v302 = qword_1EC7E9250;
    OUTLINED_FUNCTION_45_23();

    if (v302 != -1)
    {
      OUTLINED_FUNCTION_89_8();
    }

    v303 = OUTLINED_FUNCTION_2_80(qword_1EC87C468);
    OUTLINED_FUNCTION_45_23();

    if (v303)
    {
      v111 = 0;
      v110 = 0;
      v304 = *(type metadata accessor for TVEpisodePropertyProvider() + 140);
      goto LABEL_147;
    }

    v306 = qword_1EC7E92A0;
    OUTLINED_FUNCTION_45_23();

    if (v306 != -1)
    {
      OUTLINED_FUNCTION_21_35();
    }

    v307 = OUTLINED_FUNCTION_2_80(qword_1EC7F21D8);
    OUTLINED_FUNCTION_45_23();

    if (v307)
    {
      v308 = type metadata accessor for TVEpisodePropertyProvider();
      v309 = OUTLINED_FUNCTION_17_42(*(v308 + 144));
      OUTLINED_FUNCTION_132_5(v309, v310, v311, &v419);
      v312 = sub_1D560FDC8();
      OUTLINED_FUNCTION_1_9(v312);
      if (!v105)
      {
        OUTLINED_FUNCTION_134_4();
        OUTLINED_FUNCTION_15_1();
        v178 = *(v316 + 32);
        v209 = &v419;
        goto LABEL_124;
      }

      OUTLINED_FUNCTION_45_23();

      v106 = &qword_1EC7EDB88;
      v107 = L"P\b\a";
      v200 = &v419;
      goto LABEL_114;
    }

    v313 = qword_1EC7E9260;
    OUTLINED_FUNCTION_45_23();

    if (v313 != -1)
    {
      OUTLINED_FUNCTION_88_10();
    }

    v314 = OUTLINED_FUNCTION_2_80(qword_1EC87C478);
    OUTLINED_FUNCTION_45_23();

    if (v314)
    {
      v315 = *(type metadata accessor for TVEpisodePropertyProvider() + 148);
LABEL_222:
      OUTLINED_FUNCTION_51_2();
      v333 = (v332 + v331);
      v135 = v333[1];
      if (v135)
      {
        v136 = *v333;
        v334 = v333[1];

        v138 = MEMORY[0x1E69E6158];
      }

      else
      {
        v136 = 0;
        v138 = 0;
      }

      OUTLINED_FUNCTION_45_23();
      goto LABEL_46;
    }

    v317 = qword_1EC7E92A8;
    OUTLINED_FUNCTION_45_23();

    if (v317 != -1)
    {
      OUTLINED_FUNCTION_20_44();
    }

    v318 = OUTLINED_FUNCTION_2_80(qword_1EC7F21E0);
    OUTLINED_FUNCTION_45_23();

    if (v318)
    {
      v319 = type metadata accessor for TVEpisodePropertyProvider();
      v320 = OUTLINED_FUNCTION_17_42(*(v319 + 152));
      OUTLINED_FUNCTION_132_5(v320, v321, v322, &v418 + 8);
      v323 = sub_1D560C0A8();
      OUTLINED_FUNCTION_1_9(v323);
      if (!v105)
      {
        OUTLINED_FUNCTION_134_4();
        OUTLINED_FUNCTION_15_1();
        v178 = *(v327 + 32);
        v209 = &v418 + 8;
        goto LABEL_124;
      }

      OUTLINED_FUNCTION_45_23();

      v106 = &unk_1EC7E9CA8;
      v107 = &unk_1D561D1D0;
      v200 = &v418 + 8;
      goto LABEL_114;
    }

    v324 = qword_1EC7E9258;
    OUTLINED_FUNCTION_45_23();

    if (v324 != -1)
    {
      OUTLINED_FUNCTION_86_11();
    }

    v325 = OUTLINED_FUNCTION_2_80(qword_1EC87C470);
    OUTLINED_FUNCTION_45_23();

    if (v325)
    {
      v326 = *(type metadata accessor for TVEpisodePropertyProvider() + 156);
      goto LABEL_222;
    }

    v328 = qword_1EC7E9268;
    OUTLINED_FUNCTION_45_23();

    if (v328 != -1)
    {
      OUTLINED_FUNCTION_85_6();
    }

    v329 = OUTLINED_FUNCTION_2_80(qword_1EC87C480);
    OUTLINED_FUNCTION_45_23();

    if (v329)
    {
      v330 = *(type metadata accessor for TVEpisodePropertyProvider() + 160);
      goto LABEL_222;
    }

    v335 = qword_1EC7E9270;
    OUTLINED_FUNCTION_45_23();

    if (v335 != -1)
    {
      OUTLINED_FUNCTION_125_6();
    }

    v336 = OUTLINED_FUNCTION_2_80(qword_1EC87C488);
    OUTLINED_FUNCTION_45_23();

    if (v336)
    {
      v111 = 0;
      v110 = 0;
      v337 = *(type metadata accessor for TVEpisodePropertyProvider() + 164);
      goto LABEL_147;
    }

    v338 = qword_1EC7E9278;
    OUTLINED_FUNCTION_45_23();

    if (v338 != -1)
    {
      OUTLINED_FUNCTION_124_4();
    }

    v339 = OUTLINED_FUNCTION_2_80(qword_1EC87C490);
    OUTLINED_FUNCTION_45_23();

    if (v339)
    {
      break;
    }

    v349 = qword_1EC7E9280;
    OUTLINED_FUNCTION_45_23();

    if (v349 != -1)
    {
      OUTLINED_FUNCTION_123_5();
    }

    v350 = OUTLINED_FUNCTION_2_80(qword_1EC87C498);
    OUTLINED_FUNCTION_45_23();

    if (v350)
    {
      v351 = *(type metadata accessor for TVEpisodePropertyProvider() + 172);
      goto LABEL_222;
    }

    v352 = qword_1EC7E9288;
    OUTLINED_FUNCTION_45_23();

    if (v352 != -1)
    {
      OUTLINED_FUNCTION_122_4();
    }

    v353 = OUTLINED_FUNCTION_2_80(qword_1EC87C4A0);
    OUTLINED_FUNCTION_45_23();

    if (v353)
    {
      v354 = type metadata accessor for TVEpisodePropertyProvider();
      v355 = OUTLINED_FUNCTION_17_42(*(v354 + 176));
      OUTLINED_FUNCTION_132_5(v355, v356, v357, &v419 + 8);
      v358 = sub_1D560C0A8();
      OUTLINED_FUNCTION_1_9(v358);
      if (!v105)
      {
        OUTLINED_FUNCTION_134_4();
        OUTLINED_FUNCTION_15_1();
        v178 = *(v366 + 32);
        v209 = &v419 + 8;
        goto LABEL_124;
      }

      OUTLINED_FUNCTION_45_23();

      v106 = &unk_1EC7E9CA8;
      v107 = &unk_1D561D1D0;
      v200 = &v419 + 8;
      goto LABEL_114;
    }

    v359 = qword_1EC7E92B0;
    OUTLINED_FUNCTION_45_23();

    if (v359 != -1)
    {
      OUTLINED_FUNCTION_30_29();
    }

    v360 = OUTLINED_FUNCTION_2_80(qword_1EC7F21E8);
    OUTLINED_FUNCTION_45_23();

    if (v360)
    {
      v361 = type metadata accessor for TVEpisodePropertyProvider();
      v362 = OUTLINED_FUNCTION_17_42(*(v361 + 180));
      OUTLINED_FUNCTION_132_5(v362, v363, v364, &v420);
      v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
      OUTLINED_FUNCTION_1_9(v365);
      if (!v105)
      {
        OUTLINED_FUNCTION_134_4();
        OUTLINED_FUNCTION_15_1();
        v178 = *(v374 + 32);
        v209 = &v420;
        goto LABEL_124;
      }

      OUTLINED_FUNCTION_45_23();

      v106 = &qword_1EC7EA788;
      v107 = &unk_1D56223A0;
      v200 = &v420;
      goto LABEL_114;
    }

    v367 = qword_1EC7E92B8;
    OUTLINED_FUNCTION_45_23();

    if (v367 != -1)
    {
      OUTLINED_FUNCTION_29_30();
    }

    v368 = OUTLINED_FUNCTION_2_80(qword_1EC7F21F0);
    OUTLINED_FUNCTION_45_23();

    if (v368)
    {
      v369 = type metadata accessor for TVEpisodePropertyProvider();
      v370 = OUTLINED_FUNCTION_17_42(*(v369 + 184));
      OUTLINED_FUNCTION_132_5(v370, v371, v372, &v420 + 8);
      v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
      OUTLINED_FUNCTION_1_9(v373);
      if (!v105)
      {
        OUTLINED_FUNCTION_134_4();
        OUTLINED_FUNCTION_15_1();
        v178 = *(v382 + 32);
        v209 = &v420 + 8;
        goto LABEL_124;
      }

      OUTLINED_FUNCTION_45_23();

      v106 = &qword_1EC7ED1F8;
      v107 = &qword_1D5634780;
      v200 = &v420 + 8;
      goto LABEL_114;
    }

    v375 = qword_1EC7E92C0;
    OUTLINED_FUNCTION_45_23();

    if (v375 != -1)
    {
      OUTLINED_FUNCTION_28_33();
    }

    v376 = OUTLINED_FUNCTION_2_80(qword_1EC7F21F8);
    OUTLINED_FUNCTION_45_23();

    if (v376)
    {
      v377 = type metadata accessor for TVEpisodePropertyProvider();
      v378 = OUTLINED_FUNCTION_17_42(*(v377 + 188));
      OUTLINED_FUNCTION_132_5(v378, v379, v380, &v421);
      v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
      OUTLINED_FUNCTION_1_9(v381);
      if (!v105)
      {
        OUTLINED_FUNCTION_134_4();
        OUTLINED_FUNCTION_15_1();
        v178 = *(v390 + 32);
        v209 = &v421;
        goto LABEL_124;
      }

      OUTLINED_FUNCTION_45_23();

      v106 = &qword_1EC7ECBA0;
      v107 = &unk_1D56270F0;
      v200 = &v421;
      goto LABEL_114;
    }

    v383 = qword_1EC7E92C8;
    OUTLINED_FUNCTION_45_23();

    if (v383 != -1)
    {
      OUTLINED_FUNCTION_27_33();
    }

    v384 = OUTLINED_FUNCTION_2_80(qword_1EC7F2200);
    OUTLINED_FUNCTION_45_23();

    if (v384)
    {
      v385 = type metadata accessor for TVEpisodePropertyProvider();
      v386 = OUTLINED_FUNCTION_17_42(*(v385 + 192));
      OUTLINED_FUNCTION_132_5(v386, v387, v388, &v421 + 8);
      v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
      OUTLINED_FUNCTION_1_9(v389);
      if (!v105)
      {
        OUTLINED_FUNCTION_134_4();
        OUTLINED_FUNCTION_15_1();
        v178 = *(v398 + 32);
        v209 = &v421 + 8;
        goto LABEL_124;
      }

      OUTLINED_FUNCTION_45_23();

      v106 = &off_1EC7EB5B0;
      v107 = &unk_1D5632170;
      v200 = &v421 + 8;
      goto LABEL_114;
    }

    v391 = qword_1EC7E92D0;
    OUTLINED_FUNCTION_45_23();

    if (v391 != -1)
    {
      OUTLINED_FUNCTION_26_37();
    }

    v392 = OUTLINED_FUNCTION_2_80(qword_1EC7F2208);
    OUTLINED_FUNCTION_45_23();

    if (v392)
    {
      v393 = type metadata accessor for TVEpisodePropertyProvider();
      v394 = OUTLINED_FUNCTION_17_42(*(v393 + 196));
      OUTLINED_FUNCTION_132_5(v394, v395, v396, v422);
      v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
      OUTLINED_FUNCTION_1_9(v397);
      if (!v105)
      {
        OUTLINED_FUNCTION_134_4();
        OUTLINED_FUNCTION_15_1();
        v178 = *(v406 + 32);
        v209 = v422;
        goto LABEL_124;
      }

      OUTLINED_FUNCTION_45_23();

      v106 = &qword_1EC7ECBA8;
      v107 = &unk_1D56223B0;
      v200 = v422;
      goto LABEL_114;
    }

    v399 = qword_1EC7E92D8;
    OUTLINED_FUNCTION_45_23();

    if (v399 != -1)
    {
      OUTLINED_FUNCTION_25_38();
    }

    v400 = OUTLINED_FUNCTION_2_80(qword_1EC7F2210);
    OUTLINED_FUNCTION_45_23();

    if (v400)
    {
      v401 = type metadata accessor for TVEpisodePropertyProvider();
      v402 = OUTLINED_FUNCTION_17_42(*(v401 + 200));
      OUTLINED_FUNCTION_132_5(v402, v403, v404, v423);
      v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
      OUTLINED_FUNCTION_1_9(v405);
      if (!v105)
      {
        OUTLINED_FUNCTION_134_4();
        OUTLINED_FUNCTION_15_1();
        v178 = *(v410 + 32);
        v209 = v423;
        goto LABEL_124;
      }

      OUTLINED_FUNCTION_45_23();

      v106 = &qword_1EC7EB620;
      v107 = &unk_1D561E5B0;
      v200 = v423;
      goto LABEL_114;
    }

    OUTLINED_FUNCTION_12_47();
    sub_1D512BFF0(v407, v408);

    v63 = sub_1D560D198();
    *&v415 = v63;
    v101 = OUTLINED_FUNCTION_7_63();

    if (v101)
    {
      v409 = type metadata accessor for TVEpisodePropertyProvider();
      OUTLINED_FUNCTION_43_6(*(v409 + 204));
      if (!v63)
      {
        goto LABEL_284;
      }

      v253 = &qword_1EC7ED150;
      v254 = &unk_1D565B6C0;
LABEL_155:
      __swift_instantiateConcreteTypeFromMangledNameV2(v253, v254);
      OUTLINED_FUNCTION_82();

LABEL_285:
      OUTLINED_FUNCTION_45_23();
      goto LABEL_72;
    }

    *&v415 = 0;
    *(&v415 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
    v414[0] = v413;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
LABEL_193:
    OUTLINED_FUNCTION_138();
    __break(1u);
  }

  v340 = *(type metadata accessor for TVEpisodePropertyProvider() + 168);
  OUTLINED_FUNCTION_51_2();
  v343 = (v342 + v341);
  v345 = *(v342 + v341);
  v344 = *(v342 + v341 + 8);
  v346 = *(v342 + v341 + 32);
  v419 = *(v342 + v341 + 16);
  v420 = v346;
  v421 = *(v342 + v341 + 48);
  if (!v344)
  {
    goto LABEL_166;
  }

  v269 = swift_allocObject();
  *&v415 = v345;
  *(&v415 + 1) = v344;
  v347 = v343[2];
  v416 = v343[1];
  v417 = v347;
  v418 = v343[3];
  sub_1D5027EE0(&v415, v414);
  OUTLINED_FUNCTION_45_23();

  *(v269 + 16) = v345;
  *(v269 + 24) = v344;
  v348 = v420;
  *(v269 + 32) = v419;
  *(v269 + 48) = v348;
  *(v269 + 64) = v421;
  v270 = &type metadata for VideoSupportedLocales;
LABEL_174:
  v283 = v412;
  *v412 = v269;
  v283[1] = 0;
  v283[2] = 0;
  v283[3] = v270;
}

uint64_t sub_1D5123678(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  OUTLINED_FUNCTION_82();
  if (!swift_dynamicCastClass())
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000029, 0x80000001D56855D0);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_45;
  }

  v3 = qword_1EC7E9290;
  swift_retain_n();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_24_33();
  }

  sub_1D4EC5794(&qword_1EC7F0490, &qword_1EC7ECD78, &qword_1D5637C70);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_77_0();
  if ((v1 & 1) == 0)
  {
    v4 = qword_1EC7E91A8;

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_23_37();
    }

    OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_77_0();
    if ((v4 & 1) == 0)
    {

      sub_1D4F84A58();
      v5 = OUTLINED_FUNCTION_39_0();

      if ((v5 & 1) == 0)
      {
        v6 = qword_1EC7E9298;

        if (v6 != -1)
        {
          OUTLINED_FUNCTION_22_37();
        }

        OUTLINED_FUNCTION_22_9();
        OUTLINED_FUNCTION_77_0();
        if ((v6 & 1) == 0)
        {
          v7 = qword_1EC7E9228;

          if (v7 != -1)
          {
            OUTLINED_FUNCTION_42_20();
          }

          OUTLINED_FUNCTION_22_9();
          OUTLINED_FUNCTION_77_0();
          if ((v7 & 1) == 0)
          {
            v8 = qword_1EC7E92A0;

            if (v8 != -1)
            {
              OUTLINED_FUNCTION_21_35();
            }

            OUTLINED_FUNCTION_22_9();
            OUTLINED_FUNCTION_77_0();
            if ((v8 & 1) == 0)
            {
              v9 = qword_1EC7E92A8;

              if (v9 != -1)
              {
                OUTLINED_FUNCTION_20_44();
              }

              OUTLINED_FUNCTION_22_9();
              OUTLINED_FUNCTION_77_0();
              if ((v9 & 1) == 0)
              {
                v13 = qword_1EC7E92B0;

                if (v13 != -1)
                {
                  OUTLINED_FUNCTION_30_29();
                }

                OUTLINED_FUNCTION_22_9();
                OUTLINED_FUNCTION_77_0();
                if (v13)
                {
                  goto LABEL_41;
                }

                v14 = qword_1EC7E92B8;

                if (v14 != -1)
                {
                  OUTLINED_FUNCTION_29_30();
                }

                OUTLINED_FUNCTION_22_9();
                OUTLINED_FUNCTION_77_0();
                if (v14)
                {
                  goto LABEL_41;
                }

                v15 = qword_1EC7E92C0;

                if (v15 != -1)
                {
                  OUTLINED_FUNCTION_28_33();
                }

                OUTLINED_FUNCTION_22_9();
                OUTLINED_FUNCTION_77_0();
                if (v15)
                {
                  goto LABEL_41;
                }

                v16 = qword_1EC7E92C8;

                if (v16 != -1)
                {
                  OUTLINED_FUNCTION_27_33();
                }

                OUTLINED_FUNCTION_22_9();
                OUTLINED_FUNCTION_77_0();
                if (v16)
                {
                  goto LABEL_41;
                }

                v17 = qword_1EC7E92D0;

                if (v17 != -1)
                {
                  OUTLINED_FUNCTION_26_37();
                }

                OUTLINED_FUNCTION_22_9();
                OUTLINED_FUNCTION_77_0();
                if (v17)
                {
                  goto LABEL_41;
                }

                v18 = qword_1EC7E92D8;

                if (v18 != -1)
                {
                  OUTLINED_FUNCTION_25_38();
                }

                OUTLINED_FUNCTION_22_9();
                OUTLINED_FUNCTION_77_0();
                if (v18)
                {
LABEL_41:
                  swift_getKeyPath();
                  OUTLINED_FUNCTION_83_9();
                  sub_1D512BFF0(v19, v20);
                  OUTLINED_FUNCTION_52();
                  sub_1D5612238();
                  goto LABEL_22;
                }

                OUTLINED_FUNCTION_12_47();
                sub_1D512BFF0(v21, v22);

                sub_1D560D198();
                v23 = OUTLINED_FUNCTION_39_0();

                if ((v23 & 1) == 0)
                {
                  while (1)
                  {
                    sub_1D5615B68();
                    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
                    sub_1D560CDE8();
                    sub_1D5615D48();
                    OUTLINED_FUNCTION_33_0();
LABEL_45:
                    OUTLINED_FUNCTION_138();
                    __break(1u);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_83_9();
  sub_1D512BFF0(v10, v11);
  OUTLINED_FUNCTION_52();
  sub_1D5612248();
LABEL_22:

  return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
}

uint64_t sub_1D5123CC0(void *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  v13 = OUTLINED_FUNCTION_22(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v190 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_2();
  v191 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v192 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_2();
  v193 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v194 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_2();
  v195 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  v34 = OUTLINED_FUNCTION_22(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  v196 = v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_2();
  v197 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v41 = OUTLINED_FUNCTION_22(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  v198 = v44;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_2();
  v199 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
  v48 = OUTLINED_FUNCTION_22(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13();
  v202 = v51;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_2();
  v203 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v55 = OUTLINED_FUNCTION_22(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13();
  v200 = v58;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_135();
  v201 = v60;
  OUTLINED_FUNCTION_23();
  v62 = MEMORY[0x1EEE9AC00](v61);
  v64 = &v188 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v66 = &v188 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0478, &qword_1D5637C60);
  OUTLINED_FUNCTION_22(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v188 - v71;
  v73 = type metadata accessor for TVEpisodePropertyProvider();
  v74 = OUTLINED_FUNCTION_14(v73);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v188 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0480, &qword_1D5637C68);
  v80 = swift_dynamicCastClass();
  if (!v80)
  {
    OUTLINED_FUNCTION_71_4();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002FLL, 0x80000001D5685530);
    v206 = a1;
    v184 = *(v5 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_70_4();
    v185 = 226;
    goto LABEL_92;
  }

  v2 = v80;
  sub_1D4E628D4(a2, &v205);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    v186 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v186, v187, 1, v73);
    sub_1D4E50004(v72, &qword_1EC7F0478, &qword_1D5637C60);
    OUTLINED_FUNCTION_71_4();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000032, 0x80000001D5685560);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_70_4();
    v185 = 229;
    goto LABEL_92;
  }

  __swift_storeEnumTagSinglePayload(v72, 0, 1, v73);
  sub_1D512B990(v72, v78);
  v81 = qword_1EC7E91A8;

  if (v81 != -1)
  {
    OUTLINED_FUNCTION_23_37();
  }

  v205 = qword_1EC87C3C0;
  v206 = v2;
  sub_1D4EC5794(&qword_1EC7F0488, &qword_1EC7F0480, &qword_1D5637C68);
  sub_1D5614D18();
  OUTLINED_FUNCTION_155();
  if (v79)
  {

    OUTLINED_FUNCTION_164_2(v73[12]);
    sub_1D512B9F4(v78);
    v82 = v73[12];
  }

  else
  {

    v83 = sub_1D4F84C1C();
    OUTLINED_FUNCTION_150_5(v83);
    OUTLINED_FUNCTION_155();

    v84 = qword_1EC7E9290;

    v85 = v73;
    if (v84 != -1)
    {
      OUTLINED_FUNCTION_24_33();
    }

    OUTLINED_FUNCTION_10_59(qword_1EC7F21C8);
    OUTLINED_FUNCTION_155();
    if ((v84 & 1) == 0)
    {
      v89 = qword_1EC7E9298;

      if (v89 != -1)
      {
        OUTLINED_FUNCTION_22_37();
      }

      OUTLINED_FUNCTION_10_59(qword_1EC7F21D0);
      OUTLINED_FUNCTION_155();
      if (v89)
      {

        sub_1D4F1C460(&v78[v73[17]], v64, &unk_1EC7E9CA8, &unk_1D561D1D0);
        sub_1D512B9F4(v78);
        v90 = sub_1D560C0A8();
        v91 = OUTLINED_FUNCTION_105();
        OUTLINED_FUNCTION_57(v91, v92, v90);
        if (v93)
        {
          v94 = v73[17];
          v101 = v204;
          sub_1D4F1C460(v204 + v94, v66, &unk_1EC7E9CA8, &unk_1D561D1D0);
          v95 = OUTLINED_FUNCTION_105();
          OUTLINED_FUNCTION_57(v95, v96, v90);
          if (!v93)
          {
            sub_1D4E50004(v64, &unk_1EC7E9CA8, &unk_1D561D1D0);
          }
        }

        else
        {
          (*(*(v90 - 8) + 32))(v66, v64, v90);
          __swift_storeEnumTagSinglePayload(v66, 0, 1, v90);
          v101 = v204;
        }

        v102 = &unk_1EC7E9CA8;
        v103 = &unk_1D561D1D0;
        v104 = v101 + v85[17];
        v105 = v66;
      }

      else
      {
        v97 = qword_1EC7E92A0;

        if (v97 != -1)
        {
          OUTLINED_FUNCTION_21_35();
        }

        OUTLINED_FUNCTION_10_59(qword_1EC7F21D8);
        OUTLINED_FUNCTION_78_1();
        if (v97)
        {

          v98 = v202;
          sub_1D4F1C460(&v78[v73[36]], v202, &qword_1EC7EDB88, L"P\b\a");
          sub_1D512B9F4(v78);
          sub_1D560FDC8();
          v99 = OUTLINED_FUNCTION_93_10();
          OUTLINED_FUNCTION_1(v99);
          if (v93)
          {
            v100 = v73[36];
            v114 = v203;
            v89 = v204;
            sub_1D4F1C460(v204 + v100, v203, &qword_1EC7EDB88, L"P\b\a");
            OUTLINED_FUNCTION_1(v98);
            if (!v93)
            {
              sub_1D4E50004(v98, &qword_1EC7EDB88, L"P\b\a");
            }
          }

          else
          {
            OUTLINED_FUNCTION_15_1();
            v113 = *(v112 + 32);
            v114 = v203;
            v115 = OUTLINED_FUNCTION_44_20();
            v116(v115);
            OUTLINED_FUNCTION_14_44();
          }

          v117 = v85[36];
          v102 = &qword_1EC7EDB88;
          v103 = L"P\b\a";
        }

        else
        {
          v106 = qword_1EC7E92A8;

          if (v106 != -1)
          {
            OUTLINED_FUNCTION_20_44();
          }

          OUTLINED_FUNCTION_10_59(qword_1EC7F21E0);
          OUTLINED_FUNCTION_78_1();
          if (v106)
          {

            v107 = v200;
            sub_1D4F1C460(&v78[v73[38]], v200, &unk_1EC7E9CA8, &unk_1D561D1D0);
            sub_1D512B9F4(v78);
            sub_1D560C0A8();
            v108 = OUTLINED_FUNCTION_93_10();
            OUTLINED_FUNCTION_1(v108);
            if (v93)
            {
              v109 = OUTLINED_FUNCTION_67_6(v73[38]);
              v114 = v201;
              sub_1D4F1C460(v109, v201, v110, v111);
              OUTLINED_FUNCTION_1(v107);
              if (!v93)
              {
                sub_1D4E50004(v107, &unk_1EC7E9CA8, &unk_1D561D1D0);
              }
            }

            else
            {
              OUTLINED_FUNCTION_15_1();
              v125 = *(v124 + 32);
              v114 = v201;
              v126 = OUTLINED_FUNCTION_44_20();
              v127(v126);
              OUTLINED_FUNCTION_14_44();
            }

            v117 = v85[38];
            v102 = &unk_1EC7E9CA8;
            v103 = &unk_1D561D1D0;
          }

          else
          {
            v118 = qword_1EC7E92B0;

            if (v118 != -1)
            {
              OUTLINED_FUNCTION_30_29();
            }

            OUTLINED_FUNCTION_10_59(qword_1EC7F21E8);
            OUTLINED_FUNCTION_78_1();
            if (v118)
            {

              v119 = v198;
              sub_1D4F1C460(&v78[v73[45]], v198, &qword_1EC7EA788, &unk_1D56223A0);
              sub_1D512B9F4(v78);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
              v120 = OUTLINED_FUNCTION_93_10();
              OUTLINED_FUNCTION_1(v120);
              if (v93)
              {
                v121 = OUTLINED_FUNCTION_67_6(v73[45]);
                v114 = v199;
                sub_1D4F1C460(v121, v199, v122, v123);
                OUTLINED_FUNCTION_1(v119);
                if (!v93)
                {
                  sub_1D4E50004(v119, &qword_1EC7EA788, &unk_1D56223A0);
                }
              }

              else
              {
                OUTLINED_FUNCTION_15_1();
                v135 = *(v134 + 32);
                v114 = v199;
                v136 = OUTLINED_FUNCTION_44_20();
                v137(v136);
                OUTLINED_FUNCTION_14_44();
              }

              v117 = v85[45];
              v102 = &qword_1EC7EA788;
              v103 = &unk_1D56223A0;
            }

            else
            {
              v128 = qword_1EC7E92B8;

              if (v128 != -1)
              {
                OUTLINED_FUNCTION_29_30();
              }

              OUTLINED_FUNCTION_10_59(qword_1EC7F21F0);
              OUTLINED_FUNCTION_78_1();
              if (v128)
              {

                v129 = v196;
                sub_1D4F1C460(&v78[v73[46]], v196, &qword_1EC7ED1F8, &qword_1D5634780);
                sub_1D512B9F4(v78);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
                v130 = OUTLINED_FUNCTION_93_10();
                OUTLINED_FUNCTION_1(v130);
                if (v93)
                {
                  v131 = OUTLINED_FUNCTION_67_6(v73[46]);
                  v114 = v197;
                  sub_1D4F1C460(v131, v197, v132, v133);
                  OUTLINED_FUNCTION_1(v129);
                  if (!v93)
                  {
                    sub_1D4E50004(v129, &qword_1EC7ED1F8, &qword_1D5634780);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_15_1();
                  v145 = *(v144 + 32);
                  v114 = v197;
                  v146 = OUTLINED_FUNCTION_44_20();
                  v147(v146);
                  OUTLINED_FUNCTION_14_44();
                }

                v117 = v85[46];
                v102 = &qword_1EC7ED1F8;
                v103 = &qword_1D5634780;
              }

              else
              {
                v138 = qword_1EC7E92C0;

                if (v138 != -1)
                {
                  OUTLINED_FUNCTION_28_33();
                }

                OUTLINED_FUNCTION_10_59(qword_1EC7F21F8);
                OUTLINED_FUNCTION_78_1();
                if (v138)
                {

                  v139 = v194;
                  sub_1D4F1C460(&v78[v73[47]], v194, &qword_1EC7ECBA0, &unk_1D56270F0);
                  sub_1D512B9F4(v78);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
                  v140 = OUTLINED_FUNCTION_93_10();
                  OUTLINED_FUNCTION_1(v140);
                  if (v93)
                  {
                    v141 = OUTLINED_FUNCTION_67_6(v73[47]);
                    v114 = v195;
                    sub_1D4F1C460(v141, v195, v142, v143);
                    OUTLINED_FUNCTION_1(v139);
                    if (!v93)
                    {
                      sub_1D4E50004(v139, &qword_1EC7ECBA0, &unk_1D56270F0);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_15_1();
                    v155 = *(v154 + 32);
                    v114 = v195;
                    v156 = OUTLINED_FUNCTION_44_20();
                    v157(v156);
                    OUTLINED_FUNCTION_14_44();
                  }

                  v117 = v85[47];
                  v102 = &qword_1EC7ECBA0;
                  v103 = &unk_1D56270F0;
                }

                else
                {
                  v148 = qword_1EC7E92C8;

                  if (v148 != -1)
                  {
                    OUTLINED_FUNCTION_27_33();
                  }

                  OUTLINED_FUNCTION_10_59(qword_1EC7F2200);
                  OUTLINED_FUNCTION_78_1();
                  if (v148)
                  {

                    v149 = v192;
                    sub_1D4F1C460(&v78[v73[48]], v192, &off_1EC7EB5B0, &unk_1D5632170);
                    sub_1D512B9F4(v78);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
                    v150 = OUTLINED_FUNCTION_93_10();
                    OUTLINED_FUNCTION_1(v150);
                    if (v93)
                    {
                      v151 = OUTLINED_FUNCTION_67_6(v73[48]);
                      v114 = v193;
                      sub_1D4F1C460(v151, v193, v152, v153);
                      OUTLINED_FUNCTION_1(v149);
                      if (!v93)
                      {
                        sub_1D4E50004(v149, &off_1EC7EB5B0, &unk_1D5632170);
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_15_1();
                      v165 = *(v164 + 32);
                      v114 = v193;
                      v166 = OUTLINED_FUNCTION_44_20();
                      v167(v166);
                      OUTLINED_FUNCTION_14_44();
                    }

                    v117 = v85[48];
                    v102 = &off_1EC7EB5B0;
                    v103 = &unk_1D5632170;
                  }

                  else
                  {
                    v158 = qword_1EC7E92D0;

                    if (v158 != -1)
                    {
                      OUTLINED_FUNCTION_26_37();
                    }

                    OUTLINED_FUNCTION_10_59(qword_1EC7F2208);
                    OUTLINED_FUNCTION_78_1();
                    if (v158)
                    {

                      v159 = v190;
                      sub_1D4F1C460(&v78[v73[49]], v190, &qword_1EC7ECBA8, &unk_1D56223B0);
                      sub_1D512B9F4(v78);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
                      v160 = OUTLINED_FUNCTION_93_10();
                      OUTLINED_FUNCTION_1(v160);
                      if (v93)
                      {
                        v161 = OUTLINED_FUNCTION_67_6(v73[49]);
                        v114 = v191;
                        sub_1D4F1C460(v161, v191, v162, v163);
                        OUTLINED_FUNCTION_1(v159);
                        if (!v93)
                        {
                          sub_1D4E50004(v159, &qword_1EC7ECBA8, &unk_1D56223B0);
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_15_1();
                        v175 = *(v174 + 32);
                        v114 = v191;
                        v176 = OUTLINED_FUNCTION_44_20();
                        v177(v176);
                        OUTLINED_FUNCTION_14_44();
                      }

                      v117 = v85[49];
                      v102 = &qword_1EC7ECBA8;
                      v103 = &unk_1D56223B0;
                    }

                    else
                    {
                      v168 = qword_1EC7E92D8;

                      if (v168 != -1)
                      {
                        OUTLINED_FUNCTION_25_38();
                      }

                      OUTLINED_FUNCTION_10_59(qword_1EC7F2210);
                      OUTLINED_FUNCTION_78_1();
                      if ((v168 & 1) == 0)
                      {
                        OUTLINED_FUNCTION_12_47();
                        sub_1D512BFF0(v178, v179);
                        OUTLINED_FUNCTION_93_10();

                        v66 = sub_1D560D198();
                        OUTLINED_FUNCTION_150_5(v66);
                        OUTLINED_FUNCTION_155();

                        if ((v79 & 1) == 0)
                        {
                          while (1)
                          {
                            OUTLINED_FUNCTION_71_4();
                            sub_1D5615B68();
                            MEMORY[0x1DA6EAC70](0xD000000000000026, 0x80000001D56855A0);
                            v206 = v2;
                            sub_1D5615D48();
                            OUTLINED_FUNCTION_33_0();
                            OUTLINED_FUNCTION_70_4();
                            v185 = 264;
LABEL_92:
                            v188 = v185;
                            OUTLINED_FUNCTION_138();
                            __break(1u);
                          }
                        }

                        OUTLINED_FUNCTION_164_2(v73[51]);
                        sub_1D512B9F4(v78);
                        v82 = v73[51];
                        goto LABEL_11;
                      }

                      v169 = v188;
                      sub_1D4F1C460(&v78[v73[50]], v188, &qword_1EC7EB620, &unk_1D561E5B0);
                      sub_1D512B9F4(v78);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
                      v170 = OUTLINED_FUNCTION_93_10();
                      OUTLINED_FUNCTION_1(v170);
                      if (v93)
                      {
                        v171 = OUTLINED_FUNCTION_67_6(v73[50]);
                        v114 = v189;
                        sub_1D4F1C460(v171, v189, v172, v173);
                        OUTLINED_FUNCTION_1(v169);
                        if (!v93)
                        {
                          sub_1D4E50004(v169, &qword_1EC7EB620, &unk_1D561E5B0);
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_15_1();
                        v181 = *(v180 + 32);
                        v114 = v189;
                        v182 = OUTLINED_FUNCTION_44_20();
                        v183(v182);
                        OUTLINED_FUNCTION_14_44();
                      }

                      v117 = v85[50];
                      v102 = &qword_1EC7EB620;
                      v103 = &unk_1D561E5B0;
                    }
                  }
                }
              }
            }
          }
        }

        v104 = v89 + v117;
        v105 = v114;
      }

      return sub_1D4F1C350(v105, v104, v102, v103);
    }

    OUTLINED_FUNCTION_164_2(v73[9]);
    sub_1D512B9F4(v78);
    v82 = v73[9];
  }

LABEL_11:
  v86 = v204;
  v87 = *(v204 + v82);
  if (!v66)
  {
  }

  *(v86 + v82) = v66;
  return result;
}

uint64_t sub_1D5124F18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5637AF0;
  if (qword_1EC7E9170 != -1)
  {
    OUTLINED_FUNCTION_121_6();
  }

  *(v0 + 32) = qword_1EC87C388;
  v1 = qword_1EC7E9178;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_120_4();
  }

  *(v0 + 40) = qword_1EC87C390;
  v2 = qword_1EC7E9180;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_119_5();
  }

  *(v0 + 48) = qword_1EC87C398;
  v3 = qword_1EC7E9188;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_118_0();
  }

  *(v0 + 56) = qword_1EC87C3A0;
  v4 = qword_1EC7E9190;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_117_4();
  }

  *(v0 + 64) = qword_1EC87C3A8;
  v5 = qword_1EC7E9290;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_24_33();
  }

  *(v0 + 72) = qword_1EC7F21C8;
  v6 = qword_1EC7E9198;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_116_8();
  }

  *(v0 + 80) = qword_1EC87C3B0;
  v7 = qword_1EC7E91A0;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_115_7();
  }

  *(v0 + 88) = qword_1EC87C3B8;
  v8 = qword_1EC7E91A8;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_23_37();
  }

  *(v0 + 96) = qword_1EC87C3C0;
  v9 = qword_1EC7E91B0;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_112_7();
  }

  *(v0 + 104) = qword_1EC87C3C8;

  *(v0 + 112) = sub_1D4F84A58();
  if (qword_1EC7E91B8 != -1)
  {
    OUTLINED_FUNCTION_111_1();
  }

  *(v0 + 120) = qword_1EC87C3D0;
  v10 = qword_1EC7E91C0;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_110_8();
  }

  *(v0 + 128) = qword_1EC87C3D8;
  v11 = qword_1EC7E9298;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_22_37();
  }

  *(v0 + 136) = qword_1EC7F21D0;
  v12 = qword_1EC7E91C8;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_109_8();
  }

  *(v0 + 144) = qword_1EC87C3E0;
  v13 = qword_1EC7E91D0;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_108_6();
  }

  *(v0 + 152) = qword_1EC87C3E8;
  v14 = qword_1EC7E91D8;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_107_6();
  }

  *(v0 + 160) = qword_1EC87C3F0;
  v15 = qword_1EC7E91E0;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_105_8();
  }

  *(v0 + 168) = qword_1EC87C3F8;
  v16 = qword_1EC7E91E8;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_104_8();
  }

  *(v0 + 176) = qword_1EC87C400;
  v17 = qword_1EC7E91F0;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_103_7();
  }

  *(v0 + 184) = qword_1EC87C408;
  v18 = qword_1EC7E91F8;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_102_9();
  }

  *(v0 + 192) = qword_1EC87C410;
  v19 = qword_1EC7E9200;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_99_9();
  }

  *(v0 + 200) = qword_1EC87C418;
  v20 = qword_1EC7E9208;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_98_9();
  }

  *(v0 + 208) = qword_1EC87C420;
  v21 = qword_1EC7E9210;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_97_10();
  }

  *(v0 + 216) = qword_1EC87C428;
  v22 = qword_1EC7E9218;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_96_9();
  }

  *(v0 + 224) = qword_1EC87C430;
  v23 = qword_1EC7E9220;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_95_9();
  }

  *(v0 + 232) = qword_1EC87C438;
  v24 = qword_1EC7E9228;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_42_20();
  }

  *(v0 + 240) = qword_1EC87C440;
  v25 = qword_1EC7E9230;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_94_9();
  }

  *(v0 + 248) = qword_1EC87C448;
  v26 = qword_1EC7E9238;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_92_8();
  }

  *(v0 + 256) = qword_1EC87C450;
  v27 = qword_1EC7E9240;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_91_9();
  }

  *(v0 + 264) = qword_1EC87C458;
  v28 = qword_1EC7E9248;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_90_11();
  }

  *(v0 + 272) = qword_1EC87C460;
  v29 = qword_1EC7E9250;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_89_8();
  }

  *(v0 + 280) = qword_1EC87C468;
  v30 = qword_1EC7E92A0;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_21_35();
  }

  *(v0 + 288) = qword_1EC7F21D8;
  v31 = qword_1EC7E9260;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_88_10();
  }

  *(v0 + 296) = qword_1EC87C478;
  v32 = qword_1EC7E92A8;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_20_44();
  }

  *(v0 + 304) = qword_1EC7F21E0;
  v33 = qword_1EC7E9258;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_86_11();
  }

  *(v0 + 312) = qword_1EC87C470;
  v34 = qword_1EC7E9268;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_85_6();
  }

  *(v0 + 320) = qword_1EC87C480;
  v35 = qword_1EC7E9270;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_125_6();
  }

  *(v0 + 328) = qword_1EC87C488;
  v36 = qword_1EC7E9278;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_124_4();
  }

  *(v0 + 336) = qword_1EC87C490;
  v37 = qword_1EC7E9280;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_123_5();
  }

  *(v0 + 344) = qword_1EC87C498;
  v38 = qword_1EC7E9288;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_122_4();
  }

  *(v0 + 352) = qword_1EC87C4A0;
  v39 = qword_1EC7E92B0;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_30_29();
  }

  *(v0 + 360) = qword_1EC7F21E8;
  v40 = qword_1EC7E92B8;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_29_30();
  }

  *(v0 + 368) = qword_1EC7F21F0;
  v41 = qword_1EC7E92C0;

  if (v41 != -1)
  {
    OUTLINED_FUNCTION_28_33();
  }

  *(v0 + 376) = qword_1EC7F21F8;
  v42 = qword_1EC7E92C8;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_27_33();
  }

  *(v0 + 384) = qword_1EC7F2200;
  v43 = qword_1EC7E92D0;

  if (v43 != -1)
  {
    OUTLINED_FUNCTION_26_37();
  }

  *(v0 + 392) = qword_1EC7F2208;
  v44 = qword_1EC7E92D8;

  if (v44 != -1)
  {
    OUTLINED_FUNCTION_25_38();
  }

  *(v0 + 400) = qword_1EC7F2210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD78, &qword_1D5637C70);
  OUTLINED_FUNCTION_12_47();
  sub_1D512BFF0(v45, v46);

  result = sub_1D560D198();
  *(v0 + 408) = result;
  qword_1EC87C178 = v0;
  return result;
}

uint64_t sub_1D5125870(uint64_t a1, uint64_t a2)
{
  v885 = a2;
  v884 = a1;
  v849 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_4(v849);
  v848 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v847 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v845 = v12;
  v844 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB670, qword_1D561E830);
  OUTLINED_FUNCTION_14(v844);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v846 = v16;
  v843 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_4(v843);
  v842 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v841 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v839 = v26;
  v838 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0498, &unk_1D5637E40);
  OUTLINED_FUNCTION_14(v838);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v840 = v30;
  v837 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4(v837);
  v836 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  v835 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v833 = v40;
  v832 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF608, &unk_1D5632420);
  OUTLINED_FUNCTION_14(v832);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v834 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  v46 = OUTLINED_FUNCTION_4(v45);
  v830 = v47;
  v831 = v46;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_3();
  v829 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_3();
  v827 = v56;
  v826 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F04A0, &qword_1D5637E50);
  OUTLINED_FUNCTION_14(v826);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_3();
  v828 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v62 = OUTLINED_FUNCTION_4(v61);
  v824 = v63;
  v825 = v62;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_3();
  v823 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_3();
  v821 = v72;
  v820 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F04A8, &qword_1D5637E58);
  OUTLINED_FUNCTION_14(v820);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_3();
  v822 = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v78 = OUTLINED_FUNCTION_4(v77);
  v818 = v79;
  v819 = v78;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_13_3();
  v817 = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v84);
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_13_3();
  v815 = v88;
  v814 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB668, &qword_1D5637E60);
  OUTLINED_FUNCTION_14(v814);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_3();
  v816 = v92;
  OUTLINED_FUNCTION_70_0();
  v93 = sub_1D560FDC8();
  v94 = OUTLINED_FUNCTION_4(v93);
  v810 = v95;
  v811 = v94;
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5_0();
  v809 = v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
  OUTLINED_FUNCTION_22(v99);
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_13_3();
  v807 = v103;
  v806 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F04B0, &qword_1D5637E68);
  OUTLINED_FUNCTION_14(v806);
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_13_3();
  v808 = v107;
  OUTLINED_FUNCTION_70_0();
  v108 = sub_1D56109F8();
  v109 = OUTLINED_FUNCTION_4(v108);
  v802 = v110;
  v803 = v109;
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_5_0();
  v801 = v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v114);
  v116 = *(v115 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_13_3();
  v799 = v118;
  v798 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF610, &unk_1D5637E70);
  OUTLINED_FUNCTION_14(v798);
  v120 = *(v119 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_13_3();
  v800 = v122;
  OUTLINED_FUNCTION_70_0();
  v123 = sub_1D5614A78();
  v124 = OUTLINED_FUNCTION_4(v123);
  v794 = v125;
  v795 = v124;
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_5_0();
  v793 = v128;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v129);
  v131 = *(v130 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_13_3();
  v791 = v133;
  v790 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF618, &unk_1D5632430);
  OUTLINED_FUNCTION_14(v790);
  v135 = *(v134 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_13_3();
  v792 = v137;
  OUTLINED_FUNCTION_70_0();
  v138 = sub_1D56134E8();
  v139 = OUTLINED_FUNCTION_4(v138);
  v784 = v140;
  v785 = v139;
  v142 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_5_0();
  v783 = v143;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v144);
  v146 = *(v145 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_13_3();
  v781 = v148;
  v780 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF620, &unk_1D5637E80);
  OUTLINED_FUNCTION_14(v780);
  v150 = *(v149 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_13_3();
  v782 = v152;
  OUTLINED_FUNCTION_70_0();
  v856 = sub_1D5613198();
  v153 = OUTLINED_FUNCTION_4(v856);
  v777 = v154;
  v156 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_5_0();
  v776 = v157;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v158);
  v160 = *(v159 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_13_3();
  v852 = v162;
  v851 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  OUTLINED_FUNCTION_14(v851);
  v164 = *(v163 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v165);
  OUTLINED_FUNCTION_13_3();
  v857 = v166;
  OUTLINED_FUNCTION_70_0();
  v858 = sub_1D5613178();
  v167 = OUTLINED_FUNCTION_4(v858);
  v853 = v168;
  v170 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v167);
  OUTLINED_FUNCTION_5_0();
  v850 = v171;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_22(v172);
  v174 = *(v173 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_13_3();
  v855 = v176;
  v854 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F04B8, &unk_1D5637E90);
  OUTLINED_FUNCTION_14(v854);
  v178 = *(v177 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v179);
  OUTLINED_FUNCTION_13_3();
  v860 = v180;
  OUTLINED_FUNCTION_70_0();
  v864 = sub_1D560C0A8();
  v181 = OUTLINED_FUNCTION_4(v864);
  v861 = v182;
  v184 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v181);
  OUTLINED_FUNCTION_5_0();
  v859 = v185;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v187 = OUTLINED_FUNCTION_22(v186);
  v189 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v187);
  OUTLINED_FUNCTION_13();
  v813 = v190;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v191);
  OUTLINED_FUNCTION_135();
  v805 = v192;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v193);
  OUTLINED_FUNCTION_13_2();
  v862 = v194;
  v863 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v195 = OUTLINED_FUNCTION_14(v863);
  v197 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v195);
  OUTLINED_FUNCTION_13();
  v812 = v198;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v199);
  OUTLINED_FUNCTION_135();
  v804 = v200;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v201);
  OUTLINED_FUNCTION_13_2();
  v865 = v202;
  OUTLINED_FUNCTION_70_0();
  v871 = sub_1D5610978();
  v203 = OUTLINED_FUNCTION_4(v871);
  v868 = v204;
  v206 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v203);
  OUTLINED_FUNCTION_5_0();
  v866 = v207;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v209 = OUTLINED_FUNCTION_22(v208);
  v211 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v209);
  OUTLINED_FUNCTION_13();
  v787 = v212;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v213);
  OUTLINED_FUNCTION_13_2();
  v867 = v214;
  v870 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF648, &unk_1D5632470);
  v215 = OUTLINED_FUNCTION_14(v870);
  v217 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v215);
  OUTLINED_FUNCTION_13();
  v788 = v218;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v219);
  OUTLINED_FUNCTION_13_2();
  v869 = v220;
  OUTLINED_FUNCTION_70_0();
  v876 = sub_1D560C328();
  v221 = OUTLINED_FUNCTION_4(v876);
  v874 = v222;
  v224 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v221);
  OUTLINED_FUNCTION_5_0();
  v872 = v225;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v227 = OUTLINED_FUNCTION_22(v226);
  v229 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v227);
  OUTLINED_FUNCTION_13();
  v797 = v230;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v231);
  OUTLINED_FUNCTION_135();
  v779 = v232;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v233);
  OUTLINED_FUNCTION_135();
  v775 = v234;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v235);
  OUTLINED_FUNCTION_13_2();
  v873 = v236;
  v875 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  v237 = OUTLINED_FUNCTION_14(v875);
  v239 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v237);
  OUTLINED_FUNCTION_13();
  v796 = v240;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v241);
  OUTLINED_FUNCTION_135();
  v778 = v242;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v243);
  OUTLINED_FUNCTION_135();
  v774 = v244;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v245);
  OUTLINED_FUNCTION_13_2();
  v877 = v246;
  OUTLINED_FUNCTION_70_0();
  v881 = sub_1D560F928();
  v247 = OUTLINED_FUNCTION_4(v881);
  v880 = v248;
  v250 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v247);
  OUTLINED_FUNCTION_5_0();
  v878 = v251;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v252);
  v254 = *(v253 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v255);
  OUTLINED_FUNCTION_13_3();
  v879 = v256;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF650, &qword_1D5632480);
  OUTLINED_FUNCTION_14(v257);
  v259 = *(v258 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v260);
  v261 = OUTLINED_FUNCTION_162_4();
  v262 = OUTLINED_FUNCTION_4(v261);
  v883 = v263;
  v265 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v262);
  OUTLINED_FUNCTION_5_0();
  v882 = v266;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v268 = OUTLINED_FUNCTION_22(v267);
  v270 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v268);
  OUTLINED_FUNCTION_13();
  v789 = v271;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v272);
  v274 = &v770 - v273;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  v276 = OUTLINED_FUNCTION_14(v275);
  v278 = *(v277 + 64);
  v279 = MEMORY[0x1EEE9AC00](v276);
  v281 = &v770 - ((v280 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = MEMORY[0x1EEE9AC00](v279);
  v284 = (&v770 - v283);
  v786 = v282;
  v285 = *(v282 + 48);
  OUTLINED_FUNCTION_126_3(v884, &v770 - v283);
  OUTLINED_FUNCTION_126_3(v885, v284 + v285);
  OUTLINED_FUNCTION_57(v284, 1, v261);
  if (v290)
  {
    OUTLINED_FUNCTION_57(v284 + v285, 1, v261);
    if (!v290)
    {
      goto LABEL_9;
    }

    v772 = v281;
    v773 = v261;
    sub_1D4E50004(v284, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  else
  {
    v286 = OUTLINED_FUNCTION_45_3();
    sub_1D4F1C460(v286, v287, v288, v289);
    OUTLINED_FUNCTION_57(v284 + v285, 1, v261);
    if (v290)
    {
      (*(v883 + 8))(v274, v261);
      goto LABEL_9;
    }

    v772 = v281;
    v296 = v883;
    OUTLINED_FUNCTION_33_1();
    v297 = v882;
    v298(v882, v284 + v285, v261);
    OUTLINED_FUNCTION_13_43();
    sub_1D512BFF0(v299, v300);
    v301 = sub_1D5614D18();
    v302 = *(v296 + 8);
    v302(v297, v261);
    v773 = v261;
    v302(v274, v261);
    sub_1D4E50004(v284, &qword_1EC7E9CA0, &unk_1D561A0C0);
    if ((v301 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v303 = type metadata accessor for TVEpisodePropertyProvider();
  v304 = *(v303 + 20);
  v305 = v884;
  v306 = (v884 + v304);
  v307 = *(v884 + v304 + 8);
  v308 = v885;
  v309 = v885 + v304;
  v310 = *(v309 + 8);
  if (v307)
  {
    if ((*(v309 + 8) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((*(v309 + 8) & 1) != 0 || !sub_1D4F40BEC(*v306, *v309))
  {
    goto LABEL_11;
  }

  v771 = v303;
  v311 = *(v303 + 24);
  v312 = *(v257 + 48);
  OUTLINED_FUNCTION_126_3(v305 + v311, v2);
  OUTLINED_FUNCTION_126_3(v308 + v311, v2 + v312);
  v313 = v881;
  OUTLINED_FUNCTION_57(v2, 1, v881);
  if (v290)
  {
    OUTLINED_FUNCTION_57(v2 + v312, 1, v313);
    if (v290)
    {
      sub_1D4E50004(v2, &qword_1EC7EDB98, L"X\b\a");
      goto LABEL_29;
    }

LABEL_27:
    v291 = &qword_1EC7EF650;
    v292 = &qword_1D5632480;
    v293 = v2;
    goto LABEL_10;
  }

  v314 = v879;
  sub_1D4F1C460(v2, v879, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_57(v2 + v312, 1, v313);
  if (v315)
  {
    (*(v880 + 8))(v314, v313);
    goto LABEL_27;
  }

  v316 = v880;
  v317 = v2 + v312;
  v318 = v878;
  (*(v880 + 32))(v878, v317, v313);
  OUTLINED_FUNCTION_78_10();
  sub_1D512BFF0(v319, v320);
  v321 = sub_1D5614D18();
  v322 = *(v316 + 8);
  v322(v318, v313);
  v322(v314, v313);
  sub_1D4E50004(v2, &qword_1EC7EDB98, L"X\b\a");
  if ((v321 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  v323 = v771;
  v324 = v771[7];
  v325 = *(v305 + v324);
  v326 = *(v308 + v324);
  if (v325)
  {
    if (!v326)
    {
      goto LABEL_11;
    }

    v327 = *(v308 + v324);

    v328 = OUTLINED_FUNCTION_63_1();
    sub_1D4EF828C(v328, v329);
    OUTLINED_FUNCTION_120_2();
    if ((v325 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v326)
  {
    goto LABEL_11;
  }

  v330 = v323[8];
  v331 = *(v308 + v330 + 8);
  if (*(v305 + v330 + 8))
  {
    if (!v331)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_31_0((v305 + v330));
    v334 = v290 && v332 == v333;
    if (!v334 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v331)
  {
    goto LABEL_11;
  }

  v335 = v323[9];
  v336 = *(v305 + v335);
  v337 = *(v308 + v335);
  if (v336)
  {
    if (!v337)
    {
      goto LABEL_11;
    }

    v338 = *(v308 + v335);

    OUTLINED_FUNCTION_63_1();
    sub_1D4F2C2D4();
    OUTLINED_FUNCTION_120_2();
    if ((v336 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v337)
  {
    goto LABEL_11;
  }

  v339 = v323[10];
  OUTLINED_FUNCTION_159_5();
  v340 = v877;
  OUTLINED_FUNCTION_126_3(v305 + v339, v877);
  OUTLINED_FUNCTION_126_3(v308 + v339, v340 + v2);
  v341 = v876;
  OUTLINED_FUNCTION_57(v340, 1, v876);
  if (v290)
  {
    OUTLINED_FUNCTION_32_1(v340 + v2);
    if (v290)
    {
      sub_1D4E50004(v340, &qword_1EC7EA3B8, &unk_1D561E370);
      goto LABEL_58;
    }

LABEL_56:
    v291 = &qword_1EC7EB578;
    v292 = &unk_1D5644D10;
    v293 = v340;
    goto LABEL_10;
  }

  v342 = v873;
  sub_1D4F1C460(v340, v873, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_32_1(v340 + v2);
  if (v343)
  {
    OUTLINED_FUNCTION_158_4();
    v344(v342, v341);
    goto LABEL_56;
  }

  v345 = v874;
  OUTLINED_FUNCTION_33_1();
  v346 = v340 + v2;
  v347 = v872;
  v348(v872, v346, v341);
  OUTLINED_FUNCTION_0_98();
  sub_1D512BFF0(v349, v350);
  v351 = sub_1D5614D18();
  v352 = *(v345 + 8);
  v352(v347, v341);
  v352(v342, v341);
  sub_1D4E50004(v877, &qword_1EC7EA3B8, &unk_1D561E370);
  if ((v351 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_58:
  v353 = v323[11];
  v354 = (v305 + v353);
  v355 = *(v305 + v353 + 8);
  v356 = (v308 + v353);
  v357 = *(v308 + v353 + 8);
  if (v355)
  {
    if (!v357)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*v354 != *v356)
    {
      LOBYTE(v357) = 1;
    }

    if (v357)
    {
      goto LABEL_11;
    }
  }

  v358 = v323[12];
  v359 = *(v305 + v358);
  v360 = *(v308 + v358);
  if (v359)
  {
    if (!v360)
    {
      goto LABEL_11;
    }

    v361 = *(v308 + v358);

    OUTLINED_FUNCTION_63_1();
    sub_1D4F28F1C();
    OUTLINED_FUNCTION_120_2();
    if ((v359 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v360)
  {
    goto LABEL_11;
  }

  v362 = v323[13];
  v363 = *(v870 + 48);
  v364 = &unk_1D561DA80;
  v365 = v305 + v362;
  v366 = v869;
  OUTLINED_FUNCTION_126_3(v365, v869);
  OUTLINED_FUNCTION_126_3(v308 + v362, v363 + v366);
  v367 = v871;
  OUTLINED_FUNCTION_57(v366, 1, v871);
  if (v290)
  {
    OUTLINED_FUNCTION_32_1(v363 + v366);
    if (v290)
    {
      sub_1D4E50004(v366, &qword_1EC7EAC98, &unk_1D561DA80);
      goto LABEL_79;
    }

LABEL_77:
    v291 = &qword_1EC7EF648;
    v292 = &unk_1D5632470;
    v293 = v366;
    goto LABEL_10;
  }

  sub_1D4F1C460(v366, v867, &qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_32_1(v363 + v366);
  if (v368)
  {
    v369 = v868[1];
    v370 = OUTLINED_FUNCTION_132_1();
    v371(v370);
    goto LABEL_77;
  }

  v364 = v868;
  OUTLINED_FUNCTION_33_1();
  v372(v866, v363 + v366, v367);
  OUTLINED_FUNCTION_11_58();
  sub_1D512BFF0(v373, v374);
  OUTLINED_FUNCTION_72_15();
  v375 = OUTLINED_FUNCTION_41_4();
  v363(v375);
  v376 = OUTLINED_FUNCTION_132_1();
  v363(v376);
  sub_1D4E50004(v366, &qword_1EC7EAC98, &unk_1D561DA80);
  if ((&qword_1EC7EAC98 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_79:
  OUTLINED_FUNCTION_62_20(v771[14]);
  if (v364)
  {
    if (!&qword_1EC7EAC98)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_63_1();
    sub_1D4F29174();
    OUTLINED_FUNCTION_120_2();
    if ((v364 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (&qword_1EC7EAC98)
  {
    goto LABEL_11;
  }

  v377 = OUTLINED_FUNCTION_35_29(v771[15]);
  if (v377)
  {
    if (!v378 || (sub_1D4EF81E0(v377, v378) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v378)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_61_18(v771[16]);
  if (v380 == 2)
  {
    if (v379 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v294 = 0;
    if (v379 == 2 || ((v379 ^ v380) & 1) != 0)
    {
      return v294 & 1;
    }
  }

  v381 = v771[17];
  v382 = *(v863 + 48);
  v383 = OUTLINED_FUNCTION_67_16();
  v384 = v865;
  OUTLINED_FUNCTION_55_16(v383);
  OUTLINED_FUNCTION_16_44();
  OUTLINED_FUNCTION_39_21(v384);
  if (!v290)
  {
    v385 = v865;
    sub_1D4F1C460(v865, v862, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_39_21(v382 + v385);
    if (!v386)
    {
      OUTLINED_FUNCTION_33_1();
      v387 = v865;
      v388 = OUTLINED_FUNCTION_142_3();
      v389(v388);
      OUTLINED_FUNCTION_3_82();
      sub_1D512BFF0(v390, v391);
      OUTLINED_FUNCTION_72_15();
      v392 = OUTLINED_FUNCTION_41_4();
      v382(v392);
      v393 = OUTLINED_FUNCTION_132_1();
      v382(v393);
      sub_1D4E50004(v387, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v385 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_104;
    }

    (*(v861 + 8))(v862, v864);
LABEL_102:
    v291 = &qword_1EC7E9FB0;
    v292 = &qword_1D562C590;
    v293 = v865;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_39_21(v382 + v865);
  if (!v290)
  {
    goto LABEL_102;
  }

  sub_1D4E50004(v865, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_104:
  OUTLINED_FUNCTION_61_18(v771[18]);
  if (v395 == 2)
  {
    if (v394 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v294 = 0;
    if (v394 == 2 || ((v394 ^ v395) & 1) != 0)
    {
      return v294 & 1;
    }
  }

  OUTLINED_FUNCTION_61_18(v771[19]);
  if (v397 == 2)
  {
    if (v396 != 2)
    {
      goto LABEL_11;
    }

LABEL_114:
    v398 = v771[20];
    v399 = *(v854 + 48);
    v400 = OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_55_16(v400);
    OUTLINED_FUNCTION_16_44();
    v401 = OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_57(v401, v402, v858);
    if (v290)
    {
      v403 = OUTLINED_FUNCTION_70_3(v860);
      OUTLINED_FUNCTION_57(v403, v404, v858);
      if (v290)
      {
        sub_1D4E50004(v860, &qword_1EC7EC538, &unk_1D5621080);
        goto LABEL_124;
      }
    }

    else
    {
      v405 = v860;
      sub_1D4F1C460(v860, v855, &qword_1EC7EC538, &unk_1D5621080);
      v406 = OUTLINED_FUNCTION_69_1();
      OUTLINED_FUNCTION_57(v406, v407, v858);
      if (!v408)
      {
        OUTLINED_FUNCTION_40_3();
        v409 = v860;
        v410(v850, v860 + v399, v858);
        OUTLINED_FUNCTION_82_11();
        sub_1D512BFF0(v411, v412);
        OUTLINED_FUNCTION_75_3();
        v413 = OUTLINED_FUNCTION_9_58();
        (unk_1D5621080)(v413);
        v414 = OUTLINED_FUNCTION_26_27();
        (unk_1D5621080)(v414);
        sub_1D4E50004(v409, &qword_1EC7EC538, &unk_1D5621080);
        if ((v405 & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_124:
        v415 = v771[21];
        v416 = *(v851 + 48);
        v417 = OUTLINED_FUNCTION_67_16();
        OUTLINED_FUNCTION_55_16(v417);
        OUTLINED_FUNCTION_16_44();
        v418 = OUTLINED_FUNCTION_105();
        OUTLINED_FUNCTION_57(v418, v419, v856);
        if (v290)
        {
          v420 = OUTLINED_FUNCTION_70_3(v857);
          OUTLINED_FUNCTION_57(v420, v421, v856);
          if (v290)
          {
            sub_1D4E50004(v857, &qword_1EC7EC530, &unk_1D5632150);
            goto LABEL_134;
          }
        }

        else
        {
          v422 = v857;
          sub_1D4F1C460(v857, v852, &qword_1EC7EC530, &unk_1D5632150);
          v423 = OUTLINED_FUNCTION_69_1();
          OUTLINED_FUNCTION_57(v423, v424, v856);
          if (!v425)
          {
            OUTLINED_FUNCTION_40_3();
            v426 = v857;
            v427 = OUTLINED_FUNCTION_130_7();
            v428(v427);
            OUTLINED_FUNCTION_81_13();
            sub_1D512BFF0(v429, v430);
            OUTLINED_FUNCTION_75_3();
            v431 = OUTLINED_FUNCTION_9_58();
            (unk_1D5632150)(v431);
            v432 = OUTLINED_FUNCTION_26_27();
            (unk_1D5632150)(v432);
            sub_1D4E50004(v426, &qword_1EC7EC530, &unk_1D5632150);
            if ((v422 & 1) == 0)
            {
              goto LABEL_11;
            }

LABEL_134:
            v433 = v771[22];
            v434 = *(v780 + 48);
            v435 = OUTLINED_FUNCTION_67_16();
            OUTLINED_FUNCTION_55_16(v435);
            OUTLINED_FUNCTION_16_44();
            v436 = OUTLINED_FUNCTION_105();
            OUTLINED_FUNCTION_57(v436, v437, v785);
            if (v290)
            {
              v438 = OUTLINED_FUNCTION_70_3(v782);
              OUTLINED_FUNCTION_57(v438, v439, v785);
              if (v290)
              {
                sub_1D4E50004(v782, &qword_1EC7EC528, &unk_1D5621070);
                goto LABEL_144;
              }
            }

            else
            {
              v440 = v782;
              sub_1D4F1C460(v782, v781, &qword_1EC7EC528, &unk_1D5621070);
              v441 = OUTLINED_FUNCTION_69_1();
              OUTLINED_FUNCTION_57(v441, v442, v785);
              if (!v443)
              {
                OUTLINED_FUNCTION_40_3();
                v444 = v782;
                v445 = OUTLINED_FUNCTION_130_7();
                v434 = v785;
                v446(v445);
                OUTLINED_FUNCTION_80_8();
                sub_1D512BFF0(v447, v448);
                OUTLINED_FUNCTION_75_3();
                v449 = OUTLINED_FUNCTION_9_58();
                (unk_1D5621070)(v449);
                v450 = OUTLINED_FUNCTION_26_27();
                (unk_1D5621070)(v450);
                sub_1D4E50004(v444, &qword_1EC7EC528, &unk_1D5621070);
                if ((v440 & 1) == 0)
                {
                  goto LABEL_11;
                }

LABEL_144:
                OUTLINED_FUNCTION_61_18(v771[23]);
                if (v452 == 26)
                {
                  if (v451 != 26)
                  {
                    goto LABEL_11;
                  }
                }

                else if (v452 != v451)
                {
                  goto LABEL_11;
                }

                v453 = v771[24];
                OUTLINED_FUNCTION_159_5();
                v454 = OUTLINED_FUNCTION_67_16();
                v455 = v774;
                OUTLINED_FUNCTION_55_16(v454);
                OUTLINED_FUNCTION_16_44();
                OUTLINED_FUNCTION_40_25(v455);
                if (v290)
                {
                  OUTLINED_FUNCTION_40_25(v774 + v434);
                  if (v290)
                  {
                    sub_1D4E50004(v774, &qword_1EC7EA3B8, &unk_1D561E370);
                    goto LABEL_158;
                  }
                }

                else
                {
                  v456 = v774;
                  sub_1D4F1C460(v774, v775, &qword_1EC7EA3B8, &unk_1D561E370);
                  OUTLINED_FUNCTION_40_25(v456 + v434);
                  if (!v457)
                  {
                    OUTLINED_FUNCTION_33_1();
                    v459 = v774;
                    v460 = OUTLINED_FUNCTION_143_4();
                    v461(v460);
                    OUTLINED_FUNCTION_0_98();
                    sub_1D512BFF0(v462, v463);
                    OUTLINED_FUNCTION_72_15();
                    v464 = OUTLINED_FUNCTION_41_4();
                    (v434)(v464);
                    v465 = OUTLINED_FUNCTION_132_1();
                    (v434)(v465);
                    sub_1D4E50004(v459, &qword_1EC7EA3B8, &unk_1D561E370);
                    if ((v456 & 1) == 0)
                    {
                      goto LABEL_11;
                    }

LABEL_158:
                    v466 = v771[25];
                    OUTLINED_FUNCTION_159_5();
                    v467 = OUTLINED_FUNCTION_67_16();
                    v468 = v778;
                    OUTLINED_FUNCTION_55_16(v467);
                    OUTLINED_FUNCTION_16_44();
                    OUTLINED_FUNCTION_40_25(v468);
                    if (v290)
                    {
                      OUTLINED_FUNCTION_40_25(v778 + v434);
                      if (v290)
                      {
                        sub_1D4E50004(v778, &qword_1EC7EA3B8, &unk_1D561E370);
                        goto LABEL_168;
                      }
                    }

                    else
                    {
                      v469 = v778;
                      sub_1D4F1C460(v778, v779, &qword_1EC7EA3B8, &unk_1D561E370);
                      OUTLINED_FUNCTION_40_25(v469 + v434);
                      if (!v470)
                      {
                        OUTLINED_FUNCTION_33_1();
                        v472 = v778;
                        v473 = OUTLINED_FUNCTION_143_4();
                        v474(v473);
                        OUTLINED_FUNCTION_0_98();
                        sub_1D512BFF0(v475, v476);
                        OUTLINED_FUNCTION_72_15();
                        v477 = OUTLINED_FUNCTION_41_4();
                        (v434)(v477);
                        v478 = OUTLINED_FUNCTION_132_1();
                        (v434)(v478);
                        sub_1D4E50004(v472, &qword_1EC7EA3B8, &unk_1D561E370);
                        if ((v469 & 1) == 0)
                        {
                          goto LABEL_11;
                        }

LABEL_168:
                        v479 = v771[26];
                        v480 = *(v790 + 48);
                        v481 = &qword_1EC7EF5D8;
                        v482 = OUTLINED_FUNCTION_67_16();
                        OUTLINED_FUNCTION_55_16(v482);
                        OUTLINED_FUNCTION_16_44();
                        v483 = OUTLINED_FUNCTION_105();
                        OUTLINED_FUNCTION_57(v483, v484, v795);
                        if (v290)
                        {
                          v485 = OUTLINED_FUNCTION_70_3(v792);
                          OUTLINED_FUNCTION_57(v485, v486, v795);
                          if (v290)
                          {
                            sub_1D4E50004(v792, &qword_1EC7EF5D8, &unk_1D5632160);
                            goto LABEL_178;
                          }
                        }

                        else
                        {
                          v481 = v792;
                          sub_1D4F1C460(v792, v791, &qword_1EC7EF5D8, &unk_1D5632160);
                          v487 = OUTLINED_FUNCTION_69_1();
                          OUTLINED_FUNCTION_57(v487, v488, v795);
                          if (!v489)
                          {
                            OUTLINED_FUNCTION_40_3();
                            v490 = v792;
                            v491 = OUTLINED_FUNCTION_130_7();
                            v492(v491);
                            OUTLINED_FUNCTION_79_6();
                            sub_1D512BFF0(v493, v494);
                            OUTLINED_FUNCTION_75_3();
                            v495 = OUTLINED_FUNCTION_9_58();
                            (unk_1D5632160)(v495);
                            v496 = OUTLINED_FUNCTION_26_27();
                            (unk_1D5632160)(v496);
                            sub_1D4E50004(v490, &qword_1EC7EF5D8, &unk_1D5632160);
                            if ((v481 & 1) == 0)
                            {
                              goto LABEL_11;
                            }

LABEL_178:
                            OUTLINED_FUNCTION_56_15(v771[27]);
                            if (v498)
                            {
                              if (!v497)
                              {
                                goto LABEL_11;
                              }
                            }

                            else
                            {
                              OUTLINED_FUNCTION_112_4();
                              if (v499)
                              {
                                goto LABEL_11;
                              }
                            }

                            OUTLINED_FUNCTION_62_20(v771[28]);
                            if (&unk_1D5632160)
                            {
                              if (!v481)
                              {
                                goto LABEL_11;
                              }

                              OUTLINED_FUNCTION_63_1();
                              sub_1D4EF84DC();
                              OUTLINED_FUNCTION_120_2();
                              if ((&unk_1D5632160 & 1) == 0)
                              {
                                goto LABEL_11;
                              }
                            }

                            else if (v481)
                            {
                              goto LABEL_11;
                            }

                            v500 = v771[29];
                            v501 = *(v870 + 48);
                            v502 = OUTLINED_FUNCTION_67_16();
                            OUTLINED_FUNCTION_55_16(v502);
                            OUTLINED_FUNCTION_16_44();
                            v503 = OUTLINED_FUNCTION_105();
                            OUTLINED_FUNCTION_57(v503, v504, v871);
                            if (v290)
                            {
                              v505 = OUTLINED_FUNCTION_70_3(v788);
                              OUTLINED_FUNCTION_57(v505, v506, v871);
                              if (v290)
                              {
                                sub_1D4E50004(v788, &qword_1EC7EAC98, &unk_1D561DA80);
                                goto LABEL_197;
                              }
                            }

                            else
                            {
                              v507 = v788;
                              sub_1D4F1C460(v788, v787, &qword_1EC7EAC98, &unk_1D561DA80);
                              v508 = OUTLINED_FUNCTION_69_1();
                              OUTLINED_FUNCTION_57(v508, v509, v871);
                              if (!v510)
                              {
                                OUTLINED_FUNCTION_40_3();
                                v511 = v788;
                                v512(v866, v788 + v501, v871);
                                OUTLINED_FUNCTION_11_58();
                                sub_1D512BFF0(v513, v514);
                                OUTLINED_FUNCTION_75_3();
                                v515 = OUTLINED_FUNCTION_9_58();
                                (unk_1D561DA80)(v515);
                                v516 = OUTLINED_FUNCTION_26_27();
                                (unk_1D561DA80)(v516);
                                sub_1D4E50004(v511, &qword_1EC7EAC98, &unk_1D561DA80);
                                if ((v507 & 1) == 0)
                                {
                                  goto LABEL_11;
                                }

LABEL_197:
                                v517 = v771[30];
                                v518 = *(v884 + v517);
                                v519 = *(v884 + v517 + 8);
                                v520 = *(v884 + v517 + 16);
                                v521 = *(v884 + v517 + 24);
                                v522 = *(v884 + v517 + 32);
                                v523 = (v885 + v517);
                                v524 = *v523;
                                *&v896 = v518;
                                *(&v896 + 1) = v519;
                                *&v897 = v520;
                                *(&v897 + 1) = v521;
                                *&v898 = v522;
                                *(&v898 + 1) = v524;
                                v525 = *(v523 + 1);
                                v526 = *(v523 + 3);
                                v899 = v525;
                                v900 = v526;
                                if (v519 == 2)
                                {
                                  if (v525 != 2)
                                  {
                                    goto LABEL_11;
                                  }
                                }

                                else
                                {
                                  *&v913 = v518;
                                  *(&v913 + 1) = v519;
                                  *&v914 = v520;
                                  *(&v914 + 1) = v521;
                                  *&v915 = v522;
                                  if (v525 == 2 || !static PlaybackPosition.== infix(_:_:)(&v913, &v898 + 8))
                                  {
                                    goto LABEL_11;
                                  }
                                }

                                v527 = v771[31];
                                v528 = *(v798 + 48);
                                v529 = OUTLINED_FUNCTION_67_16();
                                OUTLINED_FUNCTION_55_16(v529);
                                OUTLINED_FUNCTION_16_44();
                                v530 = OUTLINED_FUNCTION_105();
                                OUTLINED_FUNCTION_57(v530, v531, v803);
                                if (v290)
                                {
                                  v532 = OUTLINED_FUNCTION_70_3(v800);
                                  OUTLINED_FUNCTION_57(v532, v533, v803);
                                  if (v290)
                                  {
                                    sub_1D4E50004(v800, &qword_1EC7EB5C0, &unk_1D56223C0);
                                    goto LABEL_212;
                                  }
                                }

                                else
                                {
                                  v534 = v800;
                                  sub_1D4F1C460(v800, v799, &qword_1EC7EB5C0, &unk_1D56223C0);
                                  v535 = OUTLINED_FUNCTION_69_1();
                                  OUTLINED_FUNCTION_57(v535, v536, v803);
                                  if (!v537)
                                  {
                                    OUTLINED_FUNCTION_40_3();
                                    v538 = v800;
                                    v539 = OUTLINED_FUNCTION_130_7();
                                    v540(v539);
                                    OUTLINED_FUNCTION_77_6();
                                    sub_1D512BFF0(v541, v542);
                                    OUTLINED_FUNCTION_75_3();
                                    v543 = OUTLINED_FUNCTION_9_58();
                                    (unk_1D56223C0)(v543);
                                    v544 = OUTLINED_FUNCTION_26_27();
                                    (unk_1D56223C0)(v544);
                                    sub_1D4E50004(v538, &qword_1EC7EB5C0, &unk_1D56223C0);
                                    if ((v534 & 1) == 0)
                                    {
                                      goto LABEL_11;
                                    }

LABEL_212:
                                    v545 = v772;
                                    v546 = v771[32];
                                    v547 = *(v786 + 48);
                                    v548 = OUTLINED_FUNCTION_67_16();
                                    OUTLINED_FUNCTION_55_16(v548);
                                    OUTLINED_FUNCTION_16_44();
                                    v284 = v545;
                                    v549 = OUTLINED_FUNCTION_105();
                                    OUTLINED_FUNCTION_57(v549, v550, v773);
                                    if (v290)
                                    {
                                      OUTLINED_FUNCTION_57(v545 + v547, 1, v773);
                                      if (v290)
                                      {
                                        sub_1D4E50004(v545, &qword_1EC7E9CA0, &unk_1D561A0C0);
                                        goto LABEL_221;
                                      }
                                    }

                                    else
                                    {
                                      sub_1D4F1C460(v545, v789, &qword_1EC7E9CA0, &unk_1D561A0C0);
                                      OUTLINED_FUNCTION_57(v545 + v547, 1, v773);
                                      if (!v551)
                                      {
                                        OUTLINED_FUNCTION_40_3();
                                        v552 = v545 + v547;
                                        v547 = v773;
                                        v553(v882, v552, v773);
                                        OUTLINED_FUNCTION_13_43();
                                        sub_1D512BFF0(v554, v555);
                                        OUTLINED_FUNCTION_75_3();
                                        v556 = OUTLINED_FUNCTION_9_58();
                                        (unk_1D561A0C0)(v556);
                                        v557 = OUTLINED_FUNCTION_26_27();
                                        (unk_1D561A0C0)(v557);
                                        sub_1D4E50004(v545, &qword_1EC7E9CA0, &unk_1D561A0C0);
                                        if ((&qword_1EC7E9CA0 & 1) == 0)
                                        {
                                          goto LABEL_11;
                                        }

LABEL_221:
                                        OUTLINED_FUNCTION_62_20(v771[33]);
                                        if (&unk_1D561A0C0)
                                        {
                                          if (!&qword_1EC7E9CA0)
                                          {
                                            goto LABEL_11;
                                          }

                                          OUTLINED_FUNCTION_63_1();
                                          sub_1D4EF8698();
                                          OUTLINED_FUNCTION_120_2();
                                          if ((&unk_1D561A0C0 & 1) == 0)
                                          {
                                            goto LABEL_11;
                                          }
                                        }

                                        else if (&qword_1EC7E9CA0)
                                        {
                                          goto LABEL_11;
                                        }

                                        v558 = v771[34];
                                        OUTLINED_FUNCTION_159_5();
                                        v559 = OUTLINED_FUNCTION_67_16();
                                        v560 = v796;
                                        OUTLINED_FUNCTION_55_16(v559);
                                        OUTLINED_FUNCTION_16_44();
                                        OUTLINED_FUNCTION_40_25(v560);
                                        if (v290)
                                        {
                                          OUTLINED_FUNCTION_40_25(v796 + v547);
                                          if (v290)
                                          {
                                            sub_1D4E50004(v796, &qword_1EC7EA3B8, &unk_1D561E370);
                                            goto LABEL_236;
                                          }
                                        }

                                        else
                                        {
                                          v561 = v796;
                                          sub_1D4F1C460(v796, v797, &qword_1EC7EA3B8, &unk_1D561E370);
                                          OUTLINED_FUNCTION_40_25(v561 + v547);
                                          if (!v562)
                                          {
                                            OUTLINED_FUNCTION_40_3();
                                            v564 = v796;
                                            v565 = OUTLINED_FUNCTION_143_4();
                                            v566 = v876;
                                            v567(v565);
                                            OUTLINED_FUNCTION_0_98();
                                            sub_1D512BFF0(v568, v569);
                                            v570 = v797;
                                            OUTLINED_FUNCTION_45_3();
                                            sub_1D5614D18();
                                            v571 = OUTLINED_FUNCTION_9_58();
                                            (unk_1D561E370)(v571);
                                            (unk_1D561E370)(v570, v566);
                                            sub_1D4E50004(v564, &qword_1EC7EA3B8, &unk_1D561E370);
                                            if ((v566 & 1) == 0)
                                            {
                                              goto LABEL_11;
                                            }

LABEL_236:
                                            OUTLINED_FUNCTION_56_15(v771[35]);
                                            if (v573)
                                            {
                                              if (!v572)
                                              {
                                                goto LABEL_11;
                                              }
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_112_4();
                                              if (v574)
                                              {
                                                goto LABEL_11;
                                              }
                                            }

                                            v575 = v771[36];
                                            v576 = *(v806 + 48);
                                            v577 = OUTLINED_FUNCTION_67_16();
                                            OUTLINED_FUNCTION_55_16(v577);
                                            OUTLINED_FUNCTION_16_44();
                                            v578 = OUTLINED_FUNCTION_105();
                                            OUTLINED_FUNCTION_57(v578, v579, v811);
                                            if (v290)
                                            {
                                              v580 = OUTLINED_FUNCTION_70_3(v808);
                                              OUTLINED_FUNCTION_57(v580, v581, v811);
                                              if (v290)
                                              {
                                                sub_1D4E50004(v808, &qword_1EC7EDB88, L"P\b\a");
                                                goto LABEL_250;
                                              }
                                            }

                                            else
                                            {
                                              v582 = v808;
                                              sub_1D4F1C460(v808, v807, &qword_1EC7EDB88, L"P\b\a");
                                              v583 = OUTLINED_FUNCTION_69_1();
                                              OUTLINED_FUNCTION_57(v583, v584, v811);
                                              if (!v585)
                                              {
                                                OUTLINED_FUNCTION_40_3();
                                                v586 = v808;
                                                v587 = OUTLINED_FUNCTION_130_7();
                                                v588(v587);
                                                OUTLINED_FUNCTION_84_7();
                                                sub_1D512BFF0(v589, v590);
                                                OUTLINED_FUNCTION_75_3();
                                                v591 = OUTLINED_FUNCTION_9_58();
                                                (*L"P\b\a")(v591);
                                                v592 = OUTLINED_FUNCTION_26_27();
                                                (*L"P\b\a")(v592);
                                                sub_1D4E50004(v586, &qword_1EC7EDB88, L"P\b\a");
                                                if ((v582 & 1) == 0)
                                                {
                                                  goto LABEL_11;
                                                }

LABEL_250:
                                                v593 = v771[37];
                                                OUTLINED_FUNCTION_19_42();
                                                if (v596)
                                                {
                                                  if (!v594)
                                                  {
                                                    goto LABEL_11;
                                                  }

                                                  OUTLINED_FUNCTION_31_0(v595);
                                                  v599 = v290 && v597 == v598;
                                                  if (!v599 && (sub_1D5616168() & 1) == 0)
                                                  {
                                                    goto LABEL_11;
                                                  }
                                                }

                                                else if (v594)
                                                {
                                                  goto LABEL_11;
                                                }

                                                v600 = v771[38];
                                                v601 = *(v863 + 48);
                                                v602 = OUTLINED_FUNCTION_67_16();
                                                v603 = v804;
                                                OUTLINED_FUNCTION_55_16(v602);
                                                OUTLINED_FUNCTION_16_44();
                                                OUTLINED_FUNCTION_39_21(v603);
                                                if (v290)
                                                {
                                                  OUTLINED_FUNCTION_39_21(v601 + v804);
                                                  if (v290)
                                                  {
                                                    sub_1D4E50004(v804, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                                    goto LABEL_269;
                                                  }
                                                }

                                                else
                                                {
                                                  v604 = v804;
                                                  sub_1D4F1C460(v804, v805, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                                  OUTLINED_FUNCTION_39_21(v601 + v604);
                                                  if (!v605)
                                                  {
                                                    OUTLINED_FUNCTION_33_1();
                                                    v606 = v804;
                                                    v607 = OUTLINED_FUNCTION_142_3();
                                                    v608(v607);
                                                    OUTLINED_FUNCTION_3_82();
                                                    sub_1D512BFF0(v609, v610);
                                                    OUTLINED_FUNCTION_72_15();
                                                    v611 = OUTLINED_FUNCTION_41_4();
                                                    v601(v611);
                                                    v612 = OUTLINED_FUNCTION_132_1();
                                                    v601(v612);
                                                    sub_1D4E50004(v606, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                                    if ((v604 & 1) == 0)
                                                    {
                                                      goto LABEL_11;
                                                    }

LABEL_269:
                                                    v613 = v771[39];
                                                    OUTLINED_FUNCTION_19_42();
                                                    if (v616)
                                                    {
                                                      if (!v614)
                                                      {
                                                        goto LABEL_11;
                                                      }

                                                      OUTLINED_FUNCTION_31_0(v615);
                                                      v619 = v290 && v617 == v618;
                                                      if (!v619 && (sub_1D5616168() & 1) == 0)
                                                      {
                                                        goto LABEL_11;
                                                      }
                                                    }

                                                    else if (v614)
                                                    {
                                                      goto LABEL_11;
                                                    }

                                                    v620 = v771[40];
                                                    OUTLINED_FUNCTION_19_42();
                                                    if (v623)
                                                    {
                                                      if (!v621)
                                                      {
                                                        goto LABEL_11;
                                                      }

                                                      OUTLINED_FUNCTION_31_0(v622);
                                                      v626 = v290 && v624 == v625;
                                                      if (!v626 && (sub_1D5616168() & 1) == 0)
                                                      {
                                                        goto LABEL_11;
                                                      }
                                                    }

                                                    else if (v621)
                                                    {
                                                      goto LABEL_11;
                                                    }

                                                    OUTLINED_FUNCTION_56_15(v771[41]);
                                                    if (v628)
                                                    {
                                                      if (!v627)
                                                      {
                                                        goto LABEL_11;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_112_4();
                                                      if (v629)
                                                      {
                                                        goto LABEL_11;
                                                      }
                                                    }

                                                    v630 = v771[42];
                                                    v631 = (v884 + v630);
                                                    v632 = *(v884 + v630 + 16);
                                                    v910[0] = *(v884 + v630);
                                                    v910[1] = v632;
                                                    v633 = *(v884 + v630 + 16);
                                                    v634 = *(v884 + v630 + 48);
                                                    v911 = *(v884 + v630 + 32);
                                                    v912 = v634;
                                                    v635 = (v885 + v630);
                                                    v636 = v635[1];
                                                    v913 = *v635;
                                                    v914 = v636;
                                                    v637 = v635[1];
                                                    v638 = v635[3];
                                                    v915 = v635[2];
                                                    v916 = v638;
                                                    v907 = v633;
                                                    v908 = v911;
                                                    v909 = v631[3];
                                                    v639 = v910[0];
                                                    v640 = v913;
                                                    v904 = v637;
                                                    v905 = v915;
                                                    v906 = v635[3];
                                                    if (*(&v910[0] + 1))
                                                    {
                                                      v896 = v910[0];
                                                      v641 = v631[2];
                                                      v897 = v631[1];
                                                      v898 = v641;
                                                      v899 = v631[3];
                                                      v892 = v910[0];
                                                      v893 = v897;
                                                      v894 = v641;
                                                      v895 = v899;
                                                      if (*(&v913 + 1))
                                                      {
                                                        v642 = v635[2];
                                                        v889 = v635[1];
                                                        v890 = v642;
                                                        v891 = v635[3];
                                                        v888 = v913;
                                                        OUTLINED_FUNCTION_114_3(v910);
                                                        OUTLINED_FUNCTION_114_3(&v913);
                                                        OUTLINED_FUNCTION_114_3(&v896);
                                                        v643 = static VideoSupportedLocales.== infix(_:_:)(&v892, &v888);
                                                        v886[0] = v888;
                                                        v886[1] = v889;
                                                        v886[2] = v890;
                                                        v886[3] = v891;
                                                        sub_1D5000CD8(v886);
                                                        v887[0] = v892;
                                                        v887[1] = v893;
                                                        v887[2] = v894;
                                                        v887[3] = v895;
                                                        sub_1D5000CD8(v887);
                                                        v888 = v639;
                                                        v889 = v907;
                                                        v890 = v908;
                                                        v891 = v909;
                                                        sub_1D4E50004(&v888, &qword_1EC7EDBA0, &unk_1D5637EA0);
                                                        if ((v643 & 1) == 0)
                                                        {
                                                          goto LABEL_11;
                                                        }

LABEL_300:
                                                        v645 = v771[43];
                                                        OUTLINED_FUNCTION_19_42();
                                                        if (v648)
                                                        {
                                                          if (!v646)
                                                          {
                                                            goto LABEL_11;
                                                          }

                                                          OUTLINED_FUNCTION_31_0(v647);
                                                          v651 = v290 && v649 == v650;
                                                          if (!v651 && (sub_1D5616168() & 1) == 0)
                                                          {
                                                            goto LABEL_11;
                                                          }
                                                        }

                                                        else if (v646)
                                                        {
                                                          goto LABEL_11;
                                                        }

                                                        v652 = v771[44];
                                                        v653 = *(v863 + 48);
                                                        v654 = OUTLINED_FUNCTION_67_16();
                                                        v655 = v812;
                                                        OUTLINED_FUNCTION_55_16(v654);
                                                        OUTLINED_FUNCTION_16_44();
                                                        OUTLINED_FUNCTION_39_21(v655);
                                                        if (v290)
                                                        {
                                                          OUTLINED_FUNCTION_39_21(v812 + v653);
                                                          if (v290)
                                                          {
                                                            sub_1D4E50004(v812, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                                            goto LABEL_319;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v656 = v812;
                                                          sub_1D4F1C460(v812, v813, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                                          OUTLINED_FUNCTION_39_21(v656 + v653);
                                                          if (!v657)
                                                          {
                                                            OUTLINED_FUNCTION_40_3();
                                                            v658 = v812;
                                                            v659 = OUTLINED_FUNCTION_142_3();
                                                            v660 = v864;
                                                            v661(v659);
                                                            OUTLINED_FUNCTION_3_82();
                                                            sub_1D512BFF0(v662, v663);
                                                            v664 = v813;
                                                            OUTLINED_FUNCTION_45_3();
                                                            sub_1D5614D18();
                                                            v665 = OUTLINED_FUNCTION_9_58();
                                                            (unk_1D561D1D0)(v665);
                                                            (unk_1D561D1D0)(v664, v660);
                                                            sub_1D4E50004(v658, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                                            if ((v660 & 1) == 0)
                                                            {
                                                              goto LABEL_11;
                                                            }

LABEL_319:
                                                            v666 = v771[45];
                                                            v667 = *(v814 + 48);
                                                            v668 = OUTLINED_FUNCTION_67_16();
                                                            OUTLINED_FUNCTION_55_16(v668);
                                                            OUTLINED_FUNCTION_16_44();
                                                            v669 = OUTLINED_FUNCTION_105();
                                                            OUTLINED_FUNCTION_57(v669, v670, v819);
                                                            if (v290)
                                                            {
                                                              v671 = OUTLINED_FUNCTION_70_3(v816);
                                                              OUTLINED_FUNCTION_57(v671, v672, v819);
                                                              if (v290)
                                                              {
                                                                sub_1D4E50004(v816, &qword_1EC7EA788, &unk_1D56223A0);
                                                                goto LABEL_329;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v673 = v816;
                                                              sub_1D4F1C460(v816, v815, &qword_1EC7EA788, &unk_1D56223A0);
                                                              v674 = OUTLINED_FUNCTION_69_1();
                                                              OUTLINED_FUNCTION_57(v674, v675, v819);
                                                              if (!v676)
                                                              {
                                                                OUTLINED_FUNCTION_40_3();
                                                                v677 = v816;
                                                                v678 = OUTLINED_FUNCTION_130_7();
                                                                v679(v678);
                                                                sub_1D4F217AC();
                                                                OUTLINED_FUNCTION_75_3();
                                                                v680 = OUTLINED_FUNCTION_9_58();
                                                                (unk_1D56223A0)(v680);
                                                                v681 = OUTLINED_FUNCTION_26_27();
                                                                (unk_1D56223A0)(v681);
                                                                sub_1D4E50004(v677, &qword_1EC7EA788, &unk_1D56223A0);
                                                                if ((v673 & 1) == 0)
                                                                {
                                                                  goto LABEL_11;
                                                                }

LABEL_329:
                                                                v682 = v771[46];
                                                                v683 = *(v820 + 48);
                                                                v684 = OUTLINED_FUNCTION_67_16();
                                                                OUTLINED_FUNCTION_55_16(v684);
                                                                OUTLINED_FUNCTION_16_44();
                                                                v685 = OUTLINED_FUNCTION_105();
                                                                OUTLINED_FUNCTION_57(v685, v686, v825);
                                                                if (v290)
                                                                {
                                                                  v687 = OUTLINED_FUNCTION_70_3(v822);
                                                                  OUTLINED_FUNCTION_57(v687, v688, v825);
                                                                  if (v290)
                                                                  {
                                                                    sub_1D4E50004(v822, &qword_1EC7ED1F8, &qword_1D5634780);
                                                                    goto LABEL_339;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v689 = v822;
                                                                  sub_1D4F1C460(v822, v821, &qword_1EC7ED1F8, &qword_1D5634780);
                                                                  v690 = OUTLINED_FUNCTION_69_1();
                                                                  OUTLINED_FUNCTION_57(v690, v691, v825);
                                                                  if (!v692)
                                                                  {
                                                                    OUTLINED_FUNCTION_40_3();
                                                                    v693 = v822;
                                                                    v694 = OUTLINED_FUNCTION_130_7();
                                                                    v695(v694);
                                                                    sub_1D512BC6C();
                                                                    OUTLINED_FUNCTION_75_3();
                                                                    v696 = OUTLINED_FUNCTION_9_58();
                                                                    (qword_1D5634780)(v696);
                                                                    v697 = OUTLINED_FUNCTION_26_27();
                                                                    (qword_1D5634780)(v697);
                                                                    sub_1D4E50004(v693, &qword_1EC7ED1F8, &qword_1D5634780);
                                                                    if ((v689 & 1) == 0)
                                                                    {
                                                                      goto LABEL_11;
                                                                    }

LABEL_339:
                                                                    v698 = v771[47];
                                                                    v699 = *(v826 + 48);
                                                                    v700 = OUTLINED_FUNCTION_67_16();
                                                                    OUTLINED_FUNCTION_55_16(v700);
                                                                    OUTLINED_FUNCTION_16_44();
                                                                    v701 = OUTLINED_FUNCTION_105();
                                                                    OUTLINED_FUNCTION_57(v701, v702, v831);
                                                                    if (v290)
                                                                    {
                                                                      v703 = OUTLINED_FUNCTION_70_3(v828);
                                                                      OUTLINED_FUNCTION_57(v703, v704, v831);
                                                                      if (v290)
                                                                      {
                                                                        sub_1D4E50004(v828, &qword_1EC7ECBA0, &unk_1D56270F0);
                                                                        goto LABEL_349;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v705 = v828;
                                                                      sub_1D4F1C460(v828, v827, &qword_1EC7ECBA0, &unk_1D56270F0);
                                                                      v706 = OUTLINED_FUNCTION_69_1();
                                                                      OUTLINED_FUNCTION_57(v706, v707, v831);
                                                                      if (!v708)
                                                                      {
                                                                        OUTLINED_FUNCTION_40_3();
                                                                        v709 = v828;
                                                                        v710 = OUTLINED_FUNCTION_130_7();
                                                                        v711(v710);
                                                                        sub_1D512BBB8();
                                                                        OUTLINED_FUNCTION_75_3();
                                                                        v712 = OUTLINED_FUNCTION_9_58();
                                                                        (unk_1D56270F0)(v712);
                                                                        v713 = OUTLINED_FUNCTION_26_27();
                                                                        (unk_1D56270F0)(v713);
                                                                        sub_1D4E50004(v709, &qword_1EC7ECBA0, &unk_1D56270F0);
                                                                        if ((v705 & 1) == 0)
                                                                        {
                                                                          goto LABEL_11;
                                                                        }

LABEL_349:
                                                                        v714 = v771[48];
                                                                        v715 = *(v832 + 48);
                                                                        v716 = OUTLINED_FUNCTION_67_16();
                                                                        OUTLINED_FUNCTION_55_16(v716);
                                                                        OUTLINED_FUNCTION_16_44();
                                                                        v717 = OUTLINED_FUNCTION_105();
                                                                        OUTLINED_FUNCTION_57(v717, v718, v837);
                                                                        if (v290)
                                                                        {
                                                                          v719 = OUTLINED_FUNCTION_70_3(v834);
                                                                          OUTLINED_FUNCTION_57(v719, v720, v837);
                                                                          if (v290)
                                                                          {
                                                                            sub_1D4E50004(v834, &off_1EC7EB5B0, &unk_1D5632170);
                                                                            goto LABEL_359;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v721 = v834;
                                                                          sub_1D4F1C460(v834, v833, &off_1EC7EB5B0, &unk_1D5632170);
                                                                          v722 = OUTLINED_FUNCTION_69_1();
                                                                          OUTLINED_FUNCTION_57(v722, v723, v837);
                                                                          if (!v724)
                                                                          {
                                                                            OUTLINED_FUNCTION_40_3();
                                                                            v725 = v834;
                                                                            v726(v835, v834 + v715, v837);
                                                                            sub_1D512BB04();
                                                                            OUTLINED_FUNCTION_75_3();
                                                                            v727 = OUTLINED_FUNCTION_9_58();
                                                                            (unk_1D5632170)(v727);
                                                                            v728 = OUTLINED_FUNCTION_26_27();
                                                                            (unk_1D5632170)(v728);
                                                                            sub_1D4E50004(v725, &off_1EC7EB5B0, &unk_1D5632170);
                                                                            if ((v721 & 1) == 0)
                                                                            {
                                                                              goto LABEL_11;
                                                                            }

LABEL_359:
                                                                            v729 = v771[49];
                                                                            v730 = *(v838 + 48);
                                                                            v731 = OUTLINED_FUNCTION_67_16();
                                                                            OUTLINED_FUNCTION_55_16(v731);
                                                                            OUTLINED_FUNCTION_16_44();
                                                                            v732 = OUTLINED_FUNCTION_105();
                                                                            OUTLINED_FUNCTION_57(v732, v733, v843);
                                                                            if (v290)
                                                                            {
                                                                              v734 = OUTLINED_FUNCTION_70_3(v840);
                                                                              OUTLINED_FUNCTION_57(v734, v735, v843);
                                                                              if (v290)
                                                                              {
                                                                                sub_1D4E50004(v840, &qword_1EC7ECBA8, &unk_1D56223B0);
LABEL_369:
                                                                                v744 = v771[50];
                                                                                v745 = *(v844 + 48);
                                                                                v746 = &qword_1EC7EB620;
                                                                                v747 = OUTLINED_FUNCTION_67_16();
                                                                                OUTLINED_FUNCTION_55_16(v747);
                                                                                OUTLINED_FUNCTION_16_44();
                                                                                v748 = OUTLINED_FUNCTION_105();
                                                                                OUTLINED_FUNCTION_57(v748, v749, v849);
                                                                                if (v290)
                                                                                {
                                                                                  v750 = OUTLINED_FUNCTION_70_3(v846);
                                                                                  OUTLINED_FUNCTION_57(v750, v751, v849);
                                                                                  if (v290)
                                                                                  {
                                                                                    sub_1D4E50004(v846, &qword_1EC7EB620, &unk_1D561E5B0);
LABEL_379:
                                                                                    OUTLINED_FUNCTION_62_20(v771[51]);
                                                                                    if (&unk_1D561E5B0)
                                                                                    {
                                                                                      if (!v746)
                                                                                      {
                                                                                        goto LABEL_11;
                                                                                      }

                                                                                      OUTLINED_FUNCTION_63_1();
                                                                                      sub_1D4EF7D1C();
                                                                                      OUTLINED_FUNCTION_120_2();
                                                                                      if ((&unk_1D561E5B0 & 1) == 0)
                                                                                      {
                                                                                        goto LABEL_11;
                                                                                      }
                                                                                    }

                                                                                    else if (v746)
                                                                                    {
                                                                                      goto LABEL_11;
                                                                                    }

                                                                                    OUTLINED_FUNCTION_35_29(v771[52]);
                                                                                    sub_1D4EF6F7C();
                                                                                    if (v759)
                                                                                    {
                                                                                      OUTLINED_FUNCTION_156_3(v771[53]);
                                                                                      if (sub_1D560D6E8())
                                                                                      {
                                                                                        OUTLINED_FUNCTION_156_3(v771[54]);
                                                                                        if (sub_1D4F3B22C())
                                                                                        {
                                                                                          v760 = v771[55];
                                                                                          OUTLINED_FUNCTION_19_42();
                                                                                          if (v763)
                                                                                          {
                                                                                            if (v761)
                                                                                            {
                                                                                              OUTLINED_FUNCTION_31_0(v762);
                                                                                              v766 = v290 && v764 == v765;
                                                                                              if (v766 || (sub_1D5616168() & 1) != 0)
                                                                                              {
LABEL_396:
                                                                                                OUTLINED_FUNCTION_35_29(v771[56]);
                                                                                                sub_1D4F286E0();
                                                                                                if (v767)
                                                                                                {
                                                                                                  OUTLINED_FUNCTION_35_29(v771[57]);
                                                                                                  sub_1D4F286E0();
                                                                                                  if (v768)
                                                                                                  {
                                                                                                    OUTLINED_FUNCTION_35_29(v771[58]);
                                                                                                    sub_1D4F286E0();
                                                                                                    if (v769)
                                                                                                    {
                                                                                                      OUTLINED_FUNCTION_35_29(v771[59]);
                                                                                                      sub_1D4F286E0();
                                                                                                      return v294 & 1;
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }

                                                                                          else if (!v761)
                                                                                          {
                                                                                            goto LABEL_396;
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }

LABEL_11:
                                                                                    v294 = 0;
                                                                                    return v294 & 1;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v746 = v846;
                                                                                  sub_1D4F1C460(v846, v845, &qword_1EC7EB620, &unk_1D561E5B0);
                                                                                  v752 = OUTLINED_FUNCTION_69_1();
                                                                                  OUTLINED_FUNCTION_57(v752, v753, v849);
                                                                                  if (!v754)
                                                                                  {
                                                                                    OUTLINED_FUNCTION_40_3();
                                                                                    v755 = v846;
                                                                                    v756(v847, v846 + v745, v849);
                                                                                    sub_1D4F21914();
                                                                                    OUTLINED_FUNCTION_75_3();
                                                                                    v757 = OUTLINED_FUNCTION_9_58();
                                                                                    (unk_1D561E5B0)(v757);
                                                                                    v758 = OUTLINED_FUNCTION_26_27();
                                                                                    (unk_1D561E5B0)(v758);
                                                                                    sub_1D4E50004(v755, &qword_1EC7EB620, &unk_1D561E5B0);
                                                                                    if ((v746 & 1) == 0)
                                                                                    {
                                                                                      goto LABEL_11;
                                                                                    }

                                                                                    goto LABEL_379;
                                                                                  }

                                                                                  (*(v848 + 8))(v845, v849);
                                                                                }

                                                                                v291 = &qword_1EC7EB670;
                                                                                v292 = qword_1D561E830;
                                                                                v293 = v846;
LABEL_10:
                                                                                sub_1D4E50004(v293, v291, v292);
                                                                                goto LABEL_11;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v736 = v840;
                                                                              sub_1D4F1C460(v840, v839, &qword_1EC7ECBA8, &unk_1D56223B0);
                                                                              v737 = OUTLINED_FUNCTION_69_1();
                                                                              OUTLINED_FUNCTION_57(v737, v738, v843);
                                                                              if (!v739)
                                                                              {
                                                                                OUTLINED_FUNCTION_40_3();
                                                                                v740 = v840;
                                                                                v741(v841, v840 + v730, v843);
                                                                                sub_1D512BA50();
                                                                                OUTLINED_FUNCTION_75_3();
                                                                                v742 = OUTLINED_FUNCTION_9_58();
                                                                                (unk_1D56223B0)(v742);
                                                                                v743 = OUTLINED_FUNCTION_26_27();
                                                                                (unk_1D56223B0)(v743);
                                                                                sub_1D4E50004(v740, &qword_1EC7ECBA8, &unk_1D56223B0);
                                                                                if ((v736 & 1) == 0)
                                                                                {
                                                                                  goto LABEL_11;
                                                                                }

                                                                                goto LABEL_369;
                                                                              }

                                                                              (*(v842 + 8))(v839, v843);
                                                                            }

                                                                            v291 = &qword_1EC7F0498;
                                                                            v292 = &unk_1D5637E40;
                                                                            v293 = v840;
                                                                            goto LABEL_10;
                                                                          }

                                                                          (*(v836 + 8))(v833, v837);
                                                                        }

                                                                        v291 = &qword_1EC7EF608;
                                                                        v292 = &unk_1D5632420;
                                                                        v293 = v834;
                                                                        goto LABEL_10;
                                                                      }

                                                                      (*(v830 + 8))(v827, v831);
                                                                    }

                                                                    v291 = &qword_1EC7F04A0;
                                                                    v292 = &qword_1D5637E50;
                                                                    v293 = v828;
                                                                    goto LABEL_10;
                                                                  }

                                                                  (*(v824 + 8))(v821, v825);
                                                                }

                                                                v291 = &qword_1EC7F04A8;
                                                                v292 = &qword_1D5637E58;
                                                                v293 = v822;
                                                                goto LABEL_10;
                                                              }

                                                              (*(v818 + 8))(v815, v819);
                                                            }

                                                            v291 = &qword_1EC7EB668;
                                                            v292 = &qword_1D5637E60;
                                                            v293 = v816;
                                                            goto LABEL_10;
                                                          }

                                                          (*(v861 + 8))(v813, v864);
                                                        }

                                                        v291 = &qword_1EC7E9FB0;
                                                        v292 = &qword_1D562C590;
                                                        v293 = v812;
                                                        goto LABEL_10;
                                                      }

                                                      v888 = v896;
                                                      v889 = v897;
                                                      v890 = v898;
                                                      v891 = v899;
                                                      OUTLINED_FUNCTION_114_3(v910);
                                                      OUTLINED_FUNCTION_114_3(&v913);
                                                      OUTLINED_FUNCTION_114_3(&v896);
                                                      sub_1D5000CD8(&v888);
                                                    }

                                                    else
                                                    {
                                                      if (!*(&v913 + 1))
                                                      {
                                                        v896 = *&v910[0];
                                                        v644 = v631[2];
                                                        v897 = v631[1];
                                                        v898 = v644;
                                                        v899 = v631[3];
                                                        OUTLINED_FUNCTION_126_3(v910, &v892);
                                                        OUTLINED_FUNCTION_126_3(&v913, &v892);
                                                        sub_1D4E50004(&v896, &qword_1EC7EDBA0, &unk_1D5637EA0);
                                                        goto LABEL_300;
                                                      }

                                                      OUTLINED_FUNCTION_126_3(v910, &v896);
                                                      OUTLINED_FUNCTION_126_3(&v913, &v896);
                                                    }

                                                    v896 = v639;
                                                    v897 = v907;
                                                    v898 = v908;
                                                    v899 = v909;
                                                    v900 = v640;
                                                    v901 = v904;
                                                    v902 = v905;
                                                    v903 = v906;
                                                    v291 = &unk_1EC7F04C0;
                                                    v292 = &unk_1D5644D20;
                                                    v293 = &v896;
                                                    goto LABEL_10;
                                                  }

                                                  (*(v861 + 8))(v805, v864);
                                                }

                                                v291 = &qword_1EC7E9FB0;
                                                v292 = &qword_1D562C590;
                                                v293 = v804;
                                                goto LABEL_10;
                                              }

                                              (*(v810 + 8))(v807, v811);
                                            }

                                            v291 = &qword_1EC7F04B0;
                                            v292 = &qword_1D5637E68;
                                            v293 = v808;
                                            goto LABEL_10;
                                          }

                                          OUTLINED_FUNCTION_158_4();
                                          v563(v797, v876);
                                        }

                                        v291 = &qword_1EC7EB578;
                                        v292 = &unk_1D5644D10;
                                        v293 = v796;
                                        goto LABEL_10;
                                      }

                                      (*(v883 + 8))(v789, v773);
                                    }

LABEL_9:
                                    v291 = &qword_1EC7E9FB8;
                                    v292 = &unk_1D561B9C0;
                                    v293 = v284;
                                    goto LABEL_10;
                                  }

                                  (*(v802 + 8))(v799, v803);
                                }

                                v291 = &qword_1EC7EF610;
                                v292 = &unk_1D5637E70;
                                v293 = v800;
                                goto LABEL_10;
                              }

                              (v868[1])(v787, v871);
                            }

                            v291 = &qword_1EC7EF648;
                            v292 = &unk_1D5632470;
                            v293 = v788;
                            goto LABEL_10;
                          }

                          (*(v794 + 8))(v791, v795);
                        }

                        v291 = &qword_1EC7EF618;
                        v292 = &unk_1D5632430;
                        v293 = v792;
                        goto LABEL_10;
                      }

                      OUTLINED_FUNCTION_158_4();
                      v471(v779, v876);
                    }

                    v291 = &qword_1EC7EB578;
                    v292 = &unk_1D5644D10;
                    v293 = v778;
                    goto LABEL_10;
                  }

                  OUTLINED_FUNCTION_158_4();
                  v458(v775, v876);
                }

                v291 = &qword_1EC7EB578;
                v292 = &unk_1D5644D10;
                v293 = v774;
                goto LABEL_10;
              }

              (*(v784 + 8))(v781, v785);
            }

            v291 = &qword_1EC7EF620;
            v292 = &unk_1D5637E80;
            v293 = v782;
            goto LABEL_10;
          }

          (*(v777 + 8))(v852, v856);
        }

        v291 = &qword_1EC7EF628;
        v292 = &unk_1D5632440;
        v293 = v857;
        goto LABEL_10;
      }

      (*(v853 + 8))(v855, v858);
    }

    v291 = &qword_1EC7F04B8;
    v292 = &unk_1D5637E90;
    v293 = v860;
    goto LABEL_10;
  }

  v294 = 0;
  if (v396 != 2 && ((v396 ^ v397) & 1) == 0)
  {
    goto LABEL_114;
  }

  return v294 & 1;
}