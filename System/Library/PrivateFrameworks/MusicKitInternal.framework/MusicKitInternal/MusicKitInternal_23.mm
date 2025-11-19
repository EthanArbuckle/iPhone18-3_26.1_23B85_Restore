uint64_t sub_1D5056C04()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EEAD0);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD5C610 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDD5C618);
  OUTLINED_FUNCTION_24_0(v0);
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D5056CE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D562DED0;
  v5 = v4 + v3;
  sub_1D560D908();
  sub_1D560D938();
  if (qword_1EDD53C80 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDD53C88);
  v7 = *(v1 + 16);
  v7(v5 + 2 * v2, v6, v0);
  if (qword_1EC7E9090 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EC7F1B20);
  v7(v5 + 3 * v2, v8, v0);
  sub_1D560D948();
  if (qword_1EDD53D70 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EDD53D78);
  v7(v5 + 5 * v2, v9, v0);
  sub_1D560D918();
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_1EDD53D50);
  v7(v5 - v2 + 8 * v2, v10, v0);
  sub_1D560D878();
  sub_1D560D968();
  if (qword_1EDD53CC0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_1EDD53CC8);
  v7(v5 + 10 * v2, v11, v0);
  sub_1D560D998();
  sub_1D560D888();
  if (qword_1EDD53D08 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v0, qword_1EDD53D10);
  v7(v5 + 13 * v2, v12, v0);
  sub_1D560D8E8();
  sub_1D560D958();
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, qword_1EDD53C40);
  v7(v5 + 16 * v2, v13, v0);
  if (qword_1EDD53C58 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, qword_1EDD53C60);
  v7(v5 + 17 * v2, v14, v0);
  if (qword_1EC7E95E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v0, qword_1EC7F5D98);
  v7(v5 + 18 * v2, v15, v0);
  if (qword_1EC7E8F18 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v0, qword_1EC7F08A0);
  v7(v5 + 19 * v2, v16, v0);
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v0, qword_1EDD53CF0);
  v7(v5 + 20 * v2, v17, v0);
  if (qword_1EC7E8AB0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v0, qword_1EC87BED0);
  result = (v7)(v5 + 21 * v2, v18, v0);
  qword_1EC7EEAE8 = v4;
  return result;
}

uint64_t sub_1D50572C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_3_36(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D50573F4(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_65_13()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_110_6()
{

  return sub_1D504CF98(v0, type metadata accessor for UploadedVideo);
}

uint64_t OUTLINED_FUNCTION_111_5()
{

  return sub_1D504CF98(v0, type metadata accessor for TVSeason);
}

uint64_t OUTLINED_FUNCTION_113_6(unint64_t *a1)
{

  return sub_1D50573F4(a1, v1);
}

uint64_t OUTLINED_FUNCTION_124_2()
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_127_4()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_132_3@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_138_5@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 20);

  return sub_1D5611AB8();
}

uint64_t OUTLINED_FUNCTION_140_5()
{
  v2 = *v0;
  v3 = v0[1];

  return sub_1D5614E28();
}

uint64_t OUTLINED_FUNCTION_143_3()
{

  return sub_1D5610C58();
}

void OUTLINED_FUNCTION_147_3()
{
  if (*(v0 - 96))
  {
    v1 = *(v0 - 104);
  }
}

void OUTLINED_FUNCTION_148_5()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_154_4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_1D50572C4(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_155_3@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_1D50572C4(v4, v2, a1);
}

void OUTLINED_FUNCTION_160_4()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_161_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_1D4F26680(a1, v3);
}

uint64_t OUTLINED_FUNCTION_162_3(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 - 144);

  return sub_1D50572C4(a1, v5, a3);
}

_BYTE *_s5ErrorOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D505790C()
{
  result = qword_1EC7EEB78;
  if (!qword_1EC7EEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEB78);
  }

  return result;
}

void sub_1D50579AC(uint64_t a1)
{
  sub_1D5614898();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_1D56158D8();
    if (v4 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EC7EEC00, &qword_1EC7EEC08, qword_1D562E458);
      if (v5 <= 0x3F)
      {
        v6 = *(a1 + 24);
        sub_1D56158D8();
        if (v7 <= 0x3F)
        {
          sub_1D4E6D600(319, &unk_1EC7EEC10, &qword_1EC7EAD48, &qword_1D561DB30);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D5057AB8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D5614898();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = *(*(v6 - 8) + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(a3 + 24) - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v12 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v9 + 80);
  if (v10)
  {
    v19 = *(v9 + 64);
  }

  else
  {
    v19 = *(v9 + 64) + 1;
  }

  v20 = *(v13 + 80);
  v21 = *(v13 + 64);
  if (v14)
  {
    v22 = 7;
  }

  else
  {
    v22 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  result = *(*(v6 - 8) + 64) + v18;
  v24 = v19 + 7;
  v25 = v20 + 9;
  if (v17 >= a2)
  {
LABEL_41:
    if (v7 == v17)
    {

      return __swift_getEnumTagSinglePayload(a1, v7, v6);
    }

    v33 = (a1 + result) & ~v18;
    if (v11 == v17)
    {
      if (v10 >= 2)
      {
LABEL_59:
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, v10, v8);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v34 = ((v24 + v33) & 0xFFFFFFFFFFFFFFF8);
      if (v16 <= 0x7FFFFFFE)
      {
        v35 = *v34;
        if (v35 >= 0xFFFFFFFF)
        {
          LODWORD(v35) = -1;
        }

        if ((v35 + 1) >= 2)
        {
          return v35;
        }

        else
        {
          return 0;
        }
      }

      if (v14 >= 2)
      {
        v33 = (v34 + v25) & ~v20;
        v10 = v14;
        v8 = *(a3 + 24);
        goto LABEL_59;
      }
    }

    return 0;
  }

  v26 = ((v22 + v21 + ((v25 + ((v24 + (result & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v26 & 0xFFFFFFF8) != 0)
  {
    v27 = 2;
  }

  else
  {
    v27 = a2 - v17 + 1;
  }

  if (v27 >= 0x10000)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  if (v27 < 0x100)
  {
    v28 = 1;
  }

  if (v27 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  switch(v29)
  {
    case 1:
      v30 = *(a1 + v26);
      if (!*(a1 + v26))
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    case 2:
      v30 = *(a1 + v26);
      if (!*(a1 + v26))
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    case 3:
      __break(1u);
      return result;
    case 4:
      v30 = *(a1 + v26);
      if (!v30)
      {
        goto LABEL_41;
      }

LABEL_38:
      v31 = v30 - 1;
      if ((v26 & 0xFFFFFFF8) != 0)
      {
        v31 = 0;
        v32 = *a1;
      }

      else
      {
        v32 = 0;
      }

      result = v17 + (v32 | v31) + 1;
      break;
    default:
      goto LABEL_41;
  }

  return result;
}

void sub_1D5057DA8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1D5614898();
  v9 = 0;
  v10 = *(*(v8 - 8) + 84);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = *(*(v8 - 8) + 84);
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a4 + 24);
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  v20 = v19 - 1;
  if (!v19)
  {
    v20 = 0;
  }

  if (v16 <= v20)
  {
    v16 = v20;
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v21 = 2147483646;
  }

  else
  {
    v21 = v16;
  }

  v22 = *(v12 + 64);
  if (!v14)
  {
    ++v22;
  }

  v23 = *(v13 + 80);
  v24 = *(*(v8 - 8) + 64) + v23;
  v25 = v22 + 7;
  v26 = *(v18 + 80);
  v27 = v26 + 9;
  v28 = *(v18 + 64);
  if (!v19)
  {
    ++v28;
  }

  v29 = ((v28 + ((v26 + 9 + ((v25 + (v24 & ~v23)) & 0xFFFFFFFFFFFFFFF8)) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v21 < a3)
  {
    if (((v28 + ((v26 + 9 + ((v25 + (v24 & ~v23)) & 0xFFFFFFF8)) & ~v26) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v30 = a3 - v21 + 1;
    }

    else
    {
      v30 = 2;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v9 = v31;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 <= v21)
  {
    v34 = ~v23;
    v35 = ~v26;
    switch(v9)
    {
      case 1:
        *(a1 + v29) = 0;
        if (a2)
        {
          goto LABEL_45;
        }

        return;
      case 2:
        *(a1 + v29) = 0;
        if (a2)
        {
          goto LABEL_45;
        }

        return;
      case 3:
LABEL_61:
        __break(1u);
        return;
      case 4:
        *(a1 + v29) = 0;
        goto LABEL_44;
      default:
LABEL_44:
        if (!a2)
        {
          return;
        }

LABEL_45:
        if (v10 == v21)
        {
          v36 = a1;
          v37 = a2;
          v11 = v8;
        }

        else
        {
          v36 = (a1 + v24) & v34;
          if (v15 == v21)
          {
            v37 = (a2 + 1);
            v10 = v14;
          }

          else
          {
            v38 = ((v25 + v36) & 0xFFFFFFFFFFFFFFF8);
            if (v16 <= 0x7FFFFFFE)
            {
              if (a2 > 0x7FFFFFFE)
              {
                *v38 = 0;
                *v38 = a2 - 0x7FFFFFFF;
              }

              else
              {
                *v38 = a2;
              }

              return;
            }

            if (v19 < 2)
            {
              return;
            }

            v36 = (v38 + v27) & v35;
            v37 = (a2 + 1);
            v10 = v19;
            v11 = v17;
          }
        }

        __swift_storeEnumTagSinglePayload(v36, v37, v10, v11);
        break;
    }
  }

  else
  {
    if (v29)
    {
      v32 = 1;
    }

    else
    {
      v32 = a2 - v21;
    }

    if (v29)
    {
      v33 = ~v21 + a2;
      bzero(a1, v29);
      *a1 = v33;
    }

    switch(v9)
    {
      case 1:
        *(a1 + v29) = v32;
        break;
      case 2:
        *(a1 + v29) = v32;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *(a1 + v29) = v32;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D50580F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v62 = a6;
  v63 = a7;
  v64 = a5;
  v65 = a3;
  v67 = a2;
  v17 = sub_1D56158D8();
  OUTLINED_FUNCTION_1_0();
  v66 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  OUTLINED_FUNCTION_1_0();
  v56 = v24;
  v26 = *(v25 + 64);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v54 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v55 = &v53 - v30;
  LODWORD(v60) = *a4;
  v68 = a8;
  v69 = a10;
  v70 = a12;
  v71 = a13;
  v31 = type metadata accessor for MusicLibraryAddToPlaylistChangeRequest();
  v32 = v31[16];
  __swift_storeEnumTagSinglePayload(a9 + v32, 1, 1, a10);
  v33 = sub_1D5614898();
  v34 = *(v33 - 8);
  v35 = *(v34 + 16);
  v61 = a1;
  v59 = v33;
  v35(a9, a1);
  v36 = v31[13];
  v37 = sub_1D56158D8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 16);
  v58 = v37;
  v39(a9 + v36, v67);
  v57 = v31;
  *(a9 + v31[15]) = v60;
  v40 = sub_1D56158D8();
  v41 = *(v40 - 8);
  (*(v41 + 24))(a9 + v32, v64, v40);
  v42 = *(v66 + 16);
  v60 = v17;
  v42(v23, v65, v17);
  if (__swift_getEnumTagSinglePayload(v23, 1, a11) == 1)
  {
    (*(v41 + 8))(v64, v40);
    v43 = *(v66 + 8);
    v44 = v60;
    v43(v65, v60);
    (*(v38 + 8))(v67, v58);
    (*(v34 + 8))(v61, v59);
    result = (v43)(v23, v44);
    v46 = 0;
  }

  else
  {
    v47 = v56;
    v48 = *(v56 + 32);
    v53 = v34;
    v49 = v55;
    v48();
    (*(v47 + 16))(v54, v49, a11);
    swift_getAssociatedTypeWitness();
    sub_1D5615318();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
    v46 = sub_1D5615D38();

    (*(v41 + 8))(v64, v40);
    (*(v66 + 8))(v65, v60);
    (*(v38 + 8))(v67, v58);
    (*(v53 + 8))(v61, v59);
    result = (*(v47 + 8))(v49, a11);
  }

  v50 = v57;
  *(a9 + v57[14]) = v46;
  v51 = (a9 + v50[17]);
  v52 = v63;
  *v51 = v62;
  v51[1] = v52;
  return result;
}

uint64_t sub_1D50585C0()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v1[53] = v2;
  v1[54] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  v1[55] = OUTLINED_FUNCTION_127();
  v1[56] = *(v3 + 24);
  v7 = sub_1D56158D8();
  v1[57] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[58] = v8;
  v10 = *(v9 + 64);
  v1[59] = OUTLINED_FUNCTION_127();
  v11 = sub_1D56131C8();
  v1[60] = v11;
  OUTLINED_FUNCTION_69(v11);
  v1[61] = v12;
  v14 = *(v13 + 64) + 15;
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v15 = sub_1D5613158();
  v1[64] = v15;
  OUTLINED_FUNCTION_69(v15);
  v1[65] = v16;
  v18 = *(v17 + 64);
  v1[66] = OUTLINED_FUNCTION_127();
  v19 = sub_1D560D9A8();
  v1[67] = v19;
  OUTLINED_FUNCTION_69(v19);
  v1[68] = v20;
  v22 = *(v21 + 64);
  v1[69] = OUTLINED_FUNCTION_127();
  v23 = sub_1D560D838();
  v1[70] = v23;
  OUTLINED_FUNCTION_69(v23);
  v1[71] = v24;
  v26 = *(v25 + 64) + 15;
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v27 = type metadata accessor for MusicLibraryPlaylistDuplicateItemsRequest();
  v1[74] = v27;
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  v1[75] = OUTLINED_FUNCTION_127();
  v1[76] = *(v3 + 16);
  OUTLINED_FUNCTION_1_0();
  v1[77] = v30;
  v32 = *(v31 + 64);
  v1[78] = OUTLINED_FUNCTION_127();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  v1[79] = OUTLINED_FUNCTION_127();
  v36 = sub_1D5614898();
  v1[80] = v36;
  OUTLINED_FUNCTION_69(v36);
  v1[81] = v37;
  v39 = *(v38 + 64) + 15;
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v40 = sub_1D56158D8();
  v1[84] = v40;
  OUTLINED_FUNCTION_69(v40);
  v1[85] = v41;
  v43 = *(v42 + 64) + 15;
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  v1[89] = OUTLINED_FUNCTION_127();
  v47 = sub_1D5613AF8();
  v1[90] = v47;
  OUTLINED_FUNCTION_69(v47);
  v1[91] = v48;
  v50 = *(v49 + 64);
  v1[92] = OUTLINED_FUNCTION_127();

  return MEMORY[0x1EEE6DFA0](sub_1D50589E0, 0, 0);
}

uint64_t sub_1D50589E0()
{
  *(v0 + 64) = 0u;
  v1 = (v0 + 64);
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  v4 = *(v3 + *(v2 + 56));
  if (v4 && v4[2])
  {
    v5 = *(v3 + *(v2 + 56));
    swift_bridgeObjectRetain_n();
    goto LABEL_16;
  }

  v6 = *(v0 + 608);
  v7 = *(v2 + 52);
  v8 = *(*(v0 + 680) + 16);
  v8(*(v0 + 704), v3 + v7, *(v0 + 672));
  v9 = OUTLINED_FUNCTION_45_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, v10, v6);
  v12 = *(v0 + 720);
  v13 = *(v0 + 712);
  if (EnumTagSinglePayload == 1)
  {
    v14 = OUTLINED_FUNCTION_14_34(*(v0 + 704));
    v15(v14);
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v12);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_7_43();
    OUTLINED_FUNCTION_5_42(v16);
    if (!v17)
    {
      v43 = *(v0 + 728);
      v44 = *(v0 + 720);
      v45 = *(v43 + 32);
      (v45)(*(v0 + 736), *(v0 + 712), v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC38, &unk_1D562E488);
      v4 = swift_allocObject();
      *(v4 + 1) = xmmword_1D561C050;
      v46 = MEMORY[0x1E6976CC8];
      v4[7] = v44;
      v4[8] = v46;
      __swift_allocate_boxed_opaque_existential_0(v4 + 4);
      v47 = *(v43 + 16);
      OUTLINED_FUNCTION_12_34();
      v48();
      v49 = MEMORY[0x1E6976CF0];
      *(v0 + 408) = v44;
      *(v0 + 416) = v49;
      __swift_allocate_boxed_opaque_existential_0((v0 + 384));
      OUTLINED_FUNCTION_12_34();
      v45();

      sub_1D4E6C9CC(v0 + 64, &qword_1EC7EEC40, &unk_1D561C070);
      v50 = *(v0 + 400);
      *v1 = *(v0 + 384);
      *(v0 + 80) = v50;
      v51 = *(v0 + 416);
      goto LABEL_15;
    }
  }

  v18 = *(v0 + 696);
  v19 = *(v0 + 672);
  v20 = *(v0 + 608);
  sub_1D4E6C9CC(*(v0 + 712), &qword_1EC7EEC30, &unk_1D5620CE0);
  v8(v18, v3 + v7, v19);
  v21 = OUTLINED_FUNCTION_45_1();
  v23 = __swift_getEnumTagSinglePayload(v21, v22, v20);
  v24 = *(v0 + 696);
  if (v23 != 1)
  {
    v29 = *(v0 + 640);
    v30 = *(v0 + 632);
    v31 = OUTLINED_FUNCTION_7_43();
    OUTLINED_FUNCTION_5_42(v31);
    if (v17)
    {
      goto LABEL_12;
    }

    v52 = *(v0 + 664);
    v53 = *(v0 + 648);
    v54 = *(v0 + 640);
    v55 = *(v53 + 32);
    v55(v52, *(v0 + 632), v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC38, &unk_1D562E488);
    v4 = swift_allocObject();
    *(v4 + 1) = xmmword_1D561C050;
    v56 = MEMORY[0x1E69773A8];
    v4[7] = v54;
    v4[8] = v56;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4 + 4);
    (*(v53 + 16))(boxed_opaque_existential_0, v52, v54);
    v58 = MEMORY[0x1E69773A0];
    *(v0 + 368) = v54;
    *(v0 + 376) = v58;
    v59 = __swift_allocate_boxed_opaque_existential_0((v0 + 344));
    v55(v59, v52, v54);

    sub_1D4E6C9CC(v0 + 64, &qword_1EC7EEC40, &unk_1D561C070);
    v60 = *(v0 + 360);
    *v1 = *(v0 + 344);
    *(v0 + 80) = v60;
    v51 = *(v0 + 376);
LABEL_15:
    *(v0 + 96) = v51;
    goto LABEL_16;
  }

  v25 = *(v0 + 640);
  v26 = *(v0 + 632);
  (*(*(v0 + 680) + 8))(*(v0 + 696), *(v0 + 672));
  v27 = OUTLINED_FUNCTION_45_1();
  __swift_storeEnumTagSinglePayload(v27, v28, 1, v25);
LABEL_12:
  v32 = *(v0 + 688);
  v33 = *(v0 + 672);
  v34 = *(v0 + 608);
  sub_1D4E6C9CC(*(v0 + 632), &unk_1EC7F1990, &unk_1D561CEF0);
  v8(v32, v3 + v7, v33);
  if (__swift_getEnumTagSinglePayload(v32, 1, v34) == 1)
  {
    v35 = OUTLINED_FUNCTION_14_34(*(v0 + 688));
    v36(v35);
    return sub_1D5615E08();
  }

  v38 = *(v0 + 624);
  v39 = *(v0 + 608);
  v40 = *(v0 + 424);
  v41 = *(*(v0 + 616) + 32);
  v41(v38, *(v0 + 688), v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC38, &unk_1D562E488);
  v4 = swift_allocObject();
  *(v4 + 1) = xmmword_1D561C050;
  v4[7] = v39;
  v4[8] = *(v40 + 32);
  v42 = __swift_allocate_boxed_opaque_existential_0(v4 + 4);
  v41(v42, v38, v39);

LABEL_16:
  *(v0 + 744) = v4;
  v61 = *(v0 + 648);
  v62 = *(v0 + 640);
  v63 = *(v0 + 600);
  v64 = *(v0 + 592);
  v65 = *(v0 + 432);
  v66 = *(v61 + 16);
  *(v0 + 752) = v66;
  *(v0 + 760) = (v61 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v66(v63, v65, v62);
  *(v63 + *(v64 + 20)) = v4;
  v67 = swift_task_alloc();
  *(v0 + 768) = v67;
  *v67 = v0;
  v67[1] = sub_1D5058F4C;
  v68 = *(v0 + 600);

  return sub_1D4FBABB4();
}

uint64_t sub_1D5058F4C()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  v3 = *(*v1 + 768);
  v10 = *v1;
  v2[97] = v4;
  v2[98] = v5;
  v2[99] = v6;
  v2[100] = v0;

  if (v0)
  {
    v7 = v2[93];

    v8 = sub_1D5059E28;
  }

  else
  {
    v8 = sub_1D5059070;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D5059070()
{
  v1 = v0 + 99;
  v2 = v0 + 98;
  v3 = *(v0[53] + 60);
  if (!*(v0[54] + v3))
  {
    v6 = *v2;
    v7 = *v1;
    if (*(v6 + 16))
    {
      v8 = *(v151 + 776);
      v9 = *(v151 + 744);

      v10 = *(v6 + 16);
      sub_1D5059FE0();
      swift_allocError();
      *v11 = v10;
      *(v11 + 8) = 0;
      swift_willThrow();

      v12 = v151;

      goto LABEL_20;
    }

    v15 = *v1;

    goto LABEL_8;
  }

  if (*(v0[54] + v3) != 1)
  {
    v13 = *v1;
    v14 = *v2;

LABEL_8:

    v2 = v0 + 97;
    goto LABEL_9;
  }

  v4 = *v1;
  v5 = v0[97];

  v1 = v0 + 97;
LABEL_9:
  v16 = *v1;
  v17 = *v2;

  v18 = *(v16 + 16);
  v19 = MEMORY[0x1E6976988];
  if (v18)
  {
    v20 = *(v151 + 568);
    v21 = *(v151 + 544);
    v22 = *(v151 + 520);
    v23 = *(v151 + 488);
    v183 = MEMORY[0x1E69E7CC0];
    sub_1D5615CB8();
    v24 = *(v20 + 16);
    v20 += 16;
    v150 = v16;
    v25 = v16 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v169 = *(v20 + 56);
    v172 = v24;
    v162 = (v22 + 8);
    v165 = (v21 + 8);
    v159 = *v19;
    v153 = (v23 + 8);
    v156 = (v23 + 104);
    v152 = (v20 - 8);
    do
    {
      v26 = *(v151 + 584);
      v178 = *(v151 + 560);
      v181 = v18;
      v27 = *(v151 + 552);
      v28 = *(v151 + 536);
      v29 = *(v151 + 528);
      v31 = *(v151 + 504);
      v30 = *(v151 + 512);
      v32 = *(v151 + 480);
      v172(v26, v25);
      sub_1D560D828();
      sub_1D560D868();
      (*v165)(v27, v28);
      v33 = sub_1D5159818();
      (*v162)(v29, v30);
      (*v156)(v31, v159, v32);
      sub_1D4F42FA4(v33, v31);
      (*v153)(v31, v32);
      (*v152)(v26, v178);
      sub_1D5615C88();
      v34 = *(v183 + 16);
      sub_1D5615CC8();
      sub_1D5615CD8();
      sub_1D5615C98();
      v25 += v169;
      v18 = v181 - 1;
    }

    while (v181 != 1);
    v16 = v150;

    v35 = v183;
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
  }

  v12 = v151;
  if (sub_1D4F0B2D8(v35) > 0)
  {
    sub_1D4EC76A8(v151 + 64, v151 + 144);
    if (*(v151 + 168))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
      v36 = swift_dynamicCast();
      if (v36)
      {
        v44 = *(v151 + 128);
        if (v44)
        {
          OUTLINED_FUNCTION_4_42(v36, v37, v38, v39, v40, v41, v42, v43, v150, v151);
          v46 = *(v45 + 136);
          __swift_project_boxed_opaque_existential_1((v151 + 104), v44);
          v47 = *MEMORY[0x1E6976988];
          v48 = OUTLINED_FUNCTION_11_40();
          v49(v48);
          v182 = OUTLINED_FUNCTION_15_34();
          v50 = OUTLINED_FUNCTION_9_40();
          v51(v50);
          __swift_destroy_boxed_opaque_existential_1((v12 + 104));
          goto LABEL_26;
        }
      }

      else
      {
        *(v151 + 136) = 0;
        *(v151 + 120) = 0u;
        *(v151 + 104) = 0u;
      }
    }

    else
    {
      sub_1D4E6C9CC(v151 + 144, &qword_1EC7EEC40, &unk_1D561C070);
      *(v151 + 104) = 0u;
      *(v151 + 120) = 0u;
      *(v151 + 136) = 0;
    }

    sub_1D4E6C9CC(v151 + 104, &unk_1EC7ED400, &qword_1D5620CF0);
    v182 = 0;
LABEL_26:
    v65 = *(v12 + 472);
    v66 = *(v12 + 448);
    (*(*(v12 + 464) + 16))(v65, *(v12 + 432) + *(*(v12 + 424) + 64), *(v12 + 456));
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, 1, v66);
    v68 = *(v12 + 472);
    if (EnumTagSinglePayload == 1)
    {
      (*(*(v12 + 464) + 8))(*(v12 + 472), *(v12 + 456));
    }

    else
    {
      v69 = *(v12 + 448);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
      v70 = swift_dynamicCast();
      if (v70)
      {
        v78 = *(v12 + 208);
        if (v78)
        {
          OUTLINED_FUNCTION_4_42(v70, v71, v72, v73, v74, v75, v76, v77, v150, v151);
          v80 = *(v79 + 216);
          __swift_project_boxed_opaque_existential_1((v151 + 184), v78);
          v81 = *MEMORY[0x1E6976988];
          v82 = OUTLINED_FUNCTION_11_40();
          v83(v82);
          v180 = OUTLINED_FUNCTION_15_34();
          v84 = OUTLINED_FUNCTION_9_40();
          v85(v84);
          __swift_destroy_boxed_opaque_existential_1((v12 + 184));
LABEL_33:
          v86 = *(v12 + 744);
          if (*(v16 + 16) == 1 && *(v86 + 16) == 1)
          {
            v87 = (v151 + 264);
            sub_1D4ECCD9C(v86);
            v88 = v151;

            if (*(v151 + 328))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
              if (swift_dynamicCast())
              {
                if (*(v151 + 288))
                {
                  v89 = *(v151 + 560);
                  v90 = *(v151 + 440);
                  sub_1D4E48324(v87, v151 + 224);
                  sub_1D4EC9FDC(v16);

                  v91 = OUTLINED_FUNCTION_45_1();
                  if (__swift_getEnumTagSinglePayload(v91, v92, v89) == 1)
                  {
                    sub_1D4E6C9CC(*(v151 + 440), &unk_1EC7EEC20, &unk_1D5623F70);
                  }

                  else
                  {
                    v129 = *(v151 + 584);
                    v130 = *(v151 + 568);
                    v131 = *(v151 + 560);
                    (*(v130 + 32))(*(v151 + 576), *(v151 + 440), v131);
                    v132 = *(v151 + 256);
                    __swift_project_boxed_opaque_existential_1((v151 + 224), *(v151 + 248));
                    v133 = *(v132 + 8);
                    sub_1D560EC98();
                    v134 = sub_1D560D528();
                    v135 = *(v130 + 8);
                    v135(v129, v131);
                    if (v134)
                    {
                      v136 = *(v151 + 656);
                      v155 = *(v151 + 640);
                      v158 = *(v151 + 752);
                      v174 = *(v151 + 576);
                      v177 = v135;
                      v167 = *(v151 + 760);
                      v171 = *(v151 + 560);
                      v138 = *(v151 + 496);
                      v137 = *(v151 + 504);
                      v139 = *(v151 + 480);
                      v140 = *(v151 + 488);
                      v141 = *(v151 + 432);

                      v164 = *MEMORY[0x1E6976988];
                      v161 = *(v140 + 104);
                      v161(v137);
                      (*(v140 + 16))(v138, v137, v139);
                      v158(v136, v141, v155);
                      sub_1D4ECAE6C();
                      v168 = v142;
                      v143 = *(v140 + 8);
                      v143(v137, v139);
                      v144 = *(v151 + 248);
                      v145 = *(v151 + 256);
                      __swift_project_boxed_opaque_existential_1((v151 + 224), v144);
                      (v161)(v137, v164, v139);
                      v146 = sub_1D5159364(v137, v144, v145);
                      v143(v137, v139);
                      v147 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest);
                      v148 = v180;
                      v149 = v182;
                      v109 = sub_1D505A5BC(v168, v146, v182, v180);
                      v177(v174, v171);
                      __swift_destroy_boxed_opaque_existential_1((v151 + 224));
                      v103 = v151;
                      goto LABEL_46;
                    }

                    v135(*(v151 + 576), *(v151 + 560));
                  }

                  __swift_destroy_boxed_opaque_existential_1((v151 + 224));
                  v88 = v151;
LABEL_45:
                  v93 = v88[95];
                  v94 = v88[94];
                  v95 = v88[82];
                  v96 = v88[80];
                  v97 = *(v151 + 504);
                  v98 = *(v151 + 496);
                  v99 = *(v151 + 488);
                  v100 = *(v151 + 480);
                  v101 = *(v151 + 432);
                  (*(v99 + 104))(v97, *MEMORY[0x1E6976988], v100);
                  (*(v99 + 16))(v98, v97, v100);
                  v94(v95, v101, v96);
                  sub_1D4ECAE6C();
                  v102 = v97;
                  v103 = v151;
                  (*(v99 + 8))(v102, v100);
                  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest);
                  v104 = v180;
                  v105 = v182;
                  OUTLINED_FUNCTION_12_34();
                  v109 = sub_1D505A630(v106, v107, v108, v180);
LABEL_46:
                  v110 = (v103[54] + *(v103[53] + 68));
                  v111 = *v110;
                  if (*v110)
                  {
                    v112 = v103 + 2;
                    v113 = v110[1];
                    v114 = swift_allocObject();
                    *(v114 + 16) = v111;
                    *(v114 + 24) = v113;
                    *(v151 + 48) = sub_1D505A6D0;
                    *(v151 + 56) = v114;
                    *(v151 + 16) = MEMORY[0x1E69E9820];
                    *(v151 + 24) = 1107296256;
                    *(v151 + 32) = sub_1D505A528;
                    *(v151 + 40) = &block_descriptor_6;
                    v115 = _Block_copy(v112);
                    v116 = *(v151 + 56);
                    sub_1D4EA73A4(v111);

                    [v109 setStoreImportAllowedHandler_];
                    _Block_release(v115);
                    v103 = v151;
                    sub_1D4EA7420(v111);
                  }

                  v117 = v103[92];
                  v118 = v103[89];
                  v119 = v103[88];
                  v120 = v103[87];
                  v121 = v103[86];
                  v122 = v103;
                  v123 = v103[83];
                  v176 = v109;
                  v124 = v122[82];
                  v125 = v122[79];
                  v126 = v122[78];
                  v127 = v122[75];
                  OUTLINED_FUNCTION_1_62();

                  sub_1D5059F84(v127);
                  sub_1D4E6C9CC((v122 + 8), &qword_1EC7EEC40, &unk_1D561C070);

                  v128 = v122[1];

                  return v128(v176);
                }
              }

              else
              {
                *(v151 + 296) = 0;
                *v87 = 0u;
                *(v151 + 280) = 0u;
              }
            }

            else
            {

              sub_1D4E6C9CC(v151 + 304, &qword_1EC7ECEB0, &qword_1D56236F0);
              *v87 = 0u;
              *(v151 + 280) = 0u;
              *(v151 + 296) = 0;
            }

            sub_1D4E6C9CC(v87, &unk_1EC7ED400, &qword_1D5620CF0);
            goto LABEL_45;
          }

          v88 = v151;
          goto LABEL_45;
        }

LABEL_32:
        sub_1D4E6C9CC(v12 + 184, &unk_1EC7ED400, &qword_1D5620CF0);
        v180 = 0;
        goto LABEL_33;
      }
    }

    *(v12 + 216) = 0;
    *(v12 + 200) = 0u;
    *(v12 + 184) = 0u;
    goto LABEL_32;
  }

  v52 = *(v151 + 744);

  sub_1D5059FE0();
  swift_allocError();
  *v53 = 0;
  *(v53 + 8) = 1;
  swift_willThrow();
LABEL_20:
  v54 = *(v12 + 736);
  v55 = *(v12 + 712);
  v56 = v12;
  v57 = *(v12 + 704);
  v58 = v56[87];
  v59 = v56[86];
  v60 = v56[83];
  v61 = v56[82];
  v62 = v56[79];
  v154 = v56[78];
  v157 = v56[73];
  v160 = v56[72];
  v163 = v56[69];
  v166 = v56[66];
  v170 = v56[63];
  v173 = v56[62];
  v175 = v56[59];
  v179 = v56[55];
  sub_1D5059F84(v56[75]);
  sub_1D4E6C9CC((v56 + 8), &qword_1EC7EEC40, &unk_1D561C070);

  OUTLINED_FUNCTION_55();

  return v63();
}

uint64_t sub_1D5059E28()
{
  v13 = v0[100];
  v1 = v0[92];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[75];
  OUTLINED_FUNCTION_1_62();
  sub_1D5059F84(v10);
  sub_1D4E6C9CC((v0 + 8), &qword_1EC7EEC40, &unk_1D561C070);

  OUTLINED_FUNCTION_55();

  return v11();
}

uint64_t sub_1D5059F84(uint64_t a1)
{
  v2 = type metadata accessor for MusicLibraryPlaylistDuplicateItemsRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5059FE0()
{
  result = qword_1EC7EEC48;
  if (!qword_1EC7EEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEC48);
  }

  return result;
}

uint64_t sub_1D505A034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC60, &qword_1D562E498);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v24[0] = sub_1D505A6F0;
  v24[1] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC68, &qword_1D562E4A0);
  sub_1D5612878();
  v20 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v20);
  (*(v13 + 16))(v16, v18, v12);
  v21 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a3;
  *(v22 + 5) = a4;
  (*(v13 + 32))(&v22[v21], v16, v12);

  sub_1D51EC8B4(0, 0, v11, &unk_1D562E4B0, v22);

  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_1D505A2A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 40) = v8;
  *v8 = v6;
  v8[1] = sub_1D505A390;

  return v10();
}

uint64_t sub_1D505A390()
{
  OUTLINED_FUNCTION_60();
  v1 = *(*v0 + 40);
  v4 = *v0;
  *(*v0 + 48) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D505A48C, 0, 0);
}

