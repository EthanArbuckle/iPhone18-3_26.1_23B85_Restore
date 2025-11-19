double SearchRequest.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B0D21020(a1, &v6);
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

double sub_1B0D1BCD8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B0D21020(a1, &v6);
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

uint64_t sub_1B0D1BD34(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s20IMAPSearchIndexerXPC13SearchRequestO21__derived_enum_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

unint64_t sub_1B0D1BD80()
{
  v1 = *v0;
  v2 = 0x6552686372616573;
  v3 = 0x646564756C637865;
  if (v1 != 4)
  {
    v3 = 0x6C616E41746E6573;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000013;
  if (v1 == 1)
  {
    v4 = 0x655270756B6F6F6CLL;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1B0D1BE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0D2202C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0D1BE84()
{
  sub_1B0D21D8C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1BEC0()
{
  sub_1B0D21D8C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1BEFC()
{
  sub_1B0D21E34();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1BF38()
{
  sub_1B0D21E34();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1BF74()
{
  sub_1B0D21EDC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1BFB0()
{
  sub_1B0D21EDC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1BFEC()
{
  sub_1B0D21E88();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1C028()
{
  sub_1B0D21E88();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1C064()
{
  sub_1B0D21F84();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1C0A0()
{
  sub_1B0D21F84();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1C0DC()
{
  sub_1B0D21FD8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1C118()
{
  sub_1B0D21FD8();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1C154()
{
  sub_1B0D21DE0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1C190()
{
  sub_1B0D21DE0();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1C1CC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v25 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 24 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    v17 = *(*(v3 + 56) + 8 * v12);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = sub_1B0D293C0(v15, v14, v16);
    v20 = v19;

    if ((v20 & 1) == 0 || (v21 = *(*(a2 + 56) + 8 * v18), v22 = *(v21 + 16), v22 != *(v17 + 16)))
    {
LABEL_26:

      return 0;
    }

    if (v22)
    {
      v23 = v21 == v17;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = 32;
      while (v22)
      {
        if (*(v21 + v24) != *(v17 + v24))
        {
          goto LABEL_26;
        }

        v24 += 4;
        if (!--v22)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_29;
    }

LABEL_6:

    v7 = v25;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t SearchResponse.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6978, &qword_1B0EEA8C8);
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6980, &qword_1B0EEA8D0);
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6988, &qword_1B0EEA8D8);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6990, &qword_1B0EEA8E0);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6998, &qword_1B0EEA8E8);
  v48 = *(v17 - 8);
  v49 = v17;
  v18 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E69A0, &qword_1B0EEA8F0);
  v47 = *(v21 - 8);
  v22 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E69A8, &unk_1B0EEA8F8);
  v62 = *(v66 - 8);
  v25 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v27 = &v47 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D21D8C();
  v61 = v27;
  sub_1B0E46D48();
  v29 = *v2;
  v30 = v2[1];
  v31 = *(v2 + 32);
  if (v31 > 2)
  {
    if (v31 == 3)
    {
      LOBYTE(v63) = 3;
      sub_1B0D21E88();
      v42 = v52;
      v36 = v66;
      v38 = v61;
      sub_1B0E468B8();
      v63 = v29;
      v64 = v30;
      v65 = *(v2 + 1);
      sub_1B0D1DF64();
      v43 = v54;
      sub_1B0E46958();
      (*(v53 + 8))(v42, v43);
    }

    else
    {
      v36 = v66;
      if (v31 != 4)
      {
        LOBYTE(v63) = 5;
        sub_1B0D21DE0();
        v45 = v55;
        v46 = v61;
        sub_1B0E468B8();
        (*(v57 + 8))(v45, v58);
        return (*(v62 + 8))(v46, v36);
      }

      LOBYTE(v63) = 4;
      sub_1B0D21E34();
      v37 = v56;
      v38 = v61;
      sub_1B0E468B8();
      v63 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3000, &unk_1B0EA07F0);
      sub_1B0D20A94();
      v39 = v60;
      sub_1B0E46958();
      (*(v59 + 8))(v37, v39);
    }
  }

  else
  {
    if (!*(v2 + 32))
    {
      LOBYTE(v63) = 0;
      sub_1B0D21FD8();
      v40 = v66;
      v41 = v61;
      sub_1B0E468B8();
      v63 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3010, &qword_1B0EA0800);
      sub_1B0D25A74(&qword_1EB6E69D0, sub_1B0D20A40, sub_1B0D20A94);
      sub_1B0E46958();
      (*(v47 + 8))(v24, v21);
      return (*(v62 + 8))(v41, v40);
    }

    if (v31 == 1)
    {
      LOBYTE(v63) = 1;
      sub_1B0D21F84();
      v32 = v66;
      v33 = v61;
      sub_1B0E468B8();
      v63 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3010, &qword_1B0EA0800);
      sub_1B0D25A74(&qword_1EB6E69D0, sub_1B0D20A40, sub_1B0D20A94);
      v34 = v49;
      sub_1B0E46958();
      (*(v48 + 8))(v20, v34);
      return (*(v62 + 8))(v33, v32);
    }

    LOBYTE(v63) = 2;
    sub_1B0D21EDC();
    v36 = v66;
    v38 = v61;
    sub_1B0E468B8();
    v63 = v29;
    v64 = v30;
    sub_1B0D21F30();
    v44 = v51;
    sub_1B0E468F8();
    (*(v50 + 8))(v16, v44);
  }

  return (*(v62 + 8))(v38, v36);
}

double SearchResponse.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0D2224C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1B0D1CC08@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0D2224C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1B0D1CC68(uint64_t a1, int64x2_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s20IMAPSearchIndexerXPC14SearchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s20IMAPSearchIndexerXPC13SearchRequestO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 40);
  if (v6 <= 1)
  {
    if (!*(a1 + 40))
    {
      if (*(a2 + 40))
      {
        return 0;
      }

      v18 = *(a2 + 8);
      v17 = *(a2 + 16);
      v19 = *a2;
      v20 = [result uniqueIdentifier];
      v21 = sub_1B0E44AD8();
      v23 = v22;

      v24 = [v19 uniqueIdentifier];
      v25 = sub_1B0E44AD8();
      v27 = v26;

      if (v21 == v25 && v23 == v27)
      {

        if (v5 != v18)
        {
          return 0;
        }
      }

      else
      {
        v29 = sub_1B0E46A78();

        if ((v29 & 1) == 0 || v5 != v18)
        {
          return 0;
        }
      }

      return (sub_1B0D19C24(v4, v17) & 1) != 0;
    }

    if (*(a2 + 40) == 1)
    {
      v38 = *a2;

      return sub_1B045202C(result, v38);
    }

    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  v9 = *(a1 + 32);
  if (v6 == 2)
  {
    if (*(a2 + 40) == 2)
    {
      v30 = *a2;
      v31 = *(result + 16);
      if (v31 == *(*a2 + 16))
      {
        v32 = *(a2 + 24);
        v33 = *(a2 + 28);
        v34 = *(a2 + 32);
        if (v31 && v30 != result)
        {
          v35 = (result + 32);
          v36 = (v30 + 32);
          while (*v35 == *v36)
          {
            ++v35;
            ++v36;
            if (!--v31)
            {
              goto LABEL_36;
            }
          }

          return 0;
        }

LABEL_36:
        if (v5 == *(a2 + 8) && v4 == *(a2 + 16) || (sub_1B0E46A78() & 1) != 0)
        {
          if (v8)
          {
            if ((v33 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            result = 0;
            if ((v33 & 1) != 0 || v7 != v32)
            {
              return result;
            }
          }

          return v9 == v34;
        }
      }
    }

    return 0;
  }

  v10 = v7 | (v8 << 32) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 40);
  if (v6 != 3)
  {
    if (v4 | v5 | result | v9 | v10)
    {
      if (*(a2 + 40) != 4)
      {
        return 0;
      }

      if (*a2 != 1)
      {
        return 0;
      }

      v37 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)))
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 40) != 4)
      {
        return 0;
      }

      v39 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (*&vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL)) | *a2)
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 40) != 3)
  {
    return 0;
  }

  v11 = *a2;
  v12 = *(result + 16);
  if (v12 != *(*a2 + 16))
  {
    return 0;
  }

  v13 = *(a2 + 24);
  if (v12)
  {
    v14 = v11 == result;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
LABEL_14:
    if (v5 == *(a2 + 8) && v4 == *(a2 + 16) || (sub_1B0E46A78() & 1) != 0)
    {

      return sub_1B0D19BC8(v10, v13);
    }

    return 0;
  }

  v15 = (result + 32);
  v16 = (v11 + 32);
  while (v12)
  {
    if (*v15 != *v16)
    {
      return 0;
    }

    ++v15;
    ++v16;
    if (!--v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void _s20IMAPSearchIndexerXPC015MessageToSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 40);
  if (v6 >> 6)
  {
    if (v6 >> 6 == 1)
    {
      v16[0] = v4;
      v16[1] = v3;
      v16[2] = v5;
      v17 = *(a1 + 24);
      v18 = v6 & 0x3F;
      v7 = *(a2 + 40);
      if ((v7 & 0xC0) == 0x40)
      {
        v8 = *(a2 + 32);
        v9 = *(a2 + 16);
        v13[0] = *a2;
        v13[1] = v9;
        v14 = v8;
        v15 = v7 & 0x3F;
        _s20IMAPSearchIndexerXPC13SearchRequestO21__derived_enum_equalsySbAC_ACtFZ_0(v16, v13);
      }
    }

    else if ((*(a2 + 40) & 0xC0) == 0x80)
    {
      v12 = *a2;

      _s20IMAPSearchIndexerXPC18CredentialResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v4, v12);
    }
  }

  else if (*(a2 + 40) <= 0x3Fu)
  {
    v10 = *a2;
    if (v5)
    {
      v11 = v4 == *a2;
    }

    else if (!(*(a2 + 16) & 1 | (v4 != *a2)))
    {
      sub_1B0D19D4C(v3, *(a2 + 8));
    }
  }
}

unint64_t sub_1B0D1D15C()
{
  result = qword_1EB6DC928;
  if (!qword_1EB6DC928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC928);
  }

  return result;
}

unint64_t sub_1B0D1D1C0()
{
  result = qword_1EB6DC8F8;
  if (!qword_1EB6DC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8F8);
  }

  return result;
}

unint64_t sub_1B0D1D214()
{
  result = qword_1EB6DC558;
  if (!qword_1EB6DC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC558);
  }

  return result;
}

unint64_t sub_1B0D1D268()
{
  result = qword_1EB6DC940;
  if (!qword_1EB6DC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC940);
  }

  return result;
}

unint64_t sub_1B0D1D2BC()
{
  result = qword_1EB6DC650;
  if (!qword_1EB6DC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC650);
  }

  return result;
}

unint64_t sub_1B0D1D310()
{
  result = qword_1EB6DC910;
  if (!qword_1EB6DC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC910);
  }

  return result;
}

unint64_t sub_1B0D1D364()
{
  result = qword_1EB6DC6D8;
  if (!qword_1EB6DC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6D8);
  }

  return result;
}

uint64_t _s20IMAPSearchIndexerXPC14SearchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t result, int64x2_t *a2)
{
  v3 = *a2;
  v4 = *result;
  v5 = *(result + 32);
  v6 = a2->i64[0];
  v7 = a2[2].u8[0];
  if (v5 <= 2)
  {
    if (*(result + 32))
    {
      if (v5 == 1)
      {
        if (v7 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_21;
      }

      if (v7 == 2)
      {
        if (v4.i64[0])
        {
          v16 = v3.i64[1];
          if (v6)
          {
            v19 = *(result + 8) >> 64;
            v17 = v6;
            if (sub_1B03B6298(v4.i64[0], v6))
            {
              v18 = sub_1B03B6298(v19, v16);
              sub_1B0911DE0(v17);

              if (v18)
              {
                goto LABEL_37;
              }
            }

            else
            {
              sub_1B0911DE0(v17);
            }
          }

          else
          {
            sub_1B0911DE0(0);
          }
        }

        else if (!v6)
        {
          sub_1B0911DE0(0);
LABEL_37:
          v14 = 1;
          return v14 & 1;
        }
      }
    }

    else if (!a2[2].i8[0])
    {
LABEL_21:

      return sub_1B0D1C1CC(v4.i64[0], v6);
    }

LABEL_40:
    v14 = 0;
    return v14 & 1;
  }

  if (v5 == 3)
  {
    if (v7 == 3)
    {
      v14 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v4, v3), vceqq_s64(*(result + 16), a2[1]))));
      return v14 & 1;
    }

    goto LABEL_40;
  }

  if (v5 != 4)
  {
    if (v7 != 5 || a2[1].i64[1] | a2[1].i64[0] | v6 | v3.i64[1])
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v7 != 4)
  {
    goto LABEL_40;
  }

  v8 = *(v4.i64[0] + 16);
  if (v8 != *(v6 + 16))
  {
    goto LABEL_40;
  }

  if (!v8 || v6 == v4.i64[0])
  {
    goto LABEL_37;
  }

  v9 = (v4.i64[0] + 32);
  v10 = (v6 + 32);
  while (v8)
  {
    v12 = *v9++;
    v11 = v12;
    v13 = *v10++;
    v14 = v11 == v13;
    if (v14)
    {
      v15 = v8 == 1;
    }

    else
    {
      v15 = 1;
    }

    --v8;
    if (v15)
    {
      return v14 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s20IMAPSearchIndexerXPC017MessageFromSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2].u8[0];
  v5 = v4 >> 6;
  if (v4 >> 6 <= 1)
  {
    if (v5)
    {
      v14[0] = *a1;
      v14[1] = v3;
      v15 = v4 & 0x3F;
      v10 = a2[2].i8[0];
      if ((v10 & 0xC0) == 0x40)
      {
        v11 = a2[1];
        v12[0] = *a2;
        v12[1] = v11;
        v13 = v10 & 0x3F;
        v7 = _s20IMAPSearchIndexerXPC14SearchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v14, v12);
        return v7 & 1;
      }
    }

    else if (a2[2].u8[0] <= 0x3Fu)
    {
      v6 = (a2->i32[0] ^ v2.i32[0]);
      v7 = a2->i8[0] == v2.i8[0];
      return v7 & 1;
    }

LABEL_18:
    v7 = 0;
    return v7 & 1;
  }

  if (v5 != 2)
  {
    if (a2[2].u8[0] >= 0xC0u)
    {
      v7 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v2, *a2), vceqq_s64(v3, a2[1]))));
      return v7 & 1;
    }

    goto LABEL_18;
  }

  if ((a2[2].i8[0] & 0xC0) != 0x80)
  {
    goto LABEL_18;
  }

  if (v2.i64[0] == a2->i64[0] && v2.i64[1] == a2->i64[1])
  {
    v7 = 1;
    return v7 & 1;
  }

  return sub_1B0E46A78();
}

uint64_t sub_1B0D1D6D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

double sub_1B0D1D7E4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C30, &qword_1B0EED9C8);
  v51 = *(v47 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v47);
  *&v53 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C38, &qword_1B0EED9D0);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C40, &qword_1B0EED9D8);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C48, &unk_1B0EED9E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v20);
  sub_1B0D1D15C();
  v21 = v54;
  sub_1B0E46D18();
  if (v21)
  {
    goto LABEL_14;
  }

  v22 = v53;
  v46 = v15;
  *&v54 = v18;
  v23 = sub_1B0E468A8();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 3) : (v26 = 1), v26))
  {
    v27 = sub_1B0E46338();
    swift_allocError();
    v28 = v14;
    v30 = v29;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0) + 48);
    *v30 = &type metadata for MessageToSearchIndexer;
    v32 = v54;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v46 + 8))(v32, v28);
    swift_unknownObjectRelease();
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(v59);
    return result;
  }

  if (*(v23 + 32))
  {
    if (v25 == 1)
    {
      LOBYTE(v55) = 1;
      sub_1B0D1D268();
      v33 = v54;
      sub_1B0E467F8();
      v34 = v46;
      sub_1B0D25F6C();
      v35 = v49;
      sub_1B0E46868();
      (*(v50 + 8))(v9, v35);
      (*(v34 + 8))(v33, v14);
      swift_unknownObjectRelease();
      v53 = v56;
      v54 = v55;
      v40 = v57;
      v41 = v58 | 0x40;
      v42 = v52;
    }

    else
    {
      LOBYTE(v55) = 2;
      sub_1B0D1D1C0();
      sub_1B0E467F8();
      v42 = v52;
      v37 = v46;
      sub_1B0D25F18();
      v38 = v47;
      sub_1B0E46868();
      (*(v51 + 8))(v22, v38);
      (*(v37 + 8))(v54, v14);
      swift_unknownObjectRelease();
      v40 = 0;
      *&v43 = v55;
      v54 = v43;
      v53 = 0u;
      v41 = 0x80;
    }
  }

  else
  {
    LOBYTE(v55) = 0;
    sub_1B0D1D310();
    v36 = v54;
    sub_1B0E467F8();
    sub_1B0D25FC0();
    sub_1B0E46868();
    (*(v48 + 8))(v13, v10);
    (*(v46 + 8))(v36, v14);
    swift_unknownObjectRelease();
    v40 = 0;
    v41 = 0;
    v53 = v56;
    v54 = v55;
    v42 = v52;
  }

  __swift_destroy_boxed_opaque_existential_0(v59);
  v44 = v53;
  result = *&v54;
  *v42 = v54;
  *(v42 + 16) = v44;
  *(v42 + 32) = v40;
  *(v42 + 40) = v41;
  return result;
}

unint64_t sub_1B0D1DEBC()
{
  result = qword_1EB6DC8C0;
  if (!qword_1EB6DC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8C0);
  }

  return result;
}

unint64_t sub_1B0D1DF10()
{
  result = qword_1EB6DC878;
  if (!qword_1EB6DC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC878);
  }

  return result;
}

unint64_t sub_1B0D1DF64()
{
  result = qword_1EB6E6850;
  if (!qword_1EB6E6850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6850);
  }

  return result;
}

unint64_t sub_1B0D1DFC8()
{
  result = qword_1EB6DC890;
  if (!qword_1EB6DC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC890);
  }

  return result;
}

