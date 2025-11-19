uint64_t objectdestroyTm_88()
{
  v1 = type metadata accessor for GameLibraryAccessoryView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[6]);
  v5 = v2 + v1[7];
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
  }

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F921B58();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F7AA59C()
{
  type metadata accessor for GameLibraryAccessoryView();

  return sub_24F7A5078();
}

uint64_t sub_24F7AA610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F920658();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24F7AA640@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for GameLibraryAccessoryView() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 64));

  return sub_24F7A422C(v4, a1);
}

uint64_t objectdestroy_64Tm_1()
{
  v1 = type metadata accessor for GameLibraryAccessoryView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v1[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[6]);
  v5 = v0 + v2 + v1[7];
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
  }

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F921B58();
    (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F7AA884(char *a1)
{
  v3 = *(type metadata accessor for GameLibraryAccessoryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_24F7A4350(a1, v6, v7, v4, v5);
}

unint64_t sub_24F7AA9A4()
{
  result = qword_27F250268;
  if (!qword_27F250268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250268);
  }

  return result;
}

unint64_t sub_24F7AA9F8()
{
  result = qword_27F250270;
  if (!qword_27F250270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250260);
    sub_24F7AA9A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250270);
  }

  return result;
}

unint64_t sub_24F7AAABC()
{
  result = qword_27F250298;
  if (!qword_27F250298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250298);
  }

  return result;
}

uint64_t sub_24F7AAB10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250108);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250100);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2500F8);
  sub_24F7A52E4();
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F250160, &qword_27F250158);
  swift_getOpaqueTypeConformance2();
  sub_24F7A566C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t OptionSettingKey.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000027;
  if (v1 != 6)
  {
    v2 = 0xD000000000000026;
  }

  v3 = 0xD00000000000002FLL;
  if (v1 != 4)
  {
    v3 = 0xD00000000000002ELL;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000029;
  if (v1 == 2)
  {
    v4 = 0xD000000000000022;
  }

  if (*v0)
  {
    v5 = 0xD000000000000023;
  }

  else
  {
    v5 = 0xD000000000000036;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

unsigned __int8 *sub_24F7AAD68()
{
  v1 = *v0;
  v2 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v31[0]) = v1;
  v3 = NSUserDefaults.options(for:)(v31);

  if (!v3)
  {
    return 0;
  }

  if (!v3[2] || ((v5 = v3[4], v4 = v3[5], , result = , v7 = HIBYTE(v4) & 0xF, v8 = v5 & 0xFFFFFFFFFFFFLL, (v4 & 0x2000000000000000) != 0) ? (v9 = HIBYTE(v4) & 0xF) : (v9 = v5 & 0xFFFFFFFFFFFFLL), !v9))
  {

    return 0;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      v31[0] = v5;
      v31[1] = v4 & 0xFFFFFFFFFFFFFFLL;
      if (v5 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v11 = 0;
            v21 = v31 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                break;
              }

              v11 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v7)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_76:
        __break(1u);
        return result;
      }

      if (v5 != 45)
      {
        if (v7)
        {
          v11 = 0;
          v26 = v31;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v7)
      {
        if (--v7)
        {
          v11 = 0;
          v15 = v31 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        result = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_24F92C928();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v11 = 0;
            if (result)
            {
              v18 = result + 1;
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  goto LABEL_65;
                }

                v20 = 10 * v11;
                if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                {
                  goto LABEL_65;
                }

                v11 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_65;
                }

                ++v18;
                if (!--v7)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_75;
      }

      if (v10 != 45)
      {
        if (v8)
        {
          v11 = 0;
          if (result)
          {
            while (1)
            {
              v24 = *result - 48;
              if (v24 > 9)
              {
                goto LABEL_65;
              }

              v25 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_65;
              }

              v11 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v8)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v11 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_66;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v12 = result + 1;
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                goto LABEL_65;
              }

              v14 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_65;
              }

              v11 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                goto LABEL_65;
              }

              ++v12;
              if (!--v7)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v7) = 0;
LABEL_66:
          v32 = v7;
          v29 = v7;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v11 = sub_24F2D9F38(v5, v4, 10);
  v29 = v30;
LABEL_67:

  if (v29)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

GameStoreKit::OptionSettingKey_optional __swiftcall OptionSettingKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_24F7AB134()
{
  result = qword_27F2502A0;
  if (!qword_27F2502A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2502A0);
  }

  return result;
}

unint64_t sub_24F7AB1B0@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "oreKit.playTogetherSparseCount";
  v4 = 0xD000000000000027;
  if (v2 != 6)
  {
    v4 = 0xD000000000000026;
    v3 = "oreKit.homeContentLimit";
  }

  v5 = "oreKit.bagV3OfflineMaxAge";
  v6 = 0xD00000000000002FLL;
  result = 0xD00000000000002ELL;
  if (v2 != 4)
  {
    v6 = 0xD00000000000002ELL;
    v5 = "oreKit.playTogetherContentLimit";
  }

  if (*v1 <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v8 = "oreKit.debugOverlay";
  v9 = 0xD000000000000029;
  if (v2 == 2)
  {
    v9 = 0xD000000000000022;
  }

  else
  {
    v8 = "oreKit.bagV3MaxAge";
  }

  if (*v1)
  {
    v10 = 0xD000000000000023;
  }

  else
  {
    v10 = 0xD000000000000036;
  }

  if (*v1)
  {
    v11 = "scriptionStateOverride";
  }

  else
  {
    v11 = "reviewSummaryText";
  }

  if (*v1 > 1u)
  {
    v10 = v9;
    v11 = v8;
  }

  if (*v1 <= 3u)
  {
    v12 = v11;
  }

  else
  {
    v10 = v4;
    v12 = v3;
  }

  *a1 = v10;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

unint64_t sub_24F7AB29C()
{
  result = qword_27F2502A8;
  if (!qword_27F2502A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2502B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2502A8);
  }

  return result;
}

unint64_t sub_24F7AB3D0()
{
  result = qword_27F2502B8;
  if (!qword_27F2502B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2502B8);
  }

  return result;
}

uint64_t sub_24F7AB424(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  v26 = *(a1 + 16);
  sub_24F4578E0(0, v1, 0);
  v2 = v27;
  v4 = a1 + 56;
  result = sub_24F92C6B8();
  v6 = v26;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_26;
    }

    if (*(*(a1 + 48) + result))
    {
      if (*(*(a1 + 48) + result) == 1)
      {
        v11 = 0xEA0000000000796CLL;
        v12 = 0x6E4F656461637261;
      }

      else
      {
        v12 = 0xD000000000000015;
        v11 = 0x800000024FA3F9F0;
      }
    }

    else
    {
      v12 = 0x656C6C6174736E69;
      v11 = 0xED0000796C6E4F64;
    }

    v13 = *(a1 + 36);
    v15 = *(v27 + 16);
    v14 = *(v27 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_24F4578E0((v14 > 1), v15 + 1, 1);
      v6 = v26;
      v13 = v24;
      result = v25;
    }

    *(v27 + 16) = v15 + 1;
    v16 = v27 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_27;
    }

    v4 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v9);
    if ((v17 & v10) == 0)
    {
      goto LABEL_28;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 64 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_24E6586A8(result, v13, 0);
          v6 = v26;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_24E6586A8(result, v13, 0);
      v6 = v26;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_24F7AB6B0()
{
  v1 = v0;
  swift_getKeyPath();
  *v14 = v0;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E615E00(v0 + 16, v14);
  v2 = v15;
  v3 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v4 = (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_24F7ADA04(v4);
  swift_getKeyPath();
  *v14 = v1;
  sub_24F91FD88();

  sub_24E615E00(v1 + 16, v14);
  v5 = v15;
  v6 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v6 + 32))(&v13, v5, v6);
  LOBYTE(v4) = v13;
  __swift_destroy_boxed_opaque_existential_1(v14);
  v14[0] = v4 & 1;
  sub_24F7AC0B8(v14);
  swift_getKeyPath();
  *v14 = v1;
  sub_24F91FD88();

  sub_24E615E00(v1 + 16, v14);
  v7 = v15;
  v8 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v9 = (*(v8 + 56))(v7, v8);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return sub_24F7ADF6C(v9, v11);
}

uint64_t sub_24F7AB8E0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  *a1 = *(v1 + 72);
  return result;
}

uint64_t sub_24F7AB988()
{
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24F7ABA40(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_24F920678();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v34 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;

  sub_24F7ADB4C(v14);
  swift_getKeyPath();
  v42 = v1;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E615E00(v1 + 16, v43);
  v15 = v44;
  v16 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v17 = (*(v16 + 56))(v15, v16);
  if (!v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v19 = v17;
  v20 = v18;
  v35 = v13;
  v36 = v5;
  v37 = v1;
  __swift_destroy_boxed_opaque_existential_1(v43);
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = *(v39 + 16);
    v23 = (v39 + 8);
    v24 = a1 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v40 = *(v39 + 72);
    v41 = v22;
    while (1)
    {
      v41(v8, v24, v6);
      if (sub_24F920658() == v19 && v20 == v25)
      {
        break;
      }

      v26 = sub_24F92CE08();

      if (v26)
      {
        goto LABEL_11;
      }

      (*v23)(v8, v6);
      v24 += v40;
      if (!--v21)
      {
        goto LABEL_8;
      }
    }

LABEL_11:

    v30 = v38;
    v29 = v39;
    v31 = *(v39 + 32);
    v31(v38, v8, v6);
    v32 = v35;
    v31(v35, v30, v6);
    v33 = v36;
    v41(v36, v32, v6);
    (*(v29 + 56))(v33, 0, 1, v6);
    sub_24F7AC80C(v33);
    sub_24E601704(v33, &qword_27F2501E8);
    return (*(v29 + 8))(v32, v6);
  }

  else
  {
LABEL_8:

    v27 = v36;
    (*(v39 + 56))(v36, 1, 1, v6);
    sub_24F7AC80C(v27);
    return sub_24E601704(v27, &qword_27F2501E8);
  }
}

uint64_t sub_24F7ABE60()
{
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);

  return v1;
}

BOOL sub_24F7ABF28()
{
  v1 = v0;
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  swift_beginAccess();
  if (*(*(v0 + 64) + 16))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_24F91FD88();

  if (*(v0 + 72))
  {
    v3 = sub_24F92CE08();

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  sub_24F91FD88();

  return *(v1 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8) != 0;
}

uint64_t sub_24F7AC0B8(unsigned __int8 *a1)
{
  v2 = *a1;
  if (*(v1 + 72))
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x746E65636572;
  }

  if (*(v1 + 72))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (v2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x746E65636572;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v12 = v1;
      sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
      sub_24F91FD78();
    }
  }

  v11 = *(v1 + 72);
  *(v1 + 72) = v2;
  LOBYTE(v12) = v11;
  return sub_24F7ADD10(&v12);
}

uint64_t sub_24F7AC248(unsigned __int8 *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    swift_getKeyPath();
    sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
    sub_24F91FD88();

    v9 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24ED7D6EC(v8, v3);
  }

  else
  {
    swift_getKeyPath();
    sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
    sub_24F91FD88();

    v9 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24F7A5EE4(v3, v8);
  }

  swift_endAccess();
  v9 = v2;
  swift_getKeyPath();
  sub_24F91FD98();

  v9 = v2;
  sub_24F9280C8();
  swift_getKeyPath();
  v9 = v2;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  swift_beginAccess();
  v4 = v2[8];
  swift_getKeyPath();
  v8[0] = v2;

  sub_24F91FD88();

  v8[0] = v2;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  v5 = v2[5];
  v6 = v2[6];
  __swift_mutable_project_boxed_opaque_existential_1((v2 + 2), v5);
  (*(v6 + 16))(v4, v5, v6);
  swift_endAccess();
  v8[0] = v2;
  swift_getKeyPath();
  sub_24F91FD98();
}

uint64_t sub_24F7AC5B8()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v1 == 1;
    if (v1 == 1)
    {
      v3 = "trollerSupport.Text";
    }

    else
    {
      v3 = "_genresFilterOptions";
    }

    if (v2)
    {
      v4 = 0xD000000000000028;
    }

    else
    {
      v4 = 0xD000000000000033;
    }
  }

  else
  {
    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v3 = "f.FilterMenu.Arcade.Text";
    if (v6)
    {
      v4 = 0xD000000000000030;
    }

    else
    {
      v3 = "talled.iPad.Text";
      v4 = 0xD000000000000032;
    }
  }

  v8 = 0;
  v9 = 0xE000000000000000;

  v7 = v3 | 0x8000000000000000;
  return localizedString(_:comment:)(*&v4, *&v8)._countAndFlagsBits;
}

uint64_t sub_24F7AC698()
{
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();
}

uint64_t sub_24F7AC744@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  return sub_24F7AF388(v5 + v3, a1);
}

uint64_t sub_24F7AC80C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider___observationRegistrar;
  v29 = v2;
  v26[0] = sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  v26[1] = v13;
  sub_24F91FD88();

  v15 = *(v2 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);
  v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8);
  v27 = a1;
  sub_24F7AF388(a1, v12);
  v16 = sub_24F920678();
  v17 = *(v16 - 8);
  LODWORD(v13) = (*(v17 + 48))(v12, 1, v16);

  if (v13 == 1)
  {
    sub_24E601704(v12, &qword_27F2501E8);
    if (!v14)
    {
      goto LABEL_14;
    }

LABEL_11:
    v22 = 0;
    goto LABEL_17;
  }

  v18 = sub_24F920658();
  v20 = v19;
  (*(v17 + 8))(v12, v16);
  if (v14)
  {
    if (v20)
    {
      if (v15 == v18 && v14 == v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = sub_24F92CE08();
      }

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (!v20)
  {
LABEL_14:
    v22 = 1;
    goto LABEL_18;
  }

  v22 = 0;
LABEL_17:

LABEL_18:
  sub_24F7AF388(v27, v9);
  v23 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  sub_24F7AF388(v2 + v23, v6);
  LOBYTE(v23) = sub_24F7AF3F8(v6, v9);
  sub_24E601704(v6, &qword_27F2501E8);
  if (v23)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v26[-2] = v2;
    v26[-1] = v9;
    v28 = v2;
    sub_24F91FD78();
  }

  else
  {
    sub_24F7AF388(v9, v6);
    sub_24F7AE0EC(v6);
  }

  result = sub_24E601704(v9, &qword_27F2501E8);
  if ((v22 & 1) == 0)
  {
    v28 = v2;
    return sub_24F9280C8();
  }

  return result;
}

uint64_t sub_24F7ACBB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  swift_getKeyPath();
  v18 = v0;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  v18 = v0;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  v8 = MEMORY[0x277D84FA0];
  v0[8] = MEMORY[0x277D84FA0];

  v17 = v0;
  swift_getKeyPath();
  sub_24F91FD98();

  swift_getKeyPath();
  v17 = v0;
  sub_24F91FD88();

  v17 = v0;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  v10 = v0[5];
  v9 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  (*(v9 + 16))(v8, v10, v9);
  swift_endAccess();
  v17 = v0;
  swift_getKeyPath();
  sub_24F91FD98();

  v11 = sub_24F920678();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  sub_24F7AF388(v1 + v12, v4);
  LOBYTE(v12) = sub_24F7AF3F8(v4, v7);
  sub_24E601704(v4, &qword_27F2501E8);
  if (v12)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v15 - 2) = v1;
    *(&v15 - 1) = v7;
    v16 = v1;
    sub_24F91FD78();
  }

  else
  {
    sub_24F7AF388(v7, v4);
    sub_24F7AE0EC(v4);
  }

  sub_24E601704(v7, &qword_27F2501E8);
  v16 = v1;
  return sub_24F9280C8();
}

uint64_t GameSortOption.id.getter()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x746E65636572;
  }
}

GameStoreKit::GameSortOption_optional __swiftcall GameSortOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24F7AD03C@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t GameFilterOption.id.getter()
{
  v1 = 0x6E4F656461637261;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C6C6174736E69;
  }
}

GameStoreKit::GameFilterOption_optional __swiftcall GameFilterOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24F7AD25C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E4F656461637261;
  v4 = 0xEA0000000000796CLL;
  v5 = 0x800000024FA3F9F0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000015;
    v4 = 0x800000024FA3F9F0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656C6C6174736E69;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xED0000796C6E4F64;
  }

  v8 = 0x6E4F656461637261;
  if (*a2 == 1)
  {
    v5 = 0xEA0000000000796CLL;
  }

  else
  {
    v8 = 0xD000000000000015;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C6C6174736E69;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xED0000796C6E4F64;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

void sub_24F7AD374(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000796C6E4F64;
  v4 = 0xEA0000000000796CLL;
  v5 = 0x6E4F656461637261;
  if (v2 != 1)
  {
    v5 = 0xD000000000000015;
    v4 = 0x800000024FA3F9F0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C6C6174736E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24F7AD4DC()
{
  result = qword_27F2502D0;
  if (!qword_27F2502D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2502D0);
  }

  return result;
}

uint64_t sub_24F7AD530()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F7AD5E8()
{
  sub_24F92B218();
}

uint64_t sub_24F7AD68C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F7AD740@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  swift_beginAccess();
  return sub_24E615E00(v1 + 16, a1);
}

uint64_t sub_24F7AD800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  swift_beginAccess();
  return sub_24E615E00(v3 + 16, a2);
}