uint64_t sub_1D505A48C()
{
  v8 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC60, &qword_1D562E498);
  sub_1D5612858();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v7 = v1;
  v3(&v7);

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D505A528(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_1D505A6D8, v5);
}

id sub_1D505A5BC(void *a1, void *a2, void *a3, void *a4)
{
  v9 = [v4 initWithPlaylist:a1 itemToAdd:a2 representativeObject:a3 referralObject:a4];

  return v9;
}

id sub_1D505A630(void *a1, uint64_t a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF50, &unk_1D561F550);
  v8 = sub_1D5615158();

  v9 = [v4 initWithPlaylist:a1 songIdentifiers:v8 representativeObject:a3 referralObject:a4];

  return v9;
}

uint64_t sub_1D505A6F0(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1D505A71C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC60, &qword_1D562E498);
  OUTLINED_FUNCTION_22(v2);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1D505A824;
  OUTLINED_FUNCTION_12_34();

  return sub_1D505A2A4(v10, v11, v12, v7, v8, v13);
}

uint64_t sub_1D505A824()
{
  OUTLINED_FUNCTION_60();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D505A910(uint64_t a1)
{
  v2 = sub_1D56140F8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v11 = OUTLINED_FUNCTION_4(isUniquelyReferenced_nonNull_native);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v81 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v69 = v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE68, &qword_1D561F390);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v77 = v68 - v24;
  sub_1D505AE70();
  v75 = v2;
  v25 = sub_1D5614BD8();
  v26 = *(a1 + 64);
  v78 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v80 = (v13 + 32);
  v68[2] = v5 + 32;
  v68[3] = v13 + 16;
  v70 = v13;
  v71 = a1;
  v72 = v13 + 8;
  v74 = v5;
  v68[0] = (v27 + 63) >> 6;
  v68[1] = v5 + 40;

  v30 = 0;
  v79 = v23;
  v73 = isUniquelyReferenced_nonNull_native;
  v76 = v9;
  while (v29)
  {
    v31 = v30;
LABEL_10:
    v32 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v33 = v32 | (v31 << 6);
    v34 = v70;
    v35 = (*(v71 + 48) + 16 * v33);
    v37 = *v35;
    v36 = v35[1];
    v38 = v69;
    (*(v70 + 16))(v69, *(v71 + 56) + *(v70 + 72) * v33, isUniquelyReferenced_nonNull_native);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE70, &qword_1D561F398);
    v40 = *(v39 + 48);
    v41 = v79;
    *v79 = v37;
    *(v41 + 1) = v36;
    v23 = v41;
    (*(v34 + 32))(&v41[v40], v38, isUniquelyReferenced_nonNull_native);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v39);

LABEL_11:
    v42 = v23;
    v43 = v77;
    sub_1D505AEC4(v42, v77);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE70, &qword_1D561F398);
    if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
    {

      return v25;
    }

    v45 = *v43;
    v46 = *(v43 + 1);
    (*v80)(v81, &v43[*(v44 + 48)], isUniquelyReferenced_nonNull_native);
    v47 = v76;
    sub_1D5610758();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v25;
    v48 = sub_1D4F15A78(v45, v46);
    if (__OFADD__(*(v25 + 16), (v49 & 1) == 0))
    {
      goto LABEL_24;
    }

    v50 = v48;
    v51 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC78, &qword_1D562E4B8);
    if (sub_1D5615D78())
    {
      v52 = sub_1D4F15A78(v45, v46);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_26;
      }

      v50 = v52;
    }

    if (v51)
    {

      v25 = v82;
      v54 = OUTLINED_FUNCTION_0_62();
      (*(v55 + 40))(v54, v47);
      v56 = OUTLINED_FUNCTION_2_47();
      v57(v56);
    }

    else
    {
      v25 = v82;
      *(v82 + 8 * (v50 >> 6) + 64) |= 1 << v50;
      v58 = (*(v25 + 48) + 16 * v50);
      *v58 = v45;
      v58[1] = v46;
      v59 = OUTLINED_FUNCTION_0_62();
      (*(v60 + 32))(v59, v47);
      v61 = OUTLINED_FUNCTION_2_47();
      v62(v61);
      v63 = *(v25 + 16);
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_25;
      }

      *(v25 + 16) = v65;
    }

    v23 = v79;
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v68[0])
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE70, &qword_1D561F398);
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v66);
      v29 = 0;
      goto LABEL_11;
    }

    v29 = *(v78 + 8 * v31);
    ++v30;
    if (v29)
    {
      v30 = v31;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

unint64_t sub_1D505AE70()
{
  result = qword_1EC7EEC70;
  if (!qword_1EC7EEC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEC70);
  }

  return result;
}

uint64_t sub_1D505AEC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE68, &qword_1D561F390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MusicPlaybackMetrics.recommendationID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void static MusicPlaybackMetrics.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (!v3)
  {
    if (v5)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    v7 = *a1 == *a2 && v3 == v5;
    if (v7 || (sub_1D5616168() & 1) != 0)
    {
LABEL_8:

      sub_1D4F286E0();
    }
  }
}

void MusicPlaybackMetrics.hash(into:)()
{
  v1 = v0[2];
  if (v0[1])
  {
    v2 = *v0;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  sub_1D4F31AC0();
}

uint64_t MusicPlaybackMetrics.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D56162D8();
  sub_1D56162F8();
  if (v2)
  {
    sub_1D5614E28();
  }

  sub_1D4F31AC0();
  return sub_1D5616328();
}

uint64_t sub_1D505B0EC()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1D56162D8();
  MusicPlaybackMetrics.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicPlaybackMetrics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v4 = sub_1D560FB38();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC80, &qword_1D562E4C0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v26 - v18;
  sub_1D4E628D4(a1, v29);
  OUTLINED_FUNCTION_1_63(&qword_1EC7EEC88);
  OUTLINED_FUNCTION_2_48(&qword_1EC7EEC90);
  sub_1D5610768();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D5610708();
  v21 = sub_1D560FB28();
  v27 = v22;
  v28 = v21;
  (*(v7 + 8))(v11, v4);
  v23 = sub_1D5610718();
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = (*(v15 + 8))(v19, v12);
  v24 = v30;
  v25 = v27;
  *v30 = v28;
  v24[1] = v25;
  v24[2] = v23;
  return result;
}

uint64_t MusicPlaybackMetrics.encode(to:)(uint64_t a1)
{
  v25[1] = a1;
  v2 = sub_1D560FB38();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC80, &qword_1D562E4C0);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = v25 - v19;
  v21 = *v1;
  v22 = v1[1];
  v23 = v1[2];

  sub_1D560FB18();
  (*(v5 + 16))(v10, v12, v2);
  sub_1D56106F8();
  (*(v5 + 8))(v12, v2);
  OUTLINED_FUNCTION_1_63(&qword_1EC7EEC88);
  OUTLINED_FUNCTION_2_48(&qword_1EC7EEC90);
  sub_1D5610778();
  return (*(v16 + 8))(v20, v13);
}

