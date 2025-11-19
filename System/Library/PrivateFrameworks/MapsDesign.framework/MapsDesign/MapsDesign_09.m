void sub_213EB23EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_213F4D290() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v9 + 1;
  v15 = v9 + 1 + v12;
  v16 = (v15 & ~v12) + *(v10 + 64);
  if (a3 <= v13)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v13 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v11 > 0xFE)
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v12, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v14 <= 3)
    {
      v24 = ~(-1 << (8 * v14));
    }

    else
    {
      v24 = -1;
    }

    if (v9 != -1)
    {
      v25 = v24 & (a2 - 255);
      if (v14 <= 3)
      {
        v26 = v9 + 1;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v14);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }

      else if (v26 == 1)
      {
        *a1 = v25;
      }

      else
      {
        *a1 = v25;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

unint64_t sub_213EB270C()
{
  result = qword_27C8FB058;
  if (!qword_27C8FB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB058);
  }

  return result;
}

uint64_t sub_213EB27A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v18 - v14;
  v13();
  sub_213DBFEEC(v12, a4, a6);
  v16 = *(v8 + 8);
  v16(v12, a4);
  sub_213DBFEEC(v15, a4, a6);
  return (v16)(v15, a4);
}

uint64_t sub_213EB28DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFlow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213EB2940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFlow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213EB29A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(*(type metadata accessor for TagFlow() - 8) + 80);

  return sub_213EB185C(a1, a2, a3);
}

uint64_t sub_213EB2A40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t VerticalSpacing.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

double VerticalSpacing.body.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8) == 1)
  {
    v3 = qword_213F5E600[*v1];
  }

  sub_213F4EEE0();
  sub_213F4D0C0();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  result = *&v9;
  *(a1 + 48) = v9;
  return result;
}

double sub_213EB2B90@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8) == 1)
  {
    v3 = qword_213F5E600[*v1];
  }

  sub_213F4EEE0();
  sub_213F4D0C0();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  result = *&v9;
  *(a1 + 48) = v9;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VerticalSpacing.SpacingType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VerticalSpacing(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for VerticalSpacing.SpacingType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_213EB2CF0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213EB2D0C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_213EB2D3C()
{
  result = qword_2811831B8;
  if (!qword_2811831B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB078, &qword_213F5E5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831B8);
  }

  return result;
}

__n128 BottomAccessoryViewModel.init(type:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  sub_213F4CB30();
  v5 = (a2 + *(type metadata accessor for BottomAccessoryViewModel(0) + 20));
  result = v7;
  *v5 = v7;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

uint64_t BottomAccessoryViewModel.axIDString.getter()
{
  v1 = *(v0 + *(type metadata accessor for BottomAccessoryViewModel(0) + 20) + 24) >> 6;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      return 1702129486;
    }

    else
    {
      return 0x736F746F6850;
    }
  }

  else if (v1)
  {
    return 0x736E6F69746341;
  }

  else
  {
    return 0x656D656E69666552;
  }
}

uint64_t BottomAccessoryViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BottomAccessoryViewModel.id.setter(uint64_t a1)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_213EB3044()
{
  result = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_213EB30D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 25))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_213EB312C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_213EB3204()
{
  result = type metadata accessor for BottomAccessoryViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213EB328C@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v2 = sub_213F4DF80();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v94 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_213F4DFB0();
  v96 = *(v97 - 8);
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_213F4DF20();
  v92 = *(v93 - 8);
  v7 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v101 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_213F4DD70();
  v77 = *(v78 - 8);
  v9 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_213F4D290();
  v13 = *(v12 - 8);
  v102 = v12;
  v103 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v100 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v76 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB150, &qword_213F5EB80);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v76 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB158, &qword_213F5EB88);
  v80 = *(v82 - 8);
  v24 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v26 = &v76 - v25;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB160, &qword_213F5EB90);
  v83 = *(v86 - 8);
  v27 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v79 = &v76 - v28;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB168, &qword_213F5EB98);
  v84 = *(v88 - 8);
  v29 = *(v84 + 64);
  MEMORY[0x28223BE20](v88);
  v81 = &v76 - v30;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB170, &qword_213F5EBA0);
  v90 = *(v91 - 8);
  v31 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v76 - v32;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB178, &qword_213F5EBA8);
  v33 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v87 = &v76 - v34;
  sub_213F4E010();
  v104 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB180, &qword_213F5EBB0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB188, &qword_213F5EBB8);
  v36 = sub_213EB8F4C();
  v105 = v35;
  v106 = v36;
  swift_getOpaqueTypeConformance2();
  sub_213F4CE50();
  LOBYTE(v35) = sub_213F4E040();
  v37 = sub_213F4E090();
  sub_213F4E090();
  if (sub_213F4E090() != v35)
  {
    v37 = sub_213F4E090();
  }

  v98 = v1;
  sub_213DBBD08(v18);
  v38 = v100;
  sub_213F4D280();
  sub_213F4D270();
  v39 = v103 + 8;
  v40 = *(v103 + 8);
  v41 = v38;
  v42 = v102;
  v40(v41, v102);
  v103 = v39;
  v40(v18, v42);
  sub_213F4DD60();
  v43 = sub_213DE3AE4(&qword_27C8FB1A8, &qword_27C8FB150, &qword_213F5EB80);
  MEMORY[0x216051900](v37, 0x4030000000000000, 0, v11, v19, v43);
  (*(v77 + 8))(v11, v78);
  (*(v20 + 8))(v23, v19);
  sub_213F4DBF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9540, &qword_213F5DE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  v45 = sub_213F4E030();
  *(inited + 32) = v45;
  v46 = sub_213F4E010();
  *(inited + 33) = v46;
  sub_213F4E020();
  sub_213F4E020();
  if (sub_213F4E020() != v45)
  {
    sub_213F4E020();
  }

  sub_213F4E020();
  if (sub_213F4E020() != v46)
  {
    sub_213F4E020();
  }

  v105 = v19;
  v106 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v79;
  v49 = v101;
  v50 = v82;
  sub_213F4E590();
  (*(v92 + 8))(v49, v93);
  (*(v80 + 8))(v26, v50);
  sub_213F4DF70();
  v51 = v95;
  sub_213F4DF90();
  v105 = v50;
  v106 = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = MEMORY[0x277CDE478];
  v54 = v81;
  v55 = v86;
  v56 = v97;
  sub_213F4E670();
  (*(v96 + 8))(v51, v56);
  (*(v83 + 8))(v48, v55);
  v105 = v55;
  v106 = v56;
  v107 = v52;
  v108 = v53;
  swift_getOpaqueTypeConformance2();
  v57 = v89;
  v58 = v88;
  sub_213F4E5E0();
  (*(v84 + 8))(v54, v58);
  LOBYTE(v58) = sub_213F4E070();
  sub_213DBBD08(v18);
  v59 = v100;
  sub_213F4D280();
  sub_213F4D270();
  v60 = v59;
  v61 = v102;
  v40(v60, v102);
  v40(v18, v61);
  sub_213F4CDA0();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v87;
  (*(v90 + 32))(v87, v57, v91);
  v71 = &v70[*(v85 + 36)];
  *v71 = v58;
  *(v71 + 1) = v63;
  *(v71 + 2) = v65;
  *(v71 + 3) = v67;
  *(v71 + 4) = v69;
  v71[40] = 0;
  v72 = v70;
  v73 = v99;
  sub_213DE2B44(v72, v99, &qword_27C8FB178, &qword_213F5EBA8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB1B0, &qword_213F5EBD0);
  v75 = v73 + *(result + 36);
  *v75 = 0xD000000000000019;
  *(v75 + 8) = 0x8000000213F5E8E0;
  *(v75 + 16) = 11;
  return result;
}

uint64_t sub_213EB3DE4(uint64_t a1)
{
  v2 = sub_213F4DCB0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB188, &qword_213F5EBB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = *(a1 + *(type metadata accessor for RefinementBottomAccessory(0) + 32));
  v11 = a1;

  sub_213F4D8A0();
  v12 = 0;
  sub_213EB7F70(&qword_281182990, MEMORY[0x277CE0428]);
  sub_213F4F8D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB1B8, &qword_213F5EBD8);
  sub_213EB900C();
  sub_213F4EFA0();
  *&v7[*(v4 + 36)] = 257;
  sub_213EB8F4C();
  sub_213F4E600();
  return sub_213DE36FC(v7, &qword_27C8FB188, &qword_213F5EBB8);
}

uint64_t sub_213EB3FDC(uint64_t a1)
{
  v2 = type metadata accessor for RefinementBottomAccessory(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v11[5] = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 36));
  swift_getKeyPath();
  sub_213EB8190(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RefinementBottomAccessory);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_213EB8B88(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for RefinementBottomAccessory);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA8A8, &qword_213F5D6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB1E8, &qword_213F5EC20);
  sub_213DE3AE4(&qword_281182480, &qword_27C8FA8A8, &qword_213F5D6B0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB1C8, &qword_213F5EBE0);
  v8 = sub_213EB90E8();
  v9 = sub_213E4FC2C();
  v11[1] = v7;
  v11[2] = &type metadata for ScalingGridButton;
  v11[3] = v8;
  v11[4] = v9;
  swift_getOpaqueTypeConformance2();
  return sub_213F4ECC0();
}

uint64_t sub_213EB4214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = type metadata accessor for RefinementBottomAccessory(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB1C8, &qword_213F5EBE0);
  v8 = *(*(v19[0] - 8) + 64);
  MEMORY[0x28223BE20](v19[0]);
  v10 = v19 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  sub_213EB8190(a2, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RefinementBottomAccessory);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_213EB8B88(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for RefinementBottomAccessory);
  v17 = (v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v12;
  v17[1] = v11;
  v17[2] = v13;
  v17[3] = v14;
  v19[4] = v12;
  v19[5] = v11;
  v19[6] = v13;
  v19[7] = v14;
  v19[8] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB1F0, &qword_213F5EC28);
  sub_213EB92F0();
  sub_213F4EB00();
  *&v10[*(v19[0] + 36)] = sub_213F4DD90();
  sub_213EB90E8();
  sub_213E4FC2C();
  sub_213F4E3C0();
  return sub_213DE36FC(v10, &qword_27C8FB1C8, &qword_213F5EBE0);
}

uint64_t sub_213EB4478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4D7F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + *(type metadata accessor for RefinementBottomAccessory(0) + 24);
  v13 = *v11;
  v12 = *(v11 + 8);
  if (*(v11 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v14 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213EB8B1C();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  v17 = a2;
  v18 = a3;
  v19 = 3;

  v13(&v17);

  return sub_213EB8F2C(v17, v18, v19);
}

uint64_t sub_213EB4630@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v94 = a3;
  v95 = a4;
  v93 = sub_213F4D290();
  v92 = *(v93 - 8);
  v6 = *(v92 + 64);
  v7 = MEMORY[0x28223BE20](v93);
  v91 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v78 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9228, &unk_213F5A640);
  v10 = *(*(v85 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v85);
  v84 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v78 - v13;
  v14 = sub_213F4D390();
  v98 = *(v14 - 8);
  v15 = *(v98 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v97 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v96 = &v78 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9230, &qword_213F57250);
  v19 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v78 - v20;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB218, &unk_213F5EC38);
  v21 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v88 = &v78 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB208, &qword_213F5EC30);
  v23 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v89 = &v78 - v24;
  *&v99 = a1;
  *(&v99 + 1) = a2;
  sub_213DBC9EC();

  v25 = sub_213F4E310();
  v27 = v26;
  v29 = v28;
  sub_213F4E0D0();
  v30 = sub_213F4E2E0();
  v32 = v31;
  v34 = v33;

  sub_213DBCA40(v25, v27, v29 & 1);
  v35 = v96;

  sub_213F4E170();
  v36 = sub_213F4E2A0();
  v38 = v37;
  LOBYTE(v25) = v39;
  v41 = v40;
  sub_213DBCA40(v30, v32, v34 & 1);

  v80 = v36;
  *&v99 = v36;
  *(&v99 + 1) = v38;
  v79 = v38;
  v42 = v25 & 1;
  LOBYTE(v100) = v25 & 1;
  *(&v100 + 1) = v41;
  v43 = v98;
  v44 = *(v98 + 104);
  v44(v35, *MEMORY[0x277CDF9E8], v14);
  v45 = v97;
  v44(v97, *MEMORY[0x277CDF998], v14);
  v46 = v45;
  sub_213EB7F70(&qword_281183490, MEMORY[0x277CDFA28]);
  result = sub_213F4F1E0();
  if (result)
  {
    v78 = v41;
    v48 = *(v43 + 32);
    v49 = v81;
    v48(v81, v35, v14);
    v50 = v85;
    v48((v49 + *(v85 + 48)), v46, v14);
    v51 = v84;
    sub_213DE3164(v49, v84, &qword_27C8F9228, &unk_213F5A640);
    v52 = *(v50 + 48);
    v53 = v82;
    v48(v82, v51, v14);
    LODWORD(v97) = v42;
    v54 = *(v43 + 8);
    v54(v51 + v52, v14);
    sub_213DE2B44(v49, v51, &qword_27C8F9228, &unk_213F5A640);
    v48((v53 + *(v83 + 36)), (v51 + *(v50 + 48)), v14);
    v54(v51, v14);
    sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250);
    v55 = v88;
    sub_213F4E570();
    sub_213DE36FC(v53, &qword_27C8F9230, &qword_213F57250);
    sub_213DBCA40(v80, v79, v97);

    v56 = v90;
    v57 = v94;
    sub_213DBBD08(v90);
    v58 = v91;
    sub_213F4D280();
    sub_213F4D270();
    v59 = *(v92 + 8);
    v60 = v93;
    v59(v58, v93);
    v59(v56, v60);
    LOBYTE(v53) = sub_213F4E050();
    sub_213F4CDA0();
    v61 = v55 + *(v86 + 36);
    *v61 = v53;
    *(v61 + 8) = v62;
    *(v61 + 16) = v63;
    *(v61 + 24) = v64;
    *(v61 + 32) = v65;
    *(v61 + 40) = 0;
    sub_213DBBD08(v56);
    sub_213F4D280();
    sub_213F4D270();
    v59(v58, v60);
    v59(v56, v60);
    sub_213F4EEE0();
    sub_213F4D4E0();
    v66 = v89;
    sub_213DE2B44(v55, v89, &qword_27C8FB218, &unk_213F5EC38);
    v67 = (v66 + *(v87 + 36));
    v68 = v104;
    v67[4] = v103;
    v67[5] = v68;
    v67[6] = v105;
    v69 = v100;
    *v67 = v99;
    v67[1] = v69;
    v70 = v102;
    v67[2] = v101;
    v67[3] = v70;
    v71 = sub_213F4EEE0();
    v73 = v72;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB1F0, &qword_213F5EC28);
    v75 = v95;
    v76 = v95 + *(v74 + 36);
    sub_213EB4EBC(v57, v76);
    v77 = (v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB228, &unk_213F5EC48) + 36));
    *v77 = v71;
    v77[1] = v73;
    return sub_213DE2B44(v66, v75, &qword_27C8FB208, &qword_213F5EC30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213EB4EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_213F4CEA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v31 = sub_213F4EF90();
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v31);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB230, &qword_213F5EC58);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_213F4D950();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  v22 = sub_213F4DD90();
  v23 = &v19[*(v16 + 44)];
  *v23 = v22;
  *(v23 + 1) = 1031127695;
  v24 = a1 + *(type metadata accessor for RefinementBottomAccessory(0) + 20);
  sub_213EA8894(v10);
  (*(v4 + 104))(v8, *MEMORY[0x277CDF3D0], v3);
  LOBYTE(v24) = sub_213F4CE90();
  v25 = *(v4 + 8);
  v25(v8, v3);
  v25(v10, v3);
  v26 = MEMORY[0x277CE13B0];
  if ((v24 & 1) == 0)
  {
    v26 = MEMORY[0x277CE13B8];
  }

  v27 = v31;
  (*(v11 + 104))(v14, *v26, v31);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB238, &qword_213F5EC60);
  v29 = v32;
  (*(v11 + 32))(v32 + *(v28 + 36), v14, v27);
  return sub_213DE2B44(v19, v29, &qword_27C8FB230, &qword_213F5EC58);
}

uint64_t sub_213EB51D8@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_213F4D290();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v8 = type metadata accessor for ActionsBottomAccessory(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = type metadata accessor for ActionButtonLayout();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB240, &qword_213F5EC68);
  v17 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v19 = &v43 - v18;
  v20 = *(v1 + *(v9 + 32));
  sub_213EB8190(v1, &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionsBottomAccessory);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_213EB8B88(&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ActionsBottomAccessory);
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  *(v16 + *(v13 + 28)) = v20;
  v23 = (v16 + *(v13 + 32));
  *v23 = sub_213EB9680;
  v23[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;

  LOBYTE(v11) = sub_213F4E040();
  *(inited + 32) = v11;
  v25 = sub_213F4E070();
  *(inited + 33) = v25;
  v26 = sub_213F4E090();
  sub_213F4E090();
  if (sub_213F4E090() != v11)
  {
    v26 = sub_213F4E090();
  }

  sub_213F4E090();
  if (sub_213F4E090() != v25)
  {
    v26 = sub_213F4E090();
  }

  sub_213DBBD08(v7);
  v27 = v44;
  sub_213F4D280();
  sub_213F4D270();
  v28 = *(v45 + 8);
  v29 = v27;
  v30 = v46;
  v28(v29, v46);
  v28(v7, v30);
  sub_213F4CDA0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_213EB8B88(v16, v19, type metadata accessor for ActionButtonLayout);
  v39 = &v19[*(v43 + 36)];
  *v39 = v26;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = v47;
  sub_213DE2B44(v19, v47, &qword_27C8FB240, &qword_213F5EC68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB248, &unk_213F5EC70);
  v42 = v40 + *(result + 36);
  *v42 = 0xD000000000000016;
  *(v42 + 8) = 0x8000000213F5E8C0;
  *(v42 + 16) = 11;
  return result;
}

uint64_t sub_213EB5650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4D7F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 + *(type metadata accessor for ActionsBottomAccessory(0) + 20);
  v13 = *v11;
  v12 = *(v11 + 8);
  if (*(v11 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v14 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213EB8B1C();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  v17 = a1;
  v18 = a2;
  v19 = 2;

  v13(&v17);

  return sub_213EB8F2C(v17, v18, v19);
}

uint64_t sub_213EB580C@<X0>(uint64_t *a1@<X8>)
{
  v82 = a1;
  v2 = sub_213F4D290();
  v80 = *(v2 - 8);
  v81 = v2;
  v3 = *(v80 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v78 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v77 = &v70 - v6;
  v7 = type metadata accessor for NoteBottomAccessory(0);
  v74 = *(v7 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v7);
  v75 = v9;
  v76 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213F4CB60();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_213F4F210();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v70 - v18;
  v20 = type metadata accessor for FadingLabelViewModel(0);
  v21 = *(*(v20 - 1) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v72 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v70 - v24;
  v73 = v7;
  v26 = *(v7 + 24);
  v79 = v1;
  v27 = (v1 + v26);
  v28 = v27[1];
  v71 = *v27;

  sub_213F4F200();
  (*(v13 + 16))(v17, v19, v12);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v29 = qword_281182518;
  sub_213F4CB50();
  v30 = sub_213F4F260();
  v32 = v31;
  (*(v13 + 8))(v19, v12);
  v33 = [objc_opt_self() preferredFontForTextStyle_];
  v34 = sub_213F4E920();
  v35 = v79;
  v36 = v79 + *(v73 + 7);
  v37 = *v36;
  v38 = *(v36 + 8);
  sub_213F4CB30();
  v39 = &v25[v20[5]];
  *v39 = v71;
  *(v39 + 1) = v28;
  *&v25[v20[6]] = MEMORY[0x277D84F90];
  *&v25[v20[7]] = 3;
  v40 = &v25[v20[8]];
  *v40 = v30;
  v40[1] = v32;
  *&v25[v20[9]] = v33;
  *&v25[v20[10]] = v34;
  v41 = &v25[v20[11]];
  *v41 = v37;
  v41[8] = v38;
  v73 = type metadata accessor for FadingLabelViewModel;
  v42 = v72;
  sub_213EB8190(v25, v72, type metadata accessor for FadingLabelViewModel);
  v43 = v76;
  sub_213EB8190(v35, v76, type metadata accessor for NoteBottomAccessory);
  v44 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v45 = swift_allocObject();
  sub_213EB8B88(v43, v45 + v44, type metadata accessor for NoteBottomAccessory);
  v46 = v82;
  FadingLabelView.init(model:tapHandler:)(v42, sub_213EB8B28, v45, v82);
  LOBYTE(v44) = sub_213F4E040();
  v47 = v77;
  sub_213DBBD08(v77);
  v48 = v78;
  sub_213F4D280();
  sub_213F4D270();
  v49 = v81;
  v50 = *(v80 + 8);
  v50(v48, v81);
  v50(v47, v49);
  sub_213F4CDA0();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0C0, &qword_213F5EA68) + 36);
  *v59 = v44;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  LOBYTE(v44) = sub_213F4E070();
  sub_213DBBD08(v47);
  sub_213F4D280();
  sub_213F4D270();
  v50(v48, v49);
  v50(v47, v49);
  sub_213F4CDA0();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_213EB81F8(v25, v73);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0C8, &qword_213F5EA70);
  v69 = v46 + *(result + 36);
  *v69 = v44;
  *(v69 + 1) = v61;
  *(v69 + 2) = v63;
  *(v69 + 3) = v65;
  *(v69 + 4) = v67;
  v69[40] = 0;
  return result;
}

uint64_t sub_213EB5E54(uint64_t a1)
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for NoteBottomAccessory(0) + 20);
  v9 = *v7;
  v8 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v10 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213EB8B1C();
    (*(v3 + 8))(v6, v2);
    v9 = v12;
  }

  v12 = xmmword_213F5E620;
  v13 = 4;
  v9(&v12);
}

