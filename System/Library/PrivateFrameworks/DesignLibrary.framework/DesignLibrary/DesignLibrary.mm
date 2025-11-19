uint64_t sub_18AE79B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18AE79BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18AE79CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18AE79D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 56));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_18AE79E1C()
{
  result = type metadata accessor for GlassMaterialProvider.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_18AE79E88()
{
  sub_18AF4B4F4(319, &qword_1ED56B0C0, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_18AF4B548(319, &qword_1ED56B0D8, &type metadata for GlassMaterialProvider.OptimizationLevel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_18AF4B548(319, &qword_1ED56B090, &type metadata for GlassMaterialProvider.HysteresisRange, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_18AF4B548(319, &qword_1ED56B088, &_s4TintVN, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_18AF4B548(319, qword_1ED56AFC8, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_18AF4B548(319, &qword_1EA99B638, &_s4TintV5StyleON, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_18AF4B4F4(319, qword_1ED56AF28, _s14CustomFillBaseCMa);
              if (v6 <= 0x3F)
              {
                sub_18AF4B548(319, &qword_1ED56AFC0, &_s10CustomGlowVN, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
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
}

void sub_18AE7A100()
{
  if (!qword_1ED56B0C0)
  {
    sub_18AFCBB34();
    v0 = sub_18AFCE074();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED56B0C0);
    }
  }
}

uint64_t type metadata accessor for GlassMaterialProvider.ResolvedStyle()
{
  result = qword_1ED56AF18;
  if (!qword_1ED56AF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_18AE7A260()
{
  result = qword_1ED56B0E0;
  if (!qword_1ED56B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56B0E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13DesignLibrary21GlassMaterialProviderV13ConfigurationV4BaseO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_18AE7A30C()
{
  if (qword_1ED56ADA8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED56C9B0;
  v1 = sub_18AFCDE04();
  LODWORD(v0) = [v0 BOOLForKey_];

  v2 = 2;
  if (!v0)
  {
    v2 = 0;
  }

  qword_1ED56C8D8 = v2;
}

uint64_t sub_18AE7A3E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_18AE7AFD4(v6, a3, type metadata accessor for GlassMaterialProvider.Configuration);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

BOOL _s13DesignLibrary21GlassMaterialProviderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFCBB34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v72[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v72[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6A0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72[-1] - v12;
  if ((sub_18AE7B530(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  if (*(a1 + 32) == 1)
  {
    if (*&v15 > 1uLL)
    {
      if (*&v15 ^ 2 | *&v14)
      {
        if (!*(a2 + 32) || __PAIR128__(*&v16, *&v17) < 3)
        {
          return 0;
        }

        goto LABEL_22;
      }

      if (!*(a2 + 32))
      {
        return 0;
      }

      *&v17 ^= 2uLL;
    }

    else if (*&v15 | *&v14)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }

      *&v17 ^= 1uLL;
    }

    else if (!*(a2 + 32))
    {
      return 0;
    }

    if (*&v17 | *&v16)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    result = 0;
    if (v15 != v17 || v14 != v16)
    {
      return result;
    }
  }

LABEL_22:
  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v71 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v19 = v71[10];
  v20 = *(v11 + 48);
  sub_18AE7BA10(a1 + v19, v13);
  sub_18AE7BA10(a2 + v19, &v13[v20]);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v20], 1, v4) == 1)
    {
      sub_18AE7BA80(v13, &qword_1EA99B5F0);
      goto LABEL_33;
    }

LABEL_29:
    sub_18AE7BA80(v13, &qword_1EA99B6A0);
    return 0;
  }

  sub_18AE7BA10(v13, v10);
  if (v21(&v13[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_29;
  }

  (*(v5 + 32))(v7, &v13[v20], v4);
  sub_18AF4B160(&qword_1ED56AD68, MEMORY[0x1E697DBD0]);
  v22 = sub_18AFCDDF4();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  sub_18AE7BA80(v13, &qword_1EA99B5F0);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v24 = v71;
  v25 = v71[11];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 3)
  {
    if (v27 != 3)
    {
      return 0;
    }
  }

  else if (v26 != v27)
  {
    return 0;
  }

  if (*(a1 + v71[12]) != *(a2 + v71[12]))
  {
    return 0;
  }

  v28 = v71[13];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 16);
  v31 = a2 + v28;
  if (v30)
  {
    if ((*(v31 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v31 + 16))
    {
      return 0;
    }

    result = 0;
    if (COERCE_FLOAT(*v29) != COERCE_FLOAT(*v31))
    {
      return result;
    }

    if (COERCE_FLOAT(HIDWORD(*v29)) != COERCE_FLOAT(HIDWORD(*v31)))
    {
      return result;
    }

    result = 0;
    v35 = v29[1];
    v36 = *(v31 + 8);
    if (*&v35 != *&v36 || *(&v35 + 1) != *(&v36 + 1))
    {
      return result;
    }
  }

  if ((sub_18AE7BB5C(*(a1 + v71[14]), *(a2 + v71[14])) & 1) == 0)
  {
    return 0;
  }

  v32 = v24[15];
  v33 = *(a2 + v32);
  if (*(a1 + v32))
  {
    if (!v33)
    {
      return 0;
    }

    v34 = sub_18AFCCD04();

    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v71[16];
  v39 = *(a1 + v37);
  v38 = *(a1 + v37 + 8);
  v40 = *(a1 + v37 + 20);
  v41 = *(a1 + v37 + 16) | (*(a1 + v37 + 20) << 32);
  v42 = a2 + v37;
  v44 = *v42;
  v43 = *(v42 + 8);
  v45 = *(v42 + 16) | (*(v42 + 20) << 32);
  if (v40 <= 0xFEuLL)
  {
    if (BYTE4(v45) != 255)
    {
      if ((v41 & 0x100000000) != 0)
      {
        v72[0] = v39;
        v72[1] = v38;
        v73 = v41;
        if ((v45 & 0x100000000) == 0)
        {
          return 0;
        }

        v74[0] = v44;
        v74[1] = v43;
        v75 = v45;
        if ((MEMORY[0x18CFEC270](v72, v74) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if ((v45 & 0x100000000) != 0)
        {
          return 0;
        }

        sub_18AF4BC28(v44, v43, v45);
        sub_18AF4BC28(v39, v38, v41);
        v52 = sub_18AFCCD04();
        sub_18AF4B128(v44, v43, v45);
        sub_18AF4B128(v39, v38, v41);
        if ((v52 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_54;
    }

LABEL_59:
    sub_18AF4BC28(v44, v43, v45);
    sub_18AF4BC28(v39, v38, v41);
    sub_18AF4B128(v39, v38, v41);
    sub_18AF4B128(v44, v43, v45);
    return 0;
  }

  if (BYTE4(v45) != 255)
  {
    goto LABEL_59;
  }

LABEL_54:
  v46 = v71[17];
  v47 = *(a1 + v46);
  v48 = *(a1 + v46 + 4);
  v49 = a2 + v46;
  v50 = *(a2 + v46);
  v51 = *(v49 + 4);
  if (!v48)
  {
    result = 0;
    if (v51)
    {
      return result;
    }

    goto LABEL_68;
  }

  if (v48 == 1)
  {
    result = 0;
    if (v51 != 1)
    {
      return result;
    }

LABEL_68:
    v53 = v47 == v50;
    v54 = v71;
    if (!v53)
    {
      return result;
    }

    goto LABEL_72;
  }

  result = 0;
  if (v51 == 2)
  {
    v54 = v71;
    if (v50 == 0.0)
    {
LABEL_72:
      v55 = v54[18];
      v56 = *(a1 + v55);
      v57 = *(a2 + v55);
      if (v56)
      {
        if (!v57)
        {
          return 0;
        }

        v58 = *(*v56 + 80);

        v60 = v58(v59);

        if ((v60 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v57)
      {
        return 0;
      }

      v61 = v71[19];
      v62 = a1 + v61;
      v63 = *(a1 + v61);
      v64 = (a2 + v61);
      v65 = *v64;
      if (v63)
      {
        if (v65 == 0.0)
        {
          return 0;
        }

        v66 = *(v62 + 8);
        v67 = v64[1];
        v68 = *(*v63 + 80);

        v70 = v68(v69);

        return (v70 & 1) != 0 && v66 == v67;
      }

      return v65 == 0.0;
    }
  }

  return result;
}

void sub_18AE7AC70()
{
  sub_18AFAF898(319, &qword_1ED56AA08, &_s10DimensionsVN, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_18AFAF898(319, qword_1ED56ADC8, &_s12ResolvedTintVN, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_18AFCBB34();
      if (v2 <= 0x3F)
      {
        sub_18AFAF840();
        if (v3 <= 0x3F)
        {
          sub_18AFAF898(319, &qword_1ED56AFC0, &_s10CustomGlowVN, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for GlassMaterialProvider.ResolvedStyle();
            if (v5 <= 0x3F)
            {
              sub_18AFAF898(319, &qword_1ED56AB20, MEMORY[0x1E6981540], MEMORY[0x1E69E6720]);
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

void sub_18AE7AE8C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_18AFCDE04();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_1ED56C9B0 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18AE7AF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7AF6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7AFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7B03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7B0A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7B10C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_18AE7B188(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_18AFCBB34();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GlassMaterialProvider.ResolvedStyle();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_18AE7B2C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18AFCBB34();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GlassMaterialProvider.ResolvedStyle();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_18AE7B454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AE7B4B8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_18AE7B4B8()
{
  result = qword_1ED56AE90[0];
  if (!qword_1ED56AE90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED56AE90);
  }

  return result;
}

uint64_t sub_18AE7B530(unint64_t a1, unint64_t a2)
{
  v4 = _s13ConfigurationV3MixVMa(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - v9;
  v11 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v11 != 2)
    {
      switch(__ROR8__(a1 + 0x4000000000000000, 3))
      {
        case 1:
          return a2 == 0xC000000000000008;
        case 2:
          return a2 == 0xC000000000000010;
        case 3:
          return a2 == 0xC000000000000018;
        case 4:
          return a2 == 0xC000000000000020;
        case 5:
          return a2 == 0xC000000000000028;
        case 6:
          return a2 == 0xC000000000000030;
        case 7:
          return a2 == 0xC000000000000038;
        case 8:
          return a2 == 0xC000000000000040;
        case 9:
          return a2 == 0xC000000000000048;
        case 0xALL:
          return a2 == 0xC000000000000050;
        case 0xBLL:
          v20 = 80;
          break;
        case 0xCLL:
          return a2 == 0xC000000000000060;
        case 0xDLL:
          return a2 == 0xC000000000000068;
        case 0xELL:
          return a2 == 0xC000000000000070;
        case 0xFLL:
          return a2 == 0xC000000000000078;
        case 0x10:
          return a2 == 0xC000000000000080;
        case 0x11:
          return a2 == 0xC000000000000088;
        case 0x12:
          return a2 == 0xC000000000000090;
        case 0x13:
          v20 = 144;
          break;
        case 0x14:
          return a2 == 0xC0000000000000A0;
        case 0x15:
          v20 = 160;
          break;
        case 0x16:
          return a2 == 0xC0000000000000B0;
        default:
          return a2 == 0xC000000000000000;
      }

      return a2 == (v20 | 0xC000000000000008);
    }

    if (a2 >> 62 == 2)
    {
      v14 = v8;
      v15 = swift_projectBox();
      v16 = swift_projectBox();
      sub_18AE7AFD4(v15, v10, _s13ConfigurationV3MixVMa);
      sub_18AE7AFD4(v16, v7, _s13ConfigurationV3MixVMa);
      if (_s13DesignLibrary21GlassMaterialProviderV2eeoiySbAC_ACtFZ_0(v10, v7) && _s13DesignLibrary21GlassMaterialProviderV2eeoiySbAC_ACtFZ_0(&v10[*(v14 + 20)], &v7[*(v14 + 20)]))
      {
        v17 = *&v10[*(v14 + 24)];
        sub_18AF4BBC8(v10, _s13ConfigurationV3MixVMa);
        v18 = *&v7[*(v14 + 24)];
        sub_18AF4BBC8(v7, _s13ConfigurationV3MixVMa);
        return v17 == v18;
      }

      sub_18AF4BBC8(v7, _s13ConfigurationV3MixVMa);
      sub_18AF4BBC8(v10, _s13ConfigurationV3MixVMa);
    }
  }

  else if (v11)
  {
    if (a2 >> 62 == 1)
    {
      if (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20))
      {
        if ((*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) & 1) != 0 || (sub_18AFCDCB4() & 1) == 0)
      {
        return 0;
      }

      return 1;
    }
  }

  else if (!(a2 >> 62))
  {
    v12 = *(a2 + 20);
    v13 = *(a2 + 28);
    if (*(a1 + 20))
    {
      if (!*(a2 + 20))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    if (*(a1 + 28))
    {
      if ((*(a2 + 28) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 24) != *(a2 + 24))
      {
        v13 = 1;
      }

      if (v13)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t sub_18AE7BA10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE7BA80(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18AE7BAE0()
{
  result = type metadata accessor for GlassMaterialProvider.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AE7BB5C(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    if (a1[4] != a2[4])
    {
      return 0;
    }

    v3 = a1 + 8;
    v4 = a2 + 8;
    while (1)
    {
      v5 = *(v3 - 2);
      v7 = *(v3 - 3);
      v6 = *(v3 - 2);
      v8 = *(v4 - 4);
      v9 = *(v4 - 2);
      v10 = *(v4 - 3);
      v11 = *(v4 - 2);
      if (*(v3 - 4))
      {
        v20[0] = *(v3 - 3);
        v20[1] = v6;
        v21 = v5;
        if ((v8 & 1) == 0)
        {
          return 0;
        }

        v22[0] = v10;
        v22[1] = v11;
        v23 = v9;
        sub_18AE91FA0(v10, v11, v9, 1);
        if ((MEMORY[0x18CFEC270](v20, v22) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*(v4 - 4))
        {
          sub_18AE91FA0(v10, v11, v9, 1);
          return 0;
        }

        v12 = *(v4 - 3);
        v13 = *(v4 - 2);
        v14 = *(v4 - 2);
        sub_18AE91FA0(v10, v11, v9, 0);
        sub_18AE91FA0(v7, v6, v5, 0);
        v15 = sub_18AFCCD04();
        sub_18AE92094(v12, v13, v14, 0);
        sub_18AE92094(v7, v6, v5, 0);
        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }

      result = 0;
      v18 = *v4;
      v4 += 4;
      v17 = v18;
      v19 = *v3;
      v3 += 4;
      if (v19 != v17)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t type metadata accessor for GlassMaterialProvider()
{
  result = qword_1ED56AB90;
  if (!qword_1ED56AB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AE7BDB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s11EnvironmentVMa()
{
  result = qword_1ED56AD38;
  if (!qword_1ED56AD38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AE7BE94()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCD8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void sub_18AE7BEC4()
{
  sub_18AFCBB34();
  if (v0 <= 0x3F)
  {
    sub_18AFCC5C4();
    if (v1 <= 0x3F)
    {
      sub_18AE7C05C(319, &qword_1ED56AB20);
      if (v2 <= 0x3F)
      {
        sub_18AFA7EF0();
        if (v3 <= 0x3F)
        {
          sub_18AE7C05C(319, &qword_1ED56AAF8);
          if (v4 <= 0x3F)
          {
            sub_18AE7C05C(319, &qword_1ED56AA08);
            if (v5 <= 0x3F)
            {
              sub_18AE7C05C(319, &qword_1ED56A7E0);
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

void sub_18AE7C05C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_18AFCE074();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_18AE7C0A8()
{
  sub_18AE7A100();
  if (v0 <= 0x3F)
  {
    _s11EnvironmentVMa();
    if (v1 <= 0x3F)
    {
      sub_18AFB68E8(319, qword_1ED56ADC8, &_s12ResolvedTintVN, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_18AFB68E8(319, &qword_1ED56AB20, MEMORY[0x1E6981540], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18AE7C1C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7C230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7C2C8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t static GlassMaterialProvider.initialState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18AFCBB34();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for GlassMaterialProvider.State();
  *(a1 + v3[5]) = 1;
  result = sub_18AFA8190((a1 + v3[6]));
  *(a1 + v3[7]) = 0;
  *(a1 + v3[8]) = MEMORY[0x1E69E7CC0];
  v5 = a1 + v3[9];
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  return result;
}

uint64_t type metadata accessor for GlassMaterialProvider.State()
{
  result = qword_1ED56A968;
  if (!qword_1ED56A968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s13DesignLibrary21GlassMaterialProviderV13ConfigurationV8adaptive11colorSchemeAE7SwiftUI05ColorI0O_tF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_18AE7AFD4(v3, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = *(a2 + 40);
  if ((v6 & 0x4000) == 0)
  {
    *(a2 + 40) = v6 | 0x4000;
  }

  v7 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 40);
  sub_18AE7BA80(a2 + v7, &qword_1EA99B5F0);
  v8 = sub_18AFCBB34();
  v11 = *(v8 - 8);
  (*(v11 + 16))(a2 + v7, a1, v8);
  v9 = *(v11 + 56);

  return v9(a2 + v7, 0, 1, v8);
}

uint64_t sub_18AE7C544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GlassMaterialProvider.updateState(_:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v295 = a1;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6A0);
  MEMORY[0x1EEE9AC00](v243);
  v246 = &v235 - v5;
  v6 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v6);
  v285 = (&v235 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v284 = sub_18AFCD424();
  v283 = *(v284 - 8);
  v8 = MEMORY[0x1EEE9AC00](v284);
  v281 = &v235 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v282 = &v235 - v10;
  v280 = sub_18AFCD2E4();
  v279 = *(v280 - 8);
  v11 = MEMORY[0x1EEE9AC00](v280);
  v276 = &v235 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v277 = &v235 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v271 = &v235 - v15;
  v270 = sub_18AFCC824();
  v269 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270);
  v268 = &v235 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_18AFCC9A4();
  v249 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v248 = &v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  *&v266 = &v235 - v19;
  v20 = sub_18AFCC5C4();
  *&v291 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  *&v264 = &v235 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = sub_18AFCBB34();
  v22 = *(v297 - 8);
  v23 = MEMORY[0x1EEE9AC00](v297);
  v235 = &v235 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v253 = &v235 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v263 = &v235 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v236 = &v235 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v239 = &v235 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v238 = &v235 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v244 = &v235 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v245 = &v235 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v242 = &v235 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v237 = &v235 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v241 = &v235 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v252 = &v235 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v235 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v235 - v50;
  v290 = sub_18AFCC474();
  v275 = *(v290 - 8);
  v52 = MEMORY[0x1EEE9AC00](v290);
  v251 = &v235 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v288 = &v235 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v235 - v56;
  v58 = _s11EnvironmentVMa();
  v59 = MEMORY[0x1EEE9AC00](v58);
  v278 = &v235 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = (&v235 - v62);
  MEMORY[0x1EEE9AC00](v61);
  v274 = &v235 - v64;
  v293 = a2;
  sub_18AFCD594();
  v240 = *(v6 + 40);
  sub_18AE83A40(v3 + v240, v51, &qword_1EA99B5F0);
  v286 = v6;
  v247 = *(v3 + *(v6 + 60));
  v289 = v3;
  v65 = *v3;
  sub_18AE89F60(v65);
  v262 = sub_18AF47DE4(v65);
  v292 = type metadata accessor for GlassMaterialProvider.State();
  v66 = v58[10];
  v272 = v295 + *(v292 + 24);
  v67 = (v272 + v66);
  v261 = *v67;
  v287 = v67;
  v260 = *(v67 + 4);
  v68 = *MEMORY[0x1E697DBB8];
  v69 = *(v22 + 104);
  v256 = v58[5];
  v70 = v297;
  v69(v63 + v256, v68, v297);
  v71 = *MEMORY[0x1E697F600];
  v72 = *(v291 + 104);
  v257 = v58[6];
  *&v265 = v20;
  v72(v63 + v257, v71, v20);
  v73 = v63 + v58[7];
  *v73 = 0;
  *(v73 + 1) = 0;
  v73[16] = 1;
  v74 = v58[8];
  v75 = type metadata accessor for GlassMaterialProvider.ResolvedStyle();
  v76 = *(*(v75 - 8) + 56);
  v258 = v74;
  v76(v63 + v74, 1, 1, v75);
  v259 = v58[12];
  *(v63 + v259) = 0;
  v267 = v58[21];
  *(v63 + v267) = 0;
  sub_18AFCC244();
  v77 = v70;
  *v63 = v78;
  v273 = v51;
  sub_18AE83A40(v51, v49, &qword_1EA99B5F0);
  v79 = *(v22 + 48);
  v80 = v79(v49, 1, v70);
  v254 = v79;
  v296 = v57;
  v294 = v22;
  v255 = v22 + 48;
  if (v80 == 1)
  {
    v81 = v263;
    sub_18AFCC204();
    v77 = v297;
    v82 = v79(v49, 1, v297);
    v83 = v81;
    if (v82 != 1)
    {
      sub_18AE7BA80(v49, &qword_1EA99B5F0);
    }
  }

  else
  {
    v83 = v263;
    (*(v22 + 32))(v263, v49, v70);
  }

  (*(v294 + 40))(v63 + v256, v83, v77);
  v84 = v264;
  sub_18AFCC2F4();
  (*(v291 + 40))(v63 + v257, v84, v265);
  sub_18AFAB8BC();
  v85 = v266;
  sub_18AFCC484();
  sub_18AE7E5A4(v85, v63 + v258, &qword_1EA99BBF0);
  if (v65 == 0xC000000000000090)
  {
    if (!v247 && !sub_18AFCC1C4())
    {
      sub_18AFCCCD4();
    }

    sub_18AFCCDC4();
    v265 = v86;
    v291 = v87;
    v264 = v88;
    v266 = v89;

    v90.i64[0] = v265;
    v90.i64[1] = v264;
    *v73 = vorrq_s8(vshll_n_s32(__PAIR64__(v266, v291), 0x20uLL), v90);
    v73[16] = 0;
  }

  else
  {
    sub_18AF4B0F8(v65);
  }

  v91 = v63 + v58[10];
  v92 = v63 + v58[11];
  *v91 = v261;
  v91[4] = v260;
  *v92 = 0;
  *(v92 + 1) = 0;
  *(v92 + 2) = 0;
  *(v92 + 12) = 256;
  sub_18AE7A260();
  sub_18AFCC484();
  *(v63 + v259) = v299;
  if (v262)
  {
    sub_18AFCC974();
    v93 = v248;
    sub_18AFCC984();

    v94 = sub_18AFCC994();
    (*(v249 + 8))(v93, v250);
    v95 = sub_18AF76B64();
    v97 = v96;
    v99 = v98;
    v101 = v100;
  }

  else
  {
    v99 = 0;
    v101 = 1;
    v95 = 0.0;
    v97 = 0;
  }

  v102 = v63 + v58[9];
  v103 = v58[13];
  v104 = v58[14];
  v105 = v58[15];
  v106 = v58[16];
  v107 = v58[17];
  *&v265 = v58[18];
  v108 = v58[20];
  *&v266 = v58[19];
  *&v291 = v108;
  *v102 = v95;
  *(v102 + 1) = v97;
  *(v102 + 2) = v99;
  v102[24] = v101 & 1;
  *(v63 + v103) = sub_18AFCC274() & 1;
  *(v63 + v104) = sub_18AFCC304() & 1;
  sub_18AFAB910();
  sub_18AFCC484();
  *(v63 + v105) = v299;
  v109 = v268;
  sub_18AFCC454();
  v110 = sub_18AFCC814();
  (*(v269 + 8))(v109, v270);
  v111 = *(v110 + 16);

  *(v63 + v106) = v111 != 0;
  *(v63 + v107) = sub_18AFCC354() & 1;
  *(v63 + v265) = sub_18AFCC334() & 1;
  *(v63 + v266) = sub_18AFCC344() & 1;
  *(v63 + v291) = sub_18AFCC424() & 1;
  v112 = v271;
  sub_18AFCC3D4();
  v113 = v279;
  v114 = v277;
  v115 = v280;
  (*(v279 + 16))(v277, v112, v280);
  v116 = v276;
  sub_18AFCD214();
  sub_18AFB68A0(&qword_1ED56A7A0, MEMORY[0x1E69818B0]);
  LOBYTE(v111) = sub_18AFCDDF4();
  v117 = *(v113 + 8);
  v117(v116, v115);
  if (v111)
  {
    v117(v114, v115);
    v117(v112, v115);
    v118 = 1;
  }

  else
  {
    sub_18AFCD234();
    v119 = sub_18AFCDDF4();
    v117(v116, v115);
    v117(v114, v115);
    v117(v112, v115);
    if (v119)
    {
      v118 = 2;
    }

    else
    {
      v118 = 0;
    }
  }

  v120 = v284;
  v121 = v283;
  v122 = v282;
  *(v63 + v267) = v118;
  sub_18AFCC3E4();
  v123 = v281;
  sub_18AFCD414();
  sub_18AFB68A0(&qword_1EA99BC80, MEMORY[0x1E69818D0]);
  v124 = sub_18AFCDDF4();
  v125 = *(v121 + 8);
  v125(v123, v120);
  if ((v124 & 1) == 0)
  {
    sub_18AFCD404();
    sub_18AFCDDF4();
    v125(v123, v120);
  }

  v125(v122, v120);
  *(v63 + v58[23]) = v124 & 1;
  sub_18AFAB964();
  v126 = v296;
  sub_18AFCC484();
  v127 = v299;
  if (v299)
  {
    swift_getKeyPath();
    v298 = v127;
    sub_18AFB68A0(&qword_1ED56A728, _s6PocketV7StorageCMa);

    sub_18AFCB9B4();

    os_unfair_lock_lock((v127 + 16));
    v128 = *(v127 + 36);
    v129 = *(v127 + 40);
    os_unfair_lock_unlock((v127 + 16));

    sub_18AE7BA80(v273, &qword_1EA99B5F0);
    v130 = *(v275 + 8);
    v131 = v126;
    v132 = v290;
    v130(v131, v290);

    v133 = v129 == 0;
    v134 = v132;
    v135 = 0x100000000;
    if (v133)
    {
      v135 = 0;
    }

    v136 = v135 | v128;
  }

  else
  {
    sub_18AE7BA80(v273, &qword_1EA99B5F0);
    v130 = *(v275 + 8);
    v134 = v290;
    v130(v126, v290);
    v136 = 0;
  }

  v137 = v289;
  v138 = v63 + v58[22];
  v138[4] = BYTE4(v136);
  *v138 = v136;
  v138[5] = v127 == 0;
  v139 = v274;
  sub_18AFB6838(v63, v274, _s11EnvironmentVMa);
  v140 = v272;
  sub_18AE7E60C(v139, v272);
  v141 = v285;
  sub_18AE7B10C(v137, v285, type metadata accessor for GlassMaterialProvider.Configuration);
  v142 = v140;
  v143 = v278;
  sub_18AE7B10C(v142, v278, _s11EnvironmentVMa);
  v144 = sub_18AFA8DFC(v141, v143);
  v145 = v292;
  v146 = v295;
  *(v295 + *(v292 + 28)) = v144;
  v147 = v288;
  sub_18AFCD594();
  v148 = sub_18AE82DD8(v147);
  v130(v147, v134);
  v149 = *(v145 + 32);

  *(v146 + v149) = v148;
  v150 = v286;
  v151 = v137 + *(v286 + 64);
  v152 = *(v151 + 16) | (*(v151 + 20) << 32);
  if (*(v151 + 20) == 255)
  {
    v153 = 0;
    v154 = 0;
  }

  else
  {
    v155 = *v151;
    v156 = *(v151 + 8);
    v157 = v251;
    sub_18AFCD594();
    if ((v152 & 0x100000000) != 0)
    {
      v160 = HIDWORD(v155);
      v163 = HIDWORD(v156);
    }

    else
    {
      sub_18AFCCDC4();
      LODWORD(v155) = v158;
      v160 = v159;
      LODWORD(v156) = v161;
      v163 = v162;
    }

    v130(v157, v290);
    v153 = v155 | (v160 << 32);
    v154 = v156 | (v163 << 32);
    v137 = v289;
  }

  v164 = v146 + *(v292 + 36);
  *v164 = v153;
  *(v164 + 8) = v154;
  *(v164 + 16) = HIDWORD(v152) > 0xFE;
  sub_18AFA9F00(&v299);
  v165 = v297;
  v166 = v294;
  if ((v299 & 0x4000) == 0)
  {
    goto LABEL_35;
  }

  v170 = *(v137 + 16);
  v169 = *(v137 + 24);
  if (*(v137 + 32) != 1)
  {
    v171 = *(v137 + 16);
    if (v169 < v170)
    {
      v171 = *(v137 + 24);
    }

    if (v171 <= 64.0)
    {
      goto LABEL_42;
    }

LABEL_35:
    sub_18AE7BA80(v146, &qword_1EA99B5F0);
    result = (*(v166 + 56))(v146, 1, 1, v165);
    v168 = v287;
    *v287 = 0.0;
    *(v168 + 4) = 1;
    return result;
  }

  if (__PAIR128__((*&v170 != 0) + *&v169 - 1, *&v170 - 1) < 2)
  {
    goto LABEL_35;
  }

LABEL_42:
  v172 = sub_18AFCD5A4();
  v173 = v137 + *(v150 + 68);
  v174 = *v173;
  v175 = *(v173 + 4);
  if (v175 == 1)
  {
    goto LABEL_47;
  }

  if ((v172 & 0x100000000) == 0)
  {
    v176 = v166;
    v177 = 0;
    v174 = *&v172;
LABEL_48:
    v178 = v287;
    goto LABEL_49;
  }

  if (!v175 && *(v146 + *(v292 + 20)))
  {
LABEL_47:
    v176 = v166;
    v177 = 0;
    goto LABEL_48;
  }

  v176 = v166;
  if ((*(v137 + 42) & 0x10) == 0)
  {
    v174 = 0.0;
    v177 = 1;
    goto LABEL_48;
  }

  v178 = v287;
  v174 = *v287;
  v177 = *(v287 + 4);
LABEL_49:
  if ((sub_18AFCD5A4() & 0x100000000) == 0)
  {
    *(v146 + *(v292 + 20)) = 0;
  }

  v179 = *(v178 + 4);
  v180 = v297;
  if ((v179 | v177))
  {
    v181 = v179 & v177;
  }

  else
  {
    v181 = *v178 == v174;
  }

  *v178 = v174;
  *(v178 + 4) = v177;
  v182 = v241;
  sub_18AE83A40(v146, v241, &qword_1EA99B5F0);
  v183 = v254;
  if (v254(v182, 1, v180) == 1)
  {
    LODWORD(v296) = v181;
    v184 = v237;
    sub_18AE83A40(v137 + v240, v237, &qword_1EA99B5F0);
    v185 = v183(v184, 1, v180);
    v186 = v245;
    if (v185 == 1)
    {
      v187 = v288;
      sub_18AFCD594();
      sub_18AFCC204();
      v180 = v297;
      v130(v187, v290);
      v188 = v183(v184, 1, v180);
      v189 = v242;
      if (v188 != 1)
      {
        sub_18AE7BA80(v184, &qword_1EA99B5F0);
      }
    }

    else
    {
      (*(v176 + 32))(v252, v184, v180);
      v189 = v242;
    }

    v191 = v183(v182, 1, v180);
    v190 = v253;
    v181 = v296;
    if (v191 != 1)
    {
      sub_18AE7BA80(v182, &qword_1EA99B5F0);
    }
  }

  else
  {
    (*(v176 + 32))(v252, v182, v180);
    v190 = v253;
    v186 = v245;
    v189 = v242;
  }

  LODWORD(v291) = v181 ^ 1;
  v192 = v294;
  v193 = *(v294 + 56);
  v194 = v252;
  v296 = (v294 + 56);
  v292 = v193;
  v193(v252, 0, 1, v180);
  v195 = v194;
  v196 = v295;
  sub_18AE7E5A4(v195, v295, &qword_1EA99B5F0);
  sub_18AE83120(v196, v189);
  v197 = v297;
  if (v183(v189, 1, v297) == 1)
  {
    v198 = v288;
    sub_18AFCD594();
    sub_18AFCC204();
    v197 = v297;
    v199 = v198;
    v192 = v294;
    v130(v199, v290);
    v200 = v183(v189, 1, v197);
    v201 = v244;
    if (v200 != 1)
    {
      sub_18AE7BA80(v189, &qword_1EA99B5F0);
    }
  }

  else
  {
    (*(v192 + 32))(v190, v189, v197);
    v201 = v244;
  }

  v203 = *(v137 + 16);
  v202 = *(v137 + 24);
  if (*(v137 + 32) == 1)
  {
    if (__PAIR128__((*&v203 != 0) + *&v202 - 1, *&v203 - 1) >= 2)
    {
      goto LABEL_73;
    }

LABEL_72:
    LODWORD(v291) = 0;
    v205 = v287;
    *v287 = 0.0;
    *(v205 + 4) = 1;
    goto LABEL_73;
  }

  v204 = *(v137 + 16);
  if (v202 < v203)
  {
    v204 = *(v137 + 24);
  }

  if (v204 > 64.0)
  {
    goto LABEL_72;
  }

LABEL_73:
  v206 = *(v192 + 16);
  v290 = v192 + 16;
  v288 = v206;
  (v206)(v186, v190, v197);
  (v292)(v186, 0, 1, v197);
  sub_18AE83A40(v295, v201, &qword_1EA99B5F0);
  v207 = v192;
  v208 = *(v243 + 48);
  v209 = v186;
  v210 = v186;
  v211 = v246;
  sub_18AE83A40(v209, v246, &qword_1EA99B5F0);
  v212 = v297;
  sub_18AE83A40(v201, v211 + v208, &qword_1EA99B5F0);
  v213 = v254;
  if (v254(v211, 1, v212) == 1)
  {
    v214 = v207;
    sub_18AE7BA80(v201, &qword_1EA99B5F0);
    v215 = v246;
    sub_18AE7BA80(v210, &qword_1EA99B5F0);
    if (v213(v215 + v208, 1, v212) == 1)
    {
      sub_18AE7BA80(v215, &qword_1EA99B5F0);
      goto LABEL_85;
    }

    goto LABEL_78;
  }

  v216 = v238;
  sub_18AE83A40(v211, v238, &qword_1EA99B5F0);
  if (v213(v211 + v208, 1, v212) == 1)
  {
    sub_18AE7BA80(v244, &qword_1EA99B5F0);
    v215 = v246;
    sub_18AE7BA80(v245, &qword_1EA99B5F0);
    v214 = v294;
    (*(v294 + 8))(v216, v212);
LABEL_78:
    sub_18AE7BA80(v215, &qword_1EA99B6A0);
    goto LABEL_79;
  }

  v225 = v294;
  v226 = v211 + v208;
  v227 = v235;
  (*(v294 + 32))(v235, v226, v212);
  sub_18AFB68A0(&qword_1ED56AD68, MEMORY[0x1E697DBD0]);
  v228 = v211;
  v229 = sub_18AFCDDF4();
  v214 = v225;
  v230 = *(v225 + 8);
  v230(v227, v212);
  sub_18AE7BA80(v244, &qword_1EA99B5F0);
  sub_18AE7BA80(v245, &qword_1EA99B5F0);
  v230(v216, v212);
  v137 = v289;
  sub_18AE7BA80(v228, &qword_1EA99B5F0);
  if (v229)
  {
LABEL_85:
    v223 = v253;
    if (v291)
    {
      v221 = 0;
      goto LABEL_87;
    }

    return (*(v214 + 8))(v223, v297);
  }

LABEL_79:
  v217 = v239;
  sub_18AE83A40(v295, v239, &qword_1EA99B5F0);
  v218 = v297;
  v219 = v254;
  v220 = v254(v217, 1, v297);
  sub_18AE7BA80(v217, &qword_1EA99B5F0);
  if (v220 == 1)
  {
    v221 = 0;
  }

  else
  {
    v222 = v236;
    sub_18AE83A40(v137 + v240, v236, &qword_1EA99B5F0);
    v221 = v219(v222, 1, v218) == 1;
    sub_18AE7BA80(v222, &qword_1EA99B5F0);
  }

  v223 = v253;
  v224 = v295;
  sub_18AE7BA80(v295, &qword_1EA99B5F0);
  (v288)(v224, v223, v218);
  (v292)(v224, 0, 1, v218);
  if (v291)
  {
LABEL_87:
    sub_18AFCD5D4();
    v231 = sub_18AFCBBC4();

    if (v231)
    {
    }

    else
    {
      sub_18AFCD5D4();
      v232 = sub_18AFCBBA4();

      if ((v232 & 1) == 0 && (*(v289 + 42) & 0x40) == 0)
      {
        sub_18AFCDB84();
        v233 = sub_18AFCD5C4();
        sub_18AFCBBD4();
        v233(&v299, 0);
        if (v221)
        {
          sub_18AFCD5D4();
          sub_18AFCD5B4();
        }

        else
        {
          v234 = sub_18AFCD5C4();
          MEMORY[0x18CFEAF20](0x3FA1111111111111, 0);
          v234(&v299, 0);
        }

        v223 = v253;
      }
    }
  }

  return (*(v214 + 8))(v223, v297);
}

unint64_t sub_18AE7E48C()
{
  result = qword_1ED56A8A0;
  if (!qword_1ED56A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A8A0);
  }

  return result;
}

unint64_t sub_18AE7E4E4()
{
  result = qword_1ED56A898;
  if (!qword_1ED56A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A898);
  }

  return result;
}

uint64_t GlassMaterialProvider.Configuration.externalLuminance(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x8000;
  if ((a1 & 1) == 0)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFF7FFFLL | v6;
  return result;
}

uint64_t sub_18AE7E5A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7E60C(uint64_t a1, uint64_t a2)
{
  v4 = _s11EnvironmentVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE7E670(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_18AE91E70(0, v5, 0);
  v6 = v28;
  for (i = (a3 + 60); ; i += 32)
  {
    v9 = *(i - 20);
    v10 = *(i - 12);
    v11 = *(i - 1);
    v12 = *i;
    v22[0] = *(i - 28);
    v22[1] = v9;
    v22[2] = v10;
    v23 = v11;
    v24 = v12;
    sub_18AE91FA0(v9, v10, v11, v12);
    a1(&v25, v22);
    if (v4)
    {
      break;
    }

    v4 = 0;
    sub_18AE92094(v9, v10, v11, v12);
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v28 = v6;
    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v17 >= v16 >> 1)
    {
      v20 = v26;
      sub_18AE91E70((v16 > 1), v17 + 1, 1);
      v14 = v20;
      v6 = v28;
    }

    *(v6 + 16) = v17 + 1;
    v18 = v6 + 32 * v17;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;
    *(v18 + 56) = v15;
    if (!--v5)
    {
      return v6;
    }
  }

  sub_18AE92094(v9, v10, v11, v12);

  __break(1u);
  return result;
}

uint64_t sub_18AE7E7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _s11EnvironmentVMa();
  sub_18AE83A40(a1 + *(v10 + 32), v9, &qword_1EA99BBF0);
  v11 = type metadata accessor for GlassMaterialProvider.ResolvedStyle();
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_18AE7BA80(v9, &qword_1EA99BBF0);
    return sub_18AE834E4(a1, a2, a3);
  }

  v18 = v3[5];
  sub_18AFB5FE8(v3, a1, &v18, a2, &v19);
  result = sub_18AFAC05C(v9, type metadata accessor for GlassMaterialProvider.ResolvedStyle);
  v13 = v20;
  v14 = v21;
  v16 = v22;
  v15 = v23;
  if (v19 >> 60 == 15 && (v20 & 0xFE00000000) == 0xFE00000000)
  {
    return sub_18AE834E4(a1, a2, a3);
  }

  *a3 = v19;
  *(a3 + 8) = v13;
  *(a3 + 12) = BYTE4(v13);
  *(a3 + 13) = BYTE5(v13);
  *(a3 + 14) = BYTE6(v13);
  *(a3 + 16) = v14;
  *(a3 + 32) = v16;
  *(a3 + 34) = BYTE2(v16);
  *(a3 + 40) = v15;
  return result;
}

uint64_t sub_18AE7E9D4(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 38) & 3) == 2)
  {
  }

  return result;
}

void sub_18AE7E9E8()
{
  if (qword_1ED56ADA8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED56C9B0;
  v1 = sub_18AFCDE04();
  v2 = [v0 integerForKey_];

  qword_1ED56C4B8 = v2;
}

uint64_t get_enum_tag_for_layout_string_13DesignLibrary21GlassMaterialProviderV21ResolvedConfigurationV4BaseO(uint64_t a1)
{
  v1 = *(a1 + 12) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_18AE7EA9C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v106 = (v7 + 312);
  v9 = _s11EnvironmentVMa();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v6[1];
  v1029 = *v6;
  v1030 = v12;
  v1031 = v6[2];
  sub_18AF6A99C(v1032);
  *(&v137[6] + 8) = v1032[6];
  *(&v137[7] + 8) = v1032[7];
  *(&v137[8] + 8) = v1032[8];
  BYTE8(v137[9]) = v1033;
  *(&v137[2] + 8) = v1032[2];
  *(&v137[3] + 8) = v1032[3];
  *(&v137[4] + 8) = v1032[4];
  *(&v137[5] + 8) = v1032[5];
  *(v137 + 8) = v1032[0];
  *(&v137[1] + 8) = v1032[1];
  sub_18AF6A96C(v1034);
  memcpy(&v130[22], v1034, 0x101uLL);
  if ((BYTE2(v1030) & 0x20) == 0)
  {
    *&v105 = v4;
    v13 = BYTE12(v1029) >> 6;
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v18 = *(v1029 + 80);
        v114 = *(v1029 + 64);
        v115 = v18;
        v116 = *(v1029 + 96);
        v117 = *(v1029 + 112);
        v19 = *(v1029 + 32);
        v111 = *(v1029 + 16);
        v112 = v19;
        v113 = *(v1029 + 48);
        v20 = *(v1029 + 32);
        v893 = *(v1029 + 16);
        v894 = v20;
        v895 = *(v1029 + 48);
        v21 = v2;
        sub_18AF6EE34(v2, v11);
        sub_18AF59FDC(&v111, &v310);
        sub_18AE90E8C(&v111, &v310);
        v22 = v105;
        sub_18AE7EA9C(v891, &v893, v105, v11);
        v893 = v114;
        v894 = v115;
        v895 = v116;
        sub_18AF6EE34(v21, v11);
        sub_18AE90E8C(&v114, &v310);
        sub_18AE7EA9C(&v310, &v893, v22, v11);
        sub_18AE93684(&v310);
        sub_18AF5A038(&v111);
        sub_18AF6EE98(v21);
        sub_18AE920D8(&v1029);
        v137[6] = v928;
        v137[7] = v929;
        v137[8] = v930;
        v137[9] = v931;
        v137[2] = v924;
        v137[3] = v925;
        v137[4] = v926;
        v137[5] = v927;
        v136 = *&v921[159];
        v137[0] = v922;
        v137[1] = v923;
        v104 = v935;
        v105 = v932;
        v102 = v934;
        v103 = v933;
        v135[0] = *v938;
        *(v135 + 3) = *&v938[3];
        v100 = v939;
        v101 = v940;
        v98 = v936;
        v99 = v941;
        v77 = v944;
        v133 = v945;
        v134 = v946;
        v96 = v947;
        v97 = v948;
        v94 = v949;
        v95 = v950;
        v91 = v951;
        v92 = v953;
        v93 = v952;
        v131 = v954;
        v132 = v955;
        v89 = v956;
        v90 = v957;
        v87 = v958;
        v88 = v959;
        v85 = v960;
        v86 = v961;
        v84 = v962;
        v83 = v963;
        memcpy(v130, v964, sizeof(v130));
        v128 = v965;
        v129[0] = *v966;
        *(v129 + 15) = *&v966[15];
        v81 = *&v966[31];
        v82 = *&v966[47];
        v15 = v942;
        v79 = v968;
        v80 = v967;
        v78 = v969;
        v14 = v937;
        v16 = v943;
        v17 = v970;
        goto LABEL_8;
      }

      *&v81 = v198;
      switch(v1029)
      {
        case 1:
        case 2:
        case 19:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          sub_18AF97C20(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v137[17];
          v137[7] = v137[18];
          v137[8] = v137[19];
          v137[9] = v137[20];
          v137[2] = v137[13];
          v137[3] = v137[14];
          v137[4] = v137[15];
          v137[5] = v137[16];
          v136 = v137[10];
          v137[0] = v137[11];
          v137[1] = v137[12];
          v104 = v137[24];
          v105 = v137[21];
          v102 = v137[23];
          v103 = v137[22];
          v135[0] = *v140;
          *(v135 + 3) = *&v140[3];
          v100 = v141;
          v101 = v142;
          v98 = v138;
          v99 = v143;
          v15 = v144;
          v77 = v146;
          v133 = v147;
          v134 = v148;
          v96 = v149;
          v97 = v150;
          v94 = v151;
          v95 = v152;
          v91 = v153;
          v92 = v155;
          v93 = v154;
          v131 = v156;
          v132 = v157;
          v89 = v158;
          v90 = v159;
          v87 = v160;
          v88 = v161;
          v85 = v162;
          v86 = v163;
          v84 = v164;
          v83 = v165;
          memcpy(v130, v166, sizeof(v130));
          v128 = v167;
          v129[0] = *v168;
          *(v129 + 15) = *&v168[15];
          v81 = *&v168[31];
          v82 = *&v168[47];
          v14 = v139;
          v16 = v145;
          v79 = v170;
          v80 = v169;
          v78 = v171;
          v17 = v172;
          break;
        case 3:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          sub_18AF7B968(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v267;
          v137[7] = v268;
          v137[8] = v269;
          v105 = v271;
          v137[9] = v270;
          v137[2] = v263;
          v137[3] = v264;
          v137[4] = v265;
          v137[5] = v266;
          v136 = *&v260[159];
          v137[0] = v261;
          v137[1] = v262;
          v103 = v272;
          v104 = v274;
          v14 = v276;
          v135[0] = *v277;
          *(v135 + 3) = *&v277[3];
          v101 = v279;
          v102 = v273;
          v100 = v278;
          v98 = v275;
          v99 = v280;
          v27 = v281;
          v28 = v282;
          v77 = v283;
          v133 = v284;
          v134 = v285;
          v96 = v286;
          v97 = v287;
          v94 = v288;
          v95 = v289;
          v91 = v290;
          v92 = v292;
          v93 = v291;
          v131 = v293;
          v132 = v294;
          v89 = v295;
          v90 = v296;
          v87 = v297;
          v88 = v298;
          v85 = v299;
          v86 = v300;
          v84 = v301;
          v83 = v302;
          memcpy(v130, v303, sizeof(v130));
          v128 = v304;
          v129[0] = *v305;
          *(v129 + 15) = *&v305[15];
          v81 = *&v305[31];
          v82 = *&v305[47];
          v79 = v307;
          v80 = v306;
          v78 = v308;
          v17 = v309;
          goto LABEL_32;
        case 4:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          sub_18AF7A094(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v218;
          v137[7] = v219;
          v137[8] = v220;
          v137[9] = v221;
          v137[2] = v214;
          v137[3] = v215;
          v137[4] = v216;
          v137[5] = v217;
          v136 = *&v211[159];
          v137[0] = v212;
          v137[1] = v213;
          v105 = v222;
          v103 = v223;
          v104 = v225;
          v135[0] = *v228;
          *(v135 + 3) = *&v228[3];
          v101 = v230;
          v102 = v224;
          v100 = v229;
          v98 = v226;
          v99 = v231;
          v15 = v232;
          v77 = v234;
          v133 = v235;
          v134 = v236;
          v96 = v237;
          v97 = v238;
          v94 = v239;
          v95 = v240;
          v91 = v241;
          v92 = v243;
          v93 = v242;
          v131 = v244;
          v132 = v245;
          v89 = v246;
          v90 = v247;
          v87 = v248;
          v88 = v249;
          v85 = v250;
          v86 = v251;
          v84 = v252;
          v83 = v253;
          memcpy(v130, v254, sizeof(v130));
          v128 = v255;
          v129[0] = *v256;
          *(v129 + 15) = *&v256[15];
          v81 = *&v256[31];
          v82 = *&v256[47];
          v79 = v258;
          v80 = v257;
          v78 = v259;
          v17 = v260;
          v14 = v227;
          v16 = v233;
          break;
        case 5:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          v25 = v467;
          sub_18AF9CE30(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v467[7];
          v137[7] = v467[8];
          v137[8] = v467[9];
          v137[9] = v467[10];
          v137[2] = v467[3];
          v137[3] = v467[4];
          v137[4] = v467[5];
          v137[5] = v467[6];
          v136 = v467[0];
          v137[0] = v467[1];
          v137[1] = v467[2];
          v104 = v467[14];
          v105 = v467[11];
          v102 = v467[13];
          v103 = v467[12];
          v26 = v469;
          v135[0] = *v470;
          *(v135 + 3) = *&v470[3];
          v100 = v471;
          v101 = v472;
          v98 = v468;
          v99 = v473;
          v27 = v474;
          v28 = v475;
          v77 = v476;
          v133 = v477;
          v134 = v478;
          v96 = v479;
          v97 = v480;
          v94 = v481;
          v95 = v482;
          v92 = v485;
          v93 = v484;
          v29 = v467;
          v131 = v486;
          v132 = v487;
          v89 = v488;
          v90 = v489;
          v87 = v490;
          v88 = v491;
          v85 = v492;
          v86 = v493;
          v91 = v483;
          v84 = v494;
          v83 = v495;
          memcpy(v130, v496, sizeof(v130));
          v128 = v497;
          v129[0] = *v498;
          *(v129 + 15) = *&v498[15];
          v81 = *&v498[31];
          v82 = *&v498[47];
          v80 = v499;
          v30 = v500;
          goto LABEL_31;
        case 6:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          v25 = v501;
          sub_18AF84454(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v501[7];
          v137[7] = v501[8];
          v137[8] = v501[9];
          v105 = v501[11];
          v137[9] = v501[10];
          v137[2] = v501[3];
          v137[3] = v501[4];
          v137[4] = v501[5];
          v137[5] = v501[6];
          v136 = v501[0];
          v137[0] = v501[1];
          v137[1] = v501[2];
          v103 = v501[12];
          v104 = v501[14];
          v26 = v503;
          v135[0] = *v504;
          *(v135 + 3) = *&v504[3];
          v101 = v506;
          v102 = v501[13];
          v100 = v505;
          v98 = v502;
          v99 = v507;
          v27 = v508;
          v28 = v509;
          v77 = v510;
          v133 = v511;
          v134 = v512;
          v96 = v513;
          v97 = v514;
          v94 = v515;
          v95 = v516;
          v92 = v519;
          v93 = v518;
          v29 = v501;
          v131 = v520;
          v132 = v521;
          v89 = v522;
          v90 = v523;
          v87 = v524;
          v88 = v525;
          v85 = v526;
          v86 = v527;
          v91 = v517;
          v84 = v528;
          v83 = v529;
          memcpy(v130, v530, sizeof(v130));
          v128 = v531;
          v129[0] = *v532;
          *(v129 + 15) = *&v532[15];
          v81 = *&v532[31];
          v82 = *&v532[47];
          v80 = v533;
          v30 = v534;
          goto LABEL_31;
        case 7:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          v25 = v569;
          sub_18AF82700(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v569[7];
          v137[7] = v569[8];
          v137[8] = v569[9];
          v105 = v569[11];
          v137[9] = v569[10];
          v137[2] = v569[3];
          v137[3] = v569[4];
          v137[4] = v569[5];
          v137[5] = v569[6];
          v136 = v569[0];
          v137[0] = v569[1];
          v137[1] = v569[2];
          v103 = v569[12];
          v104 = v569[14];
          v26 = v571;
          v135[0] = *v572;
          *(v135 + 3) = *&v572[3];
          v101 = v574;
          v102 = v569[13];
          v100 = v573;
          v98 = v570;
          v99 = v575;
          v27 = v576;
          v28 = v577;
          v77 = v578;
          v133 = v579;
          v134 = v580;
          v96 = v581;
          v97 = v582;
          v94 = v583;
          v95 = v584;
          v92 = v587;
          v93 = v586;
          v29 = v569;
          v131 = v588;
          v132 = v589;
          v89 = v590;
          v90 = v591;
          v87 = v592;
          v88 = v593;
          v85 = v594;
          v86 = v595;
          v91 = v585;
          v84 = v596;
          v83 = v597;
          memcpy(v130, v598, sizeof(v130));
          v128 = v599;
          v129[0] = *v600;
          *(v129 + 15) = *&v600[15];
          v81 = *&v600[31];
          v82 = *&v600[47];
          v80 = v601;
          v30 = v602;
          goto LABEL_31;
        case 8:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          v25 = v653;
          sub_18AF89BBC(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v653[7];
          v137[7] = v653[8];
          v137[8] = v653[9];
          v105 = v653[11];
          v137[9] = v653[10];
          v137[2] = v653[3];
          v137[3] = v653[4];
          v137[4] = v653[5];
          v137[5] = v653[6];
          v136 = v653[0];
          v137[0] = v653[1];
          v137[1] = v653[2];
          v103 = v653[12];
          v104 = v653[14];
          v26 = v655;
          v135[0] = *v656;
          *(v135 + 3) = *&v656[3];
          v101 = v658;
          v102 = v653[13];
          v100 = v657;
          v98 = v654;
          v99 = v659;
          v27 = v660;
          v28 = v661;
          v77 = v662;
          v133 = v663;
          v134 = v664;
          v96 = v665;
          v97 = v666;
          v94 = v667;
          v95 = v668;
          v92 = v671;
          v93 = v670;
          v29 = v653;
          v131 = v672;
          v132 = v673;
          v89 = v674;
          v90 = v675;
          v87 = v676;
          v88 = v677;
          v85 = v678;
          v86 = v679;
          v91 = v669;
          v84 = v680;
          v83 = v681;
          memcpy(v130, v682, sizeof(v130));
          v128 = v683;
          v129[0] = *v684;
          *(v129 + 15) = *&v684[15];
          v81 = *&v684[31];
          v82 = *&v684[47];
          v80 = v685;
          v30 = v686;
          goto LABEL_31;
        case 9:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          v31 = v687;
          sub_18AF83680(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v687[7];
          v137[7] = v687[8];
          v137[8] = v687[9];
          v137[9] = v687[10];
          v137[2] = v687[3];
          v137[3] = v687[4];
          v137[4] = v687[5];
          v137[5] = v687[6];
          v136 = v687[0];
          v137[0] = v687[1];
          v137[1] = v687[2];
          v104 = v687[14];
          v105 = v687[11];
          v102 = v687[13];
          v103 = v687[12];
          v14 = v689;
          v135[0] = *v690;
          *(v135 + 3) = *&v690[3];
          v100 = v691;
          v101 = v692;
          v98 = v688;
          v99 = v693;
          v16 = v695;
          v77 = v696;
          v133 = v697;
          v134 = v698;
          v96 = v699;
          v97 = v700;
          v94 = v701;
          v95 = v702;
          v32 = v694;
          v91 = v703;
          v92 = v705;
          v93 = v704;
          v33 = v687;
          v131 = v706;
          v132 = v707;
          v89 = v708;
          v90 = v709;
          v87 = v710;
          v88 = v711;
          v85 = v712;
          v86 = v713;
          v84 = v714;
          v83 = v715;
          memcpy(v130, v716, sizeof(v130));
          v128 = v717;
          v129[0] = *v718;
          *(v129 + 15) = *&v718[15];
          v81 = *&v718[31];
          v82 = *&v718[47];
          v80 = v719;
          v34 = v720;
          goto LABEL_29;
        case 10:
          v891[0] = v1029;
          v891[1] = v1030;
          v891[2] = v1031;
          sub_18AF7DBA4(v891, v2, &v310);
          v111 = v1029;
          v112 = v1030;
          v113 = v1031;
          sub_18AF7D4B4(&v111, v2, v891);
          v111 = v1029;
          v112 = v1030;
          v113 = v1031;
          sub_18AF4CBF0(&v111, v2, v105, v313);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v313[7];
          v137[7] = v313[8];
          v137[8] = v313[9];
          v137[9] = v313[10];
          v137[2] = v313[3];
          v137[3] = v313[4];
          v137[4] = v313[5];
          v137[5] = v313[6];
          v136 = v313[0];
          v137[0] = v313[1];
          v137[1] = v313[2];
          v105 = v313[11];
          v103 = v313[12];
          v104 = v313[14];
          v135[0] = *v316;
          *(v135 + 3) = *&v316[3];
          v101 = v318;
          v102 = v313[13];
          v100 = v317;
          v98 = v314;
          v99 = v319;
          v15 = v320;
          v35 = v321;
          v77 = v322;
          v133 = v323;
          v134 = v324;
          v96 = v325;
          v97 = v326;
          v94 = v327;
          v95 = v328;
          v91 = v329;
          v92 = v331;
          v93 = v330;
          v131 = v332;
          v132 = v333;
          v89 = v334;
          v90 = v335;
          v87 = v336;
          v88 = v337;
          v85 = v338;
          v86 = v339;
          v84 = v340;
          v83 = v341;
          memcpy(v130, v342, sizeof(v130));
          v128 = v343;
          v129[0] = *v344;
          *(v129 + 15) = *&v344[15];
          v81 = *&v344[31];
          v82 = *&v344[47];
          v79 = v346;
          v80 = v345;
          v78 = v347;
          v17 = v348;
          v14 = v315;
          goto LABEL_41;
        case 11:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          v25 = v349;
          sub_18AF7E398(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v349[7];
          v137[7] = v349[8];
          v137[8] = v349[9];
          v105 = v349[11];
          v137[9] = v349[10];
          v137[2] = v349[3];
          v137[3] = v349[4];
          v137[4] = v349[5];
          v137[5] = v349[6];
          v136 = v349[0];
          v137[0] = v349[1];
          v137[1] = v349[2];
          v103 = v349[12];
          v104 = v349[14];
          v26 = v351;
          v135[0] = *v352;
          *(v135 + 3) = *&v352[3];
          v101 = v354;
          v102 = v349[13];
          v100 = v353;
          v98 = v350;
          v99 = v355;
          v27 = v356;
          v28 = v357;
          v77 = v358;
          v133 = v359;
          v134 = v360;
          v96 = v361;
          v97 = v362;
          v94 = v363;
          v95 = v364;
          v92 = v367;
          v93 = v366;
          v29 = v349;
          v131 = v368;
          v132 = v369;
          v89 = v370;
          v90 = v371;
          v87 = v372;
          v88 = v373;
          v85 = v374;
          v86 = v375;
          v91 = v365;
          v84 = v376;
          v83 = v377;
          memcpy(v130, v378, sizeof(v130));
          v128 = v379;
          v129[0] = *v380;
          *(v129 + 15) = *&v380[15];
          v81 = *&v380[31];
          v82 = *&v380[47];
          v80 = v381;
          v30 = v382;
          goto LABEL_31;
        case 12:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          sub_18AF7E524(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v25 = v383;
          v137[6] = v383[7];
          v137[7] = v383[8];
          v137[8] = v383[9];
          v137[9] = v383[10];
          v137[2] = v383[3];
          v137[3] = v383[4];
          v137[4] = v383[5];
          v137[5] = v383[6];
          v136 = v383[0];
          v137[0] = v383[1];
          v137[1] = v383[2];
          v104 = v383[14];
          v105 = v383[11];
          v102 = v383[13];
          v103 = v383[12];
          v26 = v385;
          v135[0] = *v386;
          *(v135 + 3) = *&v386[3];
          v100 = v387;
          v101 = v388;
          v98 = v384;
          v99 = v389;
          v27 = v390;
          v28 = v391;
          v77 = v392;
          v133 = v393;
          v134 = v394;
          v96 = v395;
          v97 = v396;
          v94 = v397;
          v95 = v398;
          v92 = v401;
          v93 = v400;
          v29 = v383;
          v131 = v402;
          v132 = v403;
          v89 = v404;
          v90 = v405;
          v87 = v406;
          v88 = v407;
          v85 = v408;
          v86 = v409;
          v91 = v399;
          v84 = v410;
          v83 = v411;
          memcpy(v130, v412, sizeof(v130));
          v128 = v413;
          v129[0] = *v414;
          *(v129 + 15) = *&v414[15];
          v81 = *&v414[31];
          v82 = *&v414[47];
          v80 = v415;
          v30 = v416;
          goto LABEL_31;
        case 13:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          v31 = v755;
          sub_18AF77D10(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v755[7];
          v137[7] = v755[8];
          v137[8] = v755[9];
          v137[9] = v755[10];
          v137[2] = v755[3];
          v137[3] = v755[4];
          v137[4] = v755[5];
          v137[5] = v755[6];
          v136 = v755[0];
          v137[0] = v755[1];
          v137[1] = v755[2];
          v104 = v755[14];
          v105 = v755[11];
          v102 = v755[13];
          v103 = v755[12];
          v14 = v757;
          v135[0] = *v758;
          *(v135 + 3) = *&v758[3];
          v100 = v759;
          v101 = v760;
          v98 = v756;
          v99 = v761;
          v16 = v763;
          v77 = v764;
          v133 = v765;
          v134 = v766;
          v96 = v767;
          v97 = v768;
          v94 = v769;
          v95 = v770;
          v32 = v762;
          v91 = v771;
          v92 = v773;
          v93 = v772;
          v33 = v755;
          v131 = v774;
          v132 = v775;
          v89 = v776;
          v90 = v777;
          v87 = v778;
          v88 = v779;
          v85 = v780;
          v86 = v781;
          v84 = v782;
          v83 = v783;
          memcpy(v130, v784, sizeof(v130));
          v128 = v785;
          v129[0] = *v786;
          *(v129 + 15) = *&v786[15];
          v81 = *&v786[31];
          v82 = *&v786[47];
          v80 = v787;
          v34 = v788;
          goto LABEL_29;
        case 14:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          v25 = v721;
          sub_18AF7B968(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v721[7];
          v137[7] = v721[8];
          v137[8] = v721[9];
          v105 = v721[11];
          v137[9] = v721[10];
          v137[2] = v721[3];
          v137[3] = v721[4];
          v137[4] = v721[5];
          v137[5] = v721[6];
          v136 = v721[0];
          v137[0] = v721[1];
          v137[1] = v721[2];
          v103 = v721[12];
          v104 = v721[14];
          v26 = v723;
          v135[0] = *v724;
          *(v135 + 3) = *&v724[3];
          v101 = v726;
          v102 = v721[13];
          v100 = v725;
          v98 = v722;
          v99 = v727;
          v27 = v728;
          v28 = v729;
          v77 = v730;
          v133 = v731;
          v134 = v732;
          v96 = v733;
          v97 = v734;
          v94 = v735;
          v95 = v736;
          v92 = v739;
          v93 = v738;
          v29 = v721;
          v131 = v740;
          v132 = v741;
          v89 = v742;
          v90 = v743;
          v87 = v744;
          v88 = v745;
          v85 = v746;
          v86 = v747;
          v91 = v737;
          v84 = v748;
          v83 = v749;
          memcpy(v130, v750, sizeof(v130));
          v128 = v751;
          v129[0] = *v752;
          *(v129 + 15) = *&v752[15];
          v81 = *&v752[31];
          v82 = *&v752[47];
          v80 = v753;
          v30 = v754;
          goto LABEL_31;
        case 15:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          v25 = v789;
          sub_18AF79140(&v310, v2, v105, v789);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v789[7];
          v137[7] = v789[8];
          v137[8] = v789[9];
          v105 = v789[11];
          v137[9] = v789[10];
          v137[2] = v789[3];
          v137[3] = v789[4];
          v137[4] = v789[5];
          v137[5] = v789[6];
          v136 = v789[0];
          v137[0] = v789[1];
          v137[1] = v789[2];
          v103 = v789[12];
          v104 = v789[14];
          v26 = v791;
          v135[0] = *v792;
          *(v135 + 3) = *&v792[3];
          v101 = v794;
          v102 = v789[13];
          v100 = v793;
          v98 = v790;
          v99 = v795;
          v27 = v796;
          v28 = v797;
          v77 = v798;
          v133 = v799;
          v134 = v800;
          v96 = v801;
          v97 = v802;
          v94 = v803;
          v95 = v804;
          v92 = v807;
          v93 = v806;
          v29 = v789;
          v131 = v808;
          v132 = v809;
          v89 = v810;
          v90 = v811;
          v87 = v812;
          v88 = v813;
          v85 = v814;
          v86 = v815;
          v91 = v805;
          v84 = v816;
          v83 = v817;
          memcpy(v130, v818, sizeof(v130));
          v128 = v819;
          v129[0] = *v820;
          *(v129 + 15) = *&v820[15];
          v81 = *&v820[31];
          v82 = *&v820[47];
          v80 = v821;
          v30 = v822;
          goto LABEL_31;
        case 16:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          v31 = v823;
          sub_18AF8BF70(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v823[7];
          v137[7] = v823[8];
          v137[8] = v823[9];
          v137[9] = v823[10];
          v137[2] = v823[3];
          v137[3] = v823[4];
          v137[4] = v823[5];
          v137[5] = v823[6];
          v136 = v823[0];
          v137[0] = v823[1];
          v137[1] = v823[2];
          v104 = v823[14];
          v105 = v823[11];
          v102 = v823[13];
          v103 = v823[12];
          v14 = v825;
          v135[0] = *v826;
          *(v135 + 3) = *&v826[3];
          v100 = v827;
          v101 = v828;
          v98 = v824;
          v99 = v829;
          v16 = v831;
          v77 = v832;
          v133 = v833;
          v134 = v834;
          v96 = v835;
          v97 = v836;
          v94 = v837;
          v95 = v838;
          v32 = v830;
          v91 = v839;
          v92 = v841;
          v93 = v840;
          v33 = v823;
          v131 = v842;
          v132 = v843;
          v89 = v844;
          v90 = v845;
          v87 = v846;
          v88 = v847;
          v85 = v848;
          v86 = v849;
          v84 = v850;
          v83 = v851;
          memcpy(v130, v852, sizeof(v130));
          v128 = v853;
          v129[0] = *v854;
          *(v129 + 15) = *&v854[15];
          v81 = *&v854[31];
          v82 = *&v854[47];
          v80 = v855;
          v34 = v856;
LABEL_29:
          v79 = v34;
          v78 = *(v31 + 872);
          v17 = v33 + 873;
          v15 = v32;
          break;
        case 17:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          v25 = v857;
          sub_18AFA3510(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v857[7];
          v137[7] = v857[8];
          v137[8] = v857[9];
          v105 = v857[11];
          v137[9] = v857[10];
          v137[2] = v857[3];
          v137[3] = v857[4];
          v137[4] = v857[5];
          v137[5] = v857[6];
          v136 = v857[0];
          v137[0] = v857[1];
          v137[1] = v857[2];
          v103 = v857[12];
          v104 = v857[14];
          v26 = v859;
          v135[0] = *v860;
          *(v135 + 3) = *&v860[3];
          v101 = v862;
          v102 = v857[13];
          v100 = v861;
          v98 = v858;
          v99 = v863;
          v27 = v864;
          v28 = v865;
          v77 = v866;
          v133 = v867;
          v134 = v868;
          v96 = v869;
          v97 = v870;
          v94 = v871;
          v95 = v872;
          v92 = v875;
          v93 = v874;
          v29 = v857;
          v131 = v876;
          v132 = v877;
          v89 = v878;
          v90 = v879;
          v87 = v880;
          v88 = v881;
          v85 = v882;
          v86 = v883;
          v91 = v873;
          v84 = v884;
          v83 = v885;
          memcpy(v130, v886, sizeof(v130));
          v128 = v887;
          v129[0] = *v888;
          *(v129 + 15) = *&v888[15];
          v81 = *&v888[31];
          v82 = *&v888[47];
          v80 = v889;
          v30 = v890;
          goto LABEL_31;
        case 18:
          *&v81 = v908;
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          v69 = v105;
          sub_18AF9E898(&v310, v2, v105, v891);
          v111 = v1029;
          v112 = v1030;
          v113 = v1031;
          sub_18AF9DE60(&v111, v2, v69, &v310);
          v111 = v1029;
          v112 = v1030;
          v113 = v1031;
          sub_18AF6FCC0(&v111);
          v111 = v1029;
          v112 = v1030;
          v113 = v1031;
          sub_18AF9ED1C(&v111, v2, &v893);
          v108 = v1029;
          v109 = v1030;
          v110 = v1031;
          sub_18AF9E318(&v108, v69, &v111);
          if ((v69 & 8) != 0)
          {
            memcpy(v107, v892, 0x401uLL);
            if ((v69 & 0x800) == 0)
            {
              sub_18AFA3C7C(v107, v2);
            }
          }

          else
          {
            memcpy(v107, v892, 0x401uLL);
          }

          v108 = v1029;
          v109 = v1030;
          v110 = v1031;
          sub_18AF4CBF0(&v108, v2, v69 | 0x1BE0, v896);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v896[7];
          v137[7] = v896[8];
          v137[8] = v896[9];
          v105 = v896[11];
          v137[9] = v896[10];
          v137[2] = v896[3];
          v137[3] = v896[4];
          v137[4] = v896[5];
          v137[5] = v896[6];
          v136 = v896[0];
          v137[0] = v896[1];
          v137[1] = v896[2];
          v103 = v896[12];
          v104 = v896[14];
          v135[0] = *v899;
          *(v135 + 3) = *&v899[3];
          v101 = v901;
          v102 = v896[13];
          v100 = v900;
          v98 = v897;
          v99 = v902;
          v15 = v903;
          v35 = v904;
          v77 = v905;
          v133 = v906;
          v134 = v907;
          v70 = *(v81 + 16);
          v96 = *v81;
          v97 = v70;
          v71 = *(v81 + 48);
          v94 = *(v81 + 32);
          v95 = v71;
          v92 = v910;
          v93 = v909;
          v131 = v911;
          v132 = v912;
          v72 = *(v81 + 96);
          v89 = *(v81 + 80);
          v90 = v72;
          v73 = *(v81 + 128);
          v87 = *(v81 + 112);
          v88 = v73;
          v74 = *(v81 + 160);
          v85 = *(v81 + 144);
          v86 = v74;
          v91 = v908[8];
          v84 = v913;
          v83 = v914;
          memcpy(v130, v915, sizeof(v130));
          v128 = v916;
          v129[0] = v917[0];
          *(v129 + 15) = *(v917 + 15);
          v75 = *(v81 + 528);
          v81 = *(v81 + 512);
          v82 = v75;
          v79 = v919;
          v80 = v918;
          v78 = v920;
          v17 = v921;
          v14 = v898;
LABEL_41:
          v16 = v35;
          goto LABEL_8;
        case 20:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          sub_18AF9D8C0(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v179;
          v137[7] = v180;
          v137[8] = v181;
          v105 = v183;
          v137[9] = v182;
          v137[2] = v175;
          v137[3] = v176;
          v137[4] = v177;
          v137[5] = v178;
          v136 = *&v172[159];
          v137[0] = v173;
          v137[1] = v174;
          v103 = v184;
          v104 = v186;
          v14 = v188;
          v135[0] = *v189;
          *(v135 + 3) = *&v189[3];
          v101 = v191;
          v102 = v185;
          v100 = v190;
          v98 = v187;
          v99 = v192;
          v27 = v193;
          v28 = v194;
          v77 = v195;
          v133 = v196;
          v134 = v197;
          v36 = *(v81 + 16);
          v96 = *v81;
          v97 = v36;
          v37 = *(v81 + 48);
          v94 = *(v81 + 32);
          v95 = v37;
          v91 = v198[8];
          v92 = v200;
          v93 = v199;
          v131 = v201;
          v132 = v202;
          v38 = *(v81 + 96);
          v89 = *(v81 + 80);
          v90 = v38;
          v39 = *(v81 + 128);
          v87 = *(v81 + 112);
          v88 = v39;
          v40 = *(v81 + 160);
          v85 = *(v81 + 144);
          v86 = v40;
          v84 = v203;
          v83 = v204;
          memcpy(v130, v205, sizeof(v130));
          v128 = v206;
          v129[0] = v207[0];
          *(v129 + 15) = *(v207 + 15);
          v41 = *(v81 + 528);
          v81 = *(v81 + 512);
          v82 = v41;
          v79 = v209;
          v80 = v208;
          v78 = v210;
          v17 = v211;
          goto LABEL_32;
        default:
          v310 = v1029;
          v311 = v1030;
          v312 = v1031;
          v25 = v535;
          sub_18AF87F4C(&v310);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1029);
          v137[6] = v535[7];
          v137[7] = v535[8];
          v137[8] = v535[9];
          v137[9] = v535[10];
          v137[2] = v535[3];
          v137[3] = v535[4];
          v137[4] = v535[5];
          v137[5] = v535[6];
          v136 = v535[0];
          v137[0] = v535[1];
          v137[1] = v535[2];
          v104 = v535[14];
          v105 = v535[11];
          v102 = v535[13];
          v103 = v535[12];
          v26 = v537;
          v135[0] = *v538;
          *(v135 + 3) = *&v538[3];
          v100 = v539;
          v101 = v540;
          v98 = v536;
          v99 = v541;
          v27 = v542;
          v28 = v543;
          v77 = v544;
          v133 = v545;
          v134 = v546;
          v96 = v547;
          v97 = v548;
          v94 = v549;
          v95 = v550;
          v92 = v553;
          v93 = v552;
          v29 = v535;
          v131 = v554;
          v132 = v555;
          v89 = v556;
          v90 = v557;
          v87 = v558;
          v88 = v559;
          v85 = v560;
          v86 = v561;
          v91 = v551;
          v84 = v562;
          v83 = v563;
          memcpy(v130, v564, sizeof(v130));
          v128 = v565;
          v129[0] = *v566;
          *(v129 + 15) = *&v566[15];
          v81 = *&v566[31];
          v82 = *&v566[47];
          v80 = v567;
          v30 = v568;
LABEL_31:
          v79 = v30;
          v78 = *(v25 + 872);
          v17 = v29 + 873;
          v14 = v26;
LABEL_32:
          v16 = v28;
          v15 = v27;
          break;
      }
    }

    else
    {
      if (!v13)
      {
        v310 = v1029;
        v311 = v1030;
        v312 = v1031;
        LOBYTE(v891[0]) = BYTE4(v1029) & 1;
        LOBYTE(v111) = BYTE12(v1029) & 1;
        sub_18AF9FFEC(&v310);
        sub_18AF6EE98(v2);
        sub_18AE920D8(&v1029);
        v137[6] = v424;
        v137[7] = v425;
        v137[8] = v426;
        v105 = v428;
        v137[9] = v427;
        v137[2] = v420;
        v137[3] = v421;
        v137[4] = v422;
        v137[5] = v423;
        v136 = v417;
        v137[0] = v418;
        v137[1] = v419;
        v103 = v429;
        v104 = v431;
        v14 = v433;
        v135[0] = *v434;
        *(v135 + 3) = *&v434[3];
        v101 = v436;
        v102 = v430;
        v100 = v435;
        v98 = v432;
        v99 = v437;
        v15 = v438;
        v16 = v439;
        v77 = v440;
        v133 = v441;
        v134 = v442;
        v96 = v443;
        v97 = v444;
        v94 = v445;
        v95 = v446;
        v92 = v449;
        v93 = v448;
        v131 = v450;
        v132 = v451;
        v89 = v452;
        v90 = v453;
        v87 = v454;
        v88 = v455;
        v85 = v456;
        v86 = v457;
        v91 = v447;
        v84 = v458;
        v83 = v459;
        memcpy(v130, v460, sizeof(v130));
        v128 = v461;
        v129[0] = *v462;
        *(v129 + 15) = *&v462[15];
        v81 = *&v462[31];
        v82 = *&v462[47];
        v79 = v464;
        v80 = v463;
        v78 = v465;
        v17 = v466;
LABEL_8:
        v23 = *(v17 + 6);
        v24 = *(v17 + 7);
LABEL_34:
        v124 = v23;
        v125 = v24;
        v126 = *(v17 + 8);
        v127 = *(v17 + 18);
        v42 = *(v17 + 3);
        v120 = *(v17 + 2);
        v121 = v42;
        v43 = *(v17 + 5);
        v122 = *(v17 + 4);
        v123 = v43;
        v44 = *(v17 + 1);
        v118 = *v17;
        v119 = v44;
        goto LABEL_35;
      }

      v310 = v1029;
      v311 = v1030;
      v312 = v1031;
      sub_18AF82D48(&v310);
      sub_18AF6EE98(v2);
      sub_18AE920D8(&v1029);
      v137[6] = v610;
      v137[7] = v611;
      v137[8] = v612;
      v137[9] = v613;
      v137[2] = v606;
      v137[3] = v607;
      v137[4] = v608;
      v137[5] = v609;
      v136 = v603;
      v137[0] = v604;
      v137[1] = v605;
      v104 = v617;
      v105 = v614;
      v102 = v616;
      v103 = v615;
      v135[0] = *v620;
      *(v135 + 3) = *&v620[3];
      v100 = v621;
      v101 = v622;
      v98 = v618;
      v99 = v623;
      v16 = v625;
      v77 = v626;
      v133 = v627;
      v134 = v628;
      v96 = v629;
      v97 = v630;
      v94 = v631;
      v95 = v632;
      v92 = v635;
      v93 = v634;
      v131 = v636;
      v132 = v637;
      v89 = v638;
      v90 = v639;
      v87 = v640;
      v88 = v641;
      v85 = v642;
      v86 = v643;
      v91 = v633;
      v84 = v644;
      v83 = v645;
      memcpy(v130, v646, sizeof(v130));
      v128 = v647;
      v129[0] = *v648;
      *(v129 + 15) = *&v648[15];
      v81 = *&v648[31];
      v82 = *&v648[47];
      v79 = v650;
      v80 = v649;
      v78 = v651;
      v15 = v624;
      v17 = v652;
      v14 = v619;
    }

    v23 = *(v17 + 6);
    v24 = *(v17 + 7);
    goto LABEL_34;
  }

  v310 = v1029;
  v311 = v1030;
  v312 = v1031;
  sub_18AF87F4C(&v310);
  sub_18AF6EE98(v2);
  sub_18AE920D8(&v1029);
  v137[6] = v977;
  v137[7] = v978;
  v137[8] = v979;
  v105 = v981;
  v137[9] = v980;
  v137[2] = v973;
  v137[3] = v974;
  v137[4] = v975;
  v137[5] = v976;
  v136 = *&v970[159];
  v137[0] = v971;
  v137[1] = v972;
  v103 = v982;
  v104 = v984;
  v14 = v986;
  v135[0] = *v987;
  *(v135 + 3) = *&v987[3];
  v101 = v989;
  v102 = v983;
  v100 = v988;
  v98 = v985;
  v99 = v990;
  v16 = v992;
  v77 = v993;
  v133 = v994;
  v134 = v995;
  v96 = v996;
  v97 = v997;
  v94 = v998;
  v95 = v999;
  v92 = v1002;
  v93 = v1001;
  v131 = v1003;
  v132 = v1004;
  v89 = v1005;
  v90 = v1006;
  v87 = v1007;
  v88 = v1008;
  v85 = v1009;
  v86 = v1010;
  v91 = v1000;
  v84 = v1011;
  v83 = v1012;
  memcpy(v130, v1013, sizeof(v130));
  v128 = v1014;
  v129[0] = *v1015;
  *(v129 + 15) = *&v1015[15];
  v81 = *&v1015[31];
  v82 = *&v1015[47];
  v15 = v991;
  v79 = v1017;
  v80 = v1016;
  v78 = v1018;
  v124 = v1025;
  v125 = v1026;
  v126 = v1027;
  v127 = v1028;
  v120 = v1021;
  v121 = v1022;
  v122 = v1023;
  v123 = v1024;
  v118 = v1019;
  v119 = v1020;
LABEL_35:
  v45 = v137[6];
  v46 = v137[8];
  *(v8 + 128) = v137[7];
  *(v8 + 144) = v46;
  v47 = v137[2];
  v48 = v137[4];
  *(v8 + 64) = v137[3];
  *(v8 + 80) = v48;
  *(v8 + 96) = v137[5];
  *(v8 + 112) = v45;
  v49 = v137[0];
  *v8 = v136;
  *(v8 + 16) = v49;
  *(v8 + 32) = v137[1];
  *(v8 + 48) = v47;
  v51 = v104;
  v50 = v105;
  *(v8 + 160) = v137[9];
  *(v8 + 176) = v50;
  v52 = v102;
  *(v8 + 192) = v103;
  *(v8 + 208) = v52;
  *(v8 + 224) = v51;
  *(v8 + 240) = v98;
  *(v8 + 248) = v14;
  *(v8 + 249) = v135[0];
  *(v8 + 252) = *(v135 + 3);
  v53 = v101;
  *(v8 + 256) = v100;
  *(v8 + 272) = v53;
  *(v8 + 288) = v99;
  *(v8 + 296) = v15;
  *(v8 + 304) = v16;
  *(v8 + 308) = v77;
  *(v8 + 309) = v133;
  *(v8 + 311) = v134;
  v54 = v106;
  v55 = v97;
  *v106 = v96;
  v54[1] = v55;
  v56 = v95;
  v54[2] = v94;
  v54[3] = v56;
  *(v8 + 376) = v91;
  v57 = v92;
  *(v8 + 384) = v93;
  *(v8 + 385) = v57;
  *(v8 + 386) = v131;
  *(v8 + 390) = v132;
  v58 = v90;
  v54[5] = v89;
  v54[6] = v58;
  v59 = v88;
  v54[7] = v87;
  v54[8] = v59;
  v60 = v86;
  v54[9] = v85;
  v54[10] = v60;
  *(v8 + 488) = v84;
  *(v8 + 496) = v83;
  memcpy((v8 + 498), v130, 0x117uLL);
  v61 = v129[0];
  *(v8 + 777) = v128;
  *(v8 + 793) = v61;
  *(v8 + 808) = *(v129 + 15);
  v62 = v82;
  v54[32] = v81;
  v54[33] = v62;
  v63 = v79;
  *(v8 + 856) = v80;
  *(v8 + 864) = v63;
  *(v8 + 872) = v78;
  v64 = v125;
  *(v8 + 969) = v124;
  *(v8 + 985) = v64;
  *(v8 + 1001) = v126;
  *(v8 + 1017) = v127;
  v65 = v121;
  *(v8 + 905) = v120;
  *(v8 + 921) = v65;
  v66 = v123;
  *(v8 + 937) = v122;
  *(v8 + 953) = v66;
  result = v118;
  v68 = v119;
  *(v8 + 873) = v118;
  *(v8 + 889) = v68;
  return result;
}

uint64_t GlassMaterialProvider.resolveProvider(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = _s17ResolvedCompositeV3KeyVMa();
  MEMORY[0x1EEE9AC00](v99);
  *&v106 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v102);
  v107 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v96 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v96 - v10;
  v12 = sub_18AFCBB34();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v96 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v96 - v16;
  v18 = _s11EnvironmentVMa();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v109 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v96 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v105 = &v96 - v24;
  v103 = type metadata accessor for GlassMaterialProvider.State();
  sub_18AE7B10C(a1 + v103[6], v23, _s11EnvironmentVMa);
  v104 = a1;
  sub_18AE83A40(a1, v11, &qword_1EA99B5F0);
  v25 = *(v13 + 48);
  v26 = v25(v11, 1, v12);
  v108 = v18;
  if (v26 == 1)
  {
    (*(v13 + 16))(v17, &v23[*(v18 + 20)], v12);
    v27 = v12;
    if (v25(v11, 1, v12) != 1)
    {
      sub_18AE7BA80(v11, &qword_1EA99B5F0);
    }
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    v27 = v12;
  }

  v28 = v108;
  (*(v13 + 40))(&v23[v108[5]], v17, v27);
  v29 = v105;
  sub_18AFB6838(v23, v105, _s11EnvironmentVMa);
  v30 = v100;
  v31 = *(v100 + 16);
  v32 = *(v100 + 24);
  v33 = v109;
  v34 = v13;
  if (*(v100 + 32) != 1)
  {
    v36 = *(v100 + 16);
    if (v32 < v31)
    {
      v36 = *(v100 + 24);
    }

    goto LABEL_11;
  }

  v35 = 1;
  if (*&v31 <= 1uLL)
  {
    if (*&v31 | *&v32)
    {
      v36 = 0x4064C00000000000;
    }

    else
    {
      v36 = 0x4048000000000000;
    }

    goto LABEL_11;
  }

  if (!(*&v31 ^ 2 | *&v32))
  {
    v36 = 0x406929999999999ALL;
LABEL_11:
    v35 = 0;
    goto LABEL_12;
  }

  v36 = 0;
LABEL_12:
  v37 = v29 + v28[11];
  *v37 = v36;
  *(v37 + 8) = 0;
  *(v37 + 16) = v36;
  *(v37 + 24) = 0;
  *(v37 + 25) = v35;
  v38 = *(v104 + v103[7]);
  sub_18AE83A40(v29 + v28[8], v8, &qword_1EA99BBF0);
  v39 = type metadata accessor for GlassMaterialProvider.ResolvedStyle();
  if ((*(*(v39 - 8) + 48))(v8, 1, v39) == 1)
  {
    sub_18AE7BA80(v8, &qword_1EA99BBF0);
  }

  else
  {
    *&v111 = v30[5];
    sub_18AFB5FE8(v30, v29, &v111, v38, v114);
    sub_18AFB6938(v8, type metadata accessor for GlassMaterialProvider.ResolvedStyle);
    if (*&v114[0] >> 60 != 15 || (*(&v114[0] + 1) & 0xFE00000000) != 0xFE00000000)
    {
      goto LABEL_17;
    }
  }

  *&v111 = v30[5];
  sub_18AE834E4(v29, v38, v114);
LABEL_17:
  v111 = v114[0];
  v112 = v114[1];
  v113 = v114[2];
  v40 = v107;
  sub_18AE7B10C(v30, v107, type metadata accessor for GlassMaterialProvider.Configuration);
  sub_18AE7B10C(v29, v33, _s11EnvironmentVMa);
  v41 = *(v104 + v103[8]);
  v42 = v104 + v103[9];
  v43 = *(v42 + 8);
  v104 = *v42;
  v103 = v43;
  LODWORD(v100) = *(v42 + 16);
  v44 = *v40;
  v45 = v111;
  LODWORD(v43) = DWORD2(v111);
  v46 = BYTE12(v111);
  *(a2 + 32) = *v40;
  *(a2 + 40) = v45;
  *(a2 + 52) = v46;
  *(a2 + 48) = v43;
  v47 = v28[5];
  v48 = *(v34 + 16);
  v49 = v106;
  v50 = v106 + *(v99 + 20);
  v99 = v34 + 16;
  v97 = v48;
  v48(v50, (v33 + v47), v27);
  v51 = v113;
  v49[1] = v112;
  v49[2] = v51;
  *v49 = v111;
  v52 = v33 + v28[10];
  v53 = *(v52 + 4);
  v101 = v27;
  v98 = v47;
  if (v53)
  {
    v54 = v96;
    (*(v34 + 104))(v96, *MEMORY[0x1E697DBA8], v27);
    sub_18AE90E8C(&v111, v110);
    sub_18AE90E8C(&v111, v110);

    sub_18AE89F60(v44);
    sub_18AFB68A0(&qword_1ED56AD68, MEMORY[0x1E697DBD0]);
    v55 = sub_18AFCDDF4();
    (*(v34 + 8))(v54, v27);
    if (v55)
    {
      v56 = 0.0;
    }

    else
    {
      v56 = 1.0;
    }
  }

  else
  {
    v56 = *v52;
    sub_18AE90E8C(&v111, v110);
    sub_18AE90E8C(&v111, v110);

    sub_18AE89F60(v44);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BC90);
  v57 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BC98) - 8);
  v58 = (*(*v57 + 80) + 32) & ~*(*v57 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_18AFD8390;
  v60 = v59 + v58;
  v61 = v57[14];
  v62 = v106;
  sub_18AE7B10C(v106, v60, _s17ResolvedCompositeV3KeyVMa);
  *(v60 + v61) = 0x3FF0000000000000;
  v63 = sub_18AFABA58(v59);
  swift_setDeallocating();
  sub_18AE7BA80(v60, &qword_1EA99BC98);
  swift_deallocClassInstance();
  sub_18AFB6938(v62, _s17ResolvedCompositeV3KeyVMa);
  *a2 = v63;
  *(a2 + 8) = v56;
  *(a2 + 88) = v41;
  v64 = v44 >> 62;
  v65 = *(v40 + 9);
  if (!(v44 >> 62))
  {
    v71 = 0x100000000;
    if (!*(v44 + 20))
    {
      v71 = 0;
    }

    v68 = v71 | *(v44 + 16) | (v65 << 40);
    v66 = v108;
    v67 = v109;
    goto LABEL_37;
  }

  v66 = v108;
  v67 = v109;
  if (v64 == 3)
  {
    if (v44 == 0xC000000000000018 || v44 == 0xC000000000000020)
    {
      v68 = 0x200000000000;
      goto LABEL_37;
    }

    if (v44 == 0xC000000000000038)
    {
      v68 = 0x220000000000;
LABEL_37:
      *(a2 + 96) = v68;
      *(a2 + 100) = WORD2(v68);
      goto LABEL_38;
    }
  }

  *(a2 + 96) = 0;
  *(a2 + 100) = 7936;
  if (v64 == 1 && (*((v44 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) & 1) == 0)
  {
    v70 = *((v44 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v69 = *((v44 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_18AFB6938(v105, _s11EnvironmentVMa);
    *(a2 + 16) = v70;
    *(a2 + 24) = v69;
    goto LABEL_42;
  }

LABEL_38:
  sub_18AFCDCE4();
  v73 = v72;
  v75 = v74;
  sub_18AFB6938(v105, _s11EnvironmentVMa);
  *(a2 + 16) = v73;
  *(a2 + 24) = v75;
  if (v64 == 3)
  {
    if (v44 == 0xC000000000000018)
    {
      *&v106 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0x4050000000000000;
      v79 = 0x4050000000000000;
      goto LABEL_48;
    }

    if (v44 == 0xC000000000000020)
    {
      *&v106 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0x4064800000000000;
      v79 = 0x4064800000000000;
      goto LABEL_48;
    }
  }

LABEL_42:
  if (v65 == 6)
  {
    *&v106 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0x4020000000000000;
    v79 = 0x4020000000000000;
  }

  else if (v65 == 3)
  {
    *&v106 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0x4028000000000000;
    v79 = 0x4028000000000000;
  }

  else
  {
    v80 = &v67[v66[11]];
    v78 = *v80;
    *&v106 = *(v80 + 1);
    v79 = *(v80 + 2);
    v76 = v80[24];
    v77 = v80[25];
  }

LABEL_48:
  v81 = type metadata accessor for GlassMaterialProvider.Resolved(0);
  v83 = v81[12];
  v82 = v81[13];
  v84 = a2 + v81[15];
  v85 = a2 + v81[17];
  v86 = v106;
  *(a2 + 56) = v78;
  *(a2 + 64) = v86;
  *(a2 + 72) = v79;
  *(a2 + 80) = v76;
  *(a2 + 81) = v77;
  v87 = v109;
  v97(a2 + v81[11], &v109[v98], v101);
  v88 = v102;
  v89 = v107;
  *(a2 + v83) = *(v107 + *(v102 + 72));
  v106 = *(v89 + *(v88 + 76));
  *(a2 + v82) = v106;
  sub_18AFB6838(v89, a2 + v81[14], type metadata accessor for GlassMaterialProvider.Configuration);
  v90 = v87 + v108[7];
  v91 = *v90;
  v92 = *(v90 + 8);
  v93 = *(v90 + 16);

  sub_18AFB6938(v87, _s11EnvironmentVMa);
  sub_18AE920D8(&v111);
  *v84 = v91;
  *(v84 + 8) = v92;
  *(v84 + 16) = v93;
  result = sub_18AFA8DB8(SDWORD2(v112));
  *(a2 + v81[16]) = result;
  v95 = v103;
  *v85 = v104;
  *(v85 + 8) = v95;
  *(v85 + 16) = v100;
  return result;
}

uint64_t sub_18AE82D7C(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_18AE82DD8(uint64_t a1)
{
  v3 = sub_18AFCC804();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18AFCC824();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC454();
  v11 = sub_18AFCC814();
  v12 = *(v11 + 16);
  if (v12)
  {
    v30 = v10;
    v31 = v8;
    v32 = v1;
    v33 = v7;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v36 = v14;
    v15 = *(v13 + 64);
    v29 = v11;
    v16 = v11 + ((v15 + 32) & ~v15);
    v17 = *(v13 + 56);
    v34 = a1;
    v35 = v17;
    v18 = (v13 - 8);
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      v36(v6, v16, v3);
      v20 = sub_18AFCC7E4();
      sub_18AFCC7F4();
      v37 = v38;
      v21 = v39;
      (*v18)(v6, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_18AE977B4(0, *(v19 + 2) + 1, 1, v19);
      }

      v23 = *(v19 + 2);
      v22 = *(v19 + 3);
      if (v23 >= v22 >> 1)
      {
        v19 = sub_18AE977B4((v22 > 1), v23 + 1, 1, v19);
      }

      *(v19 + 2) = v23 + 1;
      v24 = &v19[32 * v23];
      *(v24 + 4) = v20;
      *(v24 + 40) = v37;
      *(v24 + 14) = v21;
      v16 += v35;
      --v12;
    }

    while (v12);

    v7 = v33;
    a1 = v34;
    v8 = v31;
    v10 = v30;
    if (*(v19 + 2))
    {
      goto LABEL_9;
    }

LABEL_11:
    v25 = type metadata accessor for GlassMaterialProvider.Configuration(0);
    MEMORY[0x1EEE9AC00](v25);
    *(&v29 - 2) = a1;
    v27 = sub_18AE7E670(sub_18AE91FAC, (&v29 - 4), v26);
    (*(v8 + 8))(v10, v7);

    return v27;
  }

  v19 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_11;
  }

LABEL_9:
  (*(v8 + 8))(v10, v7);
  return v19;
}

uint64_t sub_18AE83120@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a1;
  v33 = type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0);
  MEMORY[0x1EEE9AC00](v33);
  v34 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = sub_18AFCBB34();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 40);
  v35 = v2;
  sub_18AE83A40(v2 + v18, v10, &qword_1EA99B5F0);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) != 1)
  {
    v26 = *(v12 + 32);
    v26(v17, v10, v11);
    v26(a2, v17, v11);
LABEL_5:
    v25 = 0;
    return (*(v12 + 56))(a2, v25, 1, v11);
  }

  sub_18AE7BA80(v10, &qword_1EA99B5F0);
  v20 = type metadata accessor for GlassMaterialProvider.State();
  v21 = v36;
  v22 = v36 + *(v20 + 24);
  v23 = _s11EnvironmentVMa();
  v24 = (v22 + *(v23 + 40));
  if ((v24[1] & 1) == 0)
  {
    v28 = v23;
    v29 = *v24;
    sub_18AE83A40(v21, v8, &qword_1EA99B5F0);
    if (v19(v8, 1, v11) == 1)
    {
      sub_18AE7BA80(v8, &qword_1EA99B5F0);
      v25 = 1;
      return (*(v12 + 56))(a2, v25, 1, v11);
    }

    v30 = *(v12 + 32);
    v30(v15, v8, v11);
    v31 = *(v28 + 20);
    v32 = v34;
    (*(v12 + 16))(v34 + *(v33 + 20), v22 + v31, v11);
    *v32 = v29;
    sub_18AF48428(&v38);
    v37 = v38;
    GlassMaterialProvider.HysteresisRange.modifyColorScheme(_:context:)(v15, v32);
    sub_18AFB6938(v32, type metadata accessor for GlassMaterialProvider.HysteresisRange.Context);
    v30(a2, v15, v11);
    goto LABEL_5;
  }

  v25 = 1;
  return (*(v12 + 56))(a2, v25, 1, v11);
}

unint64_t sub_18AE834E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = _s13ConfigurationV3MixVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = _s11EnvironmentVMa();
  v10 = MEMORY[0x1EEE9AC00](v51);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  sub_18AFA9F00(&v54);
  v15 = v54;
  v16 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v17 = *(v3 + 9);
  v52 = *(v3 + *(v16 + 44));
  v53 = v17;
  if ((v15 & 0x20) == 0)
  {
    v18 = *v3;
    v19 = *v3 >> 62;
    v49 = a1;
    if (v19 <= 1)
    {
      if (!v19)
      {
        v20 = *(v18 + 16);
        v21 = *(v18 + 20);
        v22 = *(v18 + 24);
        v23 = *(v18 + 28);
        if (v21)
        {
          v24 = 0x100000000;
        }

        else
        {
          v24 = 0;
        }

        v50 = v24 | v20;
        if (v23)
        {
          v25 = 0x100000000;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25 | v22;
        goto LABEL_26;
      }

      v26 = 0xC000000000;
      v34 = 6;
      goto LABEL_25;
    }

    if (v19 == 2)
    {
      v31 = swift_projectBox();
      sub_18AE7B03C(v31, v9, _s13ConfigurationV3MixVMa);
      sub_18AFAB3B0(v9, a1);
      v50 = v32;
      v26 = v33;
      sub_18AFAC05C(v9, _s13ConfigurationV3MixVMa);
LABEL_26:
      v35 = a2;
      v48 = sub_18AE83CAC(v3);
      v36 = *(v3 + 9);
      v37 = *(v3 + 8);
      sub_18AE7B03C(v49, v12, _s11EnvironmentVMa);
      if (!v37)
      {
        v37 = v12[*(v51 + 84)];
      }

      sub_18AFAC05C(v12, _s11EnvironmentVMa);
      if (v37 == 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2 * (v37 == 2);
      }

      v29 = *(v3 + 48);
      v38 = *(v3 + *(v16 + 48));
      v39 = sub_18AE83B80(v3);
      if (v38 > 1)
      {
        if (v38 == 2)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }
      }

      else if (v38)
      {
        v30 = 0;
      }

      else
      {
        v30 = 2 * (v15 & 1);
      }

      a2 = v35;
      v54 = v15;
      v40 = v50;
      v43 = sub_18AF58948(v50, v26 & 0xFFFFFFFFFFLL, a2, &v54, v30);
      result = (v43 | v39) & ~v48;
      v42 = v53;
      goto LABEL_43;
    }

    v50 = 0;
    v34 = __ROR8__(v18 + 0x4000000000000000, 3);
    v26 = 0xC000000000;
    switch(v34)
    {
      case 1:
        v34 = 3;
        goto LABEL_25;
      case 2:
        v34 = 9;
        goto LABEL_25;
      case 3:
        v34 = 4;
        goto LABEL_25;
      case 4:
      case 7:
        goto LABEL_25;
      case 5:
      case 6:
        v34 = 14;
        goto LABEL_25;
      case 8:
        v34 = 2;
        goto LABEL_25;
      case 9:
        v34 = 16;
        goto LABEL_25;
      case 10:
      case 13:
        goto LABEL_73;
      case 11:
        goto LABEL_26;
      case 12:
        v34 = 8;
        goto LABEL_25;
      case 14:
        v50 = 0;
        v26 = 0x4000000000;
        goto LABEL_26;
      case 15:
        v26 = 0x4000000000;
        v34 = 1;
        goto LABEL_25;
      case 16:
        v34 = 10;
        goto LABEL_25;
      case 17:
        v34 = 11;
        goto LABEL_25;
      case 18:
        v34 = 12;
        goto LABEL_25;
      case 19:
        v34 = 13;
        goto LABEL_25;
      case 20:
        v34 = 15;
        goto LABEL_25;
      case 21:
        goto LABEL_74;
      case 22:
        goto LABEL_72;
      default:
        if ((v15 & 0x40) != 0 && !v53)
        {
          goto LABEL_56;
        }

        if (v53 > 21)
        {
          if (v53 != 22)
          {
            if (v53 == 25)
            {
LABEL_72:
              v34 = 20;
              goto LABEL_25;
            }

            goto LABEL_73;
          }

LABEL_74:
          v34 = 19;
        }

        else
        {
          if (v53 != 9)
          {
            if (v53 == 10)
            {
LABEL_56:
              v34 = 17;
              goto LABEL_25;
            }

LABEL_73:
            v34 = 1;
            goto LABEL_25;
          }

          v34 = 18;
        }

LABEL_25:
        v50 = v34;
        goto LABEL_26;
    }
  }

  v27 = *(v3 + 8);
  sub_18AE7B03C(a1, v14, _s11EnvironmentVMa);
  if (!v27)
  {
    v27 = v14[*(v51 + 84)];
  }

  sub_18AFAC05C(v14, _s11EnvironmentVMa);
  if (v27 == 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = 2 * (v27 == 2);
  }

  v29 = *(v3 + 48);
  if (*(v3 + *(v16 + 48)) > 1u)
  {
    if (*(v3 + *(v16 + 48)) == 2)
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }
  }

  else if (*(v3 + *(v16 + 48)))
  {
    v30 = 0;
  }

  else
  {
    v30 = 2 * (v15 & 1);
  }

  v54 = v15;
  v40 = 5;
  v26 = 0xC000000000;
  result = sub_18AF58948(5, 0xC000000000uLL, a2, &v54, v30);
  v42 = v53;
  v36 = v53;
LABEL_43:
  *a3 = v40;
  v44 = (v42 - 1) < 3;
  *(a3 + 8) = v26;
  v45 = v52;
  *(a3 + 12) = BYTE4(v26);
  if (v45 == 3)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  *(a3 + 13) = v36;
  *(a3 + 14) = v28;
  if ((v44 & (v15 >> 6)) != 0)
  {
    v47 = 2;
  }

  else
  {
    v47 = v46;
  }

  *(a3 + 16) = v15;
  *(a3 + 24) = a2;
  *(a3 + 32) = v29;
  *(a3 + 33) = v47;
  *(a3 + 34) = v30;
  *(a3 + 40) = result;
  return result;
}

uint64_t sub_18AE83A40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE83AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2045;
    if (a3 >= 0x7FD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1FF;
      *result = v3 << 60;
      *(result + 8) = 0;
      *(result + 12) = ((v3 - (a2 << 9)) >> 3) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_18AE83B14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FD && *(a1 + 48))
  {
    return (*a1 + 2045);
  }

  v3 = ((((*(a1 + 8) | (*(a1 + 12) << 32)) >> 29) >> 9) | (4 * (((*(a1 + 8) | (*(a1 + 12) << 32)) >> 29) & 0x1F0 | (*a1 >> 60)))) ^ 0x7FF;
  if (v3 >= 0x7FC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18AE83B80(uint64_t a1)
{
  v2 = _s13ConfigurationV3MixVMa(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1 >> 62;
  if (v6 < 2)
  {
    return 0;
  }

  if (v6 == 2)
  {
    v7 = v3;
    v8 = swift_projectBox();
    sub_18AF5A08C(v8, v5, _s13ConfigurationV3MixVMa);
    v9 = sub_18AE83B80(v5);
    v10 = sub_18AE83B80(&v5[*(v7 + 20)]);
    sub_18AF5A0F4(v5, _s13ConfigurationV3MixVMa);
    return v10 | v9;
  }

  v12 = *(a1 + 9);
  v13 = __ROR8__(*a1 + 0x4000000000000000, 3);
  if ((v13 - 3) < 0x14 || v13 == 0)
  {
    return 0;
  }

  if (v13 != 1)
  {
    return 1;
  }

  if (v12 == 26 || v12 == 5)
  {
    return 64;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AE83CAC(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 40);
  v6 = 80;
  if ((v5 & 0x1000) == 0)
  {
    v6 = 64;
  }

  if ((v5 & 0x2000) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = (*(a1 + 40) & 0x1000uLL) >> 8;
  }

  if (*a1 >> 62 != 3)
  {
    goto LABEL_35;
  }

  v8 = __ROR8__(*a1 + 0x4000000000000000, 3);
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v12 = *(a1 + 9);
        if (v12 == 21 || v12 == 8)
        {
          goto LABEL_20;
        }
      }

LABEL_35:
      if (qword_1ED56A8C0 != -1)
      {
        swift_once();
      }

      v15 = sub_18AFA46B0();
      v11 = v7 | 0x10;
      if ((v15 & 1) == 0)
      {
        v11 = v7;
      }

      goto LABEL_39;
    }

    v14 = *(a1 + 9);
    if ((v14 - 27) < 3)
    {
      v11 = 80;
      goto LABEL_39;
    }

    if (v14 != 23)
    {
      if (v14 != 24)
      {
        goto LABEL_35;
      }

      v7 += 1098272;
    }

    v11 = v7 | 0x40;
    goto LABEL_39;
  }

  if (v8 == 2)
  {
    if (qword_1ED56A8C0 != -1)
    {
      swift_once();
    }

    v13 = sub_18AFA461C();
    goto LABEL_26;
  }

  if (v8 != 4)
  {
    if (v8 == 3)
    {
      v9 = v7 | 0x600;
      if (qword_1ED56A8C0 != -1)
      {
        swift_once();
      }

      v10 = sub_18AFA4588();
      v11 = 1616;
      if (v10)
      {
        v11 = v9;
      }

      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_20:
  if (qword_1ED56A8C0 != -1)
  {
    swift_once();
  }

  v13 = sub_18AFA4588();
LABEL_26:
  v11 = 80;
  if (v13)
  {
    v11 = v7;
  }

LABEL_39:
  if ((v5 & 0x10) != 0)
  {
    v11 |= 0x2001uLL;
  }

  if ((~v11 & 0xE245F) != 0 && (v5 & 4) != 0)
  {
    v11 |= 0xE245FuLL;
  }

  if ((~v11 & 0x10C320) != 0 && (v5 & 8) != 0)
  {
    v11 |= 0x10C320uLL;
  }

  v18 = v11 | (2 * v5) & 0x100000;
  v19 = (v11 >> 19) & 1;
  if ((v5 & 0x40000) == 0)
  {
    LODWORD(v19) = 1;
  }

  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 | 0x80000;
  }

  sub_18AF5A08C(a1, v4, type metadata accessor for GlassMaterialProvider.Configuration);
  v21 = v4[*(v2 + 48)];
  v22 = *(v4 + 5);
  sub_18AF5A0F4(v4, type metadata accessor for GlassMaterialProvider.Configuration);
  if ((v21 - 2) >= 2)
  {
    if (v21)
    {
      if ((v5 & 0x10000) == 0)
      {
        return v20;
      }
    }

    else if (v5 & 0x10000) == 0 || (v22)
    {
      return v20;
    }

    return v20 | 0x100;
  }

  return v20;
}

uint64_t sub_18AE83FF0(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 38) & 3) == 2)
  {
  }

  return result;
}

unint64_t sub_18AE84004()
{
  result = qword_1ED56AD68;
  if (!qword_1ED56AD68)
  {
    sub_18AFCBB34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56AD68);
  }

  return result;
}

uint64_t sub_18AE8405C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v541 = a1;
  v532 = a2;
  v3 = sub_18AFCD8B4();
  v513 = *(v3 - 8);
  v514 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v512 = &v469 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v511 = &v469 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B718);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v500 = &v469 - v8;
  v516 = sub_18AFCDAC4();
  v524 = *(v516 - 8);
  MEMORY[0x1EEE9AC00](v516);
  v501 = &v469 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v515 = &v469 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B720);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v533 = &v469 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v526 = (&v469 - v15);
  v536 = _s14ResolvedRecipeVMa();
  MEMORY[0x1EEE9AC00](v536);
  v507 = &v469 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v525 = (&v469 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v534 = &v469 - v20;
  v21 = sub_18AFCBB34();
  v529 = *(v21 - 8);
  v530 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v539 = &v469 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v548 = sub_18AFCD9D4();
  v547 = *(v548 - 8);
  MEMORY[0x1EEE9AC00](v548);
  v504 = &v469 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v509 = &v469 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v469 - v27;
  v29 = sub_18AFCD774();
  v554 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v522 = &v469 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v520 = &v469 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v519 = &v469 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v505 = &v469 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v518 = &v469 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v488 = &v469 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v487 = &v469 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v473 = &v469 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v491 = &v469 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v510 = &v469 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v523 = &v469 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v486 = &v469 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v499 = &v469 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v485 = &v469 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v498 = &v469 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v497 = &v469 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v496 = &v469 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v483 = &v469 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v472 = &v469 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v490 = &v469 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v481 = &v469 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v469 = &v469 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v479 = &v469 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v494 = &v469 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v492 = &v469 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v535 = (&v469 - v80);
  MEMORY[0x1EEE9AC00](v81);
  v495 = &v469 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v480 = &v469 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v517 = &v469 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v506 = &v469 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v538 = &v469 - v90;
  v544 = sub_18AFCCCF4();
  v551 = *(v544 - 8);
  MEMORY[0x1EEE9AC00](v544);
  v92 = &v469 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_18AFCD704();
  v94 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v471 = (&v469 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v96);
  v98 = (&v469 - v97);
  v99 = sub_18AFCDA04();
  v527 = *(v99 - 8);
  v528 = v99;
  MEMORY[0x1EEE9AC00](v99);
  v502 = &v469 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v101);
  v503 = &v469 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v489 = &v469 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v508 = &v469 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v482 = &v469 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v470 = &v469 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v478 = &v469 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v493 = &v469 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v537 = &v469 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v469 - v118;
  v120 = sub_18AE8C6D8(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v612 = v120;
  v543 = type metadata accessor for GlassMaterialProvider.Resolved(0);
  v121 = *(v2 + v543[12]);
  v550 = v2;
  v540 = v28;
  v122 = v554;
  v549 = v29;
  v552 = v93;
  v545 = v94;
  v546 = v98;
  v542 = v92;
  v521 = v121;
  if (v121)
  {
    (*(*v121 + 96))(&v619);
    sub_18AF5A1A0(&v619, &v584);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
    v123 = *(v122 + 72);
    v124 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v477 = swift_allocObject();
    *(v477 + 16) = xmmword_18AFCEB10;
    v484 = v124;
    sub_18AFCD804();
    *v98 = 0;
    v125 = *MEMORY[0x1E6981BB8];
    v126 = v93;
    v553 = v120;
    v127 = *(v94 + 104);
    v128 = v125;
    v127(v98);
    v476 = v127;
    sub_18AFCD784();
    (*(v551 + 104))(v542, *MEMORY[0x1E69814D8], v544);
    sub_18AFCCDE4();
    sub_18AFCD864();
    *v98 = 22;
    (v127)(v98, v128, v126);
    v531 = v123;
    sub_18AFCD784();
    v129 = v547;
    v130 = v540;
    v131 = v548;
    (*(v547 + 104))(v540, *MEMORY[0x1E6981C40], v548);
    sub_18AFCD874();

    (*(v129 + 8))(v130, v131);
    *v98 = 0;
    v476(v98, v128, v126);
    v120 = v553;
    v132 = v538;
    sub_18AFCD784();
    v134 = v120[2];
    v133 = v120[3];
    v135 = MEMORY[0x1E69814D8];
    if (v134 >= v133 >> 1)
    {
      v120 = sub_18AE8C6D8(v133 > 1, v134 + 1, 1, v120);
    }

    __swift_destroy_boxed_opaque_existential_1(&v584);
    v120[2] = v134 + 1;
    v29 = v549;
    (*(v554 + 32))(v120 + v484 + v134 * v531, v132, v549);
    v612 = v120;
    v136 = v550;
  }

  else
  {
    v136 = v2;
    v135 = MEMORY[0x1E69814D8];
  }

  v137 = *(v136 + v543[13]);
  v531 = v119;
  v538 = v137;
  if (v137)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
    v138 = *(v554 + 72);
    v139 = (*(v554 + 80) + 32) & ~*(v554 + 80);
    v140 = swift_allocObject();
    v553 = v120;
    *(v140 + 16) = xmmword_18AFCEB10;
    v477 = v139;
    v475 = v140 + v139;
    (*(*v538 + 96))(&v584);

    sub_18AFCD804();
    __swift_destroy_boxed_opaque_existential_1(&v584);
    v141 = v546;
    *v546 = 0;
    v142 = *MEMORY[0x1E6981BB8];
    v476 = *(v545 + 104);
    v474 = v142;
    v476(v141, v142, v552);
    sub_18AFCD784();
    (*(v551 + 104))(v542, *v135, v544);
    sub_18AFCCDE4();
    sub_18AFCD884();
    *v141 = 22;
    v143 = v142;
    v144 = v552;
    v145 = v476;
    v476(v141, v143, v552);
    v484 = v138;
    sub_18AFCD784();
    v146 = v547;
    v147 = v540;
    v148 = v548;
    (*(v547 + 104))(v540, *MEMORY[0x1E6981C40], v548);
    sub_18AFCD874();
    v120 = v553;

    (*(v146 + 8))(v147, v148);
    *v141 = 0;
    v145(v141, v474, v144);
    v149 = v506;
    sub_18AFCD784();
    v151 = v120[2];
    v150 = v120[3];
    if (v151 >= v150 >> 1)
    {
      v120 = sub_18AE8C6D8(v150 > 1, v151 + 1, 1, v120);
    }

    v120[2] = v151 + 1;
    v29 = v549;
    (*(v554 + 32))(v120 + v477 + v151 * v484, v149, v549);
    v612 = v120;
    v136 = v550;
  }

  v152 = v544;
  v553 = v120;
  v153 = v525;
  sub_18AFAFC30(v136[7], v136[8], v136[9], *(v136 + 80) | (*(v136 + 81) << 8), *(v136 + v543[15]), *(v136 + v543[15] + 8), *(v136 + v543[15] + 16), v525, 14, *v136);
  v154 = v536;
  v155 = *(v536 + 32);
  v156 = v153[v155];
  v157 = v533;
  if (v153[v155])
  {
    v158 = v507;
    sub_18AF5A08C(v153, v507, _s14ResolvedRecipeVMa);
    if (v156 == 2)
    {
      sub_18AFB5644();
    }

    sub_18AFB5AFC();
    sub_18AF5A0F4(v153, _s14ResolvedRecipeVMa);
  }

  else
  {
    v158 = v153;
  }

  v159 = v158;
  v160 = v534;
  sub_18AF56E9C(v159, v534);
  memcpy(v648, v160, sizeof(v648));
  v161 = v160[129];
  v162 = v160[130];
  LODWORD(v484) = *(v160 + *(v154 + 36));
  (*(v529 + 32))(v539, v160 + *(v154 + 28), v530);
  v536 = v162;
  v163 = sub_18AF58CA8(v541, v162);
  v164 = v163;
  v165 = (v136 + v543[17]);
  v166 = v165[1];
  v506 = *v165;
  v507 = v166;
  v167 = *(v165 + 16);
  v543 = v161;
  if ((v161 & 0x80000) != 0)
  {
    v161 = v29;
    v168 = v157;
    v169 = v163;
    sub_18AF55E5C(v648, v517);
    v171 = v553[2];
    v170 = v553[3];
    v172 = v152;
    if (v171 >= v170 >> 1)
    {
      v553 = sub_18AE8C6D8(v170 > 1, v171 + 1, 1, v553);
    }

    v173 = v553;
    v553[2] = v171 + 1;
    v174 = v161;
    (*(v554 + 32))(v173 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v171, v517, v161);
    v612 = v173;
    LODWORD(v161) = v543;
    v164 = v169;
    v157 = v168;
    v29 = v174;
    v152 = v172;
  }

  v175 = *MEMORY[0x1E69814D8];
  v534 = &v648[308];
  v176 = *(v551 + 104);
  LODWORD(v517) = v175;
  v551 += 104;
  v525 = v176;
  (v176)(v542);
  sub_18AFCCDE4();
  sub_18AFCD864();
  LODWORD(v538) = v164;
  if (v167)
  {
    if ((v164 & ((v161 & 0x5F) != 0)) == 1)
    {
      sub_18AF4FCA0(v648, v161, v536, v531);
      v177 = v546;
      *v546 = 0;
      (*(v545 + 104))(v177, *MEMORY[0x1E6981BB8], v552);
      sub_18AFCD784();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B728);
      v178 = swift_allocObject();
      *(v178 + 16) = xmmword_18AFCEB10;
      v179 = sub_18AFCD724();
      *(v178 + 32) = v179;
      v180 = sub_18AFCD734();
      *(v178 + 36) = v180;
      v181 = sub_18AFCD744();
      sub_18AFCD744();
      if (sub_18AFCD744() != v179)
      {
        v181 = sub_18AFCD744();
      }

      sub_18AFCD744();
      if (sub_18AFCD744() != v180)
      {
        v181 = sub_18AFCD744();
      }

      v182 = sub_18AFCD764();
      v184 = v183;
      sub_18AFCD744();
      if (sub_18AFCD744() != v181)
      {
        *v184 = sub_18AFCD744();
      }

      v182(&v584, 0);
      (*(v554 + 16))(v492, v535, v29);
      v186 = v553[2];
      v185 = v553[3];
      v187 = v157;
      if (v186 >= v185 >> 1)
      {
        v553 = sub_18AE8C6D8(v185 > 1, v186 + 1, 1, v553);
      }

      LODWORD(v161) = v543;
      v188 = v544;
      v189 = v554;
      (*(v554 + 8))(v535, v29);
      v190 = v553;
      v553[2] = v186 + 1;
      (*(v189 + 32))(v190 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v186, v492, v29);
      v612 = v190;
      v157 = v187;
      v152 = v188;
    }

    if ((v161 & 0x2000) == 0)
    {
      v191 = v538;
      if (v538)
      {
        v192 = sub_18AE8C6D8(0, 10, 0, MEMORY[0x1E69E7CC0]);
        v193 = v553;
        goto LABEL_113;
      }

      sub_18AF5031C(v648, v470);
      v224 = v471;
      *v471 = 1;
      (*(v545 + 104))(v224, *MEMORY[0x1E6981BB8], v552);
      *&v587[16] = *&v648[88];
      *&v587[32] = *&v648[104];
      *&v587[48] = *&v648[120];
      *&v587[64] = *&v648[136];
      v584 = *&v648[24];
      v585 = *&v648[40];
      v586 = *&v648[56];
      *v587 = *&v648[72];
      *&v587[89] = *&v648[161];
      *&v587[84] = *&v648[156];
      *&v587[80] = *&v648[152];
      sub_18AF4FB80(&v584);
      sub_18AFCD784();
      v193 = v553;
      v226 = v553[2];
      v225 = v553[3];
      if (v226 >= v225 >> 1)
      {
        v193 = sub_18AE8C6D8(v225 > 1, v226 + 1, 1, v553);
      }

      *(v193 + 16) = v226 + 1;
      (*(v554 + 32))(v193 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v226, v479, v29);
      v612 = v193;
      v192 = sub_18AE8C6D8(0, 10, 0, MEMORY[0x1E69E7CC0]);
      if ((v161 & 2) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_44;
    }

    (v525)(v542, v517, v152);
    sub_18AFCCDE4();
    *&v691[64] = *&v648[144];
    *(v681.i64 + 5) = *&v648[161];
    v681.i64[0] = *&v648[156];
    v686 = *&v648[40];
    v687 = *&v648[56];
    *&v691[32] = *&v648[112];
    *&v691[48] = *&v648[128];
    *v691 = *&v648[80];
    *&v691[16] = *&v648[96];
    v585 = *&v648[40];
    v586 = *&v648[56];
    *&v587[56] = *&v648[128];
    v216 = *&v648[24];
    v217 = *&v648[32];
    *&v587[40] = *&v648[112];
    v218 = *&v648[72];
    *&v587[24] = *&v648[96];
    v219 = *&v648[152];
    v584 = *&v648[24];
    *v587 = *&v648[72];
    *&v587[72] = *&v648[144];
    *&v587[8] = *&v648[80];
    *&v587[80] = *&v648[152];
    *&v587[89] = *&v648[161];
    *&v587[84] = *&v648[156];
    sub_18AF4FB80(&v584);
    sub_18AFCD884();
    v619.i64[0] = v216;
    v619.i64[1] = v217;
    v620 = v686;
    v621 = v687;
    *v622 = v218;
    *&v622[24] = *&v691[16];
    v623 = *&v691[32];
    *v624 = *&v691[48];
    *&v624[16] = *&v691[64];
    *&v622[8] = *v691;
    *&v624[24] = v219;
    *&v624[33] = *(v681.i64 + 5);
    *&v624[28] = v681.i64[0];
    sub_18AF4FB80(&v619);
    v220 = v546;
    *v546 = 0;
    (*(v545 + 104))(v220, *MEMORY[0x1E6981BB8], v552);
    sub_18AFCD784();
    v193 = v553;
    v222 = v553[2];
    v221 = v553[3];
    v191 = v538;
    if (v222 >= v221 >> 1)
    {
      v193 = sub_18AE8C6D8(v221 > 1, v222 + 1, 1, v553);
    }

    *(v193 + 16) = v222 + 1;
    (*(v554 + 32))(v193 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v222, v494, v29);
    v612 = v193;
    v192 = sub_18AE8C6D8(0, 10, 0, MEMORY[0x1E69E7CC0]);
    if ((v191 & 1) == 0)
    {
      if ((v161 & 2) == 0)
      {
LABEL_52:
        v239 = *v534;
        if ((v239 & 1) == 0 && *&v648[264] != 0.0 && *&v648[256] != 0.0)
        {
          goto LABEL_62;
        }

        v223.n128_u64[0] = *&v648[280];
        if (*&v648[280] == 0.0)
        {
          v240 = 1;
        }

        else
        {
          v240 = *v534;
        }

        if (*&v648[272] == 0.0)
        {
          v240 = 1;
        }

        if (((v239 | v240) & 1) == 0)
        {
          v223.n128_u32[0] = *&v648[304];
          if (*&v648[304] != 0.0)
          {
LABEL_62:
            sub_18AF51520(v648, v531);
            v241 = v546;
            *v546 = 0;
            (*(v545 + 104))(v241, *MEMORY[0x1E6981BB8], v552);
            sub_18AFCD784();
            v243 = v192[2];
            v242 = v192[3];
            if (v243 >= v242 >> 1)
            {
              v192 = sub_18AE8C6D8(v242 > 1, v243 + 1, 1, v192);
            }

            v192[2] = v243 + 1;
            (*(v554 + 32))(v192 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v243, v490, v29);
          }
        }

        if ((v161 & 4) != 0)
        {
          v535 = v192;
          (*(v527 + 16))(v482, v537, v528, v223);
          if (v648[385])
          {
            v244 = 0;
            v506 = 0;
            v507 = 0;
            v245 = 1;
            v584.i8[0] = 1;
            v619.i8[0] = 1;
            v691[0] = 1;
            v246 = 0.0;
            v247 = 1;
            LODWORD(v553) = 1;
            v248 = 0.0;
            v249 = 0.0;
          }

          else
          {
            LODWORD(v553) = v648[384];
            v506 = *&v648[368];
            v507 = *&v648[376];
            v247 = v648[364];
            v245 = v648[344];
            v244 = *&v648[340];
            v249 = *&v648[324];
            v248 = *&v648[320];
            v246 = *&v648[316];
          }

          *&v691[20] = 0x3F80000000000000;
          *&v691[44] = 0x3F80000000000000;
          *&v691[4] = 0uLL;
          *&v691[28] = 0uLL;
          memset(&v691[52], 0, 20);
          *v691 = 1065353216;
          v692 = 1065353216;
          sub_18AFBE6B4(1, v618, v246, v248, v249);
          if (v245)
          {
            v586 = v618[2];
            *v587 = v618[3];
            *&v587[16] = v618[4];
            v584 = v618[0];
            v585 = v618[1];
          }

          else
          {
            sub_18AE97674(&v584, v244);
          }

          LODWORD(v161) = v543;
          v281 = v472;
          v688 = v586;
          v689 = *v587;
          v690 = *&v587[16];
          v687 = v585;
          v686 = v584;
          if (v247)
          {
            v621 = v586;
            *v622 = *v587;
            *&v622[16] = *&v587[16];
            v620 = v585;
            v619 = v584;
          }

          else
          {
            sub_18AE8C178(&v619);
          }

          v29 = v549;
          v683 = v621;
          v684 = *v622;
          v685 = *&v622[16];
          v682 = v620;
          v681 = v619;
          v282 = v538;
          v192 = v535;
          if (v553)
          {
            v672 = v621;
            v673 = *v622;
            v674 = *&v622[16];
            v671 = v620;
            v670 = v619;
          }

          else
          {
            sub_18AFBEA34(&v670);
          }

          v678 = v672;
          v679 = v673;
          v680 = v674;
          v677 = v671;
          v676 = v670;
          v283 = swift_allocObject();
          LODWORD(v284) = 730643660;
          LODWORD(v285) = 953267991;
          sub_18AE8C368(v675, v284, v285, v286);
          v287 = v675[3];
          *(v283 + 48) = v675[2];
          *(v283 + 64) = v287;
          *(v283 + 80) = v675[4];
          v288 = v675[1];
          *(v283 + 16) = v675[0];
          *(v283 + 32) = v288;
          v289 = v546;
          *v546 = v283;
          (*(v545 + 104))(v289, *MEMORY[0x1E6981BA8], v552);
          sub_18AFCD784();
          v291 = v192[2];
          v290 = v192[3];
          if (v291 >= v290 >> 1)
          {
            v192 = sub_18AE8C6D8(v290 > 1, v291 + 1, 1, v192);
          }

          v192[2] = v291 + 1;
          (*(v554 + 32))(v192 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v291, v281, v29);
          v191 = v282;
          v157 = v533;
        }

        if ((v161 & 0x40) != 0)
        {
          sub_18AF52438(v648, v483);
          v293 = v192[2];
          v292 = v192[3];
          if (v293 >= v292 >> 1)
          {
            v192 = sub_18AE8C6D8(v292 > 1, v293 + 1, 1, v192);
          }

          v192[2] = v293 + 1;
          (*(v554 + 32))(v192 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v293, v483, v29);
        }

        goto LABEL_113;
      }

LABEL_44:
      if ((v536 & 0x10) != 0 && (v161 & 0x800000) != 0)
      {
        v227 = v29;
        v228 = v540;
        *v540 = 1048576000;
        v229 = v192;
        v230 = v547;
        v231 = v548;
        (*(v547 + 104))(v228, *MEMORY[0x1E6981C50], v548);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
        sub_18AFCD6C4();
        *(swift_allocObject() + 16) = xmmword_18AFD8390;
        sub_18AFCD654();
        sub_18AFCD874();

        v232 = v230;
        v192 = v229;
        (*(v232 + 8))(v228, v231);
        v233 = v546;
        *v546 = 0;
        (*(v545 + 104))(v233, *MEMORY[0x1E6981BB8], v552);
        v234 = v469;
        sub_18AFCD784();
        v236 = v229[2];
        v235 = v229[3];
        if (v236 >= v235 >> 1)
        {
          v192 = sub_18AE8C6D8(v235 > 1, v236 + 1, 1, v229);
        }

        v29 = v227;
        v192[2] = v236 + 1;
        (*(v554 + 32))(v192 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v236, v234, v227);
        LODWORD(v161) = v543;
        v157 = v533;
        v191 = v538;
      }

      sub_18AF50F40(v648, v481);
      v238 = v192[2];
      v237 = v192[3];
      if (v238 >= v237 >> 1)
      {
        v192 = sub_18AE8C6D8(v237 > 1, v238 + 1, 1, v192);
      }

      v192[2] = v238 + 1;
      (*(v554 + 32))(v192 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v238, v481, v29);
      goto LABEL_52;
    }
  }

  else
  {
    v194 = &unk_18AFDB000;
    if (v161)
    {
      (v525)(v542, v517, v152);
      sub_18AFCCDE4();
      LODWORD(v535) = v195;
      LODWORD(v494) = v196;
      v197 = *&v648[24];
      v198 = *&v648[32];
      v660 = *&v648[40];
      v661 = *&v648[56];
      v199 = *&v648[72];
      v200 = *&v648[80];
      v201 = *&v648[84];
      v202 = *&v648[88];
      v203 = *&v648[92];
      v204 = *&v648[100];
      v205 = v648[108];
      v555.i8[2] = v648[111];
      v555.i16[0] = *&v648[109];
      v206 = *&v648[112];
      v207 = *&v648[120];
      v208 = v648[128];
      BYTE2(v654[0]) = v648[131];
      LOWORD(v654[0]) = *&v648[129];
      v209 = *&v648[132];
      v210 = *&v648[140];
      v211 = v648[148];
      v617 = *&v648[165];
      v616 = *&v648[149];
      v584 = *&v648[24];
      v585 = *&v648[40];
      v586 = *&v648[56];
      *v587 = *&v648[72];
      *&v587[8] = *&v648[80];
      *&v587[12] = *&v648[84];
      *&v587[16] = *&v648[88];
      *&v587[20] = *&v648[92];
      *&v587[28] = *&v648[100];
      v587[36] = v648[108];
      v587[39] = v648[111];
      *&v587[37] = *&v648[109];
      *&v587[40] = *&v648[112];
      *&v587[48] = *&v648[120];
      v587[56] = v648[128];
      v587[59] = v648[131];
      *&v587[57] = *&v648[129];
      *&v587[60] = *&v648[132];
      *&v587[68] = *&v648[140];
      v587[76] = v648[148];
      *&v587[93] = *&v648[165];
      *&v587[77] = *&v648[149];
      sub_18AF4FB80(&v584);
      sub_18AFCD884();
      v619.i64[0] = v197;
      v619.i64[1] = v198;
      v620 = v660;
      v621 = v661;
      *v622 = v199;
      *&v622[8] = v200;
      *&v622[12] = v201;
      *&v622[16] = v202;
      v490 = v203;
      *&v622[20] = v203;
      v483 = v204;
      *&v622[28] = v204;
      v212 = v205;
      v622[36] = v205;
      *&v622[37] = v555.i16[0];
      v622[39] = v555.i8[2];
      *&v623 = v206;
      v213 = v208;
      v494 = v207;
      *(&v623 + 1) = v207;
      v624[0] = v208;
      *&v624[1] = LOWORD(v654[0]);
      v624[3] = BYTE2(v654[0]);
      v535 = v209;
      *&v624[4] = v209;
      v214 = v211;
      *&v624[12] = v210;
      v624[20] = v211;
      *&v624[21] = v616;
      *&v624[37] = v617;
      if (sub_18AF4FB80(&v619) == 1)
      {
        v492 = 0;
        v535 = 0;
        v494 = 0;
        v215 = 0;
        v691[0] = 1;
        v686.i8[0] = 1;
        v681.i8[0] = 1;
        v212 = 1;
        v213 = 1;
        v202 = 0.0;
        v214 = 1;
        v201 = 0.0;
        v200 = 0.0;
      }

      else
      {
        v492 = v210;
        v215 = HIDWORD(v483);
      }

      *&v691[4] = 0uLL;
      *&v691[20] = 0x3F80000000000000;
      *&v691[28] = 0uLL;
      *&v691[44] = 0x3F80000000000000;
      memset(&v691[52], 0, 20);
      *v691 = 1065353216;
      v692 = 1065353216;
      sub_18AFBE6B4(1, v613, v200, v201, v202);
      v250 = v553;
      v251 = v549;
      if (v212)
      {
        v675[2] = v613[2];
        v675[3] = v613[3];
        v675[4] = v613[4];
        v675[1] = v613[1];
        v675[0] = v613[0];
      }

      else
      {
        sub_18AE97674(v675, v215);
      }

      v688 = v675[2];
      v689 = v675[3];
      v690 = v675[4];
      v687 = v675[1];
      v686 = v675[0];
      if (v213)
      {
        v672 = v675[2];
        v673 = v675[3];
        v674 = v675[4];
        v671 = v675[1];
        v670 = v675[0];
      }

      else
      {
        sub_18AE8C178(&v670);
      }

      v252 = v554;
      v253 = v545;
      v254 = v552;
      v683 = v672;
      v684 = v673;
      v685 = v674;
      v682 = v671;
      v681 = v670;
      if (v214)
      {
        v667 = v672;
        v668 = v673;
        v669 = v674;
        v666 = v671;
        v665 = v670;
      }

      else
      {
        sub_18AFBEA34(&v665);
      }

      v678 = v667;
      v679 = v668;
      v680 = v669;
      v677 = v666;
      v676 = v665;
      v255 = swift_allocObject();
      LODWORD(v256) = 730643660;
      LODWORD(v257) = 953267991;
      sub_18AE8C368(v614, v256, v257, v258);
      v259 = v614[3];
      *(v255 + 48) = v614[2];
      *(v255 + 64) = v259;
      *(v255 + 80) = v614[4];
      v260 = v614[1];
      *(v255 + 16) = v614[0];
      *(v255 + 32) = v260;
      v261 = v546;
      *v546 = v255;
      (*(v253 + 104))(v261, *MEMORY[0x1E6981BA8], v254);
      v262 = v480;
      sub_18AFCD784();
      v264 = v250[2];
      v263 = v250[3];
      if (v264 >= v263 >> 1)
      {
        v250 = sub_18AE8C6D8(v263 > 1, v264 + 1, 1, v250);
      }

      v250[2] = v264 + 1;
      v265 = *(v252 + 32);
      v266 = (*(v252 + 80) + 32) & ~*(v252 + 80);
      v553 = v250;
      v265(v250 + v266 + *(v252 + 72) * v264, v262, v251);
      v194 = &unk_18AFDB000;
    }

    if (v648[385])
    {
      v267 = 0;
      v493 = 0;
      v494 = 0;
      v268 = 1;
      v584.i8[0] = 1;
      v619.i8[0] = 1;
      v675[0].i8[0] = 1;
      v269 = 0.0;
      v270 = 1;
      LODWORD(v535) = 1;
      v271 = 0.0;
      v272 = 0.0;
    }

    else
    {
      LODWORD(v535) = v648[384];
      v493 = *&v648[368];
      v494 = *&v648[376];
      v270 = v648[364];
      v268 = v648[344];
      v267 = *&v648[340];
      v272 = *&v648[324];
      v271 = *&v648[320];
      v269 = *&v648[316];
    }

    *(v675[1].i64 + 4) = 0x3F80000000000000;
    *(&v675[2].i64[1] + 4) = 0x3F80000000000000;
    *(&v675[0].i64[1] + 4) = 0;
    *(v675[0].i64 + 4) = 0;
    *(v675[2].i64 + 4) = 0;
    *(&v675[1].i64[1] + 4) = 0;
    *(&v675[3].i64[1] + 4) = 0;
    *(v675[3].i64 + 4) = 0;
    v675[0].i32[0] = 1065353216;
    v675[4].i32[1] = 0;
    v675[4].i64[1] = v194[413];
    sub_18AFBE6B4(1, v615, v269, v271, v272);
    if (v268)
    {
      v586 = v615[2];
      *v587 = v615[3];
      *&v587[16] = v615[4];
      v584 = v615[0];
      v585 = v615[1];
    }

    else
    {
      sub_18AE97674(&v584, v267);
    }

    LODWORD(v161) = v543;
    v274 = v495;
    v672 = v586;
    v673 = *v587;
    v674 = *&v587[16];
    v671 = v585;
    v670 = v584;
    if (v270)
    {
      v621 = v586;
      *v622 = *v587;
      *&v622[16] = *&v587[16];
      v620 = v585;
      v619 = v584;
    }

    else
    {
      sub_18AE8C178(&v619);
    }

    v29 = v549;
    v193 = v553;
    v667 = v621;
    v668 = *v622;
    v669 = *&v622[16];
    v666 = v620;
    v665 = v619;
    v275 = v538;
    if (v535)
    {
      v557 = v621;
      v558 = *v622;
      v559 = *&v622[16];
      v555 = v619;
      v556 = v620;
    }

    else
    {
      sub_18AFBEA34(&v555);
    }

    v662 = v557;
    v663 = v558;
    v664 = v559;
    HIDWORD(v277) = v555.i32[1];
    HIDWORD(v276) = v556.i32[1];
    v661 = v556;
    v660 = v555;
    LODWORD(v276) = 730643660;
    LODWORD(v277) = 953267991;
    sub_18AE8C368(&v616, v276, v277, v273);
    sub_18AFBE4C0();
    sub_18AFCD864();
    v278 = v546;
    *v546 = 0;
    (*(v545 + 104))(v278, *MEMORY[0x1E6981BB8], v552);
    sub_18AFCD784();
    v280 = *(v193 + 16);
    v279 = *(v193 + 24);
    if (v280 >= v279 >> 1)
    {
      v193 = sub_18AE8C6D8(v279 > 1, v280 + 1, 1, v193);
    }

    *(v193 + 16) = v280 + 1;
    (*(v554 + 32))(v193 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v280, v274, v29);
    v612 = v193;
    v192 = sub_18AE8C6D8(0, 10, 0, MEMORY[0x1E69E7CC0]);
    v191 = v275;
    v157 = v533;
  }

LABEL_113:
  if ((v161 & 0x20000) != 0)
  {
    v303 = v192;
    sub_18AF5A768(v648, v539, v536, v191 & 1, v526);
    v304 = v554;
    if ((*(v554 + 48))(v526, 1, v29) == 1)
    {
      sub_18AE7BA80(v526, &qword_1EA99B720);
      v192 = v303;
      v157 = v533;
      if ((v161 & 0x400) != 0)
      {
        goto LABEL_132;
      }
    }

    else
    {
      v315 = *(v304 + 32);
      v316 = v496;
      v315(v496, v526, v29);
      (*(v304 + 16))(v497, v316, v29);
      v318 = v303[2];
      v317 = v303[3];
      if (v318 >= v317 >> 1)
      {
        v303 = sub_18AE8C6D8(v317 > 1, v318 + 1, 1, v303);
      }

      v161 = v554 + 8;
      (*(v554 + 8))(v496, v29);
      v303[2] = v318 + 1;
      v319 = v303 + ((*(v161 + 72) + 32) & ~*(v161 + 72)) + *(v161 + 64) * v318;
      v192 = v303;
      v315(v319, v497, v29);
      LOWORD(v161) = v543;
      v157 = v533;
      v191 = v538;
      if ((v543 & 0x400) != 0)
      {
        goto LABEL_132;
      }
    }

LABEL_115:
    if ((v161 & 0x1000) == 0)
    {
      goto LABEL_116;
    }

LABEL_140:
    v329 = v191;
    (v525)(v542, v517, v544);
    sub_18AFCCDE4();
    sub_18AFCD864();
    v330 = v546;
    *v546 = 0;
    (*(v545 + 104))(v330, *MEMORY[0x1E6981BB8], v552);
    v331 = v499;
    sub_18AFCD784();
    v333 = v192[2];
    v332 = v192[3];
    if (v333 >= v332 >> 1)
    {
      v192 = sub_18AE8C6D8(v332 > 1, v333 + 1, 1, v192);
    }

    v294 = v524;
    v192[2] = v333 + 1;
    (*(v554 + 32))(v192 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v333, v331, v29);
    v191 = v329;
    if ((v329 & 1) == 0)
    {
      goto LABEL_117;
    }

LABEL_143:
    v314 = 0;
    goto LABEL_144;
  }

  if ((v161 & 0x400) == 0)
  {
    goto LABEL_115;
  }

LABEL_132:
  v320 = v191;
  v321 = v192;
  sub_18AF792A8(*(v550[11] + 16) == 0, v320 & 1, v157);
  v322 = v554;
  if ((*(v554 + 48))(v157, 1, v29) == 1)
  {
    sub_18AE7BA80(v157, &qword_1EA99B720);
    v192 = v321;
    v191 = v320;
    if ((v161 & 0x1000) != 0)
    {
      goto LABEL_140;
    }
  }

  else
  {
    v323 = v498;
    v553 = *(v322 + 32);
    (v553)(v498, v157, v29);
    v324 = v485;
    (*(v322 + 16))(v485, v323, v29);
    v326 = v321[2];
    v325 = v321[3];
    if (v326 >= v325 >> 1)
    {
      v321 = sub_18AE8C6D8(v325 > 1, v326 + 1, 1, v321);
    }

    v327 = v554 + 8;
    (*(v554 + 8))(v498, v29);
    v321[2] = v326 + 1;
    v328 = v321 + ((*(v327 + 72) + 32) & ~*(v327 + 72)) + *(v327 + 64) * v326;
    v192 = v321;
    (v553)(v328, v324, v29);
    v191 = v538;
    if ((v543 & 0x1000) != 0)
    {
      goto LABEL_140;
    }
  }

LABEL_116:
  v294 = v524;
  if (v191)
  {
    goto LABEL_143;
  }

LABEL_117:
  v535 = v192;
  v295 = v500;
  sub_18AFCDA84();
  v296 = v294[6];
  v297 = v516;
  v298 = v296(v295, 1, v516);
  v299 = MEMORY[0x1E6981C70];
  if (v298 == 1)
  {
    v300 = *MEMORY[0x1E6981C70];
    v301 = v294[13];
    v301(v515, v300, v297);
    if (v296(v295, 1, v297) != 1)
    {
      sub_18AE7BA80(v295, &qword_1EA99B718);
    }

    v302 = v515;
    v297 = v516;
    v294 = v524;
  }

  else
  {
    v302 = v515;
    (v294[4])(v515, v295, v297);
    v300 = *v299;
    v301 = v294[13];
  }

  v29 = v549;
  v305 = v501;
  v301(v501, v300, v297);
  v306 = sub_18AFCDAB4();
  v307 = v294[1];
  v307(v305, v297);
  v307(v302, v297);
  if (v306)
  {
    (*(v527 + 16))(v531, v537, v528);
    v308 = v546;
    *v546 = 22;
    (*(v545 + 104))(v308, *MEMORY[0x1E6981BB8], v552);
    v309 = v486;
    sub_18AFCD784();
    v311 = v535[2];
    v310 = v535[3];
    if (v311 >= v310 >> 1)
    {
      v535 = sub_18AE8C6D8(v310 > 1, v311 + 1, 1, v535);
    }

    v312 = v538;
    v313 = v535;
    v535[2] = v311 + 1;
    v192 = v313;
    (*(v554 + 32))(v313 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v311, v309, v29);
    v314 = 1;
    v191 = v312;
  }

  else
  {
    v314 = 0;
    v191 = v538;
    v192 = v535;
  }

LABEL_144:
  v334 = v192[2];
  v535 = v192;
  if (!v334)
  {
    goto LABEL_153;
  }

  v335 = v191 | ~v314;
  v336 = v547;
  v337 = *(v547 + 104);
  v338 = (v335 & 1) == 0;
  v339 = MEMORY[0x1E6981C40];
  if (!v338)
  {
    v339 = MEMORY[0x1E6981C48];
  }

  v340 = *v339;
  v341 = v509;
  v342 = v548;
  v526 = *(v547 + 104);
  v337(v509, v340, v548);
  sub_18AFCD874();
  v524 = *(v336 + 8);
  (v524)(v341, v342);
  v343 = v546;
  *v546 = 0;
  v344 = *(v545 + 104);
  LODWORD(v553) = *MEMORY[0x1E6981BB8];
  v533 = v344;
  (v344)(v343);
  sub_18AFCD784();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v193 = sub_18AE8C6D8(0, *(v193 + 16) + 1, 1, v193);
  }

  v345 = v554;
  v347 = *(v193 + 16);
  v346 = *(v193 + 24);
  if (v347 >= v346 >> 1)
  {
    v193 = sub_18AE8C6D8(v346 > 1, v347 + 1, 1, v193);
  }

  *(v193 + 16) = v347 + 1;
  v350 = *(v345 + 32);
  v349 = v345 + 32;
  v348 = v350;
  v351 = (*(v349 + 48) + 32) & ~*(v349 + 48);
  v517 = *(v349 + 40);
  (v350)(v193 + v351 + v517 * v347, v523, v549);
  v612 = v193;
  if ((v538 | v314))
  {
    v29 = v549;
LABEL_153:
    LODWORD(v352) = v543;
    v353 = v544;
    if ((v543 & 0x100) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_171;
  }

  v523 = v351;
  v538 = v348;
  v363 = v540;
  v364 = v548;
  (v526)(v540, *MEMORY[0x1E6981C48], v548);
  v365 = MEMORY[0x1E69E7CC0];
  v366 = v489;
  sub_18AFCD874();

  (v524)(v363, v364);
  sub_18AFCD854();
  (*(v527 + 8))(v366, v528);
  v367 = v546;
  *v546 = 0;
  (v533)(v367, v553, v552);
  sub_18AFCD784();
  v368 = sub_18AE8C6D8(0, 1, 1, v365);
  v370 = v368[2];
  v369 = v368[3];
  v193 = v368;
  if (v370 >= v369 >> 1)
  {
    v193 = sub_18AE8C6D8(v369 > 1, v370 + 1, 1, v368);
  }

  v29 = v549;
  LODWORD(v352) = v543;
  v353 = v544;
  *(v193 + 16) = v370 + 1;
  (v538)(&v523[v193 + v370 * v517], v510, v29);
  v612 = v193;
  if ((v352 & 0x100) == 0)
  {
LABEL_154:
    if ((v352 & 0x100000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_199;
  }

LABEL_171:
  if ((v352 & 0x20) != 0)
  {
    if (v484 == 2 || ((v534[564] & 1) == 0 ? (v381 = *&v648[864], v382 = *&v648[868], v379 = *&v648[856], v380 = *&v648[860], v383 = *&v648[848], v377 = *&v648[840], v378 = *&v648[844], v375 = *&v648[832], v376 = *&v648[836], v373 = *&v648[824], v374 = *&v648[828]) : (v373 = 0.0, v374 = 0.0, v375 = 0.0, v376 = 0.0, v377 = 0.0, v378 = 0.0, v379 = 0, v380 = 0, v381 = 0, v382 = 0, v383 = 0), v654[0] = v373, v654[1] = v374, v654[2] = v375, v654[3] = v376, v654[4] = v377, v654[5] = v378, v655 = v383, v656 = v379, v657 = v380, v658 = v381, v659 = v382, v555 = 0u, v556 = 0u, v557 = 0u, !sub_18AE92DBC(v654, v555.f32)))
    {
      v388 = sub_18AF58F08(v541, v536);
      sub_18AF534EC(v648, v388 & 1, v491);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v193 = sub_18AE8C6D8(0, *(v193 + 16) + 1, 1, v193);
      }

      v390 = *(v193 + 16);
      v389 = *(v193 + 24);
      if (v390 >= v389 >> 1)
      {
        v193 = sub_18AE8C6D8(v389 > 1, v390 + 1, 1, v193);
      }

      *(v193 + 16) = v390 + 1;
      (*(v554 + 32))(v193 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v390, v491, v29);
    }

    else
    {
      sub_18AF54A4C(v648, v473);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v193 = sub_18AE8C6D8(0, *(v193 + 16) + 1, 1, v193);
      }

      v387 = *(v193 + 16);
      v386 = *(v193 + 24);
      if (v387 >= v386 >> 1)
      {
        v193 = sub_18AE8C6D8(v386 > 1, v387 + 1, 1, v193);
      }

      *(v193 + 16) = v387 + 1;
      (*(v554 + 32))(v193 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v387, v473, v29);
    }
  }

  else if ((v352 & 0x100000) != 0)
  {
    sub_18AF550D0(v487);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v193 = sub_18AE8C6D8(0, *(v193 + 16) + 1, 1, v193);
    }

    v385 = *(v193 + 16);
    v384 = *(v193 + 24);
    if (v385 >= v384 >> 1)
    {
      v193 = sub_18AE8C6D8(v384 > 1, v385 + 1, 1, v193);
    }

    *(v193 + 16) = v385 + 1;
    (*(v554 + 32))(v193 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v385, v487, v29);
  }

  else
  {
    sub_18AF54620(v648, v488);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v193 = sub_18AE8C6D8(0, *(v193 + 16) + 1, 1, v193);
    }

    v372 = *(v193 + 16);
    v371 = *(v193 + 24);
    if (v372 >= v371 >> 1)
    {
      v193 = sub_18AE8C6D8(v371 > 1, v372 + 1, 1, v193);
    }

    *(v193 + 16) = v372 + 1;
    (*(v554 + 32))(v193 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v372, v488, v29);
  }

  v612 = v193;
  if ((v352 & 0x100000) == 0)
  {
LABEL_155:
    if ((v352 & 0x4000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_204;
  }

LABEL_199:
  sub_18AF55690(v648, v518);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v193 = sub_18AE8C6D8(0, *(v193 + 16) + 1, 1, v193);
  }

  v392 = *(v193 + 16);
  v391 = *(v193 + 24);
  if (v392 >= v391 >> 1)
  {
    v193 = sub_18AE8C6D8(v391 > 1, v392 + 1, 1, v193);
  }

  *(v193 + 16) = v392 + 1;
  (*(v554 + 32))(v193 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v392, v518, v29);
  v612 = v193;
  if ((v352 & 0x4000) == 0)
  {
LABEL_156:
    v354 = v554;
    if ((v352 & 0x400000) != 0)
    {
      goto LABEL_157;
    }

LABEL_215:
    v355 = v29;
    v358 = v548;
    v359 = v547;
    v360 = v540;
    if ((v352 & 0x200000) != 0)
    {
      goto LABEL_162;
    }

LABEL_216:

    if ((v352 & 0x200) == 0)
    {
      goto LABEL_221;
    }

    goto LABEL_217;
  }

LABEL_204:
  v393 = *MEMORY[0x1E6981C40];
  v394 = *(v547 + 104);
  v395 = v545;
  v396 = v504;
  v553 = v193;
  v394(v504, v393, v548);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
  v397 = (*(v554 + 80) + 32) & ~*(v554 + 80);
  v551 = *(v554 + 72);
  v398 = swift_allocObject();
  v399.n128_u64[1] = 2;
  *(v398 + 16) = xmmword_18AFD8390;
  v399.n128_u64[0] = *&v648[976];
  if (v534[676])
  {
    v400 = 0.0;
  }

  else
  {
    v400 = *&v648[968];
  }

  (v525)(v542, *MEMORY[0x1E69814C8], v353, v399);
  sub_18AFCCDE4();
  v649 = v403;
  v650 = v404;
  if (v400 <= 1.0)
  {
    v405 = NAN;
  }

  else
  {
    v405 = v400;
  }

  v651 = v401;
  v652 = v402;
  v653 = v405;
  sub_18AFCD9F4();
  v406 = v546;
  *v546 = 27;
  v407 = *MEMORY[0x1E6981BB8];
  v408 = *(v395 + 104);
  v409 = v552;
  v408(v406, v407, v552);
  v545 = v397;
  sub_18AFCD784();
  sub_18AFCD874();

  v410 = v553;
  (*(v547 + 8))(v396, v548);
  *v406 = 0;
  v411 = v409;
  v193 = v410;
  v408(v406, v407, v411);
  v352 = v505;
  sub_18AFCD784();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v193 = sub_18AE8C6D8(0, v410[2] + 1, 1, v410);
  }

  v413 = *(v193 + 16);
  v412 = *(v193 + 24);
  v29 = v549;
  v354 = v554;
  if (v413 >= v412 >> 1)
  {
    v193 = sub_18AE8C6D8(v412 > 1, v413 + 1, 1, v193);
  }

  *(v193 + 16) = v413 + 1;
  (*(v354 + 32))(v193 + v545 + v413 * v551, v352, v29);
  v612 = v193;
  LODWORD(v352) = v543;
  if ((v543 & 0x400000) == 0)
  {
    goto LABEL_215;
  }

LABEL_157:
  sub_18AF59168(v519);
  v355 = v29;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v193 = sub_18AE8C6D8(0, *(v193 + 16) + 1, 1, v193);
  }

  v357 = *(v193 + 16);
  v356 = *(v193 + 24);
  v358 = v548;
  v359 = v547;
  v360 = v540;
  if (v357 >= v356 >> 1)
  {
    v193 = sub_18AE8C6D8(v356 > 1, v357 + 1, 1, v193);
  }

  *(v193 + 16) = v357 + 1;
  (*(v354 + 32))(v193 + ((*(v354 + 80) + 32) & ~*(v354 + 80)) + *(v354 + 72) * v357, v519, v355);
  v612 = v193;
  if ((v352 & 0x200000) == 0)
  {
    goto LABEL_216;
  }

LABEL_162:
  sub_18AF8BBD0(v520);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v193 = sub_18AE8C6D8(0, *(v193 + 16) + 1, 1, v193);
  }

  v362 = *(v193 + 16);
  v361 = *(v193 + 24);
  if (v362 >= v361 >> 1)
  {
    v193 = sub_18AE8C6D8(v361 > 1, v362 + 1, 1, v193);
  }

  *(v193 + 16) = v362 + 1;
  (*(v354 + 32))(v193 + ((*(v354 + 80) + 32) & ~*(v354 + 80)) + *(v354 + 72) * v362, v520, v355);

  v612 = v193;
  if ((v352 & 0x200) != 0)
  {
LABEL_217:
    v414 = *(v534 + 35);
    v415 = *(v534 + 36);
    v583 = v648[607];
    v582 = *&v648[605];
    v581 = v648[627];
    v580 = *&v648[625];
    v416 = *(v534 + 40);
    v417 = *(v534 + 41);
    LODWORD(v546) = v648[644];
    v579 = v648[647];
    v578 = *&v648[645];
    v418 = *&v648[664];
    v419 = *&v648[672];
    v420 = *&v648[680];
    v421 = *&v648[688];
    v422 = *&v648[696];
    v423 = *&v648[700];
    v424 = *&v648[704];
    v426 = *(v534 + 50);
    v425 = *(v534 + 51);
    v577 = v648[727];
    v576 = *&v648[725];
    v545 = *&v648[728];
    v427 = *&v648[736];
    v428 = v648[744];
    v575 = v648[747];
    v574 = *&v648[745];
    v429 = *(v534 + 55);
    v430 = *(v534 + 56);
    v431 = v648[764];
    v573 = v648[767];
    v572 = *&v648[765];
    v432 = *&v648[768];
    LODWORD(v524) = *&v648[520];
    v584 = *&v648[520];
    LODWORD(v553) = *&v648[524];
    v523 = *&v648[528];
    v520 = *&v648[536];
    v585 = *&v648[536];
    LODWORD(v519) = *&v648[544];
    LODWORD(v552) = *&v648[548];
    v517 = *&v648[560];
    v518 = *&v648[552];
    v586 = *&v648[552];
    v516 = *&v648[568];
    *v587 = *&v648[568];
    LODWORD(v515) = *&v648[576];
    *&v587[8] = *&v648[576];
    LODWORD(v510) = *&v648[580];
    *&v587[12] = *&v648[580];
    LODWORD(v509) = *&v648[584];
    *&v587[16] = *&v648[584];
    v544 = v414;
    *&v587[20] = v414;
    v542 = v415;
    *&v587[28] = v415;
    LODWORD(v505) = v648[604];
    v587[36] = v648[604];
    v587[39] = v648[607];
    *&v587[37] = *&v648[605];
    v538 = *&v648[608];
    *&v587[40] = *&v648[608];
    v535 = *&v648[616];
    *&v587[48] = *&v648[616];
    LODWORD(v506) = v648[624];
    v587[56] = v648[624];
    v433 = v648[644];
    v434 = v648[724];
    v587[59] = v648[627];
    *&v587[57] = *&v648[625];
    v533 = v416;
    *&v587[60] = v416;
    v531 = v417;
    *&v587[68] = v417;
    v587[76] = v648[644];
    v587[79] = v648[647];
    *&v587[77] = *&v648[645];
    v507 = *&v648[656];
    v508 = *&v648[648];
    *&v587[80] = *&v648[648];
    *&v587[88] = *&v648[656];
    *&v587[96] = *&v648[664];
    LODWORD(v551) = *&v648[668];
    v588 = *&v648[668];
    v589 = *&v648[672];
    v590 = *&v648[680];
    v591 = *&v648[688];
    v592 = *&v648[696];
    v593 = *&v648[700];
    v594 = *&v648[704];
    v525 = v425;
    v526 = v426;
    v595 = v426;
    v596 = v425;
    v352 = *&v648[728];
    v597 = v648[724];
    v599 = v648[727];
    v598 = *&v648[725];
    v600 = *&v648[728];
    v601 = *&v648[736];
    v602 = v648[744];
    v604 = v648[747];
    v603 = *&v648[745];
    v605 = v429;
    v606 = v430;
    v607 = v648[764];
    v609 = v648[767];
    v608 = *&v648[765];
    v610 = *&v648[768];
    v611 = v648[776];
    v435 = sub_18AF4FB9C(&v584);
    if (v435 == 1)
    {
      v436 = 0;
      v437 = 0;
      v438 = 0;
      v439 = 0;
      v440 = 0;
      v441 = 0;
      v442 = 0;
      v443 = 0;
      v352 = 0;
      v427 = 0;
      v429 = 0;
      v430 = 0;
      v444 = 0;
      v445 = 0;
      v446 = 0;
      v447 = 0;
      v448 = 0;
      v449 = 0;
      v450 = 0;
      v451 = 0;
      v452 = 0;
      v453 = 0;
      v454 = 0;
      v455 = 1;
      v619.i8[0] = 1;
      LOBYTE(v570) = 1;
      v456 = 0;
      v418 = 0;
      v419 = 0;
      LOBYTE(v568) = 1;
      v433 = 1;
      v420 = 0;
      v421 = 0;
      v422 = 0;
      v423 = 0;
      v424 = 0;
      v434 = 1;
      v428 = 1;
      v431 = 1;
      v432 = 0;
    }

    else
    {
      v570 = v582;
      v571 = v583;
      v568 = v580;
      v569 = v581;
      v566 = v578;
      v567 = v579;
      v565 = v577;
      v564 = v576;
      v563 = v575;
      v562 = v574;
      v561 = v573;
      v560 = v572;
      v436 = v544;
      v437 = v542;
      v438 = v538;
      v439 = v535;
      v440 = v533;
      v441 = v531;
      v443 = v525;
      v442 = v526;
      v445 = v524;
      v444 = v523;
      v446 = v520;
      v447 = v519;
      v449 = v517;
      v448 = v518;
      v450 = v516;
      v451 = v515;
      v452 = v510;
      v453 = v509;
      v456 = v507;
      v454 = v508;
      LOBYTE(v435) = v506;
      v455 = v505;
    }

    v619.i64[0] = __PAIR64__(v553, v445);
    v619.i64[1] = v444;
    v620.i64[0] = v446;
    v620.i64[1] = __PAIR64__(v552, v447);
    v621.i64[0] = v448;
    v621.i64[1] = v449;
    *v622 = v450;
    *&v622[8] = v451;
    *&v622[12] = v452;
    *&v622[16] = v453;
    *&v622[20] = v436;
    *&v622[28] = v437;
    v622[36] = v455;
    *&v622[37] = v570;
    v622[39] = v571;
    *&v623 = v438;
    *(&v623 + 1) = v439;
    v624[0] = v435;
    *&v624[1] = v568;
    v624[3] = v569;
    *&v624[4] = v440;
    *&v624[12] = v441;
    v624[20] = v433;
    *&v624[21] = v566;
    v624[23] = v567;
    *&v624[24] = v454;
    *&v624[32] = v456;
    *&v624[40] = v418;
    v625 = v551;
    v626 = v419;
    v627 = v420;
    v628 = v421;
    v629 = v422;
    v630 = v423;
    v631 = v424;
    v632 = v442;
    v633 = v443;
    v634 = v434;
    v636 = v565;
    v635 = v564;
    v637 = v352;
    v638 = v427;
    v639 = v428;
    v641 = v563;
    v640 = v562;
    v642 = v429;
    v643 = v430;
    v644 = v431;
    v646 = v561;
    v645 = v560;
    v647 = v432;
    sub_18AF56FD4(v541, &v612, v536, &v619, (v536 & 0x820) == 2048, v550[2], v550[3], 0);
    v358 = v548;
    v359 = v547;
    v360 = v540;
    v355 = v549;
    v354 = v554;
    LOWORD(v352) = v543;
  }

LABEL_221:
  v457 = MEMORY[0x1E6981C48];
  if ((v352 & 0x8000) != 0)
  {
    v458 = *&v648[952];
    if (v534[652])
    {
      v458 = 0.0;
    }

    sub_18AF59778(v522, v458);
    v459 = v612;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v459 = sub_18AE8C6D8(0, v459[2] + 1, 1, v459);
    }

    v461 = v459[2];
    v460 = v459[3];
    if (v461 >= v460 >> 1)
    {
      v459 = sub_18AE8C6D8(v460 > 1, v461 + 1, 1, v459);
    }

    v459[2] = v461 + 1;
    (*(v354 + 32))(v459 + ((*(v354 + 80) + 32) & ~*(v354 + 80)) + *(v354 + 72) * v461, v522, v355);
    v612 = v459;
  }

  (*(v359 + 104))(v360, *v457, v358);
  sub_18AFCD874();

  (*(v359 + 8))(v360, v358);
  if ((v536 & 0x20000) == 0)
  {
    sub_18AFCD834();
  }

  if (v521)
  {
    v462 = v512;
    sub_18AFCD8A4();
    v463 = sub_18AFCD8C4();
    v464 = v511;
    sub_18AF58654(v511, v462);
    v465 = *(v513 + 8);
    v466 = v462;
    v467 = v514;
    v465(v466, v514);
    v465(v464, v467);
    v463(&v584, 0);
  }

  (*(v527 + 8))(v537, v528);
  return (*(v529 + 8))(v539, v530);
}

uint64_t GlassMaterialProvider.Resolved.resolveLayers(in:)(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_18AFCDA04();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18AFCDB04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v13 = sub_18AFCDAF4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED56AA50 != -1)
  {
    swift_once();
  }

  if (byte_1EA9B0050)
  {
    v17 = v24;

    return sub_18AF5656C(v17);
  }

  else
  {
    v22[0] = v3;
    v22[1] = v2;
    (*(v14 + 104))(v16, *MEMORY[0x1E6981CB0], v13);
    sub_18AFCDAE4();
    (*(v7 + 104))(v9, *MEMORY[0x1E6981CB8], v6);
    sub_18AE88AD4(&qword_1ED56AB18, MEMORY[0x1E6981CC0]);
    v19 = sub_18AFCDDF4();
    v20 = *(v7 + 8);
    v20(v9, v6);
    v20(v12, v6);
    (*(v14 + 8))(v16, v13);
    if (v19)
    {
      return MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708);
      sub_18AFCDA34();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_18AFD8390;
      sub_18AE8405C(v24, v5);
      sub_18AFCD5F4();
      (*(v23 + 8))(v5, v22[0]);
      return v21;
    }
  }
}

uint64_t sub_18AE88890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s11EnvironmentVMa();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_18AE889B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s11EnvironmentVMa();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_18AE88AD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18AE88BAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_18AE88C0C@<X0>(int a1@<W0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = v3;
  v5 = a3;
  if ((a2 & 4) != 0)
  {
    memcpy(__src, v3, sizeof(__src));
    if ((a1 & 0x2001) != 0)
    {
      if ((a1 & 2) != 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = *&__src[24];
      v7 = *&__src[32];
      v9 = *&__src[40];
      v10 = *&__src[48];
      v12 = *&__src[56];
      v11 = *&__src[64];
      v13 = *&__src[72];
      v14 = __src[148];
      v15 = *(v3 + 109);
      __dst[0] = *&__src[24];
      __dst[1] = *&__src[32];
      __dst[2] = *&__src[40];
      __dst[3] = *&__src[48];
      __dst[4] = *&__src[56];
      __dst[5] = *&__src[64];
      __dst[6] = *&__src[72];
      v186 = *&__src[80];
      __dst[7] = *&__src[80];
      v188 = *&__src[84];
      v191 = *&__src[88];
      LODWORD(__dst[8]) = *&__src[88];
      v194 = *&__src[92];
      v197 = *&__src[100];
      *(&__dst[8] + 4) = *&__src[92];
      *(&__dst[9] + 4) = *&__src[100];
      v182 = __src[108];
      BYTE4(__dst[10]) = __src[108];
      *(&__dst[10] + 5) = v15;
      HIBYTE(__dst[10]) = *(v3 + 111);
      v201 = *&__src[112];
      v204 = *&__src[120];
      __dst[11] = *&__src[112];
      __dst[12] = *&__src[120];
      v184 = __src[128];
      LOBYTE(__dst[13]) = __src[128];
      v16 = *(v3 + 149);
      *(&__dst[13] + 1) = *(v3 + 129);
      BYTE3(__dst[13]) = *(v3 + 131);
      v17 = *&__src[132];
      *(&__dst[13] + 4) = *&__src[132];
      v18 = *&__src[140];
      *(&__dst[14] + 4) = *&__src[140];
      BYTE4(__dst[15]) = __src[148];
      HIBYTE(__dst[15]) = *(v3 + 151);
      *(&__dst[15] + 5) = v16;
      __dst[16] = *&__src[152];
      v208 = *&__src[156];
      v19 = *&__src[160];
      __dst[17] = *&__src[160];
      LOBYTE(__dst[18]) = __src[168];
      if (sub_18AF4FB80(__dst) == 1)
      {
        v18 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0.0;
        v19 = 0.0;
        v26 = 0.0;
        v27 = 0.0;
        v13 = 0.0;
        v14 = 1;
        LOBYTE(v256) = 1;
        LOBYTE(v234) = 1;
        LOBYTE(v252) = 1;
        v28 = 1;
        v29 = 1;
        v11 = 0.0;
        v12 = 0.0;
        v10 = 0.0;
        v9 = 0.0;
        v7 = 0.0;
        v8 = 0.0;
      }

      else
      {
        v216 = *(v3 + 109);
        v217 = *(v3 + 111);
        v214 = *(v3 + 129);
        v215 = *(v3 + 131);
        v212 = *(v3 + 149);
        v213 = *(v3 + 151);
        v20 = v17;
        v22 = v201;
        v21 = v204;
        v24 = v194;
        v23 = v197;
        v25 = v191;
        v26 = v188;
        v27 = v186;
        v28 = v184;
        v29 = v182;
      }

      v4 = v3;
      if (v8 == 0.0 && v7 == 0.0 && v9 == 0.0 && v10 == 0.0 && v12 == 0.0 && v11 == 0.0 && v13 == 0.0 && v27 == 0.0 && v26 == 0.0 && v25 == 0.0 && (v29 & 1) != 0 && (v28 & 1) != 0 && (v14 & 1) != 0 && v19 == 0.0)
      {
        sub_18AF6A99C(&v256);
      }

      else
      {
        *&v234 = v8;
        *(&v234 + 1) = v7;
        *&v235 = v9;
        *(&v235 + 1) = v10;
        *&v236 = v12;
        *(&v236 + 1) = v11;
        *&v237 = v13;
        *(&v237 + 1) = __PAIR64__(LODWORD(v26), LODWORD(v27));
        *v238 = v25;
        *&v238[4] = v24;
        *&v238[12] = v23;
        v238[20] = v29;
        *&v238[21] = v216;
        v238[23] = v217;
        *&v238[24] = v22;
        *v239 = v21;
        v239[8] = v28;
        v239[11] = v215;
        *&v239[9] = v214;
        *&v239[12] = v20;
        *&v239[20] = v18;
        v239[28] = v14;
        v239[31] = v213;
        *&v239[29] = v212;
        LODWORD(v240) = 0;
        DWORD1(v240) = v208;
        *(&v240 + 1) = v19;
        sub_18AF6A9C0(&v234);
        *v261 = *v239;
        *&v261[16] = *&v239[16];
        v262 = v240;
        LOBYTE(v263) = v241;
        v258 = v236;
        v259 = v237;
        *v260 = *v238;
        *&v260[16] = *&v238[16];
        v256 = v234;
        v257 = v235;
      }

      *&__src[120] = *v261;
      *&__src[136] = *&v261[16];
      *&__src[152] = v262;
      *&__src[56] = v258;
      *&__src[72] = v259;
      *&__src[88] = *v260;
      *&__src[104] = *&v260[16];
      *&__src[24] = v256;
      __src[168] = v263;
      *&__src[40] = v257;
      if ((a1 & 2) != 0)
      {
LABEL_5:
        if ((a1 & 4) != 0)
        {
          goto LABEL_6;
        }

        goto LABEL_43;
      }
    }

    v30 = *&__src[216];
    v31 = *&__src[240];
    v32 = vdup_n_s32(__src[248]);
    v33.i64[0] = v32.u32[0];
    v33.i64[1] = v32.u32[1];
    v34 = vcgezq_s64(vshlq_n_s64(v33, 0x3FuLL));
    v35 = vandq_s8(*&__src[184], v34);
    v36 = vandq_s8(*&__src[200], v34);
    if (__src[248])
    {
      v30 = 0.0;
    }

    v37 = vandq_s8(*&__src[224], vcgezq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(__src[248])), 0x1FuLL)));
    v38 = 0.0;
    if (__src[248])
    {
      v31 = 0.0;
    }

    else
    {
      v38 = *&__src[244];
    }

    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v35), vceqzq_f64(v36))))) & 1) == 0 && v30 == 0.0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v37)))) & 1) == 0 && v31 == 0.0 && v38 == 0.0)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 1;
      v35 = 0uLL;
      v30 = 0.0;
      v36 = 0uLL;
    }

    else
    {
      v42 = 0;
      v40 = v37.i64[1];
      v39 = v37.i64[0];
      v41 = LODWORD(v31) | (LODWORD(v38) << 32);
    }

    *&__src[176] = 0;
    *&__src[184] = v35;
    *&__src[200] = v36;
    *&__src[216] = v30;
    *&__src[224] = v39;
    *&__src[232] = v40;
    *&__src[240] = v41;
    __src[248] = v42;
    if ((a1 & 4) != 0)
    {
LABEL_6:
      if ((a1 & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_47;
    }

LABEL_43:
    if (__src[385])
    {
      v43 = 0;
    }

    else
    {
      v43 = (*&__src[345] << 8) | (__src[347] << 24);
    }

    LOBYTE(__dst[0]) = 1;
    LOBYTE(v256) = 1;
    LOBYTE(v234) = 1;
    *&__src[312] = 0;
    *&__src[320] = 0x3F8000003F800000;
    *&__src[328] = 0;
    *&__src[336] = 0;
    *&__src[344] = v43 | 1;
    *&__src[352] = 0;
    *&__src[368] = 0;
    *&__src[376] = 0;
    *&__src[360] = 0x100000000;
    *&__src[384] = 1;
    if ((a1 & 8) != 0)
    {
LABEL_7:
      if ((a1 & 0x10) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_55;
    }

LABEL_47:
    v44 = *&__src[304];
    if (__src[308])
    {
      v44 = 0.0;
      v45 = -1;
    }

    else
    {
      v45 = 0;
    }

    v46 = vdupq_n_s64(v45);
    v47 = vbicq_s8(*&__src[272], v46);
    v48 = vbicq_s8(*&__src[288], v46);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v47), vceqzq_f64(v48))))) & 1) != 0 || v44 != 0.0)
    {
      v49 = 0;
    }

    else
    {
      v49 = 1;
      v47 = 0uLL;
      v44 = 0.0;
      v48 = 0uLL;
    }

    *&__src[256] = 0;
    *&__src[264] = 0;
    *&__src[272] = v47;
    *&__src[288] = v48;
    *&__src[304] = v44;
    __src[308] = v49;
    if ((a1 & 0x10) != 0)
    {
LABEL_8:
      if ((a1 & 0x20) != 0)
      {
        goto LABEL_89;
      }

LABEL_63:
      if ((a1 & 0x100000) != 0)
      {
        if ((a1 & 0x40) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_65;
      }

      if (__src[872])
      {
        v58 = 0;
        v59 = 0;
        v60 = 0.0;
        v61 = 0.0;
        v62 = 0.0;
        v63 = 0.0;
        v64 = 0;
      }

      else
      {
        v59 = *&__src[848];
        v64 = vmovn_s64(*&__src[856]);
        v58 = vshrn_n_s64(*&__src[856], 0x20uLL);
        v60 = *&__src[824];
        v61 = *&__src[832];
        v62 = *&__src[836];
        v63 = *&__src[844];
      }

      if (v60 == 0.0 && v61 == 0.0 && v62 == 0.0 && v63 == 0.0 && (v205 = v64, v209 = v58, v65 = sub_18AFCCCB4(), v64 = v205, v58 = v209, (v65 & 1) != 0) && *v205.i32 == 0.0 && *v209.i32 == 0.0 && (v66 = vceqz_f32(vzip2_s32(v209, v205)), (v66.i32[1] & v66.i32[0] & 1) != 0))
      {
        v67 = 0;
        v68 = 0;
        v69 = 0;
        v70 = 0uLL;
        v71 = 1;
        v59 = 0;
      }

      else
      {
        v71 = 0;
        v67 = LODWORD(v60);
        v68 = LODWORD(v61) | (LODWORD(v62) << 32);
        v69 = LODWORD(v63) << 32;
        v72.i64[0] = v64.u32[0];
        v72.i64[1] = v64.u32[1];
        v70 = vorrq_s8(vshll_n_s32(v58, 0x20uLL), v72);
      }

      *&__src[824] = v67;
      *&__src[832] = v68;
      *&__src[840] = v69;
      *&__src[848] = v59;
      *&__src[856] = v70;
      __src[872] = v71;
LABEL_89:
      memset(&__src[880], 0, 24);
      __src[904] = 1;
      if ((a1 & 0x40) == 0)
      {
LABEL_90:
        v73 = __src[497];
        if (__src[497] == 2)
        {
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v73 = 0;
          v77 = 0uLL;
          v78 = 0.0;
          v79 = 0.0;
          v80 = 1;
          LOBYTE(__dst[0]) = 1;
          LOBYTE(v256) = 1;
          LOBYTE(v234) = 1;
          v81 = 0.0;
          v82 = 0.0;
          v83 = 0.0;
          v84 = 0.0;
          v85 = 0.0;
          v86 = 1;
          v87 = 1;
          v88 = 0uLL;
        }

        else
        {
          v80 = __src[456];
          v77 = *&__src[440];
          v85 = *&__src[436];
          v84 = *&__src[432];
          v83 = *&__src[428];
          v82 = *&__src[424];
          v81 = *&__src[420];
          v78 = *&__src[416];
          v79 = *&__src[408];
          v87 = __src[496];
          v88 = *&__src[480];
          v86 = __src[476];
          v75 = *&__src[464];
          v74 = (*&__src[457] << 8) | ((*&__src[461] | (__src[463] << 16)) << 40);
          v76 = *&__src[472];
        }

        v254 = 1;
        v200 = a1;
        if (v79 == 0.0 && v78 == 0.0 && v81 == 0.0 && v82 == 0.0 && v83 == 0.0 && v84 == 0.0 && v85 == 0.0 && (v80 & 1) != 0 && (v86 & 1) != 0 && (v87 & 1) != 0 && (v73 & 1) == 0)
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v75 = 0;
          v93 = 0;
          v77 = 0uLL;
          v79 = 0.0;
          v88 = 0uLL;
          v94 = 512;
        }

        else
        {
          v89 = LODWORD(v78) | (LODWORD(v81) << 32);
          v90 = LODWORD(v82) | (LODWORD(v83) << 32);
          v91 = LODWORD(v84) | (LODWORD(v85) << 32);
          v92 = v74 | v80;
          v93 = ((*&__src[477] | (__src[479] << 16)) << 40) | (v86 << 32) | v76;
          v94 = v87 | (v73 << 8);
        }

        *&__src[392] = 0;
        *&__src[400] = 0;
        *&__src[408] = v79;
        *&__src[416] = v89;
        *&__src[424] = v90;
        *&__src[432] = v91;
        *&__src[440] = v77;
        *&__src[456] = v92;
        *&__src[464] = v75;
        *&__src[472] = v93;
        *&__src[480] = v88;
        *&__src[496] = v94;
        v95 = *&__src[24];
        v96 = *&__src[32];
        v97 = *&__src[40];
        v98 = *&__src[48];
        v99 = *&__src[56];
        v100 = *&__src[64];
        v101 = *&__src[72];
        v252 = *&__src[109];
        v253 = __src[111];
        v250 = *&__src[129];
        v251 = __src[131];
        v102 = __src[148];
        v249 = __src[151];
        v248 = *&__src[149];
        __dst[0] = *&__src[24];
        __dst[1] = *&__src[32];
        __dst[2] = *&__src[40];
        __dst[3] = *&__src[48];
        __dst[4] = *&__src[56];
        __dst[5] = *&__src[64];
        __dst[6] = *&__src[72];
        v195 = *&__src[80];
        __dst[7] = *&__src[80];
        v192 = *&__src[84];
        v189 = *&__src[88];
        LODWORD(__dst[8]) = *&__src[88];
        v202 = *&__src[92];
        *(&__dst[8] + 4) = *&__src[92];
        v198 = *&__src[100];
        *(&__dst[9] + 4) = *&__src[100];
        v103 = __src[108];
        BYTE4(__dst[10]) = __src[108];
        HIBYTE(__dst[10]) = __src[111];
        *(&__dst[10] + 5) = *&__src[109];
        v104 = *&__src[112];
        __dst[11] = *&__src[112];
        __dst[12] = *&__src[120];
        v105 = *&__src[120];
        v106 = __src[128];
        LOBYTE(__dst[13]) = __src[128];
        BYTE3(__dst[13]) = __src[131];
        *(&__dst[13] + 1) = *&__src[129];
        v107 = *&__src[132];
        *(&__dst[13] + 4) = *&__src[132];
        v108 = *&__src[140];
        *(&__dst[14] + 4) = *&__src[140];
        BYTE4(__dst[15]) = __src[148];
        HIBYTE(__dst[15]) = __src[151];
        *(&__dst[15] + 5) = *&__src[149];
        v109 = *&__src[152];
        __dst[16] = *&__src[152];
        v206 = *&__src[156];
        __dst[17] = *&__src[160];
        LOBYTE(__dst[18]) = __src[168];
        if (sub_18AF4FB80(__dst) == 1)
        {
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 0;
          v103 = 1;
          v106 = 1;
          v116 = 0.0;
          v95 = 0.0;
          v96 = 0.0;
          v97 = 0.0;
          v98 = 0.0;
          v102 = v254;
          v99 = 0.0;
          v100 = 0.0;
          v101 = 0.0;
          v117 = 0.0;
          v118 = 0.0;
          v109 = 0.0;
          a1 = v200;
        }

        else
        {
          v246 = v252;
          v247 = v253;
          v244 = v250;
          v245 = v251;
          v242 = v248;
          v243 = v249;
          v110 = v107;
          v111 = v108;
          v112 = v104;
          v113 = v105;
          a1 = v200;
          v114 = v202;
          v115 = v198;
          v116 = v195;
          v117 = v192;
          v118 = v189;
        }

        if (v95 == 0.0 && v96 == 0.0 && v97 == 0.0 && v98 == 0.0 && v99 == 0.0 && v100 == 0.0 && v101 == 0.0 && v116 == 0.0 && v117 == 0.0 && v118 == 0.0 && (v103 & 1) != 0 && (v106 & 1) != 0 && (v102 & 1) != 0 && v109 == 0.0)
        {
          sub_18AF6A99C(&v256);
        }

        else
        {
          *&v234 = v95;
          *(&v234 + 1) = v96;
          *&v235 = v97;
          *(&v235 + 1) = v98;
          *&v236 = v99;
          *(&v236 + 1) = v100;
          *&v237 = v101;
          *(&v237 + 1) = __PAIR64__(LODWORD(v117), LODWORD(v116));
          *v238 = v118;
          *&v238[4] = v114;
          *&v238[12] = v115;
          v238[20] = v103;
          *&v238[21] = v246;
          v238[23] = v247;
          *&v238[24] = v112;
          *v239 = v113;
          v239[8] = v106;
          v239[11] = v245;
          *&v239[9] = v244;
          *&v239[12] = v110;
          *&v239[20] = v111;
          v239[28] = v102;
          v239[31] = v243;
          *&v239[29] = v242;
          v240 = __PAIR64__(v206, LODWORD(v109));
          sub_18AF6A9C0(&v234);
          *v261 = *v239;
          *&v261[16] = *&v239[16];
          v262 = v240;
          LOBYTE(v263) = v241;
          v258 = v236;
          v259 = v237;
          *v260 = *v238;
          *&v260[16] = *&v238[16];
          v256 = v234;
          v257 = v235;
        }

        v4 = v3;
        *&__src[120] = *v261;
        *&__src[136] = *&v261[16];
        *&__src[152] = v262;
        *&__src[56] = v258;
        *&__src[72] = v259;
        *&__src[88] = *v260;
        *&__src[104] = *&v260[16];
        *&__src[24] = v256;
        __src[168] = v263;
        *&__src[40] = v257;
        if ((a1 & 0x200) == 0)
        {
LABEL_126:
          v119 = __src[604];
          BYTE2(v234) = __src[607];
          LOWORD(v234) = *&__src[605];
          v253 = __src[627];
          v252 = *&__src[625];
          v251 = __src[647];
          v250 = *&__src[645];
          v249 = __src[727];
          v248 = *&__src[725];
          v233 = __src[747];
          v232 = *&__src[745];
          v231 = __src[767];
          v230 = *&__src[765];
          HIBYTE(__dst[10]) = __src[607];
          *(&__dst[10] + 5) = *&__src[605];
          BYTE3(__dst[13]) = __src[627];
          v120 = __src[724];
          *(&__dst[13] + 1) = *&__src[625];
          HIBYTE(__dst[15]) = __src[647];
          *(&__dst[15] + 5) = *&__src[645];
          HIBYTE(__dst[25]) = __src[727];
          *(&__dst[25] + 5) = *&__src[725];
          BYTE3(__dst[28]) = __src[747];
          v121 = __src[744];
          *(&__dst[28] + 1) = *&__src[745];
          HIBYTE(__dst[30]) = __src[767];
          *(&__dst[30] + 5) = *&__src[765];
          v122 = *&__src[768];
          v123 = *&__src[528];
          __dst[1] = *&__src[528];
          __dst[2] = *&__src[536];
          v181 = *&__src[536];
          v124 = *&__src[552];
          __dst[4] = *&__src[552];
          __dst[5] = *&__src[560];
          v125 = *&__src[560];
          v126 = *&__src[568];
          __dst[6] = *&__src[568];
          v196 = *&__src[596];
          v199 = *&__src[588];
          *(&__dst[8] + 4) = *&__src[588];
          *(&__dst[9] + 4) = *&__src[596];
          v190 = *&__src[616];
          v193 = *&__src[608];
          __dst[11] = *&__src[608];
          __dst[12] = *&__src[616];
          v185 = *&__src[636];
          v187 = *&__src[628];
          *(&__dst[13] + 4) = *&__src[628];
          *(&__dst[14] + 4) = *&__src[636];
          v178 = *&__src[648];
          v179 = *&__src[656];
          __dst[16] = *&__src[648];
          __dst[17] = *&__src[656];
          v176 = *&__src[680];
          v177 = *&__src[672];
          __dst[19] = *&__src[672];
          __dst[20] = *&__src[680];
          v175 = *&__src[688];
          __dst[21] = *&__src[688];
          v183 = *&__src[708];
          *(&__dst[23] + 4) = *&__src[708];
          v170 = *&__src[728];
          v171 = *&__src[716];
          *(&__dst[24] + 4) = *&__src[716];
          __dst[26] = *&__src[728];
          __dst[27] = *&__src[736];
          v168 = *&__src[748];
          v169 = *&__src[736];
          *(&__dst[28] + 4) = *&__src[748];
          v167 = *&__src[756];
          *(&__dst[29] + 4) = *&__src[756];
          __dst[31] = *&__src[768];
          LOBYTE(__dst[32]) = __src[776];
          v127 = __src[764];
          v128 = *&__src[520];
          __dst[0] = *&__src[520];
          v210 = *&__src[524];
          __dst[3] = *&__src[544];
          v207 = *&__src[548];
          v129 = *&__src[576];
          __dst[7] = *&__src[576];
          v130 = *&__src[580];
          v180 = *&__src[584];
          LODWORD(__dst[8]) = *&__src[584];
          BYTE4(__dst[10]) = __src[604];
          v131 = __src[624];
          LOBYTE(__dst[13]) = __src[624];
          v132 = __src[644];
          BYTE4(__dst[15]) = __src[644];
          __dst[18] = *&__src[664];
          v203 = *&__src[668];
          v173 = *&__src[700];
          v174 = *&__src[696];
          __dst[22] = *&__src[696];
          v172 = *&__src[704];
          LODWORD(__dst[23]) = *&__src[704];
          BYTE4(__dst[25]) = __src[724];
          LOBYTE(__dst[28]) = __src[744];
          BYTE4(__dst[30]) = __src[764];
          if (sub_18AF4FB9C(__dst) == 1)
          {
            v133 = 0;
            v134 = 0;
            v135 = 0;
            v136 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v123 = 0;
            v128 = 0;
            v145 = 0;
            v124 = 0;
            v125 = 0;
            v126 = 0;
            v129 = 0;
            v130 = 0;
            v146 = 0;
            v119 = 1;
            LOBYTE(v256) = 1;
            v254 = 1;
            v147 = 0;
            v148 = 0;
            v149 = 0;
            v131 = 1;
            v132 = 1;
            v150 = 0;
            v151 = 0;
            v152 = 0;
            v153 = 0;
            v154 = 0;
            v120 = 1;
            v121 = 1;
            v127 = 1;
            v122 = 0;
          }

          else
          {
            v228 = v234;
            v229 = BYTE2(v234);
            v226 = v252;
            v227 = v253;
            v224 = v250;
            v225 = v251;
            v223 = v249;
            v222 = v248;
            v221 = v233;
            v220 = v232;
            v219 = v231;
            v218 = v230;
            v134 = v196;
            v133 = v199;
            v136 = v190;
            v135 = v193;
            v138 = v185;
            v137 = v187;
            v139 = v183;
            v145 = v181;
            v146 = v180;
            v147 = v178;
            v148 = v179;
            v150 = v176;
            v149 = v177;
            v151 = v175;
            v153 = v173;
            v152 = v174;
            v154 = v172;
            v141 = v170;
            v140 = v171;
            v143 = v168;
            v142 = v169;
            v144 = v167;
          }

          *&v256 = __PAIR64__(v210, v128);
          *(&v256 + 1) = v123;
          *&v257 = v145;
          DWORD2(v257) = 0;
          HIDWORD(v257) = v207;
          *&v258 = v124;
          *(&v258 + 1) = v125;
          *&v259 = v126;
          *(&v259 + 1) = __PAIR64__(v130, v129);
          *v260 = v146;
          *&v260[4] = v133;
          *&v260[12] = v134;
          v260[20] = v119;
          *&v260[21] = v228;
          v260[23] = v229;
          *&v260[24] = v135;
          *v261 = v136;
          v261[8] = v131;
          v261[11] = v227;
          *&v261[9] = v226;
          *&v261[12] = v137;
          *&v261[20] = v138;
          v261[28] = v132;
          v261[31] = v225;
          *&v261[29] = v224;
          *&v262 = v147;
          *(&v262 + 1) = v148;
          v263 = 0;
          v264 = v203;
          v265 = v149;
          v266 = v150;
          v267 = v151;
          v268 = v152;
          v269 = v153;
          v270 = v154;
          v271 = v139;
          v272 = v140;
          v273 = v120;
          v275 = v223;
          v274 = v222;
          v276 = v141;
          v277 = v142;
          v278 = v121;
          v280 = v221;
          v279 = v220;
          v281 = v143;
          v282 = v144;
          v283 = v127;
          v285 = v219;
          v284 = v218;
          v286 = v122;
          sub_18AF6B330(&v256);
          v4 = v3;
          if ((a1 & 0x4000) == 0)
          {
LABEL_130:
            v155 = *(v4 + 976);
            v156 = *(v4 + 968);
            if (*(v4 + 984))
            {
              v156 = 0.0;
              v155 = 0.0;
            }

            if (v156 == 0.0 && v155 == 0.0)
            {
              v157 = 0;
            }

            else
            {
              v157 = LODWORD(v156);
            }

            if (v156 == 0.0 && v155 == 0.0)
            {
              v158 = 0.0;
            }

            else
            {
              v158 = v155;
            }

            *&__src[968] = v157;
            *&__src[976] = v158;
            __src[984] = v156 == 0.0 && v155 == 0.0;
            if ((a1 & 0x8000) == 0)
            {
LABEL_139:
              v159 = *(v4 + 952);
              v160 = *(v4 + 944);
              if (*(v4 + 960))
              {
                v160 = 0.0;
                v159 = 0.0;
              }

              if (v160 == 0.0 && v159 == 0.0)
              {
                v161 = 0;
              }

              else
              {
                v161 = LODWORD(v160);
              }

              if (v160 == 0.0 && v159 == 0.0)
              {
                v162 = 0.0;
              }

              else
              {
                v162 = v159;
              }

              *&__src[944] = v161;
              *&__src[952] = v162;
              __src[960] = v160 == 0.0 && v159 == 0.0;
              if ((a1 & 0x10000) == 0)
              {
LABEL_148:
                v163 = *(v4 + 1008);
                v164 = *(v4 + 1016);
                if (*(v4 + 1024))
                {
                  v163 = 0.0;
                  v164 = 0.0;
                }

                if (v163 == 0.0 && v164 == 0.0)
                {
                  v165 = 0.0;
                }

                else
                {
                  v165 = v163;
                }

                if (v163 == 0.0 && v164 == 0.0)
                {
                  v166 = 0.0;
                }

                else
                {
                  v166 = v164;
                }

                *&__src[992] = 0u;
                *&__src[1008] = v165;
                *&__src[1016] = v166;
                __src[1024] = v163 == 0.0 && v164 == 0.0;
                if ((a1 & 0x40000) != 0)
                {
                  goto LABEL_73;
                }

                goto LABEL_70;
              }

LABEL_69:
              if ((a1 & 0x40000) != 0)
              {
LABEL_73:
                sub_18AF5EDE8();
                memcpy(__dst, __src, 0x401uLL);
                v5 = a3;
                return memcpy(v5, __dst, 0x401uLL);
              }

LABEL_70:
              v56 = *(v4 + 784);
              if (*(v4 + 816))
              {
                v56 = 0;
              }

              *&__src[784] = v56;
              *&__src[792] = 1065353216;
              memset(&__src[800], 0, 17);
              goto LABEL_73;
            }

LABEL_68:
            if ((a1 & 0x10000) == 0)
            {
              goto LABEL_148;
            }

            goto LABEL_69;
          }

LABEL_67:
          if ((a1 & 0x8000) == 0)
          {
            goto LABEL_139;
          }

          goto LABEL_68;
        }

LABEL_66:
        if ((a1 & 0x4000) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_67;
      }

LABEL_65:
      if ((a1 & 0x200) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_66;
    }

LABEL_55:
    v50 = *&__src[304];
    if (__src[308])
    {
      v50 = 0.0;
      v51 = -1;
    }

    else
    {
      v51 = 0;
    }

    v52 = vdupq_n_s64(v51);
    v53 = vbicq_s8(*&__src[256], v52);
    v54 = vbicq_s8(*&__src[288], v52);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v53), vceqzq_f64(v54))))) & 1) != 0 || v50 != 0.0)
    {
      v55 = 0;
    }

    else
    {
      v55 = 1;
      v53 = 0uLL;
      v50 = 0.0;
      v54 = 0uLL;
    }

    *&__src[256] = v53;
    *&__src[272] = 0;
    *&__src[280] = 0;
    *&__src[288] = v54;
    *&__src[304] = v50;
    __src[308] = v55;
    if ((a1 & 0x20) != 0)
    {
      goto LABEL_89;
    }

    goto LABEL_63;
  }

  memcpy(__dst, v3, 0x401uLL);
  return memcpy(v5, __dst, 0x401uLL);
}

unint64_t sub_18AE89F60(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

uint64_t GlassMaterialProvider.init(_:options:size:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v9) = *a1;
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *a3;
  v14 = a3[1];
  v15 = *(a3 + 16);
  v18 = v9;
  sub_18AE8A0A4(v10);
  sub_18AE7B03C(v10, a4, type metadata accessor for GlassMaterialProvider.Configuration);
  if (v12 == 1)
  {
    sub_18AE8E22C(*v10, &v17);
    v11 = v17;
  }

  *(a4 + 40) = v11;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;
  return sub_18AFAC05C(v10, type metadata accessor for GlassMaterialProvider.Configuration);
}

uint64_t sub_18AE8A0A4@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      if (qword_1ED56A750 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A758;
      break;
    case 2:
      if (qword_1EA997660 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA997668;
      break;
    case 3:
      if (qword_1EA997700 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA997708;
      break;
    case 4:
      if (qword_1EA997640 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA997648;
      break;
    case 5:
      if (qword_1ED56A590 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A548;
      break;
    case 6:
      if (qword_1ED56A748 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A730;
      break;
    case 7:
      if (qword_1EA9978F0 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B518;
      break;
    case 8:
      if (qword_1ED56A708 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A710;
      break;
    case 9:
      if (qword_1EA9978F8 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B530;
      break;
    case 0xA:
      if (qword_1EA997620 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA997628;
      break;
    case 0xB:
      if (qword_1EA997900 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B548;
      break;
    case 0xC:
      if (qword_1ED56A6C8 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A6D0;
      break;
    case 0xD:
    case 0xE:
      if (qword_1EA997908 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B560;
      break;
    case 0xF:
      if (qword_1ED56A5C0 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A5C8;
      break;
    case 0x10:
      if (qword_1ED56A528 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A530;
      break;
    case 0x11:
      if (qword_1ED56A560 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A568;
      break;
    case 0x12:
      if (qword_1EA997918 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B590;
      break;
    case 0x13:
      if (qword_1ED56A5A0 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A5A8;
      break;
    case 0x14:
      if (qword_1EA997720 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA997728;
      break;
    case 0x15:
      if (qword_1ED56A5F0 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A5F8;
      break;
    case 0x16:
      if (qword_1EA997920 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B5A8;
      break;
    case 0x17:
      if (qword_1EA997928 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B5C0;
      break;
    default:
      if (qword_1ED56AA10 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56AA18;
      break;
  }

  v4 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v5 = __swift_project_value_buffer(v4, v3);
  return sub_18AE7B03C(v5, a1, type metadata accessor for GlassMaterialProvider.Configuration);
}

uint64_t sub_18AE8A6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v112 = a3;
  v98 = type metadata accessor for GlassMaterialProvider();
  v4 = MEMORY[0x1EEE9AC00](v98);
  v97 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v99 = &v88 - v6;
  v7 = sub_18AFCD244();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v96 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFCD2E4();
  v105 = *(v9 - 8);
  v106 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v101 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v102 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v88 - v14;
  v93 = sub_18AFCD2B4();
  v92 = *(v93 - 8);
  v15 = MEMORY[0x1EEE9AC00](v93);
  v89 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v88 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BDA0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v91 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v109 = &v88 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BDA8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v88 - v23;
  v111 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v107 = *(v111 - 8);
  v24 = MEMORY[0x1EEE9AC00](v111);
  v100 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v104 = &v88 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF10);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v88 - v28;
  v30 = sub_18AFCD3A4();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v88 - v35;
  v37 = sub_18AFCDAD4();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v94 = &v88 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v88 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v88 - v44;
  v110 = a1;
  sub_18AFCD3C4();
  sub_18AFCD304();
  v46 = v36;
  v47 = v37;
  (*(v31 + 8))(v46, v30);
  v48 = v38;
  if ((*(v38 + 48))(v29, 1, v37) == 1)
  {
    v49 = v43;
    sub_18AE7BA80(v29, &qword_1EA99AF10);
    sub_18AFCD3C4();
    v50 = v108;
    sub_18AE8B3A0(v34, v108);
    if ((*(v107 + 48))(v50, 1, v111) == 1)
    {
      sub_18AE7BA80(v50, &qword_1EA99BDA8);
      sub_18AFCD524();
      v51 = v112;
      sub_18AFCD3D4();
    }

    else
    {
      v88 = v48;
      v107 = v47;
      v52 = v104;
      sub_18AE7C230(v50, v104, type metadata accessor for GlassMaterialProvider.Configuration);
      v53 = v109;
      sub_18AFCD204();
      v54 = v91;
      sub_18AE8C078(v53, v91);
      v55 = v92;
      v56 = v93;
      v57 = v43;
      if ((*(v92 + 48))(v54, 1, v93) == 1)
      {
        LODWORD(v108) = 5;
      }

      else
      {
        v58 = v90;
        (*(v55 + 32))(v90, v54, v56);
        v59 = v89;
        (*(v55 + 16))(v89, v58, v56);
        sub_18AE96EAC(v59, v114);
        LODWORD(v108) = LOBYTE(v114[0]);
        (*(v55 + 8))(v58, v56);
      }

      v61 = v105;
      v60 = v106;
      v63 = v102;
      v62 = v103;
      v64 = v101;
      sub_18AE7BA80(v109, &qword_1EA99BDA0);
      if (sub_18AFCD434())
      {
        sub_18AFCCCE4();
        v65 = v114[0];
        v66 = v114[1];
        v67 = v115;
        v68 = v100;
        sub_18AE7AF6C(v52, v100, type metadata accessor for GlassMaterialProvider.Configuration);
        v69 = *(v111 + 56);
        v70 = *(v68 + v69);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_18AE91D64(0, *(v70 + 2) + 1, 1, v70);
        }

        v72 = *(v70 + 2);
        v71 = *(v70 + 3);
        if (v72 >= v71 >> 1)
        {
          v70 = sub_18AE91D64((v71 > 1), v72 + 1, 1, v70);
        }

        v73 = v104;
        sub_18AE8BFB4(v104, type metadata accessor for GlassMaterialProvider.Configuration);
        *(v70 + 2) = v72 + 1;
        v74 = &v70[32 * v72];
        *(v74 + 4) = -1;
        *(v74 + 5) = v65;
        *(v74 + 6) = v66;
        *(v74 + 14) = v67;
        v74[60] = 1;
        v75 = v100;
        *(v100 + v69) = v70;
        v52 = v73;
        sub_18AE7C230(v75, v73, type metadata accessor for GlassMaterialProvider.Configuration);
        v61 = v105;
        v60 = v106;
        v63 = v102;
        v62 = v103;
        v64 = v101;
        v57 = v49;
      }

      if (!*(v52 + 8))
      {
        sub_18AFCC3D4();
        (*(v61 + 16))(v63, v62, v60);
        sub_18AFCD214();
        v110 = sub_18AE8C130(&qword_1ED56A7A0, MEMORY[0x1E69818B0]);
        v76 = sub_18AFCDDF4();
        v77 = *(v61 + 8);
        v77(v64, v60);
        if (v76)
        {
          v77(v63, v60);
          v77(v62, v60);
          v78 = 1;
        }

        else
        {
          sub_18AFCD234();
          v79 = sub_18AFCDDF4();
          v77(v64, v60);
          v77(v63, v60);
          v77(v62, v60);
          if (v79)
          {
            v78 = 2;
          }

          else
          {
            v78 = 0;
          }
        }

        *(v52 + 8) = v78;
        v57 = v49;
      }

      v80 = v96;
      sub_18AFCD254();
      sub_18AFB7738(v80, &v113);
      *(v52 + *(v111 + 48)) = v113;
      v81 = v108;
      if (v108 == 5)
      {
        v81 = 0;
      }

      *(v52 + 48) = v81;
      v82 = v99;
      sub_18AE7AF6C(v52, v99, type metadata accessor for GlassMaterialProvider.Configuration);
      sub_18AE7AF6C(v82, v97, type metadata accessor for GlassMaterialProvider);
      sub_18AE8C130(&qword_1ED56A5E8, type metadata accessor for GlassMaterialProvider);
      sub_18AE8C130(&qword_1ED56A5E0, type metadata accessor for GlassMaterialProvider.Resolved);
      sub_18AFCD5E4();
      v83 = v57;
      v84 = v88;
      v85 = v107;
      (*(v88 + 16))(v94, v83, v107);
      v51 = v112;
      sub_18AFCD3D4();
      (*(v84 + 8))(v83, v85);
      sub_18AE8BFB4(v82, type metadata accessor for GlassMaterialProvider);
      sub_18AE8BFB4(v52, type metadata accessor for GlassMaterialProvider.Configuration);
    }
  }

  else
  {
    (*(v38 + 32))(v45, v29, v37);
    (*(v38 + 16))(v43, v45, v37);
    v51 = v112;
    sub_18AFCD3D4();
    (*(v48 + 8))(v45, v37);
  }

  v86 = sub_18AFCD3E4();
  return (*(*(v86 - 8) + 56))(v51, 0, 1, v86);
}

uint64_t sub_18AE8B3A0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v104 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BDC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v89 = &v86 - v3;
  v4 = type metadata accessor for GlassMaterialProvider();
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v90 = &v86 - v7;
  v95 = sub_18AFCDAD4();
  v92 = *(v95 - 1);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFCD3A4();
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BDA8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v97 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v86 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BDC8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v86 - v18;
  v20 = sub_18AFCD354();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v98 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v24 = *(v23 - 1);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v94 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v93 = &v86 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v96 = &v86 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v86 - v32;
  *(v33 + 4) = 0;
  v33[48] = 0;
  v34 = *(v31 + 40);
  v35 = sub_18AFCBB34();
  v36 = *(*(v35 - 8) + 56);
  v99 = v34;
  v37 = &v33[v34];
  v38 = v20;
  v39 = v21;
  v36(v37, 1, 1, v35);
  v33[v23[11]] = 3;
  v33[v23[12]] = 0;
  v40 = &v33[v23[13]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v40[16] = 1;
  *&v33[v23[14]] = MEMORY[0x1E69E7CC0];
  *&v33[v23[15]] = 0;
  v41 = &v33[v23[16]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v41[20] = -1;
  *(v41 + 4) = 0;
  v42 = &v33[v23[17]];
  *v42 = 0;
  v42[4] = 2;
  *&v33[v23[18]] = 0;
  v43 = &v33[v23[19]];
  *v43 = 0;
  *(v43 + 1) = 0;
  sub_18AFCD364();
  v44 = (*(v21 + 48))(v19, 1, v38);
  v102 = v24;
  if (v44 == 1)
  {
    v45 = &qword_1EA99BDC8;
    v46 = v19;
  }

  else
  {
    v47 = *(v21 + 32);
    v48 = v98;
    v47(v98, v19, v38);
    sub_18AFCD334();
    sub_18AE8B3A0(v11);
    v49 = *(v24 + 48);
    if (v49(v16, 1, v23) == 1)
    {
      (*(v39 + 8))(v48, v38);
      v45 = &qword_1EA99BDA8;
      v46 = v16;
    }

    else
    {
      v50 = v16;
      v51 = v96;
      sub_18AE7C230(v50, v96, type metadata accessor for GlassMaterialProvider.Configuration);
      sub_18AFCD324();
      v52 = v97;
      sub_18AE8B3A0(v11);
      if (v49(v52, 1, v23) != 1)
      {
        v64 = v93;
        sub_18AE7C230(v52, v93, type metadata accessor for GlassMaterialProvider.Configuration);
        sub_18AFCD344();
        v66 = v65;
        v67 = _s13ConfigurationV3MixVMa(0);
        v97 = swift_allocBox();
        v69 = v68;
        v95 = type metadata accessor for GlassMaterialProvider.Configuration;
        sub_18AE7AF6C(v51, v68, type metadata accessor for GlassMaterialProvider.Configuration);
        sub_18AE7AF6C(v64, v69 + *(v67 + 20), type metadata accessor for GlassMaterialProvider.Configuration);
        *(v69 + *(v67 + 24)) = v66;
        v70 = v94;
        v71 = sub_18AF4884C(v97 | 0x8000000000000000, v94);
        (*(v100 + 8))(v104, v101, v71);
        sub_18AE8BFB4(v64, type metadata accessor for GlassMaterialProvider.Configuration);
        sub_18AE8BFB4(v51, type metadata accessor for GlassMaterialProvider.Configuration);
        (*(v39 + 8))(v48, v38);
        sub_18AE7BA80(&v33[v99], &qword_1EA99B5F0);
        v72 = v70;
        v73 = v33;
        v74 = v95;
        goto LABEL_22;
      }

      sub_18AE8BFB4(v51, type metadata accessor for GlassMaterialProvider.Configuration);
      (*(v39 + 8))(v48, v38);
      v45 = &qword_1EA99BDA8;
      v46 = v52;
    }
  }

  sub_18AE7BA80(v46, v45);
  sub_18AFCD394();
  v53 = v104;
  v54 = MEMORY[0x18CFEC680](v104, v11);
  v55 = v101;
  v56 = *(v100 + 8);
  v56(v11, v101);
  if (v54)
  {
    if (qword_1ED56A6C8 != -1)
    {
      swift_once();
    }

    v56(v53, v55);
    v57 = qword_1ED56A6D0;
LABEL_19:
    v60 = __swift_project_value_buffer(v23, v57);
    sub_18AE7BA80(&v33[v99], &qword_1EA99B5F0);
    sub_18AE7AF6C(v60, v33, type metadata accessor for GlassMaterialProvider.Configuration);
LABEL_20:
    v62 = v102;
    v61 = v103;
    sub_18AE7AF6C(v33, v103, type metadata accessor for GlassMaterialProvider.Configuration);
    (*(v62 + 56))(v61, 0, 1, v23);
    return sub_18AE8BFB4(v33, type metadata accessor for GlassMaterialProvider.Configuration);
  }

  sub_18AFCD384();
  v58 = MEMORY[0x18CFEC680](v53, v11);
  v56(v11, v55);
  if (v58)
  {
    if (qword_1ED56AA10 != -1)
    {
      swift_once();
    }

    v56(v53, v55);
    v57 = qword_1ED56AA18;
    goto LABEL_19;
  }

  sub_18AFCD374();
  v59 = MEMORY[0x18CFEC680](v53, v11);
  v56(v11, v55);
  if (v59)
  {
    if (qword_1ED56A750 != -1)
    {
      swift_once();
    }

    v56(v53, v55);
    v57 = qword_1ED56A758;
    goto LABEL_19;
  }

  v75 = v90;
  sub_18AFCD304();
  v76 = v92;
  v77 = v95;
  if ((*(v92 + 48))(v75, 1, v95) != 1)
  {
    (*(v76 + 32))(v91, v75, v77);
    sub_18AE8C130(&qword_1EA99BDD0, type metadata accessor for GlassMaterialProvider);
    v81 = v88;
    v80 = v89;
    v82 = v91;
    sub_18AFCDA94();
    v56(v53, v55);
    (*(v76 + 8))(v82, v95);
    if ((*(v87 + 48))(v80, 1, v81) == 1)
    {
      v78 = &qword_1EA99BDC0;
      v79 = v80;
      goto LABEL_27;
    }

    v84 = v80;
    v85 = v86;
    sub_18AE7C230(v84, v86, type metadata accessor for GlassMaterialProvider);
    sub_18AE7BA80(&v33[v99], &qword_1EA99B5F0);
    v74 = type metadata accessor for GlassMaterialProvider.Configuration;
    v72 = v85;
    v73 = v33;
LABEL_22:
    sub_18AE7C230(v72, v73, v74);
    goto LABEL_20;
  }

  v56(v53, v55);
  v78 = &qword_1EA99AF10;
  v79 = v75;
LABEL_27:
  sub_18AE7BA80(v79, v78);
  v83 = v102;
  sub_18AE7BA80(&v33[v99], &qword_1EA99B5F0);
  return (*(v83 + 56))(v103, 1, 1, v23);
}

uint64_t sub_18AE8BFB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18AE8C014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE8C078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE8C0E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18AE8C130(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_18AE8C178@<Q0>(_OWORD *a1@<X8>)
{
  sub_18AFCCE24();
  sub_18AFCCE54();
  sub_18AFCCE34();
  sub_18AFCBCB4();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_18AE8C2E8()
{
  xmmword_1ED56C950 = xmmword_18AFE22F0;
  unk_1ED56C960 = xmmword_18AFE2300;
  xmmword_1ED56C970 = xmmword_18AFE2310;
  unk_1ED56C980 = xmmword_18AFE2320;
  result = 0.0;
  xmmword_1ED56C990 = xmmword_18AFDC150;
  return result;
}

double sub_18AE8C328()
{
  xmmword_1ED56C900 = xmmword_18AFE2330;
  *algn_1ED56C910 = xmmword_18AFE2340;
  xmmword_1ED56C920 = xmmword_18AFE2350;
  unk_1ED56C930 = xmmword_18AFE2360;
  result = 0.0;
  xmmword_1ED56C940 = xmmword_18AFDC150;
  return result;
}

float32x4_t sub_18AE8C368@<Q0>(float32x4_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *&a4 = -*&a2;
  v5 = vdupq_lane_s32(*&a2, 0);
  v6 = vdupq_lane_s32(*&a4, 0);
  v7 = vdupq_lane_s32(*&a3, 0);
  v8 = vmulq_n_f32(vrndaq_f32(vdivq_f32(vbicq_s8(v4[1], vandq_s8(vcgtq_f32(v5, v4[1]), vcgtq_f32(v4[1], v6))), v7)), *&a3);
  *a1 = vmulq_n_f32(vrndaq_f32(vdivq_f32(vbicq_s8(*v4, vandq_s8(vcgtq_f32(v5, *v4), vcgtq_f32(*v4, v6))), v7)), *&a3);
  a1[1] = v8;
  v9 = vmulq_n_f32(vrndaq_f32(vdivq_f32(vbicq_s8(v4[3], vandq_s8(vcgtq_f32(v5, v4[3]), vcgtq_f32(v4[3], v6))), v7)), *&a3);
  a1[2] = vmulq_n_f32(vrndaq_f32(vdivq_f32(vbicq_s8(v4[2], vandq_s8(vcgtq_f32(v5, v4[2]), vcgtq_f32(v4[2], v6))), v7)), *&a3);
  a1[3] = v9;
  result = vmulq_n_f32(vrndaq_f32(vdivq_f32(vbicq_s8(v4[4], vandq_s8(vcgtq_f32(v5, v4[4]), vcgtq_f32(v4[4], v6))), v7)), *&a3);
  a1[4] = result;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.tint(_:color:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 4);
  sub_18AE7AFD4(v4, a3, type metadata accessor for GlassMaterialProvider.Configuration);
  v10 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 56);
  v11 = *(a3 + v10);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18AE91D64(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_18AE91D64((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 16) = v14 + 1;
  v15 = v11 + 32 * v14;
  *(v15 + 32) = a1;
  *(v15 + 40) = v7;
  *(v15 + 48) = v8;
  *(v15 + 56) = v9;
  *(v15 + 60) = 1;
  *(a3 + v10) = v11;
  return result;
}

void sub_18AE8C53C(float a1)
{
  v3 = *v1;
  v2 = *(v1 + 4);
  v4 = sqrt(((v2 - *v1) * (v2 - *v1)));
  v5 = 0.0;
  if (v4 > 0.0000000149011612)
  {
    v6 = sqrt(((a1 - v3) * (a1 - v3)));
    if (v3 > a1)
    {
      v6 = -v6;
    }

    v5 = v6 / v4;
  }

  if ((*(v1 + 32) & 1) == 0 && (*(v1 + 24) & 1) == 0 && v5 > 1.0)
  {
    v7 = *(v1 + 28);
    v8 = v2 + v7;
    if (v2 > (v2 + v7))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = *(v1 + 20);
    if (sqrt(((v8 - v2) * (v8 - v2))) <= 0.0000000149011612)
    {
      if ((*(v1 + 16) & 1) == 0)
      {
LABEL_11:
        if (*(v1 + 12) <= v9)
        {
          return;
        }

        goto LABEL_18;
      }
    }

    else if ((*(v1 + 16) & 1) == 0)
    {
      goto LABEL_11;
    }

    if (v9 > *(v1 + 8))
    {
LABEL_19:
      __break(1u);
    }
  }
}

size_t sub_18AE8C700(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_18AE8C904()
{
  result = qword_1ED56AD50;
  if (!qword_1ED56AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56AD50);
  }

  return result;
}

unint64_t sub_18AE8C95C()
{
  result = qword_1ED56AD48;
  if (!qword_1ED56AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56AD48);
  }

  return result;
}

void sub_18AE8C9B0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  v20[4] = *(v0 + 88);
  v20[5] = v2;
  v3 = *(v0 + 136);
  v20[6] = *(v0 + 120);
  v20[7] = v3;
  v4 = *(v0 + 40);
  v20[0] = *(v0 + 24);
  v20[1] = v4;
  v5 = *(v0 + 72);
  v20[2] = *(v0 + 56);
  v20[3] = v5;
  v6 = *(v0 + 156);
  v21 = v1;
  v22[0] = v6;
  *(v22 + 5) = *(v0 + 161);
  v7 = 0.0;
  if (sub_18AF4FB80(v20) == 1)
  {
    v8 = 0.0;
  }

  else
  {
    v15 = v1 == 0.0;
    v8 = 0.0;
    if (!v15)
    {
      sub_18AF6C6A0();
      v8 = fmin(v10, 0.0);
      v7 = v9 < 0.0 ? 0.0 : v9;
      if (v8 > v7)
      {
        goto LABEL_54;
      }
    }
  }

  if ((*(v0 + 248) & 1) == 0 && *(v0 + 244) != 0.0 && *(v0 + 176) != 0.0)
  {
    v11 = COERCE_DOUBLE(sub_18AF6C730());
    if ((v13 & 1) == 0)
    {
      if (v8 > v11)
      {
        v8 = v11;
      }

      if (v7 <= v12)
      {
        v7 = v12;
      }

      if (v8 > v7)
      {
        goto LABEL_51;
      }
    }
  }

  if ((*(v0 + 308) & 1) == 0)
  {
    v14 = (*(v0 + 280) & 0x7FFFFFFFFFFFFFFFLL) != 0;
    if ((*(v0 + 272) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v14 = 0;
    }

    if ((*(v0 + 304) & 0x7FFFFFFF) == 0)
    {
      v14 = 0;
    }

    v15 = (*(v0 + 256) & 0x7FFFFFFFFFFFFFFFLL) == 0 || (*(v0 + 264) & 0x7FFFFFFFFFFFFFFFLL) == 0;
    if (!v15 || v14)
    {
      sub_18AE8CCB8();
      if (v16 < v8)
      {
        v8 = v16;
      }

      if (v7 <= v17)
      {
        v7 = v17;
      }

      if (v8 > v7)
      {
        goto LABEL_52;
      }
    }
  }

  if ((*(v0 + 496) & 0xFF00) != 0x200 && COERCE_FLOAT(*(v0 + 416)) != 0.0 && *(v0 + 392) != 0.0 && *(v0 + 400) != 0.0)
  {
    sub_18AF6C7A0();
    if (v18 < v8)
    {
      v8 = v18;
    }

    if (v7 <= v19)
    {
      v7 = v19;
    }

    if (v8 > v7)
    {
      goto LABEL_53;
    }
  }

  if ((*(v0 + 385) & 1) == 0 && *(v0 + 312) != 0.0)
  {
    if (v8 > -1.0)
    {
      v8 = -1.0;
    }

    if (v7 <= 1.0)
    {
      v7 = 1.0;
    }

    if (v8 > v7)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }
  }
}

void sub_18AE8CCB8()
{
  v1 = fabs(*v0);
  v2 = fabs(*(v0 + 16));
  if (v2 > v1)
  {
    v1 = v2;
  }

  if (v1 < 0.0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v3 = -v1;
  if (*(v0 + 48) == 0.0)
  {
    return;
  }

  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  if (v4 > v5)
  {
    return;
  }

  v6 = v5 + 1.0;
  if (v4 > v5 + 1.0)
  {
    goto LABEL_14;
  }

  if (v4 < v3)
  {
    v3 = *(v0 + 32);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  if (v3 > v6)
  {
    goto LABEL_15;
  }
}

id sub_18AE8D120()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_18AFCBF64();
  v2 = sub_18AFCDE04();

  _CAFilterSetInput(v1, v2, 54);

  LOBYTE(v2) = v0[92];
  v3 = sub_18AFCE034();
  _CAFilterSetInput(v1, v3, 50);

  v4 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v4, 42);

  v5 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v5, 49);

  v6 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v6, 48);

  v7 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v7, 43);

  v8 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v8, 52);

  v9 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v9, 44);

  v10 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v10, 47);

  v11 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v11, 46);

  if (v2)
  {
    v12 = 0;
  }

  else
  {
    v60 = sub_18AFCCDD4();
    type metadata accessor for CGColor(0);
    v12 = sub_18AFCE254();
  }

  _CAFilterSetInput(v1, v12, 45);
  swift_unknownObjectRelease();
  v13 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v13, 51);

  v14 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v14, 53);

  v15 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v15, 21);

  v16 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v16, 11);

  v17 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v17, 12);

  v18 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v18, 13);

  v19 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v19, 14);

  v20 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v20, 15);

  v21 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v21, 16);

  v22 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v22, 17);

  v23 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v23, 18);

  v24 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v24, 19);

  v25 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v25, 20);

  v26 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v26, 29);

  v27 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v27, 30);

  v28 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v28, 32);

  v29 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v29, 33);

  v30 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v30, 34);

  v31 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v31, 35);

  v32 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v32, 36);

  v33 = v0[308];
  v34 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v34, 28);

  v35 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v35, 24);

  v36 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v36, 27);

  v37 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v37, 26);

  if (v33)
  {
    v38 = 0;
  }

  else
  {
    v61 = sub_18AFCCDD4();
    type metadata accessor for CGColor(0);
    v38 = sub_18AFCE254();
  }

  _CAFilterSetInput(v1, v38, 25);
  swift_unknownObjectRelease();
  v39 = v0[416];
  v40 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v40, 0);

  v41 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v41, 9);

  v42 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v42, 1);

  v43 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v43, 10);

  v44 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v44, 7);

  v45 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v45, 8);

  v46 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v46, 2);

  v47 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v47, 5);

  v48 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v48, 4);

  if (v39)
  {
    v49 = 0;
  }

  else
  {
    v62 = sub_18AFCCDD4();
    type metadata accessor for CGColor(0);
    v49 = sub_18AFCE254();
  }

  _CAFilterSetInput(v1, v49, 3);
  swift_unknownObjectRelease();
  v50 = sub_18AFCDEC4();
  _CAFilterSetInput(v1, v50, 6);

  v51 = sub_18AFCDEC4();
  _CAFilterSetInput(v1, v51, 39);

  v52 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v52, 31);

  v53 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v53, 37);

  v54 = sub_18AFCBA04();
  _CAFilterSetInput(v1, v54, 38);

  v55 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v55, 40);

  v56 = sub_18AFCDFA4();
  _CAFilterSetInput(v1, v56, 41);

  if ((sub_18AF4FBC0() & 0x100000000) == 0)
  {
    v57 = sub_18AFCDFA4();
    _CAFilterSetInput(v1, v57, 22);

    v58 = sub_18AFCDEC4();
    _CAFilterSetInput(v1, v58, 23);
  }

  return v1;
}