uint64_t sub_24F7AD8C0(uint64_t a1)
{
  sub_24E615E00(a1, v2);
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD78();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_24F7AD9A0(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + 16), a2);
  return swift_endAccess();
}

uint64_t sub_24F7ADA04(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24EDD4630(v3, a1);

  if (v4)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
    sub_24F91FD78();
  }
}

uint64_t sub_24F7ADB4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genresFilterOptions;

  v5 = sub_24EA18098(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
    sub_24F91FD78();
  }
}

uint64_t sub_24F7ADCA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

uint64_t sub_24F7ADD10(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath();
  v14 = v1;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  if (v3)
  {
    v4 = 1701667182;
  }

  else
  {
    v4 = 0x746E65636572;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*(v1 + 72))
  {
    v6 = 1701667182;
  }

  else
  {
    v6 = 0x746E65636572;
  }

  if (*(v1 + 72))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = sub_24F92CE08();

    if ((v9 & 1) == 0)
    {
      sub_24F9280C8();
      swift_getKeyPath();
      v14 = v2;
      sub_24F91FD88();

      v10 = *(v2 + 72);
      swift_getKeyPath();
      sub_24F91FD88();

      v14 = v2;
      swift_getKeyPath();
      sub_24F91FDA8();

      swift_beginAccess();
      v11 = *(v2 + 40);
      v12 = *(v2 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v11);
      v13 = v10;
      (*(v12 + 40))(&v13, v11, v12);
      swift_endAccess();
      v14 = v2;
      swift_getKeyPath();
      sub_24F91FD98();
    }
  }

  return result;
}

uint64_t sub_24F7ADF6C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);
  v6 = *(v2 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_24F92CE08() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
    sub_24F91FD78();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  return sub_24F7AE734();
}

uint64_t sub_24F7AE0EC(uint64_t a1)
{
  v3 = sub_24F920678();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  sub_24F7AF70C(a1, v1 + v10);
  swift_endAccess();
  swift_getKeyPath();
  v18 = v1;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  sub_24F7AF388(v1 + v10, v9);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_24E601704(v9, &qword_27F2501E8);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_24E601704(v9, &qword_27F2501E8);
    v13 = sub_24F920658();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v12 = v15;
    v11 = v13;
  }

  sub_24F7ADF6C(v11, v12);
  return sub_24E601704(a1, &qword_27F2501E8);
}

uint64_t sub_24F7AE374@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  return sub_24F7AF388(v3 + v4, a2);
}

uint64_t sub_24F7AE43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24F7AF388(a1, &v6 - v3);
  return sub_24F7AE4D0(v4);
}

uint64_t sub_24F7AE4D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v9 - v4;
  v6 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  sub_24F7AF388(v1 + v6, v5);
  LOBYTE(v6) = sub_24F7AF3F8(v5, a1);
  sub_24E601704(v5, &qword_27F2501E8);
  if (v6)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v1;
    v9[-1] = a1;
    v9[2] = v1;
    sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
    sub_24F91FD78();
  }

  else
  {
    sub_24F7AF388(a1, v5);
    sub_24F7AE0EC(v5);
  }

  return sub_24E601704(a1, &qword_27F2501E8);
}

uint64_t sub_24F7AE698(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  sub_24F7AF388(a2, &v7 - v4);
  return sub_24F7AE0EC(v5);
}

uint64_t sub_24F7AE734()
{
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8);
  swift_getKeyPath();

  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v3);
  (*(v4 + 64))(v1, v2, v3, v4);
  swift_endAccess();
  swift_getKeyPath();
  sub_24F91FD98();
}

uint64_t sub_24F7AE8E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);
  a2[1] = v4;
}

uint64_t sub_24F7AE99C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F7ADF6C(v1, v2);
}

uint64_t sub_24F7AE9DC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter, &qword_27F2501E8);

  v1 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24F7AEAD4()
{
  v1 = sub_24F92B098();
  v2 = [v0 arrayForKey_];

  if (!v2 || (v3 = sub_24F92B5A8(), v2, v4 = sub_24E9E2340(v3), result = , !v4))
  {

    v4 = MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = *(v4 + 16);
  v8 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = v4 + 40 + 16 * v6;
  while (1)
  {
    if (v7 == v6)
    {

      v14 = sub_24F45D990(v8);

      return v14;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    ++v6;
    v10 = v9 + 16;

    v11 = sub_24F92CB88();

    v9 = v10;
    if (v11 < 3)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E617978(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_24E617978((v12 > 1), v13 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + v13 + 32) = v11;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_24F7AEC9C(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v4 = (v2 & 1) == 0;
    v5 = 1701667182;
    if (v4)
    {
      v5 = 0x746E65636572;
    }

    v6 = 0xE600000000000000;
    if (!v4)
    {
      v6 = 0xE400000000000000;
    }

    v8[0] = v5;
    v8[1] = v6;
    v3 = sub_24F92CDE8();
    sub_24EB715C4(v8);
  }

  v7 = sub_24F92B098();
  [v1 setObject:v3 forKey:v7];
  swift_unknownObjectRelease();
}

void sub_24F7AED8C(uint64_t a1)
{
  v2 = *v1;
  sub_24F7AB424(a1);

  v3 = sub_24F92B588();

  v4 = sub_24F92B098();
  [v2 setObject:v3 forKey:v4];
}

void sub_24F7AEE40(char *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_24F92B098();
  v5 = [v3 stringForKey_];

  if (v5)
  {
    sub_24F92B0D8();

    v6 = sub_24F92CB88();

    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 2;
  }

  *a1 = v7;
}

uint64_t sub_24F7AEF40()
{
  v1 = *v0;
  v2 = sub_24F92B098();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24F92B0D8();

  return v4;
}

void sub_24F7AEFD8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_24F92B098();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_24F92B098();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for GameLibraryOptionProvider()
{
  result = qword_27F2502F8;
  if (!qword_27F2502F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7AF0F0()
{
  sub_24F7AF1F4();
  if (v0 <= 0x3F)
  {
    sub_24F91FDC8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24F7AF1F4()
{
  if (!qword_27F250308)
  {
    sub_24F920678();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F250308);
    }
  }
}

uint64_t sub_24F7AF254()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 72);
  *(v1 + 72) = *(v0 + 24);
  v4 = v2;
  return sub_24F7ADD10(&v4);
}

uint64_t sub_24F7AF2EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F7ADF6C(v1, v2);
}

uint64_t sub_24F7AF32C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);
  *v2 = v0[3];
  v2[1] = v1;

  return sub_24F7AE734();
}

uint64_t sub_24F7AF388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7AF3F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F920678();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250310);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_24F7AF388(a1, &v21 - v12);
  sub_24F7AF388(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24F7AF388(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24F7AA2B0(&qword_27F2252D0, MEMORY[0x277D0CDA0]);
      v18 = sub_24F92AFF8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_24E601704(v13, &qword_27F2501E8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_24E601704(v13, &qword_27F250310);
    v17 = 1;
    return v17 & 1;
  }

  sub_24E601704(v13, &qword_27F2501E8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_24F7AF70C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7AF784()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genresFilterOptions) = *(v0 + 24);
}

unint64_t sub_24F7AF7C8()
{
  result = qword_27F250318;
  if (!qword_27F250318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250318);
  }

  return result;
}

unint64_t sub_24F7AF81C()
{
  result = qword_27F250320;
  if (!qword_27F250320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250320);
  }

  return result;
}

uint64_t sub_24F7AF8B8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_24F7AFA50(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for LargePlayerLockup()
{
  result = qword_27F250328;
  if (!qword_27F250328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7AFC20()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlayerAvatar(319);
    if (v1 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v2 <= 0x3F)
      {
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
          if (v4 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F7AFD3C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2503D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B1B08();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for LargePlayerLockup();
    v8[14] = 1;
    type metadata accessor for PlayerAvatar(0);
    sub_24F7B1C24(&qword_27F218A38, type metadata accessor for PlayerAvatar);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    sub_24F929608();
    sub_24F7B1C24(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v8[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7B00F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v42);
  v43 = v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = v40 - v5;
  v6 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v6);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2503C0);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  v12 = type metadata accessor for LargePlayerLockup();
  MEMORY[0x28223BE20](v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v50 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[v12[9]];
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v49 = v19;
  sub_24E61DA68(&v53, v19, qword_27F21B590);
  v20 = v12[10];
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v51 = v20;
  v22(&v14[v20], 1, 1, v21);
  v23 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F7B1B08();
  v47 = v11;
  v24 = v48;
  sub_24F92D108();
  if (v24)
  {
    v26 = v50;
    __swift_destroy_boxed_opaque_existential_1(v52);
    v27 = v49;
    sub_24E601704(&v14[v26], &qword_27F213E68);
    sub_24E601704(v27, qword_27F24EC90);
    return sub_24E601704(&v14[v51], &qword_27F215440);
  }

  else
  {
    v48 = v17;
    v25 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v56 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v28 = v54;
    *v14 = v53;
    *(v14 + 1) = v28;
    *(v14 + 4) = v55;
    LOBYTE(v53) = 1;
    sub_24F7B1C24(&qword_27F2185A0, type metadata accessor for PlayerAvatar);
    sub_24F92CC68();
    v29 = v50;
    sub_24E72FFFC(v8, &v14[v12[5]]);
    LOBYTE(v53) = 2;
    v30 = sub_24F92CC28();
    v31 = v12[6];
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(v53) = 3;
    v33 = sub_24F92CBC8();
    v34 = v49;
    v35 = &v14[v12[7]];
    *v35 = v33;
    v35[1] = v36;
    v40[1] = v36;
    LOBYTE(v53) = 4;
    sub_24F7B1C24(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E61DA68(v25, &v14[v29], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v56 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v37 = v45;
    sub_24E61DA68(&v53, v34, qword_27F24EC90);
    LOBYTE(v53) = 6;
    sub_24E65CAA0();
    v38 = v43;
    sub_24F92CC68();
    (*(v37 + 8))(v47, v46);
    sub_24E61DA68(v38, &v14[v51], &qword_27F215440);
    sub_24F7B1B5C(v14, v41, type metadata accessor for LargePlayerLockup);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return sub_24F7B1BC4(v14, type metadata accessor for LargePlayerLockup);
  }
}

uint64_t sub_24F7B0904()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  if (v1 != 5)
  {
    v3 = 0x4D747865746E6F63;
  }

  v4 = 0x656C746974627573;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x726174617661;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F7B09D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7B1DE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F7B09FC(uint64_t a1)
{
  v2 = sub_24F7B1B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7B0A38(uint64_t a1)
{
  v2 = sub_24F7B1B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7B0A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F7B0BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250348);
  MEMORY[0x28223BE20](v2);
  v4 = &v20[-v3 - 8];
  *v4 = sub_24F924C88();
  *(v4 + 1) = 0x4028000000000000;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250350);
  sub_24F7B0DA8(a1, &v4[*(v5 + 44)]);
  v6 = sub_24F925808();
  sub_24F923318();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250358) + 36)];
  *v15 = v6;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  v4[*(v2 + 36)] = 0;
  v16 = type metadata accessor for LargePlayerLockup();
  sub_24E60169C(a1 + *(v16 + 36), v20, qword_27F24EC90);
  sub_24E601704(v20, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v17 = sub_24F9248C8();
  __swift_project_value_buffer(v17, qword_27F39F078);
  sub_24F7B1978();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v4, &qword_27F250348);
}

uint64_t sub_24F7B0DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250380);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250388);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  v19 = type metadata accessor for LargePlayerLockup();
  sub_24F7B1B5C(a1 + *(v19 + 20), v11, type metadata accessor for PlayerAvatar);
  v30 = 7;
  sub_24F8319B8(v11, &v30, v18);
  v20 = sub_24F927618();
  v22 = v21;
  KeyPath = swift_getKeyPath();
  v24 = &v18[*(v13 + 44)];
  *v24 = KeyPath;
  v24[8] = 0;
  *(v24 + 2) = v20;
  *(v24 + 3) = v22;
  *v8 = sub_24F924C88();
  *(v8 + 1) = 0x4000000000000000;
  v8[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250390);
  sub_24F7B1084(a1, &v8[*(v25 + 44)]);
  sub_24E60169C(v18, v15, &qword_27F250388);
  sub_24E60169C(v8, v5, &qword_27F250380);
  v26 = v29;
  sub_24E60169C(v15, v29, &qword_27F250388);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250398);
  sub_24E60169C(v5, v26 + *(v27 + 48), &qword_27F250380);
  sub_24E601704(v8, &qword_27F250380);
  sub_24E601704(v18, &qword_27F250388);
  sub_24E601704(v5, &qword_27F250380);
  return sub_24E601704(v15, &qword_27F250388);
}

uint64_t sub_24F7B1084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246980);
  MEMORY[0x28223BE20](v3);
  v5 = &v64 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2503A0);
  MEMORY[0x28223BE20](v82);
  v77 = &v64 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2503A8);
  MEMORY[0x28223BE20](v75);
  v80 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v64 - v9;
  MEMORY[0x28223BE20](v10);
  v79 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2503B0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v78 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v69 = type metadata accessor for LargePlayerLockup();
  v18 = (a1 + *(v69 + 24));
  v19 = v18[1];
  v83 = *v18;
  v84 = v19;
  v20 = sub_24E600AEC();

  v73 = v20;
  v65 = sub_24F925E18();
  v66 = v21;
  v23 = v22;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v74 = v3;
  v27 = &v17[*(v3 + 36)];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDC0);
  v28 = *(v72 + 28);
  v29 = *MEMORY[0x277CE0B28];
  v30 = sub_24F925C38();
  v31 = *(v30 - 8);
  v32 = *(v31 + 104);
  v71 = v29;
  v67 = v31 + 104;
  v68 = v32;
  v32(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  *v17 = v65;
  *(v17 + 1) = v23;
  v17[16] = v25 & 1;
  *(v17 + 3) = v66;
  *(v17 + 4) = KeyPath;
  *(v17 + 5) = 1;
  v17[48] = 0;
  sub_24F9258D8();
  v33 = sub_24F9258E8();

  v34 = swift_getKeyPath();
  v35 = &v17[*(v82 + 36)];
  *v35 = v34;
  v35[1] = v33;
  *&v17[*(v13 + 44)] = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v36 = (v70 + *(v69 + 28));
  v37 = v36[1];
  if (v37)
  {
    v38 = *v36;
    v39 = v37;
  }

  else
  {
    v39 = 0xE100000000000000;
    v38 = 32;
  }

  v83 = v38;
  v84 = v39;

  v40 = sub_24F925E18();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = swift_getKeyPath();
  v48 = &v5[*(v74 + 36)];
  v68(v48 + *(v72 + 28), v71, v30);
  *v48 = swift_getKeyPath();
  *v5 = v40;
  *(v5 + 1) = v42;
  v5[16] = v44 & 1;
  *(v5 + 3) = v46;
  *(v5 + 4) = v47;
  *(v5 + 5) = 1;
  v5[48] = 0;
  sub_24F925A18();
  sub_24F925938();
  v49 = sub_24F9259A8();

  v50 = swift_getKeyPath();
  v51 = v77;
  sub_24E6009C8(v5, v77, &qword_27F246980);
  v52 = (v51 + *(v82 + 36));
  *v52 = v50;
  v52[1] = v49;
  LODWORD(v50) = sub_24F9251C8();
  v53 = v76;
  v54 = &v76[*(v75 + 36)];
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
  v56 = *MEMORY[0x277CE13B8];
  v57 = sub_24F927748();
  (*(*(v57 - 8) + 104))(&v54[v55], v56, v57);
  *v54 = v50;
  sub_24E6009C8(v51, v53, &qword_27F2503A0);
  v58 = v79;
  sub_24E6009C8(v53, v79, &qword_27F2503A8);
  v59 = v78;
  sub_24E60169C(v17, v78, &qword_27F2503B0);
  v60 = v80;
  sub_24E60169C(v58, v80, &qword_27F2503A8);
  v61 = v81;
  sub_24E60169C(v59, v81, &qword_27F2503B0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2503B8);
  sub_24E60169C(v60, v61 + *(v62 + 48), &qword_27F2503A8);
  sub_24E601704(v58, &qword_27F2503A8);
  sub_24E601704(v17, &qword_27F2503B0);
  sub_24E601704(v60, &qword_27F2503A8);
  return sub_24E601704(v59, &qword_27F2503B0);
}

uint64_t sub_24F7B1690@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924258();
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  __asm { FMOV            V0.2D, #26.0 }

  *v7 = _Q0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  v18 = MEMORY[0x277CDFC08];
  sub_24F7B1B5C(v7, v4, MEMORY[0x277CDFC08]);
  sub_24F7B1C24(&qword_27F229928, MEMORY[0x277CDFC08]);
  v19 = sub_24F927348();
  result = sub_24F7B1BC4(v7, v18);
  *(a1 + 40) = v19;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_24F7B1830()
{
  sub_24F47D5A8();

  return sub_24F9218E8();
}

unint64_t sub_24F7B18C0()
{
  result = qword_27F250340;
  if (!qword_27F250340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250340);
  }

  return result;
}