uint64_t sub_213EB5FF0@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for PhotosBottomAccessory(0);
  v3 = v2 - 8;
  v41 = *(v2 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_213F4D290();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0D0, &qword_213F5EA78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v40 - v15;
  sub_213DBBD08(v12);
  sub_213F4D280();
  sub_213F4D270();
  v17 = *(v6 + 8);
  v17(v10, v5);
  v43 = v6 + 8;
  v44 = v5;
  v42 = v17;
  v17(v12, v5);
  *v16 = sub_213F4D8A0();
  *(v16 + 1) = 0x4020000000000000;
  v16[16] = 0;
  v40[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0D8, &qword_213F5EA80) + 44);
  v51 = *(v1 + *(v3 + 32));
  v40[1] = swift_getKeyPath();
  v45 = v1;
  sub_213EB8190(v1, v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosBottomAccessory);
  v18 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v19 = swift_allocObject();
  sub_213EB8B88(v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PhotosBottomAccessory);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0E0, &qword_213F5EAA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0E8, &qword_213F5EAB0);
  sub_213DE3AE4(&qword_27C8FB0F0, &qword_27C8FB0E0, &qword_213F5EAA8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB0F8, &qword_213F5EAB8);
  v21 = sub_213DE3AE4(&qword_27C8FB100, &qword_27C8FB0F8, &qword_213F5EAB8);
  v22 = sub_213E2EE14();
  v47 = v20;
  v48 = &type metadata for ScalingTile;
  v49 = v21;
  v50 = v22;
  swift_getOpaqueTypeConformance2();
  sub_213F4ECC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  v24 = sub_213F4E040();
  *(inited + 32) = v24;
  v25 = sub_213F4E070();
  *(inited + 33) = v25;
  v26 = sub_213F4E090();
  sub_213F4E090();
  if (sub_213F4E090() != v24)
  {
    v26 = sub_213F4E090();
  }

  sub_213F4E090();
  if (sub_213F4E090() != v25)
  {
    v26 = sub_213F4E090();
  }

  sub_213DBBD08(v12);
  sub_213F4D280();
  sub_213F4D270();
  v27 = v44;
  v28 = v42;
  v42(v10, v44);
  v28(v12, v27);
  sub_213F4CDA0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v46;
  sub_213DE2B44(v16, v46, &qword_27C8FB0D0, &qword_213F5EA78);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB108, &qword_213F5EAC8);
  v39 = v37 + *(result + 36);
  *v39 = v26;
  *(v39 + 8) = v30;
  *(v39 + 16) = v32;
  *(v39 + 24) = v34;
  *(v39 + 32) = v36;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_213EB6538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosBottomAccessory(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0F8, &qword_213F5EAB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-v11];
  sub_213EB8190(a2, v7, type metadata accessor for PhotosBottomAccessory);
  sub_213DE3164(a1, v22, &qword_27C8FAF70, &qword_213F5E2B0);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  sub_213EB8B88(v7, v15 + v13, type metadata accessor for PhotosBottomAccessory);
  v16 = v15 + v14;
  v17 = v22[1];
  *v16 = v22[0];
  *(v16 + 16) = v17;
  *(v16 + 32) = v22[2];
  *(v16 + 48) = v23;
  v20 = a1;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB110, &qword_213F5EAD0);
  sub_213EB8D04();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_27C8FB100, &qword_27C8FB0F8, &qword_213F5EAB8);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_213EB67F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for PhotosBottomAccessory(0) + 20);
  v11 = *v9;
  v10 = *(v9 + 8);
  if (*(v9 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v12 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213EB8B1C();
    (*(v5 + 8))(v8, v4);
    v11 = v17[0];
  }

  sub_213DE3164(a2, v17, &qword_27C8FAF70, &qword_213F5E2B0);
  v14 = v17[0];
  v15 = v17[1];
  v16 = 1;
  v11(&v14);

  sub_213EB8F2C(v14, v15, v16);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_213EB69BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v67 = v4;
  v68 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v61 - v10;
  v11 = type metadata accessor for MapsDesignImage();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DE3164(a1, v78, &qword_27C8FAF70, &qword_213F5E2B0);

  v16 = sub_213F4EEE0();
  v18 = v17;
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v19 = v12[7];
  *&v15[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v20 = v12[8];
  *&v15[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v21 = v12[9];
  *&v15[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v22 = &v15[v12[14]];
  v23 = &v15[v12[15]];
  v24 = &v15[v12[16]];
  v69 = 0;
  v70 = 0;
  memset(v71, 0, sizeof(v71));
  sub_213F4EA90();
  v25 = v73;
  v26 = v74;
  v27 = v75;
  v28 = v76;
  v29 = v77;
  *v24 = v72;
  *(v24 + 2) = v25;
  v24[24] = v26;
  v24[25] = v27;
  v24[26] = v28;
  *(v24 + 4) = v29;
  v30 = v12[17];
  v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v15[v30] = v72;
  sub_213DD7500(v79, &v15[v12[10]]);
  v15[v12[11]] = 1;
  v31 = &v15[v12[12]];
  *v31 = v16;
  v31[1] = v18;
  v15[v12[13]] = 1;
  *v22 = 0;
  *(v22 + 1) = 0;
  *v23 = 0;
  *(v23 + 1) = 0;
  sub_213EB8190(v15, a2, type metadata accessor for MapsDesignImage);
  v32 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8360, &unk_213F537D0) + 36);
  *v32 = 0x3FF0000000000000;
  *(v32 + 8) = 0;
  sub_213EB81F8(v15, type metadata accessor for MapsDesignImage);
  v33 = sub_213F4EEE0();
  v35 = v34;
  v36 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB138, &unk_213F5EAE0) + 36);
  v65 = a2;
  sub_213EB6F80(v36);
  v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AA0, &qword_213F5EAF0) + 36));
  *v37 = v33;
  v37[1] = v35;
  v64 = sub_213F4EEE0();
  v63 = v38;
  v39 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB128, &qword_213F5EAD8) + 36));
  v40 = v66;
  sub_213DBBD08(v66);
  sub_213F4D280();
  sub_213F4D270();
  v41 = v67;
  v42 = *(v68 + 8);
  v68 += 8;
  v43 = v9;
  v42(v9, v67);
  v42(v40, v41);
  v62 = sub_213F4D470();
  v44 = *(v62 + 20);
  v45 = *MEMORY[0x277CE0118];
  v46 = sub_213F4D950();
  v47 = *(*(v46 - 8) + 104);
  v47(&v39[v44], v45, v46);
  __asm { FMOV            V0.2D, #14.0 }

  v61 = _Q0;
  *v39 = _Q0;
  v53 = [objc_opt_self() tertiarySystemFillColor];
  v54 = sub_213F4E870();
  *&v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D90, &qword_213F61EB0) + 36)] = v54;
  v55 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB148, &unk_213F5EAF8) + 36)];
  v56 = v63;
  *v55 = v64;
  v55[1] = v56;
  sub_213DBBD08(v40);
  sub_213F4D280();
  sub_213F4D270();
  v57 = v67;
  v42(v43, v67);
  v42(v40, v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB110, &qword_213F5EAD0);
  v59 = (v65 + *(v58 + 36));
  v47(&v59[*(v62 + 20)], v45, v46);
  *v59 = v61;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0);
  *&v59[*(result + 36)] = 256;
  return result;
}

uint64_t sub_213EB6F80@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4D290();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = sub_213F4D470();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DBBD08(v9);
  sub_213F4D280();
  sub_213F4D270();
  v15 = *(v3 + 8);
  v15(v7, v2);
  v15(v9, v2);
  v16 = *(v11 + 28);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_213F4D950();
  (*(*(v18 - 8) + 104))(&v14[v16], v17, v18);
  __asm { FMOV            V0.2D, #14.0 }

  *v14 = _Q0;
  sub_213F4E8C0();
  v24 = sub_213F4E900();

  sub_213F4CF60();
  v25 = MEMORY[0x277CDFC08];
  sub_213EB8190(v14, a1, MEMORY[0x277CDFC08]);
  v26 = *&v37 * 0.5;
  v27 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40) + 68);
  sub_213EB8190(v14, v27, v25);
  *(v27 + *(sub_213F4D460() + 20)) = v26;
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8448, &unk_213F53C50) + 36);
  v29 = v38;
  *v28 = v37;
  *(v28 + 16) = v29;
  *(v28 + 32) = v39;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8450, &unk_213F5EB70);
  *(v27 + *(v30 + 52)) = v24;
  *(v27 + *(v30 + 56)) = 256;
  v31 = sub_213F4EEE0();
  v33 = v32;
  sub_213EB81F8(v14, v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8458, &qword_213F53C60);
  v35 = (v27 + *(result + 36));
  *v35 = v31;
  v35[1] = v33;
  return result;
}

uint64_t sub_213EB728C@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v71 = type metadata accessor for PhotosBottomAccessory(0);
  v2 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v65 = (&v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB088, &qword_213F5E7D0);
  v4 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v70 = &v64 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB090, &qword_213F5E7D8);
  v6 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v74 = &v64 - v7;
  v68 = type metadata accessor for NoteBottomAccessory(0);
  v8 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v10 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = type metadata accessor for ActionsBottomAccessory(0);
  v11 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v13 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB098, &qword_213F5E7E0);
  v14 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v77 = &v64 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0A0, &qword_213F5E7E8);
  v16 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v69 = &v64 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0A8, &qword_213F5E7F0);
  v18 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v72 = &v64 - v19;
  v20 = sub_213F4EDE0();
  v64 = *(v20 - 8);
  v21 = *(v64 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for RefinementBottomAccessory(0);
  v25 = *(*(v24 - 1) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (v1 + *(type metadata accessor for BottomAccessoryViewModel(0) + 20));
  v30 = *v28;
  v29 = v28[1];
  v31 = v28[2];
  v32 = *(v28 + 24);
  v33 = v32 >> 6;
  if (v32 >> 6 > 1)
  {
    if (v33 == 2)
    {
      *v10 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v46 = v68;
      v47 = v10 + *(v68 + 20);
      *v47 = swift_getKeyPath();
      *(v47 + 1) = 0;
      v47[16] = 0;
      v48 = v10 + *(v46 + 28);
      v49 = (v10 + *(v46 + 24));
      *v49 = v30;
      v49[1] = v29;
      *v48 = v31;
      v48[8] = v32 & 1;
      v43 = type metadata accessor for NoteBottomAccessory;
      sub_213EB8190(v10, v70, type metadata accessor for NoteBottomAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EB7F70(qword_281185658, type metadata accessor for NoteBottomAccessory);
      sub_213EB7F70(&qword_281185298, type metadata accessor for PhotosBottomAccessory);

      v50 = v74;
      sub_213F4DBA0();
      sub_213DE3164(v50, v77, &qword_27C8FB090, &qword_213F5E7D8);
      swift_storeEnumTagMultiPayload();
      sub_213EB7FB8();
      sub_213EB80A4();
      sub_213F4DBA0();
      sub_213DE36FC(v50, &qword_27C8FB090, &qword_213F5E7D8);
      v45 = v10;
    }

    else
    {

      v57 = sub_213F4BAAC(v56);
      sub_213EB7F60();
      KeyPath = swift_getKeyPath();
      v59 = v65;
      *v65 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v60 = v71;
      v61 = v59 + *(v71 + 20);
      *v61 = swift_getKeyPath();
      *(v61 + 8) = 0;
      *(v61 + 16) = 0;
      *(v59 + *(v60 + 24)) = v57;
      v43 = type metadata accessor for PhotosBottomAccessory;
      sub_213EB8190(v59, v70, type metadata accessor for PhotosBottomAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EB7F70(qword_281185658, type metadata accessor for NoteBottomAccessory);
      sub_213EB7F70(&qword_281185298, type metadata accessor for PhotosBottomAccessory);
      v62 = v74;
      sub_213F4DBA0();
      sub_213DE3164(v62, v77, &qword_27C8FB090, &qword_213F5E7D8);
      swift_storeEnumTagMultiPayload();
      sub_213EB7FB8();
      sub_213EB80A4();
      sub_213F4DBA0();
      sub_213DE36FC(v62, &qword_27C8FB090, &qword_213F5E7D8);
      v45 = v59;
    }
  }

  else if (v33)
  {

    v52 = sub_213F4B970(v51);
    sub_213EB7F60();
    *v13 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v53 = v73;
    v54 = v13 + *(v73 + 20);
    *v54 = swift_getKeyPath();
    *(v54 + 1) = 0;
    v54[16] = 0;
    *(v13 + *(v53 + 24)) = v52;
    v43 = type metadata accessor for ActionsBottomAccessory;
    sub_213EB8190(v13, v69, type metadata accessor for ActionsBottomAccessory);
    swift_storeEnumTagMultiPayload();
    sub_213EB7F70(qword_2811843A0, type metadata accessor for RefinementBottomAccessory);
    sub_213EB7F70(qword_281185158, type metadata accessor for ActionsBottomAccessory);
    v55 = v72;
    sub_213F4DBA0();
    sub_213DE3164(v55, v77, &qword_27C8FB0A8, &qword_213F5E7F0);
    swift_storeEnumTagMultiPayload();
    sub_213EB7FB8();
    sub_213EB80A4();
    sub_213F4DBA0();
    sub_213DE36FC(v55, &qword_27C8FB0A8, &qword_213F5E7F0);
    v45 = v13;
  }

  else
  {

    v35 = sub_213F4B970(v34);
    sub_213EB7F60();
    *v27 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v36 = v24[5];
    *(v27 + v36) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v37 = v27 + v24[6];
    *v37 = swift_getKeyPath();
    *(v37 + 1) = 0;
    v37[16] = 0;
    v38 = v24[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAEF8, &unk_213F5E890);
    v39 = *(sub_213F4EDF0() - 8);
    v40 = *(v39 + 72);
    v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_213F55C80;
    *v23 = xmmword_213F5D980;
    (*(v64 + 104))(v23, *MEMORY[0x277CDF108], v20);
    sub_213F4EE00();
    *(v27 + v38) = v42;
    *(v27 + v24[7]) = v35;
    v43 = type metadata accessor for RefinementBottomAccessory;
    sub_213EB8190(v27, v69, type metadata accessor for RefinementBottomAccessory);
    swift_storeEnumTagMultiPayload();
    sub_213EB7F70(qword_2811843A0, type metadata accessor for RefinementBottomAccessory);
    sub_213EB7F70(qword_281185158, type metadata accessor for ActionsBottomAccessory);
    v44 = v72;
    sub_213F4DBA0();
    sub_213DE3164(v44, v77, &qword_27C8FB0A8, &qword_213F5E7F0);
    swift_storeEnumTagMultiPayload();
    sub_213EB7FB8();
    sub_213EB80A4();
    sub_213F4DBA0();
    sub_213DE36FC(v44, &qword_27C8FB0A8, &qword_213F5E7F0);
    v45 = v27;
  }

  return sub_213EB81F8(v45, v43);
}

double sub_213EB7E64@<D0>(uint64_t a1@<X8>)
{
  sub_213EB728C(a1);
  sub_213F4EEF0();
  sub_213F4D0C0();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB080, &qword_213F5E7C8) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

uint64_t sub_213EB7F70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213EB7FB8()
{
  result = qword_281182B70;
  if (!qword_281182B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB0A8, &qword_213F5E7F0);
    sub_213EB7F70(qword_2811843A0, type metadata accessor for RefinementBottomAccessory);
    sub_213EB7F70(qword_281185158, type metadata accessor for ActionsBottomAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B70);
  }

  return result;
}

unint64_t sub_213EB80A4()
{
  result = qword_281182B98;
  if (!qword_281182B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB090, &qword_213F5E7D8);
    sub_213EB7F70(qword_281185658, type metadata accessor for NoteBottomAccessory);
    sub_213EB7F70(&qword_281185298, type metadata accessor for PhotosBottomAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B98);
  }

  return result;
}

uint64_t sub_213EB8190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213EB81F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_213EB82C4()
{
  sub_213EB8930(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213EB86F0(319, &qword_2811834F0, &qword_27C8FB0B0, &unk_213F5EFA0, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213EB8930(319, &unk_281182408, type metadata accessor for NSTextAlignment, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_29Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_30Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_213EB85C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_213EB8930(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v9 <= 0x3F)
  {
    sub_213EB86F0(319, &qword_2811834F0, &qword_27C8FB0B0, &unk_213F5EFA0, MEMORY[0x277CDF468]);
    if (v10 <= 0x3F)
    {
      sub_213EB86F0(319, a4, a5, a6, MEMORY[0x277D83940]);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213EB86F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_213EB877C()
{
  sub_213EB8930(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213EB8930(319, &qword_281183528, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213EB86F0(319, &qword_2811834F0, &qword_27C8FB0B0, &unk_213F5EFA0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_213EB86F0(319, &qword_281182488, &qword_27C8FA890, &qword_213F5D620, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_213EB8930(319, &qword_2811824A8, MEMORY[0x277CDF110], MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213EB8930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_213EB8994()
{
  result = qword_281183390;
  if (!qword_281183390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB080, &qword_213F5E7C8);
    sub_213EB8A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183390);
  }

  return result;
}

unint64_t sub_213EB8A20()
{
  result = qword_281182A60;
  if (!qword_281182A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB0B8, &qword_213F5E920);
    sub_213EB7FB8();
    sub_213EB80A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A60);
  }

  return result;
}

uint64_t sub_213EB8B28()
{
  v1 = *(type metadata accessor for NoteBottomAccessory(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_213EB5E54(v2);
}

uint64_t sub_213EB8B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213EB8BF0(uint64_t a1)
{
  v3 = *(type metadata accessor for PhotosBottomAccessory(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213EB6538(a1, v4);
}

uint64_t sub_213EB8C70()
{
  v1 = *(type metadata accessor for PhotosBottomAccessory(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_213EB67F0(v0 + v2, v3);
}

unint64_t sub_213EB8D04()
{
  result = qword_27C8FB118;
  if (!qword_27C8FB118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB110, &qword_213F5EAD0);
    sub_213EB8DBC();
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB118);
  }

  return result;
}

unint64_t sub_213EB8DBC()
{
  result = qword_27C8FB120;
  if (!qword_27C8FB120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB128, &qword_213F5EAD8);
    sub_213EB8E74();
    sub_213DE3AE4(&qword_27C8FB140, &qword_27C8FB148, &unk_213F5EAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB120);
  }

  return result;
}

unint64_t sub_213EB8E74()
{
  result = qword_27C8FB130;
  if (!qword_27C8FB130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB138, &unk_213F5EAE0);
    sub_213DFDFD0();
    sub_213DE3AE4(&qword_27C8F8AC0, &qword_27C8F8AA0, &qword_213F5EAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB130);
  }

  return result;
}

uint64_t sub_213EB8F2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t sub_213EB8F4C()
{
  result = qword_27C8FB190;
  if (!qword_27C8FB190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB188, &qword_213F5EBB8);
    sub_213DE3AE4(&qword_27C8FB198, &qword_27C8FB1A0, &unk_213F5EBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB190);
  }

  return result;
}

unint64_t sub_213EB900C()
{
  result = qword_27C8FB1C0;
  if (!qword_27C8FB1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB1B8, &qword_213F5EBD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB1C8, &qword_213F5EBE0);
    sub_213EB90E8();
    sub_213E4FC2C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB1C0);
  }

  return result;
}

unint64_t sub_213EB90E8()
{
  result = qword_27C8FB1D0;
  if (!qword_27C8FB1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB1C8, &qword_213F5EBE0);
    sub_213DE3AE4(&qword_27C8FB1D8, &qword_27C8FB1E0, &qword_213F5EBE8);
    sub_213DE3AE4(&qword_2811828F8, &qword_27C8F82B8, &qword_213F5EBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB1D0);
  }

  return result;
}

uint64_t sub_213EB91CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RefinementBottomAccessory(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213EB4214(a1, v6, a2);
}

uint64_t sub_213EB924C()
{
  v1 = *(type metadata accessor for RefinementBottomAccessory(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  return sub_213EB4478(v0 + v2, v4, v5);
}

uint64_t sub_213EB92E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_213EB4630(v1[4], v1[5], v1[6], a1);
}

unint64_t sub_213EB92F0()
{
  result = qword_27C8FB1F8;
  if (!qword_27C8FB1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB1F0, &qword_213F5EC28);
    sub_213EB93A8();
    sub_213DE3AE4(&qword_27C8FB220, &qword_27C8FB228, &unk_213F5EC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB1F8);
  }

  return result;
}

unint64_t sub_213EB93A8()
{
  result = qword_27C8FB200;
  if (!qword_27C8FB200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB208, &qword_213F5EC30);
    sub_213EB9434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB200);
  }

  return result;
}

unint64_t sub_213EB9434()
{
  result = qword_27C8FB210;
  if (!qword_27C8FB210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB218, &unk_213F5EC38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9230, &qword_213F57250);
    sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB210);
  }

  return result;
}

uint64_t objectdestroy_64Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = (v1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_213F4D290();
    (*(*(v6 - 8) + 8))(v1 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v2 + 20);
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_213EB8B1C();
  v12 = *(v5 + *(v2 + 24));

  return swift_deallocObject();
}

uint64_t sub_213EB9680(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ActionsBottomAccessory(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213EB5650(a1, a2, v6);
}

unint64_t sub_213EB9700()
{
  result = qword_27C8FB250;
  if (!qword_27C8FB250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB0C8, &qword_213F5EA70);
    sub_213EB978C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB250);
  }

  return result;
}

unint64_t sub_213EB978C()
{
  result = qword_27C8FB258;
  if (!qword_27C8FB258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB0C0, &qword_213F5EA68);
    sub_213EB7F70(&qword_281186B38, type metadata accessor for FadingLabelView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB258);
  }

  return result;
}

unint64_t sub_213EB9848()
{
  result = qword_27C8FB260;
  if (!qword_27C8FB260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB108, &qword_213F5EAC8);
    sub_213DE3AE4(&qword_27C8FB268, &qword_27C8FB0D0, &qword_213F5EA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB260);
  }

  return result;
}

unint64_t sub_213EB9900()
{
  result = qword_27C8FB278;
  if (!qword_27C8FB278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB178, &qword_213F5EBA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB168, &qword_213F5EB98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB160, &qword_213F5EB90);
    sub_213F4DFB0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB158, &qword_213F5EB88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB150, &qword_213F5EB80);
    sub_213DE3AE4(&qword_27C8FB1A8, &qword_27C8FB150, &qword_213F5EB80);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB278);
  }

  return result;
}

uint64_t sub_213EB9AD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213EB9B5C()
{
  result = qword_281183410;
  if (!qword_281183410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB240, &qword_213F5EC68);
    sub_213EB7F70(&qword_281185B80, type metadata accessor for ActionButtonLayout);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183410);
  }

  return result;
}