unint64_t MusicPlaybackMetrics.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2)
  {
    sub_1D5615B68();

    MEMORY[0x1DA6EAC70](v1, v2);
    MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
    MEMORY[0x1DA6EAC70](0xD000000000000013, 0x80000001D5682B30);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_1D505B694(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D560FB38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D505B6DC()
{
  result = qword_1EC7EEC98;
  if (!qword_1EC7EEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEC98);
  }

  return result;
}

uint64_t sub_1D505B740@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_46_1();
  result = sub_1D56120B8();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D505B784(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_46_1();
  return v4(v3);
}

void sub_1D505B818()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v65 = v60 - v11;
  OUTLINED_FUNCTION_70_0();
  v66 = sub_1D560F148();
  v12 = OUTLINED_FUNCTION_4(v66);
  v64 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v63 = v17 - v16;
  OUTLINED_FUNCTION_70_0();
  v18 = sub_1D560D838();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_59_0();
  v62 = (v24 - v25);
  OUTLINED_FUNCTION_23();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v60 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v60 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = v60 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v36 = OUTLINED_FUNCTION_22(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_59_0();
  v61 = v39 - v40;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_77();
  if (v6)
  {
    v60[0] = v4;
    v4(0);
    v60[1] = v2;
    sub_1D560EC98();
    sub_1D560D5C8();
    (*(v21 + 8))(v34, v18);
    v42 = sub_1D560D4C8();
    v43 = OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_57(v43, v44, v42);
    if (!v45)
    {
      sub_1D560D4B8();
      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_24_0(v42);
      (*(v52 + 8))(v0, v42);
      goto LABEL_11;
    }

    sub_1D4E7661C(v0, &unk_1EC7EBF20, &unk_1D561F530);
    v4 = v60[0];
  }

  v4(0);
  sub_1D560EC98();
  sub_1D560D808();
  OUTLINED_FUNCTION_1_14();
  v46 = *(v21 + 8);
  v46(v32, v18);
  if (!v34)
  {
    OUTLINED_FUNCTION_36_18();
    sub_1D560EC98();
    v47 = v65;
    sub_1D560D7A8();
    v46(v29, v18);
    v48 = v66;
    OUTLINED_FUNCTION_57(v47, 1, v66);
    if (v45)
    {
      sub_1D4E7661C(v47, &unk_1EC7F1970, &qword_1D561F4A0);
      v49 = v62;
      OUTLINED_FUNCTION_36_18();
      sub_1D560EC98();
      v50 = v61;
      sub_1D560D5C8();
      v46(v49, v18);
      v51 = sub_1D560D4C8();
      OUTLINED_FUNCTION_57(v50, 1, v51);
      if (v45)
      {
        sub_1D4E7661C(v50, &unk_1EC7EBF20, &unk_1D561F530);
        OUTLINED_FUNCTION_36_18();
        sub_1D560EC18();
        OUTLINED_FUNCTION_1_14();
      }

      else
      {
        sub_1D560D4B8();
        OUTLINED_FUNCTION_1_14();
        OUTLINED_FUNCTION_24_0(v51);
        v56 = *(v55 + 8);
        v57 = OUTLINED_FUNCTION_98();
        v59(v57, v58);
      }
    }

    else
    {
      v54 = v63;
      v53 = v64;
      (*(v64 + 32))(v63, v47, v48);
      sub_1D560F138();
      OUTLINED_FUNCTION_1_14();
      (*(v53 + 8))(v54, v48);
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D505BC94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECD0, &qword_1D562E620);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D5614558();
  v5 = sub_1D56131D8();
  OUTLINED_FUNCTION_2_49(v5);
  if (v6)
  {
    sub_1D4E7661C(v0, &qword_1EC7EECD0, &qword_1D562E620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
    v7 = OUTLINED_FUNCTION_5_43();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    if (qword_1EDD5D808 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
    OUTLINED_FUNCTION_0_63();
    sub_1D5061240(v12, v13);
    OUTLINED_FUNCTION_7_44();
    OUTLINED_FUNCTION_8_0();
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_46_1();
    return v17(v16);
  }
}

uint64_t sub_1D505BDF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECD0, &qword_1D562E620);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D5614558();
  v5 = sub_1D56131D8();
  OUTLINED_FUNCTION_2_49(v5);
  if (v6)
  {
    sub_1D4E7661C(v0, &qword_1EC7EECD0, &qword_1D562E620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
    v7 = OUTLINED_FUNCTION_5_43();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    if (qword_1EDD5D7E8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
    OUTLINED_FUNCTION_0_63();
    sub_1D5061240(v12, v13);
    OUTLINED_FUNCTION_7_44();
    OUTLINED_FUNCTION_8_0();
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_46_1();
    return v17(v16);
  }
}

uint64_t sub_1D505BF4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECD0, &qword_1D562E620);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D5614558();
  v5 = sub_1D56131D8();
  OUTLINED_FUNCTION_2_49(v5);
  if (v6)
  {
    sub_1D4E7661C(v0, &qword_1EC7EECD0, &qword_1D562E620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
    v7 = OUTLINED_FUNCTION_5_43();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    if (qword_1EDD5D7D8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
    OUTLINED_FUNCTION_0_63();
    sub_1D5061240(v12, v13);
    OUTLINED_FUNCTION_7_44();
    OUTLINED_FUNCTION_8_0();
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_46_1();
    return v17(v16);
  }
}

uint64_t sub_1D505C0A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECD0, &qword_1D562E620);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D5614558();
  v5 = sub_1D56131D8();
  OUTLINED_FUNCTION_2_49(v5);
  if (v6)
  {
    sub_1D4E7661C(v0, &qword_1EC7EECD0, &qword_1D562E620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    v7 = OUTLINED_FUNCTION_5_43();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    if (qword_1EDD54380 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    OUTLINED_FUNCTION_0_63();
    sub_1D5061240(v12, v13);
    OUTLINED_FUNCTION_7_44();
    OUTLINED_FUNCTION_8_0();
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_46_1();
    return v17(v16);
  }
}

uint64_t Playlist.collaborators.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECD0, &qword_1D562E620);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D5614558();
  v5 = sub_1D56131D8();
  OUTLINED_FUNCTION_2_49(v5);
  if (v6)
  {
    sub_1D4E7661C(v0, &qword_1EC7EECD0, &qword_1D562E620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    v7 = OUTLINED_FUNCTION_5_43();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    if (qword_1EDD5D820 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    OUTLINED_FUNCTION_0_63();
    sub_1D5061240(v12, v13);
    OUTLINED_FUNCTION_7_44();
    OUTLINED_FUNCTION_8_0();
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_46_1();
    return v17(v16);
  }
}

uint64_t sub_1D505C360()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECD0, &qword_1D562E620);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D5614558();
  v5 = sub_1D56131D8();
  OUTLINED_FUNCTION_2_49(v5);
  if (v6)
  {
    sub_1D4E7661C(v0, &qword_1EC7EECD0, &qword_1D562E620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    v7 = OUTLINED_FUNCTION_5_43();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    if (qword_1EDD5D838 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    OUTLINED_FUNCTION_0_63();
    sub_1D5061240(v12, v13);
    OUTLINED_FUNCTION_7_44();
    OUTLINED_FUNCTION_8_0();
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_46_1();
    return v17(v16);
  }
}

void Playlist.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v105 = v2;
  v3 = sub_1D560D838();
  v4 = OUTLINED_FUNCTION_4(v3);
  v103 = v5;
  v104 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v102 = v9 - v8;
  OUTLINED_FUNCTION_70_0();
  v92 = sub_1D5610088();
  v10 = OUTLINED_FUNCTION_4(v92);
  v101 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v96 = v15 - v14;
  OUTLINED_FUNCTION_70_0();
  v97 = sub_1D5611AB8();
  v16 = OUTLINED_FUNCTION_4(v97);
  v93 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v91 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v23 = OUTLINED_FUNCTION_22(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v84 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v89 = &v84 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_16_0();
  v88 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  v87 = &v84 - v45;
  v46 = sub_1D5614898();
  v47 = OUTLINED_FUNCTION_4(v46);
  v49 = v48;
  v100 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  v54 = v53 - v52;
  v55 = *(v49 + 16);
  v55(v53 - v52, v0, v46);
  v56 = sub_1D56146D8();
  v98 = v57;
  v99 = v56;
  v58 = sub_1D5614468();
  v94 = v59;
  v95 = v58;
  sub_1D5614848();
  _s8MusicKit8PlaylistV0aB8InternalE13contentRatingAA07ContentF0OSgvg_0();
  sub_1D56146B8();
  v90 = sub_1D5614508();
  v60 = OUTLINED_FUNCTION_5_43();
  v61 = v92;
  __swift_storeEnumTagSinglePayload(v60, v62, v63, v92);
  v107 = v46;
  v108 = MEMORY[0x1E69773C0];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v106);
  v86 = v54;
  v55(boxed_opaque_existential_0, v54, v46);
  __swift_project_boxed_opaque_existential_1(v106, v107);
  v65 = v91;
  OUTLINED_FUNCTION_93();
  sub_1D5612AF8();
  v66 = v96;
  sub_1D5611A98();
  (*(v93 + 8))(v65, v97);
  sub_1D560FDD8();
  (*(v101 + 8))(v66, v61);
  sub_1D4E7661C(v31, &qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v61);
  v70 = v28;
  v85 = v31;
  sub_1D4ED3A14(v28, v31, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_destroy_boxed_opaque_existential_1(v106);
  v71 = v102;
  sub_1D560EC98();
  sub_1D4ED3750(v31, v28, &qword_1EC7EA358, &unk_1D561DF50);
  v72 = type metadata accessor for MusicSiriRepresentation();
  v73 = v105;
  v74 = v87;
  sub_1D4ED3750(v87, v105 + v72[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v75 = v88;
  sub_1D4ED3750(v88, v73 + v72[9], &qword_1EC7EC478, &unk_1D56299D0);
  v76 = v89;
  sub_1D4ED3750(v89, v73 + v72[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v106[0]) = 8;
  sub_1D50391CC();
  v78 = v77;
  v80 = v79;
  sub_1D4E7661C(v70, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v103 + 8))(v71, v104);
  sub_1D4E7661C(v85, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v76, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E7661C(v75, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E7661C(v74, &qword_1EC7E9CA0, &unk_1D561A0C0);
  (*(v100 + 8))(v86, v46);
  v81 = v105;
  *v105 = v78;
  v81[1] = v80;
  *(v81 + 16) = 8;
  v82 = v98;
  v81[3] = v99;
  v81[4] = v82;
  v83 = v94;
  v81[5] = v95;
  v81[6] = v83;
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D505CAD8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED50, &qword_1D562ED08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31[-v10];
  sub_1D4ED3750(a2, &v31[-v10], &unk_1EC7F1990, &unk_1D561CEF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E6975090], v7);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED58, &qword_1D562ED10);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  sub_1D560F188();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED20, &unk_1D562E678);
  v15 = sub_1D560E568();
  v17 = v16;
  MEMORY[0x1DA6EAF30]();
  sub_1D4E6C078(*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1D56151F8();
  v15(v35, 0);
  sub_1D4ED3750(a2, v6, &unk_1EC7F1990, &unk_1D561CEF0);
  v18 = sub_1D5614898();
  if (__swift_getEnumTagSinglePayload(v6, 1, v18) == 1)
  {

    return sub_1D4E7661C(v6, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  else
  {
    v33 = v18;
    v34 = MEMORY[0x1E69773A0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
    (*(*(v18 - 8) + 32))(boxed_opaque_existential_0, v6, v18);
    sub_1D4F69344(&v32, v35);
    sub_1D4E62938(v35, &v32);
    v21 = sub_1D560E588();
    v23 = v22;
    sub_1D4EFF488();
    v24 = *(*v23 + 16);
    sub_1D4EFF6F0();
    v25 = v33;
    v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
    v27 = *(*(v25 - 8) + 64);
    MEMORY[0x1EEE9AC00](v26);
    v29 = &v31[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v30 + 16))(v29);
    sub_1D54CE068(v24, v29, v23);
    __swift_destroy_boxed_opaque_existential_1(&v32);
    v21(v31, 0);

    return __swift_destroy_boxed_opaque_existential_1(v35);
  }
}

uint64_t Playlist.catalogID.getter()
{
  v1 = sub_1D560D838();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_47_5();
  sub_1D5614898();
  sub_1D560EC98();
  sub_1D560D7A8();
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_61();
  v13(v12);
  v14 = sub_1D560F148();
  OUTLINED_FUNCTION_57(v0, 1, v14);
  if (v15)
  {
    sub_1D4E7661C(v0, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v16 = v0;
    sub_1D560F138();
    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_24_0(v14);
    (*(v17 + 8))(v0, v14);
  }

  return v16;
}

double Playlist.coverArtworkRecipe.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECD8, &qword_1D562E628);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  sub_1D56145C8();
  v7 = sub_1D5612328();
  v8 = OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_57(v8, v9, v7);
  if (v10)
  {
    sub_1D4E7661C(v1, &qword_1EC7EECD8, &qword_1D562E628);
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
  }

  else
  {
    sub_1D520E068(v15);
    OUTLINED_FUNCTION_24_0(v7);
    (*(v11 + 8))(v1, v7);
    v12 = v15[1];
    *a1 = v15[0];
    a1[1] = v12;
    result = *&v16;
    v14 = v17;
    a1[2] = v16;
    a1[3] = v14;
  }

  return result;
}

void Playlist.editableComponents.getter()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_45_4();
  v2 = sub_1D56132B8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECE0, &qword_1D562E630);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_43_7();
  sub_1D56145D8();
  v12 = OUTLINED_FUNCTION_105();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v2);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v1, &qword_1EC7EECE0, &qword_1D562E630);
    v15 = 0;
  }

  else
  {
    sub_1D56132A8();
    OUTLINED_FUNCTION_20_39();
    sub_1D5061240(v16, v17);
    v18 = sub_1D56159C8();
    v19 = *(v5 + 8);
    v20 = OUTLINED_FUNCTION_61();
    v19(v20);
    sub_1D5613298();
    OUTLINED_FUNCTION_61();
    v21 = sub_1D56159C8();
    v22 = OUTLINED_FUNCTION_61();
    v19(v22);
    if (v21)
    {
      v15 = v18 & 1 | 2;
    }

    else
    {
      v15 = v18 & 1;
    }

    (v19)(v1, v2);
  }

  *v0 = v15;
  *(v0 + 8) = EnumTagSinglePayload == 1;
  OUTLINED_FUNCTION_46();
}

uint64_t Playlist.editorialArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_77();
  v14 = sub_1D56140F8();
  v15 = OUTLINED_FUNCTION_5_43();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  result = sub_1D56145B8();
  if (result)
  {
    sub_1D4ED06C8(result, v3);

    sub_1D4ED3750(v3, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    v20 = OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_57(v20, v21, v19);
    if (v22)
    {
      OUTLINED_FUNCTION_47_0(v3);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_47_0(v2);
      v24 = 1;
    }

    else
    {
      sub_1D5610758();
      sub_1D4E7661C(v3, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_24_0(v19);
      (*(v23 + 8))(v2, v19);
      v24 = 0;
    }

    __swift_storeEnumTagSinglePayload(v1, v24, 1, v14);
    v25 = OUTLINED_FUNCTION_98();
    return sub_1D4ED3A14(v25, v26, v27, v28);
  }

  return result;
}

void Playlist.geoLocation.getter()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_45_4();
  v1 = sub_1D5610AE8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECF0, &qword_1D562E638);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  sub_1D5614488();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECF8, &unk_1D562E640);
  v20 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v20, v21, v19);
  if (v22)
  {
    sub_1D4E7661C(v18, &qword_1EC7EECF0, &qword_1D562E638);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    sub_1D5610708();
    v28 = sub_1D5610AD8();
    v30 = v29;
    v31 = *(v4 + 8);
    v31(v12, v1);
    if (v30)
    {
      v32 = v28;
    }

    else
    {
      v32 = 0;
    }

    v35 = v1;
    v36 = v32;
    if (v30)
    {
      v24 = v30;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    sub_1D5610708();
    v25 = sub_1D5610AB8();
    v26 = v33;
    v31(v9, v35);
    v27 = sub_1D5610718();
    OUTLINED_FUNCTION_24_0(v19);
    (*(v34 + 8))(v18, v19);
    v23 = v36;
  }

  *v0 = v23;
  v0[1] = v24;
  v0[2] = v25;
  v0[3] = v26;
  v0[4] = v27;
  OUTLINED_FUNCTION_46();
}

uint64_t Playlist.isMetadataEditable.getter()
{
  v1 = sub_1D56132B8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECE0, &qword_1D562E630);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31();
  sub_1D56145D8();
  v11 = OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_57(v11, v12, v1);
  if (v13)
  {
    sub_1D4E7661C(v0, &qword_1EC7EECE0, &qword_1D562E630);
    return 2;
  }

  else
  {
    sub_1D56132A8();
    OUTLINED_FUNCTION_20_39();
    sub_1D5061240(v14, v15);
    sub_1D56159C8();
    v16 = *(v4 + 8);
    v17 = OUTLINED_FUNCTION_98();
    v16(v17);
    sub_1D5613298();
    OUTLINED_FUNCTION_98();
    v18 = sub_1D56159C8();
    v19 = OUTLINED_FUNCTION_98();
    v16(v19);
    (v16)(v0, v1);
    return v18 & 1;
  }
}

uint64_t Playlist.staticDetailTallArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_77();
  v14 = sub_1D56140F8();
  v15 = OUTLINED_FUNCTION_5_43();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  result = sub_1D56145B8();
  if (result)
  {
    sub_1D4ED06C8(result, v3);

    sub_1D4ED3750(v3, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    v20 = OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_57(v20, v21, v19);
    if (v22)
    {
      OUTLINED_FUNCTION_47_0(v3);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_47_0(v2);
      v24 = 1;
    }

    else
    {
      sub_1D5610758();
      sub_1D4E7661C(v3, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_24_0(v19);
      (*(v23 + 8))(v2, v19);
      v24 = 0;
    }

    __swift_storeEnumTagSinglePayload(v1, v24, 1, v14);
    v25 = OUTLINED_FUNCTION_98();
    return sub_1D4ED3A14(v25, v26, v27, v28);
  }

  return result;
}

uint64_t Playlist.variant.getter()
{
  OUTLINED_FUNCTION_45_4();
  v2 = sub_1D5612548();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB500, &qword_1D561E2A0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  sub_1D5614878();
  v12 = OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_57(v12, v13, v2);
  if (v14)
  {
    result = sub_1D4E7661C(v1, &qword_1EC7EB500, &qword_1D561E2A0);
    v16 = 8;
LABEL_16:
    *v0 = v16;
    return result;
  }

  v17 = OUTLINED_FUNCTION_30_20();
  v18(v17);
  v19 = *(v5 + 88);
  v20 = OUTLINED_FUNCTION_93();
  v22 = v21(v20);
  if (v22 == *MEMORY[0x1E69764F8])
  {
LABEL_5:
    v23 = OUTLINED_FUNCTION_11_41();
    result = v24(v23);
    v16 = 0;
    goto LABEL_16;
  }

  if (v22 == *MEMORY[0x1E69764D0])
  {
    v25 = OUTLINED_FUNCTION_11_41();
    result = v26(v25);
    v16 = 1;
    goto LABEL_16;
  }

  if (v22 == *MEMORY[0x1E69764E0])
  {
    v27 = OUTLINED_FUNCTION_11_41();
    result = v28(v27);
    v16 = 2;
    goto LABEL_16;
  }

  if (v22 == *MEMORY[0x1E69764B8])
  {
    v29 = OUTLINED_FUNCTION_11_41();
    result = v30(v29);
    v16 = 3;
    goto LABEL_16;
  }

  if (v22 == *MEMORY[0x1E69764D8])
  {
    v31 = OUTLINED_FUNCTION_11_41();
    result = v32(v31);
    v16 = 4;
    goto LABEL_16;
  }

  if (v22 == *MEMORY[0x1E69764C0])
  {
    goto LABEL_15;
  }

  if (v22 == *MEMORY[0x1E69764C8])
  {
    goto LABEL_5;
  }

  if (v22 == *MEMORY[0x1E69764F0])
  {
    goto LABEL_15;
  }

  if (v22 == *MEMORY[0x1E69764B0])
  {
    v35 = OUTLINED_FUNCTION_11_41();
    result = v36(v35);
    v16 = 7;
    goto LABEL_16;
  }

  if (v22 == *MEMORY[0x1E69764E8])
  {
LABEL_15:
    v33 = OUTLINED_FUNCTION_11_41();
    result = v34(v33);
    v16 = 5;
    goto LABEL_16;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D505DED8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECD0, &qword_1D562E620);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D5614558();
  v5 = sub_1D56131D8();
  OUTLINED_FUNCTION_2_49(v5);
  if (v6)
  {
    sub_1D4E7661C(v0, &qword_1EC7EECD0, &qword_1D562E620);
    type metadata accessor for CuratorRelationshipProvider();
    v7 = OUTLINED_FUNCTION_5_43();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    if (qword_1EDD5D7F8 != -1)
    {
      swift_once();
    }

    type metadata accessor for CuratorRelationshipProvider();
    OUTLINED_FUNCTION_0_63();
    sub_1D5061240(v12, v13);
    OUTLINED_FUNCTION_7_44();
    OUTLINED_FUNCTION_8_0();
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_46_1();
    return v17(v16);
  }
}

uint64_t Playlist.socialProfile.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D505C0A8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_2_49(v5);
  if (v6)
  {
    sub_1D4E7661C(v0, &qword_1EC7EA778, &qword_1D5622E60);
    type metadata accessor for SocialProfile();
    v7 = OUTLINED_FUNCTION_5_43();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_44_16();
    sub_1D4EC9410();
    OUTLINED_FUNCTION_8_0();
    v12 = *(v11 + 8);
    v13 = OUTLINED_FUNCTION_46_1();
    return v14(v13);
  }
}