unint64_t sub_1B0D1E01C()
{
  result = qword_1EB6E6858;
  if (!qword_1EB6E6858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6858);
  }

  return result;
}

unint64_t sub_1B0D1E070()
{
  result = qword_1EB6DC8D8;
  if (!qword_1EB6DC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8D8);
  }

  return result;
}

unint64_t sub_1B0D1E0C4()
{
  result = qword_1EB6E6860;
  if (!qword_1EB6E6860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6860);
  }

  return result;
}

unint64_t sub_1B0D1E118()
{
  result = qword_1EB6DC8A8;
  if (!qword_1EB6DC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8A8);
  }

  return result;
}

unint64_t sub_1B0D1E16C()
{
  result = qword_1EB6E6868;
  if (!qword_1EB6E6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6868);
  }

  return result;
}

uint64_t sub_1B0D1E1C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B0F2F790 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_1B0D1E328@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C08, &qword_1B0EED9A0);
  v55 = *(v51 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v59 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C10, &qword_1B0EED9A8);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v48 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C18, &qword_1B0EED9B0);
  v52 = *(v57 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C20, &qword_1B0EED9B8);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C28, &qword_1B0EED9C0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v21);
  sub_1B0D1DEBC();
  v23 = v60;
  sub_1B0E46D18();
  if (v23)
  {
    goto LABEL_9;
  }

  v48 = v12;
  v49 = v15;
  v24 = v11;
  v26 = v57;
  v25 = v58;
  v27 = v59;
  *&v60 = v17;
  v28 = sub_1B0E468A8();
  v29 = *(v28 + 16);
  if (!v29 || ((v30 = *(v28 + 32), v29 == 1) ? (v31 = v30 == 4) : (v31 = 1), v31))
  {
    v32 = sub_1B0E46338();
    swift_allocError();
    v34 = v33;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0) + 48);
    *v34 = &type metadata for MessageFromSearchIndexer;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v60 + 8))(v20, v16);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v65);
    return result;
  }

  if (*(v28 + 32) <= 1u)
  {
    if (*(v28 + 32))
    {
      LOBYTE(v61) = 1;
      sub_1B0D1E070();
      sub_1B0E467F8();
      sub_1B0D25E70();
      sub_1B0E46868();
      (*(v52 + 8))(v24, v26);
      (*(v60 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v46 = v61;
      v44 = v62;
      v60 = v63;
      v45 = v64 | 0x40;
LABEL_18:
      v38 = v56;
      goto LABEL_19;
    }

    LOBYTE(v61) = 0;
    sub_1B0D1E118();
    v37 = v49;
    sub_1B0E467F8();
    sub_1B0D25EC4();
    v43 = v48;
    sub_1B0E46868();
    (*(v50 + 8))(v37, v43);
    (*(v60 + 8))(v20, v16);
    swift_unknownObjectRelease();
    v44 = 0;
    v45 = 0;
    v46 = v61;
    v47 = 0uLL;
LABEL_17:
    v60 = v47;
    goto LABEL_18;
  }

  v57 = v28;
  v38 = v56;
  if (v30 != 2)
  {
    LOBYTE(v61) = 3;
    sub_1B0D1DF10();
    sub_1B0E467F8();
    v41 = v60;
    sub_1B0D259CC();
    v42 = v51;
    sub_1B0E46868();
    (*(v55 + 8))(v27, v42);
    (*(v41 + 8))(v20, v16);
    swift_unknownObjectRelease();
    v46 = v61;
    v44 = v62;
    v45 = -64;
    v47 = v63;
    goto LABEL_17;
  }

  LOBYTE(v61) = 2;
  sub_1B0D1DFC8();
  sub_1B0E467F8();
  v39 = v60;
  sub_1B0D25E1C();
  v40 = v53;
  sub_1B0E46868();
  (*(v54 + 8))(v25, v40);
  (*(v39 + 8))(v20, v16);
  swift_unknownObjectRelease();
  v46 = v61;
  v44 = v62;
  v60 = 0u;
  v45 = 0x80;
LABEL_19:
  __swift_destroy_boxed_opaque_existential_0(v65);
  *v38 = v46;
  *(v38 + 8) = v44;
  result = *&v60;
  *(v38 + 16) = v60;
  *(v38 + 32) = v45;
  return result;
}

uint64_t sub_1B0D1EB88(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return v2(v6);
}

unint64_t sub_1B0D1EBCC()
{
  result = qword_1EB6DC8E0;
  if (!qword_1EB6DC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8E0);
  }

  return result;
}

unint64_t sub_1B0D1EC20()
{
  result = qword_1EB6DC860;
  if (!qword_1EB6DC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC860);
  }

  return result;
}

uint64_t sub_1B0D1EC74(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v6 = *a1;
  v7[0] = v4;
  *(v7 + 10) = *(a1 + 26);
  return v2(&v6);
}

unint64_t sub_1B0D1ECB8()
{
  result = qword_1EB6E6870;
  if (!qword_1EB6E6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6870);
  }

  return result;
}

unint64_t sub_1B0D1ED0C()
{
  result = qword_1EB6E6878;
  if (!qword_1EB6E6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6878);
  }

  return result;
}

unint64_t sub_1B0D1ED60()
{
  result = qword_1EB6DC750;
  if (!qword_1EB6DC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC750);
  }

  return result;
}

unint64_t sub_1B0D1EDB4()
{
  result = qword_1EB6E68B0;
  if (!qword_1EB6E68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E68B0);
  }

  return result;
}

unint64_t sub_1B0D1EE08()
{
  result = qword_1EB6E68B8;
  if (!qword_1EB6E68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E68B8);
  }

  return result;
}

unint64_t sub_1B0D1EE5C()
{
  result = qword_1EB6E68C0;
  if (!qword_1EB6E68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E68C0);
  }

  return result;
}

unint64_t sub_1B0D1EEB0()
{
  result = qword_1EB6E68C8;
  if (!qword_1EB6E68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E68C8);
  }

  return result;
}

unint64_t sub_1B0D1EF04()
{
  result = qword_1EB6DC728;
  if (!qword_1EB6DC728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC728);
  }

  return result;
}

uint64_t sub_1B0D1EF58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265666544646964 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746F4E646964 && a2 == 0xEE006574656C706DLL || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B0F2F7B0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C706D6F43646964 && a2 == 0xEB00000000657465 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0D1F11C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BD8, &qword_1B0EED970);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v45[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BE0, &qword_1B0EED978);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v45[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BE8, &qword_1B0EED980);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v45[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BF0, &qword_1B0EED988);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BF8, &qword_1B0EED990);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C00, &qword_1B0EED998);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v45[-v23];
  v26 = a1[3];
  v25 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v26);
  sub_1B0D1ED60();
  v27 = v61;
  sub_1B0E46D18();
  if (v27)
  {
    goto LABEL_18;
  }

  v47 = v16;
  v48 = v24;
  v29 = v59;
  v28 = v60;
  v61 = v21;
  v30 = sub_1B0E468A8();
  v31 = *(v30 + 16);
  if (!v31 || ((v32 = *(v30 + 32), v31 == 1) ? (v33 = v32 == 5) : (v33 = 1), v33))
  {
    v34 = sub_1B0E46338();
    swift_allocError();
    v35 = v20;
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0) + 48);
    *v37 = &type metadata for IndexRequest.Response;
    v39 = v48;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v34 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v61 + 8))(v39, v35);
    swift_unknownObjectRelease();
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0(v62);
    return 0;
  }

  v46 = *(v30 + 32);
  if (v32 <= 1)
  {
    if (v32)
    {
      v64 = 1;
      sub_1B0D1EEB0();
      v42 = v48;
      sub_1B0E467F8();
      (*(v50 + 8))(v15, v51);
    }

    else
    {
      v63 = 0;
      sub_1B0D1EF04();
      v42 = v48;
      sub_1B0E467F8();
      (*(v49 + 8))(v19, v47);
    }

    (*(v61 + 8))(v42, v20);
  }

  else
  {
    v40 = v61;
    if (v32 == 2)
    {
      v65 = 2;
      sub_1B0D1EE5C();
      v41 = v48;
      sub_1B0E467F8();
      (*(v52 + 8))(v29, v53);
    }

    else
    {
      v41 = v48;
      if (v32 == 3)
      {
        v66 = 3;
        sub_1B0D1EE08();
        sub_1B0E467F8();
        (*(v55 + 8))(v28, v54);
      }

      else
      {
        v67 = 4;
        sub_1B0D1EDB4();
        v43 = v58;
        sub_1B0E467F8();
        (*(v56 + 8))(v43, v57);
      }
    }

    (*(v40 + 8))(v41, v20);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v62);
  return v46;
}

unint64_t sub_1B0D1F814()
{
  result = qword_1EB6DC7B0;
  if (!qword_1EB6DC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7B0);
  }

  return result;
}

unint64_t sub_1B0D1F868()
{
  result = qword_1EB6DC798;
  if (!qword_1EB6DC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC798);
  }

  return result;
}

unint64_t sub_1B0D1F8BC()
{
  result = qword_1EB6DC758;
  if (!qword_1EB6DC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC758);
  }

  return result;
}

unint64_t sub_1B0D1F910()
{
  result = qword_1EB6DC780;
  if (!qword_1EB6DC780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC780);
  }

  return result;
}

unint64_t sub_1B0D1F964()
{
  result = qword_1EB6DB318;
  if (!qword_1EB6DB318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E68E8, &qword_1B0EEA860);
    sub_1B0D1F9E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB318);
  }

  return result;
}

unint64_t sub_1B0D1F9E8()
{
  result = qword_1EB6DC400;
  if (!qword_1EB6DC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC400);
  }

  return result;
}

void *sub_1B0D1FA3C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BA8, &qword_1B0EED958);
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BB0, &qword_1B0EED960);
  v32 = *(v6 - 1);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BB8, &qword_1B0EED968);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v15);
  sub_1B0D1F814();
  v17 = v33;
  sub_1B0E46D18();
  if (!v17)
  {
    v33 = v11;
    v18 = v14;
    v19 = sub_1B0E468A8();
    if (*(v19 + 16) == 1)
    {
      if (*(v19 + 32))
      {
        LOBYTE(v37) = 1;
        sub_1B0D1F868();
        sub_1B0E467F8();
        v20 = v33;
        sub_1B0D25CF0();
        v26 = v5;
        v27 = v31;
        sub_1B0E46868();
        (*(v30 + 8))(v26, v27);
        (*(v20 + 8))(v14, v10);
        swift_unknownObjectRelease();
        v6 = v37;
      }

      else
      {
        v31 = v19;
        LOBYTE(v37) = 0;
        sub_1B0D1F910();
        sub_1B0E467F8();
        v25 = v33;
        LOBYTE(v36) = 0;
        sub_1B0D25CF0();
        v28 = v6;
        sub_1B0E46868();
        v6 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68E8, &qword_1B0EEA860);
        v35 = 1;
        sub_1B0D25D44();
        sub_1B0E46868();
        (*(v32 + 8))(v9, v28);
        (*(v25 + 8))(0, v10);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v21 = sub_1B0E46338();
      swift_allocError();
      v6 = v22;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0) + 48);
      *v6 = &type metadata for IndexRequest;
      sub_1B0E46808();
      sub_1B0E46328();
      (*(*(v21 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v33 + 8))(v18, v10);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v34);
  return v6;
}

unint64_t sub_1B0D2000C()
{
  result = qword_1EB6DC5C0;
  if (!qword_1EB6DC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5C0);
  }

  return result;
}

unint64_t sub_1B0D20060()
{
  result = qword_1EB6DC5A8;
  if (!qword_1EB6DC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5A8);
  }

  return result;
}

void *sub_1B0D200B4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B90, &qword_1B0EED940);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B98, &qword_1B0EED948);
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v21 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2000C();
  sub_1B0E46D18();
  if (v1)
  {
    goto LABEL_5;
  }

  v22 = a1;
  v23 = v7;
  v13 = v26;
  if (*(sub_1B0E468A8() + 16) != 1)
  {
    v15 = v13;
    v16 = sub_1B0E46338();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0) + 48);
    *v18 = &type metadata for CredentialRequest;
    v12 = v10;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v23 + 8))(v10, v15);
    swift_unknownObjectRelease();
    a1 = v22;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v12;
  }

  sub_1B0D20060();
  sub_1B0E467F8();
  v14 = v23;
  sub_1B0D12EDC();
  sub_1B0E46868();
  (*(v24 + 8))(v6, v3);
  (*(v14 + 8))(v10, v13);
  swift_unknownObjectRelease();
  v12 = v25;
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v12;
}

unint64_t sub_1B0D20434()
{
  result = qword_1EB6DC588;
  if (!qword_1EB6DC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC588);
  }

  return result;
}

unint64_t sub_1B0D20488()
{
  result = qword_1EB6DC570;
  if (!qword_1EB6DC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC570);
  }

  return result;
}

unint64_t sub_1B0D204DC()
{
  result = qword_1EB6DB320;
  if (!qword_1EB6DB320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6910, &qword_1B0EEA888);
    sub_1B0D20560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB320);
  }

  return result;
}

unint64_t sub_1B0D20560()
{
  result = qword_1EB6DC7D8;
  if (!qword_1EB6DC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7D8);
  }

  return result;
}

void *sub_1B0D205B4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B70, &qword_1B0EED930);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B78, &qword_1B0EED938);
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v21 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D20434();
  sub_1B0E46D18();
  if (v1)
  {
    goto LABEL_5;
  }

  v21 = a1;
  v22 = v7;
  v13 = v24;
  if (*(sub_1B0E468A8() + 16) != 1)
  {
    v15 = v13;
    v16 = sub_1B0E46338();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0) + 48);
    *v18 = &type metadata for CredentialResponse;
    v12 = v10;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v22 + 8))(v10, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v12;
  }

  sub_1B0D20488();
  sub_1B0E467F8();
  v14 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6910, &qword_1B0EEA888);
  sub_1B0D25C18();
  sub_1B0E46868();
  (*(v23 + 8))(v6, v3);
  (*(v14 + 8))(v10, v13);
  swift_unknownObjectRelease();
  v12 = v25;
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v12;
}

unint64_t sub_1B0D20944()
{
  result = qword_1EB6DC6B8;
  if (!qword_1EB6DC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6B8);
  }

  return result;
}

unint64_t sub_1B0D20998()
{
  result = qword_1EB6DC690;
  if (!qword_1EB6DC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC690);
  }

  return result;
}

unint64_t sub_1B0D209EC()
{
  result = qword_1EB6E6950;
  if (!qword_1EB6E6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6950);
  }

  return result;
}

unint64_t sub_1B0D20A40()
{
  result = qword_1EB6DC390;
  if (!qword_1EB6DC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC390);
  }

  return result;
}

unint64_t sub_1B0D20A94()
{
  result = qword_1EB6E6958;
  if (!qword_1EB6E6958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3000, &unk_1B0EA07F0);
    sub_1B0D20B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6958);
  }

  return result;
}

unint64_t sub_1B0D20B18()
{
  result = qword_1EB6E6960;
  if (!qword_1EB6E6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6960);
  }

  return result;
}

unint64_t sub_1B0D20B6C()
{
  result = qword_1EB6DC668;
  if (!qword_1EB6DC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC668);
  }

  return result;
}

unint64_t sub_1B0D20BC0()
{
  result = qword_1EB6E6968;
  if (!qword_1EB6E6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6968);
  }

  return result;
}

unint64_t sub_1B0D20C14()
{
  result = qword_1EB6E6970;
  if (!qword_1EB6E6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6970);
  }

  return result;
}

unint64_t sub_1B0D20C68()
{
  result = qword_1EB6DC6D0;
  if (!qword_1EB6DC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6D0);
  }

  return result;
}

unint64_t sub_1B0D20CBC()
{
  result = qword_1EB6DC7B8;
  if (!qword_1EB6DC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7B8);
  }

  return result;
}

uint64_t sub_1B0D20D10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x686372616573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756B6F6F6CLL && a2 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B0F2F7D0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B0F2F7F0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B0F2F810 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C616E41646E6573 && a2 == 0xED00007363697479)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0D20F18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F666562 && a2 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0D21020@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B28, &qword_1B0EED8F8);
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v86 = &v72 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B30, &qword_1B0EED900);
  v85 = *(v83 - 8);
  v6 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v90 = &v72 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B38, &qword_1B0EED908);
  v77 = *(v79 - 8);
  v8 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v89 = &v72 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B40, &qword_1B0EED910);
  v84 = *(v76 - 8);
  v10 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v88 = &v72 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B48, &qword_1B0EED918);
  v78 = *(v80 - 8);
  v12 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v14 = &v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B50, &qword_1B0EED920);
  v75 = *(v15 - 8);
  v16 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B58, &qword_1B0EED928);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v92 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v25);
  sub_1B0D20944();
  v26 = v91;
  sub_1B0E46D18();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_0(v92);
  }

  v72 = v15;
  v28 = v88;
  v27 = v89;
  v29 = v90;
  v73 = 0;
  v74 = v20;
  v91 = v23;
  v30 = sub_1B0E468A8();
  v31 = v30;
  if (*(v30 + 16) != 1 || (v32 = *(v30 + 32), v32 == 6))
  {
    v37 = sub_1B0E46338();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0) + 48);
    *v39 = &type metadata for SearchRequest;
    v41 = v91;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v74 + 8))(v41, v19);