uint64_t ContextLineAccessoryViewModel.init(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F4CB30();
  v4 = type metadata accessor for ContextLineAccessoryViewModel(0);
  return sub_213EC31F8(a1, a2 + *(v4 + 20), type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
}

uint64_t ContextLineAccessoryViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContextLineAccessoryViewModel.id.setter(uint64_t a1)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t ContextLineAccessoryViewModel.axIDString.getter()
{
  v1 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ContextLineAccessoryViewModel(0);
  sub_213EC2060(v0 + *(v5 + 20), v4, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = sub_213F4CA10();
      (*(*(v11 - 8) + 8))(v4, v11);
      result = 0x656D69546C616552;
      break;
    case 2u:
      sub_213EC2830(v4, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x676E697373694DLL;
      break;
    case 3u:
      sub_213EC2830(v4, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x64656E6E6950;
      break;
    case 4u:
      sub_213EC2830(v4, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x676E69646E657254;
      break;
    case 5u:
      sub_213EC2830(v4, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x64657469736956;
      break;
    case 6u:
      sub_213EC2830(v4, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x516465686374614DLL;
      break;
    case 7u:
      sub_213EC2830(v4, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 1702129486;
      break;
    case 8u:
      sub_213EC2830(v4, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x537469736E617254;
      break;
    case 9u:
      sub_213EC2830(v4, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x75426D6F74737543;
      break;
    case 0xAu:
      sub_213EC2830(v4, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x72617262694C6E49;
      break;
    case 0xBu:
      sub_213EC2830(v4, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x7547726573556E49;
      break;
    case 0xCu:
      sub_213EC2830(v4, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x6D6E6961746E6F43;
      break;
    case 0xDu:
      v12 = v4[5];

      __swift_destroy_boxed_opaque_existential_1(v4);
      result = 0x6465727574616546;
      break;
    case 0xEu:
      v9 = v4[5];

      v10 = v4[6];

      __swift_destroy_boxed_opaque_existential_1(v4);
      result = 0xD000000000000018;
      break;
    default:
      v6 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB280, &qword_213F5ECE0) + 48) + 8);

      v7 = sub_213F4CA10();
      (*(*(v7 - 8) + 8))(v4, v7);
      result = 0x6D6F74737543;
      break;
  }

  return result;
}

uint64_t sub_213EBA270()
{
  result = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_213EBA344()
{
  sub_213EBA460();
  if (v0 <= 0x3F)
  {
    sub_213EBA4E0();
    if (v1 <= 0x3F)
    {
      sub_213F4CA10();
      if (v2 <= 0x3F)
      {
        sub_213EBA54C();
        if (v3 <= 0x3F)
        {
          sub_213EC2B2C(319, &qword_281182810);
          if (v4 <= 0x3F)
          {
            sub_213EBA5C4();
            if (v5 <= 0x3F)
            {
              sub_213EBA658();
              if (v6 <= 0x3F)
              {
                sub_213EBA6D0();
                if (v7 <= 0x3F)
                {
                  sub_213EBA75C();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_213EBA460()
{
  if (!qword_281188820)
  {
    sub_213F4CA10();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9828, &qword_213F58D80);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281188820);
    }
  }
}

void sub_213EBA4E0()
{
  if (!qword_281188818)
  {
    sub_213F4CA10();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281188818);
    }
  }
}

void sub_213EBA54C()
{
  if (!qword_2811824F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB288, &qword_213F5ED78);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811824F8);
    }
  }
}

void sub_213EBA5C4()
{
  if (!qword_281182508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA4A8, &qword_213F5C5A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9828, &qword_213F58D80);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_281182508);
    }
  }
}

void sub_213EBA658()
{
  if (!qword_2811824C8)
  {
    sub_213EC2A64(0, &qword_2811824C0, type metadata accessor for RichTextViewModel, MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_2811824C8);
    }
  }
}

void sub_213EBA6D0()
{
  if (!qword_281187B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AC0, &qword_213F59B58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA4A8, &qword_213F5C5A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281187B60);
    }
  }
}

void sub_213EBA75C()
{
  if (!qword_281187B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AC0, &qword_213F59B58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA4A8, &qword_213F5C5A0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_281187B68);
    }
  }
}

uint64_t sub_213EBA834()
{
  result = type metadata accessor for ContextLineAccessoryViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213EBA8BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RichTextView(0);
  v5 = a1 + v4[10];
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4C0, &qword_213F5C5B0);
  v6 = (type metadata accessor for RichTextViewModel(0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_213F55C80;
  v10 = v9 + v8;
  v11 = type metadata accessor for CustomContextLineAccessory(0);
  v12 = (v2 + *(v11 + 20));
  v14 = *v12;
  v13 = v12[1];
  v15 = *(v2 + *(v11 + 24));
  v16 = v6[7];
  v17 = sub_213F4CA10();
  (*(*(v17 - 8) + 16))(v10 + v16, v2, v17);

  sub_213F4CB30();
  v18 = (v10 + v6[9]);
  v19 = v6[10];
  *(v10 + v6[8]) = 0;
  *v18 = v14;
  v18[1] = v13;
  *(v10 + v19) = v15;
  *(v10 + v6[11]) = 0;
  *(v10 + v6[12]) = 0;
  v20 = v10 + v6[13];
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v10 + v6[14]) = 0;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v21 = v4[5];
  *(a1 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v22 = v4[6];
  *(a1 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v23 = a1 + v4[7];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = a1 + v4[8];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  *(a1 + v4[9]) = 3;
  *(a1 + v4[11]) = v9;
  *(a1 + v4[12]) = 1;
  *(a1 + v4[13]) = 0;
}

uint64_t sub_213EBAB78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v3 = type metadata accessor for CustomContextLineAccessory(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB408, &unk_213F5F5D0);
  v7 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v9 = &v59 - v8;
  v10 = sub_213F4CA70();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_213F4CA10();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RichTextView(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(type metadata accessor for RealTimeChargerContextLineAccessory(0) + 20);
  v68 = v2;
  if (*(v2 + v23) == 1)
  {
    v24 = v22 + *(v19 + 40);
    *(v24 + 4) = 0;
    *v24 = 0u;
    *(v24 + 1) = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4C0, &qword_213F5C5B0);
    v64 = v19;
    v25 = type metadata accessor for RichTextViewModel(0);
    v67 = v3;
    v26 = (v25 - 8);
    v27 = *(*(v25 - 8) + 72);
    v28 = *(*(v25 - 8) + 80);
    v66 = v9;
    v29 = (v28 + 32) & ~v28;
    v63 = 2 * v27;
    v30 = swift_allocObject();
    v65 = v30;
    *(v30 + 16) = xmmword_213F53CC0;
    v31 = v30 + v29;
    v59 = 0x8000000213FA5AD0;
    sub_213F4CA60();
    sub_213F4CA20();
    v32 = v15[2];
    v32(v31 + v26[7], v18, v14);
    v60 = v32;
    v61 = v13;
    v33 = v32;
    sub_213F4CB30();
    v62 = v15[1];
    v62(v18, v14);
    v34 = (v31 + v26[9]);
    v35 = v26[10];
    *(v31 + v26[8]) = 0;
    *v34 = 0xD000000000000017;
    v34[1] = v59;
    *(v31 + v35) = 0;
    *(v31 + v26[11]) = 0;
    *(v31 + v26[12]) = 0;
    v36 = v31 + v26[13];
    *v36 = 0;
    *(v36 + 8) = 1;
    *(v31 + v26[14]) = 0;
    v37 = v31 + v27;
    v38 = sub_213F4E8E0();
    v33(v37 + v26[7], v68, v14);
    sub_213F4CB30();
    v40 = v26[9];
    v39 = v26[10];
    *(v37 + v26[8]) = 0;
    v41 = (v37 + v40);
    *v41 = 0;
    v41[1] = 0;
    *(v37 + v39) = v38;
    *(v37 + v26[11]) = 0;
    *(v37 + v26[12]) = 0;
    v42 = v37 + v26[13];
    *v42 = 0;
    *(v42 + 8) = 1;
    *(v37 + v26[14]) = 0;
    v43 = v31 + v63;
    v44 = sub_213F4E8E0();
    sub_213F4CA60();
    sub_213F4CA20();
    v60(v43 + v26[7], v18, v14);
    sub_213F4CB30();
    v62(v18, v14);
    v45 = (v43 + v26[9]);
    v46 = v26[10];
    *(v43 + v26[8]) = 0;
    *v45 = 0xD000000000000019;
    v45[1] = 0x8000000213FA5AF0;
    *(v43 + v46) = v44;
    *(v43 + v26[11]) = 0;
    *(v43 + v26[12]) = 0;
    v47 = v43 + v26[13];
    *v47 = 0;
    *(v47 + 8) = 1;
    *(v43 + v26[14]) = 0;
    *v22 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    v48 = v64;
    v49 = v64[5];
    *(v22 + v49) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v50 = v48[6];
    *(v22 + v50) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
    swift_storeEnumTagMultiPayload();
    v51 = v22 + v48[7];
    *v51 = swift_getKeyPath();
    v51[8] = 0;
    v52 = v22 + v48[8];
    *v52 = swift_getKeyPath();
    v52[8] = 0;
    *(v22 + v48[9]) = 3;
    v53 = v66;
    *(v22 + v48[11]) = v65;
    *(v22 + v48[12]) = 0;
    *(v22 + v48[13]) = 0;
    v54 = type metadata accessor for RichTextView;
    sub_213EC2060(v22, v53, type metadata accessor for RichTextView);
    swift_storeEnumTagMultiPayload();
    sub_213EC21D8(qword_281187F70, type metadata accessor for RichTextView);
    sub_213EC21D8(&qword_281184250, type metadata accessor for CustomContextLineAccessory);
    sub_213F4DBA0();
    v55 = v22;
  }

  else
  {
    (v15[2])(v6, v68, v14);
    v56 = sub_213F4E920();
    v57 = &v6[*(v3 + 20)];
    *v57 = 0xD000000000000017;
    *(v57 + 1) = 0x8000000213FA5AD0;
    *&v6[*(v3 + 24)] = v56;
    v54 = type metadata accessor for CustomContextLineAccessory;
    sub_213EC2060(v6, v9, type metadata accessor for CustomContextLineAccessory);
    swift_storeEnumTagMultiPayload();
    sub_213EC21D8(qword_281187F70, type metadata accessor for RichTextView);
    sub_213EC21D8(&qword_281184250, type metadata accessor for CustomContextLineAccessory);
    sub_213F4DBA0();
    v55 = v6;
  }

  return sub_213EC2830(v55, v54);
}

uint64_t sub_213EBB348(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = sub_213F4EB20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-v10];
  v12 = *v1;
  v13 = v1[1];
  v18 = v2;
  v19 = v3;
  v20 = v1;

  sub_213F4EB00();
  WitnessTable = swift_getWitnessTable();
  sub_213DBFEEC(v9, v4, WitnessTable);
  v15 = *(v5 + 8);
  v15(v9, v4);
  sub_213DBFEEC(v11, v4, WitnessTable);
  return (v15)(v11, v4);
}

uint64_t sub_213EBB4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BorderlessButton();
  sub_213DBFEEC(a1 + *(v10 + 36), a2, a3);
  sub_213DBFEEC(v9, a2, a3);
  return (*(v6 + 8))(v9, a2);
}

void *sub_213EBB5E8()
{
  v47 = sub_213F4CB40();
  v1 = *(v47 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v47);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RichTextViewModel(0);
  v6 = *(*(v5 - 1) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v9);
  v14 = &v38 - v13;
  v16 = v0[4];
  v15 = v0[5];
  v17 = *(v15 + 16);
  v40 = v16;
  if (v17)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    return MEMORY[0x277D84F90];
  }

  v39 = v0[3];
  v45 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = *(v12 + 72);
  v42 = (v1 + 16);
  v43 = v20;
  v41 = (v1 + 8);
  v21 = MEMORY[0x277D84F90];
  v44 = v15 + v45;
  v22 = v15 + v45;
  do
  {
    sub_213EC2060(v22, v14, type metadata accessor for RichTextViewModel);
    v25 = v47;
    (*v42)(v4, v44, v47);
    v26 = _s10MapsDesign26RoutePlanningCellViewModelV2eeoiySbAC_ACtFZ_0();
    (*v41)(v4, v25);
    if (v26)
    {
      v27 = v5[5];
      v28 = sub_213F4CA10();
      (*(*(v28 - 8) + 16))(&v11[v27], &v14[v27], v28);
      v29 = v40;

      sub_213F4CB30();
      v31 = v5[7];
      v30 = v5[8];
      v11[v5[6]] = 0;
      v32 = &v11[v31];
      *v32 = v39;
      *(v32 + 1) = v29;
      *&v11[v30] = 0;
      *&v11[v5[9]] = 0;
      *&v11[v5[10]] = 0;
      v33 = &v11[v5[11]];
      *v33 = 0;
      v33[8] = 1;
      *&v11[v5[12]] = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_213F1EB64(0, v21[2] + 1, 1, v21);
      }

      v35 = v21[2];
      v34 = v21[3];
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v21 = sub_213F1EB64(v34 > 1, v35 + 1, 1, v21);
      }

      v23 = v11;
    }

    else
    {
      sub_213EC2060(v14, v46, type metadata accessor for RichTextViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_213F1EB64(0, v21[2] + 1, 1, v21);
      }

      v35 = v21[2];
      v37 = v21[3];
      v36 = v35 + 1;
      if (v35 >= v37 >> 1)
      {
        v21 = sub_213F1EB64(v37 > 1, v35 + 1, 1, v21);
      }

      v23 = v46;
    }

    sub_213EC2830(v14, type metadata accessor for RichTextViewModel);
    v21[2] = v36;
    v24 = v43;
    sub_213EC31F8(v23, v21 + v45 + v35 * v43, type metadata accessor for RichTextViewModel);
    v22 += v24;
    --v17;
  }

  while (v17);
  return v21;
}

uint64_t sub_213EBBA18@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *(v1 + 48);
  v18[2] = *(v1 + 32);
  v18[3] = v3;
  v19 = *(v1 + 64);
  v4 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  *a1 = sub_213EC31F0;
  a1[1] = v5;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB350, &qword_213F5F3E0) + 36));
  v9 = type metadata accessor for RichTextView(0);
  v10 = v8 + v9[10];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  sub_213EC2890(v18, v17);
  v11 = sub_213EBB5E8();
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v12 = v9[5];
  *(v8 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v13 = v9[6];
  *(v8 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v14 = v8 + v9[7];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = v8 + v9[8];
  result = swift_getKeyPath();
  *v15 = result;
  v15[8] = 0;
  *(v8 + v9[9]) = 3;
  *(v8 + v9[11]) = v11;
  *(v8 + v9[12]) = 0;
  *(v8 + v9[13]) = 0;
  return result;
}

uint64_t sub_213EBBBF0(__int128 *a1)
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v17 = *(a1 + 16);
  v16 = *a1;
  v7 = v16;
  if (v17 == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v8 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213DE36FC(&v16, &qword_27C8FB358, &qword_213F5F4A8);
    (*(v3 + 8))(v6, v2);
    v7 = v14;
  }

  v14 = a1[3];
  v15 = *(a1 + 64);
  v12 = a1[3];
  v13 = *(a1 + 64);
  sub_213EC3260(&v14, v11);
  v7(&v12);

  return sub_213EB8F2C(v12, *(&v12 + 1), v13);
}

double sub_213EBBDBC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = sub_213F4D470();
  v4 = *(v3 - 8);
  v73 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MapsDesignImage();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for FeaturedInGuideContextLineAccessory(0);
  v14 = *(v13 + 32);
  v71 = v13;
  sub_213DEBAA8(v2 + v14, &v12[v9[10]]);
  v15 = sub_213F4EEE0();
  v17 = v16;
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v18 = v9[7];
  *&v12[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v19 = v9[8];
  *&v12[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v20 = v9[9];
  *&v12[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v21 = &v12[v9[14]];
  v22 = &v12[v9[15]];
  v23 = &v12[v9[16]];
  v78 = 0uLL;
  *(&v79 + 7) = 0;
  *&v79 = 0;
  sub_213F4EA90();
  v24 = v76;
  v25 = BYTE8(v76);
  v26 = BYTE9(v76);
  v27 = BYTE10(v76);
  v28 = v77;
  *v23 = v75;
  *(v23 + 2) = v24;
  v23[24] = v25;
  v23[25] = v26;
  v23[26] = v27;
  *(v23 + 4) = v28;
  v29 = v9[17];
  *&v78 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v12[v29] = v75;
  v12[v9[11]] = 1;
  v30 = &v12[v9[12]];
  *v30 = v15;
  v30[1] = v17;
  v12[v9[13]] = 1;
  *v21 = sub_213EC3B28;
  v21[1] = 0;
  *v22 = 0;
  v22[1] = 0;
  v31 = *(v13 + 20);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  v70 = v2;
  sub_213F4CFF0();
  sub_213F4CFF0();
  sub_213F4EEE0();
  sub_213F4D0C0();
  v32 = v72;
  sub_213EC2060(v12, v72, type metadata accessor for MapsDesignImage);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220) + 36));
  v34 = v76;
  *v33 = v75;
  v33[1] = v34;
  v33[2] = v77;
  sub_213EC2830(v12, type metadata accessor for MapsDesignImage);
  v35 = sub_213F4EEE0();
  v67 = v36;
  v68 = v35;
  v37 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB378, &unk_213F5F530) + 36);
  v38 = *(v73 + 28);
  v66 = *MEMORY[0x277CE0118];
  v39 = v66;
  v40 = sub_213F4D950();
  v41 = *(*(v40 - 8) + 104);
  v41(&v7[v38], v39, v40);
  __asm { FMOV            V0.2D, #4.0 }

  *v7 = _Q0;
  sub_213F4E8C0();
  v47 = sub_213F4E900();

  sub_213F4CF60();
  v48 = MEMORY[0x277CDFC08];
  sub_213EC2060(v7, v37, MEMORY[0x277CDFC08]);
  v49 = *&v78 * 0.5;
  v50 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40) + 68);
  sub_213EC2060(v7, v50, v48);
  *(v50 + *(sub_213F4D460() + 20)) = v49;
  v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8448, &unk_213F53C50) + 36);
  v52 = v79;
  *v51 = v78;
  *(v51 + 16) = v52;
  *(v51 + 32) = v80;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8450, &unk_213F5EB70);
  *(v50 + *(v53 + 52)) = v47;
  *(v50 + *(v53 + 56)) = 256;
  v54 = sub_213F4EEE0();
  v56 = v55;
  sub_213EC2830(v7, v48);
  v57 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8458, &qword_213F53C60) + 36));
  *v57 = v54;
  v57[1] = v56;
  v58 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AA0, &qword_213F5EAF0) + 36));
  v59 = v67;
  *v58 = v68;
  v58[1] = v59;
  v60 = v70 + *(v71 + 24);
  sub_213F4CFF0();
  v61 = v74;
  v62 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB380, &qword_213F5F540) + 36));
  v41(&v62[*(v73 + 28)], v66, v40);
  *v62 = v61;
  *(v62 + 1) = v61;
  *&v62[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB368, &qword_213F5F4B8);
  result = 0.0;
  *(v32 + *(v63 + 36)) = xmmword_213F5EC80;
  return result;
}

uint64_t sub_213EBC3B0()
{
  v22 = type metadata accessor for RichTextViewModel(0);
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v22);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = *(v0 + *(type metadata accessor for FeaturedInGuideContextLineAccessory(0) + 36));
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v23 = MEMORY[0x277D84F90];
    sub_213EA91A8(0, v9, 0);
    v10 = v23;
    v11 = objc_opt_self();
    v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v13 = v8 + v12;
    v14 = *(v1 + 72);
    do
    {
      sub_213EC2060(v13, v5, type metadata accessor for RichTextViewModel);
      sub_213EC2060(v5, v7, type metadata accessor for RichTextViewModel);
      v15 = [v11 systemBlueColor];
      v16 = sub_213F4E870();
      sub_213EC2830(v5, type metadata accessor for RichTextViewModel);
      v17 = *(v22 + 32);
      v18 = *&v7[v17];

      *&v7[v17] = v16;
      v23 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_213EA91A8(v19 > 1, v20 + 1, 1);
        v10 = v23;
      }

      *(v10 + 16) = v20 + 1;
      sub_213EC31F8(v7, v10 + v12 + v20 * v14, type metadata accessor for RichTextViewModel);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_213EBC5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for FeaturedInGuideContextLineAccessory(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB350, &qword_213F5F3E0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v38 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v38 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB368, &qword_213F5F4B8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - v22;
  sub_213EBBDBC(&v38 - v22);
  sub_213EC2060(a1, v9, type metadata accessor for FeaturedInGuideContextLineAccessory);
  v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v25 = swift_allocObject();
  sub_213EC31F8(v9, v25 + v24, type metadata accessor for FeaturedInGuideContextLineAccessory);
  sub_213EC2060(a1, v7, type metadata accessor for FeaturedInGuideContextLineAccessory);
  *v16 = sub_213EC32BC;
  v16[1] = v25;
  v26 = (v16 + *(v11 + 44));
  v27 = type metadata accessor for RichTextView(0);
  v28 = v26 + v27[10];
  *(v28 + 4) = 0;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v29 = sub_213EBC3B0();
  sub_213EC2830(v7, type metadata accessor for FeaturedInGuideContextLineAccessory);
  *v26 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v30 = v27[5];
  *(v26 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v31 = v27[6];
  *(v26 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v32 = v26 + v27[7];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = v26 + v27[8];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  *(v26 + v27[9]) = 3;
  *(v26 + v27[11]) = v29;
  *(v26 + v27[12]) = 0;
  *(v26 + v27[13]) = 0;
  sub_213DE3164(v23, v21, &qword_27C8FB368, &qword_213F5F4B8);
  v34 = v38;
  sub_213DE3164(v16, v38, &qword_27C8FB350, &qword_213F5F3E0);
  v35 = v39;
  sub_213DE3164(v21, v39, &qword_27C8FB368, &qword_213F5F4B8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB370, &qword_213F5F4C0);
  sub_213DE3164(v34, v35 + *(v36 + 48), &qword_27C8FB350, &qword_213F5F3E0);
  sub_213DE36FC(v16, &qword_27C8FB350, &qword_213F5F3E0);
  sub_213DE36FC(v23, &qword_27C8FB368, &qword_213F5F4B8);
  sub_213DE36FC(v34, &qword_27C8FB350, &qword_213F5F3E0);
  return sub_213DE36FC(v21, &qword_27C8FB368, &qword_213F5F4B8);
}

uint64_t sub_213EBCA38(uint64_t a1)
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v10 = *a1;

    sub_213F4F520();
    v11 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213EB8B1C();
    (*(v3 + 8))(v6, v2);
    v8 = v13;
  }

  v13 = xmmword_213F55620;
  v14 = 4;
  v8(&v13);
}

uint64_t sub_213EBCBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213F4D870();
  v6 = *(a1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  sub_213F4CFF0();
  *a2 = v5;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB360, &qword_213F5F4B0);
  return sub_213EBC5D0(v2, a2 + *(v7 + 44));
}

double sub_213EBCC5C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = sub_213F4D470();
  v4 = *(v3 - 8);
  v73 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MapsDesignImage();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0);
  v14 = *(v13 + 36);
  v71 = v13;
  sub_213DEBAA8(v2 + v14, &v12[v9[10]]);
  v15 = sub_213F4EEE0();
  v17 = v16;
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v18 = v9[7];
  *&v12[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v19 = v9[8];
  *&v12[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v20 = v9[9];
  *&v12[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v21 = &v12[v9[14]];
  v22 = &v12[v9[15]];
  v23 = &v12[v9[16]];
  v78 = 0uLL;
  *(&v79 + 7) = 0;
  *&v79 = 0;
  sub_213F4EA90();
  v24 = v76;
  v25 = BYTE8(v76);
  v26 = BYTE9(v76);
  v27 = BYTE10(v76);
  v28 = v77;
  *v23 = v75;
  *(v23 + 2) = v24;
  v23[24] = v25;
  v23[25] = v26;
  v23[26] = v27;
  *(v23 + 4) = v28;
  v29 = v9[17];
  *&v78 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v12[v29] = v75;
  v12[v9[11]] = 1;
  v30 = &v12[v9[12]];
  *v30 = v15;
  v30[1] = v17;
  v12[v9[13]] = 1;
  *v21 = sub_213EC3B28;
  v21[1] = 0;
  *v22 = 0;
  v22[1] = 0;
  v31 = *(v13 + 24);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  v70 = v2;
  sub_213F4CFF0();
  sub_213F4CFF0();
  sub_213F4EEE0();
  sub_213F4D0C0();
  v32 = v72;
  sub_213EC2060(v12, v72, type metadata accessor for MapsDesignImage);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220) + 36));
  v34 = v76;
  *v33 = v75;
  v33[1] = v34;
  v33[2] = v77;
  sub_213EC2830(v12, type metadata accessor for MapsDesignImage);
  v35 = sub_213F4EEE0();
  v67 = v36;
  v68 = v35;
  v37 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB378, &unk_213F5F530) + 36);
  v38 = *(v73 + 28);
  v66 = *MEMORY[0x277CE0118];
  v39 = v66;
  v40 = sub_213F4D950();
  v41 = *(*(v40 - 8) + 104);
  v41(&v7[v38], v39, v40);
  __asm { FMOV            V0.2D, #4.0 }

  *v7 = _Q0;
  sub_213F4E8C0();
  v47 = sub_213F4E900();

  sub_213F4CF60();
  v48 = MEMORY[0x277CDFC08];
  sub_213EC2060(v7, v37, MEMORY[0x277CDFC08]);
  v49 = *&v78 * 0.5;
  v50 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40) + 68);
  sub_213EC2060(v7, v50, v48);
  *(v50 + *(sub_213F4D460() + 20)) = v49;
  v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8448, &unk_213F53C50) + 36);
  v52 = v79;
  *v51 = v78;
  *(v51 + 16) = v52;
  *(v51 + 32) = v80;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8450, &unk_213F5EB70);
  *(v50 + *(v53 + 52)) = v47;
  *(v50 + *(v53 + 56)) = 256;
  v54 = sub_213F4EEE0();
  v56 = v55;
  sub_213EC2830(v7, v48);
  v57 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8458, &qword_213F53C60) + 36));
  *v57 = v54;
  v57[1] = v56;
  v58 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AA0, &qword_213F5EAF0) + 36));
  v59 = v67;
  *v58 = v68;
  v58[1] = v59;
  v60 = v70 + *(v71 + 28);
  sub_213F4CFF0();
  v61 = v74;
  v62 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB380, &qword_213F5F540) + 36));
  v41(&v62[*(v73 + 28)], v66, v40);
  *v62 = v61;
  *(v62 + 1) = v61;
  *&v62[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB368, &qword_213F5F4B8);
  result = 0.0;
  *(v32 + *(v63 + 36)) = xmmword_213F5EC80;
  return result;
}

unint64_t sub_213EBD250@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() tertiarySystemFillColor];
  v3 = sub_213F4E870();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AE8, &unk_213F55C40);
  result = sub_213E0C9E0();
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_213EBD2BC()
{
  v22 = type metadata accessor for RichTextViewModel(0);
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v22);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = *(v0 + *(type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0) + 40));
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v23 = MEMORY[0x277D84F90];
    sub_213EA91A8(0, v9, 0);
    v10 = v23;
    v11 = objc_opt_self();
    v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v13 = v8 + v12;
    v14 = *(v1 + 72);
    do
    {
      sub_213EC2060(v13, v5, type metadata accessor for RichTextViewModel);
      sub_213EC2060(v5, v7, type metadata accessor for RichTextViewModel);
      v15 = [v11 systemBlueColor];
      v16 = sub_213F4E870();
      sub_213EC2830(v5, type metadata accessor for RichTextViewModel);
      v17 = *(v22 + 32);
      v18 = *&v7[v17];

      *&v7[v17] = v16;
      v23 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_213EA91A8(v19 > 1, v20 + 1, 1);
        v10 = v23;
      }

      *(v10 + 16) = v20 + 1;
      sub_213EC31F8(v7, v10 + v12 + v20 * v14, type metadata accessor for RichTextViewModel);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_213EBD4DC@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v8 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  sub_213EC2060(v1, &v22 - v9, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_213EC31F8(v10, v12 + v11, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  sub_213EC2060(v1, v8, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  *a1 = sub_213EC3500;
  a1[1] = v12;
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB350, &qword_213F5F3E0) + 36));
  v14 = type metadata accessor for RichTextView(0);
  v15 = v13 + v14[10];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v16 = *&v8[*(v4 + 52)];

  sub_213EC2830(v8, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v17 = v14[5];
  *(v13 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v18 = v14[6];
  *(v13 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v19 = v13 + v14[7];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v13 + v14[8];
  result = swift_getKeyPath();
  *v20 = result;
  v20[8] = 0;
  *(v13 + v14[9]) = 3;
  *(v13 + v14[11]) = v16;
  *(v13 + v14[12]) = 0;
  *(v13 + v14[13]) = 0;
  return result;
}

uint64_t sub_213EBD798(uint64_t a1, __n128 a2)
{
  v13 = a2;
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0) + 20);
  v10 = *v8;
  v9 = *(v8 + 8);
  if (*(v8 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v11 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213EB8B1C();
    (*(v4 + 8))(v7, v3);
    v10 = v14.n128_u64[0];
  }

  v14 = v13;
  v15 = 4;
  v10(&v14);
}

uint64_t sub_213EBD930@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9540, &qword_213F5DE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  v4 = sub_213F4E010();
  *(inited + 32) = v4;
  v5 = sub_213F4E030();
  *(inited + 33) = v5;
  v6 = sub_213F4E020();
  sub_213F4E020();
  if (sub_213F4E020() != v4)
  {
    v6 = sub_213F4E020();
  }

  sub_213F4E020();
  if (sub_213F4E020() != v5)
  {
    v6 = sub_213F4E020();
  }

  *a1 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB388, &qword_213F5F548);
  return sub_213EBDA34(v1, &a1[*(v7 + 44)]);
}