uint64_t Playlist.collaboration.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D505BC94();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_2_49(v5);
  if (v6)
  {
    sub_1D4E7661C(v0, &qword_1EC7ECF58, &qword_1D5623AF0);
    type metadata accessor for Playlist.Collaboration();
    v7 = OUTLINED_FUNCTION_5_43();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_44_16();
    sub_1D4EC9FF4();
    OUTLINED_FUNCTION_8_0();
    v12 = *(v11 + 8);
    v13 = OUTLINED_FUNCTION_46_1();
    return v14(v13);
  }
}

uint64_t Playlist.genre.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D505BDF0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_2_49(v5);
  if (v6)
  {
    sub_1D4E7661C(v0, &qword_1EC7EA788, &unk_1D56223A0);
    sub_1D5613C48();
    v7 = OUTLINED_FUNCTION_5_43();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_44_16();
    sub_1D4EC94F4(v11);
    OUTLINED_FUNCTION_8_0();
    v13 = *(v12 + 8);
    v14 = OUTLINED_FUNCTION_46_1();
    return v15(v14);
  }
}

uint64_t Playlist.parent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D505BF4C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_2_49(v5);
  if (v6)
  {
    sub_1D4E7661C(v0, &qword_1EC7ECF38, &qword_1D562E650);
    type metadata accessor for Playlist.Folder();
    v7 = OUTLINED_FUNCTION_5_43();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_44_16();
    sub_1D4ECA0A8();
    OUTLINED_FUNCTION_8_0();
    v12 = *(v11 + 8);
    v13 = OUTLINED_FUNCTION_46_1();
    return v14(v13);
  }
}

void Playlist.friendsWhoListened.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  v8 = sub_1D560CD48();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_43_7();
  sub_1D56145E8();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  v19 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v19, v20, v18);
  if (v21)
  {
    sub_1D4E7661C(v1, &qword_1EC7EA7E0, &unk_1D5623AB0);
    v29 = 1;
  }

  else
  {
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    sub_1D560CD98();
    v22 = OUTLINED_FUNCTION_24_7();
    __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
    type metadata accessor for SocialProfile();
    sub_1D5061240(&qword_1EDD57510, type metadata accessor for SocialProfile);
    sub_1D5061240(&qword_1EDD57518, type metadata accessor for SocialProfile);
    sub_1D5612368();
    sub_1D4E7661C(v0, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v25 = *(v11 + 8);
    v26 = OUTLINED_FUNCTION_93();
    v27(v26);
    OUTLINED_FUNCTION_24_0(v18);
    (*(v28 + 8))(v1, v18);
    v29 = 0;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  __swift_storeEnumTagSinglePayload(v3, v29, 1, v30);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D505E658()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  swift_getKeyPath();
  sub_1D5615288();
  sub_1D5061240(&qword_1EDD5CF50, MEMORY[0x1E6969530]);
  v0 = sub_1D560D138();

  qword_1EC7EECA0 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.downloadedDate.getter()
{
  return sub_1D4F5DA4C(&qword_1EC7E8C98, &qword_1EC7EECA0);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E8F30, &qword_1EC7F0C38);
}

uint64_t sub_1D505E798()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  v0 = sub_1D560D138();

  qword_1EC7EECB0 = v0;
  return result;
}

uint64_t sub_1D505E878()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  swift_getKeyPath();
  sub_1D5615278();
  OUTLINED_FUNCTION_19_33();
  sub_1D5061240(v1, v2);
  OUTLINED_FUNCTION_22_28();
  OUTLINED_FUNCTION_44_2();

  qword_1EDD54388 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.socialProfile.getter()
{
  return sub_1D4F5DA4C(&qword_1EDD54380, &qword_1EDD54388);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E8D68, &qword_1EC7EF460);
}

{
  OUTLINED_FUNCTION_47_30();
  return sub_1D5070594(v0, v1);
}

uint64_t sub_1D505E92C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D5061240(qword_1EDD5D1C0, type metadata accessor for Playlist.Collaboration);
  OUTLINED_FUNCTION_32_22();
  v0 = sub_1D560D0F8();

  qword_1EDD5D810 = v0;
  return result;
}

uint64_t sub_1D505EA24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  swift_getKeyPath();
  sub_1D5615278();
  sub_1D5061240(&qword_1EDD5D1F0, type metadata accessor for Playlist.Collaborator);
  OUTLINED_FUNCTION_32_22();
  sub_1D560D0D8();
  OUTLINED_FUNCTION_44_2();

  qword_1EDD5D828 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.collaborators.getter()
{
  return sub_1D4F5DA4C(&qword_1EDD5D820, &qword_1EDD5D828);
}

{
  OUTLINED_FUNCTION_27_36();
  return sub_1D5070594(v0, v1);
}

uint64_t sub_1D505EB0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  swift_getKeyPath();
  sub_1D5061240(qword_1EDD5DAF0, type metadata accessor for CuratorRelationshipProvider);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76DA0 = v0;
  return result;
}

uint64_t sub_1D505EBBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  v0 = sub_1D560D138();

  qword_1EC7EECB8 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.versionHash.getter()
{
  return sub_1D4F5DA4C(qword_1EC7E8CB0, &qword_1EC7EECB8);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E8F40, &qword_1EC7F0C48);
}

uint64_t sub_1D505ECA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  swift_getKeyPath();
  sub_1D5615278();
  sub_1D5061240(&qword_1EDD5D240, MEMORY[0x1E6976DC8]);
  OUTLINED_FUNCTION_22_28();
  OUTLINED_FUNCTION_44_2();

  qword_1EDD5D7F0 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.genre.getter()
{
  return sub_1D4F5DA4C(&qword_1EDD5D7E8, &qword_1EDD5D7F0);
}

{
  return sub_1D50355DC(&off_1EC7E8EF0);
}

{
  return sub_1D50355DC(&off_1EDD53E88);
}

uint64_t sub_1D505ED7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D5061240(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
  v4 = sub_1D560D138();

  *a3 = v4;
  return result;
}

uint64_t static PartialMusicProperty<A>.staticDetailTallArtwork.getter()
{
  return sub_1D4F5DA4C(qword_1EC7E8CC0, &qword_1EC7EECC0);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E8F50, &qword_1EC7F0C58);
}

uint64_t sub_1D505EE9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_19_33();
  sub_1D5061240(v0, v1);
  v2 = sub_1D560D0E8();

  qword_1EDD76DA8 = v2;
  return result;
}

uint64_t sub_1D505EF6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED68, &unk_1D562ED48);
  sub_1D560D1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561EAC0;
  if (qword_1EDD5D838 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EDD76DA8;
  sub_1D5061240(&qword_1EDD52A78, MEMORY[0x1E69773E0]);

  v1 = sub_1D560D158();

  qword_1EC7EECC8 = v1;
  return result;
}

uint64_t sub_1D505F0EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED48, &qword_1D56697E0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED60, &qword_1D562ED40);
  v1 = sub_1D560DE08();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D561C050;
  (*(v3 + 104))(v7 + v6, *MEMORY[0x1E69750B0], v1);
  sub_1D5061240(qword_1EDD5D190, type metadata accessor for Playlist.Folder);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EDD5D7E0 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.parent.getter()
{
  return sub_1D4F5DA4C(&qword_1EDD5D7D8, &qword_1EDD5D7E0);
}

{
  return sub_1D5070594(&qword_1EC7E8D30, &qword_1EC7EF1C0);
}

void Playlist.contributor(for:)()
{
  OUTLINED_FUNCTION_47();
  v45 = v1;
  v47 = v5;
  v48 = type metadata accessor for SocialProfile();
  OUTLINED_FUNCTION_24_0(v48);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_77();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4(v10);
  v46 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED00, &qword_1D562E658);
  OUTLINED_FUNCTION_24_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v45 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED08, &qword_1D562E660);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_47_5();
  sub_1D56147E8();
  v31 = sub_1D56147B8();
  OUTLINED_FUNCTION_57(v0, 1, v31);
  if (v42)
  {
    v32 = &qword_1EC7EED08;
    v33 = &qword_1D562E660;
    v34 = v0;
LABEL_4:
    sub_1D4E7661C(v34, v32, v33);
LABEL_11:
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v48);
    goto LABEL_12;
  }

  v35 = sub_1D56147A8();
  OUTLINED_FUNCTION_24_0(v31);
  (*(v36 + 8))(v0, v31);
  if (!v35)
  {
    goto LABEL_11;
  }

  if (!v35[2])
  {

    goto LABEL_11;
  }

  v37 = v35[4];
  v38 = v35[5];

  sub_1D505C360();
  OUTLINED_FUNCTION_57(v26, 1, v10);
  if (v42)
  {

    v32 = &qword_1EC7EA778;
    v33 = &qword_1D5622E60;
    v34 = v26;
    goto LABEL_4;
  }

  (*(v46 + 16))(v4, v26, v10);
  sub_1D5060CC0(&qword_1EC7EED10);
  sub_1D5614F98();
  v39 = *(v15 + 36);
  sub_1D5060CC0(&qword_1EC7EA5C0);
  while (1)
  {
    sub_1D5615648();
    if (*&v20[v39] == v49)
    {
      break;
    }

    v40 = sub_1D5615688();
    sub_1D5060D10(v41, v3);
    v40(&v49, 0);
    sub_1D5615658();
    sub_1D5060D74(v3, v2);
    v42 = *v2 == v37 && v2[1] == v38;
    if (v42 || (sub_1D5616168() & 1) != 0)
    {
      sub_1D4E7661C(v20, &qword_1EC7EED00, &qword_1D562E658);

      v43 = v47;
      sub_1D5060D74(v2, v47);
      v44 = 0;
      goto LABEL_22;
    }

    sub_1D5060DD8(v2);
  }

  sub_1D4E7661C(v20, &qword_1EC7EED00, &qword_1D562E658);

  v44 = 1;
  v43 = v47;
LABEL_22:
  __swift_storeEnumTagSinglePayload(v43, v44, 1, v48);
  (*(v46 + 8))(v26, v10);
LABEL_12:
  OUTLINED_FUNCTION_46();
}

void Playlist.with<A>(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v37 = v2;
  v4 = (*v3 + *MEMORY[0x1E6975138]);
  v5 = v4[1];
  v6 = v4[2];
  v7 = sub_1D560DAB8();
  v36 = sub_1D56158D8();
  OUTLINED_FUNCTION_4(v36);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_38_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED18, &unk_1D562E668);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_47_5();
  v17 = sub_1D5612848();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v35 = *v4;
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v17);
    (*(v20 + 32))(v25, v0, v17);
    (*(v9 + 16))(v1, v37, v36);
    OUTLINED_FUNCTION_57(v1, 1, v7);
    if (v29)
    {
      (*(v9 + 8))(v1, v36);
      v38 = 0u;
      v39 = 0u;
    }

    else
    {
      *(&v39 + 1) = v7;
      __swift_allocate_boxed_opaque_existential_0(&v38);
      OUTLINED_FUNCTION_24_0(v7);
      (*(v30 + 32))();
    }

    sub_1D56126C8();
    *(&v39 + 1) = v17;
    v40 = MEMORY[0x1E69765B0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v38);
    (*(v20 + 16))(boxed_opaque_existential_0, v25, v17);
    sub_1D56145A8();
    (*(v20 + 8))(v25, v17);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    v32 = OUTLINED_FUNCTION_5_43();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v17);
    sub_1D4E7661C(v0, &qword_1EC7EED18, &unk_1D562E668);
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000003CLL, 0x80000001D5682C10);
    sub_1D5612B18();
    sub_1D5615D48();
    __swift_destroy_boxed_opaque_existential_1(&v38);
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t Playlist.favoriteStatus.getter()
{
  OUTLINED_FUNCTION_45_4();
  v1 = sub_1D56128E8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1D5614548();
  v8 = OUTLINED_FUNCTION_30_20();
  v9(v8);
  v10 = *(v4 + 88);
  v11 = OUTLINED_FUNCTION_93();
  v13 = v12(v11);
  if (v13 == *MEMORY[0x1E69765E8])
  {
    v14 = 0;
LABEL_7:
    v15 = OUTLINED_FUNCTION_11_41();
    result = v16(v15);
    *v0 = v14;
    return result;
  }

  if (v13 == *MEMORY[0x1E69765F8])
  {
    v14 = 1;
    goto LABEL_7;
  }

  if (v13 == *MEMORY[0x1E69765F0])
  {
    v14 = 2;
    goto LABEL_7;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t static Playlist.validateParametersForInternalLibrarySectionedRequest<A>(with:itemPredicates:sectionPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for Playlist.Collaborator();
  if (result != a5)
  {
    v7 = sub_1D560DE58();
    sub_1D5061240(&qword_1EDD53B58, MEMORY[0x1E69750D8]);
    swift_allocError();
    v8 = *MEMORY[0x1E69750C8];
    OUTLINED_FUNCTION_24_0(v7);
    (*(v9 + 104))();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D505FD84()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA910, &qword_1D561D180);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6620, &qword_1D562ECD0);
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D505FEB4, 0, 0);
}

uint64_t sub_1D505FEB4()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[3];
  sub_1D5613D28();
  sub_1D560DD68();
  KeyPath = swift_getKeyPath();
  sub_1D54CD18C(KeyPath, v3);

  _s8MusicKit0A14LibraryRequestV0aB8InternalE25deferIdentifierResolutionSbvs_0();
  v5 = *(MEMORY[0x1E6975088] + 4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1D505FFA8;
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];

  return MEMORY[0x1EEDCEAC0](v8, v9);
}

uint64_t sub_1D505FFA8()
{
  OUTLINED_FUNCTION_60();
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1D506017C;
  }

  else
  {
    v3 = sub_1D50600B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D50600B8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  sub_1D560DE38();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D506017C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1D5060200()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4F49C18;

  return sub_1D505FD84();
}

void Playlist.playbackIntent(startingAt:with:explicitPlaybackSource:isLocalPlayback:)()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v102 = v9;
  v104 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_77();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_38_2();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED20, &unk_1D562E678);
  OUTLINED_FUNCTION_4(v101);
  v103 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v100 = &v93 - v24;
  OUTLINED_FUNCTION_70_0();
  v25 = sub_1D560D838();
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_59_0();
  v99 = v31 - v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v33);
  v97 = &v93 - v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v93 - v36;
  v38 = *v6;
  if (v38 == 2)
  {
    sub_1D5614898();
    sub_1D560EC98();
    v39 = sub_1D560D668();
    (*(v28 + 8))(v37, v25);
    if (v39)
    {
LABEL_3:
      v98 = v28;
      v40 = sub_1D5614898();
      sub_1D5614828();
      v41 = v100;
      sub_1D560E668();
      KeyPath = swift_getKeyPath();
      if (v4)
      {
        OUTLINED_FUNCTION_24_0(v40);
        v44 = *(v43 + 16);
        v45 = OUTLINED_FUNCTION_36_18();
        v46(v45);
        OUTLINED_FUNCTION_64_0();
        __swift_storeEnumTagSinglePayload(v47, v48, v49, v40);
        sub_1D505CAD8(KeyPath, v2);

        sub_1D4E7661C(v2, &unk_1EC7F1990, &unk_1D561CEF0);
        v50 = v101;
      }

      else
      {
        OUTLINED_FUNCTION_23_28();
        sub_1D505B818();
        v108[0] = v53;
        v108[1] = v54;
        v50 = v101;
        MEMORY[0x1DA6E4340](KeyPath, v108, v101, MEMORY[0x1E6977380], MEMORY[0x1E6975510]);
      }

      v55 = v41;
      v109 = v50;
      v110 = &protocol witness table for MusicLibrarySectionedRequest<A, B>;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v108);
      (*(v103 + 16))(boxed_opaque_existential_0, v41, v50);
      sub_1D4ED3750(v102, v105, &unk_1EC7F65C0, &qword_1D562E6B0);
      v57 = v98;
      if (v106)
      {
        v58 = v107;
        __swift_project_boxed_opaque_existential_1(v105, v106);
        v59 = *(v58 + 8);
        sub_1D560EC98();
        OUTLINED_FUNCTION_64_0();
        __swift_storeEnumTagSinglePayload(v60, v61, v62, v25);
        __swift_destroy_boxed_opaque_existential_1(v105);
      }

      else
      {
        sub_1D4E7661C(v105, &unk_1EC7F65C0, &qword_1D562E6B0);
        v71 = OUTLINED_FUNCTION_105();
        __swift_storeEnumTagSinglePayload(v71, v72, 1, v25);
      }

      if (v8)
      {
        v96 = v1;
        swift_getKeyPath();
        v73 = *(v8 + 16);
        v102 = (v57 + 32);

        v74 = 0;
        v75 = MEMORY[0x1E69E7CC0];
        v76 = v8 + 32;
        v95 = v73;
        for (i = v8 + 32; ; v76 = i)
        {
          v77 = ~v74;
          v78 = v76 + 40 * v74;
          v79 = v73 - v74;
          if (!v79)
          {
            break;
          }

          while (1)
          {
            sub_1D4E62938(v78, v105);
            swift_getAtKeyPath();
            OUTLINED_FUNCTION_64_0();
            __swift_storeEnumTagSinglePayload(v80, v81, v82, v25);
            __swift_destroy_boxed_opaque_existential_1(v105);
            v83 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_57(v83, v84, v25);
            if (!v85)
            {
              break;
            }

            sub_1D4E7661C(v0, &unk_1EC7EEC20, &unk_1D5623F70);
            --v77;
            v78 += 40;
            if (!--v79)
            {
              goto LABEL_25;
            }
          }

          v86 = *v102;
          v87 = v97;
          (*v102)(v97, v0, v25);
          v86(v99, v87, v25);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v93 = v86;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v90 = *(v75 + 16);
            sub_1D4F00554();
            v75 = v91;
          }

          v89 = *(v75 + 16);
          if (v89 >= *(v75 + 24) >> 1)
          {
            sub_1D4F00554();
            v75 = v92;
          }

          v74 = -v77;
          *(v75 + 16) = v89 + 1;
          v93(v75 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v89, v99, v25);
          v73 = v95;
        }

LABEL_25:

        v1 = v96;
        v50 = v101;
        v55 = v100;
      }

      else
      {
        v75 = MEMORY[0x1E69E7CC0];
      }

      sub_1D5424200(v108, v1, v75, 1, v63, v64, v65, v66, v93, i, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);

      sub_1D4E7661C(v1, &unk_1EC7EEC20, &unk_1D5623F70);
      (*(v103 + 8))(v55, v50);
      goto LABEL_28;
    }
  }

  else if (v38)
  {
    goto LABEL_3;
  }

  if (v8)
  {
    v51 = sub_1D5614898();
    v109 = v51;
    v110 = &protocol witness table for Playlist;
    __swift_allocate_boxed_opaque_existential_0(v108);
    OUTLINED_FUNCTION_24_0(v51);
    (*(v52 + 16))();
    sub_1D54235CC();
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v108);
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC0, &qword_1D561DBB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D561C050;
  v68 = sub_1D5614898();
  v69 = MEMORY[0x1E6977360];
  *(inited + 56) = v68;
  *(inited + 64) = v69;
  __swift_allocate_boxed_opaque_existential_0((inited + 32));
  OUTLINED_FUNCTION_24_0(v68);
  (*(v70 + 16))();
  sub_1D5423C84();
  swift_setDeallocating();
  sub_1D4EFF1F8();
LABEL_29:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5060A80(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = *(v1 + 8);
  return sub_1D560EC98();
}

unint64_t Playlist.Variant.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 8;
  if (result < 8)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D5060AF8@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Variant.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D5060CC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5060D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfile();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5060D74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfile();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5060DD8(uint64_t a1)
{
  v2 = type metadata accessor for SocialProfile();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5060E34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = Playlist.EditableComponents.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D5060E74@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.EditableComponents.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D5060EAC()
{
  result = qword_1EDD52B90;
  if (!qword_1EDD52B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52B90);
  }

  return result;
}

unint64_t sub_1D5060F04()
{
  result = qword_1EC7EED28;
  if (!qword_1EC7EED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EED28);
  }

  return result;
}

unint64_t sub_1D5060F5C()
{
  result = qword_1EC7EED30;
  if (!qword_1EC7EED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EED30);
  }

  return result;
}