unint64_t sub_24F7B1978()
{
  result = qword_27F250360;
  if (!qword_27F250360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250348);
    sub_24F7B1A30();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250360);
  }

  return result;
}

unint64_t sub_24F7B1A30()
{
  result = qword_27F250368;
  if (!qword_27F250368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250358);
    sub_24E602068(&qword_27F250370, &qword_27F250378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250368);
  }

  return result;
}

unint64_t sub_24F7B1B08()
{
  result = qword_27F2503C8;
  if (!qword_27F2503C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2503C8);
  }

  return result;
}

uint64_t sub_24F7B1B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7B1BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7B1C24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7B1C7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250348);
  sub_24F7B1978();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F7B1CE4()
{
  result = qword_27F2503D8;
  if (!qword_27F2503D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2503D8);
  }

  return result;
}

unint64_t sub_24F7B1D3C()
{
  result = qword_27F2503E0;
  if (!qword_27F2503E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2503E0);
  }

  return result;
}

unint64_t sub_24F7B1D94()
{
  result = qword_27F2503E8[0];
  if (!qword_27F2503E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F2503E8);
  }

  return result;
}

uint64_t sub_24F7B1DE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_24F7B2044()
{
  result = qword_27F216360;
  if (!qword_27F216360)
  {
    type metadata accessor for ResetRequestReviewPropertiesIfNeededAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216360);
  }

  return result;
}

uint64_t sub_24F7B209C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24EA8880C(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24F7B3088(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24FA29E30;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24F7B22CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a1;
  v3[16] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  v3[17] = swift_task_alloc();
  type metadata accessor for ResetRequestReviewPropertiesIfNeededAction();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = type metadata accessor for ASKBagContract();
  v6 = swift_task_alloc();
  v3[25] = v6;
  *v6 = v3;
  v6[1] = sub_24F7B2470;

  return MEMORY[0x28217F228](v3 + 14, v5, v5);
}

uint64_t sub_24F7B2470()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24F7B2EE0;
  }

  else
  {
    v2 = sub_24F7B2584;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7B2584()
{
  v76 = v0;
  if (qword_27F210A70 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_24F92A448();
  sub_24F92A408();
  (*(v2 + 8))(v1, v3);
  v4 = v0[3];
  v74 = v0[2];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[16];
  v8 = sub_24F9220D8();
  __swift_project_value_buffer(v8, qword_27F39E8E0);
  sub_24EA8880C(v7, v6);
  sub_24EA8880C(v7, v5);

  v9 = sub_24F9220B8();
  v10 = sub_24F92BD98();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[20];
  v12 = v0[21];
  if (v11)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v75 = v15;
    *v14 = 136315650;
    v16 = *(v12 + 16);
    v17 = *(v12 + 24);

    sub_24EA88870(v12);
    v18 = sub_24E7620D4(v16, v17, &v75);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = v13[1];
    v0[12] = *v13;
    v0[13] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
    v20 = sub_24F92B188();
    v22 = v21;
    sub_24EA88870(v13);
    v23 = sub_24E7620D4(v20, v22, &v75);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2080;
    v24 = v74;
    *(v14 + 24) = sub_24E7620D4(v74, v4, &v75);
    _os_log_impl(&dword_24E5DD000, v9, v10, "ResetAppDefaults: \n    currentAppVersion: %s\n    requestReviewPropertiesLastResetAppVersion: %s\n    requestReviewResetAppVersion: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v15, -1, -1);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  else
  {

    sub_24EA88870(v13);
    sub_24EA88870(v12);
    v24 = v74;
  }

  v25 = v0[16];
  v26 = v0[17];
  v27 = *(v25 + 24);
  v73 = *(v25 + 16);
  v0[4] = v73;
  v0[5] = v27;
  v0[6] = v24;
  v0[7] = v4;
  v28 = sub_24F91F7C8();
  v29 = *(*(v28 - 8) + 56);
  v29(v26, 1, 1, v28);
  sub_24E600AEC();

  v30 = sub_24F92C5E8();
  sub_24ECB88E4(v26);

  if (v30 == -1)
  {
    sub_24EA8880C(v0[16], v0[18]);

    v40 = sub_24F9220B8();
    v41 = sub_24F92BD98();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[18];
    if (!v42)
    {

      sub_24EA88870(v43);
      goto LABEL_25;
    }

    v44 = v24;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v75 = v46;
    *v45 = 136315394;
    v47 = *(v43 + 16);
    v48 = *(v43 + 24);

    sub_24EA88870(v43);
    v49 = sub_24E7620D4(v47, v48, &v75);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v50 = sub_24E7620D4(v44, v4, &v75);

    *(v45 + 14) = v50;
    _os_log_impl(&dword_24E5DD000, v40, v41, "ResetAppDefaults: No. Because app version %s is older than reset version %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v46, -1, -1);
    v51 = v45;
    goto LABEL_20;
  }

  v31 = v0[16];
  v32 = v31[1];
  if (!v32)
  {
    sub_24EA8880C(v31, v0[19]);

    v52 = sub_24F9220B8();
    v53 = sub_24F92BD98();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v0[19];
    if (v54)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v75 = v57;
      *v56 = 136315394;
      v59 = *(v55 + 16);
      v58 = *(v55 + 24);

      sub_24EA88870(v55);
      v60 = sub_24E7620D4(v59, v58, &v75);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      v61 = sub_24E7620D4(v74, v4, &v75);

      *(v56 + 14) = v61;
      _os_log_impl(&dword_24E5DD000, v52, v53, "ResetAppDefaults: Yes. The counters are never reset. And app version %s is the same or newer than reset version %s.", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v57, -1, -1);
      MEMORY[0x2530542D0](v56, -1, -1);
    }

    else
    {

      sub_24EA88870(v55);
    }

    sub_24F7B3228(v73, v27);

    goto LABEL_25;
  }

  v33 = *v31;
  v34 = v24;
  v35 = v0[17];
  v0[8] = v34;
  v0[9] = v4;
  v72 = v33;
  v0[10] = v33;
  v0[11] = v32;
  v29(v35, 1, 1, v28);
  v36 = sub_24F92C5E8();
  sub_24ECB88E4(v35);
  if (v36 != 1)
  {

    v40 = sub_24F9220B8();
    v62 = sub_24F92BD98();

    if (!os_log_type_enabled(v40, v62))
    {

      goto LABEL_25;
    }

    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v75 = v64;
    *v63 = 136315394;
    v65 = sub_24E7620D4(v74, v4, &v75);

    *(v63 + 4) = v65;
    *(v63 + 12) = 2080;
    v66 = sub_24E7620D4(v72, v32, &v75);

    *(v63 + 14) = v66;
    _os_log_impl(&dword_24E5DD000, v40, v62, "ResetAppDefaults: No. Reset version %s must be newer than last reset version %s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v64, -1, -1);
    v51 = v63;
LABEL_20:
    MEMORY[0x2530542D0](v51, -1, -1);

    goto LABEL_25;
  }

  v37 = sub_24F9220B8();
  v38 = sub_24F92BD98();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_24E5DD000, v37, v38, "ResetAppDefaults: Yes.", v39, 2u);
    MEMORY[0x2530542D0](v39, -1, -1);
  }

  sub_24F7B3228(v73, v27);

LABEL_25:
  v67 = v0[15];
  v68 = *MEMORY[0x277D21CA8];
  v69 = sub_24F928AE8();
  (*(*(v69 - 8) + 104))(v67, v68, v69);

  v70 = v0[1];

  return v70();
}

uint64_t sub_24F7B2EE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7B2F90()
{
  v1 = (type metadata accessor for ResetRequestReviewPropertiesIfNeededAction() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[8];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F7B3088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7B30EC(uint64_t a1)
{
  v4 = *(type metadata accessor for ResetRequestReviewPropertiesIfNeededAction() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F7B22CC(a1, v6, v1 + v5);
}

uint64_t sub_24F7B31E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_24F7B3228(uint64_t a1, unint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  NSUserDefaults.appLaunchCount.setter(1);

  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E8E0);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v7, v8, "appLaunchCount set to 1", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v10 = [v4 standardUserDefaults];
  sub_24F008CB4(0);

  v11 = sub_24F9220B8();
  v12 = sub_24F92BD98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24E5DD000, v11, v12, "gameLaunchCount set to 0", v13, 2u);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  v14 = [v4 standardUserDefaults];

  sub_24F00940C(a1, a2);

  oslog = sub_24F9220B8();
  v15 = sub_24F92BD98();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_24E7620D4(a1, a2, &v19);
    _os_log_impl(&dword_24E5DD000, oslog, v15, "requestReviewPropertiesLastResetAppVersion set to %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x2530542D0](v17, -1, -1);
    MEMORY[0x2530542D0](v16, -1, -1);
  }
}

uint64_t sub_24F7B3518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F7B3668(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardSetCard()
{
  result = qword_27F250470;
  if (!qword_27F250470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7B37F0()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      sub_24E67D9A0(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
      if (v2 <= 0x3F)
      {
        sub_24E61C8D4();
        if (v3 <= 0x3F)
        {
          sub_24E67D9A0(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F7B38FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250530);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B5F8C();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CCA8();
    type metadata accessor for LeaderboardSetCard();
    v8[12] = 3;
    sub_24F9289E8();
    sub_24F7B60A8(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F929608();
    sub_24F7B60A8(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7B3C88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250520);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v33 - v9;
  v11 = type metadata accessor for LeaderboardSetCard();
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v12[9];
  v16 = sub_24F9289E8();
  v17 = *(*(v16 - 8) + 56);
  v42 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = &v14[v12[10]];
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v40 = v18;
  sub_24E61DA68(&v44, v18, qword_27F21B590);
  v19 = v12[11];
  v20 = sub_24F929608();
  v21 = *(*(v20 - 8) + 56);
  v41 = v19;
  v21(&v14[v19], 1, 1, v20);
  v22 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24F7B5F8C();
  v38 = v10;
  v23 = v39;
  sub_24F92D108();
  if (v23)
  {
    v26 = v40;
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_24E601704(&v14[v42], &qword_27F213FB0);
    sub_24E601704(v26, qword_27F24EC90);
    return sub_24E601704(&v14[v41], &qword_27F213E68);
  }

  else
  {
    v39 = v16;
    v33[1] = v20;
    v24 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v47 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v25 = v37;
    sub_24F92CC68();
    v27 = v45;
    *v14 = v44;
    *(v14 + 1) = v27;
    *(v14 + 4) = v46;
    LOBYTE(v44) = 1;
    *(v14 + 5) = sub_24F92CC28();
    *(v14 + 6) = v28;
    LOBYTE(v44) = 2;
    *(v14 + 7) = sub_24F92CBC8();
    *(v14 + 8) = v29;
    v33[0] = v29;
    LOBYTE(v44) = 3;
    sub_24F7B60A8(&qword_27F214018, MEMORY[0x277D21C48]);
    sub_24F92CC18();
    sub_24E61DA68(v7, &v14[v42], &qword_27F213FB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v47 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    v30 = v38;
    sub_24F92CC68();
    sub_24E61DA68(&v44, v40, qword_27F24EC90);
    LOBYTE(v44) = 5;
    sub_24F7B60A8(&qword_27F213F48, MEMORY[0x277D21F70]);
    v31 = v35;
    sub_24F92CC18();
    (*(v24 + 8))(v30, v25);
    sub_24E61DA68(v31, &v14[v41], &qword_27F213E68);
    sub_24F7B5FE0(v14, v34, type metadata accessor for LeaderboardSetCard);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_24F7B6048(v14, type metadata accessor for LeaderboardSetCard);
  }
}

uint64_t sub_24F7B4380()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6B726F77747261;
  v4 = 0x6575676573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F7B442C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7B627C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F7B4454(uint64_t a1)
{
  v2 = sub_24F7B5F8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7B4490(uint64_t a1)
{
  v2 = sub_24F7B5F8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7B454C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v46 = a1;
  v49 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  MEMORY[0x28223BE20](v47);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250490);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250498);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504A0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504A8);
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  *v13 = sub_24F924C88();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504B0);
  sub_24F7B4B20(a1, &v13[*(v25 + 44)]);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v13, v17, &qword_27F250490);
  v26 = &v17[*(v15 + 44)];
  v27 = v60;
  *(v26 + 4) = v59;
  *(v26 + 5) = v27;
  *(v26 + 6) = v61;
  v28 = v56;
  *v26 = v55;
  *(v26 + 1) = v28;
  v29 = v58;
  *(v26 + 2) = v57;
  *(v26 + 3) = v29;
  v30 = &v21[*(v19 + 44)];
  v31 = *(sub_24F924258() + 20);
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_24F924B38();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = a4;
  v30[1] = a4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48);
  v35 = *(v34 + 36);
  v36 = type metadata accessor for GradientBackground(0);
  (*(*(v36 - 8) + 56))(v30 + v35, 1, 1, v36);
  *(v30 + *(v34 + 40)) = 0.0;
  sub_24E6009C8(v17, v21, &qword_27F250498);
  v37 = sub_24F927618();
  v39 = v38;
  v48 = v22;
  v40 = &v24[*(v22 + 36)];
  v41 = sub_24E6A4C1C();
  sub_24F924B68();
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E810);
  v54[0] = &type metadata for GameOverlayViewPredicate;
  v54[1] = v41;
  swift_getOpaqueTypeConformance2();
  sub_24F0C1E88();
  sub_24F927578();
  v42 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238ED8) + 36)];
  *v42 = v37;
  v42[1] = v39;
  sub_24E6009C8(v21, v24, &qword_27F2504A0);
  v43 = type metadata accessor for LeaderboardSetCard();
  sub_24E60169C(v46 + *(v43 + 32), v54, qword_27F24EC90);
  sub_24E601704(v54, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v44 = sub_24F9248C8();
  __swift_project_value_buffer(v44, qword_27F39F078);
  sub_24F7B5D64();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v24, &qword_27F2504A8);
}

uint64_t sub_24F7B4B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504D8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504E0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v17 = type metadata accessor for LeaderboardSetCard();
  sub_24E60169C(a1 + *(v17 + 28), v16, &qword_27F213FB0);
  sub_24F927618();
  sub_24F9238C8();
  v18 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F18) + 36)];
  v19 = v29;
  *v18 = v28;
  *(v18 + 1) = v19;
  *(v18 + 2) = v30;
  *&v16[*(v11 + 44)] = 0;
  *v9 = sub_24F924C88();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504E8);
  sub_24F7B4E44(a1, &v9[*(v20 + 44)]);
  sub_24F927618();
  sub_24F9238C8();
  v21 = &v9[*(v4 + 44)];
  v22 = v32;
  *v21 = v31;
  *(v21 + 1) = v22;
  *(v21 + 2) = v33;
  sub_24E60169C(v16, v13, &qword_27F2504E0);
  sub_24E60169C(v9, v6, &qword_27F2504D8);
  v23 = v27;
  sub_24E60169C(v13, v27, &qword_27F2504E0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504F0);
  sub_24E60169C(v6, v23 + *(v24 + 48), &qword_27F2504D8);
  sub_24E601704(v9, &qword_27F2504D8);
  sub_24E601704(v16, &qword_27F2504E0);
  sub_24E601704(v6, &qword_27F2504D8);
  return sub_24E601704(v13, &qword_27F2504E0);
}