LABEL_25:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v92);
  }

  if (*(v30 + 32) <= 2u)
  {
    if (*(v30 + 32))
    {
      v33 = v91;
      if (v32 == 1)
      {
        LOBYTE(v94) = 1;
        sub_1B0D20C14();
        v34 = v73;
        sub_1B0E467F8();
        if (!v34)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
          sub_1B0D25B58(&qword_1EB6E6B60);
          v35 = v80;
          sub_1B0E46868();
          v36 = 0;
          (*(v78 + 8))(v14, v35);
          (*(v74 + 8))(v33, v19);
          swift_unknownObjectRelease();
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = v94;
          v66 = 1;
LABEL_29:
          v50 = v87;
          goto LABEL_30;
        }
      }

      else
      {
        LOBYTE(v94) = 2;
        sub_1B0D20BC0();
        v52 = v28;
        v53 = v73;
        sub_1B0E467F8();
        if (!v53)
        {
          LOBYTE(v97) = 0;
          sub_1B0D25B04();
          v61 = v76;
          sub_1B0E46868();
          v68 = v94;
          v86 = v95;
          v63 = v96;
          v93 = 1;
          sub_1B0D25978();
          sub_1B0E46838();
          v69 = v84;
          v89 = v97;
          v90 = v68;
          v70 = BYTE4(v97);
          v93 = 2;
          v64 = sub_1B0E46858();
          (*(v69 + 8))(v52, v61);
          (*(v74 + 8))(v91, v19);
          swift_unknownObjectRelease();
          v71 = 0x100000000;
          if (!v70)
          {
            v71 = 0;
          }

          v65 = v90;
          v36 = v71 | v89;
          v66 = 2;
          v62 = v86;
          v50 = v87;
          goto LABEL_30;
        }
      }

      (*(v74 + 8))(v33, v19);
    }

    else
    {
      LOBYTE(v94) = 0;
      sub_1B0D20C68();
      v46 = v91;
      v47 = v73;
      sub_1B0E467F8();
      if (!v47)
      {
        sub_1B0D25BC4();
        v58 = v72;
        sub_1B0E46868();
        v36 = 0;
        (*(v75 + 8))(v18, v58);
        (*(v74 + 8))(v46, v19);
        swift_unknownObjectRelease();
        v64 = 0;
        v66 = 0;
        v65 = v94;
        v62 = v95;
        v63 = v96;
        goto LABEL_29;
      }

      (*(v74 + 8))(v46, v19);
    }

    goto LABEL_25;
  }

  if (v32 == 3)
  {
    LOBYTE(v94) = 3;
    sub_1B0D20B6C();
    v48 = v91;
    v49 = v73;
    sub_1B0E467F8();
    v50 = v87;
    v51 = v74;
    if (v49)
    {
      (*(v74 + 8))(v48, v19);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v92);
    }

    (*(v77 + 8))(v27, v79);
    (*(v51 + 8))(v48, v19);
    swift_unknownObjectRelease();
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v36 = 0;
    v64 = 0;
    v66 = 4;
  }

  else
  {
    v89 = v19;
    v42 = v74;
    if (v32 != 4)
    {
      LOBYTE(v94) = 5;
      sub_1B0D20998();
      v54 = v86;
      v55 = v89;
      v56 = v91;
      v57 = v73;
      sub_1B0E467F8();
      v36 = v57;
      if (!v57)
      {
        (*(v81 + 8))(v54, v82);
        (*(v42 + 8))(v56, v55);
        swift_unknownObjectRelease();
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v66 = 4;
        v65 = 1;
        goto LABEL_29;
      }

      (*(v42 + 8))(v56, v55);
      goto LABEL_25;
    }

    LOBYTE(v94) = 4;
    sub_1B0D209EC();
    v43 = v89;
    v44 = v91;
    v45 = v73;
    sub_1B0E467F8();
    if (v45)
    {
      (*(v42 + 8))(v44, v43);
      goto LABEL_25;
    }

    LOBYTE(v97) = 0;
    sub_1B0D25B04();
    v59 = v83;
    sub_1B0E46868();
    v88 = v31;
    v65 = v94;
    v67 = v95;
    v63 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3000, &unk_1B0EA07F0);
    v93 = 1;
    sub_1B0D258F4();
    sub_1B0E46868();
    v86 = v67;
    (*(v85 + 8))(v29, v59);
    (*(v42 + 8))(v91, v89);
    swift_unknownObjectRelease();
    v64 = 0;
    v36 = v97;
    v66 = 3;
    v62 = v86;
    v50 = v87;
  }

LABEL_30:
  result = __swift_destroy_boxed_opaque_existential_0(v92);
  *v50 = v65;
  *(v50 + 8) = v62;
  *(v50 + 16) = v63;
  *(v50 + 24) = v36;
  *(v50 + 32) = v64;
  *(v50 + 40) = v66;
  return result;
}

unint64_t sub_1B0D21D8C()
{
  result = qword_1EB6DC630;
  if (!qword_1EB6DC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC630);
  }

  return result;
}

unint64_t sub_1B0D21DE0()
{
  result = qword_1EB6DC5F8;
  if (!qword_1EB6DC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5F8);
  }

  return result;
}

unint64_t sub_1B0D21E34()
{
  result = qword_1EB6E69B0;
  if (!qword_1EB6E69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69B0);
  }

  return result;
}

unint64_t sub_1B0D21E88()
{
  result = qword_1EB6DC5E0;
  if (!qword_1EB6DC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5E0);
  }

  return result;
}

unint64_t sub_1B0D21EDC()
{
  result = qword_1EB6E69B8;
  if (!qword_1EB6E69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69B8);
  }

  return result;
}

unint64_t sub_1B0D21F30()
{
  result = qword_1EB6E69C0;
  if (!qword_1EB6E69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69C0);
  }

  return result;
}

unint64_t sub_1B0D21F84()
{
  result = qword_1EB6E69C8;
  if (!qword_1EB6E69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69C8);
  }

  return result;
}

unint64_t sub_1B0D21FD8()
{
  result = qword_1EB6DC648;
  if (!qword_1EB6DC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC648);
  }

  return result;
}

uint64_t sub_1B0D2202C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6552686372616573 && a2 == 0xED000073746C7573;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x655270756B6F6F6CLL && a2 == 0xED000073746C7573 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B0F2F830 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B0F2F850 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646564756C637865 && a2 == 0xEC00000073444955 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C616E41746E6573 && a2 == 0xED00007363697479)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0D2224C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6AE8, &qword_1B0EED8B8);
  v70 = *(v78 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v83 = &v65 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6AF0, &qword_1B0EED8C0);
  v79 = *(v77 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v65 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6AF8, &qword_1B0EED8C8);
  v76 = *(v71 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v82 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B00, &qword_1B0EED8D0);
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B08, &qword_1B0EED8D8);
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B10, &qword_1B0EED8E0);
  v69 = *(v16 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B18, &unk_1B0EED8E8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v65 - v23;
  v25 = a1[3];
  v26 = a1[4];
  v90 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v25);
  sub_1B0D21D8C();
  v27 = v85;
  sub_1B0E46D18();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_0(v90);
  }

  v66 = v16;
  v28 = v15;
  v30 = v81;
  v29 = v82;
  v31 = v83;
  v67 = 0;
  v68 = v21;
  v32 = v84;
  v85 = v24;
  v33 = sub_1B0E468A8();
  if (*(v33 + 16) != 1 || (v34 = *(v33 + 32), v34 == 6))
  {
    v40 = sub_1B0E46338();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0) + 48);
    *v42 = &type metadata for SearchResponse;
    v44 = v85;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    (*(v68 + 8))(v44, v20);
    goto LABEL_11;
  }

  if (*(v33 + 32) > 2u)
  {
    if (v34 == 3)
    {
      LOBYTE(v86) = 3;
      sub_1B0D21E88();
      v46 = v85;
      v53 = v67;
      sub_1B0E467F8();
      if (!v53)
      {
        sub_1B0D259CC();
        v58 = v71;
        sub_1B0E46868();
        v59 = v68;
        v67 = 0;
        (*(v76 + 8))(v29, v58);
        (*(v59 + 8))(v46, v20);
        swift_unknownObjectRelease();
        v64 = v86;
        v62 = v87;
        v39 = v88;
        v63 = v89;
        goto LABEL_30;
      }
    }

    else
    {
      v82 = v33;
      v46 = v85;
      if (v34 == 4)
      {
        LOBYTE(v86) = 4;
        sub_1B0D21E34();
        v47 = v80;
        v48 = v67;
        sub_1B0E467F8();
        if (!v48)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3000, &unk_1B0EA07F0);
          sub_1B0D258F4();
          v49 = v77;
          sub_1B0E46868();
          v39 = 0;
          v67 = 0;
          (*(v79 + 8))(v47, v49);
          (*(v68 + 8))(v46, v20);
          swift_unknownObjectRelease();
          v62 = 0;
          v63 = 0;
          v64 = v86;
LABEL_30:
          v32 = v84;
          goto LABEL_31;
        }
      }

      else
      {
        LOBYTE(v86) = 5;
        sub_1B0D21DE0();
        v56 = v67;
        sub_1B0E467F8();
        v39 = v56;
        if (!v56)
        {
          v67 = 0;
          (*(v70 + 8))(v31, v78);
          (*(v68 + 8))(v46, v20);
          swift_unknownObjectRelease();
          v64 = 0;
          v62 = 0;
          v63 = 0;
          goto LABEL_30;
        }
      }
    }

    (*(v68 + 8))(v46, v20);
LABEL_11:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v90);
  }

  if (!*(v33 + 32))
  {
    v82 = v33;
    LOBYTE(v86) = 0;
    sub_1B0D21FD8();
    v50 = v19;
    v51 = v85;
    v52 = v67;
    sub_1B0E467F8();
    if (!v52)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3010, &qword_1B0EA0800);
      sub_1B0D25A74(&qword_1EB6DB750, sub_1B0D25B04, sub_1B0D258F4);
      v57 = v66;
      sub_1B0E46868();
      v39 = 0;
      (*(v69 + 8))(v50, v57);
      (*(v68 + 8))(v51, v20);
      swift_unknownObjectRelease();
      v67 = 0;
      goto LABEL_29;
    }

    (*(v68 + 8))(v51, v20);
    goto LABEL_11;
  }

  if (v34 == 1)
  {
    LOBYTE(v86) = 1;
    sub_1B0D21F84();
    v35 = v28;
    v36 = v85;
    v37 = v67;
    sub_1B0E467F8();
    if (!v37)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3010, &qword_1B0EA0800);
      sub_1B0D25A74(&qword_1EB6DB750, sub_1B0D25B04, sub_1B0D258F4);
      v38 = v73;
      sub_1B0E46868();
      v39 = 0;
      v67 = 0;
      (*(v72 + 8))(v35, v38);
      (*(v68 + 8))(v36, v20);
      swift_unknownObjectRelease();
LABEL_29:
      v62 = 0;
      v63 = 0;
      v64 = v86;
      goto LABEL_31;
    }

    (*(v68 + 8))(v36, v20);
    goto LABEL_11;
  }

  LOBYTE(v86) = 2;
  sub_1B0D21EDC();
  v54 = v85;
  v55 = v67;
  sub_1B0E467F8();
  if (v55)
  {
    (*(v68 + 8))(v54, v20);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v90);
  }

  sub_1B0D25A20();
  v60 = v75;
  sub_1B0E46838();
  v61 = v68;
  v67 = 0;
  (*(v74 + 8))(v30, v60);
  (*(v61 + 8))(v85, v20);
  swift_unknownObjectRelease();
  v39 = 0;
  v63 = 0;
  v64 = v86;
  v62 = v87;
LABEL_31:
  result = __swift_destroy_boxed_opaque_existential_0(v90);
  *v32 = v64;
  *(v32 + 8) = v62;
  *(v32 + 16) = v39;
  *(v32 + 24) = v63;
  *(v32 + 32) = v34;
  return result;
}

unint64_t sub_1B0D22F08()
{
  result = qword_1EB6E69D8;
  if (!qword_1EB6E69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69D8);
  }

  return result;
}

unint64_t sub_1B0D22F5C()
{
  result = qword_1EB6E69E0;
  if (!qword_1EB6E69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20IMAPSearchIndexerXPC13SearchRequestO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_1B0D22FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 41))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 40) >> 1) & 0x1C | (*(a1 + 40) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0D23038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20IMAPSearchIndexerXPC19IndexingDiagnosticsVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_20IMAPSearchIndexerXPC14SearchResponseO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1B0D23114(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1D && *(a1 + 33))
  {
    return (*a1 + 29);
  }

  v3 = ((*(a1 + 32) >> 1) & 0x1C | (*(a1 + 32) >> 6)) ^ 0x1F;
  if (v3 >= 0x1C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0D23168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 29;
    *(result + 8) = 0;
    if (a3 >= 0x1D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1B0D23238(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0D23280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0D232CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D23314(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0D23364(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1B0D23398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D233E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0D23428(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1B0D23698()
{
  result = qword_1EB6E69E8;
  if (!qword_1EB6E69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69E8);
  }

  return result;
}

unint64_t sub_1B0D236F0()
{
  result = qword_1EB6E69F0;
  if (!qword_1EB6E69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69F0);
  }

  return result;
}

unint64_t sub_1B0D23748()
{
  result = qword_1EB6E69F8;
  if (!qword_1EB6E69F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69F8);
  }

  return result;
}

unint64_t sub_1B0D237A0()
{
  result = qword_1EB6E6A00;
  if (!qword_1EB6E6A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A00);
  }

  return result;
}

unint64_t sub_1B0D237F8()
{
  result = qword_1EB6E6A08;
  if (!qword_1EB6E6A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A08);
  }

  return result;
}

unint64_t sub_1B0D23850()
{
  result = qword_1EB6E6A10;
  if (!qword_1EB6E6A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A10);
  }

  return result;
}

unint64_t sub_1B0D238A8()
{
  result = qword_1EB6E6A18;
  if (!qword_1EB6E6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A18);
  }

  return result;
}

unint64_t sub_1B0D23900()
{
  result = qword_1EB6E6A20;
  if (!qword_1EB6E6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A20);
  }

  return result;
}

unint64_t sub_1B0D23958()
{
  result = qword_1EB6E6A28;
  if (!qword_1EB6E6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A28);
  }

  return result;
}

unint64_t sub_1B0D239B0()
{
  result = qword_1EB6E6A30;
  if (!qword_1EB6E6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A30);
  }

  return result;
}

unint64_t sub_1B0D23A08()
{
  result = qword_1EB6E6A38;
  if (!qword_1EB6E6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A38);
  }

  return result;
}

unint64_t sub_1B0D23A60()
{
  result = qword_1EB6E6A40;
  if (!qword_1EB6E6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A40);
  }

  return result;
}

unint64_t sub_1B0D23AB8()
{
  result = qword_1EB6E6A48;
  if (!qword_1EB6E6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A48);
  }

  return result;
}

unint64_t sub_1B0D23B10()
{
  result = qword_1EB6E6A50;
  if (!qword_1EB6E6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A50);
  }

  return result;
}

unint64_t sub_1B0D23B68()
{
  result = qword_1EB6E6A58;
  if (!qword_1EB6E6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A58);
  }

  return result;
}

unint64_t sub_1B0D23BC0()
{
  result = qword_1EB6E6A60;
  if (!qword_1EB6E6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A60);
  }

  return result;
}

unint64_t sub_1B0D23C18()
{
  result = qword_1EB6E6A68;
  if (!qword_1EB6E6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A68);
  }

  return result;
}

unint64_t sub_1B0D23C70()
{
  result = qword_1EB6E6A70;
  if (!qword_1EB6E6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A70);
  }

  return result;
}

unint64_t sub_1B0D23CC8()
{
  result = qword_1EB6E6A78;
  if (!qword_1EB6E6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A78);
  }

  return result;
}

unint64_t sub_1B0D23D20()
{
  result = qword_1EB6E6A80;
  if (!qword_1EB6E6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A80);
  }

  return result;
}

unint64_t sub_1B0D23D78()
{
  result = qword_1EB6E6A88;
  if (!qword_1EB6E6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A88);
  }

  return result;
}

unint64_t sub_1B0D23DD0()
{
  result = qword_1EB6E6A90;
  if (!qword_1EB6E6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A90);
  }

  return result;
}

unint64_t sub_1B0D23E28()
{
  result = qword_1EB6E6A98;
  if (!qword_1EB6E6A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A98);
  }

  return result;
}

unint64_t sub_1B0D23E80()
{
  result = qword_1EB6E6AA0;
  if (!qword_1EB6E6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AA0);
  }

  return result;
}

unint64_t sub_1B0D23ED8()
{
  result = qword_1EB6E6AA8;
  if (!qword_1EB6E6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AA8);
  }

  return result;
}

unint64_t sub_1B0D23F30()
{
  result = qword_1EB6E6AB0;
  if (!qword_1EB6E6AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AB0);
  }

  return result;
}

unint64_t sub_1B0D23F88()
{
  result = qword_1EB6E6AB8;
  if (!qword_1EB6E6AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AB8);
  }

  return result;
}

unint64_t sub_1B0D23FE0()
{
  result = qword_1EB6E6AC0;
  if (!qword_1EB6E6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AC0);
  }

  return result;
}

unint64_t sub_1B0D24038()
{
  result = qword_1EB6DC638;
  if (!qword_1EB6DC638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC638);
  }

  return result;
}

unint64_t sub_1B0D24090()
{
  result = qword_1EB6DC640;
  if (!qword_1EB6DC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC640);
  }

  return result;
}

unint64_t sub_1B0D240E8()
{
  result = qword_1EB6DC600;
  if (!qword_1EB6DC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC600);
  }

  return result;
}

unint64_t sub_1B0D24140()
{
  result = qword_1EB6DC608;
  if (!qword_1EB6DC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC608);
  }

  return result;
}

unint64_t sub_1B0D24198()
{
  result = qword_1EB6E6AC8;
  if (!qword_1EB6E6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AC8);
  }

  return result;
}

unint64_t sub_1B0D241F0()
{
  result = qword_1EB6E6AD0;
  if (!qword_1EB6E6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AD0);
  }

  return result;
}

unint64_t sub_1B0D24248()
{
  result = qword_1EB6DC5D0;
  if (!qword_1EB6DC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5D0);
  }

  return result;
}

unint64_t sub_1B0D242A0()
{
  result = qword_1EB6DC5D8;
  if (!qword_1EB6DC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5D8);
  }

  return result;
}

unint64_t sub_1B0D242F8()
{
  result = qword_1EB6DC610;
  if (!qword_1EB6DC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC610);
  }

  return result;
}

unint64_t sub_1B0D24350()
{
  result = qword_1EB6DC618;
  if (!qword_1EB6DC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC618);
  }

  return result;
}

unint64_t sub_1B0D243A8()
{
  result = qword_1EB6DC5E8;
  if (!qword_1EB6DC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5E8);
  }

  return result;
}

unint64_t sub_1B0D24400()
{
  result = qword_1EB6DC5F0;
  if (!qword_1EB6DC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5F0);
  }

  return result;
}