uint64_t sub_213EBDA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB390, &qword_213F5F550);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB398, &qword_213F5F558);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = sub_213F4D870();
  v18 = *(type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  sub_213F4CFF0();
  v19 = v28;
  *v16 = v17;
  *(v16 + 1) = v19;
  v16[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3A0, &qword_213F5F560);
  sub_213EBDCD8(a1, &v16[*(v20 + 44)]);
  v21 = sub_213F4D870();
  sub_213F4CFF0();
  v22 = v28;
  *v9 = v21;
  *(v9 + 1) = v22;
  v9[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3A8, &qword_213F5F568);
  sub_213EBE710(a1, &v9[*(v23 + 44)]);
  sub_213DE3164(v16, v14, &qword_27C8FB398, &qword_213F5F558);
  sub_213DE3164(v9, v7, &qword_27C8FB390, &qword_213F5F550);
  v24 = v27;
  sub_213DE3164(v14, v27, &qword_27C8FB398, &qword_213F5F558);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3B0, &qword_213F5F570);
  sub_213DE3164(v7, v24 + *(v25 + 48), &qword_27C8FB390, &qword_213F5F550);
  sub_213DE36FC(v9, &qword_27C8FB390, &qword_213F5F550);
  sub_213DE36FC(v16, &qword_27C8FB398, &qword_213F5F558);
  sub_213DE36FC(v7, &qword_27C8FB390, &qword_213F5F550);
  return sub_213DE36FC(v14, &qword_27C8FB398, &qword_213F5F558);
}

uint64_t sub_213EBDCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3E8, &qword_213F5F5A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB368, &qword_213F5F4B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  sub_213EBCC5C(&v21 - v16);
  *v10 = sub_213F4D8A0();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3F0, &qword_213F5F5B0);
  sub_213EBDEF0(a1, &v10[*(v18 + 44)]);
  sub_213DE3164(v17, v15, &qword_27C8FB368, &qword_213F5F4B8);
  sub_213DE3164(v10, v8, &qword_27C8FB3E8, &qword_213F5F5A8);
  sub_213DE3164(v15, a2, &qword_27C8FB368, &qword_213F5F4B8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3F8, &unk_213F5F5B8);
  sub_213DE3164(v8, a2 + *(v19 + 48), &qword_27C8FB3E8, &qword_213F5F5A8);
  sub_213DE36FC(v10, &qword_27C8FB3E8, &qword_213F5F5A8);
  sub_213DE36FC(v17, &qword_27C8FB368, &qword_213F5F4B8);
  sub_213DE36FC(v8, &qword_27C8FB3E8, &qword_213F5F5A8);
  return sub_213DE36FC(v15, &qword_27C8FB368, &qword_213F5F4B8);
}

uint64_t sub_213EBDEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB350, &qword_213F5F3E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v72 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v75 = (v66 - v7);
  v8 = sub_213F4CA70();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_213F4CA10();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v67 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RichTextView(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v71 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (v66 - v18);
  v20 = type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3D0, &qword_213F5F590);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v70 = v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = (v66 - v29);
  v66[2] = a1;
  sub_213EC2060(a1, v23, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  v31 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v32 = swift_allocObject();
  sub_213EC31F8(v23, v32 + v31, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  v74 = v30;
  *v30 = sub_213EC3B2C;
  v30[1] = v32;
  v33 = (v30 + *(v25 + 44));
  v34 = v33 + v14[12];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 4) = 0;
  v35 = sub_213EBD2BC();
  *v33 = swift_getKeyPath();
  v66[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v36 = v14[7];
  *(v33 + v36) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v37 = v14[8];
  *(v33 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v38 = v33 + v14[9];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v39 = v33 + v14[10];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  *(v33 + v14[11]) = 3;
  *(v33 + v14[13]) = v35;
  *(v33 + v14[14]) = 0;
  *(v33 + v14[15]) = 0;
  KeyPath = swift_getKeyPath();
  v41 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3D8, &qword_213F5F598) + 36);
  *v41 = KeyPath;
  *(v41 + 1) = 1;
  v41[16] = 0;
  v42 = v19 + v14[12];
  *(v42 + 4) = 0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4C0, &qword_213F5C5B0);
  v43 = (type metadata accessor for RichTextViewModel(0) - 8);
  v44 = *(*v43 + 72);
  v45 = (*(*v43 + 80) + 32) & ~*(*v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_213F55C80;
  v47 = v46 + v45;
  sub_213F4CA60();
  v48 = v67;
  sub_213F4CA20();
  v49 = v68;
  v50 = v69;
  (*(v68 + 16))(v47 + v43[7], v48, v69);
  sub_213F4CB30();
  (*(v49 + 8))(v48, v50);
  v52 = v43[9];
  v51 = v43[10];
  *(v47 + v43[8]) = 0;
  v53 = (v47 + v52);
  *v53 = 0;
  v53[1] = 0;
  *(v47 + v51) = 0;
  *(v47 + v43[11]) = 0;
  *(v47 + v43[12]) = 0;
  v54 = v47 + v43[13];
  *v54 = 0;
  *(v54 + 8) = 1;
  *(v47 + v43[14]) = 0;
  *v19 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v55 = v14[7];
  *(v19 + v55) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v56 = v14[8];
  *(v19 + v56) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v57 = v19 + v14[9];
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  v58 = v19 + v14[10];
  *v58 = swift_getKeyPath();
  v58[8] = 0;
  *(v19 + v14[11]) = 3;
  *(v19 + v14[13]) = v46;
  *(v19 + v14[14]) = 0;
  *(v19 + v14[15]) = 0;
  v59 = v75;
  sub_213EBD4DC(v75);
  v60 = v70;
  sub_213DE3164(v74, v70, &qword_27C8FB3D0, &qword_213F5F590);
  v61 = v71;
  sub_213EC2060(v19, v71, type metadata accessor for RichTextView);
  v62 = v72;
  sub_213DE3164(v59, v72, &qword_27C8FB350, &qword_213F5F3E0);
  v63 = v73;
  sub_213DE3164(v60, v73, &qword_27C8FB3D0, &qword_213F5F590);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB400, &qword_213F5F5C8);
  sub_213EC2060(v61, v63 + *(v64 + 48), type metadata accessor for RichTextView);
  sub_213DE3164(v62, v63 + *(v64 + 64), &qword_27C8FB350, &qword_213F5F3E0);
  sub_213DE36FC(v75, &qword_27C8FB350, &qword_213F5F3E0);
  sub_213EC2830(v19, type metadata accessor for RichTextView);
  sub_213DE36FC(v74, &qword_27C8FB3D0, &qword_213F5F590);
  sub_213DE36FC(v62, &qword_27C8FB350, &qword_213F5F3E0);
  sub_213EC2830(v61, type metadata accessor for RichTextView);
  return sub_213DE36FC(v60, &qword_27C8FB3D0, &qword_213F5F590);
}

uint64_t sub_213EBE710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3B8, &qword_213F5F578);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB368, &qword_213F5F4B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  sub_213EBCC5C(&v21 - v16);
  *v10 = sub_213F4DA50();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3C0, &qword_213F5F580);
  sub_213EBE928(a1, &v10[*(v18 + 44)]);
  sub_213DE3164(v17, v15, &qword_27C8FB368, &qword_213F5F4B8);
  sub_213DE3164(v10, v8, &qword_27C8FB3B8, &qword_213F5F578);
  sub_213DE3164(v15, a2, &qword_27C8FB368, &qword_213F5F4B8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3C8, &qword_213F5F588);
  sub_213DE3164(v8, a2 + *(v19 + 48), &qword_27C8FB3B8, &qword_213F5F578);
  sub_213DE36FC(v10, &qword_27C8FB3B8, &qword_213F5F578);
  sub_213DE36FC(v17, &qword_27C8FB368, &qword_213F5F4B8);
  sub_213DE36FC(v8, &qword_27C8FB3B8, &qword_213F5F578);
  return sub_213DE36FC(v15, &qword_27C8FB368, &qword_213F5F4B8);
}

uint64_t sub_213EBE928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB350, &qword_213F5F3E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v37 - v8);
  v10 = type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3D0, &qword_213F5F590);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = (&v37 - v20);
  sub_213EC2060(a1, v13, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = swift_allocObject();
  sub_213EC31F8(v13, v23 + v22, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  *v21 = sub_213EC331C;
  v21[1] = v23;
  v24 = (v21 + *(v15 + 44));
  v25 = type metadata accessor for RichTextView(0);
  v26 = v24 + v25[10];
  *(v26 + 4) = 0;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v27 = sub_213EBD2BC();
  *v24 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v28 = v25[5];
  *(v24 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v29 = v25[6];
  *(v24 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v30 = v24 + v25[7];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v24 + v25[8];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  *(v24 + v25[9]) = 3;
  *(v24 + v25[11]) = v27;
  *(v24 + v25[12]) = 0;
  *(v24 + v25[13]) = 0;
  KeyPath = swift_getKeyPath();
  v33 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3D8, &qword_213F5F598) + 36);
  *v33 = KeyPath;
  *(v33 + 1) = 1;
  v33[16] = 0;
  sub_213EBD4DC(v9);
  sub_213DE3164(v21, v19, &qword_27C8FB3D0, &qword_213F5F590);
  sub_213DE3164(v9, v7, &qword_27C8FB350, &qword_213F5F3E0);
  v34 = v38;
  sub_213DE3164(v19, v38, &qword_27C8FB3D0, &qword_213F5F590);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3E0, &qword_213F5F5A0);
  sub_213DE3164(v7, v34 + *(v35 + 48), &qword_27C8FB350, &qword_213F5F3E0);
  sub_213DE36FC(v9, &qword_27C8FB350, &qword_213F5F3E0);
  sub_213DE36FC(v21, &qword_27C8FB3D0, &qword_213F5F590);
  sub_213DE36FC(v7, &qword_27C8FB350, &qword_213F5F3E0);
  return sub_213DE36FC(v19, &qword_27C8FB3D0, &qword_213F5F590);
}

uint64_t sub_213EBED7C@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v2 = sub_213F4CB60();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_213F4F210();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v11 = &v31[-v10 - 8];
  v12 = type metadata accessor for FadingLabelViewModel(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v14);
  v18 = &v31[-v17 - 8];
  v34 = *(v1 + 24);

  sub_213F4F200();
  (*(v5 + 16))(v9, v11, v4);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v19 = qword_281182518;
  sub_213F4CB50();
  v20 = sub_213F4F260();
  v22 = v21;
  (*(v5 + 8))(v11, v4);
  v23 = [objc_opt_self() preferredFontForTextStyle_];
  v24 = sub_213F4E920();
  sub_213F4CB30();
  *&v18[v12[5]] = v34;
  *&v18[v12[6]] = MEMORY[0x277D84F90];
  *&v18[v12[7]] = 3;
  v25 = &v18[v12[8]];
  *v25 = v20;
  v25[1] = v22;
  *&v18[v12[9]] = v23;
  *&v18[v12[10]] = v24;
  v26 = &v18[v12[11]];
  *v26 = *(v1 + 5);
  v26[8] = *(v1 + 48);
  sub_213EC2060(v18, v16, type metadata accessor for FadingLabelViewModel);
  v32 = *v1;
  v33 = *(v1 + 16);
  v27 = swift_allocObject();
  v28 = v1[1];
  *(v27 + 16) = *v1;
  *(v27 + 32) = v28;
  *(v27 + 48) = v1[2];
  *(v27 + 64) = *(v1 + 48);
  sub_213E32160(&v34, v31);
  sub_213DE3164(&v32, v31, &qword_27C8FB358, &qword_213F5F4A8);
  FadingLabelView.init(model:tapHandler:)(v16, sub_213EC3570, v27, v30);
  return sub_213EC2830(v18, type metadata accessor for FadingLabelViewModel);
}

uint64_t sub_213EBF130(__int128 *a1)
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v12 = *a1;
  v7 = v12;
  if (v13 == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v8 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213DE36FC(&v12, &qword_27C8FB358, &qword_213F5F4A8);
    (*(v3 + 8))(v6, v2);
    v7 = v10;
  }

  v10 = xmmword_213F5E620;
  v11 = 4;
  v7(&v10);
}