uint64_t sub_24F7B4E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504F8);
  MEMORY[0x28223BE20](v102);
  v103 = &v100 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250500);
  v115 = *(v4 - 8);
  v116 = v4;
  MEMORY[0x28223BE20](v4);
  v105 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = &v100 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250508);
  MEMORY[0x28223BE20](v8 - 8);
  v117 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v119 = &v100 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v108 = *(v12 - 8);
  v109 = v12;
  MEMORY[0x28223BE20](v12);
  v106 = &v100 - v13;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177A8);
  MEMORY[0x28223BE20](v107);
  v111 = &v100 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250510);
  MEMORY[0x28223BE20](v110);
  v114 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v112 = &v100 - v17;
  MEMORY[0x28223BE20](v18);
  v120 = &v100 - v19;
  v113 = a1;
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  *&v130 = v20;
  *(&v130 + 1) = v21;
  v22 = sub_24E600AEC();

  v101 = v22;
  v23 = sub_24F925E18();
  v25 = v24;
  v27 = v26;
  sub_24F9258D8();
  v28 = sub_24F925C98();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v106;

  sub_24E600B40(v23, v25, v27 & 1);

  *&v130 = v28;
  *(&v130 + 1) = v30;
  LOBYTE(v131) = v32 & 1;
  *(&v131 + 1) = v34;
  sub_24F9268B8();
  sub_24E600B40(v28, v30, v32 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  inited = swift_initStackObject();
  v100 = xmmword_24F93A400;
  *(inited + 16) = xmmword_24F93A400;
  LOBYTE(v25) = sub_24F925818();
  *(inited + 32) = v25;
  v37 = sub_24F9257F8();
  *(inited + 33) = v37;
  v38 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v25)
  {
    v38 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v37)
  {
    v38 = sub_24F925848();
  }

  v39 = v119;
  sub_24F923318();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v111;
  (*(v108 + 32))(v111, v35, v109);
  v49 = v48 + *(v107 + 36);
  *v49 = v38;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  sub_24F9275A8();
  sub_24F9242E8();
  v50 = v112;
  sub_24E6009C8(v48, v112, &qword_27F2177A8);
  v51 = (v50 + *(v110 + 36));
  v52 = v128;
  v51[4] = v127;
  v51[5] = v52;
  v51[6] = v129;
  v53 = v124;
  *v51 = v123;
  v51[1] = v53;
  v54 = v126;
  v51[2] = v125;
  v51[3] = v54;
  sub_24E6009C8(v50, v120, &qword_27F250510);
  v55 = *(v113 + 64);
  if (v55)
  {
    *&v130 = *(v113 + 56);
    *(&v130 + 1) = v55;

    v56 = sub_24F925E18();
    v58 = v57;
    v60 = v59;
    sub_24F925A18();
    v113 = sub_24F925C98();
    v62 = v61;
    v64 = v63;
    v66 = v65;

    sub_24E600B40(v56, v58, v60 & 1);

    v67 = swift_initStackObject();
    *(v67 + 16) = v100;
    v68 = sub_24F925828();
    *(v67 + 32) = v68;
    v69 = sub_24F9257F8();
    *(v67 + 33) = v69;
    v70 = sub_24F925848();
    sub_24F925848();
    if (sub_24F925848() != v68)
    {
      v70 = sub_24F925848();
    }

    sub_24F925848();
    if (sub_24F925848() != v69)
    {
      v70 = sub_24F925848();
    }

    sub_24F923318();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v79 = v64 & 1;
    v122 = v64 & 1;
    v121 = 0;
    v80 = sub_24F9251C8();
    v81 = v103;
    v82 = &v103[*(v102 + 36)];
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v84 = *MEMORY[0x277CE13B8];
    v85 = sub_24F927748();
    (*(*(v85 - 8) + 104))(&v82[v83], v84, v85);
    *v82 = v80;
    *v81 = v113;
    *(v81 + 8) = v62;
    *(v81 + 16) = v79;
    *(v81 + 24) = v66;
    *(v81 + 32) = v70;
    *(v81 + 40) = v72;
    *(v81 + 48) = v74;
    *(v81 + 56) = v76;
    *(v81 + 64) = v78;
    *(v81 + 72) = 0;
    sub_24F9275C8();
    sub_24F9242E8();
    v86 = v105;
    sub_24E6009C8(v81, v105, &qword_27F2504F8);
    v87 = v116;
    v88 = (v86 + *(v116 + 36));
    v89 = v135;
    v88[4] = v134;
    v88[5] = v89;
    v88[6] = v136;
    v90 = v131;
    *v88 = v130;
    v88[1] = v90;
    v91 = v133;
    v88[2] = v132;
    v88[3] = v91;
    v92 = v86;
    v93 = v104;
    sub_24E6009C8(v92, v104, &qword_27F250500);
    v39 = v119;
    sub_24E6009C8(v93, v119, &qword_27F250500);
    (*(v115 + 56))(v39, 0, 1, v87);
  }

  else
  {
    (*(v115 + 56))(v39, 1, 1, v116);
  }

  v94 = v120;
  v95 = v114;
  sub_24E60169C(v120, v114, &qword_27F250510);
  v96 = v117;
  sub_24E60169C(v39, v117, &qword_27F250508);
  v97 = v118;
  sub_24E60169C(v95, v118, &qword_27F250510);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250518);
  sub_24E60169C(v96, v97 + *(v98 + 48), &qword_27F250508);
  sub_24E601704(v39, &qword_27F250508);
  sub_24E601704(v94, &qword_27F250510);
  sub_24E601704(v96, &qword_27F250508);
  return sub_24E601704(v95, &qword_27F250510);
}

uint64_t sub_24F7B5830@<X0>(uint64_t a1@<X8>, double a2@<D1>)
{
  v4 = sub_24F924258();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v7 + 28);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_24F924B38();
  (*(*(v10 - 8) + 104))(v6 + v8, v9, v10);
  *v6 = a2;
  v6[1] = a2;
  LODWORD(v9) = sub_24F925188();
  sub_24F923658();
  v11 = MEMORY[0x277CDFC08];
  sub_24F7B5FE0(v6, a1, MEMORY[0x277CDFC08]);
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7F8) + 36);
  v13 = v24;
  *v12 = *&v23[8];
  *(v12 + 16) = v13;
  *(v12 + 32) = v25;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E800);
  *(a1 + *(v14 + 52)) = v9;
  *(a1 + *(v14 + 56)) = 256;
  v15 = sub_24F927618();
  v17 = v16;
  sub_24F7B6048(v6, v11);
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E808) + 36));
  *v18 = v15;
  v18[1] = v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E810) + 36);
  v20 = *MEMORY[0x277CE13B8];
  v21 = sub_24F927748();
  return (*(*(v21 - 8) + 104))(a1 + v19, v20, v21);
}

uint64_t sub_24F7B5A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924B38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 8);
  sub_24E60169C(a1, v15, &qword_27F213F18);
  v10 = v15[1];
  *a2 = v15[0];
  *(a2 + 16) = v10;
  *(a2 + 32) = v16;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0118], v5);
  v11 = sub_24F924258();
  *(a2 + 64) = v11;
  *(a2 + 72) = sub_24F7B60A8(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 40));
  (*(v6 + 16))(boxed_opaque_existential_1 + *(v11 + 20), v8, v5);
  *boxed_opaque_existential_1 = v9;
  boxed_opaque_existential_1[1] = v9;
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F7B5CA0()
{
  result = qword_27F250488;
  if (!qword_27F250488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250488);
  }

  return result;
}

unint64_t sub_24F7B5D64()
{
  result = qword_27F2504B8;
  if (!qword_27F2504B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2504A8);
    sub_24F7B5E1C();
    sub_24E602068(&qword_27F238F00, &qword_27F238ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2504B8);
  }

  return result;
}

unint64_t sub_24F7B5E1C()
{
  result = qword_27F2504C0;
  if (!qword_27F2504C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2504A0);
    sub_24F7B5ED4();
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2504C0);
  }

  return result;
}

unint64_t sub_24F7B5ED4()
{
  result = qword_27F2504C8;
  if (!qword_27F2504C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250498);
    sub_24E602068(&qword_27F2504D0, &qword_27F250490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2504C8);
  }

  return result;
}

unint64_t sub_24F7B5F8C()
{
  result = qword_27F250528;
  if (!qword_27F250528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250528);
  }

  return result;
}

uint64_t sub_24F7B5FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7B6048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7B60A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7B6110()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2504A8);
  sub_24F7B5D64();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F7B6178()
{
  result = qword_27F250538;
  if (!qword_27F250538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250538);
  }

  return result;
}

unint64_t sub_24F7B61D0()
{
  result = qword_27F250540;
  if (!qword_27F250540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250540);
  }

  return result;
}

unint64_t sub_24F7B6228()
{
  result = qword_27F250548;
  if (!qword_27F250548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250548);
  }

  return result;
}

uint64_t sub_24F7B627C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t ClearCachesDebugAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F928AD8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24F7B64D8(uint64_t a1)
{
  v2 = sub_24F7B66B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7B6514(uint64_t a1)
{
  v2 = sub_24F7B66B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClearCachesDebugAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250550);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B66B4();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F7B66B4()
{
  result = qword_27F250558;
  if (!qword_27F250558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250558);
  }

  return result;
}

uint64_t ClearCachesDebugAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250560);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ClearCachesDebugAction();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B66B4();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F7B69C0(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for ClearCachesDebugAction()
{
  result = qword_27F250568;
  if (!qword_27F250568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F7B69C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClearCachesDebugAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7B6A3C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250550);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B66B4();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F7B6BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F7B6C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F7B6CB8()
{
  result = qword_27F250578;
  if (!qword_27F250578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250578);
  }

  return result;
}

unint64_t sub_24F7B6D10()
{
  result = qword_27F250580;
  if (!qword_27F250580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250580);
  }

  return result;
}

unint64_t sub_24F7B6D68()
{
  result = qword_27F250588;
  if (!qword_27F250588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250588);
  }

  return result;
}

uint64_t sub_24F7B6DD0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[12];

  return v17(v18, a2, v16);
}

uint64_t sub_24F7B7004(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[12];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for FriendRequestCard()
{
  result = qword_27F250590;
  if (!qword_27F250590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7B7270()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24F7B73E8(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v4 <= 0x3F)
          {
            sub_24F9289E8();
            if (v5 <= 0x3F)
            {
              sub_24F7B73E8(319, &qword_27F21B288, type metadata accessor for CardPrimaryActionType);
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

void sub_24F7B73E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F7B743C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 25705;
    v6 = 0x4D747865746E6F63;
    v7 = 0xD000000000000011;
    if (a1 != 3)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6575676573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000017;
    if (a1 == 9)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD000000000000011;
    v3 = 0x4172657469766E69;
    if (a1 != 6)
    {
      v3 = 0x634165726F6E6769;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24F7B75B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v48 - v6;
  MEMORY[0x28223BE20](v7);
  v52 = &v48 - v8;
  v9 = sub_24F9289E8();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v48 - v12;
  v56 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v56);
  v55 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v57 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2505B0);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v20 = &v48 - v19;
  v21 = type metadata accessor for FriendRequestCard();
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v23 + 40) = 0u;
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  *(v23 + 56) = 0u;
  *(v23 + 9) = 0;
  v68 = v23 + 40;
  sub_24E61DA68(&v70, (v23 + 40), qword_27F21B590);
  v24 = *(v21 + 24);
  v25 = sub_24F92A6D8();
  v26 = *(*(v25 - 8) + 56);
  v67 = v24;
  v26(&v23[v24], 1, 1, v25);
  v27 = *(v21 + 44);
  v69 = v23;
  v28 = &v23[v27];
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 4) = 0;
  v63 = v21;
  v64 = &v23[v27];
  sub_24E61DA68(&v70, &v23[v27], qword_27F21B590);
  v29 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_24F7B8554();
  v59 = v20;
  v30 = v61;
  sub_24F92D108();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
    v32 = v69;
    sub_24E601704(v68, qword_27F24EC90);
    sub_24E601704(v32 + v67, &qword_27F215440);
    return sub_24E601704(v64, qword_27F24EC90);
  }

  else
  {
    v31 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v73 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v33 = v71;
    v34 = v69;
    *v69 = v70;
    v34[1] = v33;
    *(v34 + 4) = v72;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v73 = 1;
    v36 = sub_24E61D970();
    sub_24F92CC68();
    v37 = v63;
    v61 = v36;
    sub_24E61DA68(&v70, v68, qword_27F24EC90);
    LOBYTE(v70) = 2;
    sub_24E65CAA0();
    v38 = v18;
    sub_24F92CC68();
    v48 = v35;
    v39 = v69;
    sub_24E61DA68(v38, v69 + v67, &qword_27F215440);
    sub_24F929608();
    LOBYTE(v70) = 3;
    sub_24F7B85A8(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E6009C8(v31, &v39[v37[7]], &qword_27F213E68);
    LOBYTE(v70) = 4;
    sub_24F7B85A8(&qword_27F219690, type metadata accessor for CommonCardAttributes);
    v40 = v55;
    sub_24F92CC68();
    sub_24E706B90(v40, &v39[v37[8]]);
    LOBYTE(v70) = 5;
    sub_24F7B85A8(&qword_27F214018, MEMORY[0x277D21C48]);
    v41 = v54;
    v42 = v66;
    sub_24F92CC68();
    v43 = *(v65 + 32);
    v43(&v39[v37[9]], v41, v42);
    LOBYTE(v70) = 6;
    v44 = v53;
    sub_24F92CC68();
    v43(&v39[v37[10]], v44, v42);
    v73 = 7;
    sub_24F92CC68();
    sub_24E61DA68(&v70, v64, qword_27F24EC90);
    type metadata accessor for CardPrimaryActionType();
    LOBYTE(v70) = 8;
    sub_24F7B85A8(&qword_27F21F648, type metadata accessor for CardPrimaryActionType);
    v45 = v52;
    sub_24F92CC18();
    sub_24E6009C8(v45, &v39[v37[12]], &qword_27F21B270);
    LOBYTE(v70) = 9;
    sub_24F92CC18();
    sub_24E6009C8(v51, v69 + v63[13], &qword_27F21B270);
    LOBYTE(v70) = 10;
    sub_24F92CC18();
    (*(v58 + 8))(v59, v60);
    v46 = v69;
    sub_24E6009C8(v50, v69 + v63[14], &qword_27F21B270);
    sub_24F7B85F0(v46, v49, type metadata accessor for FriendRequestCard);
    __swift_destroy_boxed_opaque_existential_1(v62);
    return sub_24F7B8658(v46, type metadata accessor for FriendRequestCard);
  }
}

uint64_t sub_24F7B82D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7B87D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F7B8300(uint64_t a1)
{
  v2 = sub_24F7B8554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7B833C(uint64_t a1)
{
  v2 = sub_24F7B8554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7B83B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F7B8488(uint64_t a1)
{
  *(a1 + 8) = sub_24F7B85A8(&qword_27F21AB98, type metadata accessor for FriendRequestCard);
  result = sub_24F7B85A8(&qword_27F2505A0, type metadata accessor for FriendRequestCard);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F7B8554()
{
  result = qword_27F2505B8;
  if (!qword_27F2505B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505B8);
  }

  return result;
}

uint64_t sub_24F7B85A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7B85F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7B8658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F7B86CC()
{
  result = qword_27F2505C0;
  if (!qword_27F2505C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505C0);
  }

  return result;
}

unint64_t sub_24F7B8724()
{
  result = qword_27F2505C8;
  if (!qword_27F2505C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505C8);
  }

  return result;
}

unint64_t sub_24F7B877C()
{
  result = qword_27F2505D0;
  if (!qword_27F2505D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505D0);
  }

  return result;
}

uint64_t sub_24F7B87D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA464C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4172657469766E69 && a2 == 0xED00007261746176 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x634165726F6E6769 && a2 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA7DD80 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA7DDA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA7DDC0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t RecentSearches.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x4449726579616C70;
  v7 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v7;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 88) = 0x736D726574;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  *(inited + 136) = sub_24E61B71C(&qword_27F213798);
  *(inited + 104) = v5;

  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_24F7B8CC4()
{
  if (*v0)
  {
    return 0x736D726574;
  }

  else
  {
    return 0x4449726579616C70;
  }
}

uint64_t sub_24F7B8CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736D726574 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F7B8DD4(uint64_t a1)
{
  v2 = sub_24F7B9408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7B8E10(uint64_t a1)
{
  v2 = sub_24F7B9408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecentSearches.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2505D8);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B9408();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24E61B71C(&qword_27F2137A0);
    sub_24F92CD48();
  }

  return (*(v10 + 8))(v6, v4);
}

uint64_t RecentSearches.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2505E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B9408();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v16 = 1;
  sub_24E61B71C(&qword_27F216420);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F7B9260@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x4449726579616C70;
  v7 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v7;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 88) = 0x736D726574;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  *(inited + 136) = sub_24E61B71C(&qword_27F213798);
  *(inited + 104) = v5;

  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_24F7B9408()
{
  result = qword_27F2505E0;
  if (!qword_27F2505E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505E0);
  }

  return result;
}

unint64_t sub_24F7B945C(uint64_t a1)
{
  *(a1 + 8) = sub_24F3A4A40();
  result = sub_24F3A49EC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F7B94B0()
{
  result = qword_27F2505F0;
  if (!qword_27F2505F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505F0);
  }

  return result;
}

unint64_t sub_24F7B9508()
{
  result = qword_27F2505F8;
  if (!qword_27F2505F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505F8);
  }

  return result;
}

unint64_t sub_24F7B9560()
{
  result = qword_27F250600[0];
  if (!qword_27F250600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F250600);
  }

  return result;
}