unint64_t sub_1B0D24458()
{
  result = qword_1EB6DC620;
  if (!qword_1EB6DC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC620);
  }

  return result;
}

unint64_t sub_1B0D244B0()
{
  result = qword_1EB6DC628;
  if (!qword_1EB6DC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC628);
  }

  return result;
}

unint64_t sub_1B0D24508()
{
  result = qword_1EB6DC6C0;
  if (!qword_1EB6DC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6C0);
  }

  return result;
}

unint64_t sub_1B0D24560()
{
  result = qword_1EB6DC6C8;
  if (!qword_1EB6DC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6C8);
  }

  return result;
}

unint64_t sub_1B0D245B8()
{
  result = qword_1EB6DC698;
  if (!qword_1EB6DC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC698);
  }

  return result;
}

unint64_t sub_1B0D24610()
{
  result = qword_1EB6DC6A0;
  if (!qword_1EB6DC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6A0);
  }

  return result;
}

unint64_t sub_1B0D24668()
{
  result = qword_1EB6E6AD8;
  if (!qword_1EB6E6AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AD8);
  }

  return result;
}

unint64_t sub_1B0D246C0()
{
  result = qword_1EB6E6AE0;
  if (!qword_1EB6E6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AE0);
  }

  return result;
}

unint64_t sub_1B0D24718()
{
  result = qword_1EB6DC658;
  if (!qword_1EB6DC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC658);
  }

  return result;
}

unint64_t sub_1B0D24770()
{
  result = qword_1EB6DC660;
  if (!qword_1EB6DC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC660);
  }

  return result;
}

unint64_t sub_1B0D247C8()
{
  result = qword_1EB6DC670;
  if (!qword_1EB6DC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC670);
  }

  return result;
}

unint64_t sub_1B0D24820()
{
  result = qword_1EB6DC678;
  if (!qword_1EB6DC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC678);
  }

  return result;
}

unint64_t sub_1B0D24878()
{
  result = qword_1EB6DC680;
  if (!qword_1EB6DC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC680);
  }

  return result;
}

unint64_t sub_1B0D248D0()
{
  result = qword_1EB6DC688;
  if (!qword_1EB6DC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC688);
  }

  return result;
}

unint64_t sub_1B0D24928()
{
  result = qword_1EB6DC6A8;
  if (!qword_1EB6DC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6A8);
  }

  return result;
}

unint64_t sub_1B0D24980()
{
  result = qword_1EB6DC6B0;
  if (!qword_1EB6DC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6B0);
  }

  return result;
}

unint64_t sub_1B0D249D8()
{
  result = qword_1EB6DC560;
  if (!qword_1EB6DC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC560);
  }

  return result;
}

unint64_t sub_1B0D24A30()
{
  result = qword_1EB6DC568;
  if (!qword_1EB6DC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC568);
  }

  return result;
}

unint64_t sub_1B0D24A88()
{
  result = qword_1EB6DC578;
  if (!qword_1EB6DC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC578);
  }

  return result;
}

unint64_t sub_1B0D24AE0()
{
  result = qword_1EB6DC580;
  if (!qword_1EB6DC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC580);
  }

  return result;
}

unint64_t sub_1B0D24B38()
{
  result = qword_1EB6DC598;
  if (!qword_1EB6DC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC598);
  }

  return result;
}

unint64_t sub_1B0D24B90()
{
  result = qword_1EB6DC5A0;
  if (!qword_1EB6DC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5A0);
  }

  return result;
}

unint64_t sub_1B0D24BE8()
{
  result = qword_1EB6DC5B0;
  if (!qword_1EB6DC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5B0);
  }

  return result;
}

unint64_t sub_1B0D24C40()
{
  result = qword_1EB6DC5B8;
  if (!qword_1EB6DC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5B8);
  }

  return result;
}

unint64_t sub_1B0D24C98()
{
  result = qword_1EB6DC770;
  if (!qword_1EB6DC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC770);
  }

  return result;
}

unint64_t sub_1B0D24CF0()
{
  result = qword_1EB6DC778;
  if (!qword_1EB6DC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC778);
  }

  return result;
}

unint64_t sub_1B0D24D48()
{
  result = qword_1EB6DC788;
  if (!qword_1EB6DC788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC788);
  }

  return result;
}

unint64_t sub_1B0D24DA0()
{
  result = qword_1EB6DC790;
  if (!qword_1EB6DC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC790);
  }

  return result;
}

unint64_t sub_1B0D24DF8()
{
  result = qword_1EB6DC7A0;
  if (!qword_1EB6DC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7A0);
  }

  return result;
}

unint64_t sub_1B0D24E50()
{
  result = qword_1EB6DC7A8;
  if (!qword_1EB6DC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7A8);
  }

  return result;
}

unint64_t sub_1B0D24EA8()
{
  result = qword_1EB6DC718;
  if (!qword_1EB6DC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC718);
  }

  return result;
}

unint64_t sub_1B0D24F00()
{
  result = qword_1EB6DC720;
  if (!qword_1EB6DC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC720);
  }

  return result;
}

unint64_t sub_1B0D24F58()
{
  result = qword_1EB6DC6F8;
  if (!qword_1EB6DC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6F8);
  }

  return result;
}

unint64_t sub_1B0D24FB0()
{
  result = qword_1EB6DC700;
  if (!qword_1EB6DC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC700);
  }

  return result;
}

unint64_t sub_1B0D25008()
{
  result = qword_1EB6DC6E8;
  if (!qword_1EB6DC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6E8);
  }

  return result;
}

unint64_t sub_1B0D25060()
{
  result = qword_1EB6DC6F0;
  if (!qword_1EB6DC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6F0);
  }

  return result;
}

unint64_t sub_1B0D250B8()
{
  result = qword_1EB6DC708;
  if (!qword_1EB6DC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC708);
  }

  return result;
}

unint64_t sub_1B0D25110()
{
  result = qword_1EB6DC710;
  if (!qword_1EB6DC710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC710);
  }

  return result;
}

unint64_t sub_1B0D25168()
{
  result = qword_1EB6DC730;
  if (!qword_1EB6DC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC730);
  }

  return result;
}

unint64_t sub_1B0D251C0()
{
  result = qword_1EB6DC738;
  if (!qword_1EB6DC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC738);
  }

  return result;
}

unint64_t sub_1B0D25218()
{
  result = qword_1EB6DC740;
  if (!qword_1EB6DC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC740);
  }

  return result;
}

unint64_t sub_1B0D25270()
{
  result = qword_1EB6DC748;
  if (!qword_1EB6DC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC748);
  }

  return result;
}

unint64_t sub_1B0D252C8()
{
  result = qword_1EB6DC898;
  if (!qword_1EB6DC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC898);
  }

  return result;
}

unint64_t sub_1B0D25320()
{
  result = qword_1EB6DC8A0;
  if (!qword_1EB6DC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8A0);
  }

  return result;
}

unint64_t sub_1B0D25378()
{
  result = qword_1EB6DC8C8;
  if (!qword_1EB6DC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8C8);
  }

  return result;
}

unint64_t sub_1B0D253D0()
{
  result = qword_1EB6DC8D0;
  if (!qword_1EB6DC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8D0);
  }

  return result;
}

unint64_t sub_1B0D25428()
{
  result = qword_1EB6DC880;
  if (!qword_1EB6DC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC880);
  }

  return result;
}

unint64_t sub_1B0D25480()
{
  result = qword_1EB6DC888;
  if (!qword_1EB6DC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC888);
  }

  return result;
}

unint64_t sub_1B0D254D8()
{
  result = qword_1EB6DC868;
  if (!qword_1EB6DC868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC868);
  }

  return result;
}

unint64_t sub_1B0D25530()
{
  result = qword_1EB6DC870;
  if (!qword_1EB6DC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC870);
  }

  return result;
}

unint64_t sub_1B0D25588()
{
  result = qword_1EB6DC8B0;
  if (!qword_1EB6DC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8B0);
  }

  return result;
}

unint64_t sub_1B0D255E0()
{
  result = qword_1EB6DC8B8;
  if (!qword_1EB6DC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8B8);
  }

  return result;
}

unint64_t sub_1B0D25638()
{
  result = qword_1EB6DC900;
  if (!qword_1EB6DC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC900);
  }

  return result;
}

unint64_t sub_1B0D25690()
{
  result = qword_1EB6DC908;
  if (!qword_1EB6DC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC908);
  }

  return result;
}

unint64_t sub_1B0D256E8()
{
  result = qword_1EB6DC930;
  if (!qword_1EB6DC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC930);
  }

  return result;
}

unint64_t sub_1B0D25740()
{
  result = qword_1EB6DC938;
  if (!qword_1EB6DC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC938);
  }

  return result;
}

unint64_t sub_1B0D25798()
{
  result = qword_1EB6DC8E8;
  if (!qword_1EB6DC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8E8);
  }

  return result;
}

unint64_t sub_1B0D257F0()
{
  result = qword_1EB6DC8F0;
  if (!qword_1EB6DC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8F0);
  }

  return result;
}

unint64_t sub_1B0D25848()
{
  result = qword_1EB6DC918;
  if (!qword_1EB6DC918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC918);
  }

  return result;
}

unint64_t sub_1B0D258A0()
{
  result = qword_1EB6DC920;
  if (!qword_1EB6DC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC920);
  }

  return result;
}

unint64_t sub_1B0D258F4()
{
  result = qword_1EB6DB310;
  if (!qword_1EB6DB310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3000, &unk_1B0EA07F0);
    sub_1B0D25978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB310);
  }

  return result;
}

unint64_t sub_1B0D25978()
{
  result = qword_1EB6DC3F8;
  if (!qword_1EB6DC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC3F8);
  }

  return result;
}

unint64_t sub_1B0D259CC()
{
  result = qword_1EB6DC538;
  if (!qword_1EB6DC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC538);
  }

  return result;
}

unint64_t sub_1B0D25A20()
{
  result = qword_1EB6E6B20;
  if (!qword_1EB6E6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6B20);
  }

  return result;
}

uint64_t sub_1B0D25A74(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3010, &qword_1B0EA0800);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B0D25B04()
{
  result = qword_1EB6DC378;
  if (!qword_1EB6DC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC378);
  }

  return result;
}

uint64_t sub_1B0D25B58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B0D25BC4()
{
  result = qword_1EB6E6B68;
  if (!qword_1EB6E6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6B68);
  }

  return result;
}

unint64_t sub_1B0D25C18()
{
  result = qword_1EB6E6B80;
  if (!qword_1EB6E6B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6910, &qword_1B0EEA888);
    sub_1B0D25C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6B80);
  }

  return result;
}

unint64_t sub_1B0D25C9C()
{
  result = qword_1EB6E6B88;
  if (!qword_1EB6E6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6B88);
  }

  return result;
}

unint64_t sub_1B0D25CF0()
{
  result = qword_1EB6E6BC0;
  if (!qword_1EB6E6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6BC0);
  }

  return result;
}

unint64_t sub_1B0D25D44()
{
  result = qword_1EB6E6BC8;
  if (!qword_1EB6E6BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E68E8, &qword_1B0EEA860);
    sub_1B0D25DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6BC8);
  }

  return result;
}

unint64_t sub_1B0D25DC8()
{
  result = qword_1EB6E6BD0;
  if (!qword_1EB6E6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6BD0);
  }

  return result;
}

unint64_t sub_1B0D25E1C()
{
  result = qword_1EB6DC590;
  if (!qword_1EB6DC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC590);
  }

  return result;
}

unint64_t sub_1B0D25E70()
{
  result = qword_1EB6DC5C8;
  if (!qword_1EB6DC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5C8);
  }

  return result;
}

unint64_t sub_1B0D25EC4()
{
  result = qword_1EB6DC6E0;
  if (!qword_1EB6DC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6E0);
  }

  return result;
}

unint64_t sub_1B0D25F18()
{
  result = qword_1EB6E6C50;
  if (!qword_1EB6E6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6C50);
  }

  return result;
}

unint64_t sub_1B0D25F6C()
{
  result = qword_1EB6E6C58;
  if (!qword_1EB6E6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6C58);
  }

  return result;
}

unint64_t sub_1B0D25FC0()
{
  result = qword_1EB6E6C60;
  if (!qword_1EB6E6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6C60);
  }

  return result;
}

uint64_t sub_1B0D26080()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DC3E0);
  __swift_project_value_buffer(v0, qword_1EB6DC3E0);
  return sub_1B0E43998();
}

uint64_t SearchSession.__allocating_init()()
{
  v0 = swift_allocObject();
  SearchSession.init()();
  return v0;
}

void *SearchSession.init()()
{
  v2 = v0;
  v10 = *v0;
  v3 = sub_1B0E439E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B0E43A68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6C68, &qword_1B0EED9F0);
  v6 = *(v4 + 72);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1B0EC1E70;
  sub_1B0E439D8();
  sub_1B0D26374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6C78, &unk_1B0EEDC70);
  sub_1B0D263CC();
  sub_1B0E460A8();
  v8 = sub_1B0E439C8();
  if (v1)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[2] = v8;

    sub_1B0E43A08();
  }

  return v2;
}

unint64_t sub_1B0D26374()
{
  result = qword_1EB6DC1A0;
  if (!qword_1EB6DC1A0)
  {
    sub_1B0E439E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC1A0);
  }

  return result;
}

unint64_t sub_1B0D263CC()
{
  result = qword_1EB6DB300;
  if (!qword_1EB6DB300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E6C78, &unk_1B0EEDC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB300);
  }

  return result;
}

uint64_t sub_1B0D26430@<X0>(uint64_t a1@<X8>)
{
  sub_1B0E43A88();
  v2 = sub_1B0E43A98();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1B0D264DC()
{
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  __swift_project_value_buffer(v0, qword_1EB6DC3E0);
  swift_unknownObjectRetain();
  v1 = sub_1B0E43988();
  v2 = sub_1B0E45908();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6CA8, &qword_1B0EEDA38);
    v5 = sub_1B0E44BA8();
    v7 = sub_1B0399D64(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1B0389000, v1, v2, "Ignoring unexpected inbound message %s.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1B272C230](v4, -1, -1);
    MEMORY[0x1B272C230](v3, -1, -1);
  }
}

uint64_t SearchSession.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_1B0E43A48();

  v3 = *(v1 + 16);

  return v1;
}

uint64_t SearchSession.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_1B0E43A48();

  v3 = *(v1 + 16);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall SearchSession.cancel(reason:)(Swift::String reason)
{
  v2 = v1;
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B0E439A8();
  __swift_project_value_buffer(v3, qword_1EB6DC3E0);
  v4 = sub_1B0E43988();
  v5 = sub_1B0E45908();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B0389000, v4, v5, "cancel", v6, 2u);
    MEMORY[0x1B272C230](v6, -1, -1);
  }

  v7 = *(v2 + 16);
  sub_1B0E43A48();
}

uint64_t SearchSession.perform(query:_:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v10 = sub_1B0E439A8();
  __swift_project_value_buffer(v10, qword_1EB6DC3E0);
  v11 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = sub_1B0E43988();
  v13 = sub_1B0E45908();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1B0E46508();
    MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
    v16 = MEMORY[0x1B27272F0](a3, &type metadata for Mailbox);
    MEMORY[0x1B2726E80](v16);

    v17 = sub_1B0399D64(0, 0xE000000000000000, &v26);

    *(v14 + 4) = v17;
    _os_log_impl(&dword_1B0389000, v12, v13, "Sending search %s to SearchIndexer.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v18 = v15;
    v6 = v5;
    MEMORY[0x1B272C230](v18, -1, -1);
    MEMORY[0x1B272C230](v14, -1, -1);
  }

  v19 = *(v6 + 16);
  v20 = swift_allocObject();
  v20[2] = v11;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  v27 = v11;
  v28 = a2;
  v30 = 0;
  v31 = 0;
  v29 = a3;
  v32 = 64;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B0D293A8;
  *(v21 + 24) = v20;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();
  v22 = v11;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B0E43A28();
}

uint64_t sub_1B0D26C1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  if (*(a1 + 33))
  {
    if (qword_1EB6DC3D8 == -1)
    {
LABEL_3:
      v10 = sub_1B0E439A8();
      __swift_project_value_buffer(v10, qword_1EB6DC3E0);
      sub_1B0D29774(a1, &v49);
      v11 = a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = sub_1B0E43988();
      v13 = sub_1B0E458E8();

      sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = a5;
        v17 = swift_slowAlloc();
        v48 = v17;
        v49 = 0;
        *v14 = 136315394;
        v50 = 0xE000000000000000;
        sub_1B0E46508();
        MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
        v18 = MEMORY[0x1B27272F0](a4, &type metadata for Mailbox);
        MEMORY[0x1B2726E80](v18);

        v19 = sub_1B0399D64(v49, v50, &v48);

        *(v14 + 4) = v19;
        *(v14 + 12) = 2112;
        v20 = sub_1B0E42CC8();
        *(v14 + 14) = v20;
        *v15 = v20;
        _os_log_impl(&dword_1B0389000, v12, v13, "Search %s failed: %@", v14, 0x16u);
        sub_1B0398EFC(v15, &unk_1EB6E2630, &qword_1B0E97970);
        MEMORY[0x1B272C230](v15, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v17);
        v21 = v17;
        a5 = v16;
        MEMORY[0x1B272C230](v21, -1, -1);
        MEMORY[0x1B272C230](v14, -1, -1);
      }

LABEL_28:
      sub_1B0D295AC(MEMORY[0x1E69E7CC0]);
      (a5)();
    }