uint64_t sub_213EBF2D0@<X0>(uint64_t a1@<X8>)
{
  v217 = a1;
  v192 = type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0);
  v1 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v187 = (&v172 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v185 = sub_213F4E230();
  v183 = *(v185 - 8);
  v3 = *(v183 + 64);
  MEMORY[0x28223BE20](v185);
  v182 = &v172 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for FeaturedInGuideContextLineAccessory(0);
  v5 = *(*(v184 - 8) + 64);
  MEMORY[0x28223BE20](v184);
  v176 = &v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB2A0, &qword_213F5EE68);
  v7 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v190 = &v172 - v8;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB2A8, &qword_213F5EE70);
  v9 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v181 = &v172 - v10;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB2B0, &qword_213F5EE78);
  v11 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v186 = &v172 - v12;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB2B8, &qword_213F5EE80);
  v13 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204);
  v191 = &v172 - v14;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB2C0, &qword_213F5EE88);
  v15 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v203 = &v172 - v16;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB2C8, &qword_213F5EE90);
  v17 = *(*(v216 - 8) + 64);
  MEMORY[0x28223BE20](v216);
  v205 = &v172 - v18;
  v178 = type metadata accessor for RealTimeChargerContextLineAccessory(0);
  v19 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v175 = &v172 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB2D0, &qword_213F5EE98);
  v21 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v23 = &v172 - v22;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB2D8, &qword_213F5EEA0);
  v24 = *(*(v197 - 8) + 64);
  MEMORY[0x28223BE20](v197);
  v179 = &v172 - v25;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB2E0, &qword_213F5EEA8);
  v26 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v196 = &v172 - v27;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB2E8, &qword_213F5EEB0);
  v28 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210);
  v199 = &v172 - v29;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB2F0, &qword_213F5EEB8);
  v30 = *(*(v213 - 8) + 64);
  MEMORY[0x28223BE20](v213);
  v215 = &v172 - v31;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB2F8, &qword_213F5EEC0);
  v32 = *(*(v207 - 8) + 64);
  MEMORY[0x28223BE20](v207);
  v209 = &v172 - v33;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB300, &qword_213F5EEC8);
  v34 = *(*(v193 - 8) + 64);
  MEMORY[0x28223BE20](v193);
  v194 = &v172 - v35;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB308, &qword_213F5EED0);
  v36 = *(*(v200 - 8) + 64);
  MEMORY[0x28223BE20](v200);
  v38 = &v172 - v37;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB310, &qword_213F5EED8);
  v39 = *(*(v206 - 8) + 64);
  MEMORY[0x28223BE20](v206);
  v201 = &v172 - v40;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB318, &qword_213F5EEE0);
  v41 = *(*(v208 - 8) + 64);
  MEMORY[0x28223BE20](v208);
  v198 = &v172 - v42;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB320, &qword_213F5EEE8);
  v43 = *(*(v214 - 8) + 64);
  MEMORY[0x28223BE20](v214);
  v211 = &v172 - v44;
  v45 = type metadata accessor for CustomContextLineAccessory(0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v48 = &v172 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_213F4CA10();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v172 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType(0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v57 = &v172 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for ContextLineAccessoryViewModel(0);
  sub_213EC2060(v212 + *(v58 + 20), v57, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v121 = v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB340, &qword_213F5EF68) + 48)];
      v122 = *(v50 + 32);
      v173 = v49;
      v174 = v53;
      v122(v53, v57, v49);
      v123 = v175;
      (*(v50 + 16))(v175, v53, v49);
      *(v123 + *(v178 + 20)) = v121;
      sub_213EC2060(v123, v23, type metadata accessor for RealTimeChargerContextLineAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EC2750();
      sub_213EC21D8(qword_281183B10, type metadata accessor for RealTimeChargerContextLineAccessory);
      v124 = v179;
      sub_213F4DBA0();
      sub_213DE3164(v124, v196, &qword_27C8FB2D8, &qword_213F5EEA0);
      swift_storeEnumTagMultiPayload();
      sub_213EC2554();
      sub_213EC2694();
      v125 = v199;
      sub_213F4DBA0();
      sub_213DE36FC(v124, &qword_27C8FB2D8, &qword_213F5EEA0);
      sub_213DE3164(v125, v209, &qword_27C8FB2E8, &qword_213F5EEB0);
      swift_storeEnumTagMultiPayload();
      sub_213EC24D8(&qword_281182A50, &qword_27C8FB318, &qword_213F5EEE0, sub_213EC2554);
      sub_213EC2608();
      v126 = v211;
      sub_213F4DBA0();
      sub_213DE36FC(v125, &qword_27C8FB2E8, &qword_213F5EEB0);
      sub_213DE3164(v126, v215, &qword_27C8FB320, &qword_213F5EEE8);
      swift_storeEnumTagMultiPayload();
      sub_213EC2420();
      sub_213EC27A4();
      sub_213F4DBA0();
      sub_213DE36FC(v126, &qword_27C8FB320, &qword_213F5EEE8);
      sub_213EC2830(v123, type metadata accessor for RealTimeChargerContextLineAccessory);
      return (*(v50 + 8))(v174, v173);
    case 2u:
      v102 = *(v50 + 32);
      v174 = v53;
      v87 = v49;
      v102(v53, v57, v49);
      v88 = v48;
      (*(v50 + 16))(v48, v53, v87);
      v103 = sub_213F4E920();
      v104 = &v48[*(v45 + 20)];
      *v104 = 0;
      *(v104 + 1) = 0;
      *&v48[*(v45 + 24)] = v103;
      *&v212 = type metadata accessor for CustomContextLineAccessory;
      sub_213EC2060(v48, v38, type metadata accessor for CustomContextLineAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EC21D8(&qword_281184250, type metadata accessor for CustomContextLineAccessory);
      v90 = v201;
      sub_213F4DBA0();
      sub_213DE3164(v90, v194, &qword_27C8FB310, &qword_213F5EED8);
      goto LABEL_9;
    case 3u:
      v107 = *(v50 + 32);
      v174 = v53;
      v108 = v49;
      v107(v53, v57, v49);
      v109 = v48;
      (*(v50 + 16))(v48, v53, v108);
      v110 = sub_213F4E920();
      *&v48[*(v45 + 20)] = xmmword_213F5ECC0;
      *&v48[*(v45 + 24)] = v110;
      *&v212 = type metadata accessor for CustomContextLineAccessory;
      sub_213EC2060(v48, v38, type metadata accessor for CustomContextLineAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EC21D8(&qword_281184250, type metadata accessor for CustomContextLineAccessory);
      v111 = v201;
      sub_213F4DBA0();
      sub_213DE3164(v111, v196, &qword_27C8FB310, &qword_213F5EED8);
      swift_storeEnumTagMultiPayload();
      sub_213EC2554();
      sub_213EC2694();
      v112 = v199;
      sub_213F4DBA0();
      sub_213DE36FC(v111, &qword_27C8FB310, &qword_213F5EED8);
      sub_213DE3164(v112, v209, &qword_27C8FB2E8, &qword_213F5EEB0);
      swift_storeEnumTagMultiPayload();
      sub_213EC24D8(&qword_281182A50, &qword_27C8FB318, &qword_213F5EEE0, sub_213EC2554);
      sub_213EC2608();
      v113 = v211;
      sub_213F4DBA0();
      sub_213DE36FC(v112, &qword_27C8FB2E8, &qword_213F5EEB0);
      sub_213DE3164(v113, v215, &qword_27C8FB320, &qword_213F5EEE8);
      swift_storeEnumTagMultiPayload();
      sub_213EC2420();
      sub_213EC27A4();
      sub_213F4DBA0();
      sub_213DE36FC(v113, &qword_27C8FB320, &qword_213F5EEE8);
      sub_213EC2830(v109, v212);
      return (*(v50 + 8))(v174, v108);
    case 4u:
      v86 = *(v50 + 32);
      v174 = v53;
      v87 = v49;
      v86(v53, v57, v49);
      v88 = v48;
      (*(v50 + 16))(v48, v53, v87);
      v89 = sub_213F4E920();
      *&v48[*(v45 + 20)] = xmmword_213F5ECB0;
      *&v48[*(v45 + 24)] = v89;
      *&v212 = type metadata accessor for CustomContextLineAccessory;
      sub_213EC2060(v48, v38, type metadata accessor for CustomContextLineAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EC21D8(&qword_281184250, type metadata accessor for CustomContextLineAccessory);
      v90 = v201;
      sub_213F4DBA0();
      sub_213DE3164(v90, v194, &qword_27C8FB310, &qword_213F5EED8);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      sub_213EC2554();
      v105 = v198;
      sub_213F4DBA0();
      sub_213DE36FC(v90, &qword_27C8FB310, &qword_213F5EED8);
      sub_213DE3164(v105, v209, &qword_27C8FB318, &qword_213F5EEE0);
      swift_storeEnumTagMultiPayload();
      sub_213EC24D8(&qword_281182A50, &qword_27C8FB318, &qword_213F5EEE0, sub_213EC2554);
      sub_213EC2608();
      v106 = v211;
      sub_213F4DBA0();
      sub_213DE36FC(v105, &qword_27C8FB318, &qword_213F5EEE0);
      sub_213DE3164(v106, v215, &qword_27C8FB320, &qword_213F5EEE8);
      swift_storeEnumTagMultiPayload();
      sub_213EC2420();
      sub_213EC27A4();
      sub_213F4DBA0();
      sub_213DE36FC(v106, &qword_27C8FB320, &qword_213F5EEE8);
      sub_213EC2830(v88, v212);
      return (*(v50 + 8))(v174, v87);
    case 5u:
      v127 = v50;
      v128 = *(v50 + 32);
      v173 = v49;
      v174 = v53;
      v129 = v49;
      v128(v53, v57, v49);
      v130 = v48;
      (*(v50 + 16))(v48, v53, v129);
      v131 = sub_213F4E920();
      v132 = &v48[*(v45 + 20)];
      *v132 = 0xD00000000000001BLL;
      *(v132 + 1) = 0x8000000213FA5A90;
      *&v48[*(v45 + 24)] = v131;
      sub_213EC2060(v48, v38, type metadata accessor for CustomContextLineAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EC21D8(&qword_281184250, type metadata accessor for CustomContextLineAccessory);
      v133 = v201;
      sub_213F4DBA0();
      sub_213DE3164(v133, v196, &qword_27C8FB310, &qword_213F5EED8);
      swift_storeEnumTagMultiPayload();
      sub_213EC2554();
      sub_213EC2694();
      v134 = v199;
      sub_213F4DBA0();
      sub_213DE36FC(v133, &qword_27C8FB310, &qword_213F5EED8);
      sub_213DE3164(v134, v209, &qword_27C8FB2E8, &qword_213F5EEB0);
      swift_storeEnumTagMultiPayload();
      sub_213EC24D8(&qword_281182A50, &qword_27C8FB318, &qword_213F5EEE0, sub_213EC2554);
      sub_213EC2608();
      v135 = v211;
      sub_213F4DBA0();
      sub_213DE36FC(v134, &qword_27C8FB2E8, &qword_213F5EEB0);
      sub_213DE3164(v135, v215, &qword_27C8FB320, &qword_213F5EEE8);
      swift_storeEnumTagMultiPayload();
      sub_213EC2420();
      sub_213EC27A4();
      sub_213F4DBA0();
      sub_213DE36FC(v135, &qword_27C8FB320, &qword_213F5EEE8);
      v136 = v130;
      goto LABEL_17;
    case 6u:
      v127 = v50;
      v150 = *(v50 + 32);
      v173 = v49;
      v174 = v53;
      v151 = v49;
      v150(v53, v57, v49);
      v152 = v48;
      (*(v50 + 16))(v48, v53, v151);
      v153 = sub_213F4E920();
      v154 = &v48[*(v45 + 20)];
      *v154 = 0xD000000000000011;
      *(v154 + 1) = 0x8000000213FA5AB0;
      *&v48[*(v45 + 24)] = v153;
      sub_213EC2060(v48, v38, type metadata accessor for CustomContextLineAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EC21D8(&qword_281184250, type metadata accessor for CustomContextLineAccessory);
      v155 = v201;
      sub_213F4DBA0();
      sub_213DE3164(v155, v194, &qword_27C8FB310, &qword_213F5EED8);
      swift_storeEnumTagMultiPayload();
      sub_213EC2554();
      v156 = v198;
      sub_213F4DBA0();
      sub_213DE36FC(v155, &qword_27C8FB310, &qword_213F5EED8);
      sub_213DE3164(v156, v209, &qword_27C8FB318, &qword_213F5EEE0);
      swift_storeEnumTagMultiPayload();
      sub_213EC24D8(&qword_281182A50, &qword_27C8FB318, &qword_213F5EEE0, sub_213EC2554);
      sub_213EC2608();
      v157 = v211;
      sub_213F4DBA0();
      sub_213DE36FC(v156, &qword_27C8FB318, &qword_213F5EEE0);
      sub_213DE3164(v157, v215, &qword_27C8FB320, &qword_213F5EEE8);
      swift_storeEnumTagMultiPayload();
      sub_213EC2420();
      sub_213EC27A4();
      sub_213F4DBA0();
      sub_213DE36FC(v157, &qword_27C8FB320, &qword_213F5EEE8);
      v136 = v152;
LABEL_17:
      sub_213EC2830(v136, type metadata accessor for CustomContextLineAccessory);
      return (*(v127 + 8))(v174, v173);
    case 7u:
      v115 = *v57;
      v114 = *(v57 + 1);
      v116 = *(v57 + 2);
      v117 = v57[24];
      *v23 = swift_getKeyPath();
      *(v23 + 1) = 0;
      v23[16] = 0;
      *(v23 + 3) = v115;
      *(v23 + 4) = v114;
      *(v23 + 5) = v116;
      v23[48] = v117;
      swift_storeEnumTagMultiPayload();
      sub_213EC2750();
      sub_213EC21D8(qword_281183B10, type metadata accessor for RealTimeChargerContextLineAccessory);

      v118 = v179;
      sub_213F4DBA0();
      sub_213DE3164(v118, v196, &qword_27C8FB2D8, &qword_213F5EEA0);
      swift_storeEnumTagMultiPayload();
      sub_213EC2554();
      sub_213EC2694();
      v119 = v199;
      sub_213F4DBA0();
      sub_213DE36FC(v118, &qword_27C8FB2D8, &qword_213F5EEA0);
      sub_213DE3164(v119, v209, &qword_27C8FB2E8, &qword_213F5EEB0);
      swift_storeEnumTagMultiPayload();
      sub_213EC24D8(&qword_281182A50, &qword_27C8FB318, &qword_213F5EEE0, sub_213EC2554);
      sub_213EC2608();
      v120 = v211;
      sub_213F4DBA0();
      sub_213DE36FC(v119, &qword_27C8FB2E8, &qword_213F5EEB0);
      sub_213DE3164(v120, v215, &qword_27C8FB320, &qword_213F5EEE8);
      swift_storeEnumTagMultiPayload();
      sub_213EC2420();
      sub_213EC27A4();
      sub_213F4DBA0();

      return sub_213DE36FC(v120, &qword_27C8FB320, &qword_213F5EEE8);
    case 8u:
      sub_213DD7500(v57, &KeyPath);
      v162 = *&v235[8];
      v163 = __swift_project_boxed_opaque_existential_0(&KeyPath, *&v235[8]);
      v164 = *(*(v162 - 8) + 64);
      MEMORY[0x28223BE20](v163);
      (*(v166 + 16))(&v172 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0));
      v167 = sub_213F4EC10();
      v238 = 0;
      *&v229 = v167;
      v232[17] = 0;
      sub_213EC2184();

      sub_213F4DBA0();
      v220 = v226;
      v221 = v227;
      v222 = v228;
      v218 = v224;
      v219 = v225;
      v239 = 0;
      v223 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB330, &qword_213F5EF58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB338, &qword_213F5EF60);
      sub_213EC22D8();
      sub_213EC24D8(&qword_281182B58, &qword_27C8FB338, &qword_213F5EF60, sub_213EC2184);
      sub_213F4DBA0();
      v168 = *v232;
      v169 = v203;
      *(v203 + 32) = v231;
      *(v169 + 48) = v168;
      *(v169 + 63) = *&v232[15];
      v170 = v230;
      *v169 = v229;
      *(v169 + 16) = v170;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB328, &qword_213F5EF50);
      sub_213EC2220();
      sub_213EC2364();
      v171 = v205;
      sub_213F4DBA0();
      sub_213DE3164(v171, v215, &qword_27C8FB2C8, &qword_213F5EE90);
      swift_storeEnumTagMultiPayload();
      sub_213EC2420();
      sub_213EC27A4();
      sub_213F4DBA0();

      sub_213DE36FC(v171, &qword_27C8FB2C8, &qword_213F5EE90);
      v149 = &KeyPath;
      goto LABEL_22;
    case 9u:
      v99 = *v57;
      v100 = *(v57 + 1);
      v101 = *(v57 + 2);
      v212 = *(v57 + 24);
      KeyPath = swift_getKeyPath();
      v234 = 0;
      v235[0] = 0;
      *&v235[8] = v212;
      *&v235[24] = v101;
      *&v236 = v99;
      *(&v236 + 1) = v100;
      v237 = 0;
      v231 = *&v235[16];
      *v232 = v236;
      *&v232[16] = 256;
      v229 = KeyPath;
      v230 = *v235;
      v238 = 1;
      sub_213EC2890(&KeyPath, &v218);
      sub_213EC2184();
      sub_213F4DBA0();
      v220 = v226;
      v221 = v227;
      v222 = v228;
      v218 = v224;
      v219 = v225;
      v239 = 0;
      v223 = 0;
      goto LABEL_19;
    case 0xAu:
      v158 = *v57;
      KeyPath = swift_getKeyPath();
      v234 = 0;
      v235[0] = 0;
      *&v235[8] = xmmword_213F52A60;
      *&v235[24] = v158;
      v236 = xmmword_213F5ECA0;
      v237 = 4;
      v231 = *&v235[16];
      *v232 = xmmword_213F5ECA0;
      *&v232[16] = 4;
      v229 = KeyPath;
      v230 = *v235;
      v238 = 0;
      sub_213EC2890(&KeyPath, &v218);
      sub_213EC2184();
      sub_213F4DBA0();
      v220 = v226;
      v221 = v227;
      v222 = v228;
      v218 = v224;
      v219 = v225;
      v239 = 1;
      v223 = 1;
      goto LABEL_19;
    case 0xBu:
      v85 = *v57;
      KeyPath = swift_getKeyPath();
      v234 = 0;
      v235[0] = 0;
      *&v235[8] = xmmword_213F52A60;
      *&v235[24] = v85;
      v236 = xmmword_213F55610;
      v237 = 4;
      v231 = *&v235[16];
      *v232 = xmmword_213F55610;
      *&v232[16] = 260;
      v229 = KeyPath;
      v230 = *v235;
      v238 = 1;
      sub_213EC2890(&KeyPath, &v218);
      sub_213EC2184();
      sub_213F4DBA0();
      v220 = v226;
      v221 = v227;
      v222 = v228;
      v218 = v224;
      v219 = v225;
      v239 = 1;
      v223 = 1;
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB330, &qword_213F5EF58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB338, &qword_213F5EF60);
      sub_213EC22D8();
      sub_213EC24D8(&qword_281182B58, &qword_27C8FB338, &qword_213F5EF60, sub_213EC2184);
      sub_213F4DBA0();
      v159 = *v232;
      v160 = v203;
      *(v203 + 32) = v231;
      *(v160 + 48) = v159;
      *(v160 + 63) = *&v232[15];
      v161 = v230;
      *v160 = v229;
      *(v160 + 16) = v161;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB328, &qword_213F5EF50);
      sub_213EC2220();
      sub_213EC2364();
      v97 = v205;
      sub_213F4DBA0();
      sub_213DE3164(v97, v215, &qword_27C8FB2C8, &qword_213F5EE90);
      swift_storeEnumTagMultiPayload();
      sub_213EC2420();
      sub_213EC27A4();
      sub_213F4DBA0();
      p_KeyPath = &KeyPath;
      goto LABEL_20;
    case 0xCu:
      v91 = *v57;
      v92 = swift_getKeyPath();
      LOBYTE(v218) = 0;
      v229 = v92;
      LOBYTE(v230) = 0;
      *(&v230 + 1) = 0xD00000000000001ALL;
      *&v231 = 0x8000000213FA5A70;
      *(&v231 + 1) = v91;
      *v232 = xmmword_213F5EC90;
      v232[16] = 4;
      v93 = v181;
      *(v181 + 32) = v231;
      *(v93 + 48) = xmmword_213F5EC90;
      *(v93 + 64) = 4;
      v94 = v230;
      *v93 = v229;
      *(v93 + 16) = v94;
      swift_storeEnumTagMultiPayload();
      sub_213EC2890(&v229, &v218);
      sub_213EC2184();
      sub_213EC21D8(&qword_281183BB8, type metadata accessor for FeaturedInGuideContextLineAccessory);
      v95 = v186;
      sub_213F4DBA0();
      sub_213DE3164(v95, v190, &qword_27C8FB2B0, &qword_213F5EE78);
      swift_storeEnumTagMultiPayload();
      sub_213EC20C8();
      sub_213EC21D8(qword_2811839D0, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
      v96 = v191;
      sub_213F4DBA0();
      sub_213DE36FC(v95, &qword_27C8FB2B0, &qword_213F5EE78);
      sub_213DE3164(v96, v203, &qword_27C8FB2B8, &qword_213F5EE80);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB328, &qword_213F5EF50);
      sub_213EC2220();
      sub_213EC2364();
      v97 = v205;
      sub_213F4DBA0();
      sub_213DE36FC(v96, &qword_27C8FB2B8, &qword_213F5EE80);
      sub_213DE3164(v97, v215, &qword_27C8FB2C8, &qword_213F5EE90);
      swift_storeEnumTagMultiPayload();
      sub_213EC2420();
      sub_213EC27A4();
      sub_213F4DBA0();
      p_KeyPath = &v229;
LABEL_20:
      sub_213EC28C8(p_KeyPath);
      return sub_213DE36FC(v97, &qword_27C8FB2C8, &qword_213F5EE90);
    case 0xDu:
      *&v212 = *(v57 + 5);
      sub_213DD7500(v57, &v229);
      v137 = v184;
      v138 = v176;
      sub_213DEBAA8(&v229, &v176[*(v184 + 32)]);
      *v138 = swift_getKeyPath();
      *(v138 + 8) = 0;
      *(v138 + 16) = 0;
      v139 = v137[5];
      *&v218 = 0x402C000000000000;
      v140 = *MEMORY[0x277CE0A68];
      v141 = v182;
      v142 = *(v183 + 104);
      v143 = v185;
      v142(v182, v140, v185);
      sub_213DE15D0();
      sub_213F4CFE0();
      v144 = v137[6];
      *&v218 = 0x4010000000000000;
      v142(v141, v140, v143);
      sub_213F4CFE0();
      v145 = v137[7];
      *&v218 = 0x4010000000000000;
      v142(v141, v140, v143);
      sub_213F4CFE0();
      *(v138 + v137[9]) = v212;
      v81 = type metadata accessor for FeaturedInGuideContextLineAccessory;
      sub_213EC2060(v138, v181, type metadata accessor for FeaturedInGuideContextLineAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EC2184();
      sub_213EC21D8(&qword_281183BB8, type metadata accessor for FeaturedInGuideContextLineAccessory);
      v146 = v186;
      sub_213F4DBA0();
      sub_213DE3164(v146, v190, &qword_27C8FB2B0, &qword_213F5EE78);
      swift_storeEnumTagMultiPayload();
      sub_213EC20C8();
      sub_213EC21D8(qword_2811839D0, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
      v147 = v191;
      sub_213F4DBA0();
      sub_213DE36FC(v146, &qword_27C8FB2B0, &qword_213F5EE78);
      sub_213DE3164(v147, v203, &qword_27C8FB2B8, &qword_213F5EE80);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB328, &qword_213F5EF50);
      sub_213EC2220();
      sub_213EC2364();
      v148 = v205;
      sub_213F4DBA0();
      sub_213DE36FC(v147, &qword_27C8FB2B8, &qword_213F5EE80);
      sub_213DE3164(v148, v215, &qword_27C8FB2C8, &qword_213F5EE90);
      swift_storeEnumTagMultiPayload();
      sub_213EC2420();
      sub_213EC27A4();
      sub_213F4DBA0();
      sub_213DE36FC(v148, &qword_27C8FB2C8, &qword_213F5EE90);
      v84 = v138;
      goto LABEL_15;
    case 0xEu:
      v69 = *(v57 + 6);
      v211 = *(v57 + 5);
      *&v212 = v69;
      sub_213DD7500(v57, &v229);
      v70 = v192;
      v71 = v187;
      sub_213DEBAA8(&v229, v187 + *(v192 + 36));
      *v71 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
      swift_storeEnumTagMultiPayload();
      v72 = v71 + v70[5];
      *v72 = swift_getKeyPath();
      *(v72 + 1) = 0;
      v72[16] = 0;
      v73 = v70[6];
      *&v218 = 0x402C000000000000;
      v74 = *MEMORY[0x277CE0A68];
      v75 = v182;
      v76 = *(v183 + 104);
      v77 = v185;
      v76(v182, v74, v185);
      sub_213DE15D0();
      sub_213F4CFE0();
      v78 = v70[7];
      *&v218 = 0x4010000000000000;
      v76(v75, v74, v77);
      sub_213F4CFE0();
      v79 = v70[8];
      *&v218 = 0x4010000000000000;
      v76(v75, v74, v77);
      sub_213F4CFE0();
      v80 = v212;
      *(v71 + v70[10]) = v211;
      *(v71 + v70[11]) = v80;
      v81 = type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory;
      sub_213EC2060(v71, v190, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EC20C8();
      sub_213EC21D8(qword_2811839D0, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
      v82 = v191;
      sub_213F4DBA0();
      sub_213DE3164(v82, v203, &qword_27C8FB2B8, &qword_213F5EE80);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB328, &qword_213F5EF50);
      sub_213EC2220();
      sub_213EC2364();
      v83 = v205;
      sub_213F4DBA0();
      sub_213DE36FC(v82, &qword_27C8FB2B8, &qword_213F5EE80);
      sub_213DE3164(v83, v215, &qword_27C8FB2C8, &qword_213F5EE90);
      swift_storeEnumTagMultiPayload();
      sub_213EC2420();
      sub_213EC27A4();
      sub_213F4DBA0();
      sub_213DE36FC(v83, &qword_27C8FB2C8, &qword_213F5EE90);
      v84 = v187;
LABEL_15:
      sub_213EC2830(v84, v81);
      v149 = &v229;
LABEL_22:
      result = __swift_destroy_boxed_opaque_existential_1(v149);
      break;
    default:
      v59 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB280, &qword_213F5ECE0) + 48)];
      v60 = *v59;
      v61 = *(v59 + 1);
      v62 = *(v50 + 32);
      v173 = v49;
      v174 = v53;
      v62(v53, v57, v49);
      (*(v50 + 16))(v48, v53, v49);
      v63 = sub_213F4E920();
      v64 = &v48[*(v45 + 20)];
      *v64 = v60;
      *(v64 + 1) = v61;
      *&v48[*(v45 + 24)] = v63;
      sub_213EC2060(v48, v38, type metadata accessor for CustomContextLineAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EC21D8(&qword_281184250, type metadata accessor for CustomContextLineAccessory);
      v65 = v201;
      sub_213F4DBA0();
      sub_213DE3164(v65, v194, &qword_27C8FB310, &qword_213F5EED8);
      swift_storeEnumTagMultiPayload();
      sub_213EC2554();
      v66 = v198;
      sub_213F4DBA0();
      sub_213DE36FC(v65, &qword_27C8FB310, &qword_213F5EED8);
      sub_213DE3164(v66, v209, &qword_27C8FB318, &qword_213F5EEE0);
      swift_storeEnumTagMultiPayload();
      sub_213EC24D8(&qword_281182A50, &qword_27C8FB318, &qword_213F5EEE0, sub_213EC2554);
      sub_213EC2608();
      v67 = v211;
      sub_213F4DBA0();
      sub_213DE36FC(v66, &qword_27C8FB318, &qword_213F5EEE0);
      sub_213DE3164(v67, v215, &qword_27C8FB320, &qword_213F5EEE8);
      swift_storeEnumTagMultiPayload();
      sub_213EC2420();
      sub_213EC27A4();
      sub_213F4DBA0();
      sub_213DE36FC(v67, &qword_27C8FB320, &qword_213F5EEE8);
      sub_213EC2830(v48, type metadata accessor for CustomContextLineAccessory);
      result = (*(v50 + 8))(v174, v173);
      break;
  }

  return result;
}

__n128 sub_213EC1E34@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB290, &qword_213F5EE28);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - v5;
  sub_213EBF2D0(v13 - v5);
  KeyPath = swift_getKeyPath();
  v8 = &v6[*(v3 + 44)];
  *v8 = KeyPath;
  *(v8 + 1) = 1;
  v8[16] = 0;
  sub_213F4EEF0();
  sub_213F4D4E0();
  sub_213EC1F70(v6, a1);
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB298, &qword_213F5EE60) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_213EC1F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB290, &qword_213F5EE28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213EC2060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_213EC20C8()
{
  result = qword_281182B60;
  if (!qword_281182B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB2B0, &qword_213F5EE78);
    sub_213EC2184();
    sub_213EC21D8(&qword_281183BB8, type metadata accessor for FeaturedInGuideContextLineAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B60);
  }

  return result;
}

unint64_t sub_213EC2184()
{
  result = qword_281183D08;
  if (!qword_281183D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183D08);
  }

  return result;
}

uint64_t sub_213EC21D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213EC2220()
{
  result = qword_281182A00;
  if (!qword_281182A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB328, &qword_213F5EF50);
    sub_213EC22D8();
    sub_213EC24D8(&qword_281182B58, &qword_27C8FB338, &qword_213F5EF60, sub_213EC2184);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A00);
  }

  return result;
}

unint64_t sub_213EC22D8()
{
  result = qword_281182A98;
  if (!qword_281182A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB330, &qword_213F5EF58);
    sub_213EC2184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A98);
  }

  return result;
}

unint64_t sub_213EC2364()
{
  result = qword_281182A48;
  if (!qword_281182A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB2B8, &qword_213F5EE80);
    sub_213EC20C8();
    sub_213EC21D8(qword_2811839D0, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A48);
  }

  return result;
}

unint64_t sub_213EC2420()
{
  result = qword_2811829E8;
  if (!qword_2811829E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB320, &qword_213F5EEE8);
    sub_213EC24D8(&qword_281182A50, &qword_27C8FB318, &qword_213F5EEE0, sub_213EC2554);
    sub_213EC2608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829E8);
  }

  return result;
}

uint64_t sub_213EC24D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213EC2554()
{
  result = qword_281182B68;
  if (!qword_281182B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB310, &qword_213F5EED8);
    sub_213EC21D8(&qword_281184250, type metadata accessor for CustomContextLineAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B68);
  }

  return result;
}

unint64_t sub_213EC2608()
{
  result = qword_281182A58;
  if (!qword_281182A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB2E8, &qword_213F5EEB0);
    sub_213EC2554();
    sub_213EC2694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A58);
  }

  return result;
}

unint64_t sub_213EC2694()
{
  result = qword_281182B80;
  if (!qword_281182B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB2D8, &qword_213F5EEA0);
    sub_213EC2750();
    sub_213EC21D8(qword_281183B10, type metadata accessor for RealTimeChargerContextLineAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B80);
  }

  return result;
}

unint64_t sub_213EC2750()
{
  result = qword_281184608[0];
  if (!qword_281184608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281184608);
  }

  return result;
}

unint64_t sub_213EC27A4()
{
  result = qword_2811829C8;
  if (!qword_2811829C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB2C8, &qword_213F5EE90);
    sub_213EC2220();
    sub_213EC2364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829C8);
  }

  return result;
}