void sub_24F7B95BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v5 = type metadata accessor for CallAction();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VirtualCall();
  v47 = *(v8 - 1);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v46 = objc_opt_self();
  v50 = [v46 sharedInstance];
  v13 = [v50 providerManager];
  v15 = *a1;
  v14 = *(a1 + 8);

  v16 = sub_24F92B098();
  v49 = v13;
  v17 = [v13 providerWithIdentifier_];

  if (v17)
  {

    sub_24F7BADC4(a1, v7, type metadata accessor for CallAction);
    v18 = v17;
    sub_24F85F2F8(v7, v17, v12);
    v19 = v12;
    if (qword_27F210FD0 != -1)
    {
      swift_once();
    }

    OverlayCallCenter.addVirtualCall(_:timeout:)(v12, 0x8AC7230489E80000, 0);
    v20 = [objc_allocWithZone(MEMORY[0x277D6EED0]) initWithProvider_];
    [v20 setVideo_];
    v21 = v48;
    if ((a3 & 0xC000000000000001) != 0)
    {
      if (sub_24F92C738() != 1)
      {
        goto LABEL_17;
      }
    }

    else if (*(a3 + 16) != 1)
    {
      goto LABEL_17;
    }

    v40 = sub_24ECD0CFC(a3);
    if (v40)
    {
      v41 = v40;
      [v20 setHandle_];
LABEL_18:

      [v20 setShowUIPrompt_];
      [v20 setOriginatingUIType_];
      [v20 setLaunchInBackground_];
      v42 = [v46 sharedInstance];
      sub_24F7BADC4(v19, v21, type metadata accessor for VirtualCall);
      v43 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v44 = swift_allocObject();
      sub_24F7BAE44(v21, v44 + v43, type metadata accessor for VirtualCall);
      *(v44 + ((v9 + v43 + 7) & 0xFFFFFFFFFFFFFFF8)) = v51;
      aBlock[4] = sub_24F7BAEAC;
      aBlock[5] = v44;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24E9FABA0;
      aBlock[3] = &block_descriptor_10_1;
      v45 = _Block_copy(aBlock);

      [v42 launchAppForDialRequest:v20 completion:v45];

      _Block_release(v45);
      sub_24F7BAD64(v19, type metadata accessor for VirtualCall);
      return;
    }

LABEL_17:
    sub_24E69A5C4(0, &unk_27F2376E0);
    sub_24EAEAB48();
    v41 = sub_24F92BA98();
    [v20 setHandles_];
    goto LABEL_18;
  }

  v22 = v15;
  if (qword_27F2113B0 != -1)
  {
    swift_once();
  }

  v23 = sub_24F9220D8();
  __swift_project_value_buffer(v23, qword_27F39E760);

  v24 = sub_24F9220B8();
  v25 = sub_24F92BDB8();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v48;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_24E7620D4(v22, v14, aBlock);
    _os_log_impl(&dword_24E5DD000, v24, v25, "No call provider for %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x2530542D0](v29, -1, -1);
    MEMORY[0x2530542D0](v28, -1, -1);
  }

  sub_24F7BADC4(a1, v7, type metadata accessor for CallAction);
  v30 = v8[7];
  sub_24F91F6A8();
  v31 = *(v7 + 1);
  v32 = (v27 + v8[8]);
  *v32 = *v7;
  v32[1] = v31;
  *(v27 + v8[9]) = *(v7 + 2);
  v33 = v7[24];
  *(v27 + v8[10]) = v33;
  v34 = (v27 + v8[5]);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = (v27 + v8[6]);
  *v35 = 0;
  v35[1] = 0;

  sub_24F7BAD64(v7, type metadata accessor for CallAction);
  *(v27 + v8[11]) = v33;
  *(v27 + v8[12]) = 0;
  *(v27 + v30) = 0;
  if (qword_27F210FD0 != -1)
  {
    swift_once();
  }

  sub_24F1D9EA0();
  v36 = swift_allocError();
  *v37 = v22;
  v37[1] = v14;

  OverlayCallCenter.virtualCallFailed(_:withError:)(v27, v36);

  v38 = swift_allocError();
  *v39 = v22;
  v39[1] = v14;
  sub_24F92A9A8();

  sub_24F7BAD64(v27, type metadata accessor for VirtualCall);
}

void sub_24F7B9CEC(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v5 = sub_24F927D88();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VirtualCall();
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_24F928AE8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v32 = a3;
    v18 = a1;
    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v19 = sub_24F9220D8();
    __swift_project_value_buffer(v19, qword_27F39E760);
    v20 = a1;
    v21 = sub_24F9220B8();
    v22 = sub_24F92BDB8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = a1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_24E5DD000, v21, v22, "Unable to launchApp for TUDialRequest: %@", v23, 0xCu);
      sub_24E6D44CC(v24);
      MEMORY[0x2530542D0](v24, -1, -1);
      MEMORY[0x2530542D0](v23, -1, -1);
    }

    sub_24E69A5C4(0, &qword_27F222300);
    v27 = sub_24F92BEF8();
    sub_24F7BADC4(v34, &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VirtualCall);
    v28 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v29 = swift_allocObject();
    sub_24F7BAE44(&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for VirtualCall);
    *(v29 + ((v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    aBlock[4] = sub_24F7BB0A0;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_16_1;
    v30 = _Block_copy(aBlock);
    v31 = a1;

    sub_24F927DA8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24F7BAD1C(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E8582A8();
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v10, v7, v30);
    _Block_release(v30);

    (*(v37 + 8))(v7, v5);
    (*(v35 + 8))(v10, v36);
    sub_24F92A9A8();
  }

  else
  {
    (*(v14 + 104))(v17, *MEMORY[0x277D21CA8], v13, v15);
    sub_24F92A9C8();
    (*(v14 + 8))(v17, v13);
  }
}

void sub_24F7BA274(uint64_t a1, void *a2)
{
  if (qword_27F210FD0 != -1)
  {
    v2 = a1;
    v3 = a2;
    swift_once();
    a1 = v2;
    a2 = v3;
  }

  OverlayCallCenter.virtualCallFailed(_:withError:)(a1, a2);
}

uint64_t sub_24F7BA2F0(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_24F927D88();
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CallAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v13 = sub_24F92A9E8();
  sub_24E69A5C4(0, &qword_27F222300);
  v21 = sub_24F92BEF8();
  sub_24F7BADC4(a1, v12, type metadata accessor for CallAction);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_24F7BAE44(v12, v16 + v14, type metadata accessor for CallAction);
  *(v16 + v15) = v13;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = sub_24F7BAC6C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_177;
  v17 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F7BAD1C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  v18 = v21;
  MEMORY[0x2530518B0](0, v8, v5, v17);
  _Block_release(v17);

  (*(v25 + 8))(v5, v3);
  (*(v23 + 8))(v8, v24);
  return v13;
}

uint64_t sub_24F7BA6B8(uint64_t a1)
{
  v2 = sub_24F928AE8();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 16);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v28 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v7 = v4 + 48;
    do
    {
      v8 = *(v7 - 16);
      v9 = objc_allocWithZone(MEMORY[0x277D6EEE8]);

      v10 = sub_24F92B098();
      [v9 initWithType:v8 + 1 value:v10];

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      v7 += 24;
      --v5;
    }

    while (v5);
    v6 = v28;
  }

  v11 = sub_24F45E240(v6);

  if ((v11 & 0xC000000000000001) != 0)
  {
    if (sub_24F92C738() < 2)
    {
      goto LABEL_16;
    }
  }

  else if (*(v11 + 16) < 2)
  {
LABEL_16:
    v19 = sub_24F7BA2F0(a1, v11);

    return v19;
  }

  v12 = sub_24F92B098();
  v13 = [objc_opt_self() providerForIdentifier_];

  v14 = objc_allocWithZone(MEMORY[0x277D6EEF0]);
  sub_24E69A5C4(0, &unk_27F2376E0);
  sub_24EAEAB48();
  v15 = v13;
  v16 = sub_24F92BA98();
  v17 = [v14 initWithProvider:v15 remoteMemberHandles:v16];

  [v17 setVideoEnabled_];
  [v17 setShowUIPrompt_];
  [v17 setOriginatingUIType_];
  [v17 setLaunchInBackground_];
  v18 = [objc_opt_self() sharedInstance];
  LODWORD(v16) = [v18 launchAppForJoinRequest_];

  if (!v16)
  {
    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v20 = sub_24F9220D8();
    __swift_project_value_buffer(v20, qword_27F39E760);
    v21 = sub_24F9220B8();
    v22 = sub_24F92BDB8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_24E5DD000, v21, v22, "Unable to launchApp for TUJoinConversationRequest", v23, 2u);
      MEMORY[0x2530542D0](v23, -1, -1);
    }

    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v26 + 104))(v25, *MEMORY[0x277D21CA8], v27);
  v19 = sub_24F92A988();

  return v19;
}

uint64_t sub_24F7BAB58()
{
  v1 = (type metadata accessor for CallAction() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

void sub_24F7BAC6C()
{
  v1 = *(type metadata accessor for CallAction() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24F7B95BC(v0 + v2, v4, v5);
}

uint64_t block_copy_helper_177(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F7BAD1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7BAD64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7BADC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7BAE44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24F7BAEAC(void *a1)
{
  v3 = *(type metadata accessor for VirtualCall() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24F7B9CEC(a1, v1 + v4, v5);
}

uint64_t objectdestroy_6Tm_4(void (*a1)(void))
{
  v3 = (type metadata accessor for VirtualCall() - 8);
  v4 = (*(*v3 + 80) + 16) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1 + v4;
  v7 = sub_24F91F6B8();
  (*(*(v7 - 8) + 8))(v6, v7);

  a1(*(v1 + v5));

  return swift_deallocObject();
}

void sub_24F7BB0A0()
{
  v1 = *(type metadata accessor for VirtualCall() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24F7BA274(v0 + v2, v3);
}

uint64_t sub_24F7BB170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1836213620 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F7BB1F8(uint64_t a1)
{
  v2 = sub_24F7BB630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7BB234(uint64_t a1)
{
  v2 = sub_24F7BB630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7BB290@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250688);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7BB630();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_24F92CC28();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_24F7BB40C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250698);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7BB630();
  sub_24F92D128();
  sub_24F92CD08();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F7BB548@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 1836213620;
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;

  v7 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

unint64_t sub_24F7BB630()
{
  result = qword_27F250690;
  if (!qword_27F250690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250690);
  }

  return result;
}

unint64_t sub_24F7BB698()
{
  result = qword_27F2506A0;
  if (!qword_27F2506A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506A0);
  }

  return result;
}

unint64_t sub_24F7BB6F0()
{
  result = qword_27F2506A8;
  if (!qword_27F2506A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506A8);
  }

  return result;
}

unint64_t sub_24F7BB748()
{
  result = qword_27F2506B0;
  if (!qword_27F2506B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506B0);
  }

  return result;
}

uint64_t sub_24F7BB7AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2506C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7BBD1C();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_24F92CD08();
  v8[13] = 2;
  sub_24F92CD08();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7BB94C()
{
  v1 = 0x4449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x4449726579616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6272656461656CLL;
  }
}

uint64_t sub_24F7BB9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7BBE88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F7BB9DC(uint64_t a1)
{
  v2 = sub_24F7BBD1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7BBA18(uint64_t a1)
{
  v2 = sub_24F7BBD1C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F7BBA74@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24F7BBAD0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_24F7BBAD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2506B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7BBD1C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24F92CC28();
  v21 = v12;
  v23 = 2;
  v13 = sub_24F92CC28();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_24F7BBD1C()
{
  result = qword_27F2506C0;
  if (!qword_27F2506C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506C0);
  }

  return result;
}

unint64_t sub_24F7BBD84()
{
  result = qword_27F2506D0;
  if (!qword_27F2506D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506D0);
  }

  return result;
}

unint64_t sub_24F7BBDDC()
{
  result = qword_27F2506D8;
  if (!qword_27F2506D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506D8);
  }

  return result;
}

unint64_t sub_24F7BBE34()
{
  result = qword_27F2506E0;
  if (!qword_27F2506E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506E0);
  }

  return result;
}

uint64_t sub_24F7BBE88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6272656461656CLL && a2 == 0xED00004449647261;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t OverlayHighlightsShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0);
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048);
  v3[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2506E8);
  v3[30] = v8;
  v3[31] = *(v8 - 8);
  v3[32] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v10 = swift_task_alloc();
  v3[33] = v10;
  *v10 = v3;
  v10[1] = sub_24F7BC2B8;

  return MEMORY[0x28217F228](v3 + 7, v9, v9);
}

uint64_t sub_24F7BC2B8()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_24F7BC7E8;
  }

  else
  {
    v2 = sub_24F7BC3CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7BC3CC()
{
  v1 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v2 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  type metadata accessor for OverlayHighlightsShelfIntent();

  sub_24F920FC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234790);
  v3 = sub_24F920878();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[35] = v6;
  *(v6 + 16) = xmmword_24F93DE60;

  sub_24F920EF8();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D0CF80], v3);
  v7 = sub_24F921038();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_24F7BC62C;
  v9 = v0[32];
  v10 = v0[29];
  v11 = v0[26];

  return MEMORY[0x282165170](v9, v10, v6, v11, v2, v13);
}

uint64_t sub_24F7BC62C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = v2[29];
  v4 = v2[28];
  v5 = v2[27];
  v6 = v2[26];

  sub_24E601704(v6, &qword_27F21C048);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_24F7BD0A0;
  }

  else
  {
    v7 = sub_24F7BC8A4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24F7BC7E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7BC8A4()
{
  v46 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = sub_24F921028();
  (*(v1 + 8))(v2, v3);
  v5 = *(v4 + 16);
  if (!v5)
  {

    v17 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v6 = v0[24];
  v7 = *(v6 + 16);
  v6 += 16;
  v8 = (*(v6 + 64) + 32) & ~*(v6 + 64);
  v43 = v7;
  v44 = *(v6 + 56);
  v9 = (v6 - 8);
  v10 = v0[37];
  v42 = v4;
  v7(v0[25], v4 + v8, v0[23]);
  v12 = sub_24F921008();
  v13 = v10;
  v14 = v0[25];
  v15 = v0[23];
  if (!v13)
  {
    v19 = v11;
    v16 = *v9;
    (*v9)(v14, v15);
    v17 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_24E615CF4(0, *(v17 + 2) + 1, 1, v17);
    }

    v21 = *(v17 + 2);
    v20 = *(v17 + 3);
    if (v21 >= v20 >> 1)
    {
      v17 = sub_24E615CF4((v20 > 1), v21 + 1, 1, v17);
    }

    *(v17 + 2) = v21 + 1;
    v22 = &v17[16 * v21];
    *(v22 + 4) = v12;
    *(v22 + 5) = v19;
    v18 = v5 - 1;
    if (v5 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v16 = *v9;
  (*v9)(v14, v15);
  v17 = MEMORY[0x277D84F90];
  v18 = v5 - 1;
  if (v5 != 1)
  {
LABEL_19:
    v34 = v42 + v44 + v8;
    do
    {
      v43(v0[25], v34, v0[23]);
      v35 = sub_24F921008();
      v37 = v36;
      v16(v0[25], v0[23]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_24E615CF4(0, *(v17 + 2) + 1, 1, v17);
      }

      v39 = *(v17 + 2);
      v38 = *(v17 + 3);
      if (v39 >= v38 >> 1)
      {
        v17 = sub_24E615CF4((v38 > 1), v39 + 1, 1, v17);
      }

      *(v17 + 2) = v39 + 1;
      v40 = &v17[16 * v39];
      *(v40 + 4) = v35;
      *(v40 + 5) = v37;
      v34 += v44;
      --v18;
    }

    while (v18);
  }

LABEL_11:

LABEL_12:
  v23 = sub_24F45D828(v17);

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v24 = sub_24F9220D8();
  __swift_project_value_buffer(v24, qword_27F39E778);

  v25 = sub_24F9220B8();
  v26 = sub_24F92BD98();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v45 = v28;
    *v27 = 136315138;
    v29 = sub_24F92BAC8();
    v31 = sub_24E7620D4(v29, v30, &v45);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_24E5DD000, v25, v26, "OverlayHighlightsShelfIntent listed current challenges %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x2530542D0](v28, -1, -1);
    MEMORY[0x2530542D0](v27, -1, -1);
  }

  v0[38] = v23;
  updated = type metadata accessor for ChallengesUpdateNotifier();
  v33 = swift_task_alloc();
  v0[39] = v33;
  *v33 = v0;
  v33[1] = sub_24F7BCD2C;

  return MEMORY[0x28217F228](v0 + 12, updated, updated);
}

uint64_t sub_24F7BCD2C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {

    v2 = sub_24F7BD2A8;
  }

  else
  {
    v2 = sub_24F7BCE48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7BCE48()
{
  v1 = v0[38];
  v13 = v0[22];
  v14 = v0[21];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v15 = v0[19];
  v16 = v0[13];
  v8 = v0[12];
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v1;
  v9[5] = v6;
  type metadata accessor for GSKShelf();
  (*(v3 + 104))(v4, *MEMORY[0x277D85778], v5);
  sub_24F92B928();

  (*(v2 + 16))(v14, v13, v15);
  sub_24E602068(&qword_27F22D120, &qword_27F213760);
  sub_24F9280F8();

  (*(v2 + 8))(v13, v15);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v10 - 8) + 56))(v16, 0, 1, v10);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F7BD0A0()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[37];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "OverlayHighlightsShelfIntent received error %@ listing challenges, continuing with []", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v0[38] = MEMORY[0x277D84FA0];
  updated = type metadata accessor for ChallengesUpdateNotifier();
  v13 = swift_task_alloc();
  v0[39] = v13;
  *v13 = v0;
  v13[1] = sub_24F7BCD2C;

  return MEMORY[0x28217F228](v0 + 12, updated, updated);
}