unint64_t sub_1D5060FB0()
{
  result = qword_1EC7EED38;
  if (!qword_1EC7EED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EED38);
  }

  return result;
}

unint64_t sub_1D5061008()
{
  result = qword_1EC7EED40;
  if (!qword_1EC7EED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EED40);
  }

  return result;
}

_BYTE *_s7VariantOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D50611EC()
{
  result = qword_1EDD52B88;
  if (!qword_1EDD52B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52B88);
  }

  return result;
}

uint64_t sub_1D5061240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D50612D0()
{
  v0 = type metadata accessor for GenericMusicItem();
  result = sub_1D5061CC0(&qword_1EC7EED98, type metadata accessor for GenericMusicItem);
  qword_1EC7EED70 = v0;
  *algn_1EC7EED78 = result;
  return result;
}

uint64_t static LegacyModelLibrarySearchTopResult.Placeholder.concreteInternalItemType.getter()
{
  if (qword_1EC7E8CE0 != -1)
  {
    swift_once();
  }

  return qword_1EC7EED70;
}

uint64_t sub_1D50613D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v89 = &v86 - v6;
  v7 = sub_1D56131A8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v87 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED88, &qword_1D562EF00);
  v15 = OUTLINED_FUNCTION_4(v14);
  v88 = v16;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v21 = (&v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v86 - v22;
  v24 = sub_1D56131B8();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v31 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v31, a1, v24);
  v32 = (*(v27 + 88))(v31, v24);
  if (v32 != *MEMORY[0x1E6976930])
  {
    if (v32 == *MEMORY[0x1E6976938])
    {
      v42 = OUTLINED_FUNCTION_0_64();
      v43(v42);
      v44 = OUTLINED_FUNCTION_2_50();
      v45(v44);
      v46 = sub_1D5613EF8();
      OUTLINED_FUNCTION_3_36(v46);
      v48 = *(v47 + 32);
      v49 = OUTLINED_FUNCTION_5_44();
      v50(v49);
      type metadata accessor for GenericMusicItem();
      OUTLINED_FUNCTION_65_2();
      return swift_storeEnumTagMultiPayload();
    }

    if (v32 == *MEMORY[0x1E6976908])
    {
      v51 = OUTLINED_FUNCTION_0_64();
      v52(v51);
      v53 = OUTLINED_FUNCTION_2_50();
      v54(v53);
      v55 = sub_1D560EEA8();
      OUTLINED_FUNCTION_3_36(v55);
      v57 = *(v56 + 32);
      v58 = OUTLINED_FUNCTION_5_44();
      v59(v58);
      type metadata accessor for GenericMusicItem();
      OUTLINED_FUNCTION_65_2();
      return swift_storeEnumTagMultiPayload();
    }

    if (v32 == *MEMORY[0x1E6976940])
    {
      v60 = OUTLINED_FUNCTION_0_64();
      v61(v60);
      v62 = OUTLINED_FUNCTION_2_50();
      v63(v62);
      v64 = sub_1D5614898();
      OUTLINED_FUNCTION_3_36(v64);
      v66 = *(v65 + 32);
      v67 = OUTLINED_FUNCTION_5_44();
      v68(v67);
      type metadata accessor for GenericMusicItem();
      OUTLINED_FUNCTION_65_2();
      return swift_storeEnumTagMultiPayload();
    }

    if (v32 == *MEMORY[0x1E6976928])
    {
      v69 = OUTLINED_FUNCTION_0_64();
      v70(v69);
      v71 = OUTLINED_FUNCTION_2_50();
      v72(v71);
      v73 = sub_1D5613838();
      OUTLINED_FUNCTION_3_36(v73);
      v75 = *(v74 + 32);
      v76 = OUTLINED_FUNCTION_5_44();
      v77(v76);
      type metadata accessor for GenericMusicItem();
      OUTLINED_FUNCTION_65_2();
      return swift_storeEnumTagMultiPayload();
    }

    if (v32 == *MEMORY[0x1E6976920])
    {
      (*(v27 + 96))(v31, v24);
      v79 = v31;
      v80 = v88;
      (*(v88 + 32))(v23, v79, v14);
      (*(v80 + 16))(v21, v23, v14);
      v81 = (*(v80 + 88))(v21, v14);
      if (v81 == *MEMORY[0x1E6974CF8])
      {
        (*(v80 + 96))(v21, v14);
        (*(v87 + 32))(v13, v21, v7);
        v91[0] = 0;
        v91[1] = 0xE000000000000000;
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD000000000000071, 0x80000001D5682DF0);
        sub_1D5615D48();
        MEMORY[0x1DA6EAC70](0xD000000000000042, 0x80000001D5682E70);
        OUTLINED_FUNCTION_6_3();
        v85 = 39;
LABEL_22:
        v86 = v85;
        goto LABEL_23;
      }

      if (v81 == *MEMORY[0x1E6974CF0])
      {
        (*(v80 + 96))(v21, v14);
        sub_1D4E48324(v21, v91);
        sub_1D4E628D4(v91, v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED90, &qword_1D562EF08);
        v82 = v80;
        v83 = type metadata accessor for GenericMusicItem();
        v84 = v89;
        if (swift_dynamicCast())
        {
          (*(v27 + 8))(a1, v24);
          __swift_destroy_boxed_opaque_existential_1(v91);
          (*(v82 + 8))(v23, v14);
          __swift_storeEnumTagSinglePayload(v84, 0, 1, v83);
          return sub_1D5061C5C(v84, a2);
        }

        __swift_storeEnumTagSinglePayload(v84, 1, 1, v83);
        sub_1D5061BF4(v84);
        v90[0] = 0;
        v90[1] = 0xE000000000000000;
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD00000000000007ELL, 0x80000001D5682D70);
        sub_1D5615D48();
        MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
        OUTLINED_FUNCTION_6_3();
        v85 = 44;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_6_3();
      v86 = 47;
    }

    else
    {
      OUTLINED_FUNCTION_6_3();
      v86 = 50;
    }

LABEL_23:
    result = sub_1D5615E08();
    __break(1u);
    return result;
  }

  v33 = OUTLINED_FUNCTION_0_64();
  v34(v33);
  v35 = OUTLINED_FUNCTION_2_50();
  v36(v35);
  v37 = sub_1D5613AF8();
  OUTLINED_FUNCTION_3_36(v37);
  v39 = *(v38 + 32);
  v40 = OUTLINED_FUNCTION_5_44();
  v41(v40);
  type metadata accessor for GenericMusicItem();
  OUTLINED_FUNCTION_65_2();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D5061BF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5061C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5061CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicSuggestedPivotNode.id.getter()
{
  v2 = type metadata accessor for MusicSuggestedPivotEntry();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = type metadata accessor for MusicSuggestedPivotSeed();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = OUTLINED_FUNCTION_7_45();
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  sub_1D5061ED8(v0, v18 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_65();
    sub_1D50623EC(v19, v8, v20);
    MusicSuggestedPivotContainer.innerItem.getter(v26);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v21 = sub_1D560EC18();
    OUTLINED_FUNCTION_3_54();
    sub_1D50624B4(v8, v22);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    OUTLINED_FUNCTION_2_51();
    sub_1D50623EC(v19, v1, v23);
    v21 = _s16MusicKitInternal0A18SuggestedPivotSeedV2id0aB00A6ItemIDVvg_0();
    OUTLINED_FUNCTION_1_64();
    sub_1D50624B4(v1, v24);
  }

  return v21;
}

uint64_t type metadata accessor for MusicSuggestedPivotNode()
{
  result = qword_1EC7EEDA8;
  if (!qword_1EC7EEDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5061ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedPivotNode();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MusicSuggestedPivotNode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicSuggestedPivotEntry();
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = type metadata accessor for MusicSuggestedPivotSeed();
  v13 = OUTLINED_FUNCTION_22(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = OUTLINED_FUNCTION_7_45();
  v17 = OUTLINED_FUNCTION_14(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = var50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = var50 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADE0, &qword_1D562EF10);
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = var50 - v30;
  v32 = *(v29 + 56);
  sub_1D5061ED8(a1, var50 - v30);
  sub_1D5061ED8(a2, &v31[v32]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5061ED8(v31, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_0_65();
      sub_1D50623EC(&v31[v32], v11, v33);
      static MusicSuggestedPivotContainer.== infix(_:_:)();
      v35 = v34;
      sub_1D50624B4(v11, type metadata accessor for MusicSuggestedPivotEntry);
      v36 = v22;
      v37 = type metadata accessor for MusicSuggestedPivotEntry;
LABEL_9:
      sub_1D50624B4(v36, v37);
      sub_1D50624B4(v31, type metadata accessor for MusicSuggestedPivotNode);
      return v35 & 1;
    }

    OUTLINED_FUNCTION_3_54();
    v39 = v22;
  }

  else
  {
    sub_1D5061ED8(v31, v24);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_2_51();
      sub_1D50623EC(&v31[v32], v2, v40);
      static MusicSuggestedPivotSeed.== infix(_:_:)(v24, v2, v41, v42, v43, v44, v45, v46, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
      v35 = v47;
      sub_1D50624B4(v2, type metadata accessor for MusicSuggestedPivotSeed);
      v36 = v24;
      v37 = type metadata accessor for MusicSuggestedPivotSeed;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_64();
    v39 = v24;
  }

  sub_1D50624B4(v39, v38);
  sub_1D506244C(v31);
  v35 = 0;
  return v35 & 1;
}

uint64_t MusicSuggestedPivotNode.hash(into:)()
{
  v2 = type metadata accessor for MusicSuggestedPivotEntry();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = type metadata accessor for MusicSuggestedPivotSeed();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = OUTLINED_FUNCTION_7_45();
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  sub_1D5061ED8(v0, v18 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_65();
    sub_1D50623EC(v19, v8, v20);
    MEMORY[0x1DA6EC0D0](1);
    MusicSuggestedPivotContainer.hash(into:)();
    OUTLINED_FUNCTION_3_54();
    v22 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_2_51();
    sub_1D50623EC(v19, v1, v23);
    MEMORY[0x1DA6EC0D0](0);
    MusicSuggestedPivotSeed.hash(into:)();
    OUTLINED_FUNCTION_1_64();
    v22 = v1;
  }

  return sub_1D50624B4(v22, v21);
}

uint64_t MusicSuggestedPivotNode.hashValue.getter()
{
  sub_1D56162D8();
  MusicSuggestedPivotNode.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D5062388()
{
  sub_1D56162D8();
  MusicSuggestedPivotNode.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D50623C4@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSuggestedPivotNode.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D50623EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D506244C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADE0, &qword_1D562EF10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D50624B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D5062510()
{
  result = qword_1EC7EEDA0;
  if (!qword_1EC7EEDA0)
  {
    type metadata accessor for MusicSuggestedPivotNode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEDA0);
  }

  return result;
}

uint64_t sub_1D5062568()
{
  result = type metadata accessor for MusicSuggestedPivotSeed();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MusicSuggestedPivotEntry();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D50625DC()
{
  v1 = sub_1D5614898();
  v2 = OUTLINED_FUNCTION_4(v1);
  v33 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  v18 = sub_1D5613AF8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v27 = *(type metadata accessor for MusicPinPropertyProvider() + 20);
  sub_1D506356C(v0 + v27, v17);
  v28 = type metadata accessor for MusicPin.Item();
  if (__swift_getEnumTagSinglePayload(v17, 1, v28) == 1)
  {
    sub_1D50635DC(v17);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v21 + 32))(v26, v17, v18);
      v30 = sub_1D5613028();
      (*(v21 + 8))(v26, v18);
      return v30 & 1;
    }

    sub_1D4F70890(v17);
  }

  sub_1D506356C(v0 + v27, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v28) == 1)
  {
    sub_1D50635DC(v15);
LABEL_10:
    v30 = 0;
    return v30 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1D4F70890(v15);
    goto LABEL_10;
  }

  v29 = v33;
  (*(v33 + 32))(v8, v15, v1);
  v30 = sub_1D5613028();
  (*(v29 + 8))(v8, v1);
  return v30 & 1;
}

uint64_t sub_1D50628C4@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = OUTLINED_FUNCTION_3_55();
  sub_1D506356C(v2 + *(v8 + 20), v1);
  v9 = type metadata accessor for MusicPin.Item();
  v10 = OUTLINED_FUNCTION_6_44(v9);
  v11 = sub_1D560D238();
  OUTLINED_FUNCTION_14(v11);
  v13 = *(v12 + 104);
  if (v10 == 1)
  {
    return v13(a1, *MEMORY[0x1E6974E18], v11);
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v15 = MEMORY[0x1E6974E20];
  }

  else
  {
    v15 = MEMORY[0x1E6974E18];
  }

  v13(a1, *v15, v11);
  return sub_1D4F70890(v1);
}

uint64_t sub_1D5062A10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D5613838();
  v4 = OUTLINED_FUNCTION_4(v3);
  v55 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1D5614898();
  v12 = OUTLINED_FUNCTION_4(v11);
  v54 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = sub_1D560EEA8();
  v20 = OUTLINED_FUNCTION_4(v19);
  v53 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v27 = sub_1D5613AF8();
  v28 = OUTLINED_FUNCTION_4(v27);
  v52 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  v36 = OUTLINED_FUNCTION_22(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = OUTLINED_FUNCTION_3_55();
  sub_1D506356C(v2 + *(v39 + 20), v1);
  v40 = type metadata accessor for MusicPin.Item();
  if (__swift_getEnumTagSinglePayload(v1, 1, v40) == 1)
  {
    v41 = *MEMORY[0x1E6974E48];
    v42 = sub_1D560D258();
    OUTLINED_FUNCTION_14(v42);
    return (*(v43 + 104))(a1, v41);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v49 = *MEMORY[0x1E6974E48];
        v50 = sub_1D560D258();
        OUTLINED_FUNCTION_14(v50);
        (*(v51 + 104))(a1, v49);
        result = sub_1D4F70890(v1);
        break;
      case 2u:
        OUTLINED_FUNCTION_33_1();
        v47(v26, v1, v19);
        sub_1D5612FD8();
        result = (*(v53 + 8))(v26, v19);
        break;
      case 3u:
        OUTLINED_FUNCTION_33_1();
        v48(v18, v1, v11);
        sub_1D5612FD8();
        result = (*(v54 + 8))(v18, v11);
        break;
      case 4u:
        OUTLINED_FUNCTION_33_1();
        v46(v10, v1, v3);
        sub_1D5612FD8();
        result = (*(v55 + 8))(v10, v3);
        break;
      default:
        OUTLINED_FUNCTION_33_1();
        v45(v34, v1, v27);
        sub_1D5612FD8();
        result = (*(v52 + 8))(v34, v27);
        break;
    }
  }

  return result;
}

uint64_t sub_1D5062E78(uint64_t (*a1)(uint64_t, void, void), uint64_t (*a2)(uint64_t, void, void))
{
  v4 = v3;
  v5 = sub_1D5613838();
  v6 = OUTLINED_FUNCTION_4(v5);
  v51 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1D5614898();
  v14 = OUTLINED_FUNCTION_4(v13);
  v50 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = sub_1D560EEA8();
  v22 = OUTLINED_FUNCTION_4(v21);
  v49 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = sub_1D5613AF8();
  v30 = OUTLINED_FUNCTION_4(v29);
  v48 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  v38 = OUTLINED_FUNCTION_22(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = OUTLINED_FUNCTION_3_55();
  sub_1D506356C(v4 + *(v41 + 20), v2);
  v42 = type metadata accessor for MusicPin.Item();
  if (OUTLINED_FUNCTION_6_44(v42) == 1)
  {
LABEL_2:
    v43 = 0;
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1D4F70890(v2);
        goto LABEL_2;
      case 2u:
        OUTLINED_FUNCTION_33_1();
        v45(v28, v2, v21);
        v43 = a1(v21, MEMORY[0x1E69754D0], MEMORY[0x1E69754C8]);
        (*(v49 + 8))(v28, v21);
        break;
      case 3u:
        OUTLINED_FUNCTION_33_1();
        v46(v20, v2, v13);
        v43 = a2(v13, MEMORY[0x1E69773C8], MEMORY[0x1E69773C0]);
        (*(v50 + 8))(v20, v13);
        break;
      case 4u:
        (*(v51 + 32))(v12, v2, v5);
        v43 = a1(v5, MEMORY[0x1E6976BD0], MEMORY[0x1E6976BC8]);
        (*(v51 + 8))(v12, v5);
        break;
      default:
        OUTLINED_FUNCTION_33_1();
        v44(v36, v2, v29);
        v43 = a1(v29, MEMORY[0x1E6976D10], MEMORY[0x1E6976D08]);
        (*(v48 + 8))(v36, v29);
        break;
    }
  }

  return v43 & 1;
}

uint64_t sub_1D506356C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50635DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5063644(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEE98, &qword_1D562F5B8);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_4();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50678FC();
  sub_1D56163D8();
  return (*(v5 + 8))(v1, v3);
}