LABEL_33:
    swift_once();
    goto LABEL_3;
  }

  v22 = qword_1EB6DC3D8;
  if (*(a1 + 32) != 64)
  {
LABEL_23:
    if (v22 != -1)
    {
      swift_once();
    }

    v38 = sub_1B0E439A8();
    __swift_project_value_buffer(v38, qword_1EB6DC3E0);
    v39 = a2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = sub_1B0E43988();
    v41 = sub_1B0E458E8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48 = v43;
      v49 = 0;
      *v42 = 136315138;
      v50 = 0xE000000000000000;
      sub_1B0E46508();
      MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
      v44 = MEMORY[0x1B27272F0](a4, &type metadata for Mailbox);
      MEMORY[0x1B2726E80](v44);

      v45 = sub_1B0399D64(v49, v50, &v48);

      *(v42 + 4) = v45;
      _os_log_impl(&dword_1B0389000, v40, v41, "Invalid response for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1B272C230](v43, -1, -1);
      MEMORY[0x1B272C230](v42, -1, -1);
    }

    goto LABEL_28;
  }

  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v23 = sub_1B0E439A8();
  __swift_project_value_buffer(v23, qword_1EB6DC3E0);
  sub_1B0D29774(a1, &v49);
  sub_1B0D29774(a1, &v49);
  v24 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = sub_1B0E43988();
  v26 = sub_1B0E45908();

  if (os_log_type_enabled(v25, v26))
  {
    v47 = a5;
    a5 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v48 = v27;
    v49 = 0;
    *a5 = 136315394;
    v50 = 0xE000000000000000;
    sub_1B0E46508();
    MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
    v28 = MEMORY[0x1B27272F0](a4, &type metadata for Mailbox);
    MEMORY[0x1B2726E80](v28);

    a2 = sub_1B0399D64(v49, v50, &v48);

    v22 = 0;
    v29 = 0;
    *(a5 + 4) = a2;
    *(a5 + 12) = 2048;
    v30 = 1 << *(v9 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v9 + 64);
    v33 = (v30 + 63) >> 6;
    while (v32)
    {
      v34 = v22;
LABEL_20:
      v35 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v36 = *(*(*(v9 + 56) + ((v34 << 9) | (8 * v35))) + 16);
      v37 = __OFADD__(v29, v36);
      v29 += v36;
      if (v37)
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    while (1)
    {
      v34 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v34 >= v33)
      {

        *(a5 + 14) = v29;
        sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
        _os_log_impl(&dword_1B0389000, v25, v26, "Received response for search %s with %ld) results.", a5, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1B272C230](v27, -1, -1);
        MEMORY[0x1B272C230](a5, -1, -1);

        a5 = v47;
        return (a5)(v9);
      }

      v32 = *(v9 + 64 + 8 * v34);
      ++v22;
      if (v32)
      {
        v22 = v34;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
  sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);

  return (a5)(v9);
}

uint64_t SearchSession.lookUp(identifiers:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B0E439A8();
  __swift_project_value_buffer(v8, qword_1EB6DC3E0);
  v9 = sub_1B0E43988();
  v10 = sub_1B0E45908();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B0389000, v9, v10, "Sending lookup request to SearchIndexer.", v11, 2u);
    MEMORY[0x1B272C230](v11, -1, -1);
  }

  v12 = *(v4 + 16);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B0D296CC;
  *(v14 + 24) = v13;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B0E43A28();
}

uint64_t sub_1B0D275FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *a1;
  if (*(a1 + 33))
  {
    if (qword_1EB6DC3D8 == -1)
    {
LABEL_3:
      v7 = sub_1B0E439A8();
      __swift_project_value_buffer(v7, qword_1EB6DC3E0);
      sub_1B0D29774(a1, v43);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v8 = sub_1B0E43988();
      v9 = sub_1B0E458E8();

      sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v43[0] = v12;
        *v10 = 136315394;
        v13 = MEMORY[0x1B2727340](a2, MEMORY[0x1E69E6158]);
        v15 = sub_1B0399D64(v13, v14, v43);

        *(v10 + 4) = v15;
        *(v10 + 12) = 2112;
        v16 = sub_1B0E42CC8();
        *(v10 + 14) = v16;
        *v11 = v16;
        _os_log_impl(&dword_1B0389000, v8, v9, "Lookup %s failed: %@", v10, 0x16u);
        sub_1B0398EFC(v11, &unk_1EB6E2630, &qword_1B0E97970);
        MEMORY[0x1B272C230](v11, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x1B272C230](v12, -1, -1);
        MEMORY[0x1B272C230](v10, -1, -1);
      }

      sub_1B0D295AC(MEMORY[0x1E69E7CC0]);
      a3();
    }

LABEL_34:
    swift_once();
    goto LABEL_3;
  }

  v18 = qword_1EB6DC3D8;
  if (*(a1 + 32) == 65)
  {
    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v19 = sub_1B0E439A8();
    __swift_project_value_buffer(v19, qword_1EB6DC3E0);
    sub_1B0D29774(a1, v43);
    sub_1B0D29774(a1, v43);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = sub_1B0E43988();
    v21 = sub_1B0E45908();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43[0] = v23;
      *v22 = 136315394;
      v24 = MEMORY[0x1B2727340](a2, MEMORY[0x1E69E6158]);
      v26 = sub_1B0399D64(v24, v25, v43);

      v18 = 0;
      a2 = 0;
      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      v27 = 1 << *(v6 + 32);
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v29 = v28 & *(v6 + 64);
      v30 = (v27 + 63) >> 6;
      while (v29)
      {
        v31 = v18;
LABEL_20:
        v32 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v33 = *(*(*(v6 + 56) + ((v31 << 9) | (8 * v32))) + 16);
        v34 = __OFADD__(a2, v33);
        a2 += v33;
        if (v34)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      while (1)
      {
        v31 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v31 >= v30)
        {

          *(v22 + 14) = a2;
          sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
          _os_log_impl(&dword_1B0389000, v20, v21, "Received response for lookup %s with %ld) results.", v22, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x1B272C230](v23, -1, -1);
          MEMORY[0x1B272C230](v22, -1, -1);
          goto LABEL_32;
        }

        v29 = *(v6 + 64 + 8 * v31);
        ++v18;
        if (v29)
        {
          v18 = v31;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
    sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
LABEL_32:

    return (a3)(v6);
  }

  else
  {
LABEL_23:
    if (v18 != -1)
    {
      swift_once();
    }

    v35 = sub_1B0E439A8();
    __swift_project_value_buffer(v35, qword_1EB6DC3E0);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = sub_1B0E43988();
    v37 = sub_1B0E458E8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v38 = 136315138;
      v40 = MEMORY[0x1B2727340](a2, MEMORY[0x1E69E6158]);
      v42 = sub_1B0399D64(v40, v41, v43);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1B0389000, v36, v37, "Invalid response for lookup %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1B272C230](v39, -1, -1);
      MEMORY[0x1B272C230](v38, -1, -1);
    }

    sub_1B0D295AC(MEMORY[0x1E69E7CC0]);
    a3();
  }
}

uint64_t SearchSession.getIndexingStatistics(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B0E439A8();
  __swift_project_value_buffer(v6, qword_1EB6DC3E0);
  v7 = sub_1B0E43988();
  v8 = sub_1B0E45908();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B0389000, v7, v8, "Sending request for indexing statistics to SearchIndexer.", v9, 2u);
    MEMORY[0x1B272C230](v9, -1, -1);
  }

  v10 = *(v3 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B0D296D8;
  *(v12 + 24) = v11;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();

  sub_1B0E43A28();
}

void sub_1B0D27EB8(uint64_t a1, void (*a2)(__int128 *))
{
  if (*(a1 + 33))
  {
    v4 = *a1;
    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B0E439A8();
    __swift_project_value_buffer(v5, qword_1EB6DC3E0);
    v6 = v4;
    v7 = sub_1B0E43988();
    v8 = sub_1B0E458E8();
    sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v4;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1B0389000, v7, v8, "Requesting statistics failed with error %@", v9, 0xCu);
      sub_1B0398EFC(v10, &unk_1EB6E2630, &qword_1B0E97970);
      MEMORY[0x1B272C230](v10, -1, -1);
      MEMORY[0x1B272C230](v9, -1, -1);
    }

    v24 = v4;
    v25 = 0uLL;
    v26 = 1;
LABEL_13:
    a2(&v24);
    return;
  }

  if (*(a1 + 32) == 67)
  {
    v23 = *a1;
    v22 = *(a1 + 16);
    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v13 = sub_1B0E439A8();
    __swift_project_value_buffer(v13, qword_1EB6DC3E0);
    v14 = sub_1B0E43988();
    v15 = sub_1B0E45908();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B0389000, v14, v15, "Received a response when requesting statistics", v16, 2u);
      MEMORY[0x1B272C230](v16, -1, -1);
    }

    v24 = v23;
    v25 = v22;
    v26 = 0;
    goto LABEL_13;
  }

  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v17 = sub_1B0E439A8();
  __swift_project_value_buffer(v17, qword_1EB6DC3E0);
  v18 = sub_1B0E43988();
  v19 = sub_1B0E458E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1B0389000, v18, v19, "Invalid response when requesting statistics", v20, 2u);
    MEMORY[0x1B272C230](v20, -1, -1);
  }

  sub_1B0D29720();
  v21 = swift_allocError();
  v24 = v21;
  v25 = 0uLL;
  v26 = 1;
  a2(&v24);
}

uint64_t SearchSession.getIndexingDiagnostics(in:before:limit:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v9 = sub_1B0E439A8();
  __swift_project_value_buffer(v9, qword_1EB6DC3E0);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0389000, v10, v11, "Sending request for indexing diagnostics to SearchIndexer", v12, 2u);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  v13 = *(v8 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  *(v14 + 24) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0D296E0;
  *(v15 + 24) = v14;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();

  sub_1B0E43A28();
}

uint64_t sub_1B0D28540(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = *a1;
  if (*(a1 + 33))
  {
    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B0E439A8();
    __swift_project_value_buffer(v5, qword_1EB6DC3E0);
    v6 = v3;
    v7 = sub_1B0E43988();
    v8 = sub_1B0E458E8();
    sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_17;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v3;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B0389000, v7, v8, "Requesting indexing diagnostics failed with error %@", v9, 0xCu);
    sub_1B0398EFC(v10, &unk_1EB6E2630, &qword_1B0E97970);
    MEMORY[0x1B272C230](v10, -1, -1);
    v13 = v9;
LABEL_16:
    MEMORY[0x1B272C230](v13, -1, -1);
LABEL_17:

    v19 = 0;
    v20 = 0;
    return a2(v19, v20);
  }

  if (*(a1 + 32) != 66)
  {
    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v21 = sub_1B0E439A8();
    __swift_project_value_buffer(v21, qword_1EB6DC3E0);
    v7 = sub_1B0E43988();
    v22 = sub_1B0E458E8();
    if (!os_log_type_enabled(v7, v22))
    {
      goto LABEL_17;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1B0389000, v7, v22, "Invalid response when requesting indexing diagnostics", v23, 2u);
    v13 = v23;
    goto LABEL_16;
  }

  v14 = *(a1 + 8);
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v15 = sub_1B0E439A8();
  __swift_project_value_buffer(v15, qword_1EB6DC3E0);
  v16 = sub_1B0E43988();
  v17 = sub_1B0E45908();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B0389000, v16, v17, "Received a response when requesting indexing diagnostics", v18, 2u);
    MEMORY[0x1B272C230](v18, -1, -1);
  }

  v19 = v3;
  v20 = v14;
  return a2(v19, v20);
}

uint64_t SearchSession.excludeIndexedUIDs(in:from:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B0E439A8();
  __swift_project_value_buffer(v11, qword_1EB6DC3E0);
  v12 = sub_1B0E43988();
  v13 = sub_1B0E45908();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B0389000, v12, v13, "Sending request to exclude indexed UIDs to SearchIndexer.", v14, 2u);
    MEMORY[0x1B272C230](v14, -1, -1);
  }

  v15 = *(v7 + 16);
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0D296E8;
  *(v17 + 24) = v16;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B0E43A28();
}

uint64_t sub_1B0D28B24(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, void *a4)
{
  v6 = *a1;
  if (*(a1 + 33))
  {
    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B0E439A8();
    __swift_project_value_buffer(v8, qword_1EB6DC3E0);
    v9 = v6;
    v10 = sub_1B0E43988();
    v11 = sub_1B0E458E8();
    sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v6;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1B0389000, v10, v11, "Request to exclude indexed UIDs failed with error %@", v12, 0xCu);
      sub_1B0398EFC(v13, &unk_1EB6E2630, &qword_1B0E97970);
      MEMORY[0x1B272C230](v13, -1, -1);
LABEL_15:
      MEMORY[0x1B272C230](v12, -1, -1);
    }
  }

  else
  {
    if (*(a1 + 32) == 68)
    {
      if (qword_1EB6DC3D8 != -1)
      {
        swift_once();
      }

      v16 = sub_1B0E439A8();
      __swift_project_value_buffer(v16, qword_1EB6DC3E0);
      v10 = sub_1B0E43988();
      v17 = sub_1B0E45908();
      if (!os_log_type_enabled(v10, v17))
      {
        a4 = v6;
        goto LABEL_16;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B0389000, v10, v17, "Received a response when requesting to exclude indexed UIDs", v12, 2u);
      a4 = v6;
      goto LABEL_15;
    }

    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v18 = sub_1B0E439A8();
    __swift_project_value_buffer(v18, qword_1EB6DC3E0);
    v10 = sub_1B0E43988();
    v19 = sub_1B0E458E8();
    if (os_log_type_enabled(v10, v19))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B0389000, v10, v19, "Invalid response when requesting to exclude indexed UIDs", v12, 2u);
      goto LABEL_15;
    }
  }

LABEL_16:

  return a2(a4);
}

uint64_t SearchSession.sendAnalytics(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B0E439A8();
  __swift_project_value_buffer(v6, qword_1EB6DC3E0);
  v7 = sub_1B0E43988();
  v8 = sub_1B0E45908();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B0389000, v7, v8, "Sending analytics request to SearchIndexer.", v9, 2u);
    MEMORY[0x1B272C230](v9, -1, -1);
  }

  v10 = *(v3 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B0D296F4;
  *(v12 + 24) = v11;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();

  sub_1B0E43A28();
}

uint64_t sub_1B0D290CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  if ((*(a1 + 33) & 1) == 0)
  {
    if (*(a1 + 32) == 69 && (*(a1 + 8) | *(a1 + 16) | *(a1 + 24) | v3) == 0)
    {
      if (qword_1EB6DC3D8 != -1)
      {
        swift_once();
      }

      v18 = sub_1B0E439A8();
      __swift_project_value_buffer(v18, qword_1EB6DC3E0);
      v7 = sub_1B0E43988();
      v15 = sub_1B0E45908();
      if (!os_log_type_enabled(v7, v15))
      {
        goto LABEL_16;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v16 = "Received a response when requesting analytics";
    }

    else
    {
      if (qword_1EB6DC3D8 != -1)
      {
        swift_once();
      }

      v14 = sub_1B0E439A8();
      __swift_project_value_buffer(v14, qword_1EB6DC3E0);
      v7 = sub_1B0E43988();
      v15 = sub_1B0E458E8();
      if (!os_log_type_enabled(v7, v15))
      {
        goto LABEL_16;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v16 = "Invalid response when requesting analytics";
    }

    _os_log_impl(&dword_1B0389000, v7, v15, v16, v9, 2u);
    goto LABEL_15;
  }

  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B0E439A8();
  __swift_project_value_buffer(v5, qword_1EB6DC3E0);
  v6 = v3;
  v7 = sub_1B0E43988();
  v8 = sub_1B0E458E8();
  sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v3;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B0389000, v7, v8, "Request to send analytics failed with error %@", v9, 0xCu);
    sub_1B0398EFC(v10, &unk_1EB6E2630, &qword_1B0E97970);
    MEMORY[0x1B272C230](v10, -1, -1);
LABEL_15:
    MEMORY[0x1B272C230](v9, -1, -1);
  }

LABEL_16:

  return a2();
}

unint64_t sub_1B0D293C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_1B0E46C28();
  v8 = *(a1 + 16);
  MEMORY[0x1B2728D70](v8);
  if (v8)
  {
    v9 = (a1 + 32);
    do
    {
      v10 = *v9++;
      sub_1B0E46C68();
      --v8;
    }

    while (v8);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v11 = sub_1B0E46CB8();

  return sub_1B0D2947C(a1, a2, a3, v11);
}