uint64_t sub_24F7BD2A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7BD36C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v56 = a4;
  v53 = a3;
  v68 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v62 = *(v6 - 8);
  v63 = v6;
  v64 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v48 - v9;
  v10 = type metadata accessor for OverlayHighlightsShelfIntent();
  v55 = *(v10 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x28223BE20](v12);
  v49 = &v48 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250750);
  v66 = *(v59 - 8);
  v58 = *(v66 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_24F92C888();
  v21 = *a2;
  v22 = a2[1];

  v69 = v21;
  v70 = v22;
  MEMORY[0x253050C20](0xD000000000000011, 0x800000024FA7DEB0);
  v23 = v69;
  v24 = v70;
  v48 = a2;
  v26 = a2[2];
  v25 = a2[3];
  type metadata accessor for OverlayHighlightsShelfUpdater();
  v27 = swift_allocObject();

  sub_24F91F6A8();
  *(v27 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengesUpdateNotifier) = v53;
  v28 = (v27 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_streamID);
  *v28 = v23;
  v28[1] = v24;
  v29 = (v27 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_bundleID);
  *v29 = v26;
  v29[1] = v25;
  *(v27 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengeIDs) = v56;
  (*(v18 + 104))(v20, *MEMORY[0x277D85778], v17);

  sub_24F92B868();
  (*(v18 + 8))(v20, v17);
  (*(v50 + 16))(v49, v27 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_updateStream, v51);
  v30 = v52;
  sub_24F7C3124(v48, v52, type metadata accessor for OverlayHighlightsShelfIntent);
  v31 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v32 = (v54 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_24F7C30BC(v30, v33 + v31, type metadata accessor for OverlayHighlightsShelfIntent);
  *(v33 + v32) = v60;
  v34 = swift_allocObject();
  *(v34 + 16) = &unk_24FA2AE10;
  *(v34 + 24) = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  sub_24E602068(&qword_27F250758, &qword_27F218350);
  sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
  v35 = v65;
  sub_24F92CEA8();
  v36 = sub_24F92B858();
  (*(*(v36 - 8) + 56))(v67, 1, 1, v36);
  v37 = v66;
  v38 = v57;
  v39 = v59;
  (*(v66 + 16))(v57, v35, v59);
  v41 = v61;
  v40 = v62;
  v42 = v63;
  (*(v62 + 16))(v61, v68, v63);
  v43 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v44 = v40;
  v45 = (v58 + *(v40 + 80) + v43) & ~*(v40 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  (*(v37 + 32))(v46 + v43, v38, v39);
  (*(v44 + 32))(v46 + v45, v41, v42);
  sub_24F1D3DA4(0, 0, v67, &unk_24FA2AE30, v46);

  sub_24F92B898();
  sub_24F7C0A60();

  return (*(v66 + 8))(v65, v39);
}

uint64_t sub_24F7BDB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v3[10] = type metadata accessor for OverlayHighlightsShelfConstructionIntent();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7BDBE8, 0, 0);
}

uint64_t sub_24F7BDBE8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = type metadata accessor for OverlayHighlightsShelfIntent();
  sub_24F7C3124(v3 + *(v8 + 24), v1 + *(v2 + 24), type metadata accessor for Player);
  *v1 = v5;
  v1[1] = v4;
  v1[2] = v7;
  v1[3] = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);

  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_24F7BDD18;

  return MEMORY[0x28217F228](v0 + 2, v9, v9);
}

uint64_t sub_24F7BDD18()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24F7BE03C;
  }

  else
  {
    v2 = sub_24F7BDE2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7BDE2C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_24F7C318C(&qword_27F21D4F8, type metadata accessor for OverlayHighlightsShelfConstructionIntent);
  *v3 = v0;
  v3[1] = sub_24F7BDF28;
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x28217F4B0](v8, v5, v7, v6, v4, v1, v2);
}

uint64_t sub_24F7BDF28()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24F7BE124;
  }

  else
  {
    v2 = sub_24F7BE0AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7BE03C()
{
  sub_24E876EBC(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7BE0AC()
{
  v1 = *(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24E876EBC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F7BE124()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24E876EBC(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7BE19C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24E6541E4;

  return v7(a1);
}

uint64_t sub_24F7BE294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for GSKShelf();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8);
  v5[10] = swift_task_alloc();
  v5[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218358);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250760);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7BE4D0, 0, 0);
}

uint64_t sub_24F7BE4D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250750);
  MEMORY[0x2530527A0]();
  sub_24E602068(&qword_27F250758, &qword_27F218350);
  sub_24F92B9B8();
  sub_24F92CE78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
  sub_24F92CE88();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_24F7BE6A0;
  v2 = *(v0 + 80);

  return sub_24F7BEA6C(v2, 0, 0);
}

uint64_t sub_24F7BE6A0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24F7BE9A8;
  }

  else
  {
    v2 = sub_24F7BE7B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7BE7B4()
{
  v1 = v0[10];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];
    sub_24F7C30BC(v1, v0[6], type metadata accessor for GSKShelf);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
    sub_24F92B8C8();
    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_24F7BE6A0;
    v8 = v0[10];

    return sub_24F7BEA6C(v8, 0, 0);
  }
}

uint64_t sub_24F7BE9A8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F7BEA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v7 = type metadata accessor for GSKShelf();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250768);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250770);
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_24F92B778();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v4[29] = v9;
  v4[30] = v11;

  return MEMORY[0x2822009F8](sub_24F7BECF4, v9, v11);
}

uint64_t sub_24F7BECF4()
{
  v0[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250760);
  if (sub_24F92CE58())
  {
    (*(v0[20] + 56))(v0[8], 1, 1, v0[19]);

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[25];
    v4 = v0[26];
    v5 = v0[24];
    MEMORY[0x2530527C0](v0[31]);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_24E601704(v0[24], &qword_27F250768);
      v0[35] = sub_24F92CE28();
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218358);
      v7 = sub_24E602068(&qword_27F250778, &qword_27F218358);
      v9 = swift_task_alloc();
      v0[36] = v9;
      *v9 = v0;
      v9[1] = sub_24F7BF158;
      v10 = v0[9];
      v11 = v0[10];
      v12 = v0 + 41;
      v13 = v6;
    }

    else
    {
      v14 = v0[28];
      v15 = v0[25];
      v16 = v0[26];
      v17 = v0[24];
      v18 = *(v16 + 32);
      v0[32] = v18;
      v0[33] = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v18(v14, v17, v15);
      v7 = sub_24E602068(&qword_27F250780, &qword_27F250770);
      v19 = swift_task_alloc();
      v0[34] = v19;
      *v19 = v0;
      v19[1] = sub_24F7BF030;
      v13 = v0[25];
      v12 = v0[18];
      v10 = v0[9];
      v11 = v0[10];
      v8 = v0 + 7;
    }

    return MEMORY[0x282200310](v12, v10, v11, v8, v13, v7);
  }
}

uint64_t sub_24F7BF030()
{
  v2 = *v1;

  if (v0)
  {
    (*(v2[26] + 8))(v2[28], v2[25]);
    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_24F7BF6E0;
  }

  else
  {
    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_24F7BF280;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F7BF158()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_24F7BFA14;
  }

  else
  {
    (*(v2 + 280))();
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_24F7BF814;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F7BF280()
{
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    v2 = v0[31];
    v3 = v0[25];
    v4 = v0[26];
    v5 = v0[23];
    (*(v4 + 8))(v0[28], v3);
    sub_24E601704(v1, &qword_27F21E5E8);
    v6 = 1;
    (*(v4 + 56))(v5, 1, 1, v3);
    MEMORY[0x2530527D0](v5, v2);
    if ((sub_24F92CE58() & 1) == 0)
    {
      v7 = v0[25];
      v8 = v0[26];
      v9 = v0[24];
      MEMORY[0x2530527C0](v0[31]);
      if ((*(v8 + 48))(v9, 1, v7) == 1)
      {
        sub_24E601704(v0[24], &qword_27F250768);
        v0[35] = sub_24F92CE28();
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218358);
        v11 = sub_24E602068(&qword_27F250778, &qword_27F218358);
        v13 = swift_task_alloc();
        v0[36] = v13;
        *v13 = v0;
        v13[1] = sub_24F7BF158;
        v14 = v0[9];
        v15 = v0[10];
        v16 = v0 + 41;
        v17 = v10;
      }

      else
      {
        v26 = v0[28];
        v27 = v0[25];
        v28 = v0[26];
        v29 = v0[24];
        v30 = *(v28 + 32);
        v0[32] = v30;
        v0[33] = (v28 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v30(v26, v29, v27);
        v11 = sub_24E602068(&qword_27F250780, &qword_27F250770);
        v31 = swift_task_alloc();
        v0[34] = v31;
        *v31 = v0;
        v31[1] = sub_24F7BF030;
        v17 = v0[25];
        v16 = v0[18];
        v14 = v0[9];
        v15 = v0[10];
        v12 = v0 + 7;
      }

      return MEMORY[0x282200310](v16, v14, v15, v12, v17, v11);
    }
  }

  else
  {
    v18 = v0[32];
    v19 = v0[28];
    v20 = v0[25];
    v21 = v0[26];
    v23 = v0[22];
    v22 = v0[23];
    v32 = v0[8];
    v33 = v0[31];
    sub_24F7C30BC(v1, v23, type metadata accessor for GSKShelf);
    v18(v22, v19, v20);
    (*(v21 + 56))(v22, 0, 1, v20);
    MEMORY[0x2530527D0](v22, v33);
    sub_24F7C30BC(v23, v32, type metadata accessor for GSKShelf);
    v6 = 0;
  }

  (*(v0[20] + 56))(v0[8], v6, 1, v0[19]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_24F7BF6E0()
{
  v1 = *(v0 + 56);
  sub_24F92CE68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  swift_allocError();
  *v2 = v1;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24F7BF814()
{
  if (*(v0 + 328))
  {
    (*(*(v0 + 160) + 56))(*(v0 + 64), 1, 1, *(v0 + 152));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = sub_24F92CE78();
    *(v0 + 296) = v4;
    v7 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 304) = v5;
    *v5 = v0;
    v5[1] = sub_24F7BFB3C;
    v6 = *(v0 + 120);

    return v7(v6);
  }
}

uint64_t sub_24F7BFA14()
{
  v1 = *(v0 + 280);
  swift_allocError();
  v1(v0 + 16, 1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F7BFB3C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_24F7BFF4C;
  }

  else
  {
    v5 = sub_24F7BFC90;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7BFC90()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  (*(v3 + 32))(v1, v0[15], v4);
  (*(v3 + 16))(v2, v1, v4);
  sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
  sub_24F92B9B8();
  v5 = sub_24E602068(&qword_27F250780, &qword_27F250770);
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_24F7BFE0C;
  v7 = v0[25];
  v8 = v0[17];
  v9 = v0[9];
  v10 = v0[10];

  return MEMORY[0x282200310](v8, v9, v10, v0 + 6, v7, v5);
}

uint64_t sub_24F7BFE0C()
{
  v2 = *v1;

  if (v0)
  {
    (*(v2[26] + 8))(v2[27], v2[25]);
    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_24F7C050C;
  }

  else
  {
    (*(v2[13] + 8))(v2[16], v2[12]);
    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_24F7C00AC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F7BFF4C()
{
  v1 = v0[39];
  v2 = v0[31];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  sub_24F92CE68();
  (*(v3 + 56))(v5, 1, 1, v4);
  MEMORY[0x2530527D0](v5, v2);
  swift_willThrow();
  if (!v1)
  {
    (*(v0[13] + 8))(v0[16], v0[12]);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_24F7C00AC()
{
  v1 = v0[17];
  v2 = (*(v0[20] + 48))(v1, 1, v0[19]);
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  if (v2 == 1)
  {
    v6 = v0[31];
    (*(v4 + 8))(v0[27], v0[25]);
    sub_24E601704(v1, &qword_27F21E5E8);
    v7 = 1;
    (*(v4 + 56))(v5, 1, 1, v3);
    MEMORY[0x2530527D0](v5, v6);
    if ((sub_24F92CE58() & 1) == 0)
    {
      v8 = v0[25];
      v9 = v0[26];
      v10 = v0[24];
      MEMORY[0x2530527C0](v0[31]);
      if ((*(v9 + 48))(v10, 1, v8) == 1)
      {
        sub_24E601704(v0[24], &qword_27F250768);
        v0[35] = sub_24F92CE28();
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218358);
        v12 = sub_24E602068(&qword_27F250778, &qword_27F218358);
        v14 = swift_task_alloc();
        v0[36] = v14;
        *v14 = v0;
        v14[1] = sub_24F7BF158;
        v15 = v0[9];
        v16 = v0[10];
        v17 = v0 + 41;
        v18 = v11;
      }

      else
      {
        v24 = v0[28];
        v25 = v0[25];
        v26 = v0[26];
        v27 = v0[24];
        v28 = *(v26 + 32);
        v0[32] = v28;
        v0[33] = (v26 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v28(v24, v27, v25);
        v12 = sub_24E602068(&qword_27F250780, &qword_27F250770);
        v29 = swift_task_alloc();
        v0[34] = v29;
        *v29 = v0;
        v29[1] = sub_24F7BF030;
        v18 = v0[25];
        v17 = v0[18];
        v15 = v0[9];
        v16 = v0[10];
        v13 = v0 + 7;
      }

      return MEMORY[0x282200310](v17, v15, v16, v13, v18, v12);
    }
  }

  else
  {
    v19 = v0[31];
    v20 = v0[27];
    v21 = v0[21];
    v30 = v0[8];
    sub_24F7C30BC(v1, v21, type metadata accessor for GSKShelf);
    (*(v4 + 32))(v5, v20, v3);
    (*(v4 + 56))(v5, 0, 1, v3);
    MEMORY[0x2530527D0](v5, v19);
    sub_24F7C30BC(v21, v30, type metadata accessor for GSKShelf);
    v7 = 0;
  }

  (*(v0[20] + 56))(v0[8], v7, 1, v0[19]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_24F7C050C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  swift_allocError();
  *v1 = v0[6];
  v2 = v0[39];
  v3 = v0[31];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[23];
  sub_24F92CE68();
  (*(v5 + 56))(v6, 1, 1, v4);
  MEMORY[0x2530527D0](v6, v3);
  swift_willThrow();
  if (!v2)
  {
    (*(v0[13] + 8))(v0[16], v0[12]);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F7C06A0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_24F92B858();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_24EA998B8(0, 0, v5, &unk_24FA2AE40, v7);
}

uint64_t sub_24F7C07AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return OverlayHighlightsShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24F7C087C()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengesUpdateNotifier);
  v0[3] = v2;
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_streamID;
  v0[4] = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_streamID);
  v0[5] = *(v3 + 8);
  v4 = (v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_bundleID);
  v0[6] = *v4;
  v0[7] = v4[1];
  return MEMORY[0x2822009F8](sub_24F7C08E0, v2, 0);
}

uint64_t sub_24F7C08E0()
{
  sub_24F5EA3E0(v0[4], v0[5], v0[6], v0[7]);

  return MEMORY[0x2822009F8](sub_24F7C0950, 0, 0);
}

uint64_t sub_24F7C0950()
{
  *(v0 + 64) = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengesStreamUUID;
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = qword_27F252DD0;
  *(v0 + 72) = qword_27F252DD0;

  return MEMORY[0x2822009F8](sub_24F7C09F4, v1, 0);
}

uint64_t sub_24F7C09F4()
{
  sub_24F840910(v0[2] + v0[8], 0);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24F7C0A60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E500);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_24F92B858();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v0;

  sub_24EA998B8(0, 0, v7, &unk_24FA2ADD0, v10);

  v9(v7, 1, 1, v8);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v0;

  sub_24EA998B8(0, 0, v7, &unk_24FA2ADE0, v11);

  sub_24F92B8B8();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_24F7C0CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E500);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213780);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213788);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7C0E3C, 0, 0);
}

uint64_t sub_24F7C0E3C()
{
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengesUpdateNotifier);
  v0[17] = v2;
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_streamID;
  v0[18] = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_streamID);
  v0[19] = *(v3 + 8);
  v4 = (v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_bundleID);
  v0[20] = *v4;
  v0[21] = v4[1];
  return MEMORY[0x2822009F8](sub_24F7C0EA0, v2, 0);
}

uint64_t sub_24F7C0EA0()
{
  sub_24F5E9B3C(v0[18], v0[19], v0[20], v0[21], v0[13]);

  return MEMORY[0x2822009F8](sub_24F7C0F14, 0, 0);
}

uint64_t sub_24F7C0F14()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v0[22] = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_updateContinuation;
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_24F7C0FFC;
  v5 = v0[14];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_24F7C0FFC()
{

  return MEMORY[0x2822009F8](sub_24F7C10F8, 0, 0);
}