uint64_t sub_1D5063744(uint64_t a1)
{
  v2 = sub_1D50678FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5063780(uint64_t a1)
{
  v2 = sub_1D50678FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50637D4()
{
  OUTLINED_FUNCTION_69_0();
  sub_1D5063FFC();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = type metadata accessor for CloudSuggestedPivotsRawRequest.Body(0);
  v4 = *(v3 + 20);
  v5 = (v1 + v4);
  v6 = *(v1 + v4 + 8);
  v7 = (v0 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(v3 + 24);
  v11 = *(v0 + v10);
  if (*(v1 + v10))
  {
    if (v11)
    {

      sub_1D4EF7190();
      v13 = v12;

      if (v13)
      {
        return 1;
      }
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D506389C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684366707 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x526465726566666FLL && a2 == 0xED000073646E756FLL)
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

uint64_t sub_1D50639BC(char a1)
{
  if (!a1)
  {
    return 1684366707;
  }

  if (a1 == 1)
  {
    return 0x496E6F6973736573;
  }

  return 0x526465726566666FLL;
}

uint64_t sub_1D5063A1C()
{
  OUTLINED_FUNCTION_17_31();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEE70, &qword_1D562F5B0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_1();
  sub_1D50678A8();
  OUTLINED_FUNCTION_15_35();
  type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  OUTLINED_FUNCTION_2_52();
  sub_1D50676B8(v6, v7);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_7_6();
  sub_1D56160C8();
  if (!v0)
  {
    v8 = type metadata accessor for CloudSuggestedPivotsRawRequest.Body(0);
    v9 = (v1 + *(v8 + 20));
    v10 = *v9;
    v11 = v9[1];
    OUTLINED_FUNCTION_10_43();
    sub_1D5616028();
    v15 = *(v1 + *(v8 + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEE00, &unk_1D562F0C0);
    sub_1D5067AF4(&qword_1EC7EEE88, &qword_1EC7EEE90);
    OUTLINED_FUNCTION_7_6();
    sub_1D5616068();
  }

  v12 = OUTLINED_FUNCTION_20_40();
  return v13(v12);
}

void sub_1D5063BF4()
{
  sub_1D50646E0();
  v1 = type metadata accessor for CloudSuggestedPivotsRawRequest.Body(0);
  v2 = (v0 + *(v1 + 20));
  if (v2[1])
  {
    v3 = *v2;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + *(v1 + 24)))
  {
    OUTLINED_FUNCTION_27();

    sub_1D4F07228();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }
}

void sub_1D5063CA8()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEEF8, &qword_1D562F5E8);
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v12 = type metadata accessor for CloudSuggestedPivotsRawRequest.Body(0);
  v13 = OUTLINED_FUNCTION_14(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D50678A8();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_2_52();
    sub_1D50676B8(v17, v18);
    OUTLINED_FUNCTION_189();
    sub_1D5615FD8();
    OUTLINED_FUNCTION_5_45();
    sub_1D5067094();
    v19 = sub_1D5615F38();
    v20 = (v1 + *(v12 + 20));
    *v20 = v19;
    v20[1] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEE00, &unk_1D562F0C0);
    sub_1D5067AF4(&qword_1EC7EEF08, &qword_1EC7EEF10);
    sub_1D5615F78();
    v22 = *(v12 + 24);
    v23 = OUTLINED_FUNCTION_18_33();
    v24(v23);
    *(v1 + v22) = v25;
    sub_1D506710C();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1D5067164(v1, type metadata accessor for CloudSuggestedPivotsRawRequest.Body);
  }

  OUTLINED_FUNCTION_26();
}

void sub_1D5063FFC()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v6 = sub_1D5610088();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB208, &qword_1D562F5E0);
  OUTLINED_FUNCTION_14(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v22 = *v5 == *v3 && v5[1] == v3[1];
  if (v22 || (sub_1D5616168() & 1) != 0)
  {
    v23 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
    v24 = v23[5];
    if (sub_1D4F3B22C())
    {
      v25 = v23[6];
      v26 = (v5 + v25);
      v27 = *(v5 + v25 + 8);
      v28 = (v3 + v25);
      v29 = v28[1];
      if (v27)
      {
        if (!v29)
        {
          goto LABEL_25;
        }

        v30 = *v26 == *v28 && v27 == v29;
        if (!v30 && (sub_1D5616168() & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (v29)
      {
        goto LABEL_25;
      }

      v40 = v9;
      v31 = v23[7];
      v32 = *(v16 + 48);
      OUTLINED_FUNCTION_45_16();
      OUTLINED_FUNCTION_45_16();
      OUTLINED_FUNCTION_57(v21, 1, v6);
      if (v22)
      {
        OUTLINED_FUNCTION_57(&v21[v32], 1, v6);
        if (v22)
        {
          sub_1D4E50004(v21, &qword_1EC7EA358, &unk_1D561DF50);
          goto LABEL_25;
        }
      }

      else
      {
        sub_1D4FB8150();
        OUTLINED_FUNCTION_57(&v21[v32], 1, v6);
        if (!v33)
        {
          v34 = v40;
          (*(v40 + 32))(v0, &v21[v32], v6);
          OUTLINED_FUNCTION_0_66();
          sub_1D50676B8(v35, v36);
          sub_1D5614D18();
          v37 = *(v34 + 8);
          v38 = OUTLINED_FUNCTION_71();
          v37(v38);
          (v37)(v1, v6);
          sub_1D4E50004(v21, &qword_1EC7EA358, &unk_1D561DF50);
          goto LABEL_25;
        }

        (*(v40 + 8))(v1, v6);
      }

      sub_1D4E50004(v21, &qword_1EC7EB208, &qword_1D562F5E0);
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D506432C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000444972;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656E6961746E6F63 && a2 == 0xED00006570795472)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1D5064488(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
    case 3:
      result = 0x656E6961746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1D50644FC()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_17_31();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEEF0, &qword_1D562F5D8);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_1();
  sub_1D5067AA0();
  OUTLINED_FUNCTION_15_35();
  v13 = *v1;
  v15 = v1[1];
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_10_43();
  sub_1D56160C8();
  if (!v0)
  {
    v12 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
    v6 = v12[5];
    sub_1D5610088();
    OUTLINED_FUNCTION_0_66();
    sub_1D50676B8(v7, v8);
    OUTLINED_FUNCTION_10_43();
    sub_1D56160C8();
    v14 = *(v1 + v12[6]);
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
    v9 = v12[7];
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
  }

  v10 = OUTLINED_FUNCTION_20_40();
  v11(v10);
  OUTLINED_FUNCTION_26();
}

void sub_1D50646E0()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = sub_1D5610088();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = *v0;
  v18 = v0[1];
  sub_1D5614E28();
  v19 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  v20 = v19[5];
  OUTLINED_FUNCTION_0_66();
  sub_1D50676B8(v21, v22);
  sub_1D5614CB8();
  v23 = (v1 + v19[6]);
  if (v23[1])
  {
    v30 = v2;
    v24 = v10;
    v25 = v5;
    v26 = *v23;
    OUTLINED_FUNCTION_27();
    v5 = v25;
    v10 = v24;
    v2 = v30;
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v27 = v19[7];
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v16, 1, v2);
  if (v28)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v5 + 32))(v10, v16, v2);
    OUTLINED_FUNCTION_27();
    sub_1D5614CB8();
    (*(v5 + 8))(v10, v2);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D50648F8()
{
  OUTLINED_FUNCTION_25_1();
  v49 = v1;
  v3 = v2;
  v43 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v44 = v41 - v9;
  v10 = sub_1D5610088();
  v11 = OUTLINED_FUNCTION_4(v10);
  v45 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEEE0, &qword_1D562F5D0);
  v16 = OUTLINED_FUNCTION_4(v15);
  v46 = v17;
  v47 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v41 - v21;
  v23 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  v24 = OUTLINED_FUNCTION_14(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v29 = (v28 - v27);
  v30 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D5067AA0();
  v48 = v22;
  v31 = v49;
  sub_1D5616398();
  if (v31)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v32 = v29;
    v33 = sub_1D4F89C9C();
    OUTLINED_FUNCTION_42_4();
    sub_1D5615FD8();
    v42 = v33;
    v34 = *(&v50 + 1);
    *v32 = v50;
    *(v32 + 1) = v34;
    v49 = v34;
    LOBYTE(v50) = 1;
    OUTLINED_FUNCTION_0_66();
    v37 = sub_1D50676B8(v35, v36);
    sub_1D5615FD8();
    v41[1] = v37;
    (*(v45 + 32))(&v32[v23[5]], v0, v10);
    OUTLINED_FUNCTION_42_4();
    v42 = 0;
    sub_1D5615F78();
    v38 = v3;
    *&v32[v23[6]] = v50;
    LOBYTE(v50) = 3;
    v39 = v44;
    sub_1D5615F78();
    (*(v46 + 8))(v48, v47);
    sub_1D4F7AFE0(v39, &v32[v23[7]]);
    sub_1D506710C();
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_6_45();
    sub_1D5067164(v32, v40);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5064D48()
{
  v0 = sub_1D5615EF8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5064D94(char a1)
{
  if (!a1)
  {
    return 0x6573736572706D69;
  }

  if (a1 == 1)
  {
    return 0x6577656976657270;
  }

  return 0x64657463656C6573;
}

BOOL sub_1D5064DEC()
{
  OUTLINED_FUNCTION_69_0();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CloudSuggestedPivotsRawRequest.Entry(0);
  v5 = *(v4 + 20);
  if ((sub_1D4F3B22C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(v1 + v6);
  v8 = *(v0 + v6);
  if (v7 != 3)
  {
    return v8 != 3 && (sub_1D4F3B2E8(v7, v8) & 1) != 0;
  }

  return v8 == 3;
}

uint64_t sub_1D5064E94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69)
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

uint64_t sub_1D5064FA0(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x7463617265746E69;
}

uint64_t sub_1D5064FEC()
{
  OUTLINED_FUNCTION_17_31();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEEC0, &qword_1D562F5C8);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_1();
  sub_1D5067950();
  OUTLINED_FUNCTION_15_35();
  v13 = *v1;
  v15 = v1[1];
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_10_43();
  sub_1D56160C8();
  if (!v0)
  {
    v6 = type metadata accessor for CloudSuggestedPivotsRawRequest.Entry(0);
    v7 = *(v6 + 20);
    sub_1D5610088();
    OUTLINED_FUNCTION_0_66();
    sub_1D50676B8(v8, v9);
    OUTLINED_FUNCTION_7_6();
    sub_1D56160C8();
    v14 = *(v1 + *(v6 + 24));
    sub_1D50679F8();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
  }

  v10 = OUTLINED_FUNCTION_20_40();
  return v11(v10);
}

uint64_t sub_1D5065198()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_1D5614E28();
  v4 = type metadata accessor for CloudSuggestedPivotsRawRequest.Entry(0);
  v5 = *(v4 + 20);
  sub_1D5610088();
  OUTLINED_FUNCTION_0_66();
  sub_1D50676B8(v6, v7);
  sub_1D5614CB8();
  if (*(v1 + *(v4 + 24)) == 3)
  {
    return OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_27();
  sub_1D5614E28();
}

uint64_t sub_1D50652C4(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_164();
  a1(v3);
  return sub_1D5616328();
}

void sub_1D5065304()
{
  OUTLINED_FUNCTION_25_1();
  v4 = v3;
  v5 = sub_1D5610088();
  v6 = OUTLINED_FUNCTION_4(v5);
  v23 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEEA8, &qword_1D562F5C0);
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v14 = type metadata accessor for CloudSuggestedPivotsRawRequest.Entry(0);
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v18 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D5067950();
  sub_1D5616398();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_1D4F89C9C();
    OUTLINED_FUNCTION_42_4();
    sub_1D5615FD8();
    *v2 = v24;
    *(v2 + 1) = v25;
    OUTLINED_FUNCTION_0_66();
    sub_1D50676B8(v19, v20);
    sub_1D5615FD8();
    (*(v23 + 32))(&v2[*(v14 + 20)], v0, v5);
    sub_1D50679A4();
    OUTLINED_FUNCTION_42_4();
    sub_1D5615F78();
    v21 = OUTLINED_FUNCTION_21_28();
    v22(v21);
    v2[*(v14 + 24)] = 1;
    sub_1D506710C();
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_1D5067164(v2, type metadata accessor for CloudSuggestedPivotsRawRequest.Entry);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D50656A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D506389C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50656D0(uint64_t a1)
{
  v2 = sub_1D50678A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D506570C(uint64_t a1)
{
  v2 = sub_1D50678A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50657CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D506432C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50657F4(uint64_t a1)
{
  v2 = sub_1D5067AA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5065830(uint64_t a1)
{
  v2 = sub_1D5067AA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50658E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D5064D48();
  *a2 = result;
  return result;
}

uint64_t sub_1D5065918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5064D94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D5065A28(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D5065A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5064E94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5065AA4(uint64_t a1)
{
  v2 = sub_1D5067950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5065AE0(uint64_t a1)
{
  v2 = sub_1D5067950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5065B98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

void sub_1D5065BDC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_69_0();
  v4 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB318, &unk_1D561E020);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_4();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB320, &qword_1D562F5F0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31();
  v20 = *(v19 + 56);
  OUTLINED_FUNCTION_45_16();
  OUTLINED_FUNCTION_45_16();
  OUTLINED_FUNCTION_57(v2, 1, v4);
  if (!v21)
  {
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(v2 + v20, 1, v4);
    if (!v21)
    {
      OUTLINED_FUNCTION_5_45();
      sub_1D5067094();
      sub_1D5063FFC();
      v24 = v23;
      sub_1D5067164(v10, type metadata accessor for CloudSuggestedPivotsRawRequest.Node);
      sub_1D5067164(v3, type metadata accessor for CloudSuggestedPivotsRawRequest.Node);
      sub_1D4E50004(v2, &qword_1EC7EB318, &unk_1D561E020);
      if ((v24 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_6_45();
    sub_1D5067164(v3, v22);
LABEL_9:
    sub_1D4E50004(v2, &qword_1EC7EB320, &qword_1D562F5F0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_57(v2 + v20, 1, v4);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v2, &qword_1EC7EB318, &unk_1D561E020);
LABEL_12:
  OUTLINED_FUNCTION_46_14();
  v26 = *(v0 + v25);
  if (*(v1 + v25) && v26)
  {

    sub_1D4EF7994();
  }

LABEL_10:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5065E38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080942 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465726566666FLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D5065F00(char a1)
{
  if (a1)
  {
    return 0x6465726566666FLL;
  }

  else
  {
    return 1701080942;
  }
}

uint64_t sub_1D5065F30()
{
  OUTLINED_FUNCTION_17_31();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEF38, &qword_1D562F600);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_1();
  sub_1D5067B80();
  OUTLINED_FUNCTION_15_35();
  type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  OUTLINED_FUNCTION_2_52();
  sub_1D50676B8(v6, v7);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_7_6();
  sub_1D5616068();
  if (!v0)
  {
    v11 = *(v1 + *(type metadata accessor for CloudSuggestedPivotsRawRequest.PivotRound(0) + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEE28, qword_1D562F0E0);
    sub_1D5067C44(&qword_1EC7EEF40, &qword_1EC7EEF48);
    OUTLINED_FUNCTION_7_6();
    sub_1D5616068();
  }

  v8 = OUTLINED_FUNCTION_20_40();
  return v9(v8);
}

void sub_1D50660D8()
{
  sub_1D4F853A4();
  OUTLINED_FUNCTION_46_14();
  if (*(v0 + v1))
  {
    OUTLINED_FUNCTION_27();

    sub_1D4F062F4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }
}

uint64_t sub_1D5066140()
{
  OUTLINED_FUNCTION_164();
  sub_1D4F853A4();
  OUTLINED_FUNCTION_46_14();
  if (*(v0 + v1))
  {
    sub_1D56162F8();
    sub_1D4F062F4();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

void sub_1D50661AC()
{
  OUTLINED_FUNCTION_25_1();
  v4 = v3;
  v26[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB318, &unk_1D561E020);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v28 = v26 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEF18, &qword_1D562F5F8);
  OUTLINED_FUNCTION_4(v29);
  v27 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_108();
  v15 = type metadata accessor for CloudSuggestedPivotsRawRequest.PivotRound(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  v18 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v18);
  v19 = *(v16 + 28);
  *(v1 + v19) = 0;
  v20 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D5067B80();
  sub_1D5616398();
  if (!v0)
  {
    v26[0] = v19;
    v21 = v27;
    OUTLINED_FUNCTION_2_52();
    sub_1D50676B8(v22, v23);
    OUTLINED_FUNCTION_189();
    v25 = v28;
    v24 = v29;
    sub_1D5615F78();
    sub_1D5067BD4(v25, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEE28, qword_1D562F0E0);
    sub_1D5067C44(&qword_1EC7EEF28, &qword_1EC7EEF30);
    sub_1D5615F78();
    (*(v21 + 8))(v2, v24);
    *(v1 + v26[0]) = v30;
    sub_1D506710C();
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_1D5067164(v1, type metadata accessor for CloudSuggestedPivotsRawRequest.PivotRound);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D50664C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5065E38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50664EC(uint64_t a1)
{
  v2 = sub_1D5067B80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5066528(uint64_t a1)
{
  v2 = sub_1D5067B80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50665A0(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D4F853A4();
  if (*(v2 + *(a2 + 20)))
  {
    sub_1D56162F8();
    sub_1D4F062F4();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

void sub_1D5066614()
{
  OUTLINED_FUNCTION_47();
  v83 = v0;
  v87 = v2;
  v3 = type metadata accessor for MusicSuggestedPivotEntry();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v79 = (v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  v81 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  v82 = sub_1D5612478();
  v18 = OUTLINED_FUNCTION_4(v82);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v76 - v27;
  v29 = type metadata accessor for MusicSuggestedPivotSeed();
  v30 = OUTLINED_FUNCTION_14(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  v33 = type metadata accessor for MusicSuggestedPivotNode();
  v34 = OUTLINED_FUNCTION_14(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v38 = OUTLINED_FUNCTION_22(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_59_0();
  v80 = v41 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v76 - v44;
  v46 = sub_1D5610088();
  v47 = OUTLINED_FUNCTION_4(v46);
  v85 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v84 = v45;
  v86 = v51;
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v51);
  sub_1D506710C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_11_42();
    sub_1D51FCAB8();
    v52 = sub_1D5612448();
    v54 = v53;
    sub_1D5612468();
    (*(v20 + 8))(v25, v82);
    sub_1D5067164(v28, type metadata accessor for MusicSuggestedPivotEntry);
    v55 = 0;
    v56 = 0;
    v57 = v86;
    v58 = v84;
  }

  else
  {
    v83 = v20;
    v59 = v82;
    sub_1D5067094();
    sub_1D54DD85C(v28);
    v60 = sub_1D5612448();
    v77 = v61;
    v78 = v60;
    v79 = v28;
    sub_1D5612468();
    v62 = *(v29 + 20);
    sub_1D4FB8150();
    v63 = type metadata accessor for MusicSuggestedPivotContainer();
    OUTLINED_FUNCTION_57(v17, 1, v63);
    if (v64)
    {
      sub_1D4E50004(v17, &qword_1EC7EADD0, &qword_1D56331E0);
      v55 = 0;
      v56 = 0;
      v67 = v59;
    }

    else
    {
      sub_1D51FCAB8();
      OUTLINED_FUNCTION_12_35();
      sub_1D5067164(v17, v65);
      v55 = sub_1D5612448();
      v56 = v66;
      v67 = v59;
      (*(v83 + 8))(v25, v59);
    }

    v68 = v81;
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(v68, 1, v63);
    if (v64)
    {
      (*(v83 + 8))(v79, v67);
      OUTLINED_FUNCTION_16_32();
      v58 = v84;
      sub_1D4E50004(v84, &qword_1EC7EA358, &unk_1D561DF50);
      sub_1D4E50004(v68, &qword_1EC7EADD0, &qword_1D56331E0);
      v72 = 1;
      v70 = v80;
    }

    else
    {
      sub_1D51FCAB8();
      OUTLINED_FUNCTION_12_35();
      sub_1D5067164(v68, v69);
      v70 = v80;
      sub_1D5612468();
      v71 = *(v83 + 8);
      v71(v25, v67);
      v71(v79, v67);
      OUTLINED_FUNCTION_16_32();
      v58 = v84;
      sub_1D4E50004(v84, &qword_1EC7EA358, &unk_1D561DF50);
      v72 = 0;
    }

    v52 = v78;
    v57 = v86;
    __swift_storeEnumTagSinglePayload(v70, v72, 1, v86);
    sub_1D4F7AFE0(v70, v58);
    v54 = v77;
  }

  v73 = v87;
  *v87 = v52;
  v73[1] = v54;
  v74 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  (*(v85 + 32))(v73 + v74[5], v1, v57);
  v75 = (v73 + v74[6]);
  *v75 = v55;
  v75[1] = v56;
  sub_1D4F7AFE0(v58, v73 + v74[7]);
  OUTLINED_FUNCTION_46();
}

void sub_1D5066BF8()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v62 = sub_1D5612478();
  v5 = OUTLINED_FUNCTION_4(v62);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v61 = v11 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD30, &unk_1D562F070);
  v12 = OUTLINED_FUNCTION_14(v60);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  v59 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v50 - v18;
  v19 = type metadata accessor for CloudSuggestedPivotsRawRequest.Entry(0);
  v20 = OUTLINED_FUNCTION_4(v19);
  v56 = v21;
  v57 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v24 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  sub_1D5066614();
  v28 = *(v1 + *(type metadata accessor for MusicSuggestedPivotRound() + 20));
  v29 = *(v28 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v50 = v2;
    v51 = v24;
    v52 = v4;
    v67 = MEMORY[0x1E69E7CC0];
    sub_1D4F04114();
    v30 = v67;
    v32 = sub_1D50671BC(v28);
    v33 = v28 + 64;
    v54 = v28;
    v55 = (v7 + 8);
    v34 = v29 - 1;
    v53 = v28 + 64;
    v35 = v61;
    if ((v32 & 0x8000000000000000) == 0)
    {
      while (v32 < 1 << *(v28 + 32))
      {
        if ((*(v33 + 8 * (v32 >> 6)) & (1 << v32)) == 0)
        {
          goto LABEL_17;
        }

        if (v31 != *(v28 + 36))
        {
          goto LABEL_18;
        }

        v64 = v31;
        v65 = v32 >> 6;
        v63 = v34;
        v66 = v30;
        v36 = *(v28 + 48);
        v37 = type metadata accessor for MusicSuggestedPivotEntry();
        OUTLINED_FUNCTION_22(v37);
        v39 = *(v38 + 72);
        sub_1D506710C();
        v40 = *(*(v28 + 56) + v32);
        OUTLINED_FUNCTION_11_42();
        *(v33 + *(v60 + 48)) = v40;
        sub_1D51FCAB8();
        v41 = sub_1D5612448();
        v43 = v42;
        v44 = v57;
        v45 = v0 + *(v57 + 20);
        sub_1D5612468();
        v30 = v66;
        (*v55)(v35, v62);
        *v0 = v41;
        v0[1] = v43;
        *(v0 + *(v44 + 24)) = 0x2010003u >> (8 * v40);
        sub_1D4E50004(v33, &qword_1EC7EBD30, &unk_1D562F070);
        v67 = v30;
        v46 = *(v30 + 16);
        if (v46 >= *(v30 + 24) >> 1)
        {
          sub_1D4F04114();
          v30 = v67;
        }

        *(v30 + 16) = v46 + 1;
        v47 = v30 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v46;
        sub_1D5067094();
        v28 = v54;
        if (v32 >= -(-1 << *(v54 + 32)))
        {
          goto LABEL_19;
        }

        v33 = v53;
        if ((*(v53 + 8 * v65) & (1 << v32)) == 0)
        {
          goto LABEL_20;
        }

        if (v64 != *(v54 + 36))
        {
          goto LABEL_21;
        }

        v48 = sub_1D5615A18();
        if (!v63)
        {
          v24 = v51;
          v4 = v52;
          goto LABEL_15;
        }

        v32 = v48;
        v31 = *(v28 + 36);
        v34 = v63 - 1;
        if (v48 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_15:
    OUTLINED_FUNCTION_5_45();
    sub_1D5067094();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v24);
    OUTLINED_FUNCTION_46_14();
    *(v4 + v49) = v30;
    OUTLINED_FUNCTION_46();
  }
}

uint64_t sub_1D5067094()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D506710C()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D5067164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D50671BC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1D56159F8();
  v4 = *(a1 + 36);
  return result;
}

void sub_1D5067234()
{
  sub_1D5610088();
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EC7EEDD0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5067310()
{
  sub_1D5610088();
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD53A08);
    if (v1 <= 0x3F)
    {
      sub_1D50675D4(319, &qword_1EDD53330, MEMORY[0x1E6975BC8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5067430()
{
  type metadata accessor for CloudSuggestedPivotsRawRequest.Node(319);
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F070);
    if (v1 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EC7EEDF8, &qword_1EC7EEE00, &unk_1D562F0C0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D506751C()
{
  sub_1D50675D4(319, &qword_1EC7EEE18, type metadata accessor for CloudSuggestedPivotsRawRequest.Node);
  if (v0 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EC7EEE20, &qword_1EC7EEE28, qword_1D562F0E0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D50675D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D50676B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D506774C()
{
  result = qword_1EC7EEE48;
  if (!qword_1EC7EEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEE48);
  }

  return result;
}

unint64_t sub_1D50677A4()
{
  result = qword_1EC7EEE50;
  if (!qword_1EC7EEE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EEE58, qword_1D562F3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEE50);
  }

  return result;
}

unint64_t sub_1D5067854()
{
  result = qword_1EC7EEE68;
  if (!qword_1EC7EEE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEE68);
  }

  return result;
}

unint64_t sub_1D50678A8()
{
  result = qword_1EC7EEE78;
  if (!qword_1EC7EEE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEE78);
  }

  return result;
}

unint64_t sub_1D50678FC()
{
  result = qword_1EC7EEEA0;
  if (!qword_1EC7EEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEEA0);
  }

  return result;
}

unint64_t sub_1D5067950()
{
  result = qword_1EC7EEEB0;
  if (!qword_1EC7EEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEEB0);
  }

  return result;
}

unint64_t sub_1D50679A4()
{
  result = qword_1EC7EEEB8;
  if (!qword_1EC7EEEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEEB8);
  }

  return result;
}

unint64_t sub_1D50679F8()
{
  result = qword_1EC7EEED0;
  if (!qword_1EC7EEED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEED0);
  }

  return result;
}

unint64_t sub_1D5067A4C()
{
  result = qword_1EC7EEED8;
  if (!qword_1EC7EEED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEED8);
  }

  return result;
}

unint64_t sub_1D5067AA0()
{
  result = qword_1EC7EEEE8;
  if (!qword_1EC7EEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEEE8);
  }

  return result;
}

uint64_t sub_1D5067AF4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EEE00, &unk_1D562F0C0);
    sub_1D50676B8(a2, type metadata accessor for CloudSuggestedPivotsRawRequest.PivotRound);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5067B80()
{
  result = qword_1EC7EEF20;
  if (!qword_1EC7EEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF20);
  }

  return result;
}

uint64_t sub_1D5067BD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB318, &unk_1D561E020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5067C44(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EEE28, qword_1D562F0E0);
    sub_1D50676B8(a2, type metadata accessor for CloudSuggestedPivotsRawRequest.Entry);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudSuggestedPivotsRawRequest.PivotRound.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudSuggestedPivotsRawRequest.Node.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D5067EA8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5067F88()
{
  result = qword_1EC7EEF50;
  if (!qword_1EC7EEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF50);
  }

  return result;
}

unint64_t sub_1D5067FE0()
{
  result = qword_1EC7EEF58;
  if (!qword_1EC7EEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF58);
  }

  return result;
}

unint64_t sub_1D5068038()
{
  result = qword_1EC7EEF60;
  if (!qword_1EC7EEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF60);
  }

  return result;
}

unint64_t sub_1D5068090()
{
  result = qword_1EC7EEF68;
  if (!qword_1EC7EEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF68);
  }

  return result;
}

unint64_t sub_1D50680E8()
{
  result = qword_1EC7EEF70;
  if (!qword_1EC7EEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF70);
  }

  return result;
}

unint64_t sub_1D5068140()
{
  result = qword_1EC7EEF78;
  if (!qword_1EC7EEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF78);
  }

  return result;
}

unint64_t sub_1D5068198()
{
  result = qword_1EC7EEF80;
  if (!qword_1EC7EEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF80);
  }

  return result;
}

unint64_t sub_1D50681F0()
{
  result = qword_1EC7EEF88;
  if (!qword_1EC7EEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF88);
  }

  return result;
}

unint64_t sub_1D5068248()
{
  result = qword_1EC7EEF90;
  if (!qword_1EC7EEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF90);
  }

  return result;
}

unint64_t sub_1D50682A0()
{
  result = qword_1EC7EEF98;
  if (!qword_1EC7EEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF98);
  }

  return result;
}

unint64_t sub_1D50682F8()
{
  result = qword_1EC7EEFA0;
  if (!qword_1EC7EEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEFA0);
  }

  return result;
}

unint64_t sub_1D5068350()
{
  result = qword_1EC7EEFA8;
  if (!qword_1EC7EEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEFA8);
  }

  return result;
}

unint64_t sub_1D50683A8()
{
  result = qword_1EC7EEFB0;
  if (!qword_1EC7EEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEFB0);
  }

  return result;
}

unint64_t sub_1D5068400()
{
  result = qword_1EC7EEFB8;
  if (!qword_1EC7EEFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEFB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_14()
{
  result = type metadata accessor for CloudSuggestedPivotsRawRequest.PivotRound(0);
  v1 = *(result + 20);
  return result;
}

uint64_t static Playlist.extendedStorage(for:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v204 = a1;
  v205 = a4;
  v207 = a3;
  v203 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v202 = &v193 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v193 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v212 = &v193 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v211 = &v193 - v26;
  v201 = _s15InternalStorageVMa_0();
  v27 = OUTLINED_FUNCTION_14(v201);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v33 = sub_1D560E728();
  v34 = OUTLINED_FUNCTION_22(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v198 = v38 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v40 = OUTLINED_FUNCTION_22(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v45);
  v195 = &v193 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  v48 = OUTLINED_FUNCTION_22(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_59_0();
  v210 = v51 - v52;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v55);
  v215 = &v193 - v56;
  v194 = sub_1D560D838();
  v57 = OUTLINED_FUNCTION_4(v194);
  v193 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5();
  v63 = v62 - v61;
  v64 = type metadata accessor for Playlist.Collaboration();
  v65 = OUTLINED_FUNCTION_4(v64);
  v206 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5();
  v71 = (v70 - v69);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  v73 = OUTLINED_FUNCTION_4(v72);
  v213 = v74;
  v214 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_59_0();
  v79 = v77 - v78;
  MEMORY[0x1EEE9AC00](v80);
  v209 = &v193 - v81;
  sub_1D560F7E8();
  v199 = sub_1D506930C();
  v82 = sub_1D5614C68();

  sub_1D4ED0864(1, v82);
  v208 = v16;
  if (!v218)
  {
    sub_1D4E50004(v217, &qword_1EC7E9F98, &qword_1D561C420);
    goto LABEL_7;
  }

  if ((OUTLINED_FUNCTION_16_33() & 1) == 0)
  {
LABEL_7:
    v84 = 0;
    goto LABEL_8;
  }

  v83 = [objc_opt_self() collaboratorStatusForRawValue_];
  if (v83 >= 5)
  {
    v84 = 1;
  }

  else
  {
    v84 = 0x1Eu >> v83;
  }

LABEL_8:
  sub_1D4ED0864(2, v82);
  if (!v218)
  {
    sub_1D4E50004(v217, &qword_1EC7E9F98, &qword_1D561C420);
    goto LABEL_13;
  }

  if (!OUTLINED_FUNCTION_16_33())
  {
LABEL_13:
    v85 = v209;
    goto LABEL_14;
  }

  v85 = v209;
  if (v216)
  {
    v84 = 1;
  }

LABEL_14:
  sub_1D5069958(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration);
  sub_1D560D9F8();
  if (v84)
  {
    (*(v193 + 16))(v63, v204, v194);
    sub_1D4F1C460(v207, v217, &qword_1EC7EEC40, &unk_1D561C070);
    swift_unknownObjectRetain();

    Playlist.Collaboration.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v63, a2, v217, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC0, &qword_1D562FAD8);
    v86 = *(v206 + 72);
    v87 = (*(v206 + 80) + 32) & ~*(v206 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1D561C050;
    sub_1D50693D0(v71, v63 + v87);
    sub_1D560D9F8();
    OUTLINED_FUNCTION_3_56();
    sub_1D5069900(v71, v88);
    v90 = v213;
    v89 = v214;
    (*(v213 + 8))(v85, v214);
    (*(v90 + 32))(v85, v79, v89);
  }

  type metadata accessor for CuratorRelationshipProvider();
  v91 = v215;
  OUTLINED_FUNCTION_33();
  v206 = v92;
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v92);
  v217[0] = 5;
  OUTLINED_FUNCTION_11_43();
  v96 = sub_1D560F7C8();

  v97 = v202;
  v98 = v208;
  v99 = v200;
  if (v96)
  {
    v100 = OUTLINED_FUNCTION_11_43();
    sub_1D4F1C460(v100, v101, v102, v103);
    if (v218)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      v104 = OUTLINED_FUNCTION_17_32();
      v105 = v195;
      v106 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v105, v106 ^ 1u, 1, v104);
      if (__swift_getEnumTagSinglePayload(v105, 1, v104) != 1)
      {
        v107 = v97;
        v108 = v105;
        v109 = v196;
        sub_1D505DED8();
        OUTLINED_FUNCTION_24_0(v104);
        (*(v110 + 8))(v108, v104);
LABEL_22:
        v63 = v198;
        sub_1D560D588();
        v118 = v205;

        v119 = v197;
        sub_1D55BA0EC(v96, v109, v63, v118, v197);
        v91 = v215;
        sub_1D4E50004(v215, &qword_1EC7ECC80, &unk_1D5622EA0);
        sub_1D5069360(v119, v91);
        v97 = v107;
        v98 = v208;
        goto LABEL_23;
      }
    }

    else
    {
      sub_1D4E50004(v217, &qword_1EC7EEC40, &unk_1D561C070);
      sub_1D5614898();
      v105 = v195;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
    }

    v107 = v97;
    sub_1D4E50004(v105, &unk_1EC7F1990, &unk_1D561CEF0);
    v109 = v196;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v206);
    goto LABEL_22;
  }

LABEL_23:
  v120 = v214;
  v121 = v211;
  (*(v213 + 16))(v211, v85, v214);
  __swift_storeEnumTagSinglePayload(v121, 0, 1, v120);
  v122 = OUTLINED_FUNCTION_11_43();
  sub_1D4F1C460(v122, v123, v124, v125);
  if (v218)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    v126 = OUTLINED_FUNCTION_17_32();
    OUTLINED_FUNCTION_13_34(&v219);
    v127 = OUTLINED_FUNCTION_12_36();
    OUTLINED_FUNCTION_5_42(v127);
    if (!v128)
    {
      Playlist.collaborators.getter();
      OUTLINED_FUNCTION_24_0(v126);
      (*(v129 + 8))(v63, v126);
      goto LABEL_28;
    }
  }

  else
  {
    sub_1D4E50004(v217, &qword_1EC7EEC40, &unk_1D561C070);
    sub_1D5614898();
    OUTLINED_FUNCTION_13_34(&v219);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);
  }

  sub_1D4E50004(v63, &unk_1EC7F1990, &unk_1D561CEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v137);
LABEL_28:
  v138 = OUTLINED_FUNCTION_11_43();
  sub_1D4F1C460(v138, v139, v140, v141);
  if (v218)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    v142 = OUTLINED_FUNCTION_17_32();
    v143 = OUTLINED_FUNCTION_12_36();
    __swift_storeEnumTagSinglePayload(v99, v143 ^ 1u, 1, v142);
    if (__swift_getEnumTagSinglePayload(v99, 1, v142) != 1)
    {
      sub_1D505C360();
      OUTLINED_FUNCTION_24_0(v142);
      (*(v144 + 8))(v99, v142);
      goto LABEL_33;
    }
  }

  else
  {
    sub_1D4E50004(v217, &qword_1EC7EEC40, &unk_1D561C070);
    sub_1D5614898();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v145, v146, v147, v148);
  }

  sub_1D4E50004(v99, &unk_1EC7F1990, &unk_1D561CEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
LABEL_33:
  sub_1D4F1C460(v91, v210, &qword_1EC7ECC80, &unk_1D5622EA0);
  v153 = OUTLINED_FUNCTION_11_43();
  sub_1D4F1C460(v153, v154, v155, v156);
  if (!v218)
  {
    sub_1D4E50004(v217, &qword_1EC7EEC40, &unk_1D561C070);
    sub_1D5614898();
    OUTLINED_FUNCTION_13_34(&v220);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
    goto LABEL_37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v157 = OUTLINED_FUNCTION_17_32();
  OUTLINED_FUNCTION_13_34(&v220);
  v158 = OUTLINED_FUNCTION_12_36();
  OUTLINED_FUNCTION_5_42(v158);
  if (v128)
  {
LABEL_37:
    sub_1D4E50004(v63, &unk_1EC7F1990, &unk_1D561CEF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v164, v165, v166, v167);
    goto LABEL_38;
  }

  sub_1D505BF4C();
  OUTLINED_FUNCTION_24_0(v157);
  (*(v159 + 8))(v63, v157);
LABEL_38:
  OUTLINED_FUNCTION_33();
  v168 = v214;
  __swift_storeEnumTagSinglePayload(v169, v170, v171, v214);
  v172 = v201;
  v173 = v201[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v174, v175, v176, v177);
  v178 = v172[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v179, v180, v181, v182);
  v183 = v172[7];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v184, v185, v186, v206);
  v187 = v172[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
  sub_1D4F1C350(v211, v32, &qword_1EC7ECF58, &qword_1D5623AF0);
  sub_1D4F1C350(v212, v32 + v173, &qword_1EC7EC8D0, &unk_1D5623AD0);
  sub_1D4F1C350(v98, v32 + v178, &qword_1EC7EA778, &qword_1D5622E60);
  sub_1D4F1C350(v210, v32 + v183, &qword_1EC7ECC80, &unk_1D5622EA0);
  sub_1D4F1C350(v97, v32 + v187, &qword_1EC7ECF38, &qword_1D562E650);
  sub_1D5069958(&qword_1EDD5F208, _s15InternalStorageVMa_0);
  sub_1D56130F8();
  sub_1D4E50004(v215, &qword_1EC7ECC80, &unk_1D5622EA0);
  (*(v213 + 8))(v209, v168);
  return sub_1D5069900(v32, _s15InternalStorageVMa_0);
}

unint64_t sub_1D506930C()
{
  result = qword_1EDD5F168;
  if (!qword_1EDD5F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5F168);
  }

  return result;
}