unint64_t sub_1B0D2947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(a1 + 16);
    v13 = *(v4 + 48);
    v14 = (a1 + 32);
    do
    {
      v15 = (v13 + 24 * v7);
      v16 = *v15;
      if (*(*v15 + 16) == v12)
      {
        v17 = v15[1];
        v18 = v15[2];
        if (!v12 || v16 == a1)
        {
LABEL_11:
          if (v17 == a2 && v18 == a3 || (sub_1B0E46A78() & 1) != 0)
          {
            return v7;
          }
        }

        else
        {
          v19 = (v16 + 32);
          v20 = v14;
          v21 = v12;
          while (*v19 == *v20)
          {
            ++v19;
            ++v20;
            if (!--v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1B0D295AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6CA0, &unk_1B0EEDA28);
    v3 = sub_1B0E466A8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0D293C0(v5, v6, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v8;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B0D29720()
{
  result = qword_1EB6E6C90;
  if (!qword_1EB6E6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6C90);
  }

  return result;
}

uint64_t sub_1B0D29774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C88, &unk_1B0EEDA18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Suggestion.encode(to:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  [v4 setOutputFormat_];
  v5 = sub_1B0E44AC8();
  [v4 encodeObject:a2 forKey:v5];

  v6 = [v4 encodedData];
  v7 = sub_1B0E42F38();
  v9 = v8;

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0E46D38();
  __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1B0BA48CC();
  sub_1B0E46AC8();

  sub_1B0391D50(v7, v9);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_1B0D29978@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0D29EF0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t Suggestion.id.getter(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  v2 = sub_1B0E44AD8();

  return v2;
}

IMAPSearchIndexerXPC::Suggestion::ID __swiftcall Suggestion.ID.init(_:)(CSSuggestion a1)
{
  v2 = [(objc_class *)a1.super.isa uniqueIdentifier];
  v3 = sub_1B0E44AD8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.underlying._object = v7;
  result.underlying._countAndFlagsBits = v6;
  return result;
}

uint64_t static Suggestion.ID.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t Suggestion.ID.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

void sub_1B0D29AE4(uint64_t *a1@<X8>)
{
  v3 = [*v1 uniqueIdentifier];
  v4 = sub_1B0E44AD8();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t OSLogInterpolation.appendInterpolation(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E43908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E437A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B0E43808();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E93A0], v8);
  sub_1B0E437F8();
  (*(v9 + 8))(v12, v8);
  sub_1B0507508();
  sub_1B0E43888();
  sub_1B0D2A0B8(v7, MEMORY[0x1E69E93F0]);
  sub_1B0D2A0B8(v16, MEMORY[0x1E69E93B0]);
}

{
  return sub_1B0DCCA10(a1, a2, &unk_1F2736228, sub_1B0DCC968);
}

{
  return sub_1B0DCCA10(a1, a2, &unk_1F2736250, sub_1B0DCCBE0);
}

{
  return sub_1B0DCCE70(a1, a2);
}

{
  return sub_1B0DCCE70(a1, a2);
}

{
  return sub_1B0DCCE70(a1, a2);
}

{
  return sub_1B0DCCE70(a1, a2);
}

{
  return sub_1B0DCCE70(a1, a2);
}

{
  return sub_1B0DCD1FC(a1, a2, &unk_1F2736340, sub_1B0DCD1B4);
}

{
  return sub_1B0DCD1FC(a1, a2, &unk_1F2736368, sub_1B0DCD3EC);
}

{
  return sub_1B0DCCA10(a1, a2, &unk_1F2736390, sub_1B0DCD43C);
}

{
  return sub_1B0DCCA10(a1, a2, &unk_1F27363B8, sub_1B0DCD484);
}

{
  return sub_1B0DCD58C(a1, a2, &unk_1F27363E0, sub_1B0DCD4D4);
}

{
  return sub_1B0DCD58C(a1, a2, &unk_1F2736408, sub_1B0DCD75C);
}

{
  return sub_1B0DCCE70(a1, a2);
}

{
  return sub_1B0DCDCD4(a1, a2);
}

{
  return sub_1B0DCCE70(a1, a2);
}

{
  return sub_1B0DCCE70(a1, a2);
}

{
  return sub_1B0DCCE70(a1, a2);
}

{
  return sub_1B0DCDCD4(a1, a2);
}

{
  return sub_1B0DCCE70(a1, a2);
}

{
  return sub_1B0DCDCD4(a1, a2);
}

{
  return sub_1B0DCCE70(a1, a2);
}

{
  return sub_1B0DCCE70(a1, a2);
}

{
  return sub_1B0DCE128(a1, a2);
}

{
  return sub_1B0DCE128(a1, a2);
}

{
  v47 = a1;
  v50 = sub_1B0E437E8();
  v49 = *(v50 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v48 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E43808();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B0E43908();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44838();
  sub_1B0E438D8();

  v46 = a2;

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v67 = sub_1B0E43918();
  v68 = v15;
  v69 = v16;
  v70 = v17;
  v18 = v67;
  v19 = v15;
  v20 = BYTE1(v15);
  v21 = BYTE2(v15);
  v22 = v16;
  v23 = v17;
  sub_1B0507508();
  sub_1B0506134();
  v61 = v18;
  v62 = v19;
  v63 = v20;
  v64 = v21;
  v65 = v22;
  v66 = v23;
  sub_1B0E43898();
  v45 = MEMORY[0x1E69E93B0];
  v24 = v9;
  sub_1B0DCC990(v9, MEMORY[0x1E69E93B0]);
  v44 = MEMORY[0x1E69E93F0];
  sub_1B0DCC990(v13, MEMORY[0x1E69E93F0]);
  sub_1B04197E4(v22);

  sub_1B0E44838();
  sub_1B0E438D8();

  v25 = v46;

  v26 = swift_allocObject();
  *(v26 + 16) = v47;
  *(v26 + 24) = v25;
  v27 = v26;
  sub_1B0E44838();
  sub_1B0E438D8();

  v43[1] = v27;

  v28 = swift_allocObject();
  *(v28 + 16) = sub_1B0DCEA94;
  *(v28 + 24) = v27;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v57 = sub_1B0E43918();
  v58 = v29;
  v59 = v30;
  v60 = v31;
  v32 = v57;
  v33 = v29;
  LOBYTE(v27) = BYTE1(v29);
  LOBYTE(v9) = BYTE2(v29);
  v34 = v30;
  v35 = v31;
  sub_1B0507508();
  sub_1B0506134();
  v51 = v32;
  v52 = v33;
  v53 = v27;
  v54 = v9;
  v55 = v34;
  v56 = v35;
  sub_1B0E438A8();
  sub_1B0DCC990(v24, v45);
  sub_1B0DCC990(v13, v44);
  sub_1B04197E4(v34);

  sub_1B0E44838();
  sub_1B0E438D8();

  sub_1B0E44838();
  sub_1B0E438D8();

  v36 = v46;

  v37 = swift_allocObject();
  *(v37 + 16) = v47;
  *(v37 + 24) = v36;

  v38 = swift_allocObject();
  *(v38 + 16) = sub_1B0DCF220;
  *(v38 + 24) = v37;
  sub_1B0E438F8();
  v39 = v49;
  v40 = v48;
  v41 = v50;
  (*(v49 + 104))(v48, *MEMORY[0x1E69E93A8], v50);
  sub_1B0E437C8();
  (*(v39 + 8))(v40, v41);
  sub_1B0E43888();
  sub_1B0DCC990(v24, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v13, MEMORY[0x1E69E93F0]);

  sub_1B0E44838();
  sub_1B0E438D8();
}

{
  v4 = sub_1B0E43808();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E43908();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44838();
  sub_1B0E438D8();

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v29 = sub_1B0E43918();
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v16 = v29;
  v17 = v13 & 1;
  v18 = BYTE1(v13) & 1;
  v19 = BYTE2(v13) & 1;
  v20 = v14;
  v21 = v15;
  sub_1B0507508();
  sub_1B0506134();
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  sub_1B0E438A8();
  sub_1B0DCC990(v7, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v11, MEMORY[0x1E69E93F0]);
  sub_1B04197E4(v20);

  sub_1B0E44838();
  sub_1B0E438D8();
}

{
  v36 = a1;
  v39 = sub_1B0E437E8();
  v38 = *(v39 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E43808();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E43908();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44838();
  sub_1B0E438D8();

  v35 = a2;

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = v13;
  sub_1B0E44838();
  sub_1B0E438D8();

  v33[1] = v14;

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DCF250;
  *(v15 + 24) = v14;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v46 = sub_1B0E43918();
  v47 = v16;
  v48 = v17;
  v49 = v18;
  v19 = v46;
  v20 = v16;
  v21 = BYTE1(v16);
  v22 = BYTE2(v16);
  v23 = v17;
  v24 = v18;
  sub_1B0507508();
  v25 = v34;
  sub_1B0506134();
  v40 = v19;
  v41 = v20;
  v42 = v21;
  v43 = v22;
  v44 = v23;
  v45 = v24;
  sub_1B0E438A8();
  sub_1B0DCC990(v25, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v12, MEMORY[0x1E69E93F0]);
  sub_1B04197E4(v23);

  sub_1B0E44838();
  sub_1B0E438D8();

  v26 = v35;

  v27 = swift_allocObject();
  *(v27 + 16) = v36;
  *(v27 + 24) = v26;

  v28 = swift_allocObject();
  *(v28 + 16) = sub_1B0DCF288;
  *(v28 + 24) = v27;
  sub_1B0E438F8();
  v29 = v38;
  v30 = v37;
  v31 = v39;
  (*(v38 + 104))(v37, *MEMORY[0x1E69E93A8], v39);
  sub_1B0E437C8();
  (*(v29 + 8))(v30, v31);
  sub_1B0E43888();
  sub_1B0DCC990(v25, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v12, MEMORY[0x1E69E93F0]);

  sub_1B0E44838();
  sub_1B0E438D8();
}

uint64_t _s20IMAPSearchIndexerXPC10SuggestionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = [a1 uniqueIdentifier];
  v4 = sub_1B0E44AD8();
  v6 = v5;

  v7 = [a2 uniqueIdentifier];
  v8 = sub_1B0E44AD8();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B0E46A78();
  }

  return v12 & 1;
}

id sub_1B0D29E30()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B0E42F18();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1B0E42CD8();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1B0D29EF0(uint64_t *a1)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0E46D08();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    sub_1B0D15CB0();
    sub_1B0E46AA8();
    v5 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    sub_1B03B2000(v9, v10);
    v6 = sub_1B0D29E30();
    sub_1B0391D50(v9, v10);
    [v6 setRequiresSecureCoding_];
    sub_1B0D2A1E8();
    v8 = sub_1B0E45CA8();
    if (v8)
    {
      v2 = v8;

      sub_1B0391D50(v9, v10);
      __swift_destroy_boxed_opaque_existential_0(v11);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v2;
    }

    sub_1B0D2A234();
    swift_allocError();
    swift_willThrow();

    sub_1B0391D50(v9, v10);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_1B0D2A090()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B0D2A0B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B0D2A11C()
{
  result = qword_1EB6E6CB0;
  if (!qword_1EB6E6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6CB0);
  }

  return result;
}

unint64_t sub_1B0D2A174()
{
  result = qword_1EB6E6CB8;
  if (!qword_1EB6E6CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6CB8);
  }

  return result;
}

unint64_t sub_1B0D2A1E8()
{
  result = qword_1EB6E6CC0;
  if (!qword_1EB6E6CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB6E6CC0);
  }

  return result;
}

unint64_t sub_1B0D2A234()
{
  result = qword_1EB6E6CC8;
  if (!qword_1EB6E6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6CC8);
  }

  return result;
}

uint64_t sub_1B0D2A298()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DC3B8);
  __swift_project_value_buffer(v0, qword_1EB6DC3B8);
  return sub_1B0E43998();
}

uint64_t *SyncSession.__allocating_init(generateCredentials:updateIndexingStatistics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v27 = a1;
  v39 = a4;
  v28 = a3;
  v36 = sub_1B0E439E8();
  v33 = *(v36 - 8);
  v34 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E459C8();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B0E45988();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1B0E44288();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1B06CCC58();
  v29 = "IndexerXPC13SearchSession";
  v30 = v14;
  sub_1B0E44258();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1B041E5BC(&qword_1EB6DEEE0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B03CFB8C(&qword_1EB6DEEF0, &qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B0E460A8();
  (*(v31 + 104))(v9, *MEMORY[0x1E69E8090], v32);
  v15 = sub_1B0E45A08();
  v16 = sub_1B0E43A68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6C68, &qword_1B0EED9F0);
  v17 = *(v33 + 72);
  v18 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B0EC1E70;
  v20 = v15;
  sub_1B0E439D8();
  v40 = v19;
  sub_1B041E5BC(&qword_1EB6DC1A0, MEMORY[0x1E69E8498]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6C78, &unk_1B0EEDC70);
  sub_1B03CFB8C(&qword_1EB6DB300, &unk_1EB6E6C78, &unk_1B0EEDC70);
  sub_1B0E460A8();
  v21 = v16;
  v22 = v37;
  v23 = sub_1B0E439C8();
  if (v22)
  {
  }

  else
  {
    v24 = v23;
    swift_allocObject();
    v21 = sub_1B0D2B9A0(v24, v20, v27, v38, v28, v39);
  }

  return v21;
}

void sub_1B0D2A7A8(uint64_t a1)
{
  v2 = sub_1B0E43A78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB6DC3B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1B0E439A8();
  __swift_project_value_buffer(v7, qword_1EB6DC3B8);
  v8 = *(v3 + 16);
  v8(v6, a1, v2);
  v9 = sub_1B0E43988();
  v10 = sub_1B0E458E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_1B041E5BC(&unk_1EB6DC190, MEMORY[0x1E69E84C0]);
    v13 = swift_allocError();
    v8(v14, v6, v2);
    v15 = sub_1B0E42CC8();
    (*(v3 + 8))(v6, v2);

    *(v11 + 4) = v15;
    *v12 = v15;
    _os_log_impl(&dword_1B0389000, v9, v10, "cancelled: %@", v11, 0xCu);
    sub_1B0398EFC(v12, &unk_1EB6E2630, &qword_1B0E97970);
    MEMORY[0x1B272C230](v12, -1, -1);
    MEMORY[0x1B272C230](v11, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t SyncSession.deinit()
{
  v1 = v0;
  if (qword_1EB6DC3B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B0E439A8();
  __swift_project_value_buffer(v2, qword_1EB6DC3B8);
  v3 = sub_1B0E43988();
  v4 = sub_1B0E45908();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0389000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x1B272C230](v5, -1, -1);
  }

  v6 = *(v1 + 24);

  sub_1B0E43A48();

  v7 = *(v1 + 24);

  return v1;
}

uint64_t SyncSession.__deallocating_deinit()
{
  SyncSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B0D2AB80@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t (*)(), uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v26 = a3;
  v27 = a2;
  v28 = a5;
  v7 = sub_1B0E43AC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B0D1EC20();
  sub_1B0E43AB8();
  v10 = v29;
  v11 = v30;
  v12 = v33;
  v13 = v33 >> 6;
  if (v13 == 3)
  {
    result = a4(v29, v30, v31, v32);
LABEL_9:
    v23 = v28;
    *(v28 + 32) = 0;
    *v23 = 0u;
    v23[1] = 0u;
    return result;
  }

  v24 = v32;
  v25 = v31;
  if (v13 == 2)
  {
    (*(v8 + 16))(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v16 = swift_allocObject();
    (*(v8 + 32))(v16 + v15, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if (qword_1EB6DC3B0 != -1)
    {
      swift_once();
    }

    v17 = sub_1B0E439A8();
    __swift_project_value_buffer(v17, qword_1EB6DC3B8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = sub_1B0E43988();
    v19 = sub_1B0E45908();
    sub_1B0D2BB98(v10, v11, v25, v24, v12);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1B0399D64(v10, v11, &v29);
      _os_log_impl(&dword_1B0389000, v18, v19, "Responding to credential request for account %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B272C230](v21, -1, -1);
      MEMORY[0x1B272C230](v20, -1, -1);
    }

    v22 = swift_allocObject();
    *(v22 + 16) = sub_1B0D2BAFC;
    *(v22 + 24) = v16;

    v27(v10, v11, sub_1B0D2BC38, v22);

    sub_1B0D2BB98(v10, v11, v25, v24, v12);

    goto LABEL_9;
  }

  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SyncSession.activate()()
{
  v2 = *(v0 + 24);
  sub_1B0E43A58();
  if (v1)
  {
    if (qword_1EB6DC3B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B0E439A8();
    __swift_project_value_buffer(v3, qword_1EB6DC3B8);
    v4 = v1;
    v5 = sub_1B0E43988();
    v6 = sub_1B0E458F8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1B0389000, v5, v6, "Could not activate XPCSession due to %@.", v7, 0xCu);
      sub_1B0398EFC(v8, &unk_1EB6E2630, &qword_1B0E97970);
      MEMORY[0x1B272C230](v8, -1, -1);
      MEMORY[0x1B272C230](v7, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    if (qword_1EB6DC3B0 != -1)
    {
      swift_once();
    }

    v11 = sub_1B0E439A8();
    __swift_project_value_buffer(v11, qword_1EB6DC3B8);
    v12 = sub_1B0E43988();
    v13 = sub_1B0E45908();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B0389000, v12, v13, "Activated XPCSession", v14, 2u);
      MEMORY[0x1B272C230](v14, -1, -1);
    }
  }
}

Swift::Void __swiftcall SyncSession.cancel(reason:)(Swift::String reason)
{
  v2 = *(v1 + 24);
  sub_1B0E43A48();
  if (qword_1EB6DC3B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B0E439A8();
  __swift_project_value_buffer(v3, qword_1EB6DC3B8);
  oslog = sub_1B0E43988();
  v4 = sub_1B0E45908();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0389000, oslog, v4, "Cancelled XPCSession", v5, 2u);
    MEMORY[0x1B272C230](v5, -1, -1);
  }
}

uint64_t SyncSession.start(_:configurations:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B0D2BAC0;
  *(v9 + 24) = v8;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();

  sub_1B0E43A28();
}

uint64_t sub_1B0D2B51C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  if (*(a1 + 33))
  {
    if (qword_1EB6DC3B0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B0E439A8();
    __swift_project_value_buffer(v5, qword_1EB6DC3B8);
    v6 = v3;
    v7 = sub_1B0E43988();
    v8 = sub_1B0E458E8();
    sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = sub_1B0E42CC8();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_1B0389000, v7, v8, "Start index request failed: %@", v9, 0xCu);
      sub_1B0398EFC(v10, &unk_1EB6E2630, &qword_1B0E97970);
      MEMORY[0x1B272C230](v10, -1, -1);
LABEL_15:
      v3 = 4;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (*(a1 + 32) > 0x3Fu)
  {
    if (qword_1EB6DC3B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B0E439A8();
    __swift_project_value_buffer(v14, qword_1EB6DC3B8);
    v7 = sub_1B0E43988();
    v15 = sub_1B0E458E8();
    if (os_log_type_enabled(v7, v15))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B0389000, v7, v15, "Invalid response for start index request.", v9, 2u);
      goto LABEL_15;
    }

LABEL_17:
    v3 = 4;
    goto LABEL_18;
  }

  if (qword_1EB6DC3B0 != -1)
  {
    swift_once();
  }

  v12 = sub_1B0E439A8();
  __swift_project_value_buffer(v12, qword_1EB6DC3B8);
  v7 = sub_1B0E43988();
  v13 = sub_1B0E45908();
  if (os_log_type_enabled(v7, v13))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B0389000, v7, v13, "Received response for start index request.", v9, 2u);
LABEL_16:
    MEMORY[0x1B272C230](v9, -1, -1);
  }

LABEL_18:

  return a2(v3);
}

Swift::Void __swiftcall SyncSession.stop(_:)(IMAPSearchIndexerXPC::IndexRequest::ID a1)
{
  v2 = *(v1 + 24);
  sub_1B0D1EBCC();
  sub_1B0E43A38();
}

uint64_t *sub_1B0D2B9A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *v7;
  v7[2] = a2;
  v7[3] = a1;
  v14 = v13;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a6;

  v16 = a2;

  sub_1B0E43A18();

  v17 = v7[3];

  sub_1B0E439F8();

  return v7;
}

uint64_t sub_1B0D2BAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 48);
  return sub_1B0D2AB80(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), a2);
}