uint64_t sub_24F7C10F8()
{
  v1 = v0[4];
  if (v1)
  {
    sub_24E614F20(v0[2], v0[3], v1);
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9220D8();
    __swift_project_value_buffer(v2, qword_27F39E778);
    v3 = sub_24F9220B8();
    v4 = sub_24F92BD98();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "OverlayHighlightsShelfUpdater received hub event, yielding update", v5, 2u);
      MEMORY[0x2530542D0](v5, -1, -1);
    }

    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];

    sub_24F92B8B8();
    (*(v7 + 8))(v6, v8);
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_24F7C0FFC;
    v10 = v0[14];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v10);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_24F7C132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E500);
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0);
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E40);
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E508);
  v4[36] = v8;
  v4[37] = *(v8 - 8);
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7C1530, 0, 0);
}

uint64_t sub_24F7C1530()
{
  *(v0 + 312) = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengesStreamUUID;
  *(v0 + 320) = sub_24E802CE0(&unk_2861C2828);
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = qword_27F252DD0;
  *(v0 + 328) = qword_27F252DD0;
  *(v0 + 368) = 1;

  return MEMORY[0x2822009F8](sub_24F7C15EC, v1, 0);
}

uint64_t sub_24F7C15EC()
{
  sub_24F83EC44(*(v0 + 320), *(v0 + 208) + *(v0 + 312), (v0 + 368));

  return MEMORY[0x2822009F8](sub_24F7C1674, 0, 0);
}

uint64_t sub_24F7C1674()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_updateContinuation;
  v0[42] = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengeIDs;
  v0[43] = v4;
  swift_beginAccess();
  v0[44] = 0;
  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_24F7C1780;
  v6 = v0[36];

  return MEMORY[0x2822003E8](v0 + 17, 0, 0, v6);
}

uint64_t sub_24F7C1780()
{

  return MEMORY[0x2822009F8](sub_24F7C187C, 0, 0);
}

uint64_t sub_24F7C187C()
{
  v50 = v0;
  v1 = v0[18];
  if (!v1)
  {
    (*(v0[37] + 8))(v0[38], v0[36]);

    v27 = v0[1];

    return v27();
  }

  v0[19] = 7562345;
  v0[20] = 0xE300000000000000;
  sub_24F92C7F8();
  if (!*(v1 + 16) || (v2 = sub_24E76D934((v0 + 2)), (v3 & 1) == 0))
  {

    sub_24E6585F8((v0 + 2));
    goto LABEL_21;
  }

  sub_24E643A9C(*(v1 + 56) + 32 * v2, (v0 + 7));
  sub_24E6585F8((v0 + 2));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v10 = v0[44];
    goto LABEL_22;
  }

  v4 = sub_24F45D828(v0[23]);

  v5 = v4 + 56;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 56);
  v9 = (63 - v7) >> 6;
  v10 = v0[44];

  v11 = 0;
  v48 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v11;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v8 &= v8 - 1;
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DF8);
    sub_24F920EC8();
    v13 = sub_24F921008();
    v15 = v0[32];
    v16 = v0[30];
    v17 = (v0[31] + 8);
    if (v10)
    {

      (*v17)(v15, v16);
      v10 = 0;
    }

    else
    {
      v18 = v14;
      v47 = v13;
      (*v17)(v15, v16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_24E615CF4(0, *(v48 + 2) + 1, 1, v48);
      }

      v20 = *(v48 + 2);
      v19 = *(v48 + 3);
      v21 = v47;
      if (v20 >= v19 >> 1)
      {
        v24 = sub_24E615CF4((v19 > 1), v20 + 1, 1, v48);
        v22 = v18;
        v48 = v24;
        v21 = v47;
      }

      else
      {
        v22 = v18;
      }

      v10 = 0;
      *(v48 + 2) = v20 + 1;
      v23 = &v48[16 * v20];
      *(v23 + 4) = v21;
      *(v23 + 5) = v22;
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_34;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v12;
    if (v8)
    {
      goto LABEL_12;
    }
  }

  v28 = v0[42];
  v29 = v0[26];

  v0[24] = *(v29 + v28);
  v0[25] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480);
  sub_24E602068(&qword_27F250740, &unk_27F21E480);
  sub_24E602068(&qword_27F250748, &unk_27F2285F0);
  if (sub_24F92BB98())
  {

    goto LABEL_22;
  }

  v30 = *(v48 + 2);
  if (v30)
  {
    v31 = (v48 + 40);
    do
    {
      v32 = *(v31 - 1);
      v33 = *v31;
      swift_beginAccess();

      sub_24ED7C5F0(v0 + 21, v32, v33);
      swift_endAccess();

      v31 += 2;
      --v30;
    }

    while (v30);
  }

  if (qword_27F2113B8 != -1)
  {
    goto LABEL_39;
  }

LABEL_34:
  v34 = sub_24F9220D8();
  __swift_project_value_buffer(v34, qword_27F39E778);

  v35 = sub_24F9220B8();
  v36 = sub_24F92BD98();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49 = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x253050F40](v48, MEMORY[0x277D837D0]);
    v41 = v40;

    v42 = sub_24E7620D4(v39, v41, &v49);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_24E5DD000, v35, v36, "OverlayHighlightsShelfUpdater received novel challenge IDs: %s, yielding update", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2530542D0](v38, -1, -1);
    MEMORY[0x2530542D0](v37, -1, -1);
  }

  else
  {
  }

  v44 = v0[28];
  v43 = v0[29];
  v45 = v0[27];
  sub_24F92B8B8();
  (*(v44 + 8))(v43, v45);
LABEL_22:
  v0[44] = v10;
  v25 = swift_task_alloc();
  v0[45] = v25;
  *v25 = v0;
  v25[1] = sub_24F7C1780;
  v26 = v0[36];

  return MEMORY[0x2822003E8](v0 + 17, 0, 0, v26);
}

uint64_t sub_24F7C1F3C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_updateStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_updateContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengesStreamUUID;
  v6 = sub_24F91F6B8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OverlayHighlightsShelfUpdater()
{
  result = qword_27F250728;
  if (!qword_27F250728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7C2164()
{
  sub_24F7C22C4(319, &qword_27F21CBB8, MEMORY[0x277D857B8]);
  if (v0 <= 0x3F)
  {
    sub_24F7C22C4(319, &qword_27F250738, MEMORY[0x277D85788]);
    if (v1 <= 0x3F)
    {
      sub_24F91F6B8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24F7C22C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F7C2320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F7C0CA0(a1, v4, v5, v6);
}

uint64_t sub_24F7C23D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F7C132C(a1, v4, v5, v6);
}

uint64_t sub_24F7C2488()
{
  v1 = (type metadata accessor for OverlayHighlightsShelfIntent() - 8);
  v2 = *(*v1 + 80);

  v3 = v0 + ((v2 + 16) & ~v2) + v1[8];

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v29 = *(*(v6 - 8) + 8);
  v30 = *(v6 - 8);
  v29(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle();
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v30 + 48))(v7 + v11, 1, v6))
      {
        v29(v7 + v11, v6);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v30 + 48))(v12 + v13, 1, v6))
      {
        v29(v12 + v13, v6);
      }
    }
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game();
    v29(v14 + v16[18], v6);
    v17 = v16[19];
    if (!(*(v30 + 48))(v14 + v17, 1, v6))
    {
      v29(v14 + v17, v6);
    }

    v18 = v16[21];
    v19 = sub_24F920818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  v21 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
  {

    v23 = type metadata accessor for Game();
    v29(v21 + v23[18], v6);
    v24 = v23[19];
    if (!(*(v30 + 48))(v21 + v24, 1, v6))
    {
      v29(v21 + v24, v6);
    }

    v25 = v23[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F7C2B24(uint64_t a1)
{
  v4 = *(type metadata accessor for OverlayHighlightsShelfIntent() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F7BDB50(a1, v1 + v5, v6);
}

uint64_t sub_24F7C2C30()
{

  return swift_deallocObject();
}

uint64_t sub_24F7C2C68(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E6541E4;

  return sub_24F7BE19C(a1, a2, v6);
}

uint64_t sub_24F7C2D30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250750);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24F7C2E98(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250750) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24E6541E4;

  return sub_24F7BE294(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_24F7C3008(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F7C085C(a1, v4, v5, v6);
}

uint64_t sub_24F7C30BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7C3124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7C318C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7C3250@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_24F4E9558(a2, v8);
      sub_24F7C361C(v8, a3);
      *(a3 + v6[17]) = 0;

      *(a3 + v6[13]) = 1;
      *(a3 + v6[30]) = 0x403A000000000000;
      *(a3 + v6[19]) = 2;
      *(a3 + v6[28]) = 2;
      *(a3 + v6[21]) = 1;
      v13 = 10.0;
      goto LABEL_24;
    }

    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v9 = __swift_project_value_buffer(v6, qword_27F39E610);
      sub_24F4E2488(v9, a3);
      v10 = 0;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v6, qword_27F39E658);
      sub_24F4E2488(v15, a3);
      v10 = 1;
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        sub_24F4E9E44(a2, v8);
        sub_24F7C361C(v8, a3);
      }

      else
      {
        if (qword_27F2112F8 != -1)
        {
          swift_once();
        }

        v14 = __swift_project_value_buffer(v6, qword_27F39E628);
        sub_24F4E2488(v14, a3);
      }
    }

    else
    {
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v11 = __swift_project_value_buffer(v6, qword_27F39E640);
      sub_24F4E2488(v11, a3);
    }

    v10 = 1;
  }

  *(a3 + v6[17]) = v10;
  v16 = sub_24F92CE08();

  *(a3 + v6[13]) = v16 & 1;
  *(a3 + v6[30]) = 0x403A000000000000;
  *(a3 + v6[19]) = 2;
  *(a3 + v6[28]) = 2;
  if (a1 == 4)
  {
    *(a3 + v6[21]) = 2;
    v13 = 8.0;
  }

  else
  {
    v13 = *(a3 + v6[16]);
  }

LABEL_24:
  *(a3 + v6[16]) = v13;
  return result;
}

uint64_t sub_24F7C35A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(v5 + 8);
  v11 = a2 + *(type metadata accessor for AppEventSearchCard() + 60);

  return sub_24F66F8EC(a1, v11, a3, a4, v10, a5);
}

uint64_t sub_24F7C361C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardLayoutMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7C36C4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F7C3740(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7C37F0(uint64_t a1)
{
  type metadata accessor for GameActivityDraftBuilder();
  sub_24F928F28();
  v2 = v10[0];
  swift_beginAccess();
  v3 = *(v10[0] + 16);
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[0] = v3;
    sub_24F7C3A18(&qword_27F212898, type metadata accessor for GameActivityDraft);

    sub_24F91FD78();

    if (*(v2 + 16))
    {

      sub_24F34EC58(v5);

      if (*(v2 + 16))
      {

        sub_24F34ED4C(v6);
      }
    }
  }

  sub_24E7CBB7C(a1 + 24, v9);
  sub_24E612C80(v9, v10);
  type metadata accessor for UpdateChallengePlayersToInviteActionImplementation();
  swift_getWitnessTable();
  v7 = sub_24F1489C4(v10);

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t sub_24F7C3A18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7C3A74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

id sub_24F7C3AFC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress);
  v3 = v2;
  if (v2 == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration) == 2)
    {
      v3 = 0;
      v4 = 1;
    }

    else
    {
      v3 = [objc_allocWithZone(MEMORY[0x277D757E8]) initWithPreferredDuration_];
      [v3 setDelegate_];
      v4 = *(v0 + v1);
    }

    *(v0 + v1) = v3;
    v5 = v3;
    sub_24ED8F464(v4);
  }

  sub_24ED8F454(v2);
  return v3;
}

uint64_t sub_24F7C3BC8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_24F7C648C(v7, v8) & 1;
}

id sub_24F7C3C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselItemStateCoordinator.PageControlTimerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24F7C3CFC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24F9270C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9270B8();
  v7 = MEMORY[0x25304D070](v6, 0.0);
  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  return result;
}

uint64_t sub_24F7C3DFC()
{
  result = sub_24F927648();
  qword_27F250820 = result;
  return result;
}

uint64_t sub_24F7C3E3C()
{
  sub_24F927648();
  v0 = sub_24F927698();

  qword_27F250828 = v0;
  return result;
}