uint64_t sub_213EC2830(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_213EC2920()
{
  sub_213EC2A64(319, &qword_281183518, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213EC2AC8();
    if (v1 <= 0x3F)
    {
      sub_213DE2338();
      if (v2 <= 0x3F)
      {
        sub_213EC2B2C(319, &qword_281187B58);
        if (v3 <= 0x3F)
        {
          sub_213EC2A64(319, &qword_2811824C0, type metadata accessor for RichTextViewModel, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213EC2A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213EC2AC8()
{
  if (!qword_2811834F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB0B0, &unk_213F5EFA0);
    v0 = sub_213F4CEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811834F0);
    }
  }
}

uint64_t sub_213EC2B2C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_213EC2BB0()
{
  sub_213EC2AC8();
  if (v0 <= 0x3F)
  {
    sub_213DE2338();
    if (v1 <= 0x3F)
    {
      sub_213EC2B2C(319, &qword_281187B58);
      if (v2 <= 0x3F)
      {
        sub_213EC2A64(319, &qword_2811824C0, type metadata accessor for RichTextViewModel, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign13AccessoryTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_213EC2CD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213EC2D1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213EC2DA8()
{
  result = sub_213F4CA10();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213EC2E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213EC2E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213EC2EEC()
{
  sub_213F4CA10();
  if (v0 <= 0x3F)
  {
    sub_213DF1948();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_213EC2F78()
{
  result = qword_2811830A8;
  if (!qword_2811830A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB298, &qword_213F5EE60);
    sub_213EC3004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830A8);
  }

  return result;
}

unint64_t sub_213EC3004()
{
  result = qword_281183378;
  if (!qword_281183378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB290, &qword_213F5EE28);
    sub_213EC30BC();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183378);
  }

  return result;
}

unint64_t sub_213EC30BC()
{
  result = qword_2811829C0;
  if (!qword_2811829C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB348, &unk_213F5F1F0);
    sub_213EC2420();
    sub_213EC27A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829C0);
  }

  return result;
}

uint64_t sub_213EC31F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213EC32BC()
{
  v1 = *(type metadata accessor for FeaturedInGuideContextLineAccessory(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_213EBCA38(v2);
}

uint64_t objectdestroy_100Tm()
{
  v1 = type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D390();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = &v4[v1[5]];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = v7[16];
  sub_213EB8B1C();
  v11 = v1[6];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  v13 = *(*(v12 - 8) + 8);
  v13(&v4[v11], v12);
  v13(&v4[v1[7]], v12);
  v13(&v4[v1[8]], v12);
  __swift_destroy_boxed_opaque_existential_1(&v4[v1[9]]);
  v14 = *&v4[v1[10]];

  v15 = *&v4[v1[11]];

  return swift_deallocObject();
}

unint64_t sub_213EC3578(uint64_t a1)
{
  result = sub_213DE22E8();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_213EC3600(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void sub_213EC3784(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t sub_213EC39EC()
{
  result = qword_281182BB0;
  if (!qword_281182BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB430, &qword_213F5F618);
    sub_213EC21D8(qword_281187F70, type metadata accessor for RichTextView);
    sub_213EC21D8(&qword_281184250, type metadata accessor for CustomContextLineAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182BB0);
  }

  return result;
}

uint64_t (*EnvironmentValues.listCellAccessoryTapHandler.getter())()
{
  sub_213EC3F40();
  sub_213F4D820();
  *(swift_allocObject() + 16) = v1;
  return sub_213E14F88;
}

double sub_213EC3B9C@<D0>(_OWORD *a1@<X8>)
{
  sub_213EC3F40();
  sub_213F4D820();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_213EC3BEC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_213EC3F40();

  return sub_213F4D830();
}

uint64_t EnvironmentValues.listCellAccessoryTapHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_213EC3F40();
  return sub_213F4D830();
}

uint64_t AccessoryType.axIDString.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 1)
  {
    if (*(v0 + 16))
    {
      return 0x6567616D49;
    }

    else
    {
      return 0x63416D6F74737543;
    }
  }

  else if (v1 == 2)
  {
    return 0x6E6F69746341;
  }

  else if (v1 == 3)
  {
    return 0x656D656E69666552;
  }

  else
  {
    result = 6579265;
    switch(*v0)
    {
      case 1:
        result = 7235920;
        break;
      case 2:
        result = 1868983881;
        break;
      case 3:
        result = 1819042115;
        break;
      case 4:
        result = 0x6574656C6544;
        break;
      case 5:
        result = 0x6975427972657551;
        break;
      case 6:
        result = 0x6D6E6961746E6F43;
        break;
      case 7:
        result = 0x72617262694C6E49;
        break;
      case 8:
        result = 0x7547726573556E49;
        break;
      case 9:
        result = 0x6465727574616546;
        break;
      case 0xALL:
        result = 0xD000000000000018;
        break;
      case 0xBLL:
        result = 0xD00000000000001DLL;
        break;
      case 0xCLL:
        result = 1702129486;
        break;
      case 0xDLL:
        result = 0x6F69746365726944;
        break;
      case 0xELL:
        result = 0x7265766F796C46;
        break;
      case 0xFLL:
        result = 0x756F72416B6F6F4CLL;
        break;
      case 0x10:
        result = 0x65746973626557;
        break;
      case 0x11:
        result = 0x706F7453646441;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_213EC3F40()
{
  result = qword_2811882A8[0];
  if (!qword_2811882A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811882A8);
  }

  return result;
}

uint64_t (*static TapHandler.AccessoryEntityHandler.defaultValue.getter())()
{
  swift_beginAccess();
  v0 = off_281657F58;

  return v0;
}

uint64_t static TapHandler.AccessoryEntityHandler.defaultValue.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_281657F58 = a1;
  qword_281657F60 = a2;
}

uint64_t sub_213EC409C@<X0>(uint64_t (**a1)()@<X8>)
{
  swift_beginAccess();
  v3 = off_281657F58;
  v2 = qword_281657F60;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = sub_213EC4B44;
  a1[1] = v4;
}

uint64_t sub_213EC4120(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  off_281657F58 = sub_213EC4B50;
  qword_281657F60 = v3;
}

uint64_t sub_213EC41B0@<X0>(uint64_t (**a1)()@<X8>)
{
  swift_beginAccess();
  v3 = off_281657F58;
  v2 = qword_281657F60;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = sub_213EC4B44;
  a1[1] = v4;
}

void (*EnvironmentValues.listCellAccessoryTapHandler.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_213EC3F40();
  sub_213F4D820();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_213EC4B50;
  *(v4 + 8) = v5;
  return sub_213EC42F8;
}

void sub_213EC42F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
    v2[2] = sub_213EC4B44;
    v2[3] = v7;

    sub_213F4D830();
    v8 = v2[1];
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
    v2[2] = sub_213EC4B44;
    v2[3] = v9;
    sub_213F4D830();
  }

  free(v2);
}

uint64_t _s10MapsDesign13AccessoryTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        v17 = *a1;
        if (v3 == v6 && v2 == v5)
        {
          sub_213EC4B2C(v17, v2, 2u);
          sub_213EC4B2C(v3, v2, 2u);
          sub_213EB8F2C(v3, v2, 2u);
          v8 = v3;
          v9 = v2;
          v10 = 2;
          goto LABEL_193;
        }

        v13 = sub_213F4F830();
        sub_213EC4B2C(v6, v5, 2u);
        sub_213EC4B2C(v3, v2, 2u);
        sub_213EB8F2C(v3, v2, 2u);
        v14 = v6;
        v15 = v5;
        v16 = 2;
LABEL_36:
        sub_213EB8F2C(v14, v15, v16);
        return v13 & 1;
      }
    }

    else
    {
      if (v4 != 3)
      {
        v19 = *a1;
        switch(v3)
        {
          case 1:
            if (v7 != 4 || v6 != 1 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v25 = 1;
            sub_213EB8F2C(1, 0, 4u);
            return v25;
          case 2:
            if (v7 != 4 || v6 != 2 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 2;
            goto LABEL_192;
          case 3:
            if (v7 != 4 || v6 != 3 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 3;
            goto LABEL_192;
          case 4:
            if (v7 != 4 || v6 != 4 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 4;
            goto LABEL_192;
          case 5:
            if (v7 != 4 || v6 != 5 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 5;
            goto LABEL_192;
          case 6:
            if (v7 != 4 || v6 != 6 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 6;
            goto LABEL_192;
          case 7:
            if (v7 != 4 || v6 != 7 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 7;
            goto LABEL_192;
          case 8:
            if (v7 != 4 || v6 != 8 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 8;
            goto LABEL_192;
          case 9:
            if (v7 != 4 || v6 != 9 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 9;
            goto LABEL_192;
          case 10:
            if (v7 != 4 || v6 != 10 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 10;
            goto LABEL_192;
          case 11:
            if (v7 != 4 || v6 != 11 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 11;
            goto LABEL_192;
          case 12:
            if (v7 != 4 || v6 != 12 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 12;
            goto LABEL_192;
          case 13:
            if (v7 != 4 || v6 != 13 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 13;
            goto LABEL_192;
          case 14:
            if (v7 != 4 || v6 != 14 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 14;
            goto LABEL_192;
          case 15:
            if (v7 != 4 || v6 != 15 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 15;
            goto LABEL_192;
          case 16:
            if (v7 != 4 || v6 != 16 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 16;
            goto LABEL_192;
          case 17:
            if (v7 != 4 || v6 != 17 || v5 != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 17;
            goto LABEL_192;
          default:
            if (v7 != 4 || (v5 | v6) != 0)
            {
              goto LABEL_190;
            }

            sub_213EB8F2C(*a1, v2, 4u);
            v8 = 0;
LABEL_192:
            v9 = 0;
            v10 = 4;
            break;
        }

        goto LABEL_193;
      }

      if (v7 == 3)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_213EC4B2C(*a1, v2, 3u);
          sub_213EC4B2C(v3, v2, 3u);
          sub_213EB8F2C(v3, v2, 3u);
          v8 = v3;
          v9 = v2;
          v10 = 3;
LABEL_193:
          sub_213EB8F2C(v8, v9, v10);
          return 1;
        }

        v23 = *a1;
        v13 = sub_213F4F830();
        sub_213EC4B2C(v6, v5, 3u);
        sub_213EC4B2C(v3, v2, 3u);
        sub_213EB8F2C(v3, v2, 3u);
        v14 = v6;
        v15 = v5;
        v16 = 3;
        goto LABEL_36;
      }
    }

    goto LABEL_190;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v11 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        sub_213EC4B2C(v11, v2, 0);
        sub_213EC4B2C(v3, v2, 0);
        sub_213EB8F2C(v3, v2, 0);
        v8 = v3;
        v9 = v2;
        v10 = 0;
        goto LABEL_193;
      }

      v13 = sub_213F4F830();
      sub_213EC4B2C(v6, v5, 0);
      sub_213EC4B2C(v3, v2, 0);
      sub_213EB8F2C(v3, v2, 0);
      v14 = v6;
      v15 = v5;
      v16 = 0;
      goto LABEL_36;
    }

    goto LABEL_190;
  }

  if (v7 != 1)
  {
LABEL_190:
    sub_213EC4B2C(*a2, *(a2 + 8), v7);
    sub_213EC4B2C(v3, v2, v4);
    sub_213EB8F2C(v3, v2, v4);
    sub_213EB8F2C(v6, v5, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    v22 = *a1;
    v13 = sub_213F4F830();
    sub_213EC4B2C(v6, v5, 1u);
    sub_213EC4B2C(v3, v2, 1u);
    sub_213EB8F2C(v3, v2, 1u);
    v14 = v6;
    v15 = v5;
    v16 = 1;
    goto LABEL_36;
  }

  v25 = 1;
  sub_213EC4B2C(*a1, v2, 1u);
  sub_213EC4B2C(v3, v2, 1u);
  sub_213EB8F2C(v3, v2, 1u);
  sub_213EB8F2C(v3, v2, 1u);
  return v25;
}

uint64_t sub_213EC4A58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213EC4AA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_213EC4AE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_213EC4B2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_213EC4B54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_213EC4BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_213EC4C48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4DF50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB498, &qword_213F5FED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v20 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB4A0, &qword_213F5FED8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  sub_213DE3164(v1, &v20, &qword_27C8F7AB8, &qword_213F522C0);
  if (v21)
  {
    sub_213DD7500(&v20, v22);
    *v11 = sub_213F4EEE0();
    v11[1] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB4A8, &qword_213F5FEE0);
    sub_213EC4F14(v22, v1, v11 + *(v18 + 44));
    sub_213F4DF30();
    sub_213EC90DC();
    sub_213F4E640();
    (*(v4 + 8))(v7, v3);
    sub_213DE36FC(v11, &qword_27C8FB498, &qword_213F5FED0);
    (*(v13 + 32))(a1, v16, v12);
    (*(v13 + 56))(a1, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_213DE36FC(&v20, &qword_27C8F7AB8, &qword_213F522C0);
    return (*(v13 + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_213EC4F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v174 = a2;
  v181 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB4B8, &qword_213F5FEF0);
  v179 = *(v5 - 8);
  v180 = v5;
  v6 = *(v179 + 64);
  MEMORY[0x28223BE20](v5);
  v171 = v150 - v7;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB4C0, &qword_213F5FEF8);
  v8 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v168 = v150 - v9;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB4C8, &qword_213F5FF00);
  v10 = *(*(v166 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v166);
  v170 = v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v165 = v150 - v14;
  MEMORY[0x28223BE20](v13);
  v169 = v150 - v15;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB4D0, &qword_213F5FF08);
  v16 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v162 = (v150 - v17);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB4D8, &qword_213F5FF10);
  v18 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v163 = v150 - v19;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB4E0, &qword_213F5FF18);
  v20 = *(*(v158 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v158);
  v164 = v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v159 = v150 - v24;
  MEMORY[0x28223BE20](v23);
  v172 = v150 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB4E8, &qword_213F5FF20);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v178 = v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v177 = v150 - v30;
  v31 = type metadata accessor for MapsDesignImage();
  v32 = *(*(v31 - 1) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB4F0, &qword_213F5FF28);
  v36 = v35 - 8;
  v37 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v176 = v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = v150 - v40;
  sub_213DEBAA8(a1, &v34[v31[8]]);
  sub_213EC91CC(a2, &v186);
  v42 = swift_allocObject();
  v43 = v193;
  v42[7] = v192;
  v42[8] = v43;
  v42[9] = v194[0];
  *(v42 + 154) = *(v194 + 10);
  v44 = v189;
  v42[3] = v188;
  v42[4] = v44;
  v45 = v191;
  v42[5] = v190;
  v42[6] = v45;
  v46 = v187;
  v42[1] = v186;
  v42[2] = v46;
  v175 = sub_213F4EEE0();
  v173 = v47;
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v48 = v31[5];
  *&v34[v48] = swift_getKeyPath();
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v49 = v31[6];
  *&v34[v49] = swift_getKeyPath();
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v50 = v31[7];
  *&v34[v50] = swift_getKeyPath();
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v51 = &v34[v31[12]];
  v52 = &v34[v31[13]];
  v53 = &v34[v31[14]];
  v195 = 0uLL;
  *(&v196 + 7) = 0;
  *&v196 = 0;
  sub_213F4EA90();
  v54 = v199;
  v55 = BYTE8(v199);
  v56 = BYTE9(v199);
  v57 = BYTE10(v199);
  v58 = v200;
  *v53 = v198;
  *(v53 + 2) = v54;
  v53[24] = v55;
  v53[25] = v56;
  v53[26] = v57;
  *(v53 + 4) = v58;
  v59 = v31[15];
  *&v195 = 0;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v34[v59] = v198;
  v34[v31[9]] = 1;
  v60 = &v34[v31[10]];
  v61 = v173;
  *v60 = v175;
  *(v60 + 1) = v61;
  v34[v31[11]] = 1;
  *v51 = sub_213EC9204;
  v51[1] = v42;
  v62 = v41;
  *v52 = 0;
  *(v52 + 1) = 0;
  v63 = v174;
  v64 = *(v174 + 48);
  sub_213F4EEE0();
  sub_213F4D0C0();
  sub_213EC87CC(v34, v41, type metadata accessor for MapsDesignImage);
  v65 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220) + 36)];
  v66 = v196;
  *v65 = v195;
  *(v65 + 1) = v66;
  *(v65 + 2) = v197;
  sub_213EC8834(v34, type metadata accessor for MapsDesignImage);
  v67 = sub_213F4EEE0();
  v69 = v68;
  v70 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB4F8, &unk_213F5FFD0) + 36);
  sub_213EC5FC4(v63, v70);
  v71 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F82E8, &qword_213F53790) + 36));
  *v71 = v67;
  v71[1] = v69;
  v72 = sub_213F4EEE0();
  v74 = v73;
  v173 = objc_opt_self();
  v75 = [v173 tertiarySystemFillColor];
  v76 = sub_213F4E870();
  v77 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB500, &unk_213F5FFE0) + 36));
  *v77 = v76;
  v77[1] = v72;
  v77[2] = v74;
  v78 = *(v63 + 56);
  v79 = *(v36 + 44);
  v175 = v62;
  v80 = (v62 + v79);
  v81 = sub_213F4D470();
  v82 = *(v81 + 20);
  v83 = *MEMORY[0x277CE0118];
  v84 = sub_213F4D950();
  v85 = v80 + v82;
  v86 = v83;
  v87 = v83;
  v88 = (*(v84 - 8) + 104);
  v89 = *v88;
  (*v88)(v85, v87, v84);
  *v80 = v78;
  v80[1] = v78;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0);
  *(v80 + *(v153 + 36)) = 256;
  v90 = v63;
  sub_213DE3164(v63 + 72, &v186, &qword_27C8F7AB8, &qword_213F522C0);
  if (!*(&v187 + 1))
  {
    sub_213DE36FC(&v186, &qword_27C8F7AB8, &qword_213F522C0);
    goto LABEL_8;
  }

  sub_213DD7500(&v186, v185);
  if ((*(v63 + 120) & 1) != 0 || (*(v63 + 136) & 1) != 0 || (*(v63 + 152) & 1) != 0 || (v91 = *(v63 + 153), v91 == 2))
  {
    __swift_destroy_boxed_opaque_existential_1(v185);
LABEL_8:
    v92 = v177;
    (*(v179 + 56))(v177, 1, 1, v180);
    goto LABEL_9;
  }

  v99 = *(v90 + 112);
  v151 = v81;
  v152 = v99;
  v100 = *(v90 + 128);
  v101 = *(v90 + 144);
  v102 = v162;
  v103 = v162 + *(v81 + 20);
  v150[1] = v88;
  v104 = v89;
  v89(v103, v86, v84);
  *v102 = v101 + 1.5;
  v102[1] = v101 + 1.5;
  v105 = sub_213F4E8F0();
  *(v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D90, &qword_213F61EB0) + 36)) = v105;
  sub_213F4EEE0();
  sub_213F4D0C0();
  v106 = (v102 + *(v161 + 36));
  v107 = v199;
  *v106 = v198;
  v106[1] = v107;
  v106[2] = v200;
  if (v91)
  {
    v108 = v100;
  }

  else
  {
    v108 = -v100;
  }

  v109 = v102;
  v110 = v163;
  sub_213DE2B44(v109, v163, &qword_27C8FB4D0, &qword_213F5FF08);
  v111 = (v110 + *(v160 + 36));
  *v111 = v108;
  v111[1] = v100;
  v112 = *(v158 + 36);
  v113 = *MEMORY[0x277CE13C0];
  v114 = sub_213F4EF90();
  v115 = v159;
  (*(*(v114 - 8) + 104))(&v159[v112], v113, v114);
  sub_213DE2B44(v110, v115, &qword_27C8FB4D8, &qword_213F5FF10);
  sub_213DE2B44(v115, v172, &qword_27C8FB4E0, &qword_213F5FF18);
  sub_213DEBAA8(v185, &v34[v31[8]]);
  v116 = sub_213F4EEE0();
  v174 = v117;
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v118 = v31[5];
  *&v34[v118] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v119 = v31[6];
  *&v34[v119] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v120 = v31[7];
  *&v34[v120] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v121 = &v34[v31[12]];
  v122 = &v34[v31[13]];
  v123 = &v34[v31[14]];
  v182 = 0;
  v183 = 0;
  *(v184 + 7) = 0;
  v184[0] = 0;
  sub_213F4EA90();
  v124 = v187;
  v125 = BYTE8(v187);
  v126 = BYTE9(v187);
  v127 = BYTE10(v187);
  v128 = v188;
  *v123 = v186;
  *(v123 + 2) = v124;
  v123[24] = v125;
  v123[25] = v126;
  v123[26] = v127;
  *(v123 + 4) = v128;
  v129 = v31[15];
  v182 = 0;
  sub_213F4EA90();
  *&v34[v129] = v186;
  v34[v31[9]] = 1;
  v130 = &v34[v31[10]];
  v131 = v174;
  *v130 = v116;
  v130[1] = v131;
  v34[v31[11]] = 1;
  *v121 = 0;
  *(v121 + 1) = 0;
  *v122 = 0;
  *(v122 + 1) = 0;
  v132 = sub_213F4EEE0();
  v134 = v133;
  v135 = [v173 tertiarySystemFillColor];
  v136 = sub_213F4E870();
  v137 = v168;
  sub_213EC87CC(v34, v168, type metadata accessor for MapsDesignImage);
  v138 = (v137 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB510, &qword_213F60000) + 36));
  *v138 = v136;
  v138[1] = v132;
  v138[2] = v134;
  sub_213EC8834(v34, type metadata accessor for MapsDesignImage);
  v139 = (v137 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB518, &qword_213F60008) + 36));
  v104(v139 + *(v151 + 20), v86, v84);
  *v139 = v101;
  v139[1] = v101;
  *(v139 + *(v153 + 36)) = 256;
  sub_213F4EEE0();
  sub_213F4D0C0();
  v140 = (v137 + *(v167 + 36));
  v141 = v187;
  *v140 = v186;
  v140[1] = v141;
  v140[2] = v188;
  v142 = v165;
  sub_213DE2B44(v137, v165, &qword_27C8FB4C0, &qword_213F5FEF8);
  v143 = (v142 + *(v166 + 36));
  *v143 = v108;
  v143[1] = v100;
  v144 = v169;
  sub_213DE2B44(v142, v169, &qword_27C8FB4C8, &qword_213F5FF00);
  v145 = v172;
  v146 = v164;
  sub_213DE3164(v172, v164, &qword_27C8FB4E0, &qword_213F5FF18);
  v147 = v170;
  sub_213DE3164(v144, v170, &qword_27C8FB4C8, &qword_213F5FF00);
  v148 = v171;
  sub_213DE3164(v146, v171, &qword_27C8FB4E0, &qword_213F5FF18);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB520, &unk_213F60010);
  sub_213DE3164(v147, v148 + *(v149 + 48), &qword_27C8FB4C8, &qword_213F5FF00);
  sub_213DE36FC(v144, &qword_27C8FB4C8, &qword_213F5FF00);
  sub_213DE36FC(v145, &qword_27C8FB4E0, &qword_213F5FF18);
  __swift_destroy_boxed_opaque_existential_1(v185);
  sub_213DE36FC(v147, &qword_27C8FB4C8, &qword_213F5FF00);
  sub_213DE36FC(v146, &qword_27C8FB4E0, &qword_213F5FF18);
  v92 = v177;
  sub_213DE2B44(v148, v177, &qword_27C8FB4B8, &qword_213F5FEF0);
  (*(v179 + 56))(v92, 0, 1, v180);
LABEL_9:
  v94 = v175;
  v93 = v176;
  sub_213DCFE84(v175, v176);
  v95 = v178;
  sub_213DE3164(v92, v178, &qword_27C8FB4E8, &qword_213F5FF20);
  v96 = v181;
  sub_213DCFE84(v93, v181);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB508, &unk_213F5FFF0);
  sub_213DE3164(v95, v96 + *(v97 + 48), &qword_27C8FB4E8, &qword_213F5FF20);
  sub_213DE36FC(v92, &qword_27C8FB4E8, &qword_213F5FF20);
  sub_213DE36FC(v94, &qword_27C8FB4F0, &qword_213F5FF28);
  sub_213DE36FC(v95, &qword_27C8FB4E8, &qword_213F5FF20);
  return sub_213DE36FC(v93, &qword_27C8FB4F0, &qword_213F5FF28);
}

uint64_t sub_213EC5E30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ImageComposerView(0);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 40);
  if (v9)
  {
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    *(v8 + *(v4 + 20)) = v9;
    v10 = *(a1 + 48);

    sub_213F4EEE0();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A90, &qword_213F55BB0);
    a2[3] = v11;
    a2[4] = sub_213E0C784();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    sub_213F4D0C0();
    sub_213EC87CC(v8, boxed_opaque_existential_1, type metadata accessor for ImageComposerView);
    v13 = (boxed_opaque_existential_1 + *(v11 + 36));
    v14 = v16[1];
    *v13 = v16[0];
    v13[1] = v14;
    v13[2] = v16[2];
    return sub_213EC8834(v8, type metadata accessor for ImageComposerView);
  }

  else
  {
    v15 = MEMORY[0x277CE1410];
    a2[3] = MEMORY[0x277CE1428];
    a2[4] = v15;
  }

  return result;
}

uint64_t sub_213EC5FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D470();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  if (*(a1 + 64) == 1)
  {
    v13 = *(a1 + 56);
    v14 = *(v4 + 20);
    v15 = *MEMORY[0x277CE0118];
    v30 = v10;
    v16 = sub_213F4D950();
    (*(*(v16 - 8) + 104))(&v7[v14], v15, v16);
    *v7 = v13;
    *(v7 + 1) = v13;
    sub_213F4E8C0();
    v17 = sub_213F4E900();

    sub_213F4CF60();
    v18 = MEMORY[0x277CDFC08];
    sub_213EC87CC(v7, v12, MEMORY[0x277CDFC08]);
    v19 = *&v31 * 0.5;
    v20 = &v12[*(v8 + 68)];
    sub_213EC87CC(v7, v20, v18);
    *(v20 + *(sub_213F4D460() + 20)) = v19;
    v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8448, &unk_213F53C50) + 36);
    v22 = v32;
    *v21 = v31;
    *(v21 + 16) = v22;
    *(v21 + 32) = v33;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8450, &unk_213F5EB70);
    *(v20 + *(v23 + 52)) = v17;
    *(v20 + *(v23 + 56)) = 256;
    v24 = sub_213F4EEE0();
    v26 = v25;
    sub_213EC8834(v7, v18);
    v27 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8458, &qword_213F53C60) + 36));
    *v27 = v24;
    v27[1] = v26;
    sub_213DC1F6C(v12, a2);
    return (*(v30 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v29 = *(v10 + 56);

    return v29(a2, 1, 1, v8);
  }
}

double sub_213EC62EC@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v26[-v12];
  v14 = v1 + *(type metadata accessor for ImageNavigationAccessory(0) + 20);
  sub_213DE3164(v14, v28, &qword_27C8F7AB8, &qword_213F522C0);
  v15 = *(v14 + 88);

  sub_213DBBD08(v13);
  sub_213F4D280();
  v16 = sub_213F4D270();
  v17 = *(v4 + 8);
  v17(v11, v3);
  v17(v13, v3);
  if (v16)
  {
    v18 = 30.0;
  }

  else
  {
    v18 = 40.0;
  }

  sub_213DBBD08(v8);
  sub_213F4D280();
  v19 = sub_213F4D270();
  v17(v11, v3);
  v17(v8, v3);
  v27 = 0;
  if (v19)
  {
    v20 = 15.0;
  }

  else
  {
    v20 = 20.0;
  }

  memset(v26, 0, sizeof(v26));
  v29 = 0u;
  v30 = 0u;
  memset(&v33[8], 0, 40);
  *&v31 = 0;
  sub_213DEBDF4(v28, &v29);
  *(&v31 + 1) = v15;
  *&v32 = v18;
  *(&v32 + 1) = v20;
  v33[0] = 0;
  sub_213DEBDF4(v26, &v33[8]);
  *&v34 = 0;
  BYTE8(v34) = 1;
  *v35 = 0;
  v35[8] = 1;
  *&v35[16] = 0;
  *&v35[24] = 257;
  v21 = v34;
  a1[6] = *&v33[32];
  a1[7] = v21;
  a1[8] = *v35;
  *(a1 + 138) = *&v35[10];
  v22 = v32;
  a1[2] = v31;
  a1[3] = v22;
  v23 = *&v33[16];
  a1[4] = *v33;
  a1[5] = v23;
  result = *&v29;
  v25 = v30;
  *a1 = v29;
  a1[1] = v25;
  return result;
}

double sub_213EC65A4@<D0>(_OWORD *a1@<X8>)
{
  v52 = a1;
  v53 = sub_213F4D390();
  v51 = *(v53 - 8);
  v2 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_213F4D290();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v54 = &v49 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v50 = &v49 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  v22 = type metadata accessor for ImageMediumAccessory(0);
  v23 = v1 + *(v22 + 24);
  v49 = v23;
  sub_213DE3164(v23, v58, &qword_27C8F7AB8, &qword_213F522C0);
  v55 = *(v23 + 88);

  v24 = v1;
  sub_213DBBD08(v21);
  sub_213F4D280();
  v25 = sub_213F4D270();
  v26 = *(v6 + 8);
  v26(v19, v5);
  v26(v21, v5);
  if (v25)
  {
    v27 = 30.0;
  }

  else
  {
    v27 = 64.0;
  }

  v28 = v24 + *(v22 + 20);
  sub_213EA886C(v4);
  LOBYTE(v28) = sub_213F4D370();
  (*(v51 + 8))(v4, v53);
  if (v28)
  {
    v29 = 10.0;
  }

  else
  {
    v29 = 14.0;
  }

  sub_213DBBD08(v16);
  sub_213F4D280();
  v30 = sub_213F4D270();
  v26(v19, v5);
  v26(v16, v5);
  if (v30)
  {
    v29 = 4.0;
  }

  v31 = v49;
  sub_213DE3164(v49 + 40, v57, &qword_27C8F7AB8, &qword_213F522C0);
  v32 = v50;
  sub_213DBBD08(v50);
  sub_213F4D280();
  v33 = sub_213F4D270();
  v26(v19, v5);
  v26(v32, v5);
  v34 = v54;
  sub_213DBBD08(v54);
  sub_213F4D280();
  v35 = v34;
  v36 = sub_213F4D270();
  v26(v19, v5);
  v26(v35, v5);
  v37 = v56;
  sub_213DBBD08(v56);
  sub_213F4D280();
  v38 = sub_213F4D270();
  v26(v19, v5);
  v26(v37, v5);
  v39 = *(v31 + 80);
  if (v33)
  {
    v40 = 0x4028000000000000;
  }

  else
  {
    v40 = 0x4038000000000000;
  }

  v59 = 0u;
  v60 = 0u;
  if (v36)
  {
    v41 = 0x4028000000000000;
  }

  else
  {
    v41 = 0x4038000000000000;
  }

  memset(&v63[8], 0, 32);
  if (v38)
  {
    v42 = 0x4000000000000000;
  }

  else
  {
    v42 = 0x4018000000000000;
  }

  *&v61 = 0;
  *&v63[40] = 0;
  sub_213DEBDF4(v58, &v59);
  *(&v61 + 1) = v55;
  *&v62 = v27;
  *(&v62 + 1) = v29;
  v63[0] = 1;
  sub_213DEBDF4(v57, &v63[8]);
  *&v64 = v40;
  BYTE8(v64) = 0;
  *v65 = v41;
  v65[8] = 0;
  *&v65[16] = v42;
  v65[24] = 0;
  v65[25] = v39;
  v43 = v64;
  v44 = v52;
  v52[6] = *&v63[32];
  v44[7] = v43;
  v44[8] = *v65;
  *(v44 + 138) = *&v65[10];
  v45 = v62;
  v44[2] = v61;
  v44[3] = v45;
  v46 = *&v63[16];
  v44[4] = *v63;
  v44[5] = v46;
  result = *&v59;
  v48 = v60;
  *v44 = v59;
  v44[1] = v48;
  return result;
}