uint64_t sub_1B0D2BAFC()
{
  v0 = *(sub_1B0E43AC8() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  sub_1B0D1EBCC();
  return sub_1B0E43AA8();
}

uint64_t sub_1B0D2BB98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = a5 >> 6;
  if (v5 == 2)
  {
  }

  if (v5 == 1)
  {
    return sub_1B0D2BBC0(result, a2, a3, a4, a5 & 0x3F);
  }

  return result;
}

uint64_t sub_1B0D2BBC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  if (a5 == 2)
  {
    return sub_1B0D2BBF8(result);
  }

  if (a5 == 4)
  {
  }

  return result;
}

uint64_t sub_1B0D2BBF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B0D2BC38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t SearchQuery.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46508();
  MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
  v4 = MEMORY[0x1B27272F0](a3, &type metadata for Mailbox);
  MEMORY[0x1B2726E80](v4);

  return 0;
}

uint64_t UID.rawValue.setter(uint64_t result)
{
  *v1 = result;
  return result;
}

{
  *v1 = result;
  return result;
}

double (*UID.rawValue.modify())(void)
{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t sub_1B0D2BE3C()
{
  if (*v0)
  {
    result = 0x49746E756F636361;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1B0D2BE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0D2BF58()
{
  sub_1B0D2D534();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D2BF94()
{
  sub_1B0D2D534();

  return sub_1B0E46F38();
}

uint64_t Mailbox.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6CD0, &unk_1B0EEDCB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2D534();
  sub_1B0E46D48();
  v17 = a2;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B0CF4AC8(&qword_1EB6DAE00);
  sub_1B0E46958();
  if (!v4)
  {
    v17 = a3;
    v18 = v16;
    v19 = 1;
    sub_1B0D11D5C();
    sub_1B0E46958();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t Mailbox.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      sub_1B0E46C68();
      --v3;
    }

    while (v3);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t Mailbox.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  v2 = *(a1 + 16);
  MEMORY[0x1B2728D70](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1B0E46C68();
      --v2;
    }

    while (v2);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2C2E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0D2D588(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1B0D2C348()
{
  v1 = v0[1];
  v2 = v0[2];
  return Mailbox.hashValue.getter(*v0);
}

uint64_t sub_1B0D2C354()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(*v0 + 16);
  MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B0E46C68();
      --v4;
    }

    while (v4);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0D2C3D0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1B0E46C28();
  v4 = *(v2 + 16);
  MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B0E46C68();
      --v4;
    }

    while (v4);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2C470()
{
  v1 = 0x74696D696CLL;
  if (*v0 != 1)
  {
    v1 = 0x65786F626C69616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974736567677573;
  }
}

uint64_t sub_1B0D2C4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0D2D854(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0D2C4F8()
{
  sub_1B0D2D7AC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D2C534()
{
  sub_1B0D2D7AC();

  return sub_1B0E46F38();
}

uint64_t SearchQuery.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6CD8, &unk_1B0EEDCC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2D7AC();
  sub_1B0E46D48();
  v17 = a2;
  v16 = 0;
  sub_1B0D2D800();
  sub_1B0E46958();
  if (!v4)
  {
    LOBYTE(v17) = 1;
    sub_1B0E46948();
    v17 = a4;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FE8, &qword_1B0EA07D0);
    sub_1B0D2E8A8(&qword_1EB6DB308, sub_1B0D20A40);
    sub_1B0E46958();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1B0D2C7E4(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1B0D2C810@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0D2D978(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t SearchQuery.id.getter(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  v2 = sub_1B0E44AD8();

  return v2;
}

uint64_t IndexingDiagnostics.indexed.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t IndexingDiagnostics.unindexed.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B0D2C998()
{
  if (*v0)
  {
    result = 0x657865646E696E75;
  }

  else
  {
    result = 0x64657865646E69;
  }

  *v0;
  return result;
}

uint64_t sub_1B0D2C9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657865646E69 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657865646E696E75 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0D2CABC()
{
  sub_1B0D2DBE8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D2CAF8()
{
  sub_1B0D2DBE8();

  return sub_1B0E46F38();
}

uint64_t static IndexingDiagnostics.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1B03B6298(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1B03B6298(a2, a4);
}

uint64_t IndexingDiagnostics.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6CE0, &unk_1B0EEDCD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2DBE8();
  sub_1B0E46D48();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E30A0, &qword_1B0EA0900);
  sub_1B0D2DC3C(&qword_1EB6E6CF0, sub_1B0D20B18);
  sub_1B0E46958();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_1B0E46958();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B0D2CD98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0D2DCB4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1B0D2CDE0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B03B6298(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B03B6298(v2, v3);
}

uint64_t IndexingStatistics.messagesNotIndexed.getter(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0D2CF0C()
{
  v1 = 0x73654D6C61746F74;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x736567617373656DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B0D2CFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0D2DF38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0D2CFCC()
{
  sub_1B0D2DEE4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D2D008()
{
  sub_1B0D2DEE4();

  return sub_1B0E46F38();
}

uint64_t IndexingStatistics.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6CF8, &qword_1B0EEDCE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2DEE4();
  sub_1B0E46D48();
  v18 = 0;
  sub_1B0E46948();
  if (v5)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v17 = 1;
  sub_1B0E46948();
  v16 = 2;
  sub_1B0E46948();
  v15 = 3;
  sub_1B0E46948();
  return (*(v8 + 8))(v11, v7);
}

uint64_t IndexingStatistics.init(from:)(uint64_t *a1)
{
  result = sub_1B0D2E0B8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1B0D2D244@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0D2E0B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

double IndexingStatistics.fractionCompleted.getter(uint64_t a1, uint64_t a2)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  else
  {
    return a2 / a1;
  }
}

uint64_t IndexingStatistics.fractionCompletedAsInt.getter(uint64_t result, uint64_t a2)
{
  if (result < 1)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = a2 / result * 100.0;
  }

  v3 = round(v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B0D2D368()
{
  v1 = v0[2];
  v4 = *v0;
  sub_1B0E46508();
  MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
  v2 = MEMORY[0x1B27272F0](v1, &type metadata for Mailbox);
  MEMORY[0x1B2726E80](v2);

  return 0;
}

uint64_t _s20IMAPSearchIndexerXPC11SearchQueryV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = [a1 uniqueIdentifier];
  v12 = sub_1B0E44AD8();
  v14 = v13;

  v15 = [a4 uniqueIdentifier];
  v16 = sub_1B0E44AD8();
  v18 = v17;

  if (v12 == v16 && v14 == v18)
  {

    if (a2 == a5)
    {
      goto LABEL_7;
    }

    return 0;
  }

  v20 = sub_1B0E46A78();

  if ((v20 & 1) == 0 || a2 != a5)
  {
    return 0;
  }

LABEL_7:

  return sub_1B0D19C24(a3, a6);
}

unint64_t sub_1B0D2D534()
{
  result = qword_1EB6DC3A8;
  if (!qword_1EB6DC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC3A8);
  }

  return result;
}

uint64_t sub_1B0D2D588(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6D70, &unk_1B0EEE628);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2D534();
  sub_1B0E46D18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  v11 = 0;
  sub_1B0CF4AC8(&qword_1EB6E64A8);
  sub_1B0E46868();
  v9 = v10[1];
  v11 = 1;
  sub_1B0D12EDC();
  sub_1B0E46868();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

unint64_t sub_1B0D2D7AC()
{
  result = qword_1EB6DC7D0;
  if (!qword_1EB6DC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7D0);
  }

  return result;
}

unint64_t sub_1B0D2D800()
{
  result = qword_1EB6DC858;
  if (!qword_1EB6DC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC858);
  }

  return result;
}

uint64_t sub_1B0D2D854(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0D2D978(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6D58, &qword_1B0EEE620);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2D7AC();
  sub_1B0E46D18();
  HIBYTE(v10) = 0;
  sub_1B0D2E854();
  sub_1B0E46868();
  v9 = v11;
  LOBYTE(v11) = 1;
  sub_1B0E46858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FE8, &qword_1B0EA07D0);
  HIBYTE(v10) = 2;
  sub_1B0D2E8A8(&qword_1EB6E6D68, sub_1B0D25B04);
  sub_1B0E46868();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

unint64_t sub_1B0D2DBE8()
{
  result = qword_1EB6E6CE8;
  if (!qword_1EB6E6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6CE8);
  }

  return result;
}

uint64_t sub_1B0D2DC3C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E30A0, &qword_1B0EA0900);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B0D2DCB4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6D48, &qword_1B0EEE618);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2DBE8();
  sub_1B0E46D18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E30A0, &qword_1B0EA0900);
  v11 = 0;
  sub_1B0D2DC3C(&qword_1EB6E6D50, sub_1B0D25978);
  sub_1B0E46868();
  v9 = v12;
  v11 = 1;
  sub_1B0E46868();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

unint64_t sub_1B0D2DEE4()
{
  result = qword_1EB6DC550;
  if (!qword_1EB6DC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC550);
  }

  return result;
}

uint64_t sub_1B0D2DF38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73654D6C61746F74 && a2 == 0xED00007365676173;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xEF64657865646E49 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B0F2F970 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B0F2F990 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B0D2E0B8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6D40, &qword_1B0EEE610);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2DEE4();
  sub_1B0E46D18();
  v14 = 0;
  v8 = sub_1B0E46858();
  v13 = 1;
  sub_1B0E46858();
  v12 = 2;
  sub_1B0E46858();
  v11 = 3;
  sub_1B0E46858();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_1B0D2E2A4()
{
  result = qword_1EB6E6D00;
  if (!qword_1EB6E6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D00);
  }

  return result;
}

unint64_t sub_1B0D2E2FC()
{
  result = qword_1EB6DC380;
  if (!qword_1EB6DC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC380);
  }

  return result;
}

unint64_t sub_1B0D2E3E4()
{
  result = qword_1EB6E6D08;
  if (!qword_1EB6E6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D08);
  }

  return result;
}

unint64_t sub_1B0D2E43C()
{
  result = qword_1EB6E6D10;
  if (!qword_1EB6E6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D10);
  }

  return result;
}

unint64_t sub_1B0D2E494()
{
  result = qword_1EB6E6D18;
  if (!qword_1EB6E6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D18);
  }

  return result;
}

unint64_t sub_1B0D2E4EC()
{
  result = qword_1EB6E6D20;
  if (!qword_1EB6E6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D20);
  }

  return result;
}

unint64_t sub_1B0D2E544()
{
  result = qword_1EB6DC540;
  if (!qword_1EB6DC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC540);
  }

  return result;
}

unint64_t sub_1B0D2E59C()
{
  result = qword_1EB6DC548;
  if (!qword_1EB6DC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC548);
  }

  return result;
}

unint64_t sub_1B0D2E5F4()
{
  result = qword_1EB6E6D28;
  if (!qword_1EB6E6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D28);
  }

  return result;
}

unint64_t sub_1B0D2E64C()
{
  result = qword_1EB6E6D30;
  if (!qword_1EB6E6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D30);
  }

  return result;
}

unint64_t sub_1B0D2E6A4()
{
  result = qword_1EB6DC7C0;
  if (!qword_1EB6DC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7C0);
  }

  return result;
}

unint64_t sub_1B0D2E6FC()
{
  result = qword_1EB6DC7C8;
  if (!qword_1EB6DC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7C8);
  }

  return result;
}

unint64_t sub_1B0D2E754()
{
  result = qword_1EB6DC398;
  if (!qword_1EB6DC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC398);
  }

  return result;
}

unint64_t sub_1B0D2E7AC()
{
  result = qword_1EB6DC3A0;
  if (!qword_1EB6DC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC3A0);
  }

  return result;
}

unint64_t sub_1B0D2E800()
{
  result = qword_1EB6E6D38;
  if (!qword_1EB6E6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D38);
  }

  return result;
}

unint64_t sub_1B0D2E854()
{
  result = qword_1EB6E6D60;
  if (!qword_1EB6E6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D60);
  }

  return result;
}

uint64_t sub_1B0D2E8A8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2FE8, &qword_1B0EA07D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1B0D2E930(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xFFFFFFFE00000000;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 512;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  return result;
}

double variable initialization expression of AuthenticatedURLRump.expire@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 57) = 1;
  return result;
}

double variable initialization expression of BodyStructure.DispositionAndLanguage.disposition@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of ExtendedSearchResponse.correlator@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of FramingParser.buffer()
{
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }
}

double variable initialization expression of BodyStructure.Multipart.extension@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double variable initialization expression of NetworkPath.command@<D0>(_OWORD *a1@<X8>)
{
  sub_1B0D2E930(v9);
  v2 = v17;
  a1[8] = v16;
  a1[9] = v2;
  v3 = v19;
  a1[10] = v18;
  a1[11] = v3;
  v4 = v13;
  a1[4] = v12;
  a1[5] = v4;
  v5 = v15;
  a1[6] = v14;
  a1[7] = v5;
  v6 = v9[1];
  *a1 = v9[0];
  a1[1] = v6;
  result = *&v10;
  v8 = v11;
  a1[2] = v10;
  a1[3] = v8;
  return result;
}

uint64_t variable initialization expression of QResyncParameter.knownUIDs@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1B0D2EDC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of BodyStructure.Singlepart.extension@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1B0EA4610;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return result;
}

double variable initialization expression of BodyStructure.Singlepart.Extension.dispositionAndLanguage@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1B0EA4610;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_1B0D2EEA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0D2EEC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D2EF48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0D2EF68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 28) = v3;
  return result;
}

__n128 __swift_memcpy106_1(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B0D2EFD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 106))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0D2EFF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 106) = v3;
  return result;
}

uint64_t Access.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v4 = 1;
LABEL_5:
    MEMORY[0x1B2728D70](v4);

    return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  if (a2 | a3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  return MEMORY[0x1B2728D70](v6);
}