uint64_t sub_24F7C3EA0(uint64_t result, char a2, uint64_t a3, unsigned __int8 a4)
{
  v49 = *(v4 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items);
  v5 = *(v49 + 16);
  if (!v5)
  {
    return result;
  }

  v7 = result;
  v8 = *(a3 + 40);
  if ((v8 | a4))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = *(a3 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  v11 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    goto LABEL_101;
  }

  if (__OFADD__(v5, v11))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  *(inited + 32) = (v5 + v11) % v5;
  *(inited + 40) = v7;
  if (__OFADD__(v7, 1))
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  *(inited + 48) = (v7 + 1) % v5;
  v12 = sub_24F06951C(inited, &v52);
  v5 = v52;
  v45 = v7 + 1;
  v47 = v7 - 1;
  if (a4)
  {
    if (qword_27F211840 == -1)
    {
LABEL_10:
      v13 = qword_27F211848;
      v14 = qword_27F250810;

      if (v13 != -1)
      {
        swift_once();
      }

      v15 = qword_27F250818;

      goto LABEL_17;
    }

LABEL_104:
    swift_once();
    goto LABEL_10;
  }

  if (v8)
  {
    v15 = 0;
  }

  else
  {
    v15 = MEMORY[0x25304D060](v12, 0.15, 0.85, 0.25);
  }

  v14 = 0;
LABEL_17:
  v16 = *(v5 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v52 = MEMORY[0x277D84F90];
    sub_24F45871C(0, v16, 0);
    v18 = 0;
    v17 = v52;
    v48 = v16;
    v46 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_viewWidth;
    v19 = *(v5 + 16);
    do
    {
      if (v18 >= v19)
      {
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v20 = *(v5 + 32 + 8 * v18);
      v21 = *(v49 + 16);
      v22 = 1.0 - v9;
      if (v20 != v7)
      {
        v23 = v21 + v47;
        if (__OFADD__(v21, v47))
        {
          goto LABEL_92;
        }

        if (!v21)
        {
          goto LABEL_93;
        }

        if (v20 == v23 % v21 && a2 == 2)
        {
          v26 = *(v51 + v46) * 0.25;
          v22 = v9;
          goto LABEL_47;
        }

        if (a2 == 1 && v20 == v45 % v21)
        {
          v22 = v9;
        }

        else
        {
          v22 = 0.0;
        }
      }

      if (!a2)
      {
        v27 = 0.0;
        goto LABEL_54;
      }

      v26 = *(v51 + v46) * 0.25;
      if (a2 == 1)
      {
        if (v20 == v7)
        {
          v27 = -(v26 * v9);
          goto LABEL_54;
        }

        if (__OFADD__(v21, v47))
        {
          goto LABEL_99;
        }

        if (!v21)
        {
          goto LABEL_100;
        }

        if (v20 == (v21 + v47) % v21)
        {
          v27 = -v26;
          goto LABEL_54;
        }

        v28 = v45 % v21;
        v26 = (1.0 - v9) * v26;
        goto LABEL_51;
      }

      if (v20 == v7)
      {
        v27 = v9 * v26;
        goto LABEL_54;
      }

      v23 = v21 + v47;
      if (__OFADD__(v21, v47))
      {
        goto LABEL_94;
      }

      if (!v21)
      {
        goto LABEL_95;
      }

LABEL_47:
      if (v20 == v23 % v21)
      {
        v27 = (v9 + -1.0) * v26;
        goto LABEL_54;
      }

      v28 = v45 % v21;
LABEL_51:
      if (v20 == v28)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0.0;
      }

LABEL_54:
      v52 = v17;
      v30 = *(v17 + 2);
      v29 = *(v17 + 3);

      if (v30 >= v29 >> 1)
      {
        sub_24F45871C((v29 > 1), v30 + 1, 1);
        v17 = v52;
      }

      *(v17 + 2) = v30 + 1;
      v31 = &v17[48 * v30];
      *(v31 + 4) = v20;
      v31[40] = v20 == v7;
      v31[41] = v20 == v7;
      *(v31 + 6) = v22;
      *(v31 + 7) = v14;
      *(v31 + 8) = v27;
      *(v31 + 9) = v15;
      v19 = *(v5 + 16);
      if (v18 >= v19)
      {
        goto LABEL_89;
      }

      ++v18;
    }

    while (v48 != v18);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v17;

  sub_24F9230A8();
  v32 = *(v5 + 16);
  if (v32)
  {
    v52 = MEMORY[0x277D84F90];
    sub_24F4586FC(0, v32, 0);
    v33 = 0;
    v34 = v52;
    v35 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_isDragging;
    v36 = *(v5 + 16);
    v9 = 1.0;
    while (1)
    {
      if (v33 >= v36)
      {
        goto LABEL_90;
      }

      v37 = *(v5 + 8 * v33 + 32);
      if (*(v51 + v35) == 1)
      {
        break;
      }

      if (a2)
      {
        v38 = *(v49 + 16);
        if (a2 == 1)
        {
          if (__OFADD__(v38, v47))
          {
            goto LABEL_97;
          }

          if (!v38)
          {
            goto LABEL_98;
          }

          if (v37 == (v38 + v47) % v38)
          {
            break;
          }
        }

        else
        {
          if (!v38)
          {
            goto LABEL_96;
          }

          if (v37 == v45 % v38)
          {
            break;
          }
        }
      }

      if (v37 != v7)
      {
        v40 = 0;
        goto LABEL_76;
      }

      v39 = &qword_27F250828;
      if (qword_27F211858 != -1)
      {
        swift_once();
        v39 = &qword_27F250828;
      }

LABEL_75:
      v40 = *v39;

LABEL_76:
      if ((v37 != v7) | *(v51 + v35) & 1)
      {
        v41 = 0.0;
      }

      else
      {
        v41 = 1.0;
      }

      v52 = v34;
      v43 = *(v34 + 2);
      v42 = *(v34 + 3);
      if (v43 >= v42 >> 1)
      {
        sub_24F4586FC((v42 > 1), v43 + 1, 1);
        v34 = v52;
      }

      *(v34 + 2) = v43 + 1;
      v44 = &v34[32 * v43];
      *(v44 + 4) = v37;
      v44[40] = v37 == v7;
      *(v44 + 6) = v41;
      *(v44 + 7) = v40;
      v36 = *(v5 + 16);
      if (v33 >= v36)
      {
        goto LABEL_91;
      }

      if (v32 == ++v33)
      {

        goto LABEL_86;
      }
    }

    if (qword_27F211850 != -1)
    {
      swift_once();
    }

    v39 = &qword_27F250820;
    goto LABEL_75;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_86:
  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v34;

  sub_24F9230A8();
}

void sub_24F7C4598()
{
  v1 = v0;
  type metadata accessor for VideoPlaybackCoordinator();
  sub_24F928FD8();
  sub_24F92A758();
  v2 = v11[0];
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items);
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_12:

    return;
  }

  v5 = 0;
  v9 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_verticalScrollState;
  while (v5 < *(v3 + 16))
  {
    v7 = *(v3 + 32 + 8 * v5);
    if (!v7)
    {
      goto LABEL_6;
    }

    if (*(v1 + v9) > 1u)
    {
      swift_retain_n();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_24F923098();

      if (v5 == v11[0])
      {
        v8 = OBJC_IVAR____TtC12GameStoreKit5Video_playbackId;
        swift_beginAccess();
        sub_24F7A58DC(v7 + v8, v11);
        sub_24E601704(v11, &qword_27F235830);
        swift_endAccess();
        goto LABEL_5;
      }
    }

    v6 = OBJC_IVAR____TtC12GameStoreKit5Video_playbackId;
    sub_24E65864C(v7 + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v10);
    swift_beginAccess();
    sub_24ED7D5A0(v11, v10);
    sub_24E6585F8(v11);
    swift_endAccess();
    sub_24EEC6CF8(v7 + v6);
LABEL_5:
    sub_24EEC6054();
    sub_24EEC66B8();

LABEL_6:
    if (v4 == ++v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_24F7C47AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_24F92CA08();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_24F92B7F8();
  v4[6] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_24F7C48A0, v7, v6);
}

uint64_t sub_24F7C48A0()
{
  v1 = sub_24F92D1A8();
  v3 = v2;
  sub_24F92CFB8();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_24F7C4980;

  return sub_24E70C87C(v1, v3, 0, 0, 1);
}

uint64_t sub_24F7C4980()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_24F7C4B90;
  }

  else
  {
    v8 = sub_24F7C4B18;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24F7C4B18()
{

  sub_24F7C4BFC(0.0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7C4B90()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24F7C4BFC(double a1)
{
  if (*(*(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items) + 16))
  {
    if (*(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_isDragging) & 1) != 0 || *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_verticalScrollState) || (v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration), v2 == 2) || (v2 & 1) == 0 || (v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration + 8), (sub_24F7C5268()))
    {

      sub_24F7C5030(0);
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimerIndex);
      v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimerIndex + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      if ((v6 & 1) != 0 || v5 != v18[0])
      {
        v8 = v4 + a1;
        v9 = swift_allocObject();
        swift_weakInit();
        v18[4] = sub_24F7C6DC8;
        v18[5] = v9;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 1107296256;
        v18[2] = sub_24ECAEFC8;
        v18[3] = &block_descriptor_178;
        v10 = _Block_copy(v18);
        v11 = objc_opt_self();

        v12 = [v11 timerWithTimeInterval:0 repeats:v10 block:v8];
        _Block_release(v10);

        v7 = v12;
        sub_24F7C5030(v12);
        v13 = [objc_opt_self() currentRunLoop];
        [v13 addTimer:v7 forMode:*MEMORY[0x277CBE738]];

        v14 = sub_24F7C3AFC();
        if (v14)
        {
          v15 = v14;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_24F923098();

          [v15 setDuration:v18[0] forPage:v8];
        }

        v16 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress;
        [*(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress) resumeTimer];
        v17 = *(v1 + v16);
        if (v17)
        {
          [v17 setCurrentProgress_];

          sub_24ED8F464(v17);
          return;
        }
      }

      else
      {
        v7 = sub_24F7C3AFC();
        [v7 resumeTimer];
      }
    }
  }
}

uint64_t sub_24F7C4F38@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

void sub_24F7C4FB8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  sub_24F7C4598();
}

void sub_24F7C5030(void *a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimer;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimer);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimer) = a1;
  v4 = a1;
  [v3 invalidate];
  v5 = *(v1 + v2);
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v6 = v8;
  }

  else
  {

    v6 = 0;
  }

  v7 = v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimerIndex;
  *v7 = v6;
  *(v7 + 8) = v5 == 0;
}

uint64_t sub_24F7C5110()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (__OFADD__(*&v4[0], 1))
  {
    __break(1u);
  }

  else
  {
    v2 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items) + 16);
    if (v2)
    {
      v3 = (*&v4[0] + 1) % v2;
      v5 = 0;
      memset(v4, 0, sizeof(v4));
      v6 = 1;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24F9230A8();
      sub_24F7C4598();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      return sub_24F7C3EA0(v3, 1, v4, 1u);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F7C5268()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250970);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v38 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_24F923098();

  if ((aBlock[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (aBlock[0] >= *(v10 + 16))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_7;
  }

  v12 = *(v10 + 8 * aBlock[0] + 32);
  if (!v12)
  {
    v16 = v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex;
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_videoSubscriptions;
    swift_beginAccess();
    *(v2 + v17) = MEMORY[0x277D84FA0];

    KeyPath = *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer) = 0;
    [KeyPath invalidate];
    v15 = 0;
    goto LABEL_14;
  }

  type metadata accessor for VideoPlaybackCoordinator();
  sub_24F928FD8();

  sub_24F92A758();
  KeyPath = aBlock[0];
  sub_24E65864C(v12 + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, aBlock);
  v1 = sub_24EEC9884(aBlock);
  sub_24E601704(aBlock, &qword_27F235830);
  if (!v1)
  {
LABEL_13:
    v18 = v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex;
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_videoSubscriptions;
    swift_beginAccess();
    *(v2 + v19) = MEMORY[0x277D84FA0];

    v20 = *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer) = 0;
    [v20 invalidate];

    v15 = 0;
    KeyPath = v20;
    goto LABEL_14;
  }

  v13 = v1 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_configuration;
  if (*(v13 + *(type metadata accessor for VideoConfiguration() + 36)) != 1)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (qword_27F2110D0 != -1)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((sub_24F2DAE78() & 1) == 0)
  {
    goto LABEL_12;
  }

  v44 = *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex);
  v42 = v7;
  v43 = (v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex);
  v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if ((v14 & 1) != 0 || v44 != aBlock[0])
  {
    v22 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_videoSubscriptions;
    swift_beginAccess();
    v44 = v22;
    *(v2 + v22) = MEMORY[0x277D84FA0];

    v23 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer;
    v24 = *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer) = 0;
    [v24 invalidate];

    v25 = *(v1 + 24);
    if (v25)
    {
      aBlock[0] = *(v25 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer__events);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250980);
      v39 = v23;
      sub_24E602068(&qword_27F21FEB8, &unk_27F250980);
      v41 = sub_24F9230C8();
      aBlock[0] = v41;
      sub_24E74EC40();
      v40 = sub_24F92BEF8();
      aBlock[6] = v40;
      v26 = sub_24F92BEB8();
      (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
      v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC0);
      sub_24E602068(&unk_27F250990, &qword_27F21FEC0);
      sub_24EA9B900();
      v23 = v39;
      sub_24F923118();
      sub_24E601704(v5, &qword_27F21F468);

      swift_allocObject();
      swift_weakInit();
      sub_24E602068(&unk_27F2509A0, &unk_27F250970);
      sub_24F923148();

      (*(v42 + 8))(v9, v6);
      swift_beginAccess();
      sub_24F922F58();
      swift_endAccess();

      v27 = *(v2 + v23);
      *(v2 + v23) = 0;
      [v27 invalidate];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v28 = v43;
    *v43 = aBlock[0];
    *(v28 + 8) = 0;
    v29 = sub_24F7C3AFC();
    [v29 pauseTimer];

    v30 = objc_opt_self();
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    aBlock[4] = sub_24F7C6E30;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24ECAEFC8;
    aBlock[3] = &block_descriptor_44_0;
    v34 = _Block_copy(aBlock);

    v15 = 1;
    v35 = [v30 scheduledTimerWithTimeInterval:1 repeats:v34 block:0.1];
    _Block_release(v34);
    v36 = *(v2 + v23);
    *(v2 + v23) = v35;
    v37 = v35;
    [v36 invalidate];

    KeyPath = v36;
  }

  else
  {

    v15 = 1;
  }

LABEL_14:

  return v15;
}

uint64_t sub_24F7C5AE0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_isDragging) & 1) == 0 && !*(Strong + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_verticalScrollState))
    {
      v1 = *(Strong + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration);
      if (v1 != 2 && (v1 & 1) != 0)
      {
        v2 = sub_24F7C5110();
        sub_24F7C4BFC(v2, 0.0);
      }
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  sub_24F7C5030(0);
}

uint64_t sub_24F7C5BB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v14[-v6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_isDragging) & 1) == 0 && !*(Strong + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_verticalScrollState))
    {
      v9 = *(Strong + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration);
      if (v9 != 2 && (v9 & 1) != 0)
      {
        sub_24F7C6E38(a1, v7);
        v10 = type metadata accessor for VideoPlayer.Event();
        if ((*(*(v10 - 8) + 48))(v7, 1, v10) != 1)
        {
          sub_24F7C6E38(v7, v4);
          if (swift_getEnumCaseMultiPayload() != 2)
          {

            sub_24F7C6EA8(v4);
            return sub_24E601704(v7, &qword_27F21FEC8);
          }

          v11 = sub_24F7C5110();
          sub_24F7C4BFC(v11, 0.0);
        }

        return sub_24E601704(v7, &qword_27F21FEC8);
      }
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex;
    *v13 = 0;
    *(v13 + 8) = 1;
  }

  return result;
}

void sub_24F7C5DAC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 24);
    if (v1)
    {
      v2 = v1;

      v3 = [v2 currentItem];

      if (v3)
      {
        [v3 duration];
        Seconds = CMTimeGetSeconds(&v9);
        [v3 currentTime];
        v5 = CMTimeGetSeconds(&v9) / Seconds;
        if (v5 > 0.0)
        {
          v6 = v5;
        }

        else
        {
          v6 = 0.0;
        }

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          v7 = sub_24F7C3AFC();

          if (v7)
          {
            *&v8 = v6;
            [v7 setCurrentProgress_];
          }
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_24F7C5F20()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__selectedIndex;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC08);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24ED8F464(*(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress));

  v3 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__backgroundStates;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250960);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__overlayStates;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250968);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_layoutDirection;
  v8 = sub_24F923F78();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return v0;
}

uint64_t sub_24F7C60CC()
{
  sub_24F7C5F20();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeroCarouselItemStateCoordinator()
{
  result = qword_27F2508A0;
  if (!qword_27F2508A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7C6178()
{
  sub_24F7C6370();
  if (v0 <= 0x3F)
  {
    sub_24EEFCB4C(319, &qword_27F2508B8, &qword_27F2508C0);
    if (v1 <= 0x3F)
    {
      sub_24EEFCB4C(319, &qword_27F2508C8, &unk_27F2508D0);
      if (v2 <= 0x3F)
      {
        sub_24F923F78();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24F7C6370()
{
  if (!qword_27F2508B0)
  {
    v0 = sub_24F9230B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2508B0);
    }
  }
}

unint64_t sub_24F7C6438()
{
  result = qword_27F250940;
  if (!qword_27F250940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250940);
  }

  return result;
}

uint64_t sub_24F7C648C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((*(a1 + 8) ^ *(a2 + 8)) & 1) != 0 || ((*(a1 + 9) ^ *(a2 + 9)) & 1) != 0)
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v14 = *(a2 + 16);
  if (v5 != *&v14)
  {
    return 0;
  }

  if (v6)
  {
    if (!*(&v14 + 1))
    {
      return 0;
    }

    v7 = a1;
    v8 = a2;

    v9 = sub_24F927688();
    sub_24E601704(&v14, &unk_27F250950);
    a1 = v7;
    a2 = v8;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(&v14 + 1))
  {
    return 0;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a2 + 32);
  if (v10 == *&v13)
  {
    if (v11)
    {
      if (*(&v13 + 1))
      {

        v12 = sub_24F927688();
        sub_24E601704(&v13, &qword_27F250948);
        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!*(&v13 + 1))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24F7C65D4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, double a7, double a8)
{
  result = 0;
  if (a1 == a4 && ((a2 ^ a5) & 1) == 0)
  {
    if (a7 == a8)
    {
      if (a3)
      {
        if (a6)
        {

          v10 = sub_24F927688();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!a6)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_24F7C6654(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v50 = a4;
  v53 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v46 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250968);
  v10 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250960);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  v49 = *a3;
  v17 = a3[1];
  v47 = a3[2];
  v48 = v17;
  v46 = a3[3];
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress) = 1;
  v18 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_pageControlTimerDelegate;
  *(v5 + v18) = [objc_allocWithZone(type metadata accessor for HeroCarouselItemStateCoordinator.PageControlTimerDelegate()) init];
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_isDragging) = 0;
  v19 = (v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_dragState);
  memset(v56, 0, 40);
  v56[40] = 1;
  *(v19 + 25) = *&v56[25];
  v20 = *&v56[16];
  *v19 = *v56;
  v19[1] = v20;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_viewWidth) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_verticalScrollState) = 0;
  v21 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__backgroundStates;
  v22 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2508C0);
  sub_24F923058();
  v23 = v5 + v21;
  v24 = v22;
  (*(v14 + 32))(v23, v16, v13);
  v25 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__overlayStates;
  v55 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2508D0);
  sub_24F923058();
  (*(v10 + 32))(v5 + v25, v12, v52);
  v26 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_layoutDirection;
  v27 = *MEMORY[0x277CDFA88];
  v28 = sub_24F923F78();
  (*(*(v28 - 8) + 104))(v5 + v26, v27, v28);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimer) = 0;
  v29 = v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimerIndex;
  *v29 = 0;
  *(v29 + 8) = 1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_videoSubscriptions) = MEMORY[0x277D84FA0];
  v30 = v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex;
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer) = 0;
  v31 = v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_visibleHeaderHeight;
  *v31 = 0;
  *(v31 + 8) = 1;
  swift_beginAccess();
  v54 = v53;
  sub_24F923058();
  swift_endAccess();
  if (!(a2 >> 62))
  {
    v32 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_12:

    v37 = MEMORY[0x277D84F90];
LABEL_13:
    *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items) = v37;
    v38 = (v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration);
    v39 = v48;
    *v38 = v49;
    v38[1] = v39;
    v40 = v46;
    v38[2] = v47;
    v38[3] = v40;
    *(v5 + 16) = v50;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24F923098();

    sub_24F7C3EA0(v55, 1, v56, 0);
    sub_24F7C4598();
    v41 = sub_24F92B858();
    v42 = v51;
    (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
    sub_24F92B7F8();

    v43 = sub_24F92B7E8();
    v44 = swift_allocObject();
    v45 = MEMORY[0x277D85700];
    v44[2] = v43;
    v44[3] = v45;
    v44[4] = v5;
    sub_24F1D3DA4(0, 0, v42, &unk_24FA2B3A0, v44);

    return v5;
  }

  v32 = sub_24F92C738();
  if (!v32)
  {
    goto LABEL_12;
  }

LABEL_3:
  v55 = v24;
  result = sub_24F92C978();
  if ((v32 & 0x8000000000000000) == 0)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v34 = 0;
      do
      {
        v35 = v34 + 1;
        MEMORY[0x253052270]();

        swift_unknownObjectRelease();
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        v34 = v35;
      }

      while (v32 != v35);
    }

    else
    {
      v36 = 32;
      do
      {

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        v36 += 8;
        --v32;
      }

      while (v32);
    }

    v37 = v55;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}