BOOL sub_18AE8DA9C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_18AE8DAF4(v4, __dst);
}

BOOL sub_18AE8DAF4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = 0;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))))
  {
    v10 = *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48);
    if (!v10 && *(a1 + 56) == *(a2 + 56))
    {
      v58 = v7;
      v59 = v6;
      v60 = v5;
      v61 = v4;
      v62 = v2;
      v63 = v3;
      v12 = *(a1 + 144);
      v13 = *(a1 + 136);
      v14 = *(a2 + 144);
      v15 = *(a2 + 136);
      v16 = *(a1 + 112);
      v56[2] = *(a1 + 96);
      v57[0] = v16;
      *(v57 + 13) = *(a1 + 125);
      v17 = *(a1 + 80);
      v18 = a1;
      v56[0] = *(a1 + 64);
      v56[1] = v17;
      v19 = *(a2 + 64);
      v20 = *(a2 + 80);
      v21 = *(a2 + 96);
      v22 = *(a2 + 112);
      *(v55 + 13) = *(a2 + 125);
      v54[2] = v21;
      v55[0] = v22;
      v54[0] = v19;
      v54[1] = v20;
      v24 = sub_18AE8DE28(v56, v54);
      result = 0;
      if ((v24 & 1) != 0 && v13 == v15 && v12 == v14)
      {
        v25 = *(v18 + 168);
        v26 = *(v18 + 200);
        v52[2] = *(v18 + 184);
        v52[3] = v26;
        v53 = *(v18 + 216);
        v52[0] = *(v18 + 152);
        v52[1] = v25;
        v27 = *(a2 + 168);
        v28 = *(a2 + 200);
        v50[2] = *(a2 + 184);
        v50[3] = v28;
        v51 = *(a2 + 216);
        v50[0] = *(a2 + 152);
        v50[1] = v27;
        if (!sub_18AE90DEC(v52, v50) || *(v18 + 224) != *(a2 + 224))
        {
          return 0;
        }

        result = 0;
        if (*(v18 + 232) != *(a2 + 232))
        {
          return result;
        }

        if (*(v18 + 240) != *(a2 + 240))
        {
          return result;
        }

        if (*(v18 + 248) != *(a2 + 248))
        {
          return result;
        }

        result = 0;
        if (*(v18 + 256) != *(a2 + 256) || *(v18 + 264) != *(a2 + 264) || *(v18 + 272) != *(a2 + 272))
        {
          return result;
        }

        if (*(v18 + 276) != *(a2 + 276))
        {
          return 0;
        }

        v29 = *(v18 + 328);
        v48[2] = *(v18 + 312);
        v49[0] = v29;
        *(v49 + 13) = *(v18 + 341);
        v30 = *(v18 + 296);
        v48[0] = *(v18 + 280);
        v48[1] = v30;
        v31 = *(a2 + 328);
        v46[2] = *(a2 + 312);
        v47[0] = v31;
        *(v47 + 13) = *(a2 + 341);
        v32 = *(a2 + 296);
        v46[0] = *(a2 + 280);
        v46[1] = v32;
        if ((sub_18AE8DE28(v48, v46) & 1) == 0)
        {
          return 0;
        }

        v33 = *(v18 + 432);
        v44[4] = *(v18 + 416);
        v45[0] = v33;
        v34 = *(v18 + 368);
        v44[0] = *(v18 + 352);
        v44[1] = v34;
        v35 = *(v18 + 400);
        v44[2] = *(v18 + 384);
        v44[3] = v35;
        *(v45 + 10) = *(v18 + 442);
        v36 = *(a2 + 368);
        v42[0] = *(a2 + 352);
        v42[1] = v36;
        v37 = *(a2 + 384);
        v38 = *(a2 + 400);
        *&v43[10] = *(a2 + 442);
        v39 = *(a2 + 432);
        v42[4] = *(a2 + 416);
        *v43 = v39;
        v42[2] = v37;
        v42[3] = v38;
        if ((sub_18AE8DFB8(v44, v42) & 1) == 0)
        {
          return 0;
        }

        v40 = *(v18 + 464);
        v41 = *(a2 + 464);
        result = 0;
        if (*&v40 == *&v41 && *(&v40 + 1) == *(&v41 + 1) && *(v18 + 472) == *(a2 + 472))
        {
          result = 0;
          if (*(v18 + 480) == *(a2 + 480) && *(v18 + 488) == *(a2 + 488))
          {
            return *(v18 + 496) == *(a2 + 496);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_18AE8DE28(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 28))
    {
      return 0;
    }

    v2 = a2;
    v3 = a1;
    v4 = sub_18AFCCE14();
    a2 = v2;
    v5 = v4;
    a1 = v3;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a2 + 48);
  if ((*(a1 + 48) & 1) == 0)
  {
    if (*(a2 + 48))
    {
      return 0;
    }

    v7 = a2;
    v8 = a1;
    v9 = sub_18AFCCE14();
    a2 = v7;
    v6 = v9;
    a1 = v8;
  }

  if (v6)
  {
    if (*(a1 + 68))
    {
      if ((*(a2 + 68) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 68) & 1) != 0 || (sub_18AFCCE14() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}