uint64_t Access.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B0E46C28();
  if (!a3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v6 = 1;
LABEL_5:
    MEMORY[0x1B2728D70](v6);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1B0E46CB8();
  }

  if (a1 | a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  MEMORY[0x1B2728D70](v7);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2F1E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  if (!v3)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 1;
LABEL_5:
    MEMORY[0x1B2728D70](v4);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1B0E46CB8();
  }

  if (v1 | v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  MEMORY[0x1B2728D70](v5);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2F27C()
{
  if (!*(v0 + 16))
  {
    v1 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v1 = 1;
LABEL_5:
    MEMORY[0x1B2728D70](v1);

    return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  if (*v0 == 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  return MEMORY[0x1B2728D70](v3);
}

uint64_t sub_1B0D2F314()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  if (!v3)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 1;
LABEL_5:
    MEMORY[0x1B2728D70](v4);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1B0E46CB8();
  }

  if (v1 | v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  MEMORY[0x1B2728D70](v5);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2F3C8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
LABEL_21:
      v29 = *(v3 + 20);
      if (a1 | a2)
      {
        result = sub_1B0CFC1B0(0x756F6D796E6F6E61, 0xE900000000000073, (v3 + 8), *(v3 + 20));
        if (v30)
        {
          v31._countAndFlagsBits = 0x756F6D796E6F6E61;
          v31._object = 0xE900000000000073;
          result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
        }

        v32 = *(v3 + 20);
        v16 = __CFADD__(v32, result);
        v33 = v32 + result;
        if (!v16)
        {
          goto LABEL_30;
        }

        __break(1u);
      }

      result = sub_1B0CFC1B0(0x7265737568747561, 0xE800000000000000, (v3 + 8), v29);
      if (v34)
      {
        v35._countAndFlagsBits = 0x7265737568747561;
        v35._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v35, v29);
      }

      v36 = *(v3 + 20);
      v16 = __CFADD__(v36, result);
      v33 = v36 + result;
      if (!v16)
      {
LABEL_30:
        *(v3 + 20) = v33;
        return result;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    v6 = *(v3 + 20);
    result = sub_1B0CFC1B0(0x2B72657375, 0xE500000000000000, (v3 + 8), *(v3 + 20));
    if (v8)
    {
      v9._countAndFlagsBits = 0x2B72657375;
      v9._object = 0xE500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
    }

    v10 = result;
    v11 = *(v3 + 20);
    v12 = (v11 + result);
    if (__CFADD__(v11, result))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *(v3 + 20) = v12;
    result = sub_1B0CFC1B0(a1, a2, (v3 + 8), v12);
    if (v13)
    {
      v14._countAndFlagsBits = a1;
      v14._object = a2;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
    }

    v15 = *(v3 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_33;
    }

    *(v3 + 20) = v17;
    v18 = __OFADD__(v10, result);
    result += v10;
    if (!v18)
    {
      return result;
    }

    __break(1u);
  }

  v19 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x2B74696D627573, 0xE700000000000000, (v3 + 8), *(v3 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 0x2B74696D627573;
    v21._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = result;
  v23 = *(v3 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_32;
  }

  *(v3 + 20) = v24;
  result = sub_1B0CFC1B0(a1, a2, (v3 + 8), v24);
  if (v25)
  {
    v26._countAndFlagsBits = a1;
    v26._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v3 + 20);
  v16 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v16)
  {
    goto LABEL_34;
  }

  *(v3 + 20) = v28;
  v18 = __OFADD__(v22, result);
  result += v22;
  if (v18)
  {
    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t _s12NIOIMAPCore26AccessO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1B0E46A78();
  }

  return 0;
}

unint64_t sub_1B0D2F6D8()
{
  result = qword_1EB6E6ED8;
  if (!qword_1EB6E6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6ED8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore26AccessO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

NIOIMAPCore2::AppendData __swiftcall AppendData.init(byteCount:withoutContentTransferEncoding:)(Swift::Int byteCount, Swift::Bool withoutContentTransferEncoding)
{
  v2 = withoutContentTransferEncoding;
  result.byteCount = byteCount;
  result.withoutContentTransferEncoding = v2;
  return result;
}

uint64_t AppendData.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2F868()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2F8C8()
{
  v1 = *(v0 + 8);
  MEMORY[0x1B2728D70](*v0);
  return sub_1B0E46C68();
}

uint64_t sub_1B0D2F908()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D2F968()
{
  result = qword_1EB6E6EE0;
  if (!qword_1EB6E6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6EE0);
  }

  return result;
}

uint64_t sub_1B0D2F9BC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for AppendData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0D2FA50(uint64_t result, char a2)
{
  v3 = *(v2 + 1) | (*(v2 + 5) << 32);
  if ((v3 & 0x8000000000) != 0)
  {
    goto LABEL_26;
  }

  if ((a2 & 1) == 0)
  {
LABEL_9:
    if ((v3 & 0x10000) == 0)
    {
      v10 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v10);

      MEMORY[0x1B2726E80](658813, 0xE300000000000000);
      v11 = *(v2 + 20);
      v12 = sub_1B0CFC1B0(123, 0xE100000000000000, (v2 + 8), *(v2 + 20));
      if (v13)
      {
        v14._countAndFlagsBits = 123;
        v14._object = 0xE100000000000000;
        v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
      }

      v9 = v12;

      v15 = *(v2 + 20);
      result = (v15 + v9);
      if (!__CFADD__(v15, v9))
      {
LABEL_13:
        *(v2 + 20) = result;
        sub_1B0D7D00C(result);
        return v9;
      }

      __break(1u);
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  *(v2 + 5);
  if ((*(v2 + 1) & 0x10000) == 0)
  {
    v4 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v4);

    MEMORY[0x1B2726E80](658813, 0xE300000000000000);
    v5 = *(v2 + 20);
    v6 = sub_1B0CFC1B0(31614, 0xE200000000000000, (v2 + 8), *(v2 + 20));
    if (v7)
    {
      v8._countAndFlagsBits = 31614;
      v8._object = 0xE200000000000000;
      v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = v6;

    LODWORD(v3) = *(v2 + 20);
    result = (v3 + v9);
    if (!__CFADD__(v3, v9))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_9;
  }

  v16 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v16);

  MEMORY[0x1B2726E80](168656171, 0xE400000000000000);
  v17 = *(v2 + 20);
  v18 = sub_1B0CFC1B0(31614, 0xE200000000000000, (v2 + 8), *(v2 + 20));
  if (v19)
  {
    v20._countAndFlagsBits = 31614;
    v20._object = 0xE200000000000000;
    v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
  }

  v9 = v18;

  v21 = *(v2 + 20);
  v22 = __CFADD__(v21, v9);
  v23 = v21 + v9;
  if (!v22)
  {
    goto LABEL_22;
  }

  __break(1u);
LABEL_19:
  v24 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v24);

  MEMORY[0x1B2726E80](168656171, 0xE400000000000000);
  v25 = *(v2 + 20);
  v26 = sub_1B0CFC1B0(123, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v27)
  {
    v28._countAndFlagsBits = 123;
    v28._object = 0xE100000000000000;
    v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v25);
  }

  v9 = v26;

  v29 = *(v2 + 20);
  v22 = __CFADD__(v29, v9);
  v23 = v29 + v9;
  if (!v22)
  {
LABEL_22:
    *(v2 + 20) = v23;
    return v9;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t AppendMessage.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

__n128 AppendMessage.options.setter(uint64_t a1)
{
  v3 = *v1;

  v4 = v1[3];

  v5 = v1[4];

  v6 = v1[5];

  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v7;
  result = *(a1 + 32);
  *(v1 + 2) = result;
  return result;
}

uint64_t AppendMessage.data.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t AppendMessage.data.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

__n128 AppendMessage.init(options:data:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

uint64_t AppendMessage.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  AppendOptions.hash(into:)(a1);
  v2 = *(v1 + 56);
  MEMORY[0x1B2728D70](*(v1 + 6));
  return sub_1B0E46C68();
}

uint64_t AppendMessage.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7 = v0[2];
  AppendOptions.hash(into:)(v4);
  v2 = *(v0 + 56);
  MEMORY[0x1B2728D70](*(v0 + 6));
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2FF5C()
{
  v1 = v0[1];
  v6 = *v0;
  v7 = v1;
  v8 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 56);
  sub_1B0E46C28();
  AppendOptions.hash(into:)(v5);
  MEMORY[0x1B2728D70](v2);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2FFD8(uint64_t a1)
{
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v2 = *(v1 + 6);
  v3 = *(v1 + 56);
  AppendOptions.hash(into:)(a1);
  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46C68();
}

uint64_t sub_1B0D3003C()
{
  v1 = v0[1];
  v6 = *v0;
  v7 = v1;
  v8 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 56);
  sub_1B0E46C28();
  AppendOptions.hash(into:)(v5);
  MEMORY[0x1B2728D70](v2);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

BOOL sub_1B0D300B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore213AppendMessageV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

BOOL _s12NIOIMAPCore213AppendMessageV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if ((sub_1B03D1B3C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }

    return (sub_1B045202C(v7, v11) & 1) != 0 && (sub_1B0D3A338(v6, v10) & 1) != 0 && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0;
  }

  result = 0;
  if ((v9 & 1) == 0 && v4 == v8)
  {
    return (sub_1B045202C(v7, v11) & 1) != 0 && (sub_1B0D3A338(v6, v10) & 1) != 0 && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0;
  }

  return result;
}

unint64_t sub_1B0D301E8()
{
  result = qword_1EB6E6EE8;
  if (!qword_1EB6E6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6EE8);
  }

  return result;
}

uint64_t sub_1B0D3023C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0D30284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL static AppendOptions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1B0D390A0(*a1, *a2, MEMORY[0x1E69E6088]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  return (sub_1B045202C(v5, v7) & 1) != 0 && (sub_1B0D3A338(v6, v8) & 1) != 0;
}

uint64_t sub_1B0D30380(uint64_t a1)
{
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F28, "P5\a");
  v2 = *(*(v161 - 8) + 64);
  MEMORY[0x1EEE9AC00](v161);
  v170 = (&v144 - v3);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6568, &qword_1B0EE7F08);
  v4 = *(*(v160 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v160);
  v159 = (&v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v158 = (&v144 - v7);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F30, &qword_1B0EEEAE0);
  v8 = *(*(v157 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v157);
  v156 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v155 = (&v144 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v169 = (&v144 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v154 = (&v144 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v153 = &v144 - v17;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F38, &qword_1B0EEEAE8);
  v18 = *(*(v152 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v152);
  v151 = (&v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v19);
  v168 = (&v144 - v22);
  v23 = *a1;
  if (*(*a1 + 16))
  {
    v24 = *(v171 + 20);
    v25 = 0;
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v171 + 8), *(v171 + 20));
    if (v26)
    {
      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
    }

    v28 = result;
    v29 = *(v171 + 20);
    v30 = (v29 + result);
    if (__CFADD__(v29, result))
    {
      goto LABEL_77;
    }

    v31 = v171;
    *(v171 + 20) = v30;
    v175 = v23;
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v31 + 8), v30);
    if (v32)
    {
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
    }

    v34 = result;
    v35 = *(v171 + 20);
    v36 = (v35 + result);
    if (__CFADD__(v35, result))
    {
      goto LABEL_78;
    }

    v37 = v171;
    *(v171 + 20) = v36;
    result = sub_1B0CFC1B0(40, 0xE100000000000000, (v37 + 8), v36);
    if (v38)
    {
      v39._countAndFlagsBits = 40;
      v39._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v39, v36);
    }

    v40 = *(v171 + 20);
    v41 = __CFADD__(v40, result);
    v42 = v40 + result;
    if (v41)
    {
      goto LABEL_79;
    }

    *(v171 + 20) = v42;
    v43 = v34 + result;
    if (__OFADD__(v34, result))
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    MEMORY[0x1EEE9AC00](result);
    *(&v144 - 6) = sub_1B0D5C820;
    *(&v144 - 5) = 0;
    *(&v144 - 4) = v171;
    *(&v144 - 3) = &v175;
    *(&v144 - 2) = 32;
    *(&v144 - 1) = 0xE100000000000000;
    result = sub_1B0DED0F8(0, sub_1B0D3CC60, (&v144 - 8), v23);
    v44 = v43 + result;
    if (__OFADD__(v43, result))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v45 = *(v171 + 20);
    result = sub_1B0CFC1B0(41, 0xE100000000000000, (v171 + 8), *(v171 + 20));
    if (v46)
    {
      v47._countAndFlagsBits = 41;
      v47._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v47, v45);
    }

    v48 = *(v171 + 20);
    v49 = (v48 + result);
    if (__CFADD__(v48, result))
    {
      goto LABEL_82;
    }

    *(v171 + 20) = v49;
    v50 = __OFADD__(v44, result);
    v51 = v44 + result;
    if (v50)
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v171 + 8), v49);
    if (v52)
    {
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v53, v49);
    }

    v54 = *(v171 + 20);
    v41 = __CFADD__(v54, result);
    v55 = v54 + result;
    if (v41)
    {
      goto LABEL_84;
    }

    *(v171 + 20) = v55;
    v56 = v51 + result;
    if (__OFADD__(v51, result))
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v57 = v28 + v56;
    if (__OFADD__(v28, v56))
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (*(a1 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v57 = 0;
    v25 = 0;
    if (*(a1 + 16))
    {
LABEL_23:
      v58 = 0;
      goto LABEL_29;
    }
  }

  v59 = *(a1 + 8);
  v60 = *(v171 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v171 + 8), *(v171 + 20));
  if (v61)
  {
    v62._countAndFlagsBits = 32;
    v62._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v62, v60);
  }

  v63 = result;
  v64 = *(v171 + 20);
  v41 = __CFADD__(v64, result);
  v65 = v64 + result;
  if (v41)
  {
    goto LABEL_89;
  }

  *(v171 + 20) = v65;
  result = sub_1B0DC7068(v59);
  v58 = v63 + result;
  if (__OFADD__(v63, result))
  {
LABEL_90:
    __break(1u);
    return result;
  }

LABEL_29:
  v50 = __OFADD__(v57, v58);
  v66 = v57 + v58;
  if (v50)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v145 = v66;
  v67 = *(a1 + 24);
  v68 = *(a1 + 32);
  v175 = *(a1 + 40);
  v150 = v175;
  v69 = v175[2];
  if (v69)
  {
    v70 = *(v171 + 20);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v171 + 8), *(v171 + 20));
    if (v71)
    {
      v72._countAndFlagsBits = 32;
      v72._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v72, v70);
    }

    v73 = *(v171 + 20);
    v41 = __CFADD__(v73, result);
    v74 = v73 + result;
    if (v41)
    {
      goto LABEL_86;
    }

    v146 = result;
    *(v171 + 20) = v74;
  }

  else
  {
    v146 = 0;
  }

  v173 = v68;
  v174 = v67;
  sub_1B03B5C80(&v174, v172, &qword_1EB6E5570, &qword_1B0ED2738);
  sub_1B03B5C80(&v173, v172, &qword_1EB6E5578, &qword_1B0ED2740);
  sub_1B03B5C80(&v175, v172, &qword_1EB6E6F40, &qword_1B0EEEAF0);
  sub_1B03B5C80(&v174, v172, &qword_1EB6E5570, &qword_1B0ED2738);
  sub_1B03B5C80(&v173, v172, &qword_1EB6E5578, &qword_1B0ED2740);
  result = sub_1B03B5C80(&v175, v172, &qword_1EB6E6F40, &qword_1B0EEEAF0);
  v75 = 0;
  if (v69)
  {
    v76 = 0;
    v147 = v69 - 1;
    v77 = (v68 + 40);
    v78 = v68;
    v149 = v69;
    v148 = v68;
    while (v76 < *(v78 + 16))
    {
      v164 = v75;
      v79 = v160;
      v80 = *(v160 + 48);
      v162 = v77;
      v81 = *(v77 - 1);
      v82 = *v77;
      v166 = v82;
      v83 = v158;
      *v158 = v81;
      *(v83 + 8) = v82;
      v84 = *(type metadata accessor for ParameterValue() - 8);
      sub_1B0D3CD9C(v150 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v76, v83 + v80, type metadata accessor for ParameterValue);
      v85 = v159;
      sub_1B03C60A4(v83, v159, &qword_1EB6E6568, &qword_1B0EE7F08);
      v86 = *(v79 + 48);
      v87 = v157;
      v88 = *(v157 + 48);
      v89 = v85[1];
      v90 = v154;
      *v154 = *v85;
      v90[1] = v89;
      sub_1B0D3CD34(v85 + v86, v90 + v88, type metadata accessor for ParameterValue);
      v91 = v90;
      v92 = v153;
      sub_1B03C60A4(v91, v153, &qword_1EB6E6F30, &qword_1B0EEEAE0);
      v165 = v25;
      v93 = v152;
      v94 = *(v152 + 48);
      v95 = v168;
      v167 = v76;
      *v168 = v76;
      sub_1B03C60A4(v92, v95 + v94, &qword_1EB6E6F30, &qword_1B0EEEAE0);
      v96 = v151;
      sub_1B03B5C80(v95, v151, &qword_1EB6E6F38, &qword_1B0EEEAE8);
      v163 = *v96;
      v97 = (v96 + *(v93 + 48));
      v98 = *(v87 + 48);
      v99 = *v97;
      v100 = v97[1];
      v101 = v155;
      sub_1B0D3CD34(v97 + v98, v155 + v98, type metadata accessor for ParameterValue);
      v102 = *(v87 + 48);
      v103 = v169;
      *v169 = v99;
      v103[1] = v100;
      sub_1B0D3CD34(v101 + v98, v103 + v102, type metadata accessor for ParameterValue);
      sub_1B03B5C80(v103, v101, &qword_1EB6E6F30, &qword_1B0EEEAE0);
      v104 = *(v87 + 48);
      v105 = v156;
      sub_1B03B5C80(v103, v156, &qword_1EB6E6F30, &qword_1B0EEEAE0);
      v106 = *(v87 + 48);
      v107 = *v101;
      v108 = v101[1];
      v109 = v170;
      *v170 = *v101;
      v109[1] = v108;
      v110 = *(v161 + 52);
      sub_1B0D3CD34(v105 + v106, v109 + v110, type metadata accessor for ParameterValue);
      v111 = *(v105 + 8);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v112 = v101 + v104;
      v113 = v171;
      sub_1B0D3CE04(v112, type metadata accessor for ParameterValue);
      v114 = *(v113 + 20);
      v25 = v165;
      result = sub_1B0CFC1B0(v107, v108, (v113 + 8), *(v113 + 20));
      if (v115)
      {
        v116._countAndFlagsBits = v107;
        v116._object = v108;
        result = ByteBuffer._setStringSlowpath(_:at:)(v116, v114);
      }

      v117 = result;
      v118 = *(v171 + 20);
      v119 = (v118 + result);
      v120 = v167;
      if (__CFADD__(v118, result))
      {
        goto LABEL_67;
      }

      v121 = v171;
      *(v171 + 20) = v119;
      result = sub_1B0CFC1B0(32, 0xE100000000000000, (v121 + 8), v119);
      if (v122)
      {
        v123._countAndFlagsBits = 32;
        v123._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v123, v119);
      }

      v124 = *(v171 + 20);
      v41 = __CFADD__(v124, result);
      v125 = v124 + result;
      if (v41)
      {
        goto LABEL_68;
      }

      *(v171 + 20) = v125;
      v126 = v117 + result;
      if (__OFADD__(v117, result))
      {
        goto LABEL_69;
      }

      v127 = v170;
      result = sub_1B0DF818C(v170 + v110);
      v128 = v126 + result;
      if (__OFADD__(v126, result))
      {
        goto LABEL_70;
      }

      result = sub_1B0398EFC(v127, &qword_1EB6E6F28, "P5\a");
      v129 = v164 + v128;
      if (__OFADD__(v164, v128))
      {
        goto LABEL_71;
      }

      if (v163 >= v147)
      {
        result = sub_1B0398EFC(v169, &qword_1EB6E6F30, &qword_1B0EEEAE0);
        v134 = 0;
        v69 = v149;
        v78 = v148;
      }

      else
      {
        v130 = *(v171 + 20);
        v131 = sub_1B0CFC1B0(32, 0xE100000000000000, (v171 + 8), *(v171 + 20));
        v69 = v149;
        v78 = v148;
        if (v132)
        {
          v133._countAndFlagsBits = 32;
          v133._object = 0xE100000000000000;
          v131 = ByteBuffer._setStringSlowpath(_:at:)(v133, v130);
        }

        v134 = v131;
        result = sub_1B0398EFC(v169, &qword_1EB6E6F30, &qword_1B0EEEAE0);
        v135 = *(v171 + 20);
        v41 = __CFADD__(v135, v134);
        v136 = v135 + v134;
        if (v41)
        {
          goto LABEL_73;
        }

        *(v171 + 20) = v136;
      }

      v50 = __OFADD__(v129, v134);
      v75 = v129 + v134;
      if (v50)
      {
        goto LABEL_72;
      }

      v76 = v120 + 1;
      result = sub_1B0398EFC(v168, &qword_1EB6E6F38, &qword_1B0EEEAE8);
      v77 = v162 + 2;
      if (v69 == v76)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_66;
  }

LABEL_56:
  sub_1B0398EFC(&v174, &qword_1EB6E5570, &qword_1B0ED2738);
  sub_1B0398EFC(&v173, &qword_1EB6E5578, &qword_1B0ED2740);
  sub_1B0398EFC(&v175, &qword_1EB6E6F40, &qword_1B0EEEAF0);
  sub_1B0398EFC(&v174, &qword_1EB6E5570, &qword_1B0ED2738);
  sub_1B0398EFC(&v173, &qword_1EB6E5578, &qword_1B0ED2740);
  result = sub_1B0398EFC(&v175, &qword_1EB6E6F40, &qword_1B0EEEAF0);
  v137 = v146 + v75;
  if (__OFADD__(v146, v75))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v69)
  {
    v138 = *(v171 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v171 + 8), *(v171 + 20));
    if (v139)
    {
      v140._countAndFlagsBits = 0;
      v140._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v140, v138);
    }

    v141 = *(v171 + 20);
    v41 = __CFADD__(v141, result);
    v142 = v141 + result;
    if (v41)
    {
      goto LABEL_88;
    }

    *(v171 + 20) = v142;
    v143 = v137 + result;
    if (__OFADD__(v137, result))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }
  }

  else
  {
    v143 = v146 + v75;
  }

  result = v145 + v143;
  if (__OFADD__(v145, v143))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  return result;
}