double sub_213EC6B08@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = &v40 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v40 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = v1 + *(type metadata accessor for ImageSmallCircleAccessory(0) + 20);
  sub_213DE3164(v20, v45, &qword_27C8F7AB8, &qword_213F522C0);
  v43 = *(v20 + 88);

  sub_213DBBD08(v19);
  sub_213F4D280();
  v21 = sub_213F4D270();
  v22 = *(v4 + 8);
  v22(v17, v3);
  v22(v19, v3);
  if (v21)
  {
    v23 = 30.0;
  }

  else
  {
    v23 = 32.0;
  }

  sub_213DBBD08(v14);
  sub_213F4D280();
  v24 = sub_213F4D270();
  v22(v17, v3);
  v22(v14, v3);
  sub_213DE3164(v20 + 40, v44, &qword_27C8F7AB8, &qword_213F522C0);
  v25 = v40;
  sub_213DBBD08(v40);
  sub_213F4D280();
  v26 = sub_213F4D270();
  v22(v17, v3);
  v22(v25, v3);
  v27 = v41;
  sub_213DBBD08(v41);
  sub_213F4D280();
  v28 = sub_213F4D270();
  v22(v17, v3);
  v22(v27, v3);
  v29 = v42;
  sub_213DBBD08(v42);
  sub_213F4D280();
  v30 = sub_213F4D270();
  v22(v17, v3);
  v22(v29, v3);
  if (v24)
  {
    v31 = 15.0;
  }

  else
  {
    v31 = 16.0;
  }

  if (v26)
  {
    v32 = 0x402A000000000000;
  }

  else
  {
    v32 = 0x402C000000000000;
  }

  v47 = 0u;
  v46 = 0u;
  if (v28)
  {
    v33 = 0x4025000000000000;
  }

  else
  {
    v33 = 0x4026000000000000;
  }

  memset(&v50[8], 0, 32);
  if (v30)
  {
    v34 = 0x401A000000000000;
  }

  else
  {
    v34 = 0x401C000000000000;
  }

  *&v48 = 0;
  *&v50[40] = 0;
  sub_213DEBDF4(v45, &v46);
  *(&v48 + 1) = v43;
  *&v49 = v23;
  *(&v49 + 1) = v31;
  v50[0] = 0;
  sub_213DEBDF4(v44, &v50[8]);
  *&v51 = v32;
  BYTE8(v51) = 0;
  *v52 = v33;
  v52[8] = 0;
  *&v52[16] = v34;
  *&v52[24] = 256;
  v35 = v51;
  a1[6] = *&v50[32];
  a1[7] = v35;
  a1[8] = *v52;
  *(a1 + 138) = *&v52[10];
  v36 = v49;
  a1[2] = v48;
  a1[3] = v36;
  v37 = *&v50[16];
  a1[4] = *v50;
  a1[5] = v37;
  result = *&v46;
  v39 = v47;
  *a1 = v46;
  a1[1] = v39;
  return result;
}

double sub_213EC6F64@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-v9];
  v11 = v1 + *(type metadata accessor for ImageSmallAppIconAccessory(0) + 20);
  sub_213DE3164(v11, v22, &qword_27C8F7AB8, &qword_213F522C0);
  v12 = *(v11 + 88);

  sub_213DBBD08(v10);
  sub_213F4D280();
  v13 = sub_213F4D270();
  v14 = *(v4 + 8);
  v14(v8, v3);
  v14(v10, v3);
  if (v13)
  {
    v15 = 30.0;
  }

  else
  {
    v15 = 32.0;
  }

  sub_213DE3164(v11 + 40, v21, &qword_27C8F7AB8, &qword_213F522C0);
  v23 = 0u;
  v24 = 0u;
  memset(&v27[8], 0, 40);
  *&v25 = 0;
  sub_213DEBDF4(v22, &v23);
  *(&v25 + 1) = v12;
  v26 = *&v15;
  v27[0] = 0;
  sub_213DEBDF4(v21, &v27[8]);
  *&v28 = 0;
  BYTE8(v28) = 1;
  *v29 = 0;
  v29[8] = 1;
  *&v29[16] = 0;
  *&v29[24] = 257;
  v16 = v28;
  a1[6] = *&v27[32];
  a1[7] = v16;
  a1[8] = *v29;
  *(a1 + 138) = *&v29[10];
  v17 = v26;
  a1[2] = v25;
  a1[3] = v17;
  v18 = *&v27[16];
  a1[4] = *v27;
  a1[5] = v18;
  result = *&v23;
  v20 = v24;
  *a1 = v23;
  a1[1] = v20;
  return result;
}

double sub_213EC71AC@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = v1 + *(type metadata accessor for ImageSmallRoundedRectAccessory(0) + 20);
  sub_213DE3164(v14, v26, &qword_27C8F7AB8, &qword_213F522C0);
  v24 = *(v14 + 88);

  sub_213DBBD08(v13);
  sub_213F4D280();
  v15 = sub_213F4D270();
  v16 = *(v4 + 8);
  v16(v11, v3);
  v16(v13, v3);
  if (v15)
  {
    v17 = 30.0;
  }

  else
  {
    v17 = 32.0;
  }

  sub_213DBBD08(v11);
  sub_213F4D280();
  sub_213F4D270();
  v16(v8, v3);
  v16(v11, v3);
  sub_213DE3164(v14 + 40, v25, &qword_27C8F7AB8, &qword_213F522C0);
  v27 = 0u;
  v28 = 0u;
  memset(&v31[8], 0, 40);
  *&v29 = 0;
  sub_213DEBDF4(v26, &v27);
  *(&v29 + 1) = v24;
  *&v30 = v17;
  *(&v30 + 1) = 0x4018000000000000;
  v31[0] = 1;
  sub_213DEBDF4(v25, &v31[8]);
  *&v32 = 0;
  BYTE8(v32) = 1;
  *v33 = 0;
  v33[8] = 1;
  *&v33[16] = 0;
  *&v33[24] = 257;
  v18 = v32;
  a1[6] = *&v31[32];
  a1[7] = v18;
  a1[8] = *v33;
  *(a1 + 138) = *&v33[10];
  v19 = v30;
  a1[2] = v29;
  a1[3] = v19;
  v20 = *&v31[16];
  a1[4] = *v31;
  a1[5] = v20;
  result = *&v27;
  v22 = v28;
  *a1 = v27;
  a1[1] = v22;
  return result;
}

uint64_t sub_213EC7468@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v67 = type metadata accessor for ImageSmallAppIconAccessory(0);
  v3 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v5 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for ImageNavigationAccessory(0);
  v6 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v52 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB460, &qword_213F5F928);
  v8 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v52 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB458, &qword_213F5F920);
  v10 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v57 = &v52 - v11;
  v55 = type metadata accessor for ImageMediumAccessory(0);
  v12 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v14 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for ImageSmallRoundedRectAccessory(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB468, &qword_213F5F930);
  v19 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v65 = &v52 - v20;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB470, &qword_213F5F938);
  v21 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v60 = &v52 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB478, &qword_213F5F940);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - v25;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB450, &qword_213F5F918);
  v27 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v29 = &v52 - v28;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB448, &qword_213F5F910);
  v30 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v62 = &v52 - v31;
  v32 = type metadata accessor for ImageSmallCircleAccessory(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = (&v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *a1;
  v37 = (a1 + 8);
  v36 = v38;
  if (v38 <= 1)
  {
    if (v36)
    {
      sub_213EC8794(v37, v18 + *(v15 + 20));
      *v18 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v41 = type metadata accessor for ImageSmallRoundedRectAccessory;
      sub_213EC87CC(v18, v26, type metadata accessor for ImageSmallRoundedRectAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EC85E0(&qword_2811844D0, type metadata accessor for ImageSmallCircleAccessory);
      sub_213EC85E0(qword_281183DA8, type metadata accessor for ImageSmallRoundedRectAccessory);
      sub_213F4DBA0();
      sub_213DE3164(v29, v60, &qword_27C8FB450, &qword_213F5F918);
      swift_storeEnumTagMultiPayload();
      sub_213EC84D4();
      sub_213EC8648();
      v50 = v62;
      sub_213F4DBA0();
      sub_213DE36FC(v29, &qword_27C8FB450, &qword_213F5F918);
      sub_213DE3164(v50, v65, &qword_27C8FB448, &qword_213F5F910);
      swift_storeEnumTagMultiPayload();
      sub_213EC8448();
      sub_213EC85E0(qword_2811841B0, type metadata accessor for ImageSmallAppIconAccessory);
      sub_213F4DBA0();
      sub_213DE36FC(v50, &qword_27C8FB448, &qword_213F5F910);
      v44 = v18;
    }

    else
    {
      sub_213EC8794(v37, v35 + *(v32 + 20));
      *v35 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v41 = type metadata accessor for ImageSmallCircleAccessory;
      sub_213EC87CC(v35, v26, type metadata accessor for ImageSmallCircleAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EC85E0(&qword_2811844D0, type metadata accessor for ImageSmallCircleAccessory);
      sub_213EC85E0(qword_281183DA8, type metadata accessor for ImageSmallRoundedRectAccessory);
      sub_213F4DBA0();
      sub_213DE3164(v29, v60, &qword_27C8FB450, &qword_213F5F918);
      swift_storeEnumTagMultiPayload();
      sub_213EC84D4();
      sub_213EC8648();
      v45 = v62;
      sub_213F4DBA0();
      sub_213DE36FC(v29, &qword_27C8FB450, &qword_213F5F918);
      sub_213DE3164(v45, v65, &qword_27C8FB448, &qword_213F5F910);
      swift_storeEnumTagMultiPayload();
      sub_213EC8448();
      sub_213EC85E0(qword_2811841B0, type metadata accessor for ImageSmallAppIconAccessory);
      sub_213F4DBA0();
      sub_213DE36FC(v45, &qword_27C8FB448, &qword_213F5F910);
      v44 = v35;
    }

    goto LABEL_10;
  }

  if (v36 != 2)
  {
    if (v36 == 3)
    {
      v39 = v55;
      sub_213EC8794(v37, v14 + *(v55 + 24));
      *v14 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v40 = *(v39 + 20);
      *(v14 + v40) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
      swift_storeEnumTagMultiPayload();
      v41 = type metadata accessor for ImageMediumAccessory;
      sub_213EC87CC(v14, v53, type metadata accessor for ImageMediumAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EC85E0(qword_281185468, type metadata accessor for ImageMediumAccessory);
      sub_213EC85E0(&qword_281184740, type metadata accessor for ImageNavigationAccessory);
      v42 = v57;
      sub_213F4DBA0();
      sub_213DE3164(v42, v60, &qword_27C8FB458, &qword_213F5F920);
      swift_storeEnumTagMultiPayload();
      sub_213EC84D4();
      sub_213EC8648();
      v43 = v62;
      sub_213F4DBA0();
      sub_213DE36FC(v42, &qword_27C8FB458, &qword_213F5F920);
      sub_213DE3164(v43, v65, &qword_27C8FB448, &qword_213F5F910);
      swift_storeEnumTagMultiPayload();
      sub_213EC8448();
      sub_213EC85E0(qword_2811841B0, type metadata accessor for ImageSmallAppIconAccessory);
      sub_213F4DBA0();
      sub_213DE36FC(v43, &qword_27C8FB448, &qword_213F5F910);
      v44 = v14;
    }

    else
    {
      v47 = v52;
      sub_213EC8794(v37, v52 + *(v56 + 20));
      *v47 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v41 = type metadata accessor for ImageNavigationAccessory;
      sub_213EC87CC(v47, v53, type metadata accessor for ImageNavigationAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EC85E0(qword_281185468, type metadata accessor for ImageMediumAccessory);
      sub_213EC85E0(&qword_281184740, type metadata accessor for ImageNavigationAccessory);
      v48 = v57;
      sub_213F4DBA0();
      sub_213DE3164(v48, v60, &qword_27C8FB458, &qword_213F5F920);
      swift_storeEnumTagMultiPayload();
      sub_213EC84D4();
      sub_213EC8648();
      v49 = v62;
      sub_213F4DBA0();
      sub_213DE36FC(v48, &qword_27C8FB458, &qword_213F5F920);
      sub_213DE3164(v49, v65, &qword_27C8FB448, &qword_213F5F910);
      swift_storeEnumTagMultiPayload();
      sub_213EC8448();
      sub_213EC85E0(qword_2811841B0, type metadata accessor for ImageSmallAppIconAccessory);
      sub_213F4DBA0();
      sub_213DE36FC(v49, &qword_27C8FB448, &qword_213F5F910);
      v44 = v47;
    }

LABEL_10:
    v46 = v41;
    return sub_213EC8834(v44, v46);
  }

  sub_213EC8794(v37, v5 + *(v67 + 20));
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  sub_213EC87CC(v5, v65, type metadata accessor for ImageSmallAppIconAccessory);
  swift_storeEnumTagMultiPayload();
  sub_213EC8448();
  sub_213EC85E0(qword_2811841B0, type metadata accessor for ImageSmallAppIconAccessory);
  sub_213F4DBA0();
  v44 = v5;
  v46 = type metadata accessor for ImageSmallAppIconAccessory;
  return sub_213EC8834(v44, v46);
}

uint64_t sub_213EC8240()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB438, &qword_213F5F900);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  sub_213EC7468(v0, &v6 - v3);
  sub_213EC8308();
  sub_213F4E620();
  return sub_213DE36FC(v4, &qword_27C8FB438, &qword_213F5F900);
}

unint64_t sub_213EC8308()
{
  result = qword_2811827E8;
  if (!qword_2811827E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB438, &qword_213F5F900);
    sub_213EC838C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811827E8);
  }

  return result;
}

unint64_t sub_213EC838C()
{
  result = qword_2811829F0;
  if (!qword_2811829F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB440, &qword_213F5F908);
    sub_213EC8448();
    sub_213EC85E0(qword_2811841B0, type metadata accessor for ImageSmallAppIconAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829F0);
  }

  return result;
}

unint64_t sub_213EC8448()
{
  result = qword_281182A68;
  if (!qword_281182A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB448, &qword_213F5F910);
    sub_213EC84D4();
    sub_213EC8648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A68);
  }

  return result;
}

unint64_t sub_213EC84D4()
{
  result = qword_281182B78;
  if (!qword_281182B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB450, &qword_213F5F918);
    sub_213EC85E0(&qword_2811844D0, type metadata accessor for ImageSmallCircleAccessory);
    sub_213EC85E0(qword_281183DA8, type metadata accessor for ImageSmallRoundedRectAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B78);
  }

  return result;
}

uint64_t sub_213EC85E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213EC8648()
{
  result = qword_281182B90;
  if (!qword_281182B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB458, &qword_213F5F920);
    sub_213EC85E0(qword_281185468, type metadata accessor for ImageMediumAccessory);
    sub_213EC85E0(&qword_281184740, type metadata accessor for ImageNavigationAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B90);
  }

  return result;
}

uint64_t sub_213EC87CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213EC8834(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_213EC88E4()
{
  sub_213E5ABB8(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_213EC899C()
{
  sub_213E5ABB8(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    sub_213E5ABB8(319, &qword_281183518, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_213EC8C50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_213EC8CAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_213EC8D38()
{
  result = qword_281183248;
  if (!qword_281183248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB480, qword_213F5FAF8);
    sub_213EC8308();
    sub_213EC85E0(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183248);
  }

  return result;
}

unint64_t sub_213EC8DF8()
{
  result = qword_27C8FB488;
  if (!qword_27C8FB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB488);
  }

  return result;
}

__n128 __swift_memcpy154_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_213EC8F1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 154))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_213EC8F78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 154) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 154) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_213EC9014()
{
  result = qword_2811881F0[0];
  if (!qword_2811881F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811881F0);
  }

  return result;
}

unint64_t sub_213EC906C()
{
  result = qword_27C8FB490;
  if (!qword_27C8FB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB490);
  }

  return result;
}

unint64_t sub_213EC90DC()
{
  result = qword_281183160;
  if (!qword_281183160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB498, &qword_213F5FED0);
    sub_213EC9168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183160);
  }

  return result;
}

unint64_t sub_213EC9168()
{
  result = qword_281182660;
  if (!qword_281182660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB4B0, &qword_213F5FEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182660);
  }

  return result;
}

unint64_t sub_213EC920C()
{
  result = qword_281182818;
  if (!qword_281182818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB528, &qword_213F60020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB498, &qword_213F5FED0);
    sub_213EC90DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182818);
  }

  return result;
}

__n128 LeadingAccessoryViewModel.init(type:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F4CB30();
  v4 = a2 + *(type metadata accessor for LeadingAccessoryViewModel(0) + 20);
  v5 = *(a1 + 80);
  *(v4 + 64) = *(a1 + 64);
  *(v4 + 80) = v5;
  *(v4 + 89) = *(a1 + 89);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  result = *(a1 + 48);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = result;
  return result;
}

uint64_t LeadingAccessoryViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LeadingAccessoryViewModel.id.setter(uint64_t a1)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LeadingAccessoryViewModel.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LeadingAccessoryViewModel(0) + 20);

  return sub_213EC9484(v3, a1);
}

uint64_t LeadingAccessoryViewModel.type.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LeadingAccessoryViewModel(0) + 20);

  return sub_213EC9500(a1, v3);
}

uint64_t LeadingAccessoryViewModel.axIDString.getter()
{
  v1 = type metadata accessor for LeadingAccessoryViewModel(0);
  sub_213EC9484(v0 + *(v1 + 20), v3);
  if (v4 <= 1u)
  {
    if (v4)
    {
      sub_213EC9658(v3);
      return 0x656D756C6F56;
    }

    else
    {
      sub_213EC9658(v3);
      return 0x6C6F626D7953;
    }
  }

  else if (v4 == 2)
  {
    sub_213E5BD34(v3);
    return 0x6E61466F746F6850;
  }

  else if (v4 == 3)
  {
    sub_213EC9658(v3);
    return 0x7972617262694CLL;
  }

  else
  {
    sub_213EC9658(v3);
    return 0x656C69666F7250;
  }
}

uint64_t sub_213EC96F8()
{
  result = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_213EC97A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 105))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 104);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213EC97E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 89) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

uint64_t sub_213EC9834(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    v2 = a2 - 5;
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 104) = a2;
  return result;
}

void sub_213EC98BC()
{
  sub_213E5ABB8(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    sub_213E5ABB8(319, &qword_281183518, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LeadingAccessoryViewModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_213EC99AC@<D0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = &v55 - v4;
  v5 = sub_213F4D290();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v63 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v55 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  v61 = sub_213F4D7F0();
  v56 = *(v61 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x28223BE20](v61);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB5C8, &qword_213F60598);
  v23 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v60 = (&v55 - v24);
  v25 = type metadata accessor for NavigationSymbolLeadingAccessory(0);
  v26 = (v1 + v25[6]);
  v27 = *v26;
  v28 = v26[1];

  v58 = sub_213F4EA10();
  v29 = v1 + v25[5];
  v30 = *v29;
  if (*(v29 + 8) == 1)
  {
    if ((v30 & 1) == 0)
    {
LABEL_3:
      v56 = *(v1 + v25[7]);

      goto LABEL_6;
    }
  }

  else
  {

    sub_213F4F520();
    v31 = sub_213F4E000();
    v55 = v5;
    v32 = v19;
    v33 = v14;
    v34 = v1;
    v35 = v31;
    sub_213F4CC10();

    v1 = v34;
    v14 = v33;
    v19 = v32;
    v5 = v55;
    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213E053BC(v30, 0);
    (*(v56 + 8))(v22, v61);
    if (v65 != 1)
    {
      goto LABEL_3;
    }
  }

  v36 = [objc_opt_self() labelColor];
  v56 = sub_213F4E870();
LABEL_6:
  sub_213DBBD08(v19);
  sub_213F4D280();
  sub_213F4D270();
  v37 = *(v6 + 8);
  v37(v17, v5);
  v37(v19, v5);
  v61 = v1;
  sub_213DBBD08(v17);
  sub_213F4D280();
  v38 = sub_213F4D270();
  v37(v14, v5);
  v37(v17, v5);
  if (v38)
  {
    sub_213F4E110();
  }

  else
  {
    sub_213F4E160();
  }

  v39 = sub_213F4E0F0();
  v40 = v59;
  (*(*(v39 - 8) + 56))(v59, 1, 1, v39);
  v41 = sub_213F4E190();
  sub_213DE36FC(v40, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v43 = v60;
  v44 = (v60 + *(v57 + 36));
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v46 = *MEMORY[0x277CE1058];
  v47 = sub_213F4EA30();
  (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
  *v44 = swift_getKeyPath();
  v48 = v56;
  *v43 = v58;
  v43[1] = v48;
  v43[2] = KeyPath;
  v43[3] = v41;
  v49 = v62;
  sub_213DBBD08(v62);
  sub_213F4D280();
  sub_213F4D270();
  v37(v17, v5);
  v37(v49, v5);
  v50 = v63;
  sub_213DBBD08(v63);
  sub_213F4D280();
  sub_213F4D270();
  v37(v17, v5);
  v37(v50, v5);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v51 = v64;
  sub_213DE2B44(v43, v64, &qword_27C8FB5C8, &qword_213F60598);
  v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB5D0, &qword_213F60608) + 36));
  v53 = v66;
  *v52 = v65;
  v52[1] = v53;
  result = *&v67;
  v52[2] = v67;
  return result;
}

uint64_t sub_213ECA050@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = &v62 - v4;
  v5 = sub_213F4D290();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v74 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v62 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v62 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - v18;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB5C8, &qword_213F60598);
  v20 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v22 = (&v62 - v21);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB5D0, &qword_213F60608);
  v23 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v72 = &v62 - v24;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB5D8, &qword_213F60610);
  v25 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v73 = &v62 - v26;
  v27 = type metadata accessor for NavigationVolumeLeadingAccessory(0);
  v28 = (v1 + *(v27 + 24));
  v30 = *v28;
  v29 = v28[1];

  v64 = sub_213F4EA10();
  v71 = *(v1 + *(v27 + 28));
  if (v71 == 1)
  {
    *&v77 = sub_213F4E8F0();
    sub_213ECDD7C();
    v31 = sub_213F4E950();
  }

  else
  {
    v32 = [objc_opt_self() secondaryLabelColor];
    v31 = sub_213F4E870();
  }

  v63 = v31;
  sub_213DBBD08(v19);
  sub_213F4D280();
  sub_213F4D270();
  v33 = *(v6 + 8);
  v33(v17, v5);
  v33(v19, v5);
  sub_213DBBD08(v17);
  sub_213F4D280();
  v34 = sub_213F4D270();
  v33(v14, v5);
  v33(v17, v5);
  v69 = v5;
  if (v34)
  {
    sub_213F4E110();
  }

  else
  {
    sub_213F4E160();
  }

  v35 = sub_213F4E0F0();
  v36 = v66;
  (*(*(v35 - 8) + 56))(v66, 1, 1, v35);
  v37 = sub_213F4E190();
  sub_213DE36FC(v36, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v39 = (v22 + *(v65 + 36));
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v41 = *MEMORY[0x277CE1058];
  v42 = sub_213F4EA30();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = swift_getKeyPath();
  v43 = v63;
  *v22 = v64;
  v22[1] = v43;
  v22[2] = KeyPath;
  v22[3] = v37;
  v44 = v67;
  sub_213DBBD08(v67);
  sub_213F4D280();
  sub_213F4D270();
  v45 = v69;
  v33(v17, v69);
  v33(v44, v45);
  v46 = v74;
  sub_213DBBD08(v74);
  sub_213F4D280();
  sub_213F4D270();
  v33(v17, v45);
  v33(v46, v45);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v47 = v72;
  sub_213DE2B44(v22, v72, &qword_27C8FB5C8, &qword_213F60598);
  v48 = (v47 + *(v68 + 36));
  v49 = v78;
  *v48 = v77;
  v48[1] = v49;
  v48[2] = v79;
  v50 = sub_213F4EEE0();
  v52 = v51;
  sub_213ECA72C(v1, &v76);
  v53 = v76;
  v54 = v47;
  v55 = v73;
  v56 = sub_213DE2B44(v54, v73, &qword_27C8FB5D0, &qword_213F60608);
  v57 = (v55 + *(v70 + 36));
  *v57 = v53;
  v57[1] = v50;
  v57[2] = v52;
  v58 = MEMORY[0x216052350](v56, 0.5, 0.85, 0.0);
  v59 = v75;
  sub_213DE2B44(v55, v75, &qword_27C8FB5D8, &qword_213F60610);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB5E0, &qword_213F60618);
  v61 = v59 + *(result + 36);
  *v61 = v58;
  *(v61 + 8) = v71;
  return result;
}