uint64_t sub_1D5069360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50693D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Collaboration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Playlist.extractExtendedRawDictionary(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC8, &unk_1D562FAE0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  Playlist.collaboration.getter();
  v14 = type metadata accessor for Playlist.Collaboration();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1D4E50004(v13, &qword_1EC7EEFC8, &unk_1D562FAE0);
    static Playlist.Collaboration.defaultLegacyModelStorageDictionary.getter();
    sub_1D506930C();
    v15 = sub_1D5614BF8();
  }

  else
  {
    sub_1D5069958(&qword_1EC7EEFD0, type metadata accessor for Playlist.Collaboration);
    sub_1D5069958(&qword_1EC7EEFD8, type metadata accessor for Playlist.Collaboration);
    v15 = sub_1D56132F8();
    OUTLINED_FUNCTION_3_56();
    sub_1D5069900(v13, v16);
  }

  sub_1D505DED8();
  v17 = type metadata accessor for CuratorRelationshipProvider();
  if (__swift_getEnumTagSinglePayload(v7, 1, v17) == 1)
  {
    sub_1D4E50004(v7, &qword_1EC7ECC80, &unk_1D5622EA0);
  }

  else
  {
    v18 = sub_1D55BC5C4(a1);
    sub_1D5069900(v7, type metadata accessor for CuratorRelationshipProvider);
    if (v18)
    {
      *(&v29 + 1) = sub_1D4F688F0();
      *&v28 = v18;
      sub_1D4E519A8(&v28, &v27);
      swift_isUniquelyReferenced_nonNull_native();
      v26 = v15;
      sub_1D4F13B94();
      return v26;
    }
  }

  v19 = sub_1D4E4EFA0();
  if (v20)
  {
    v21 = v19;
    swift_isUniquelyReferenced_nonNull_native();
    *&v27 = v15;
    v22 = *(v15 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4B0, &unk_1D5620C80);
    sub_1D5615D78();
    v15 = v27;
    v23 = *(*(v27 + 48) + 16 * v21 + 8);

    sub_1D4E519A8((*(v15 + 56) + 32 * v21), &v28);
    sub_1D5615D98();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  sub_1D4E50004(&v28, &qword_1EC7E9F98, &qword_1D561C420);
  return v15;
}

unint64_t Playlist.LegacyModelPlaylistInternalPropertyKey.rawValue.getter()
{
  result = 0xD00000000000002FLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000029;
      break;
    case 2:
      result = 0xD000000000000026;
      break;
    case 3:
      result = 0xD000000000000031;
      break;
    case 4:
      result = 0xD00000000000003FLL;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Playlist.LegacyModelPlaylistInternalPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D50698C4@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Playlist.LegacyModelPlaylistInternalPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_1D50698D0@<X0>(unint64_t *a1@<X8>)
{
  result = Playlist.LegacyModelPlaylistInternalPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D5069900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D5069958(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D50699A4()
{
  result = qword_1EDD5F178;
  if (!qword_1EDD5F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5F178);
  }

  return result;
}

unint64_t sub_1D5069A00()
{
  result = qword_1EDD5F170;
  if (!qword_1EDD5F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5F170);
  }

  return result;
}

_BYTE *_s38LegacyModelPlaylistInternalPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t static LegacyModelCodableComposer.Attributes.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_71();
      if (sub_1D5616168())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5069BE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001D5682EC0 == a2;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D5069CB0(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D5069CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5069BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5069D14(uint64_t a1)
{
  v2 = sub_1D5069EDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5069D50(uint64_t a1)
{
  v2 = sub_1D5069EDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LegacyModelCodableComposer.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF000, &qword_1D562FC50);
  OUTLINED_FUNCTION_4(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v9 = *v0;
  v10 = v0[1];
  v15 = v0[3];
  v16 = v0[2];
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D5069EDC();
  sub_1D56163D8();
  sub_1D5616028();
  if (!v1)
  {
    sub_1D5616028();
  }

  v12 = *(v17 + 8);
  v13 = OUTLINED_FUNCTION_134_0();
  v14(v13);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D5069EDC()
{
  result = qword_1EC7EF008;
  if (!qword_1EC7EF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF008);
  }

  return result;
}

uint64_t LegacyModelCodableComposer.Attributes.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_1D56162F8();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_1D56162F8();
  }

  v3 = *v0;
  sub_1D56162F8();
  sub_1D5614E28();
  if (!v2)
  {
    return sub_1D56162F8();
  }

LABEL_3:
  sub_1D56162F8();

  return sub_1D5614E28();
}

uint64_t LegacyModelCodableComposer.Attributes.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D56162D8();
  sub_1D56162F8();
  if (v2)
  {
    sub_1D5614E28();
  }

  sub_1D56162F8();
  if (v4)
  {
    sub_1D5614E28();
  }

  return sub_1D5616328();
}

void LegacyModelCodableComposer.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF010, &qword_1D562FC58);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_71_1();
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D5069EDC();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v12 = sub_1D5615F38();
    v14 = v13;
    v15 = sub_1D5615F38();
    v17 = v16;
    v18 = *(v7 + 8);
    v21 = v15;
    v19 = OUTLINED_FUNCTION_45_3();
    v20(v19);
    *v4 = v12;
    v4[1] = v14;
    v4[2] = v21;
    v4[3] = v17;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D506A298()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1D56162D8();
  LegacyModelCodableComposer.Attributes.hash(into:)();
  return sub_1D5616328();
}

uint64_t LegacyModelCodableComposer.Relationships.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  *a1 = v2 != 0;
  return result;
}

uint64_t LegacyModelCodableComposer.Relationships.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D506A3C8@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return LegacyModelCodableComposer.Relationships.CodingKeys.init(rawValue:)(a1);
}

uint64_t sub_1D506A418(uint64_t a1)
{
  v2 = sub_1D506A948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D506A454(uint64_t a1)
{
  v2 = sub_1D506A948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static LegacyModelCodableComposer.Relationships.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
  OUTLINED_FUNCTION_4(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_31();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF028, &unk_1D562FC70);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_16_0();
  v45 = *(v44 + 56);
  sub_1D4F39AB0(v27, v20, &qword_1EC7EF020, &unk_1D5630FF0);
  sub_1D4F39AB0(v25, v20 + v45, &qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_57(v20, 1, v28);
  if (!v46)
  {
    sub_1D4F39AB0(v20, v21, &qword_1EC7EF020, &unk_1D5630FF0);
    OUTLINED_FUNCTION_57(v20 + v45, 1, v28);
    if (!v46)
    {
      (*(v30 + 32))(v35, v20 + v45, v28);
      sub_1D506A710();
      OUTLINED_FUNCTION_134_0();
      sub_1D5614D18();
      v47 = *(v30 + 8);
      v48 = OUTLINED_FUNCTION_71();
      v47(v48);
      (v47)(v21, v28);
      sub_1D4E50004(v20, &qword_1EC7EF020, &unk_1D5630FF0);
      goto LABEL_10;
    }

    (*(v30 + 8))(v21, v28);
LABEL_9:
    sub_1D4E50004(v20, &qword_1EC7EF028, &unk_1D562FC70);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_57(v20 + v45, 1, v28);
  if (!v46)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v20, &qword_1EC7EF020, &unk_1D5630FF0);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D506A710()
{
  result = qword_1EC7EF030;
  if (!qword_1EC7EF030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF018, &unk_1D562FC60);
    sub_1D506AC88(&qword_1EC7EBB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF030);
  }

  return result;
}

uint64_t LegacyModelCodableComposer.Relationships.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF038, &qword_1D562FC80);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D506A948();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
  sub_1D506A99C(&unk_1EC7EF048);
  sub_1D5616068();
  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_1D506A948()
{
  result = qword_1EC7EF040;
  if (!qword_1EC7EF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF040);
  }

  return result;
}