uint64_t sub_213ECA72C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for NavigationVolumeLeadingAccessory(0);
  if (*(a1 + *(v9 + 28)) != 1)
  {
    v11 = a1 + *(v9 + 20);
    v12 = *v11;
    if (*(v11 + 8) == 1)
    {
      if ((v12 & 1) == 0)
      {
LABEL_5:
        v10 = [objc_opt_self() quaternarySystemFillColor];
        goto LABEL_6;
      }
    }

    else
    {

      sub_213F4F520();
      v15 = sub_213F4E000();
      sub_213F4CC10();

      sub_213F4D7E0();
      swift_getAtKeyPath();
      sub_213E053BC(v12, 0);
      (*(v5 + 8))(v8, v4);
      if (v18[15] != 1)
      {
        goto LABEL_5;
      }
    }

    v16 = [objc_opt_self() _carSystemFocusLabelColor];
    sub_213F4E870();
    v17 = sub_213F4E900();

    result = v17;
    goto LABEL_9;
  }

  v10 = [objc_opt_self() systemBlueColor];
LABEL_6:
  v13 = v10;
  result = sub_213F4E870();
LABEL_9:
  *a2 = result;
  return result;
}

double sub_213ECA944@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v24 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  v14 = type metadata accessor for PhotoFanView();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for PhotoFanViewLeadingAccessory(0);
  sub_213E5BC70(v1 + *(v19 + 20), v18 + *(v15 + 28));
  *v18 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  sub_213DBBD08(v13);
  sub_213F4D280();
  sub_213F4D270();
  v20 = *(v4 + 8);
  v20(v11, v3);
  v20(v13, v3);
  sub_213DBBD08(v8);
  sub_213F4D280();
  sub_213F4D270();
  v20(v11, v3);
  v20(v8, v3);
  sub_213F4EEE0();
  sub_213F4D0C0();
  sub_213ECD48C(v18, a1, type metadata accessor for PhotoFanView);
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB5F0, &unk_213F60620) + 36));
  v22 = v24[1];
  *v21 = v24[0];
  v21[1] = v22;
  result = *&v25;
  v21[2] = v25;
  return result;
}

uint64_t sub_213ECABFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;

  v4 = sub_213F4EA10();
  v5 = [objc_opt_self() systemBlueColor];
  v6 = sub_213F4E870();
  sub_213F4E160();
  v7 = sub_213F4E0F0();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = sub_213F4E190();
  sub_213DE36FC(v3, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  sub_213F4EEE0();
  sub_213F4D0C0();
  *&v12 = v4;
  *(&v12 + 1) = v6;
  *&v13 = KeyPath;
  *(&v13 + 1) = v8;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  v11[0] = v12;
  v11[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9930, &qword_213F610E0);
  sub_213E508E0();
  sub_213F4E6D0();
  return sub_213DE36FC(&v12, &qword_27C8F9930, &qword_213F610E0);
}

uint64_t sub_213ECAE00()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_213ECABFC();
}

uint64_t sub_213ECAE08@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_213F4D290();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = (v1 + *(type metadata accessor for ProfileLeadingAccessory(0) + 20));
  v15 = *v14;
  v16 = v14[1];

  v27 = sub_213F4EA10();
  v26 = sub_213F4E8F0();
  sub_213DBBD08(v13);
  sub_213F4D280();
  sub_213F4D270();
  v17 = *(v7 + 8);
  v17(v11, v6);
  v17(v13, v6);
  sub_213F4E170();
  v18 = sub_213F4E0F0();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  *(&v25 + 1) = sub_213F4E190();
  sub_213DE36FC(v5, &qword_27C8F7668, &qword_213F52190);
  *&v25 = swift_getKeyPath();
  sub_213F4E8C0();
  v19 = sub_213F4E900();

  sub_213DBBD08(v13);
  sub_213F4D280();
  sub_213F4D270();
  v17(v11, v6);
  v17(v13, v6);
  sub_213DBBD08(v13);
  sub_213F4D280();
  sub_213F4D270();
  v17(v11, v6);
  v17(v13, v6);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v20 = sub_213F4EEE0();
  v22 = v21;
  sub_213ECB29C(v1, &v29);
  v51[2] = v31;
  v51[3] = v32;
  v44 = v31;
  v45 = v32;
  v51[0] = v29;
  v51[1] = v30;
  *&v52 = v33;
  *(&v52 + 1) = v20;
  v42 = v29;
  v43 = v30;
  v46 = v52;
  v53 = v22;
  v47 = v22;
  v54[2] = v31;
  v54[3] = v32;
  v54[0] = v29;
  v54[1] = v30;
  v55 = v33;
  v56 = v20;
  v57 = v22;
  sub_213DE3164(v51, v58, &qword_27C8FB5F8, &qword_213F60630);
  sub_213DE36FC(v54, &qword_27C8FB5F8, &qword_213F60630);
  *&v58[0] = v27;
  *(&v58[0] + 1) = v26;
  v58[1] = v25;
  *(v59 + 8) = xmmword_213F60030;
  *&v59[0] = v19;
  *(&v59[1] + 1) = 0x4000000000000000;
  v59[2] = v48;
  v59[3] = v49;
  v59[4] = v50;
  v59[5] = v42;
  v60 = v47;
  v59[8] = v45;
  v59[9] = v46;
  v59[6] = v43;
  v59[7] = v44;
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v35 = v50;
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v31 = v59[0];
  v32 = v59[1];
  v33 = v48;
  v34 = v49;
  v29 = v58[0];
  v30 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB600, &qword_213F60638);
  sub_213ECDDD0();
  sub_213F4E6D0();
  return sub_213DE36FC(v58, &qword_27C8FB600, &qword_213F60638);
}

double sub_213ECB29C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ProfileLeadingAccessory(0) + 24));

  v4 = sub_213F4EEE0();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_213F51DE0;
  sub_213F4E8F0();
  v8 = sub_213F4E900();

  *(v7 + 32) = v8;
  *(v7 + 40) = sub_213F4E8D0();
  sub_213F4F000();
  sub_213F4F010();
  MEMORY[0x2160521D0](v7);
  sub_213F4D2C0();
  *a2 = v3;
  *(a2 + 8) = v10;
  result = *&v11;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  *(a2 + 48) = v4;
  *(a2 + 56) = v6;
  *(a2 + 64) = 256;
  return result;
}

uint64_t sub_213ECB3C8@<X0>(uint64_t a1@<X8>)
{
  v237 = a1;
  v207 = type metadata accessor for ProfileLeadingAccessory(0);
  v2 = *(*(v207 - 8) + 64);
  MEMORY[0x28223BE20](v207);
  v209 = (&v202 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB538, &qword_213F60230);
  v4 = *(*(v208 - 8) + 64);
  MEMORY[0x28223BE20](v208);
  v212 = &v202 - v5;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB540, &qword_213F60238);
  v6 = *(*(v211 - 8) + 64);
  MEMORY[0x28223BE20](v211);
  v214 = &v202 - v7;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB548, &qword_213F60240);
  v8 = *(*(v236 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v236);
  v213 = &v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v215 = &v202 - v11;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB550, &qword_213F60248);
  v12 = *(*(v222 - 8) + 64);
  MEMORY[0x28223BE20](v222);
  v220 = (&v202 - v13);
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB558, &qword_213F60250);
  v14 = *(*(v231 - 8) + 64);
  MEMORY[0x28223BE20](v231);
  v223 = &v202 - v15;
  v226 = sub_213F4D390();
  v225 = *(v226 - 8);
  v16 = *(v225 + 8);
  MEMORY[0x28223BE20](v226);
  v224 = &v202 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB560, &qword_213F60258);
  v18 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204);
  v206 = (&v202 - v19);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB568, &qword_213F60260);
  v20 = *(*(v221 - 1) + 64);
  v21 = MEMORY[0x28223BE20](v221);
  v205 = &v202 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v210 = &v202 - v23;
  v203 = sub_213F4D290();
  v202 = *(v203 - 8);
  v24 = *(v202 + 64);
  v25 = MEMORY[0x28223BE20](v203);
  v219 = &v202 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v218 = &v202 - v27;
  v217 = type metadata accessor for NavigationVolumeLeadingAccessory(0);
  v28 = *(*(v217 - 8) + 64);
  MEMORY[0x28223BE20](v217);
  v216 = (&v202 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB570, &qword_213F60268);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v202 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v202 - v35;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB578, &qword_213F60270);
  v37 = *(*(v234 - 8) + 64);
  MEMORY[0x28223BE20](v234);
  v235 = &v202 - v38;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB580, &qword_213F60278);
  v39 = *(*(v227 - 8) + 64);
  MEMORY[0x28223BE20](v227);
  v229 = &v202 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB588, &qword_213F60280);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v202 - v43;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB590, &qword_213F60288);
  v45 = *(*(v228 - 8) + 64);
  MEMORY[0x28223BE20](v228);
  v47 = &v202 - v46;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB598, &qword_213F60290);
  v48 = *(*(v233 - 8) + 64);
  MEMORY[0x28223BE20](v233);
  v230 = &v202 - v49;
  v50 = type metadata accessor for NavigationSymbolLeadingAccessory(0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v53 = (&v202 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for LeadingAccessory(0);
  v55 = *(v54 + 24);
  v232 = v1;
  v56 = v1 + v55;
  v57 = type metadata accessor for LeadingAccessoryViewModel(0);
  sub_213EC9484(v56 + *(v57 + 20), &v242);
  if (v249 <= 1u)
  {
    v92 = v217;
    v222 = v50;
    v221 = v34;
    v93 = v216;
    v94 = v218;
    v95 = v219;
    v223 = v41;
    v224 = v44;
    v225 = v47;
    v226 = v30;
    if (!v249)
    {
      v97 = v242;
      v96 = v243;
      *v53 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v98 = v222;
      v99 = v53 + *(v222 + 20);
      *v99 = swift_getKeyPath();
      v99[8] = 0;
      *(v53 + *(v98 + 24)) = v97;
      *(v53 + *(v98 + 28)) = v96;
      sub_213ECD4F4(v53, v224);
      swift_storeEnumTagMultiPayload();
      sub_213ECCD3C(&qword_281183D00, type metadata accessor for NavigationSymbolLeadingAccessory);
      sub_213ECCD84();
      v100 = v225;
      sub_213F4DBA0();
      sub_213DE3164(v100, v229, &qword_27C8FB590, &qword_213F60288);
      swift_storeEnumTagMultiPayload();
      sub_213ECCC80();
      sub_213ECCE40();
      v101 = v230;
      sub_213F4DBA0();
      sub_213DE36FC(v100, &qword_27C8FB590, &qword_213F60288);
      sub_213DE3164(v101, v235, &qword_27C8FB598, &qword_213F60290);
      swift_storeEnumTagMultiPayload();
      sub_213ECCBF4();
      sub_213ECD2B8();
      sub_213F4DBA0();
      sub_213DE36FC(v101, &qword_27C8FB598, &qword_213F60290);
      return sub_213ECD558(v53);
    }

    v182 = v242;
    v183 = v243;
    v184 = v216;
    *v93 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v185 = v93 + v92[5];
    *v185 = swift_getKeyPath();
    v185[8] = 0;
    *(v184 + v92[6]) = v182;
    *(v184 + v92[7]) = v183;
    sub_213DBBD08(v94);
    sub_213F4D280();
    sub_213F4D270();
    v186 = *(v202 + 8);
    v187 = v203;
    v186(v95, v203);
    v186(v94, v187);
    v188 = sub_213F4E050();
    sub_213F4CDA0();
    v190 = v189;
    v192 = v191;
    v194 = v193;
    v196 = v195;
    v197 = v221;
    sub_213ECD48C(v184, v221, type metadata accessor for NavigationVolumeLeadingAccessory);
    v198 = v197 + *(v226 + 36);
    *v198 = v188;
    *(v198 + 8) = v190;
    *(v198 + 16) = v192;
    *(v198 + 24) = v194;
    *(v198 + 32) = v196;
    *(v198 + 40) = 0;
    v89 = &qword_27C8FB570;
    v90 = &qword_213F60268;
    v199 = v36;
    sub_213DE2B44(v197, v36, &qword_27C8FB570, &qword_213F60268);
    sub_213DE3164(v36, v224, &qword_27C8FB570, &qword_213F60268);
    swift_storeEnumTagMultiPayload();
    sub_213ECCD3C(&qword_281183D00, type metadata accessor for NavigationSymbolLeadingAccessory);
    sub_213ECCD84();
    v200 = v225;
    sub_213F4DBA0();
    sub_213DE3164(v200, v229, &qword_27C8FB590, &qword_213F60288);
    swift_storeEnumTagMultiPayload();
    sub_213ECCC80();
    sub_213ECCE40();
    v201 = v230;
    sub_213F4DBA0();
    sub_213DE36FC(v200, &qword_27C8FB590, &qword_213F60288);
    sub_213DE3164(v201, v235, &qword_27C8FB598, &qword_213F60290);
    swift_storeEnumTagMultiPayload();
    sub_213ECCBF4();
    sub_213ECD2B8();
    sub_213F4DBA0();
    sub_213DE36FC(v201, &qword_27C8FB598, &qword_213F60290);
    v91 = v199;
  }

  else
  {
    if (v249 == 2)
    {
      v238[4] = v246;
      v238[5] = v247;
      v239 = v248;
      v238[0] = v242;
      v238[1] = v243;
      v238[3] = v245;
      v238[2] = v244;
      v103 = type metadata accessor for PhotoFanViewLeadingAccessory(0);
      v104 = v206;
      sub_213E5BC70(v238, v206 + *(v103 + 20));
      *v104 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v105 = sub_213F4E080();
      sub_213F4CDA0();
      v107 = v106;
      v109 = v108;
      v111 = v110;
      v113 = v112;
      v114 = v104 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB5A0, &qword_213F602D0) + 36);
      *v114 = v105;
      *(v114 + 1) = v107;
      *(v114 + 2) = v109;
      *(v114 + 3) = v111;
      *(v114 + 4) = v113;
      v114[40] = 0;
      v115 = sub_213F4E060();
      sub_213F4CDA0();
      v116 = v104 + *(v204 + 36);
      *v116 = v115;
      *(v116 + 1) = v117;
      *(v116 + 2) = v118;
      *(v116 + 3) = v119;
      *(v116 + 4) = v120;
      v116[40] = 0;
      v121 = sub_213F4E070();
      v122 = v232 + *(v54 + 20);
      v123 = v224;
      sub_213EA886C(v224);
      sub_213F4D370();
      (*(v225 + 1))(v123, v226);
      sub_213F4CDA0();
      v125 = v124;
      v127 = v126;
      v129 = v128;
      v131 = v130;
      v132 = v104;
      v133 = v205;
      sub_213DE2B44(v132, v205, &qword_27C8FB560, &qword_213F60258);
      v134 = v133 + *(v221 + 9);
      *v134 = v121;
      *(v134 + 8) = v125;
      *(v134 + 16) = v127;
      *(v134 + 24) = v129;
      *(v134 + 32) = v131;
      *(v134 + 40) = 0;
      v135 = v210;
      sub_213DE2B44(v133, v210, &qword_27C8FB568, &qword_213F60260);
      sub_213DE3164(v135, v220, &qword_27C8FB568, &qword_213F60260);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB5A8, &qword_213F602D8);
      sub_213ECCECC();
      sub_213ECD0C0();
      v136 = v223;
      sub_213F4DBA0();
      sub_213DE3164(v136, v229, &qword_27C8FB558, &qword_213F60250);
      swift_storeEnumTagMultiPayload();
      sub_213ECCC80();
      sub_213ECCE40();
      v137 = v230;
      sub_213F4DBA0();
      sub_213DE36FC(v136, &qword_27C8FB558, &qword_213F60250);
      sub_213DE3164(v137, v235, &qword_27C8FB598, &qword_213F60290);
      swift_storeEnumTagMultiPayload();
      sub_213ECCBF4();
      sub_213ECD2B8();
      sub_213F4DBA0();
      sub_213DE36FC(v137, &qword_27C8FB598, &qword_213F60290);
      sub_213DE36FC(v135, &qword_27C8FB568, &qword_213F60260);
      return sub_213E5BD34(v238);
    }

    if (v249 == 3)
    {
      v218 = *(&v242 + 1);
      v219 = v242;
      v58 = sub_213F4E060();
      v59 = *(v54 + 20);
      v60 = v224;
      sub_213EA886C(v224);
      sub_213F4D370();
      v61 = *(v225 + 1);
      v62 = v226;
      v61(v60, v226);
      sub_213F4CDA0();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v240 = 0;
      v71 = sub_213F4E070();
      sub_213EA886C(v60);
      sub_213F4D370();
      v61(v60, v62);
      sub_213F4CDA0();
      v73 = v72;
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v241 = 0;
      v80 = sub_213F4E040();
      sub_213F4CDA0();
      LOBYTE(v238[0]) = 0;
      v81 = v220;
      v82 = v218;
      *v220 = v219;
      v81[1] = v82;
      *(v81 + 16) = v58;
      v81[3] = v64;
      v81[4] = v66;
      v81[5] = v68;
      v81[6] = v70;
      *(v81 + 56) = 0;
      *(v81 + 64) = v71;
      v81[9] = v73;
      v81[10] = v75;
      v81[11] = v77;
      v81[12] = v79;
      *(v81 + 104) = 0;
      *(v81 + 112) = v80;
      v81[15] = v83;
      v81[16] = v84;
      v81[17] = v85;
      v81[18] = v86;
      *(v81 + 152) = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB5A8, &qword_213F602D8);
      sub_213ECCECC();
      sub_213ECD0C0();
      v87 = v223;
      sub_213F4DBA0();
      sub_213DE3164(v87, v229, &qword_27C8FB558, &qword_213F60250);
      swift_storeEnumTagMultiPayload();
      sub_213ECCC80();
      sub_213ECCE40();
      v88 = v230;
      sub_213F4DBA0();
      sub_213DE36FC(v87, &qword_27C8FB558, &qword_213F60250);
      v89 = &qword_27C8FB598;
      v90 = &qword_213F60290;
      sub_213DE3164(v88, v235, &qword_27C8FB598, &qword_213F60290);
      swift_storeEnumTagMultiPayload();
      sub_213ECCBF4();
      sub_213ECD2B8();
      sub_213F4DBA0();
      v91 = v88;
    }

    else
    {
      v140 = *(&v242 + 1);
      v139 = v242;
      v138 = v243;
      KeyPath = swift_getKeyPath();
      v142 = v209;
      *v209 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v143 = v207;
      *(v142 + *(v207 + 20)) = __PAIR128__(v140, v139);
      v144 = *(v143 + 24);
      v231 = v138;
      *(v142 + v144) = v138;

      LOBYTE(v140) = sub_213F4E060();
      v145 = *(v54 + 20);
      v146 = v224;
      sub_213EA886C(v224);
      sub_213F4D370();
      v147 = *(v225 + 1);
      v148 = v226;
      v147(v146, v226);
      sub_213F4CDA0();
      v150 = v149;
      v152 = v151;
      v154 = v153;
      v156 = v155;
      v157 = v142;
      v158 = v212;
      sub_213ECD48C(v157, v212, type metadata accessor for ProfileLeadingAccessory);
      v159 = v158 + *(v208 + 36);
      *v159 = v140;
      *(v159 + 8) = v150;
      *(v159 + 16) = v152;
      *(v159 + 24) = v154;
      *(v159 + 32) = v156;
      *(v159 + 40) = 0;
      LOBYTE(v138) = sub_213F4E070();
      sub_213EA886C(v146);
      sub_213F4D370();
      v147(v146, v148);
      sub_213F4CDA0();
      v161 = v160;
      v163 = v162;
      v165 = v164;
      v167 = v166;
      v168 = v214;
      sub_213DE2B44(v158, v214, &qword_27C8FB538, &qword_213F60230);
      v169 = v168 + *(v211 + 36);
      *v169 = v138;
      *(v169 + 8) = v161;
      *(v169 + 16) = v163;
      *(v169 + 24) = v165;
      *(v169 + 32) = v167;
      *(v169 + 40) = 0;
      LOBYTE(v138) = sub_213F4E040();
      sub_213EA886C(v146);
      sub_213F4D370();
      v147(v146, v148);
      sub_213F4CDA0();
      v171 = v170;
      v173 = v172;
      v175 = v174;
      v177 = v176;
      v178 = v168;
      v179 = v213;
      sub_213DE2B44(v178, v213, &qword_27C8FB540, &qword_213F60238);
      v180 = v179 + *(v236 + 36);
      *v180 = v138;
      *(v180 + 8) = v171;
      *(v180 + 16) = v173;
      *(v180 + 24) = v175;
      *(v180 + 32) = v177;
      *(v180 + 40) = 0;
      v89 = &qword_27C8FB548;
      v90 = &qword_213F60240;
      v181 = v215;
      sub_213DE2B44(v179, v215, &qword_27C8FB548, &qword_213F60240);
      sub_213DE3164(v181, v235, &qword_27C8FB548, &qword_213F60240);
      swift_storeEnumTagMultiPayload();
      sub_213ECCBF4();
      sub_213ECD2B8();
      sub_213F4DBA0();

      v91 = v181;
    }
  }

  return sub_213DE36FC(v91, v89, v90);
}

double sub_213ECCB18@<D0>(uint64_t a1@<X8>)
{
  sub_213ECB3C8(a1);
  sub_213F4EEF0();
  sub_213F4D0C0();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB530, &qword_213F60228) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

unint64_t sub_213ECCBF4()
{
  result = qword_281182A40;
  if (!qword_281182A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB598, &qword_213F60290);
    sub_213ECCC80();
    sub_213ECCE40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A40);
  }

  return result;
}

unint64_t sub_213ECCC80()
{
  result = qword_281182B50;
  if (!qword_281182B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB590, &qword_213F60288);
    sub_213ECCD3C(&qword_281183D00, type metadata accessor for NavigationSymbolLeadingAccessory);
    sub_213ECCD84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B50);
  }

  return result;
}

uint64_t sub_213ECCD3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213ECCD84()
{
  result = qword_2811833B0;
  if (!qword_2811833B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB570, &qword_213F60268);
    sub_213ECCD3C(qword_281183C60, type metadata accessor for NavigationVolumeLeadingAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833B0);
  }

  return result;
}

unint64_t sub_213ECCE40()
{
  result = qword_281182AE8;
  if (!qword_281182AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB558, &qword_213F60250);
    sub_213ECCECC();
    sub_213ECD0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AE8);
  }

  return result;
}

unint64_t sub_213ECCECC()
{
  result = qword_281182EF0;
  if (!qword_281182EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB568, &qword_213F60260);
    sub_213ECCF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182EF0);
  }

  return result;
}

unint64_t sub_213ECCF58()
{
  result = qword_2811830C0;
  if (!qword_2811830C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB560, &qword_213F60258);
    sub_213ECCFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830C0);
  }

  return result;
}

unint64_t sub_213ECCFE4()
{
  result = qword_2811833C0;
  if (!qword_2811833C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB5A0, &qword_213F602D0);
    sub_213ECCD3C(qword_281183F78, type metadata accessor for PhotoFanViewLeadingAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833C0);
  }

  return result;
}

unint64_t sub_213ECD0C0()
{
  result = qword_281182F08;
  if (!qword_281182F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB5A8, &qword_213F602D8);
    sub_213ECD14C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F08);
  }

  return result;
}

unint64_t sub_213ECD14C()
{
  result = qword_2811830D8;
  if (!qword_2811830D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB5B0, &qword_213F602E0);
    sub_213ECD1D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830D8);
  }

  return result;
}

unint64_t sub_213ECD1D8()
{
  result = qword_2811833E0;
  if (!qword_2811833E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB5B8, &qword_213F602E8);
    sub_213ECD264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833E0);
  }

  return result;
}

unint64_t sub_213ECD264()
{
  result = qword_281184C28;
  if (!qword_281184C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281184C28);
  }

  return result;
}

unint64_t sub_213ECD2B8()
{
  result = qword_281182F00;
  if (!qword_281182F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB548, &qword_213F60240);
    sub_213ECD344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F00);
  }

  return result;
}

unint64_t sub_213ECD344()
{
  result = qword_2811830D0;
  if (!qword_2811830D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB540, &qword_213F60238);
    sub_213ECD3D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830D0);
  }

  return result;
}

unint64_t sub_213ECD3D0()
{
  result = qword_2811833D8;
  if (!qword_2811833D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB538, &qword_213F60230);
    sub_213ECCD3C(&qword_281184B70, type metadata accessor for ProfileLeadingAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833D8);
  }

  return result;
}

uint64_t sub_213ECD48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213ECD4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationSymbolLeadingAccessory(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213ECD558(uint64_t a1)
{
  v2 = type metadata accessor for NavigationSymbolLeadingAccessory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_213ECD5DC()
{
  sub_213E5ABB8(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_index_25Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_26Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_213ECD848()
{
  sub_213E5ABB8(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_213ECD90C()
{
  if (!qword_281183500)
  {
    v0 = sub_213F4CEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_281183500);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_49Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_213ECDB24()
{
  sub_213E5ABB8(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    sub_213ECD90C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_213ECDBD8()
{
  result = qword_281183380;
  if (!qword_281183380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB530, &qword_213F60228);
    sub_213ECDC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183380);
  }

  return result;
}

unint64_t sub_213ECDC64()
{
  result = qword_2811829E0;
  if (!qword_2811829E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB5C0, &qword_213F603F8);
    sub_213ECCBF4();
    sub_213ECD2B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829E0);
  }

  return result;
}