unint64_t sub_1D506A99C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF018, &unk_1D562FC60);
    sub_1D506B300(v4);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D506AA10(uint64_t a1)
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

uint64_t LegacyModelCodableComposer.Relationships.hash(into:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  sub_1D4F39AB0(v0, v2, &qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_57(v2, 1, v3);
  if (v13)
  {
    return sub_1D56162F8();
  }

  (*(v5 + 32))(v1, v2, v3);
  sub_1D56162F8();
  sub_1D506ABCC();
  sub_1D5614CB8();
  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_1D506ABCC()
{
  result = qword_1EC7EF058;
  if (!qword_1EC7EF058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF018, &unk_1D562FC60);
    sub_1D506AC88(&qword_1EC7EBD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF058);
  }

  return result;
}

unint64_t sub_1D506AC88(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB48, &unk_1D5630FE0);
    sub_1D506AA10(v4);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t LegacyModelCodableComposer.Relationships.hashValue.getter()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v14, &qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_57(v14, 1, v3);
  if (v15)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v1, v14, v3);
    sub_1D56162F8();
    sub_1D506ABCC();
    sub_1D5614CB8();
    (*(v5 + 8))(v1, v3);
  }

  return sub_1D5616328();
}

void LegacyModelCodableComposer.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v28 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF060, &qword_1D562FC88);
  OUTLINED_FUNCTION_4(v10);
  v29 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_71_1();
  v15 = type metadata accessor for LegacyModelCodableComposer.Relationships(0);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D506A948();
  sub_1D5616398();
  if (!v0)
  {
    v23 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
    sub_1D506A99C(&unk_1EC7EF068);
    sub_1D5615F78();
    v24 = *(v29 + 8);
    v25 = OUTLINED_FUNCTION_45_3();
    v26(v25);
    sub_1D4F39A1C(v9, v21, &qword_1EC7EF020, &unk_1D5630FF0);
    sub_1D506B3D0(v21, v23);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D506B11C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - v9;
  sub_1D56162D8();
  sub_1D4F39AB0(v1, v10, &qword_1EC7EF020, &unk_1D5630FF0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D56162F8();
    sub_1D506ABCC();
    sub_1D5614CB8();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1D5616328();
}

unint64_t sub_1D506B300(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB48, &unk_1D5630FE0);
    sub_1D506AA10(&unk_1EDD53420);
    sub_1D506AA10(&unk_1EDD53428);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D506B3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyModelCodableComposer.Relationships(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D506B43C(uint64_t a1)
{
  v2 = sub_1D506B4F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D506B478(uint64_t a1)
{
  v2 = sub_1D506B4F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D506B4F8()
{
  result = qword_1EC7EF078;
  if (!qword_1EC7EF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF078);
  }

  return result;
}

uint64_t sub_1D506B5D0(uint64_t a1)
{
  v2 = sub_1D506B780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D506B60C(uint64_t a1)
{
  v2 = sub_1D506B780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D506B68C()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_71_1();
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  sub_1D56163D8();
  v13 = *(v8 + 8);
  v14 = OUTLINED_FUNCTION_45_3();
  v15(v14);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D506B780()
{
  result = qword_1EC7EF088;
  if (!qword_1EC7EF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF088);
  }

  return result;
}

uint64_t LegacyModelCodableComposer.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t LegacyModelCodableComposer.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
}

uint64_t LegacyModelCodableComposer.views.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LegacyModelCodableComposer(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t LegacyModelCodableComposer.meta.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LegacyModelCodableComposer(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1D506B980()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  v0 = *(sub_1D5610088() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = sub_1D5610028();
  qword_1EDD552E8 = v3;
  return result;
}

uint64_t sub_1D506BA5C()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7EEFE8);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EEFE8);
  v2 = *MEMORY[0x1E6976880];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static LegacyModelCodableComposer.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7EEFE8);
  OUTLINED_FUNCTION_24_0(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1D506BE30(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D506BECC(uint64_t a1)
{
  v2 = sub_1D506C1C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D506BF08(uint64_t a1)
{
  v2 = sub_1D506C1C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyModelCodableComposer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF0A0, &qword_1D562FCB0);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D506C1C0();
  sub_1D56163D8();
  v19 = *v3;
  v23 = v3[1];
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_10_44();
  sub_1D56160C8();
  if (!v2)
  {
    v20 = v3[2];
    v24 = *(v3 + 3);
    v25 = v3[5];
    sub_1D506C214();

    sub_1D56160C8();

    v12 = type metadata accessor for LegacyModelCodableComposer(0);
    v13 = v12[6];
    type metadata accessor for LegacyModelCodableComposer.Relationships(0);
    OUTLINED_FUNCTION_16_34();
    sub_1D506AA10(v14);
    sub_1D5616068();
    v21 = *(v3 + v12[7]);
    sub_1D506C268();
    OUTLINED_FUNCTION_10_44();
    sub_1D5616068();
    v22 = *(v3 + v12[8]);
    sub_1D506C2BC();
    OUTLINED_FUNCTION_10_44();
    sub_1D5616068();
  }

  v15 = *(v7 + 8);
  v16 = OUTLINED_FUNCTION_134_0();
  return v17(v16);
}

unint64_t sub_1D506C1C0()
{
  result = qword_1EC7EF0A8;
  if (!qword_1EC7EF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0A8);
  }

  return result;
}

unint64_t sub_1D506C214()
{
  result = qword_1EC7EF0B0;
  if (!qword_1EC7EF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0B0);
  }

  return result;
}

unint64_t sub_1D506C268()
{
  result = qword_1EC7EF0C0;
  if (!qword_1EC7EF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0C0);
  }

  return result;
}

unint64_t sub_1D506C2BC()
{
  result = qword_1EC7EF0C8;
  if (!qword_1EC7EF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0C8);
  }

  return result;
}

void LegacyModelCodableComposer.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
  OUTLINED_FUNCTION_4(v39);
  v37 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v36 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_71_1();
  v11 = type metadata accessor for LegacyModelCodableComposer.Relationships(0);
  v12 = OUTLINED_FUNCTION_14(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v38 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  v22 = *v0;
  v23 = v0[1];
  sub_1D5614E28();
  v24 = v0[4];
  v25 = v0[5];
  if (v0[3])
  {
    v26 = v0[2];
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
    if (v25)
    {
LABEL_3:
      OUTLINED_FUNCTION_27();
      sub_1D5614E28();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v25)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_36();
LABEL_6:
  v27 = type metadata accessor for LegacyModelCodableComposer(0);
  sub_1D4F39AB0(v0 + v27[6], v21, &qword_1EC7EF090, &qword_1D562FCA0);
  OUTLINED_FUNCTION_57(v21, 1, v11);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v28 = v38;
    sub_1D506B3D0(v21, v38);
    OUTLINED_FUNCTION_27();
    sub_1D4F39AB0(v28, v1, &qword_1EC7EF020, &unk_1D5630FF0);
    v29 = v39;
    OUTLINED_FUNCTION_57(v1, 1, v39);
    if (v30)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v32 = v36;
      v31 = v37;
      (*(v37 + 32))(v36, v1, v29);
      OUTLINED_FUNCTION_27();
      sub_1D506ABCC();
      sub_1D5614CB8();
      (*(v31 + 8))(v32, v29);
    }

    OUTLINED_FUNCTION_5_46();
    sub_1D506CB78(v28, v33);
  }

  v34 = *(v0 + v27[7]);
  sub_1D56162F8();
  v35 = *(v0 + v27[8]);
  sub_1D56162F8();
  OUTLINED_FUNCTION_46();
}

uint64_t LegacyModelCodableComposer.hashValue.getter()
{
  sub_1D56162D8();
  LegacyModelCodableComposer.hash(into:)();
  return sub_1D5616328();
}

void LegacyModelCodableComposer.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v26 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_71_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF0D0, &qword_1D562FCB8);
  OUTLINED_FUNCTION_4(v27);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_34();
  v13 = type metadata accessor for LegacyModelCodableComposer(v12);
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  v20 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D506C1C0();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1D4F89C9C();
    sub_1D5615FD8();
    *v19 = v28;
    sub_1D506CA7C();
    OUTLINED_FUNCTION_7_46();
    sub_1D5615FD8();
    v19[1] = v28;
    v19[2] = v29;
    type metadata accessor for LegacyModelCodableComposer.Relationships(0);
    OUTLINED_FUNCTION_16_34();
    sub_1D506AA10(v21);
    sub_1D5615F78();
    sub_1D4F39A1C(v1, v19 + v13[6], &qword_1EC7EF090, &qword_1D562FCA0);
    sub_1D506CAD0();
    OUTLINED_FUNCTION_7_46();
    sub_1D5615F78();
    *(v19 + v13[7]) = 2;
    sub_1D506CB24();
    OUTLINED_FUNCTION_7_46();
    sub_1D5615F78();
    v22 = OUTLINED_FUNCTION_1_6();
    v23(v22);
    *(v19 + v13[8]) = 2;
    OUTLINED_FUNCTION_13_35();
    sub_1D506DF7C(v19, v26, v24);
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_4_43();
    sub_1D506CB78(v19, v25);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D506CA40()
{
  sub_1D56162D8();
  LegacyModelCodableComposer.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D506CA7C()
{
  result = qword_1EC7EF0D8;
  if (!qword_1EC7EF0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0D8);
  }

  return result;
}

unint64_t sub_1D506CAD0()
{
  result = qword_1EC7EF0E8;
  if (!qword_1EC7EF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0E8);
  }

  return result;
}

unint64_t sub_1D506CB24()
{
  result = qword_1EC7EF0F0;
  if (!qword_1EC7EF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0F0);
  }

  return result;
}

uint64_t sub_1D506CB78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void Composer.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v117 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v100 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v116 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v101 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v119 = v24;
  OUTLINED_FUNCTION_70_0();
  v25 = sub_1D5610788();
  v26 = OUTLINED_FUNCTION_4(v25);
  v112 = v27;
  v113 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v110 = v30;
  OUTLINED_FUNCTION_70_0();
  v111 = sub_1D56107C8();
  v31 = OUTLINED_FUNCTION_4(v111);
  v109 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v108 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v41 = v40;
  v42 = OUTLINED_FUNCTION_70_0();
  v107 = type metadata accessor for LegacyModelCodableComposer(v42);
  v43 = OUTLINED_FUNCTION_14(v107);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v120 = v46;
  OUTLINED_FUNCTION_70_0();
  v47 = type metadata accessor for ComposerPropertyProvider();
  v48 = OUTLINED_FUNCTION_14(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  v53 = (v52 - v51);
  v55 = *(v54 + 20);
  sub_1D560C328();
  v104 = v55;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v60 = v47[6];
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  v115 = v60;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  if (qword_1EDD53C80 != -1)
  {
    swift_once();
  }

  v65 = sub_1D560D9A8();
  __swift_project_value_buffer(v65, qword_1EDD53C88);
  v66 = v47[8];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF0F8, &unk_1D562FCC0);
  OUTLINED_FUNCTION_15_36();
  sub_1D506AA10(v68);
  v118 = v1;
  sub_1D5610668();
  v69 = v53 + v47[9];
  sub_1D5610658();
  v105 = sub_1D5610618();
  v103 = v70;
  v102 = sub_1D56105C8();
  v71 = sub_1D56105F8();
  v72 = sub_1D56105E8();
  v73 = v4;
  v74 = sub_1D56105A8();
  if (qword_1EC7E8990 != -1)
  {
    swift_once();
  }

  v75 = qword_1EC87BE50;
  if (qword_1EC87BE50 >> 62)
  {
    sub_1D560CDE8();

    v99 = sub_1D5615E18();

    v75 = v99;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v53 + v47[7]) = v75;
  v76 = (v53 + v47[10]);
  *v76 = v105;
  v76[1] = v103;
  *(v53 + v47[11]) = v102;
  *(v53 + v47[12]) = v71;
  *(v53 + v47[13]) = v72;
  *(v53 + v47[14]) = v74;
  v106 = v73;
  sub_1D5610648();
  sub_1D56107A8();
  v77 = v120[2];
  v78 = v120[3];
  (*(v112 + 104))(v110, *MEMORY[0x1E6975DC8], v113);
  OUTLINED_FUNCTION_71();
  sub_1D5610798();
  (*(v112 + 8))(v110, v113);
  (*(v109 + 8))(v108, v111);
  sub_1D4E68940(v41, v53 + v104, &qword_1EC7EA3B8, &unk_1D561E370);
  v79 = v120[5];
  *v53 = v120[4];
  v53[1] = v79;
  sub_1D4F39AB0(v120 + *(v107 + 24), v116, &qword_1EC7EF090, &qword_1D562FCA0);
  v80 = type metadata accessor for LegacyModelCodableComposer.Relationships(0);
  OUTLINED_FUNCTION_57(v116, 1, v80);
  if (v85)
  {

    sub_1D4E50004(v116, &qword_1EC7EF090, &qword_1D562FCA0);
    v81 = 1;
    v82 = v118;
  }

  else
  {
    sub_1D4F39AB0(v116, v101, &qword_1EC7EF020, &unk_1D5630FF0);

    OUTLINED_FUNCTION_5_46();
    sub_1D506CB78(v116, v83);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
    OUTLINED_FUNCTION_57(v101, 1, v84);
    v82 = v118;
    if (v85)
    {
      sub_1D4E50004(v101, &qword_1EC7EF020, &unk_1D5630FF0);
      v81 = 1;
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
      sub_1D5613AF8();
      OUTLINED_FUNCTION_14_35();
      sub_1D506AA10(v90);
      sub_1D5612368();
      sub_1D4E50004(v100, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0(v84);
      (*(v91 + 8))(v101, v84);
      v81 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v119, v81, 1, v114);
  sub_1D4E68940(v119, v53 + v115, &qword_1EC7EB508, &unk_1D5643E20);
  v121[3] = v47;
  v121[4] = sub_1D506AA10(&qword_1EC7EB530);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v121);
  sub_1D506DF7C(v53, boxed_opaque_existential_0, type metadata accessor for ComposerPropertyProvider);
  Composer.init(propertyProvider:)(v121, v117);

  OUTLINED_FUNCTION_24_0(v82);
  v94 = *(v93 + 8);
  v95 = OUTLINED_FUNCTION_45_3();
  v96(v95);
  OUTLINED_FUNCTION_24_0(v67);
  (*(v97 + 8))(v106);
  OUTLINED_FUNCTION_4_43();
  sub_1D506CB78(v120, v98);
  sub_1D506CB78(v53, type metadata accessor for ComposerPropertyProvider);
  OUTLINED_FUNCTION_46();
}

void Composer.convertToLegacyModelCodableResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v153 = v0;
  v136 = v2;
  v135 = v3;
  v134 = v4;
  v151 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v150 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D5610088();
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v149 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v144 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v143 = v25;
  OUTLINED_FUNCTION_70_0();
  v26 = sub_1D5612B78();
  v27 = OUTLINED_FUNCTION_4(v26);
  v147 = v28;
  v148 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v146 = v31;
  v32 = OUTLINED_FUNCTION_70_0();
  v156 = type metadata accessor for LegacyModelCodableComposer(v32);
  v33 = OUTLINED_FUNCTION_14(v156);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v155 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v145 = &v130 - v38;
  OUTLINED_FUNCTION_70_0();
  v133 = sub_1D5613578();
  v39 = OUTLINED_FUNCTION_4(v133);
  v132 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v131 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  v138 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  v50 = OUTLINED_FUNCTION_22(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13();
  v139 = v53;
  MEMORY[0x1EEE9AC00](v54);
  v154 = &v130 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
  v57 = OUTLINED_FUNCTION_22(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13();
  v137 = v60;
  MEMORY[0x1EEE9AC00](v61);
  v152 = &v130 - v62;
  OUTLINED_FUNCTION_70_0();
  v63 = sub_1D5610788();
  v64 = OUTLINED_FUNCTION_4(v63);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5();
  v71 = v70 - v69;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_34();
  v140 = sub_1D56107C8();
  v76 = OUTLINED_FUNCTION_4(v140);
  v78 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5();
  v83 = v82 - v81;
  sub_1D56107A8();
  if (qword_1EC7E90E8 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  sub_1D506AA10(&qword_1EDD54820);
  sub_1D506AA10(&qword_1EDD54818);
  sub_1D560EC28();
  (*(v66 + 104))(v71, *MEMORY[0x1E6975DC8], v63);
  v84 = sub_1D56107B8();
  v141 = v85;
  v142 = v84;
  (*(v66 + 8))(v71, v63);
  sub_1D4E50004(v1, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v78 + 8))(v83, v140);
  v86 = Composer.name.getter();
  v140 = v87;
  v88 = type metadata accessor for LegacyModelCodableComposer.Relationships(0);
  v89 = v152;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v88);
  if (qword_1EC7E90F0 != -1)
  {
    swift_once();
  }

  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  v94 = v154;
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v94);
  if (!v95)
  {
    v96 = v139;
    sub_1D4F39AB0(v94, v139, &qword_1EC7EB508, &unk_1D5643E20);
    OUTLINED_FUNCTION_32_1(v96);
    if (v95)
    {
      sub_1D4E50004(v89, &qword_1EC7EF090, &qword_1D562FCA0);
      sub_1D4E50004(v96, &qword_1EC7EB508, &unk_1D5643E20);
      v102 = 1;
      v99 = v138;
    }

    else
    {
      sub_1D5613AF8();
      OUTLINED_FUNCTION_14_35();
      sub_1D506AA10(v97);
      v98 = v131;
      sub_1D4F1ABE8(v131);
      v99 = v138;
      v100 = v139;
      sub_1D560DA98();
      (*(v132 + 8))(v98, v133);
      sub_1D4E50004(v89, &qword_1EC7EF090, &qword_1D562FCA0);
      OUTLINED_FUNCTION_24_0(v93);
      (*(v101 + 8))(v100, v93);
      v102 = 0;
    }

    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
    __swift_storeEnumTagSinglePayload(v99, v102, 1, v103);
    v104 = v137;
    sub_1D4F39A1C(v99, v137, &qword_1EC7EF020, &unk_1D5630FF0);
    __swift_storeEnumTagSinglePayload(v104, 0, 1, v88);
    sub_1D4F39A1C(v104, v89, &qword_1EC7EF090, &qword_1D562FCA0);
  }

  v106 = *v153;
  v105 = v153[1];
  v107 = v156;
  v108 = v145;
  sub_1D4F39AB0(v89, &v145[*(v156 + 24)], &qword_1EC7EF090, &qword_1D562FCA0);
  *v108 = v106;
  v108[1] = v105;
  v109 = v141;
  v108[2] = v142;
  v108[3] = v109;
  v110 = v140;
  v108[4] = v86;
  v108[5] = v110;
  *(v108 + *(v107 + 28)) = 1;
  *(v108 + *(v107 + 32)) = 1;
  v111 = *(type metadata accessor for Composer() + 20);

  v112 = v143;
  sub_1D5611A28();
  v113 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v112, 0, 1, v113);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
  v118 = v146;
  sub_1D5612B38();
  OUTLINED_FUNCTION_13_35();
  sub_1D506DF7C(v108, v155, v119);
  sub_1D5611A98();
  v120 = sub_1D5611A88();
  v143 = v121;
  v144 = v120;
  v123 = v147;
  v122 = v148;
  v124 = v150;
  (*(v147 + 16))(v150, v118, v148);
  __swift_storeEnumTagSinglePayload(v124, 0, 1, v122);
  v142 = sub_1D5611A38();
  v141 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  OUTLINED_FUNCTION_15_36();
  sub_1D506AA10(v125);
  sub_1D5610628();
  v126 = *(v123 + 8);
  v127 = OUTLINED_FUNCTION_134_0();
  v128(v127);
  OUTLINED_FUNCTION_4_43();
  sub_1D506CB78(v108, v129);
  sub_1D4E50004(v152, &qword_1EC7EF090, &qword_1D562FCA0);
  sub_1D4E50004(v154, &qword_1EC7EB508, &unk_1D5643E20);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D506DF7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

unint64_t sub_1D506DFDC()
{
  result = qword_1EC7EF110;
  if (!qword_1EC7EF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF110);
  }

  return result;
}