uint64_t sub_25434CBF8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_2543A36E8();
  a4(v7, a2[2], a2[3], a2[4]);
  return sub_2543A3728();
}

uint64_t sub_25434CC48(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_25434CBE4();
}

uint64_t sub_25434CC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_25434CB70(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_25434CCC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25434CD14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void ObservationLifeCycleResponse.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v16 = v0;
  v2 = v1;
  v4 = v3[2];
  v15[1] = v3[3];
  v15[2] = v4;
  v5 = v3[4];
  type metadata accessor for ObservationLifeCycleResponse.CodingKeys();
  OUTLINED_FUNCTION_3_20();
  swift_getWitnessTable();
  v6 = sub_2543A3588();
  OUTLINED_FUNCTION_3(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_2543A3778();
  type metadata accessor for ObservationLifeCycleResponse.ObservationResult();
  swift_getWitnessTable();
  sub_2543A3578();
  (*(v8 + 8))(v13, v6);
  OUTLINED_FUNCTION_15_3();
}

void ObservationLifeCycleResponse.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v3 = v2;
  v33 = v4;
  v5 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult();
  v6 = OUTLINED_FUNCTION_3(v5);
  v36 = v7;
  v37 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_0();
  v38 = v11;
  type metadata accessor for ObservationLifeCycleResponse.CodingKeys();
  OUTLINED_FUNCTION_3_20();
  swift_getWitnessTable();
  v12 = sub_2543A34F8();
  v13 = OUTLINED_FUNCTION_3(v12);
  v34 = v14;
  v35 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_13_9();
  v18 = type metadata accessor for ObservationLifeCycleResponse();
  OUTLINED_FUNCTION_3(v18);
  v32 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v22);
  v24 = &v31 - v23;
  v25 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_2543A3768();
  if (!v0)
  {
    v31 = v24;
    v39 = v18;
    v26 = v34;
    v28 = v36;
    v27 = v37;
    swift_getWitnessTable();
    v29 = v35;
    sub_2543A34D8();
    (*(v26 + 8))(v1, v29);
    v30 = v31;
    (*(v28 + 32))(v31, v38, v27);
    (*(v32 + 32))(v33, v30, v39);
  }

  __swift_destroy_boxed_opaque_existential_0(v3);
  OUTLINED_FUNCTION_15_3();
}

uint64_t sub_25434D1C0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25434D220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void sub_25434D28C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  ObservationLifeCycleResponse.init(from:)();
}

uint64_t sub_25434D2C8(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  result = type metadata accessor for ObservationLifeCycleResponse.ObservationResult();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25434D340(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_25434D4CC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 + 64);
  if (v9)
  {
    v12 = *(v8 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v16 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v16))
      {
        v6 = 4;
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
          v6 = v17;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v18 = ~v10 + a2;
    if (v12 < 4)
    {
      v19 = (v18 >> v13) + 1;
      if (v12)
      {
        v20 = v18 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v12 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v18;
      v19 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v19;
        return;
      case 2:
        *&a1[v12] = v19;
        return;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v12] = v19;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_57:
      __break(1u);
      JUMPOUT(0x25434D774);
    case 4:
      *&a1[v12] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          if (a2 >= v9)
          {
            if (v11 <= 3)
            {
              v22 = ~(-1 << (8 * v11));
            }

            else
            {
              v22 = -1;
            }

            if (v11)
            {
              v23 = v22 & (a2 - v9);
              if (v11 <= 3)
              {
                v24 = v11;
              }

              else
              {
                v24 = 4;
              }

              bzero(a1, v11);
              switch(v24)
              {
                case 2:
                  *a1 = v23;
                  break;
                case 3:
                  *a1 = v23;
                  a1[2] = BYTE2(v23);
                  break;
                case 4:
                  *a1 = v23;
                  break;
                default:
                  *a1 = v23;
                  break;
              }
            }
          }

          else
          {
            v21 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v21, v9, v7);
          }
        }
      }

      return;
  }
}

_BYTE *sub_25434D7AC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25434D878);
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

_BYTE *sub_25434D8A4(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x25434D940);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_8()
{
  v2 = *(v0 - 304);

  return sub_2543A3458();
}

void sub_25434DBA4()
{
  OUTLINED_FUNCTION_88();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  sub_254350378(v2, v16 - v9, &qword_27F5DF328, &qword_2543A68B0);
  v11 = sub_2543A2BB8();
  OUTLINED_FUNCTION_2_28(v11);
  if (&qword_2543A68B0 == 1)
  {
    sub_2542DE3E4(v10, &qword_27F5DF328, &qword_2543A68B0);
  }

  else
  {
    sub_2543A2BA8();
    OUTLINED_FUNCTION_1_28();
    (*(v12 + 8))(v10, &qword_27F5DF328);
  }

  OUTLINED_FUNCTION_25_4();

  if (v0)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_24_5();
    OUTLINED_FUNCTION_12_14();
    if (v4)
    {
LABEL_6:
      v16[0] = v4;
      v13 = sub_2543A28A8() + 32;
      sub_254350598();

      if (&qword_2543A68B0 | v10)
      {
        OUTLINED_FUNCTION_6_20();
      }

      else
      {
        v14 = 0;
      }

      v16[1] = 7;
      v16[2] = v14;
      v16[3] = v13;
      swift_task_create();

      sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_5();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);
  sub_254350598();
  OUTLINED_FUNCTION_16_7();
  if (v15)
  {
    OUTLINED_FUNCTION_4_15();
  }

  OUTLINED_FUNCTION_10_14();
LABEL_14:
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_86();
}

void sub_25434DDBC()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_7_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_0_30();
  sub_254350378(v8, v9, &qword_27F5DF328, &qword_2543A68B0);
  v10 = sub_2543A2BB8();
  OUTLINED_FUNCTION_2_28(v10);
  if (&qword_2543A68B0 == 1)
  {
    sub_2542DE3E4(v0, &qword_27F5DF328, &qword_2543A68B0);
  }

  else
  {
    sub_2543A2BA8();
    OUTLINED_FUNCTION_1_28();
    (*(v11 + 8))(v0, &qword_27F5DF328);
  }

  OUTLINED_FUNCTION_25_4();

  if (v3)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_24_5();
    OUTLINED_FUNCTION_12_14();
    if (v1)
    {
LABEL_6:
      sub_2543A28A8();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF590, &qword_2543A6D58);
      OUTLINED_FUNCTION_16_7();
      if (v12)
      {
        OUTLINED_FUNCTION_6_20();
      }

      OUTLINED_FUNCTION_13_10(v12);
      OUTLINED_FUNCTION_10_14();

      sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_5();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF590, &qword_2543A6D58);
  OUTLINED_FUNCTION_16_7();
  if (v13)
  {
    OUTLINED_FUNCTION_4_15();
  }

  OUTLINED_FUNCTION_10_14();
LABEL_13:
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_86();
}

void sub_25434DFA4()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_7_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_0_30();
  sub_254350378(v8, v9, &qword_27F5DF328, &qword_2543A68B0);
  v10 = sub_2543A2BB8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_2542DE3E4(v0, &qword_27F5DF328, &qword_2543A68B0);
  }

  else
  {
    EnumTagSinglePayload = sub_2543A2BA8();
    (*(*(v10 - 8) + 8))(v0, v10);
  }

  OUTLINED_FUNCTION_25_4();

  if (v3)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_24_5();
    OUTLINED_FUNCTION_12_14();
    if (v1)
    {
LABEL_6:
      sub_2543A28A8();

      if (EnumTagSinglePayload | v0)
      {
        OUTLINED_FUNCTION_6_20();
      }

      else
      {
        v12 = 0;
      }

      OUTLINED_FUNCTION_13_10(v12);
      OUTLINED_FUNCTION_23_3();

      sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_5();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);
  if (EnumTagSinglePayload | v0)
  {
    OUTLINED_FUNCTION_4_15();
  }

  OUTLINED_FUNCTION_23_3();
LABEL_14:
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_86();
}

void sub_25434E1A4()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_7_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_0_30();
  sub_254350378(v8, v9, &qword_27F5DF328, &qword_2543A68B0);
  v10 = sub_2543A2BB8();
  OUTLINED_FUNCTION_2_28(v10);
  if (&qword_2543A68B0 == 1)
  {
    sub_2542DE3E4(v0, &qword_27F5DF328, &qword_2543A68B0);
  }

  else
  {
    sub_2543A2BA8();
    OUTLINED_FUNCTION_1_28();
    (*(v11 + 8))(v0, &qword_27F5DF328);
  }

  OUTLINED_FUNCTION_25_4();

  if (v3)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_24_5();
    OUTLINED_FUNCTION_12_14();
    if (v1)
    {
LABEL_6:
      sub_2543A28A8();

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
      OUTLINED_FUNCTION_16_7();
      if (v12)
      {
        OUTLINED_FUNCTION_6_20();
      }

      OUTLINED_FUNCTION_13_10(v12);
      OUTLINED_FUNCTION_10_14();

      sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_5();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  OUTLINED_FUNCTION_16_7();
  if (v13)
  {
    OUTLINED_FUNCTION_4_15();
  }

  OUTLINED_FUNCTION_10_14();
LABEL_13:
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_86();
}

uint64_t CarrySettings.SyncManager.__allocating_init(withModel:)()
{
  OUTLINED_FUNCTION_28();
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25434E430;

  return CarrySettings.SyncManager.init(withModel:)();
}

uint64_t sub_25434E430()
{
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_41();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

void sub_25434E51C()
{
  OUTLINED_FUNCTION_88();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1960, &qword_2543AE650);
  OUTLINED_FUNCTION_17_7(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v10 = *(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_multicast);
  v11[1] = sub_2543A2548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1970, &qword_2543AE658);
  type metadata accessor for CarrySettings.DataModel(0);
  sub_2542EE9CC(&qword_27F5E1978, &qword_27F5E1970, &qword_2543AE658);
  sub_2543A2108();

  sub_2542EE9CC(&qword_27F5E1980, &qword_27F5E1960, &qword_2543AE650);
  sub_2543A20E8();
  (*(v4 + 8))(v9, v0);
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_86();
}

uint64_t sub_25434E6BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFA80, &unk_2543A7B60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A10, &qword_2543AE688);
  sub_2543A2648();
  v4 = _s13DataModelCRDTVMa(0);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  return sub_254382290(v3);
}

uint64_t sub_25434E77C()
{
  v2 = *(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_broadcaster);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1990, &qword_2543AE660);
  sub_2542EE9CC(&qword_27F5E1998, &qword_27F5E1990, &qword_2543AE660);
  return sub_2543A20E8();
}

uint64_t CarrySettings.SyncManager.init(withModel:)()
{
  OUTLINED_FUNCTION_28();
  v1[69] = v0;
  v1[68] = v2;
  v3 = sub_2543A2598();
  v1[70] = v3;
  v4 = *(v3 - 8);
  v1[71] = v4;
  v5 = *(v4 + 64) + 15;
  v1[72] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E19A0, &qword_2543AE668);
  OUTLINED_FUNCTION_110(v6);
  v8 = *(v7 + 64) + 15;
  v1[73] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0368, &qword_2543A9910);
  v1[74] = v9;
  OUTLINED_FUNCTION_110(v9);
  v11 = *(v10 + 64) + 15;
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v12 = _s13DataModelCRDTVMa(0);
  v1[77] = v12;
  OUTLINED_FUNCTION_110(v12);
  v14 = *(v13 + 64) + 15;
  v1[78] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25434E974, 0, 0);
}

uint64_t sub_25434E974()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);
  v5 = *(v0 + 592);
  v31 = *(v0 + 584);
  v32 = *(v0 + 568);
  v33 = *(v0 + 576);
  v34 = *(v0 + 560);
  v6 = *(v0 + 552);
  swift_defaultActor_initialize();
  v30 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_capsule;
  *(v1 + *(v2 + 20)) = MEMORY[0x277D84F98];
  v7 = _s29AppleConnectSettingsMergeableVMa(0);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  sub_254350378(v3, v4, &qword_27F5E0368, &qword_2543A9910);
  sub_25434F5E4();
  sub_2543A2188();
  OUTLINED_FUNCTION_59_2();
  sub_2542DE3E4(v8, v9, v10);
  v11 = _s20CarryDeviceMergeableVMa(0);
  v12 = v11[5];
  sub_2543036DC((v0 + 16));
  memcpy((v0 + 184), (v0 + 16), 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27F5E0388, &unk_2543A9920);
  OUTLINED_FUNCTION_59_2();
  sub_25434F698(v13, v14, v15, v16);
  sub_2543A2188();
  v17 = v11[6];
  sub_25434F768();
  sub_25434F7BC();
  sub_2543A2478();
  v18 = v11[7];
  *(v0 + 432) = 0;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 352) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E19E0, &qword_2543AE670);
  OUTLINED_FUNCTION_59_2();
  sub_25434F698(v19, v20, v21, v22);
  sub_2543A2188();
  *(v1 + v11[8]) = MEMORY[0x277D84F98];
  sub_2543504F4(&qword_27F5E19F8, _s13DataModelCRDTVMa);
  sub_2543A2668();
  v23 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_broadcaster;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1990, &qword_2543AE660);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v6 + v23) = sub_2543A2068();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A00, &qword_2543AE678);
  sub_2543A26C8();
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0u;
  *(v0 + 472) = 0;
  MEMORY[0x259C09190](0, v0 + 440);
  sub_2542DE3E4(v0 + 440, &qword_27F5E1A08, &qword_2543AE680);
  swift_beginAccess();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A10, &qword_2543AE688);
  OUTLINED_FUNCTION_26(v27);
  (*(v28 + 16))(v31, v6 + v30, v27);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v27);
  (*(v32 + 104))(v33, *MEMORY[0x277CFB6A8], v34);
  *(v6 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_multicast) = sub_2543A2558();

  return MEMORY[0x2822009F8](sub_25434ED98, v6, 0);
}

uint64_t sub_25434ED98()
{
  v1 = v0[78];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[68];
  v7 = *(v0[69] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_multicast);
  v0[63] = &_s15SyncManagerLinkVN;
  v0[64] = sub_25434F864();
  v0[60] = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  sub_2543A2538();
  sub_2542DE3E4(v6, &qword_27F5DFA88, &unk_2543ACB80);
  __swift_destroy_boxed_opaque_existential_0(v0 + 60);

  v8 = v0[1];
  v9 = v0[69];

  return v8(v9);
}

uint64_t sub_25434EED4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_25434EEF8, v2, 0);
}

uint64_t sub_25434EEF8()
{
  OUTLINED_FUNCTION_28();
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_broadcaster);
  *(v0 + 16) = *(v0 + 32);

  sub_2543A2048();

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_25434EF80(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A10, &qword_2543AE688);
  OUTLINED_FUNCTION_17_7(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v10);
  v12 = &v16[-v11];
  v17 = a1;
  v13 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_capsule;
  swift_beginAccess();
  sub_2543A2618();
  swift_endAccess();
  v14 = *(v3 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_multicast);
  (*(v7 + 16))(v12, v3 + v13, v1);
  sub_2543A2518();
  return (*(v7 + 8))(v12, v1);
}

uint64_t sub_25434F0DC(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v38 = a1;
  v2 = sub_2543A2428();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0368, &qword_2543A9910);
  v6 = *(*(v34 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for CarrySettings.CarryDevice(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s20CarryDeviceMergeableVMa(0);
  v21 = *(*(v20 - 1) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v33 - v25;
  sub_25435042C(v37, v19);
  sub_25430366C(v19, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v20) == 1)
  {
    sub_2542DE3E4(v15, &qword_27F5E0370, &qword_2543B1EB0);
    swift_getKeyPath();
    v27 = _s29AppleConnectSettingsMergeableVMa(0);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v27);
    sub_254350378(v11, v9, &qword_27F5E0368, &qword_2543A9910);
    sub_25434F5E4();
    sub_2543A2188();
    sub_2542DE3E4(v11, &qword_27F5E0368, &qword_2543A9910);
    v28 = v20[5];
    sub_2543036DC(v40);
    memcpy(v39, v40, sizeof(v39));
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27F5E0388, &unk_2543A9920);
    sub_25434F698(&qword_27F5E19C0, &dword_27F5E0388, &unk_2543A9920, sub_25434F714);
    sub_2543A2188();
    v29 = v20[6];
    sub_25434F768();
    sub_25434F7BC();
    sub_2543A2478();
    v30 = v20[7];
    memset(v39, 0, 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E19E0, &qword_2543AE670);
    sub_25434F698(&qword_27F5E19E8, &qword_27F5E19E0, &qword_2543AE670, sub_25434F810);
    sub_2543A2188();
    *&v24[v20[8]] = MEMORY[0x277D84F98];
    return sub_2543A2638();
  }

  else
  {
    sub_254350490(v15, v26);
    swift_getKeyPath();
    v32 = sub_2543A2628();
    sub_2543504F4(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);
    sub_2543A23B8();
    (*(v35 + 8))(v5, v36);
    v32(v40, 0);

    return sub_25435053C(v26);
  }
}

unint64_t sub_25434F5E4()
{
  result = qword_27F5E19B0;
  if (!qword_27F5E19B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0368, &qword_2543A9910);
    sub_2543504F4(&qword_27F5E19B8, _s29AppleConnectSettingsMergeableVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E19B0);
  }

  return result;
}

uint64_t sub_25434F698(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_25434F714()
{
  result = qword_27F5E19C8;
  if (!qword_27F5E19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E19C8);
  }

  return result;
}

unint64_t sub_25434F768()
{
  result = qword_27F5E19D0;
  if (!qword_27F5E19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E19D0);
  }

  return result;
}

unint64_t sub_25434F7BC()
{
  result = qword_27F5E19D8;
  if (!qword_27F5E19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E19D8);
  }

  return result;
}

unint64_t sub_25434F810()
{
  result = qword_27F5E19F0;
  if (!qword_27F5E19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E19F0);
  }

  return result;
}

unint64_t sub_25434F864()
{
  result = qword_27F5E1A18;
  if (!qword_27F5E1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1A18);
  }

  return result;
}

uint64_t sub_25434F8B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t CarrySettings.SyncManager.deinit()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_capsule;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A10, &qword_2543AE688);
  OUTLINED_FUNCTION_26(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_broadcaster);

  v5 = *(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_multicast);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CarrySettings.SyncManager.__deallocating_deinit()
{
  CarrySettings.SyncManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for CarrySettings.SyncManager()
{
  result = qword_27F5E1A20;
  if (!qword_27F5E1A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25434FA6C()
{
  sub_25434FCD0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of CarrySettings.SyncManager.__allocating_init(withModel:)(uint64_t a1)
{
  v4 = *(v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25434E430;

  return v8(a1);
}

void sub_25434FCD0()
{
  if (!qword_27F5E1A30)
  {
    _s13DataModelCRDTVMa(255);
    sub_2543504F4(&qword_27F5E19F8, _s13DataModelCRDTVMa);
    v0 = sub_2543A2658();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5E1A30);
    }
  }
}

uint64_t sub_25434FD64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25434FD84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_25434FDBC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-v10 - 8];
  v12 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_254350200(v3, v16);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  sub_254350280(v16, (v13 + 4));
  v13[5] = a1;
  v13[6] = a2;
  sub_2542D61B4(a1, a2);
  sub_25434DFA4();
}

uint64_t sub_25434FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25434FEF4, 0, 0);
}

uint64_t sub_25434FEF4()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_254350004;
    v5 = v0[3];
    v4 = v0[4];

    return sub_25434EED4(v5, v4);
  }

  else
  {
    sub_2543503D8();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_27();

    return v8();
  }
}

uint64_t sub_254350004()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = *(v2 + 48);
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_254350164;
  }

  else
  {
    v7 = sub_254350108;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_254350108()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_254350164()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_254350238()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  swift_weakDestroy();
  sub_2542D7D40(v0[5], v0[6]);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2543502B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2542D32CC;
  OUTLINED_FUNCTION_59_2();

  return sub_25434FED0(v7, v8, v9, v10, v4, v5);
}

uint64_t sub_254350378(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_26(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2543503D8()
{
  result = qword_27F5E1A38;
  if (!qword_27F5E1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1A38);
  }

  return result;
}

uint64_t sub_25435042C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarrySettings.CarryDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254350490(uint64_t a1, uint64_t a2)
{
  v4 = _s20CarryDeviceMergeableVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2543504F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25435053C(uint64_t a1)
{
  v2 = _s20CarryDeviceMergeableVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254350598()
{
  result = qword_27F5DF370;
  if (!qword_27F5DF370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5DF370);
  }

  return result;
}

_BYTE *_s9SyncErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2543506A8);
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

unint64_t sub_2543506E4()
{
  result = qword_27F5E1A48;
  if (!qword_27F5E1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1A48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_28(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_4_15()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

void OUTLINED_FUNCTION_6_20()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_13_10(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_24_5()
{

  return sub_2543A2B58();
}

uint64_t OUTLINED_FUNCTION_25_4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return swift_unknownObjectRetain();
}

uint64_t static CustomStringConvertibleViaMirror.description(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2543A3758();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 40);
  v74 = a3;
  v17 = v16(a2, a3);
  countAndFlagsBits = 0;
  object = 0;
  v73 = a2;
  if (v17)
  {
    v20 = *(v74 + 8);
    v21 = static Logging.className.getter();
    v23 = v22;
    *&v86 = v21;
    *(&v86 + 1) = v22;
    DynamicType = swift_getDynamicType();
    if (dynamic_cast_existential_0_class_conditional(DynamicType))
    {
      (*(v12 + 16))(v15, a1, a2);
      v25 = sub_2543A35F8();
      (*(v12 + 8))(v15, a2);
      swift_unknownObjectRelease();
      v83._countAndFlagsBits = 0;
      v83._object = 0xE000000000000000;
      MEMORY[0x259C093D0](32, 0xE100000000000000);
      v80 = v25;
      sub_2543A3358();
      MEMORY[0x259C093D0](v83._countAndFlagsBits, v83._object);

      v23 = *(&v86 + 1);
      v21 = v86;
    }

    v83._countAndFlagsBits = 60;
    v83._object = 0xE100000000000000;
    MEMORY[0x259C093D0](v21, v23);

    sub_2543A2768();
    MEMORY[0x259C093D0](62, 0xE100000000000000);

    object = v83._object;
    countAndFlagsBits = v83._countAndFlagsBits;
    a2 = v73;
  }

  *&v66 = countAndFlagsBits;
  *(&v66 + 1) = object;
  *(&v87 + 1) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v86);
  (*(v12 + 16))(boxed_opaque_existential_1, a1, a2);
  sub_2543A3738();
  sub_2543A3748();
  (*(v7 + 8))(v11, v6);
  sub_2543A3348();
  v27 = 0;
  v77 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2543A3428();
    if (!*(&v88 + 1))
    {
      break;
    }

    v83 = v86;
    v84[0] = v87;
    v84[1] = v88;
    sub_254351280(&v83, v73, v74, &v80);
    sub_2542F5064(&v83, &qword_27F5E1A60, &qword_2543AE860);
    v28 = v80;
    if (v80)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = *(v77 + 16);
        sub_2542F0F3C();
        v77 = v32;
      }

      v29 = *(v77 + 16);
      if (v29 >= *(v77 + 24) >> 1)
      {
        sub_2542F0F3C();
        v77 = v33;
      }

      v30 = v77;
      *(v77 + 16) = v29 + 1;
      *(v30 + 8 * v29 + 32) = v28;
      v27 = 0;
    }

    else
    {
    }
  }

  v65[1] = 0;

  v34 = v73;
  v35 = (*(v74 + 24))(v73);
  v36 = *(v35 + 16);
  if (v36)
  {
    v85 = MEMORY[0x277D84F90];
    sub_2542F15C8();
    v76 = v85;
    v39 = sub_254351C80(v35);
    v40 = 0;
    v41 = v35 + 64;
    v68 = v37;
    v67 = v35 + 72;
    v71 = xmmword_2543A7DE0;
    v69 = v36;
    v70 = v35 + 64;
    while ((v39 & 0x8000000000000000) == 0 && v39 < 1 << *(v35 + 32))
    {
      v42 = v39 >> 6;
      if ((*(v41 + 8 * (v39 >> 6)) & (1 << v39)) == 0)
      {
        goto LABEL_37;
      }

      if (*(v35 + 36) != v37)
      {
        goto LABEL_38;
      }

      v75 = v37;
      v72 = v38;
      v43 = (*(v35 + 48) + 16 * v39);
      v45 = *v43;
      v44 = v43[1];
      sub_2542D62F0(*(v35 + 56) + 32 * v39, &v87);
      v83._countAndFlagsBits = v45;
      v83._object = v44;
      sub_2542F50C4(&v87, v84);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC90, &unk_2543AE850);
      v46 = swift_allocObject();
      *(v46 + 16) = v71;
      v27 = &unk_2543B4A10;
      sub_2542F4FFC(&v83, &v80, &qword_27F5DFC80, &unk_2543B4A10);
      v47 = v81;
      *(v46 + 32) = v80;
      *(v46 + 40) = v47;
      v78 = 0;
      v79 = 0xE000000000000000;
      sub_2543A2768();
      sub_2543A3358();
      v48 = v79;
      *(v46 + 48) = v78;
      *(v46 + 56) = v48;
      sub_2542F5064(&v83, &qword_27F5DFC80, &unk_2543B4A10);
      __swift_destroy_boxed_opaque_existential_0(v82);
      v49 = v76;
      v85 = v76;
      v50 = *(v76 + 16);
      if (v50 >= *(v76 + 24) >> 1)
      {
        sub_2542F15C8();
        v49 = v85;
      }

      *(v49 + 16) = v50 + 1;
      *(v49 + 8 * v50 + 32) = v46;
      v51 = 1 << *(v35 + 32);
      if (v39 >= v51)
      {
        goto LABEL_39;
      }

      v41 = v70;
      v52 = *(v70 + 8 * v42);
      if ((v52 & (1 << v39)) == 0)
      {
        goto LABEL_40;
      }

      v76 = v49;
      if (*(v35 + 36) != v75)
      {
        goto LABEL_41;
      }

      v53 = v52 & (-2 << (v39 & 0x3F));
      if (v53)
      {
        v51 = __clz(__rbit64(v53)) | v39 & 0x7FFFFFFFFFFFFFC0;
        v54 = v69;
      }

      else
      {
        v55 = v42 << 6;
        v56 = v42 + 1;
        v57 = (v67 + 8 * v42);
        v54 = v69;
        while (v56 < (v51 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            sub_254351BC8(v39, v75, v72 & 1);
            v51 = __clz(__rbit64(v58)) + v55;
            goto LABEL_32;
          }
        }

        sub_254351BC8(v39, v75, v72 & 1);
      }

LABEL_32:
      v38 = 0;
      ++v40;
      v39 = v51;
      v37 = v68;
      if (v40 == v54)
      {

        v34 = v73;
        v60 = v76;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);

    sub_2542F5064(&v83, &qword_27F5E1A60, &qword_2543AE860);

    __break(1u);
  }

  else
  {

    v60 = MEMORY[0x277D84F90];
LABEL_35:
    *&v86 = v77;
    sub_2542F1628(v60);
    v61 = v86;
    v86 = v66;
    *&v87 = 0;
    *(&v87 + 1) = v61;
    *&v88 = 0;
    v62._countAndFlagsBits = (*(v74 + 32))(v34);
    v89.value = 0;
    v89.is_nil = 1;
    v63 = TableFormatter.Table.string(colSeparator:maxColWidth:)(v62, v89);

    swift_bridgeObjectRelease_n();

    v83 = v63;
    v80 = 10;
    v81 = 0xE100000000000000;
    v78 = 2105354;
    v79 = 0xE300000000000000;
    sub_254351B20();
    sub_254351B74();
    sub_2543A2FB8();

    return v86;
  }

  return result;
}

uint64_t sub_254351280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_2542F4FFC(a1, &v44, &qword_27F5E1A60, &qword_2543AE860);
  if (*(&v44 + 1))
  {
    v37 = v44;
    v34[0] = 0xD000000000000012;
    v34[1] = 0x80000002543B9B00;
    sub_254351B74();
    sub_2543A2EE8();

    __swift_destroy_boxed_opaque_existential_0(v45);
    v9 = MEMORY[0x259C09390](v40, *(&v40 + 1), v41, v42);
    v11 = v10;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v45);
    v11 = 0xE100000000000000;
    v9 = 63;
  }

  if ((*(a3 + 64))(v9, v11, a2, a3))
  {
    v46 = v4;
    if (((*(a3 + 48))(a2, a3) & 1) == 0)
    {

      v11 = 0xE100000000000000;
      v9 = 45;
    }

    sub_2543A2898();
    v12 = sub_2543A2918();

    if (v12)
    {
      sub_2542F4FFC(a1, &v44, &qword_27F5E1A60, &qword_2543AE860);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A78, &unk_2543B4A30);
      if (swift_dynamicCast())
      {
        sub_2542DA8C0(&v37, &v40);
        *&v44 = 40;
        *(&v44 + 1) = 0xE100000000000000;
        __swift_project_boxed_opaque_existential_0(&v40, v42);
        *&v37 = sub_2543A2EF8();
        v13 = sub_2543A35A8();
        MEMORY[0x259C093D0](v13);

        MEMORY[0x259C093D0](41, 0xE100000000000000);
        v15 = *(&v44 + 1);
        v14 = v44;
        __swift_destroy_boxed_opaque_existential_0(&v40);
LABEL_31:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC90, &unk_2543AE850);
        result = swift_allocObject();
        *(result + 16) = xmmword_2543A7DE0;
        *(result + 32) = v9;
        *(result + 40) = v11;
        *(result + 48) = v14;
        *(result + 56) = v15;
        goto LABEL_32;
      }

      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      sub_2542F5064(&v37, &qword_27F5E1A80, &unk_2543AE8C0);
    }

    sub_2542F4FFC(a1, &v44, &qword_27F5E1A60, &qword_2543AE860);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A68, &unk_2543B4A20);
    if (swift_dynamicCast())
    {
      sub_2542DA8C0(&v37, &v40);
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_2543004CC(&v40, &v44);
      sub_2542F4FFC(&v44, &v37, &qword_27F5E1A70, &unk_2543AE8B0);
      if (*(&v38 + 1))
      {
        sub_2542DA8C0(&v37, v34);
        sub_2543004CC(v34, v33);
        v17 = sub_2543A2888();
        v19 = v18;
        __swift_destroy_boxed_opaque_existential_0(v34);
      }

      else
      {
        v17 = 7104878;
        v19 = 0xE300000000000000;
      }

      sub_2542F5064(&v44, &qword_27F5E1A70, &unk_2543AE8B0);
      MEMORY[0x259C093D0](v17, v19);

      v14 = v35;
      v15 = v36;
      goto LABEL_24;
    }

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_2542F5064(&v37, &qword_27F5E1A70, &unk_2543AE8B0);
    sub_2542F4FFC(a1, &v44, &qword_27F5E1A60, &qword_2543AE860);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A78, &unk_2543B4A30);
    if (swift_dynamicCast())
    {
      sub_2542DA8C0(&v37, &v40);
      sub_2542F4FFC(a1, &v44, &qword_27F5E1A60, &qword_2543AE860);

      sub_2542F50C4(v45, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E1A98, &unk_2543AE8E0);
      if (!swift_dynamicCast())
      {
        v24 = v42;
        v25 = v43;
        v26 = __swift_project_boxed_opaque_existential_0(&v40, v42);
        MEMORY[0x28223BE20](v26);
        v32[2] = a2;
        v32[3] = v24;
        v32[4] = a3;
        v32[5] = v25;
        v32[6] = sub_254351AB4;
        v32[7] = 0;
        *&v44 = sub_254369100(sub_254351CC0, v32, v24, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC28, &unk_2543A81D0);
        sub_2542F16FC();
        v14 = sub_2543A2818();
        v15 = v28;

        goto LABEL_24;
      }

      __swift_destroy_boxed_opaque_existential_0(&v37);
      __swift_destroy_boxed_opaque_existential_0(&v40);
    }

    else
    {
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      sub_2542F5064(&v37, &qword_27F5E1A80, &unk_2543AE8C0);
    }

    if ((*(a3 + 56))(a2, a3))
    {
      sub_2542F4FFC(a1, &v44, &qword_27F5E1A60, &qword_2543AE860);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A88, &qword_2543AE8D0);
      if (swift_dynamicCast())
      {
        sub_2542DA8C0(&v37, &v40);
        v20 = v42;
        v21 = v43;
        __swift_project_boxed_opaque_existential_0(&v40, v42);
        *&v44 = sub_2543145EC(v20, v21);
        *(&v44 + 1) = v22;
        v14 = sub_2543A2888();
        v15 = v23;
LABEL_24:
        __swift_destroy_boxed_opaque_existential_0(&v40);
        goto LABEL_31;
      }

      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      sub_2542F5064(&v37, &qword_27F5E1A90, &qword_2543AE8D8);
    }

    v35 = 0;
    v36 = 0xE000000000000000;
    sub_2542F4FFC(a1, &v44, &qword_27F5E1A60, &qword_2543AE860);

    sub_2542F50C4(v45, &v40);
    sub_2542F4FFC(&v40, &v37, &unk_27F5DFA00, &unk_2543A76C0);
    if (*(&v38 + 1))
    {
      sub_2542F50C4(&v37, v34);
      sub_2542D62F0(v34, v33);
      v29 = sub_2543A2888();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_0(v34);
    }

    else
    {
      v29 = 7104878;
      v31 = 0xE300000000000000;
    }

    sub_2542F5064(&v40, &unk_27F5DFA00, &unk_2543A76C0);
    MEMORY[0x259C093D0](v29, v31);

    v14 = v35;
    v15 = v36;
    goto LABEL_31;
  }

  result = 0;
LABEL_32:
  *a4 = result;
  return result;
}

uint64_t sub_254351AB4()
{
  MEMORY[0x259C093D0](8237, 0xE200000000000000);
  sub_2543A3358();
  return 0;
}

unint64_t sub_254351B20()
{
  result = qword_27F5E1A50;
  if (!qword_27F5E1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1A50);
  }

  return result;
}

unint64_t sub_254351B74()
{
  result = qword_27F5E1A58;
  if (!qword_27F5E1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1A58);
  }

  return result;
}

uint64_t sub_254351BC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254351C80(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_2543A3198();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_254351CC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 56);
  return sub_25439C9E0(a1, *(v2 + 48), *(v2 + 40), a2);
}

uint64_t sub_254351D78()
{
  v0 = swift_allocObject();
  sub_254351DD0();
  return v0;
}

void sub_254351DD0()
{
  OUTLINED_FUNCTION_88();
  v31 = v1;
  v32 = v2;
  v29 = *v0;
  v30 = v3;
  v28 = sub_2543A3068();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  v11 = v10 - v9;
  v12 = sub_2543A3058();
  OUTLINED_FUNCTION_19_0(v12);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9();
  v16 = sub_2543A2168();
  v17 = OUTLINED_FUNCTION_110(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  swift_defaultActor_initialize();
  sub_2542D6250(0, &qword_27F5DF2B0, 0x277D85C78);
  sub_2543A2158();
  sub_254357C2C(&qword_27F5DF2B8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF2C0, &qword_2543A6870);
  sub_2543094F8();
  sub_2543A3188();
  (*(v5 + 104))(v11, *MEMORY[0x277D85260], v28);
  v0[17] = sub_2543A3078();
  v0[18] = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  v20 = v29[10];
  v21 = v29[11];
  v22 = v29[12];
  type metadata accessor for RapportTransport();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_38_1();
  type metadata accessor for ObservationManager();
  v0[19] = sub_25431D0D8();
  sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  v23 = *(v21 + 8);
  sub_254357F48();
  v0[20] = sub_25437D744();
  v0[21] = v24;
  v0[22] = v25;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_38_1();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_92_0();
  sub_2543A2A88();
  OUTLINED_FUNCTION_6_21();
  sub_254357C2C(v26, v27);
  v0[23] = sub_2543A2748();
  OUTLINED_FUNCTION_92_0();
  sub_2543A2A88();
  v0[24] = sub_2543A2748();
  v0[14] = v30;
  v0[15] = v31;
  v0[16] = v32;
  OUTLINED_FUNCTION_86();
}

uint64_t sub_254352190()
{
  *(v1 + 256) = v0;
  *(v1 + 264) = *v0;
  return OUTLINED_FUNCTION_17_6(sub_2543521D4, v0);
}

uint64_t sub_2543521D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  v12 = v10[32];
  v11 = v10[33];
  v10[30] = v12;
  v13 = v11[10];
  v14 = v11[11];
  v15 = v11[12];
  v10[34] = type metadata accessor for RapportTransport();
  v16 = sub_2542DF684() & 1;
  *(v10 + 296) = v16;
  v17._countAndFlagsBits = 0x6574617669746361;
  v17._object = 0xEA00000000002928;
  Logging.ulog(_:extended:)(v17, v16);
  v18 = *(v12 + 144);
  [v18 setDispatchQueue_];
  [v18 setControlFlags_];
  v10[22] = sub_254352810();
  v10[23] = v19;
  v10[18] = MEMORY[0x277D85DD0];
  v10[19] = 1107296256;
  v10[20] = sub_254352850;
  v10[21] = &block_descriptor_6;
  v20 = _Block_copy(v10 + 18);
  v21 = v10[23];

  [v18 setDeviceFoundHandler_];
  _Block_release(v20);
  v10[28] = sub_2543528B8();
  v10[29] = v22;
  v10[24] = MEMORY[0x277D85DD0];
  v10[25] = 1107296256;
  v10[26] = sub_254352850;
  v10[27] = &block_descriptor_71;
  v23 = _Block_copy(v10 + 24);
  v24 = v10[29];

  [v18 setDeviceLostHandler_];
  _Block_release(v23);
  sub_2543528F8();
  sub_254352AC8();
  v10[2] = v10;
  v10[3] = sub_25435247C;
  v25 = swift_continuation_init();
  v10[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF588, &qword_2543A6D40);
  v10[10] = MEMORY[0x277D85DD0];
  v10[11] = 1107296256;
  v10[12] = sub_2542C9210;
  v10[13] = &block_descriptor_74;
  v10[14] = v25;
  [v18 activateWithCompletion_];

  return MEMORY[0x282200938](v10 + 2, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_25435247C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  v3 = v2[6];
  v2[35] = v3;
  v4 = v2[32];
  if (v3)
  {
    v5 = sub_2543527AC;
  }

  else
  {
    v5 = sub_254352594;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_254352594()
{
  OUTLINED_FUNCTION_28();
  v1 = *(*(v0 + 256) + 152);
  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = sub_25435262C;
  v3 = *(v0 + 256);

  return sub_25431D598(v3);
}

uint64_t sub_25435262C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 288);
  v3 = *(v1 + 256);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_254352724()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  *(v0 + 248) = *(v0 + 256);
  v3._object = 0x80000002543B9DE0;
  v3._countAndFlagsBits = 0xD000000000000013;
  Logging.ulog(_:extended:)(v3, v1);
  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_2543527AC()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 280);
  swift_willThrow();
  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 280);

  return v2();
}

void sub_254352850(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2543528F8()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v13[0] = v0;
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  type metadata accessor for RapportTransport();
  v7 = sub_2542DF684();
  v8._countAndFlagsBits = 0xD000000000000018;
  v8._object = 0x80000002543B9E90;
  Logging.ulog(_:extended:)(v8, v7 & 1);
  v9 = v0[18];
  v10 = sub_2543A2858();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v3;
  v13[4] = sub_25435C29C;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_254358DC4;
  v13[3] = &block_descriptor_96;
  v12 = _Block_copy(v13);

  [v9 registerRequestID:v10 options:0 handler:v12];
  _Block_release(v12);
}

void sub_254352AC8()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v13[0] = v0;
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  type metadata accessor for RapportTransport();
  v7 = sub_2542DF684();
  v8._countAndFlagsBits = 0xD000000000000022;
  v8._object = 0x80000002543B9E00;
  Logging.ulog(_:extended:)(v8, v7 & 1);
  v9 = v0[18];
  v10 = sub_2543A2858();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v3;
  v13[4] = sub_25435C134;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_254358DC4;
  v13[3] = &block_descriptor_82;
  v12 = _Block_copy(v13);

  [v9 registerRequestID:v10 options:0 handler:v12];
  _Block_release(v12);
}

uint64_t sub_254352C98()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return OUTLINED_FUNCTION_17_6(sub_254352CDC, v0);
}

uint64_t sub_254352CDC()
{
  OUTLINED_FUNCTION_69_0();
  v23 = v0;
  v0[2] = v0[3];
  v1 = v0[4];
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  type metadata accessor for RapportTransport();
  v5 = sub_2542DF684();
  v6._object = 0xEC00000029286574;
  v7 = v5 & 1;
  v6._countAndFlagsBits = 0x6176697463616564;
  Logging.ulog(_:extended:)(v6, v7);
  v22[0] = MEMORY[0x277D84F90];
  sub_2542F1568();
  v8 = v22[0];
  v9 = 0x80000002543B9BC0;
  v10 = *(v22[0] + 16);
  v11 = *(v22[0] + 24) >> 1;
  v12 = v10 + 1;
  if (v11 <= v10)
  {
LABEL_12:
    sub_2542F1568();
    v8 = v22[0];
    v11 = *(v22[0] + 24) >> 1;
  }

  *(v8 + 16) = v12;
  v13 = v8 + 16 * v10;
  *(v13 + 32) = 0xD000000000000021;
  *(v13 + 40) = v9;
  v10 += 2;
  if (v11 <= v12)
  {
    sub_2542F1568();
    v8 = v22[0];
  }

  v9 = 0;
  v14 = 0;
  OUTLINED_FUNCTION_32_0();
  *(v8 + 16) = v10;
  v15 = v8 + 16 * v12;
  *(v15 + 32) = 0xD000000000000016;
  *(v15 + 40) = v16;
  v17 = *(v8 + 16);
  v18 = (v8 + 40);
  while (v17 != v14)
  {
    if (v14 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    v12 = v0[3];
    ++v14;
    v10 = *v18;
    v22[0] = *(v18 - 1);
    v22[1] = v10;
    sub_2543A2768();
    sub_254352EEC(v22, v12);

    v18 += 2;
  }

  v19 = v0[3];

  [*(v19 + 144) invalidate];
  OUTLINED_FUNCTION_27();

  return v20();
}

void sub_254352EEC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 144);
  v5 = sub_2543A2858();
  [v4 deregisterRequestID_];
}

void sub_254352F48()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = *(*v0 + 80);
  OUTLINED_FUNCTION_0_2();
  v43 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v49 = v0;
  OUTLINED_FUNCTION_32_0();
  v44 = v13;
  v45 = v12;
  v15 = [v14 description];
  v16 = sub_2543A2878();
  v18 = v17;

  MEMORY[0x259C093D0](v16, v18);

  v20 = v44;
  v19 = v45;
  v21 = *(v4 + 88);
  v22 = *(v4 + 96);
  OUTLINED_FUNCTION_45_0();
  v42 = v23;
  v24 = type metadata accessor for RapportTransport();
  v25 = sub_2542DF684() & 1;
  v26._countAndFlagsBits = v20;
  v26._object = v19;
  Logging.ulog(_:extended:)(v26, v25);

  v27 = v1[16];
  (v1[15])(v3);
  v49 = v1;
  OUTLINED_FUNCTION_57_1();
  sub_2543A3298();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000017);
  sub_2543A35C8();
  v28 = v44;
  v29 = v45;
  v41 = v21;
  v30 = sub_2542DF684();
  Logging.ulog(_:_:extended:)(20, v28, v29, v30 & 1, v24, &off_28664A398);

  v50 = v3;
  swift_beginAccess();
  v31 = sub_2542D6250(255, &qword_27F5E1B20, 0x277D44170);
  v32 = v41;
  v33 = *(v41 + 8);
  v34 = sub_254357F48();
  v44 = v5;
  v45 = v31;
  v35 = v42;
  v46 = v42;
  v47 = v33;
  v48 = v34;
  v36 = type metadata accessor for MemberConnectionCache();
  sub_25437DCA0(&v50, v11, v36);
  swift_endAccess();
  v37 = OUTLINED_FUNCTION_97();
  v49 = v1[23];
  MEMORY[0x28223BE20](v37);
  *(&v40 - 4) = v5;
  *(&v40 - 3) = v32;
  *(&v40 - 2) = v35;
  *(&v40 - 1) = v11;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_6_21();
  sub_254357C2C(v38, v39);
  OUTLINED_FUNCTION_38_1();
  sub_2543A27B8();
  sub_2543A2768();
  OUTLINED_FUNCTION_3_8();
  swift_getWitnessTable();
  sub_2543A29E8();

  (*(v43 + 8))(v11, v5);
  OUTLINED_FUNCTION_86();
}

void sub_254353390()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v3 = v2;
  v72 = v2;
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  v71 = &v67 - v9;
  v10 = v4[10];
  OUTLINED_FUNCTION_92_0();
  sub_2543A30C8();
  OUTLINED_FUNCTION_0_2();
  v67 = v12;
  v68 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  OUTLINED_FUNCTION_0_2();
  v75 = v18;
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v21);
  v69 = v23;
  v70 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v67 - v24;
  v81 = v0;
  OUTLINED_FUNCTION_32_0();
  v76 = 0xD000000000000016;
  v77 = v25;
  v26 = [v3 description];
  v27 = sub_2543A2878();
  v29 = v28;

  MEMORY[0x259C093D0](v27, v29);

  v31 = v76;
  v30 = v77;
  v32 = v4[11];
  v33 = v4[12];
  OUTLINED_FUNCTION_92_0();
  v34 = type metadata accessor for RapportTransport();
  v35 = sub_2542DF684() & 1;
  v36._countAndFlagsBits = v31;
  v36._object = v30;
  v74 = v34;
  v37 = v72;
  Logging.ulog(_:extended:)(v36, v35);

  v82 = v37;
  swift_beginAccess();
  v38 = sub_2542D6250(255, &qword_27F5E1B20, 0x277D44170);
  v39 = *(v32 + 8);
  v40 = sub_254357F48();
  v76 = v10;
  v77 = v38;
  v78 = v33;
  v79 = v39;
  v80 = v40;
  v41 = type metadata accessor for MemberConnectionCache();
  sub_25437E024(&v82, v41, v17);
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v17, 1, v10) == 1)
  {
    (*(v67 + 8))(v17, v68);
    v81 = v1;
    OUTLINED_FUNCTION_57_1();
    sub_2543A3298();

    OUTLINED_FUNCTION_32_0();
    v76 = 0xD000000000000020;
    v77 = v42;
    v43 = [v37 description];
    v44 = sub_2543A2878();
    v46 = v45;

    MEMORY[0x259C093D0](v44, v46);

    MEMORY[0x259C093D0](0x2074276E6143202ELL, 0xEE0065766F6D6572);
    v47 = v76;
    v48 = v77;
    v49 = v74;
    v50 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(60, v47, v48, v50 & 1, v49, &off_28664A398);
  }

  else
  {
    v51 = v75;
    v52 = *(v75 + 32);
    v68 = v75 + 32;
    v72 = v52;
    v53 = v73;
    v52();
    v54 = OUTLINED_FUNCTION_97();
    v81 = v1[24];
    MEMORY[0x28223BE20](v54);
    *(&v67 - 4) = v10;
    *(&v67 - 3) = v32;
    *(&v67 - 2) = v33;
    *(&v67 - 1) = v53;
    sub_2543A1F88();
    sub_2543A2C28();
    OUTLINED_FUNCTION_6_21();
    sub_254357C2C(v55, v56);
    OUTLINED_FUNCTION_38_1();
    sub_2543A27B8();
    sub_2543A2768();
    OUTLINED_FUNCTION_3_8();
    swift_getWitnessTable();
    sub_2543A29E8();

    v57 = sub_2543A2BB8();
    OUTLINED_FUNCTION_120_0(v71, v58, v59, v57);
    v60 = v51;
    v61 = *(v51 + 16);
    v62 = v70;
    v63 = v73;
    v61(v70, v73, v10);
    OUTLINED_FUNCTION_0_32();
    WitnessTable = swift_getWitnessTable();
    v65 = (*(v60 + 80) + 64) & ~*(v60 + 80);
    v66 = swift_allocObject();
    v66[2] = v1;
    v66[3] = WitnessTable;
    v66[4] = v10;
    v66[5] = v32;
    v66[6] = v33;
    v66[7] = v1;
    (v72)(v66 + v65, v62, v10);
    swift_retain_n();
    OUTLINED_FUNCTION_43_0();
    sub_2542CCD54();

    (*(v75 + 8))(v63, v10);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_254353988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = a1;
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  v12 = v11 - v10;
  v13 = sub_2543A2BD8();
  OUTLINED_FUNCTION_0_2();
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v18);
  v20 = v23 - v19;
  sub_2543A1F88();
  sub_2543A2C28();
  v21 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v6 + 16))(v12, a2, a3);
  sub_2543A2C08();
  return (*(v15 + 8))(v20, v13);
}

uint64_t sub_254353B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_254353B50, a4, 0);
}

uint64_t sub_254353B50()
{
  v1 = *(*(v0 + 16) + 152);
  *(v0 + 32) = v1;
  return OUTLINED_FUNCTION_17_6(sub_254353B70, v1);
}

uint64_t sub_254353B70()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_254325DAC();
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_254353BC8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = *(v0 + 152);

  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);

  v7 = *(v0 + 184);

  v8 = *(v0 + 192);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_254353C4C()
{
  sub_254353BC8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254353C90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return sub_254352190();
}

uint64_t sub_254353D1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return sub_254352C98();
}

uint64_t sub_254353E30()
{
  v1 = *(*v0 + 80);
  OUTLINED_FUNCTION_92_0();
  v2 = sub_2543A2BF8();
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  nullsub_1(v1);
  sub_2542FEED4(v7);
  return sub_2543A2C38();
}

uint64_t sub_254353EE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_254352190();
}

uint64_t sub_254353F74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_254352C98();
}

uint64_t sub_254354000()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_2543540C8();
}

uint64_t sub_2543540C8()
{
  OUTLINED_FUNCTION_28();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[13] = *v0;
  v7 = *(v4 - 8);
  v1[14] = v7;
  v8 = *(v7 + 64);
  v1[15] = OUTLINED_FUNCTION_146();
  v9 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_254354198()
{
  OUTLINED_FUNCTION_46_0();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v26 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v0[6] = v0[12];
  sub_2543A3298();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000001BLL);
  MEMORY[0x259C093D0](0x6567617373656D20, 0xE90000000000003DLL);
  sub_2543A35C8();
  v7 = OUTLINED_FUNCTION_12_15();
  MEMORY[0x259C093D0](v7 & 0xFFFFFFFFFFFFLL | 0x3D72000000000000, 0xE800000000000000);
  v8 = v3[10];
  sub_2543A35C8();
  v9 = v3[11];
  v10 = v3[12];
  type metadata accessor for RapportTransport();
  sub_2542DF684();
  v11._countAndFlagsBits = OUTLINED_FUNCTION_30_3();
  v11._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v11, v12);

  v13 = type metadata accessor for TransportRequestObject();
  (*(v2 + 16))(v1, v5, v4);
  v14 = OUTLINED_FUNCTION_42_2();
  v16 = sub_25435F378(v14, v15, v26);
  v0[16] = v16;
  v0[5] = v13;
  v0[2] = v16;
  v17 = v16;
  v18 = swift_task_alloc();
  v0[17] = v18;
  *v18 = v0;
  v18[1] = sub_254354384;
  v19 = v0[12];
  v20 = v0[9];
  OUTLINED_FUNCTION_128();

  return sub_254359B14(v21, v22, v23);
}

uint64_t sub_254354384()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 136);
  *v4 = *v1;
  v3[18] = v7;
  v3[19] = v8;
  v3[20] = v0;

  if (v0)
  {
    v9 = v3[12];
    v10 = sub_254354674;
  }

  else
  {
    v11 = v3[12];
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v10 = sub_2543544A0;
    v9 = v11;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2543544A0()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[10];
  v4 = v0[11];
  sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_45_0();
  type metadata accessor for RapportResponse();
  v7 = sub_2543A3038();
  if (v2)
  {
    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[16];
LABEL_3:
    sub_2542D7D40(v8, v9);

    v11 = v0[15];

    OUTLINED_FUNCTION_27();
    goto LABEL_6;
  }

  v13 = v7;
  v15 = v0[18];
  v14 = v0[19];
  v10 = v0[16];
  if (!v7)
  {
    sub_25435A638();
    v19 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_76_2(v19, v20);
    v8 = v15;
    v9 = v14;
    goto LABEL_3;
  }

  v16 = v0[15];
  v17 = v0[7];

  sub_2542D7D40(v15, v14);
  (*(*(AssociatedTypeWitness - 8) + 16))(v17, &v13[*((*MEMORY[0x277D85000] & *v13) + 0x60)], AssociatedTypeWitness);

  OUTLINED_FUNCTION_25();
LABEL_6:

  return v12();
}

uint64_t sub_254354674()
{
  OUTLINED_FUNCTION_28();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_2543546E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_2543547A8();
}

uint64_t sub_2543547A8()
{
  OUTLINED_FUNCTION_28();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  OUTLINED_FUNCTION_15_4();
  v1[11] = v7;
  v1[12] = *(v8 + 80);
  OUTLINED_FUNCTION_45_0();
  v9 = sub_2543A30C8();
  v1[13] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[14] = v10;
  v12 = *(v11 + 64);
  v1[15] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_16_8();
  v1[16] = v13;
  v15 = *(v14 + 64);
  v1[17] = OUTLINED_FUNCTION_146();
  v16 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2543548D0()
{
  OUTLINED_FUNCTION_46_0();
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v27 = v0[7];
  OUTLINED_FUNCTION_97();
  v5 = v4[20];
  v6 = v4[21];
  v7 = v4[22];
  sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  v8 = *(v3 + 96);
  v9 = *(*(v3 + 88) + 8);
  sub_254357F48();
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  OUTLINED_FUNCTION_51_3();
  sub_25437DB58();

  OUTLINED_FUNCTION_14_0(v1);
  if (v10)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_254357FB0();
    v11 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_4_16(v11, v12);
    v13 = v0[17];
    v14 = v0[15];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[16] + 32))(v0[17], v0[15], v0[12]);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[18] = v17;
  *v17 = v18;
  v17[1] = sub_254354AB4;
  v19 = v0[17];
  v20 = v0[9];
  v21 = v0[10];
  v22 = v0[8];
  v23 = v0[5];
  v24 = v0[6];
  OUTLINED_FUNCTION_128();

  return sub_2543540C8();
}

uint64_t sub_254354AB4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_254354BC8()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[15];
  (*(v0[16] + 8))(v0[17], v0[12]);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_254354C48()
{
  OUTLINED_FUNCTION_28();
  (*(v0[16] + 8))(v0[17], v0[12]);
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_254354CC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_254354D90();
}

uint64_t sub_254354D90()
{
  OUTLINED_FUNCTION_28();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  OUTLINED_FUNCTION_15_4();
  v1[12] = v7;
  v1[13] = *(v8 + 80);
  OUTLINED_FUNCTION_45_0();
  v9 = sub_2543A30C8();
  v1[14] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[15] = v10;
  v12 = *(v11 + 64);
  v1[16] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_16_8();
  v1[17] = v13;
  v15 = *(v14 + 64);
  v1[18] = OUTLINED_FUNCTION_146();
  v16 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_254354EB8()
{
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000020);
  v3 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v3, 0xE600000000000000);
  v4 = sub_2543A37B8();
  MEMORY[0x259C093D0](v4);

  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_93_1();
  v5 = *(*(v0 + 88) + 8);
  OUTLINED_FUNCTION_91_0();
  swift_getAssociatedTypeWitness();
  sub_2543A35C8();
  v6 = *(v0 + 96);
  OUTLINED_FUNCTION_45_0();
  type metadata accessor for RapportTransport();
  sub_2542DF684();
  v7 = OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_89_2(v7);

  OUTLINED_FUNCTION_97();
  v8 = v2[20];
  v9 = v2[21];
  v10 = v2[22];
  sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  sub_254357F48();
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  OUTLINED_FUNCTION_31_4();

  OUTLINED_FUNCTION_52_1(v2);
  if (v11)
  {
    (*(v1[15] + 8))(v1[16], v1[14]);
    sub_254357FB0();
    v12 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_4_16(v12, v13);
    v14 = v1[18];
    v15 = v1[16];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_98_0();

    __asm { BRAA            X1, X16 }
  }

  v18 = OUTLINED_FUNCTION_63_2();
  v19(v18);
  v20 = *(v8 + 152);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[19] = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_69_3(v21);
  OUTLINED_FUNCTION_98_0();

  return sub_25432866C();
}

uint64_t sub_254355124()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 152);
  *v4 = *v2;
  *(v3 + 160) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_254355238()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_254355310();
}

uint64_t sub_254355310()
{
  OUTLINED_FUNCTION_28();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[7] = v7;
  OUTLINED_FUNCTION_15_4();
  v1[14] = v8;
  v1[15] = *(v9 + 80);
  OUTLINED_FUNCTION_45_0();
  v10 = sub_2543A30C8();
  v1[16] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[17] = v11;
  v13 = *(v12 + 64);
  v1[18] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_16_8();
  v1[19] = v14;
  v16 = *(v15 + 64);
  v1[20] = OUTLINED_FUNCTION_146();
  v17 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_25435543C()
{
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000002ALL);
  v2 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v2, 0xE600000000000000);
  v3 = sub_2543A37B8();
  MEMORY[0x259C093D0](v3);

  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_92_1();
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_97_0();
  sub_2543A35C8();
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_60_2(v4, v5, v6, v7, v8, v9, v10, v11, v38, v40, v42, v44);
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_95_1();
  sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_77_2();
  sub_2542DF684();
  v12 = OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_91_1(v12, v13, v14, v15, v16, v17, v18, v19, v39, v41, v43, v45, v46, v47, v48);

  OUTLINED_FUNCTION_97();
  v20 = v0[20];
  v21 = v0[21];
  v22 = v0[22];
  sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  v23 = sub_254357F48();
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  OUTLINED_FUNCTION_28_3();

  OUTLINED_FUNCTION_52_1(v23);
  if (v24)
  {
    (*(v1[17] + 8))(v1[18], v1[16]);
    sub_254357FB0();
    v25 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_4_16(v25, v26);
    v27 = v1[20];
    v28 = v1[18];

    v29 = v1[1];
    OUTLINED_FUNCTION_127();

    __asm { BRAA            X1, X16 }
  }

  v32 = OUTLINED_FUNCTION_71_2();
  v33(v32);
  v34 = *(v20 + 152);
  v35 = swift_task_alloc();
  v1[21] = v35;
  *v35 = v1;
  OUTLINED_FUNCTION_68_1(v35);
  OUTLINED_FUNCTION_127();

  return sub_2543289EC();
}

uint64_t sub_2543556E0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 168);
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2543557F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_2543558BC();
}

uint64_t sub_2543558BC()
{
  OUTLINED_FUNCTION_28();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  OUTLINED_FUNCTION_15_4();
  v1[12] = v7;
  v1[13] = *(v8 + 80);
  OUTLINED_FUNCTION_45_0();
  v9 = sub_2543A30C8();
  v1[14] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[15] = v10;
  v12 = *(v11 + 64);
  v1[16] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_16_8();
  v1[17] = v13;
  v15 = *(v14 + 64);
  v1[18] = OUTLINED_FUNCTION_146();
  v16 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2543559E4()
{
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000020);
  v3 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v3, 0xE600000000000000);
  v4 = sub_2543A37B8();
  MEMORY[0x259C093D0](v4);

  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_93_1();
  v5 = *(*(v0 + 88) + 8);
  OUTLINED_FUNCTION_91_0();
  swift_getAssociatedTypeWitness();
  sub_2543A35C8();
  v6 = *(v0 + 96);
  OUTLINED_FUNCTION_45_0();
  type metadata accessor for RapportTransport();
  sub_2542DF684();
  v7 = OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_89_2(v7);

  OUTLINED_FUNCTION_97();
  v8 = v2[20];
  v9 = v2[21];
  v10 = v2[22];
  sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  sub_254357F48();
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  OUTLINED_FUNCTION_31_4();

  OUTLINED_FUNCTION_52_1(v2);
  if (v11)
  {
    (*(v1[15] + 8))(v1[16], v1[14]);
    sub_254357FB0();
    v12 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_4_16(v12, v13);
    v14 = v1[18];
    v15 = v1[16];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_98_0();

    __asm { BRAA            X1, X16 }
  }

  v18 = OUTLINED_FUNCTION_63_2();
  v19(v18);
  v20 = *(v8 + 152);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[19] = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_69_3(v21);
  OUTLINED_FUNCTION_98_0();

  return sub_254328EDC();
}

uint64_t sub_254355C50()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 152);
  *v4 = *v2;
  *(v3 + 160) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_254355D64()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[16];
  (*(v0[17] + 8))(v0[18], v0[13]);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_254355DE4()
{
  OUTLINED_FUNCTION_28();
  (*(v0[17] + 8))(v0[18], v0[13]);
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[16];

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_254355E64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_254355F3C();
}

uint64_t sub_254355F3C()
{
  OUTLINED_FUNCTION_28();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[7] = v7;
  OUTLINED_FUNCTION_15_4();
  v1[14] = v8;
  v1[15] = *(v9 + 80);
  OUTLINED_FUNCTION_45_0();
  v10 = sub_2543A30C8();
  v1[16] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[17] = v11;
  v13 = *(v12 + 64);
  v1[18] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_16_8();
  v1[19] = v14;
  v16 = *(v15 + 64);
  v1[20] = OUTLINED_FUNCTION_146();
  v17 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_254356068()
{
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000002ALL);
  v2 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v2, 0xE600000000000000);
  v3 = sub_2543A37B8();
  MEMORY[0x259C093D0](v3);

  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_92_1();
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_97_0();
  sub_2543A35C8();
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_60_2(v4, v5, v6, v7, v8, v9, v10, v11, v38, v40, v42, v44);
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_95_1();
  sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_77_2();
  sub_2542DF684();
  v12 = OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_91_1(v12, v13, v14, v15, v16, v17, v18, v19, v39, v41, v43, v45, v46, v47, v48);

  OUTLINED_FUNCTION_97();
  v20 = v0[20];
  v21 = v0[21];
  v22 = v0[22];
  sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  v23 = sub_254357F48();
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  OUTLINED_FUNCTION_28_3();

  OUTLINED_FUNCTION_52_1(v23);
  if (v24)
  {
    (*(v1[17] + 8))(v1[18], v1[16]);
    sub_254357FB0();
    v25 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_4_16(v25, v26);
    v27 = v1[20];
    v28 = v1[18];

    v29 = v1[1];
    OUTLINED_FUNCTION_127();

    __asm { BRAA            X1, X16 }
  }

  v32 = OUTLINED_FUNCTION_71_2();
  v33(v32);
  v34 = *(v20 + 152);
  v35 = swift_task_alloc();
  v1[21] = v35;
  *v35 = v1;
  OUTLINED_FUNCTION_68_1(v35);
  OUTLINED_FUNCTION_127();

  return sub_254329C2C();
}

uint64_t sub_25435630C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 168);
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_254356420()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[18];
  (*(v0[19] + 8))(v0[20], v0[15]);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_2543564A0()
{
  OUTLINED_FUNCTION_28();
  (*(v0[19] + 8))(v0[20], v0[15]);
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[18];

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_254356520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2543565DC;

  return sub_2543566CC(a1, a2, a3, a4);
}

uint64_t sub_2543565DC()
{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_2543566CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v5[11] = *v4;
  v5[12] = *v4;
  return OUTLINED_FUNCTION_17_6(sub_254356740, v4);
}

uint64_t sub_254356740()
{
  v1 = *(v0 + 96);
  v18 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v16 = *(v0 + 48);
  *(v0 + 16) = v2;
  v17 = *(v0 + 64);
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD00000000000001CLL, 0x80000002543B9BF0);
  MEMORY[0x259C093D0](0x3D65746164707520, 0xE800000000000000);
  sub_2543A35C8();
  MEMORY[0x259C093D0](0x6576726573626F20, 0xEB000000005B7372);
  v4 = v1[10];
  v5 = v1[12];
  *(v0 + 24) = sub_2543A2E28();
  v6 = sub_2543A35A8();
  MEMORY[0x259C093D0](v6);

  MEMORY[0x259C093D0](15709, 0xE200000000000000);
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_91_0();
  sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  sub_2543A35D8();
  v7 = v1[11];
  OUTLINED_FUNCTION_91_0();
  type metadata accessor for RapportTransport();
  sub_2542DF684();
  v8._countAndFlagsBits = OUTLINED_FUNCTION_30_3();
  v8._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v8, v9);

  OUTLINED_FUNCTION_0_32();
  swift_getWitnessTable();
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *(v10 + 16) = v17;
  *(v10 + 32) = v3;
  *(v10 + 40) = v2;
  *(v10 + 48) = v16;
  *(v10 + 56) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B50, &qword_2543AEB98);
  v11 = *(MEMORY[0x277D859B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 112) = v12;
  *v12 = v13;
  v12[1] = sub_2543569FC;
  OUTLINED_FUNCTION_98_0();

  return MEMORY[0x282200740]();
}

uint64_t sub_2543569FC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {
    v9 = v3[10];
    v10 = sub_254356B28;
  }

  else
  {
    v11 = v3[13];
    v12 = v3[10];

    v10 = sub_254356B0C;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_254356B28()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 120);

  return v2();
}

uint64_t sub_254356B90(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254356BCC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_32();
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254356BF8(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_254356C78(uint64_t a1, uint64_t *a2)
{
  v25 = a1;
  v23 = *a2;
  v22 = *(v23 + 80);
  v3 = sub_2543A2C28();
  v4 = sub_2543A30C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v24 = &v21 - v6;
  v7 = sub_2543A1F88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  sub_2543A1F78();
  v14 = *(v8 + 16);
  v14(v11, v13, v7);
  v15 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = v23;
  *(v16 + 2) = v22;
  *(v16 + 3) = *(v17 + 88);
  *(v16 + 4) = *(v17 + 96);
  *(v16 + 5) = a2;
  (*(v8 + 32))(&v16[v15], v11, v7);

  v18 = v25;
  sub_2543A2BE8();
  v14(v11, v13, v7);
  v19 = v24;
  (*(*(v3 - 8) + 16))(v24, v18, v3);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v3);
  swift_beginAccess();
  sub_254357C2C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_254356F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_254356FB4, a4, 0);
}

uint64_t sub_254356FB4()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 16);
  sub_25435700C(*(v0 + 24));
  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_25435700C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v24 = sub_2543A2C28();
  v5 = sub_2543A30C8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v23 = &v21 - v7;
  v8 = sub_2543A1F88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v22 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v1;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_2543A3298();

  v25 = 0xD000000000000036;
  v26 = 0x80000002543B86E0;
  v12 = MEMORY[0x277CC95F0];
  sub_254357C2C(&qword_27F5DF378, MEMORY[0x277CC95F0]);
  v13 = sub_2543A35A8();
  MEMORY[0x259C093D0](v13);

  v15 = v25;
  v14 = v26;
  v16 = *(v3 + 88);
  v17 = *(v3 + 96);
  type metadata accessor for RapportTransport();
  v18 = sub_2542DF684() & 1;
  v19._countAndFlagsBits = v15;
  v19._object = v14;
  Logging.ulog(_:extended:)(v19, v18);

  (*(v9 + 16))(v22, a1, v8);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
  swift_beginAccess();
  sub_254357C2C(&qword_27F5DF518, v12);
  sub_2543A27B8();
  sub_2543A27E8();
  return swift_endAccess();
}

uint64_t sub_2543572EC(uint64_t a1, uint64_t *a2)
{
  v25 = a1;
  v23 = *a2;
  v22 = *(v23 + 80);
  v3 = sub_2543A2C28();
  v4 = sub_2543A30C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v24 = &v21 - v6;
  v7 = sub_2543A1F88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  sub_2543A1F78();
  v14 = *(v8 + 16);
  v14(v11, v13, v7);
  v15 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = v23;
  *(v16 + 2) = v22;
  *(v16 + 3) = *(v17 + 88);
  *(v16 + 4) = *(v17 + 96);
  *(v16 + 5) = a2;
  (*(v8 + 32))(&v16[v15], v11, v7);

  v18 = v25;
  sub_2543A2BE8();
  v14(v11, v13, v7);
  v19 = v24;
  (*(*(v3 - 8) + 16))(v24, v18, v3);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v3);
  swift_beginAccess();
  sub_254357C2C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  return (*(v8 + 8))(v13, v7);
}

void sub_254357610()
{
  OUTLINED_FUNCTION_88();
  v24[1] = v0;
  v2 = v1;
  v4 = v3;
  v5 = *v3;
  v6 = *v3;
  v7 = sub_2543A1F88();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v16);
  v18 = v24 - v17;
  v19 = sub_2543A2BB8();
  OUTLINED_FUNCTION_120_0(v18, v20, v21, v19);
  (*(v9 + 16))(v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v7);
  v22 = *(v9 + 80);
  OUTLINED_FUNCTION_83_1();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = *(v6 + 80);
  *(v23 + 48) = *(v5 + 96);
  *(v23 + 56) = v4;
  (*(v9 + 32))(v23 + v2, v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  OUTLINED_FUNCTION_43_0();
  sub_2542CCD54();

  OUTLINED_FUNCTION_86();
}

uint64_t sub_254357808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_254357828, a4, 0);
}

uint64_t sub_254357828()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 16);
  sub_25435794C(*(v0 + 24));
  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_254357880()
{
  OUTLINED_FUNCTION_40();
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_110(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_83_1();
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_17(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_10_15(v8);

  return sub_254357808(v10, v11, v12, v13, v14);
}

uint64_t sub_25435794C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v24 = sub_2543A2C28();
  v5 = sub_2543A30C8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v23 = &v21 - v7;
  v8 = sub_2543A1F88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v22 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v1;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_2543A3298();

  v25 = 0xD000000000000030;
  v26 = 0x80000002543B86A0;
  v12 = MEMORY[0x277CC95F0];
  sub_254357C2C(&qword_27F5DF378, MEMORY[0x277CC95F0]);
  v13 = sub_2543A35A8();
  MEMORY[0x259C093D0](v13);

  v15 = v25;
  v14 = v26;
  v16 = *(v3 + 88);
  v17 = *(v3 + 96);
  type metadata accessor for RapportTransport();
  v18 = sub_2542DF684() & 1;
  v19._countAndFlagsBits = v15;
  v19._object = v14;
  Logging.ulog(_:extended:)(v19, v18);

  (*(v9 + 16))(v22, a1, v8);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
  swift_beginAccess();
  sub_254357C2C(&qword_27F5DF518, v12);
  sub_2543A27B8();
  sub_2543A27E8();
  return swift_endAccess();
}

uint64_t sub_254357C2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_2()
{
  sub_2543A1F88();
  OUTLINED_FUNCTION_0_2();
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = *(v0 + 40);

  v6 = OUTLINED_FUNCTION_67_2();
  v7(v6);
  v8 = OUTLINED_FUNCTION_54_0();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

void sub_254357D48()
{
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_110(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 40);
  sub_254357610();
}

uint64_t objectdestroy_8Tm()
{
  sub_2543A1F88();
  OUTLINED_FUNCTION_0_2();
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 56);

  v7 = OUTLINED_FUNCTION_67_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_54_0();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_254357E7C()
{
  OUTLINED_FUNCTION_40();
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_110(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_83_1();
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_17(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_10_15(v8);

  return sub_254356F94(v10, v11, v12, v13, v14);
}

unint64_t sub_254357F48()
{
  result = qword_27F5E1B28;
  if (!qword_27F5E1B28)
  {
    sub_2542D6250(255, &qword_27F5E1B20, 0x277D44170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1B28);
  }

  return result;
}

unint64_t sub_254357FB0()
{
  result = qword_27F5E1B30;
  if (!qword_27F5E1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1B30);
  }

  return result;
}

uint64_t sub_254358004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = v19;
  v8[33] = v20;
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  v10 = *a4;
  v8[34] = *a4;
  v11 = *(v10 + 80);
  v8[35] = v11;
  v12 = sub_2543A30C8();
  v8[36] = v12;
  v13 = *(v12 - 8);
  v8[37] = v13;
  v14 = *(v13 + 64) + 15;
  v8[38] = swift_task_alloc();
  v15 = *(v11 - 8);
  v8[39] = v15;
  v16 = *(v15 + 64) + 15;
  v8[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254358174, a4, 0);
}

uint64_t sub_254358388()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 328);
  *v4 = *v2;
  *(v3 + 336) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 216);
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_25435849C()
{
  OUTLINED_FUNCTION_46_0();
  v32 = v0;
  v1 = v0[42];
  v2 = v0[33];
  v3 = sub_254358850(v0 + 15);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
    v6 = v0[39];
    v5 = v0[40];
    v7 = v0[35];
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[27];
    v29 = v1;
    v30 = 0;
    v31 = 0;
    v11 = v1;
    sub_25435889C(&v29);
    sub_25435C2A4(v29, v30, v31);
    OUTLINED_FUNCTION_139();
    v9();

    v12 = *(v6 + 8);
    v13 = OUTLINED_FUNCTION_42_2();
    v14(v13);
  }

  else
  {
    v15 = v3;
    v16 = v4;
    v18 = v0[39];
    v17 = v0[40];
    v19 = v0[35];
    v21 = v0[30];
    v20 = v0[31];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B40, &unk_2543AEB68);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_23_4(inited, xmmword_2543A7E00);
    sub_2543A3228();
    inited[6].n128_u64[0] = MEMORY[0x277CC9318];
    inited[4].n128_u64[1] = v15;
    inited[5].n128_u64[0] = v16;
    v23 = OUTLINED_FUNCTION_42_2();
    sub_2542D61B4(v23, v24);
    sub_2543A2748();
    OUTLINED_FUNCTION_139();
    v21();

    v25 = OUTLINED_FUNCTION_42_2();
    sub_2542D7D40(v25, v26);
    (*(v18 + 8))(v17, v19);
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  }

  OUTLINED_FUNCTION_73_2();

  OUTLINED_FUNCTION_27();

  return v27();
}

uint64_t sub_25435867C()
{
  OUTLINED_FUNCTION_46_0();
  v14 = v0;
  __swift_deallocate_boxed_opaque_existential_1(v0 + 15);
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[35];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[27];
  v11 = v1;
  v12 = 0;
  v13 = 0;
  v8 = v1;
  sub_25435889C(&v11);
  sub_25435C2A4(v11, v12, v13);
  OUTLINED_FUNCTION_139();
  v6();

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_73_2();

  OUTLINED_FUNCTION_27();

  return v9();
}

void sub_254358778(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2543A2878();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2543587E0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_2543A2858();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setIdentifier_];
}

void *sub_254358850(void *a1)
{
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_0(a1, v2);
  v4 = v1[11];
  v5 = v1[12];
  return sub_25435996C(v3, v1[10], v2);
}

uint64_t sub_25435889C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B40, &unk_2543AEB68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2543A7E00;
  sub_2543A3228();
  v5 = sub_254365704();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B48, &qword_2543AEB78);
  *(inited + 72) = v5;
  return sub_2543A2748();
}

uint64_t sub_254358980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for TransportRequestObject();
  v13 = sub_254358AE4(v12, a1, a2, v12);
  sub_254358FB8(v13 + OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_request, v14, v15, a3, a4, a5, a6, &unk_28664A628, sub_2542DA8C0, &unk_2543AEC60, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_254358AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v15 = 0u;
    v16 = 0u;
    goto LABEL_9;
  }

  v4 = a4;
  v8 = *MEMORY[0x277D442C8];
  sub_2543A2878();
  sub_2543A3228();
  sub_25439499C(a3, &v15);
  sub_25435A68C(&v14);
  if (!*(&v16 + 1))
  {
LABEL_9:
    sub_25435BEC8(&v15, &unk_27F5DFA00, &unk_2543A76C0);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_25435A638();
    swift_allocError();
    *v10 = xmmword_2543AE910;
    v11 = 6;
LABEL_11:
    *(v10 + 16) = v11;
    swift_willThrow();
    return v4;
  }

  sub_2543A3228();
  sub_25439499C(a2, &v15);
  sub_25435A68C(&v14);
  if (!*(&v16 + 1))
  {

    sub_25435BEC8(&v15, &unk_27F5DFA00, &unk_2543A76C0);
LABEL_15:
    sub_25435A638();
    swift_allocError();
    *v10 = xmmword_2543AE900;
    v11 = 4;
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_15;
  }

  v4 = sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
  v9 = sub_2543A3038();
  if (v5)
  {
    sub_2542D7D40(0x4474736575716572, 0xEB00000000617461);
  }

  else
  {
    v4 = v9;
    if (!v9)
    {

      sub_25435A638();
      swift_allocError();
      *v13 = xmmword_2543AE8F0;
      *(v13 + 16) = 6;
      swift_willThrow();
    }

    sub_2542D7D40(0x4474736575716572, 0xEB00000000617461);
  }

  return v4;
}

uint64_t sub_254358DC4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_2543A2718();
  if (a3)
  {
    a3 = sub_2543A2718();
  }

  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v7(v8, a3, sub_25435C174, v10);
}

void sub_254358ED0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_2543A2708();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_2543A2708();
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_2543A1E78();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, v6);
}

void sub_254358FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(_BYTE *, void *), uint64_t a22)
{
  OUTLINED_FUNCTION_88();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v51 = v34;
  v52 = a22;
  v35 = *v22;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v39);
  v41 = &v50 - v40;
  v42 = sub_2543A2BB8();
  OUTLINED_FUNCTION_120_0(v41, v43, v44, v42);
  sub_25432B3CC(v33, v53);
  v45 = v35[10];
  v46 = v35[11];
  v47 = v35[12];
  type metadata accessor for RapportTransport();
  OUTLINED_FUNCTION_0_32();
  WitnessTable = swift_getWitnessTable();
  v49 = swift_allocObject();
  v49[2] = v23;
  v49[3] = WitnessTable;
  v49[4] = v23;
  v49[5] = v31;
  v49[6] = v29;
  v49[7] = v27;
  v49[8] = v25;
  a21(v53, v49 + 9);
  v49[14] = v51;
  swift_retain_n();
  sub_2543A2768();

  OUTLINED_FUNCTION_43_0();
  sub_2542CCD54();

  OUTLINED_FUNCTION_86();
}

uint64_t sub_25435913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = v19;
  v8[33] = v20;
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  v10 = *a4;
  v8[34] = *a4;
  v11 = *(v10 + 80);
  v8[35] = v11;
  v12 = sub_2543A30C8();
  v8[36] = v12;
  v13 = *(v12 - 8);
  v8[37] = v13;
  v14 = *(v13 + 64) + 15;
  v8[38] = swift_task_alloc();
  v15 = *(v11 - 8);
  v8[39] = v15;
  v16 = *(v15 + 64) + 15;
  v8[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2543592AC, a4, 0);
}

uint64_t sub_25435946C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 328);
  *v4 = *v2;
  *(v3 + 336) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 216);
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_254359580()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[42];
  v2 = v0[33];
  v0[18] = &type metadata for ObservationUpdateAcknowlegement;
  v0[19] = sub_2542E1B40();
  v3 = sub_254358850(v0 + 15);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
    v6 = v0[30];
    v5 = v0[31];
    sub_25435A638();
    v7 = OUTLINED_FUNCTION_100();
    *v8 = v1;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    v9 = v1;
    v10 = OUTLINED_FUNCTION_43_0();
    v6(v10);
  }

  else
  {
    v11 = v3;
    v12 = v4;
    v14 = v0[30];
    v13 = v0[31];
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B40, &unk_2543AEB68);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_23_4(inited, xmmword_2543A7E00);
    sub_2543A3228();
    inited[6].n128_u64[0] = MEMORY[0x277CC9318];
    inited[4].n128_u64[1] = v11;
    inited[5].n128_u64[0] = v12;
    v16 = OUTLINED_FUNCTION_42_2();
    sub_2542D61B4(v16, v17);
    sub_2543A2748();
    OUTLINED_FUNCTION_139();
    v14();

    v18 = OUTLINED_FUNCTION_42_2();
    sub_2542D7D40(v18, v19);
  }

  (*(v0[39] + 8))(v0[40], v0[35]);
  OUTLINED_FUNCTION_73_2();

  OUTLINED_FUNCTION_27();

  return v20();
}

uint64_t sub_254359738()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[42];
  v3 = v0[30];
  v2 = v0[31];
  sub_25435A638();
  v4 = OUTLINED_FUNCTION_100();
  *v5 = v1;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = v1;
  v7 = OUTLINED_FUNCTION_43_0();
  v3(v7);

  (*(v0[39] + 8))(v0[40], v0[35]);
  OUTLINED_FUNCTION_73_2();

  OUTLINED_FUNCTION_27();

  return v8();
}

uint64_t sub_254359804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for TransportObservationUpdateObject();
  v13 = sub_254358AE4(updated, a1, a2, updated);
  sub_254358FB8(v13 + OBJC_IVAR____TtC15HomePodSettings32TransportObservationUpdateObject_observationUpdate, v14, v15, a3, a4, a5, a6, &unk_28664A5B0, sub_2542DA8C0, &unk_2543AEC10, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, vars0, vars8);
}

void *sub_25435996C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  type metadata accessor for RapportResponse();
  (*(v5 + 16))(v8, a1, a3);
  v10 = sub_2542C6F64(v8);
  v16[0] = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v16];

  v12 = v16[0];
  if (v11)
  {
    v13 = sub_2543A1EF8();
  }

  else
  {
    v13 = v12;
    sub_2543A1E88();

    swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_254359B14(uint64_t a1, char a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v4 + 384) = a3;
  *(v4 + 392) = v3;
  *(v4 + 512) = a2;
  *(v4 + 376) = a1;
  v5 = *v3;
  *(v4 + 400) = *v3;
  *(v4 + 408) = *(*(v5 + 88) + 8);
  *(v4 + 416) = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 424) = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  *(v4 + 432) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 440) = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_254359C78, v3, 0);
}

uint64_t sub_254359C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  v71 = *MEMORY[0x277D85DE8];
  v17 = *(v16 + 408);
  v18 = *(v16 + 416);
  v19 = *(v16 + 392);
  v20 = *(v16 + 400);
  v21 = *(v16 + 384);
  OUTLINED_FUNCTION_97();
  v22 = v19[20];
  v23 = v19[21];
  v24 = v19[22];
  sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  v25 = *(v20 + 96);
  v26 = sub_254357F48();
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  OUTLINED_FUNCTION_51_3();
  sub_25437D87C();

  v27 = *(v16 + 352);
  *(v16 + 448) = v27;
  if (v27)
  {
    v28 = *(v16 + 376);
    v29 = objc_opt_self();
    __swift_project_boxed_opaque_existential_0(v28, v28[3]);
    v30 = sub_2543A35F8();
    *(v16 + 360) = 0;
    v31 = [v29 archivedDataWithRootObject:v30 requiringSecureCoding:1 error:v16 + 360];
    swift_unknownObjectRelease();
    v32 = *(v16 + 360);
    if (v31)
    {
      v33 = *(v16 + 392);
      v34 = *(v16 + 512);
      v35 = sub_2543A1EF8();
      v37 = v36;

      *(v16 + 456) = v35;
      *(v16 + 464) = v37;
      v38 = *(v33 + 144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B40, &unk_2543AEB68);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2543A7E00;
      *(v16 + 288) = 0x4474736575716572;
      *(v16 + 296) = 0xEB00000000617461;
      sub_2543A3228();
      *(inited + 96) = MEMORY[0x277CC9318];
      *(inited + 72) = v35;
      *(inited + 80) = v37;
      sub_2542D61B4(v35, v37);
      *(v16 + 472) = sub_2543A2748();
      v40 = [v27 effectiveIdentifier];
      sub_2543A2878();
      v42 = v41;

      *(v16 + 480) = v42;
      v43 = swift_task_alloc();
      *(v16 + 488) = v43;
      *v43 = v16;
      v43[1] = sub_25435A074;
      v44 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_48();

      return sub_254341D0C(v45, v46, v47, v48, v49, v50);
    }

    v60 = v32;
    sub_2543A1E88();

    swift_willThrow();
  }

  else
  {
    v54 = *(v16 + 432);
    v53 = *(v16 + 440);
    v55 = *(v16 + 416);
    v56 = *(v16 + 424);
    v57 = *(v16 + 408);
    v58 = *(v16 + 384);
    a10 = 0;
    a11 = 0xE000000000000000;
    sub_2543A32A8();
    sub_2543A35C8();
    (*(v54 + 8))(v53, v56);
    sub_25435A638();
    OUTLINED_FUNCTION_100();
    *v59 = 0;
    *(v59 + 8) = 0xE000000000000000;
    *(v59 + 16) = 2;
    swift_willThrow();
  }

  v61 = *(v16 + 440);

  OUTLINED_FUNCTION_27();
  v62 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_48();

  return v64(v63, v64, v65, v66, v67, v68, v69, v70, v26, a10, a11, a12, v71, a14, a15, a16);
}

uint64_t sub_25435A074()
{
  OUTLINED_FUNCTION_89();
  v3 = v2;
  v19 = *MEMORY[0x277D85DE8];
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v7 = *(v6 + 488);
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v4 + 496) = v0;

  if (v0)
  {
    v10 = *(v4 + 392);
    v11 = *MEMORY[0x277D85DE8];
    v12 = sub_25435A550;
  }

  else
  {
    v14 = *(v4 + 472);
    v13 = *(v4 + 480);
    v15 = *(v4 + 392);
    v16 = *(v4 + 512);

    *(v4 + 504) = v3;

    v17 = *MEMORY[0x277D85DE8];
    v12 = sub_25435A228;
    v10 = v15;
  }

  return MEMORY[0x2822009F8](v12, v10, 0);
}

uint64_t sub_25435A228()
{
  OUTLINED_FUNCTION_46_0();
  v28 = v0;
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 504);
  if (v1)
  {
    *(v0 + 336) = 0x726F727265;
    *(v0 + 344) = 0xE500000000000000;
    sub_2543A2768();
    sub_2543A3228();
    sub_25439499C(v1, (v0 + 200));

    sub_25435A68C(v0 + 160);
    if (*(v0 + 224))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B48, &qword_2543AEB78);
      if (swift_dynamicCast())
      {
        sub_254365960(*(v0 + 368), v25);
        v2 = v26;
        if (v26 != 255)
        {
          v4 = *(v0 + 456);
          v3 = *(v0 + 464);
          v5 = *(v0 + 448);
          v7 = v25[0];
          v6 = v25[1];

          sub_25435A638();
          OUTLINED_FUNCTION_100();
          *v8 = v7;
          *(v8 + 8) = v6;
          *(v8 + 16) = v2;
LABEL_16:
          swift_willThrow();
          v20 = OUTLINED_FUNCTION_82_2();
          sub_2542D7D40(v20, v21);

          v22 = *(v0 + 440);

          OUTLINED_FUNCTION_27();
          v24 = *MEMORY[0x277D85DE8];

          return v23();
        }
      }

      goto LABEL_8;
    }
  }

  else
  {
    *(v0 + 216) = 0u;
    *(v0 + 200) = 0u;
  }

  sub_25435BEC8(v0 + 200, &unk_27F5DFA00, &unk_2543A76C0);
  if (!v1)
  {
    *(v0 + 248) = 0u;
    *(v0 + 232) = 0u;
    goto LABEL_14;
  }

LABEL_8:
  strcpy((v0 + 304), "responseData");
  *(v0 + 317) = 0;
  *(v0 + 318) = -5120;
  sub_2543A3228();
  sub_25439499C(v1, (v0 + 232));

  sub_25435A68C(v0 + 120);
  if (!*(v0 + 256))
  {
LABEL_14:
    sub_25435BEC8(v0 + 232, &unk_27F5DFA00, &unk_2543A76C0);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v18 = *(v0 + 456);
    v17 = *(v0 + 464);
    v5 = *(v0 + 448);
    sub_25435A638();
    OUTLINED_FUNCTION_100();
    *v19 = xmmword_2543AE920;
    *(v19 + 16) = 5;
    goto LABEL_16;
  }

  v9 = *(v0 + 456);
  v10 = *(v0 + 464);
  v11 = *(v0 + 440);

  sub_2542D7D40(v9, v10);
  v13 = *(v0 + 320);
  v12 = *(v0 + 328);

  v14 = *(v0 + 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14(v13, v12);
}

uint64_t sub_25435A550()
{
  OUTLINED_FUNCTION_40();
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v4 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 448);
  v6 = *(v0 + 512);

  sub_2542D7D40(v4, v3);

  v7 = *(v0 + 496);
  v8 = *(v0 + 440);

  OUTLINED_FUNCTION_27();
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

unint64_t sub_25435A638()
{
  result = qword_27F5E1B38;
  if (!qword_27F5E1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1B38);
  }

  return result;
}

uint64_t sub_25435A6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[18] = a3;
  v8[19] = a4;
  v8[16] = a1;
  v8[17] = a2;
  v11 = *a4;
  v8[24] = *a4;
  v12 = *(v11 + 80);
  v8[25] = v12;
  v13 = *(v12 - 8);
  v8[26] = v13;
  v8[27] = *(v13 + 64);
  v8[28] = swift_task_alloc();
  v14 = *(a7 - 8);
  v8[29] = v14;
  v8[30] = *(v14 + 64);
  v8[31] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0) - 8) + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B58, &unk_2543AEBA0);
  v8[34] = v16;
  v17 = *(v16 - 8);
  v8[35] = v17;
  v18 = *(v17 + 64) + 15;
  v8[36] = swift_task_alloc();
  v19 = *(*(sub_2543A30C8() - 8) + 64) + 15;
  v8[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25435A930, a4, 0);
}

uint64_t sub_25435A930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 + 144);
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = *(v16 + 192);
    v19 = *(v16 + 200);
    if (v17 < 0)
    {
      v20 = *(v16 + 144);
    }

    swift_unknownObjectRetain();
    sub_2543A31C8();
    v21 = *(v18 + 96);
    v22 = sub_2543A2E88();
    v17 = *(v16 + 16);
    v77 = *(v16 + 24);
    v30 = *(v16 + 32);
    v84 = *(v16 + 40);
    v31 = *(v16 + 48);
  }

  else
  {
    v32 = -1 << *(v17 + 32);
    v77 = v17 + 56;
    v33 = ~v32;
    v34 = -v32;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v31 = v35 & *(v17 + 56);
    v22 = sub_2543A2768();
    v30 = v33;
    v84 = 0;
  }

  v78 = (v16 + 56);
  v36 = *(v16 + 208);
  v85 = *(v16 + 192);
  v37 = (v30 + 64) >> 6;
  v80 = v37;
  v79 = *(v16 + 216) + 7;
  v82 = *(v16 + 232);
  v83 = v17;
  v81 = v36;
  v97 = v16;
  if (v17 < 0)
  {
    goto LABEL_12;
  }

  while (v31)
  {
    v38 = v84;
LABEL_19:
    v96 = (v31 - 1) & v31;
    (*(v36 + 16))(*(v16 + 296), *(v17 + 48) + *(v36 + 72) * (__clz(__rbit64(v31)) | (v38 << 6)), *(v16 + 200));
    while (1)
    {
      v42 = *(v16 + 296);
      v43 = *(v16 + 264);
      v87 = v43;
      v95 = *(v16 + 256);
      v44 = *(v16 + 248);
      v90 = *(v16 + 224);
      v91 = *(v16 + 240);
      v45 = *(v16 + 200);
      v94 = *(v16 + 184);
      v89 = *(v16 + 176);
      v46 = *(v16 + 168);
      v88 = *(v16 + 160);
      v93 = *(v97 + 152);
      __swift_storeEnumTagSinglePayload(v42, 0, 1, v45);
      sub_2543A3298();
      MEMORY[0x259C093D0](0xD000000000000039, 0x80000002543B9C30);
      OUTLINED_FUNCTION_82_2();
      sub_2543A35C8();
      sub_2542DF684();
      v47 = OUTLINED_FUNCTION_30_3();
      static Logging.ulog(_:extended:)(v47, 0xE000000000000000, v48, v46, &off_28664A398);

      v86 = sub_2543A2BB8();
      OUTLINED_FUNCTION_120_0(v43, v49, v50, v86);
      (*(v82 + 16))(v44, v88, v89);
      v51 = *(v36 + 32);
      v51(v90, v42, v45);
      v52 = (*(v82 + 80) + 80) & ~*(v82 + 80);
      v53 = (v91 + *(v36 + 80) + v52) & ~*(v36 + 80);
      v54 = swift_allocObject();
      v54[2] = 0;
      v92 = v54 + 2;
      v54[3] = 0;
      v54[4] = v45;
      v54[5] = v89;
      v54[6] = *(v85 + 88);
      v54[7] = *(v85 + 96);
      v54[8] = v94;
      v54[9] = v93;
      (*(v82 + 32))(v54 + v52, v44, v89);
      v51(v54 + v53, v90, v45);
      *(v54 + ((v79 + v53) & 0xFFFFFFFFFFFFFFF8)) = v46;
      sub_2542DA8D8(v87, v95);
      LODWORD(v45) = __swift_getEnumTagSinglePayload(v95, 1, v86);
      v16 = v97;

      v55 = *(v97 + 256);
      if (v45 == 1)
      {
        sub_25435BEC8(*(v97 + 256), &qword_27F5DF328, &qword_2543A68B0);
      }

      else
      {
        sub_2543A2BA8();
        OUTLINED_FUNCTION_19_0(v86);
        (*(v56 + 8))(v55, v86);
      }

      v36 = v81;
      if (*v92)
      {
        v57 = v54[3];
        v58 = *v92;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v59 = sub_2543A2B58();
        v61 = v60;
        swift_unknownObjectRelease();
      }

      else
      {
        v59 = 0;
        v61 = 0;
      }

      v62 = **(v97 + 136);

      if (v61 | v59)
      {
        v63 = v78;
        *v78 = 0;
        v78[1] = 0;
        *(v97 + 72) = v59;
        *(v97 + 80) = v61;
      }

      else
      {
        v63 = 0;
      }

      v17 = v83;
      v64 = *(v97 + 264);
      *(v97 + 88) = 1;
      *(v97 + 96) = v63;
      *(v97 + 104) = v62;
      swift_task_create();

      v22 = sub_25435BEC8(v64, &qword_27F5DF328, &qword_2543A68B0);
      v37 = v80;
      v31 = v96;
      if ((v83 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_12:
      v39 = sub_2543A31F8();
      v40 = *(v16 + 296);
      if (!v39)
      {
        goto LABEL_31;
      }

      v96 = v31;
      sub_2543A35E8();
      swift_unknownObjectRelease();
    }
  }

  v41 = v84;
  while (1)
  {
    v38 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      return MEMORY[0x2822004E8](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    if (v38 >= v37)
    {
      break;
    }

    v31 = *(v77 + 8 * v38);
    ++v41;
    if (v31)
    {
      v84 = v38;
      goto LABEL_19;
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_120_0(*(v16 + 296), v23, v24, *(v16 + 200));
  sub_2542D6060();
  v65 = *(v16 + 288);
  v66 = *(v16 + 200);
  v67 = **(v16 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A2CB8();
  v68 = *(v85 + 88);
  v69 = *(v85 + 96);
  type metadata accessor for RapportTransport();
  OUTLINED_FUNCTION_0_32();
  WitnessTable = swift_getWitnessTable();
  v71 = MEMORY[0x277D84F90];
  *(v16 + 304) = WitnessTable;
  *(v16 + 312) = v71;
  v72 = *(v16 + 152);
  v73 = *(MEMORY[0x277D85828] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v16 + 320) = v74;
  *v74 = v75;
  v22 = OUTLINED_FUNCTION_15_8(v74);

  return MEMORY[0x2822004E8](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_25435AF90()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  v9 = *(v3 + 152);
  if (v0)
  {
    v10 = sub_25435B2DC;
  }

  else
  {
    v10 = sub_25435B08C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_25435B08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  if (*(v16 + 328) == 1)
  {
    v17 = *(v16 + 312);
    v18 = *(v16 + 296);
    v19 = *(v16 + 256);
    v56 = v19;
    v57 = *(v16 + 248);
    v58 = *(v16 + 224);
    v20 = *(v16 + 168);
    v21 = *(v16 + 128);
    (*(*(v16 + 280) + 8))(*(v16 + 288), *(v16 + 272));
    sub_2543A3298();

    OUTLINED_FUNCTION_32_0();
    v59 = v22;
    *(v16 + 120) = *(v17 + 16);
    v23 = sub_2543A35A8();
    MEMORY[0x259C093D0](v23);

    MEMORY[0x259C093D0](0x736E6F7073657220, 0xEB000000002E7365);
    sub_2542DF684();
    v24 = OUTLINED_FUNCTION_30_3();
    static Logging.ulog(_:extended:)(v24, v59, v25, v20, &off_28664A398);

    *v21 = v17;

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_48();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v56, v57, v58, 0xD00000000000001FLL, v59, a14, a15, a16);
  }

  else
  {
    v35 = *(v16 + 312);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v16 + 312);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v53 = *(v37 + 16);
      sub_2542F1228();
      v37 = v54;
    }

    v38 = *(v37 + 16);
    v39 = v38 + 1;
    if (v38 >= *(v37 + 24) >> 1)
    {
      sub_2542F1228();
      v37 = v55;
    }

    *(v37 + 16) = v39;
    *(v16 + 312) = v37;
    v40 = *(v16 + 304);
    v41 = *(v16 + 152);
    v42 = *(MEMORY[0x277D85828] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v16 + 320) = v43;
    *v43 = v44;
    OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_48();

    return MEMORY[0x2822004E8](v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_25435B2DC()
{
  OUTLINED_FUNCTION_89();
  v1 = v0[39];
  v2 = v0[37];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v6 = v0[28];
  (*(v0[35] + 8))(v0[36], v0[34]);

  v7 = v0[14];

  OUTLINED_FUNCTION_27();

  return v8();
}

uint64_t sub_25435B3AC()
{
  OUTLINED_FUNCTION_89();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v10 = v0[6];
  v9 = v0[7];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_17(v11);
  *v12 = v13;
  v12[1] = sub_2542DB160;

  return sub_25435A6E0(v4, v2, v7, v8, v10, v9, v5, v6);
}

uint64_t sub_25435B47C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = *a4;
  v12 = swift_task_alloc();
  v8[7] = v12;
  *v12 = v8;
  v12[1] = sub_25435B570;

  return sub_25435B7AC(v12, a5, a6, a8, v15);
}

uint64_t sub_25435B570()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_25435B670()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_2543A3298();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000024);
  sub_2543A3358();
  v4 = OUTLINED_FUNCTION_12_15();
  MEMORY[0x259C093D0](v4 & 0xFFFFFFFFFFFFLL | 0x3D72000000000000, 0xE800000000000000);
  v5 = *(v2 + 80);
  sub_2543A35C8();
  v6 = v0[2];
  v7 = v0[3];
  OUTLINED_FUNCTION_42_2();
  sub_2542DF684();
  v8 = OUTLINED_FUNCTION_30_3();
  static Logging.ulog(_:extended:)(v8, v7, v9, v1, &off_28664A398);

  OUTLINED_FUNCTION_25();

  return v10();
}

uint64_t sub_25435B788()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 64);
  return v2();
}

uint64_t sub_25435B7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[6] = a2;
  v7 = *(a4 - 8);
  v6[11] = v7;
  v8 = *(v7 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25435B868, v5, 0);
}

uint64_t sub_25435B868()
{
  OUTLINED_FUNCTION_40();
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  updated = type metadata accessor for TransportObservationUpdateObject();
  (*(v2 + 16))(v1, v5, v4);
  v7 = sub_254396620(v1, v4, v3);
  v0[13] = v7;
  v0[5] = updated;
  v0[2] = v7;
  v8 = v7;
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_25435B970;
  v10 = v0[10];
  v11 = v0[7];

  return sub_254359B14((v0 + 2), 0, v11);
}

uint64_t sub_25435B970()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 112);
  *v4 = *v1;
  v3[15] = v7;
  v3[16] = v8;
  v3[17] = v0;

  if (v0)
  {
    v9 = v3[10];
    v10 = sub_25435BBB4;
  }

  else
  {
    v11 = v3[10];
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v10 = sub_25435BA8C;
    v9 = v11;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_25435BA8C()
{
  OUTLINED_FUNCTION_89();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B60, &qword_2543AEBC8);
  v4 = sub_2543A3038();
  if (v2)
  {
    v5 = v0[15];
    v6 = v0[16];
    v7 = v0[13];
LABEL_3:
    sub_2542D7D40(v5, v6);

    v8 = v0[12];

    OUTLINED_FUNCTION_27();
    goto LABEL_6;
  }

  v10 = v4;
  v12 = v0[15];
  v11 = v0[16];
  v7 = v0[13];
  if (!v4)
  {
    sub_25435A638();
    v17 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_76_2(v17, v18);
    v5 = OUTLINED_FUNCTION_82_2();
    goto LABEL_3;
  }

  v13 = v0[12];

  v14 = OUTLINED_FUNCTION_82_2();
  sub_2542D7D40(v14, v15);

  OUTLINED_FUNCTION_25();
LABEL_6:

  return v9();
}

uint64_t sub_25435BBB4()
{
  OUTLINED_FUNCTION_28();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_25435BC20()
{
  OUTLINED_FUNCTION_88();
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  v5 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v7 = *(v1 - 8);
  v8 = (v5 + *(v6 + 64) + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 9);

  (*(v4 + 8))(&v0[v5], v2);
  (*(v7 + 8))(&v0[v8], v1);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_25435BD58()
{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_69_0();
  v2 = v0[4];
  v3 = v0[8];
  v4 = (*(*(v0[5] - 8) + 80) + 80) & ~*(*(v0[5] - 8) + 80);
  v5 = *(*(v0[5] - 8) + 64);
  OUTLINED_FUNCTION_0_2();
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[9];
  v12 = *(v0 + ((*(v8 + 64) + ((v4 + v7 + *(v6 + 80)) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_2542D32CC;
  OUTLINED_FUNCTION_72_2();

  return sub_25435B47C(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_25435BEC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_19_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_25435BF24(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_254353988(a1, v1[5], v1[2]);
}

uint64_t sub_25435BF44()
{
  v1 = v0[4];
  OUTLINED_FUNCTION_0_2();
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0[7];

  v8 = OUTLINED_FUNCTION_67_2();
  v9(v8);
  v10 = OUTLINED_FUNCTION_54_0();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_25435BFF0()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[3];
  v2 = *(*(v0[4] - 8) + 80);
  OUTLINED_FUNCTION_83_1();
  v3 = v0[2];
  v4 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_17(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_10_15(v6);

  return sub_254353B30(v8, v9, v10, v11, v12);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25435C0FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25435C13C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25435C180()
{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_36_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_24_6(v1);
  OUTLINED_FUNCTION_72_2();

  return sub_25435913C(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_25435C220()
{
  result = qword_27F5E1B68;
  if (!qword_27F5E1B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF998, &qword_2543AEC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1B68);
  }

  return result;
}

void sub_25435C2A4(void *a1, id a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:

      break;
    case 2:
    case 3:
    case 4:
    case 5:

      break;
    default:
      return;
  }
}

uint64_t objectdestroy_87Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  __swift_destroy_boxed_opaque_existential_0(v0 + 9);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_25435C354()
{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_36_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_24_6(v1);
  OUTLINED_FUNCTION_72_2();

  return sub_254358004(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x259C0AD90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1)
{
  *(a1 + 8) = sub_25435AF90;
  v2 = *(v1 + 288);
  v3 = *(v1 + 272);
  return v1 + 328;
}

uint64_t OUTLINED_FUNCTION_20_6()
{
  v2 = v0;
  v3 = v0[18];
  v4 = v0[15];
  v5 = v2[14];
  v7 = v2[11];
  v6 = v2[12];
  v8 = v2[9];
  v11 = v2[10];
  v9 = v2[8];
  v2[5] = v2[13];

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_23_4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 200) = 0x65736E6F70736572;
  result = v2 + 200;
  *(v2 + 208) = 0xEC00000061746144;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_25_5()
{
  v0[5] = v0[11];
  v7 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[7];
  v4 = v0[8];

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_28_3()
{

  return sub_25437DB58();
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return sub_25437D88C(v17, v18, v16, a13, a11, v13, a12, v15, v14);
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_25437DB58();
}

void OUTLINED_FUNCTION_36_2()
{
  v1 = v0[3];
  v8 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[14];
}

uint64_t OUTLINED_FUNCTION_37_3()
{
  v2 = v0[38];
  v3 = v0[34];
  v8 = v0[35];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[27];

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_46_3()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_49_0()
{
  result = v0[40];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[27];
  v6 = *(v0[39] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_61_2()
{
  result = v0[38];
  v2 = v0[36];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = *(v0[37] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_63_2()
{
  result = v0[18];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[11];
  v5 = *(v0[17] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[20];
  v4 = v2[11];
  v5 = v2[12];
  v6 = v2[10];
  result = v2[7];
  v8 = v2[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_69_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[18];
  v4 = v2[9];
  v5 = v2[10];
  result = v2[6];
  v7 = v2[7];
  return result;
}

uint64_t OUTLINED_FUNCTION_71_2()
{
  result = v0[20];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[13];
  v5 = *(v0[19] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_73_2()
{
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
}

uint64_t OUTLINED_FUNCTION_74_1(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 3;

  return sub_2543A2768();
}

uint64_t OUTLINED_FUNCTION_76_2(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 6;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_79_1()
{
  v5 = v1[20];
  v4 = v1[21];
  v6 = v1[22];
  *(v2 + 184) = v0;
  *(v2 + 192) = v3;
}

unint64_t OUTLINED_FUNCTION_90_1()
{
  v4 = *(v0 + 96);
  v2 = *(*(v0 + 88) + 8);

  return sub_254357F48();
}

void OUTLINED_FUNCTION_92_1()
{

  JUMPOUT(0x259C093D0);
}

void OUTLINED_FUNCTION_93_1()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_94_2()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_95_1()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return sub_2543A35D8();
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return swift_getAssociatedTypeWitness();
}

void *CarrySettings.VerifyResponse.error.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
  OUTLINED_FUNCTION_97();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CarrySettings.VerifyResponse.error.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
  OUTLINED_FUNCTION_3_2();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CarrySettings.VerifyResponse.success.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success;
  OUTLINED_FUNCTION_97();
  return *(v0 + v1);
}

uint64_t CarrySettings.VerifyResponse.success.setter(char a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success;
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CarrySettings.VerifyResponse.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_type;
  result = OUTLINED_FUNCTION_97();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t CarrySettings.VerifyResponse.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_type;
  result = OUTLINED_FUNCTION_3_2();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

id CarrySettings.VerifyResponse.init(type:result:)(uint64_t *a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *a2;
  v9 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
  *&v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error] = 0;
  v10 = &v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_type];
  *v10 = v6;
  v10[8] = v7;
  if (v8 == 1)
  {
    v8 = 0;
    v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success] = 1;
  }

  else
  {
    v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success] = 0;
  }

  OUTLINED_FUNCTION_3_2();
  *&v2[v9] = v8;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id CarrySettings.VerifyResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CarrySettings.VerifyResponse.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
  *&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error] = 0;
  v5 = sub_2543A2858();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_2543A3158();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    sub_2542F464C();
    if (swift_dynamicCast())
    {
      v7 = v16;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_2542E1050(v20);
    v7 = 0;
  }

  OUTLINED_FUNCTION_3_2();
  v8 = *&v1[v4];
  *&v1[v4] = v7;

  v9 = sub_2543A2858();
  v10 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success] = v10;
  v11 = sub_2543A2858();
  v12 = [a1 decodeIntegerForKey_];

  v13 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_type];
  *v13 = v12;
  v13[8] = v12 < 2;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_init);

  return v14;
}

Swift::Void __swiftcall CarrySettings.VerifyResponse.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
  OUTLINED_FUNCTION_97();
  v4 = *(v1 + v3);
  v5 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success;
  OUTLINED_FUNCTION_97();
  v7 = *(v1 + v6);
  v8 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  v9 = (v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_type);
  OUTLINED_FUNCTION_97();
  v12 = *v9;
  v13 = *(v9 + 8);
  v10 = sub_2543A3628();
  v11 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();
}

uint64_t CarrySettings.VerifyResponse.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v16);
  if (!v17)
  {
    sub_2542E1050(v16);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v3 = v15;
    if (v15 == v1)
    {
    }

    else
    {
      v4 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success;
      OUTLINED_FUNCTION_97();
      LODWORD(v4) = v1[v4];
      v5 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success;
      OUTLINED_FUNCTION_97();
      if (v4 != v15[v5])
      {
LABEL_5:

        return 0;
      }

      v7 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
      OUTLINED_FUNCTION_97();
      v8 = *&v1[v7];
      v9 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
      OUTLINED_FUNCTION_97();
      v10 = *&v15[v9];
      if (v8)
      {
        if (!v10)
        {
          goto LABEL_5;
        }

        sub_2542F464C();
        v11 = v10;
        v12 = v8;
        v13 = sub_2543A30B8();

        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = v10;

        if (v10)
        {
          v3 = v14;
          goto LABEL_5;
        }
      }
    }

    return 1;
  }

  return 0;
}

id CarrySettings.VerifyResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarrySettings.VerifyResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_15HomePodSettings05CarryC0O14VerifyResponseC6ResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_25435D564(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_25430F558();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25435D5DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_25435D710(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x25435D8D4);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t dispatch thunk of CoordinationSessionConsumerHandshake.shouldAllowSession(withRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2542DF754;

  return v13(a1, a2, a3, a4);
}

unint64_t CarrySettings.VerifyRequest.VerifyType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_25435DA70@<X0>(uint64_t *a1@<X8>)
{
  result = CarrySettings.VerifyRequest.VerifyType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t CarrySettings.VerifyRequest.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type;
  result = OUTLINED_FUNCTION_97();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t CarrySettings.VerifyRequest.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t CarrySettings.VerifyRequest.additionalInfo.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_additionalInfo;
  OUTLINED_FUNCTION_97();
  v2 = *(v0 + v1);
  return sub_2543A2768();
}

uint64_t CarrySettings.VerifyRequest.additionalInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_additionalInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CarrySettings.VerifyRequest.init(type:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = *(a1 + 8);
  *&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_additionalInfo] = MEMORY[0x277D84F98];
  v6 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type];
  *v6 = v4;
  v6[8] = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_25435DD34(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_additionalInfo] = MEMORY[0x277D84F98];
  v4 = sub_2543A2858();
  v5 = [a1 decodeIntegerForKey_];

  v6 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type];
  *v6 = v5;
  v6[8] = v5 < 2;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

Swift::Void __swiftcall CarrySettings.VerifyRequest.encode(with:)(NSCoder with)
{
  v3 = (v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type);
  OUTLINED_FUNCTION_97();
  v6 = *v3;
  v7 = *(v3 + 8);
  v4 = sub_2543A3628();
  v5 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

BOOL CarrySettings.VerifyRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v12);
  if (!v13)
  {
    sub_2542E1050(v12);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v11 == v1)
  {

    return 1;
  }

  else
  {
    v3 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type];
    OUTLINED_FUNCTION_97();
    v4 = *v3;
    v5 = v3[8];
    v6 = &v11[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type];
    OUTLINED_FUNCTION_97();
    v7 = *v6;
    v8 = v6[8];

    return sub_2542F4260(v4, v5, v7);
  }
}

id CarrySettings.VerifyRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarrySettings.VerifyRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s13VerifyRequestC10VerifyTypeOwet(uint64_t a1, int a2)
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

uint64_t _s13VerifyRequestC10VerifyTypeOwst(uint64_t result, int a2, int a3)
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

uint64_t sub_25435E1F4(uint64_t a1)
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

uint64_t sub_25435E210(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_25435E2E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  if (*a4 != -1)
  {
    swift_once();
  }

  v11 = *a5;
  return a6(a1, a2, a3);
}

uint64_t sub_25435E394(uint64_t result, void *a2, uint64_t *a3, uint64_t (*a4)(void, void, void))
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = result;
    if (*a2 != -1)
    {
      swift_once();
    }

    v8 = *a3;
    v9 = (v7 + 40);
    do
    {
      result = a4(*(v9 - 1), *(v9 - 1), *v9);
      v9 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Topaz(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x25435E4A8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25435E4E0()
{
  OUTLINED_FUNCTION_28();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_25435E58C;

  return TransportRequestHandler.handleLostMember(_:)();
}

uint64_t sub_25435E58C()
{
  OUTLINED_FUNCTION_28();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t dispatch thunk of TransportMemberHandler.handleLostMember(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25435E58C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of TransportRequestHandler.handle(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25435E58C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t AlarmsObservationUpdate.update.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_2542E12A8(v2, v3);
}

uint64_t AlarmsObservationUpdate.init(alarms:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25435E930(uint64_t a1)
{
  v2 = sub_25435EB3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25435E96C(uint64_t a1)
{
  v2 = sub_25435EB3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlarmsObservationUpdate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1C18, &qword_2543AEEC8);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2542E12A8(v11, v12);
  sub_25435EB3C();
  sub_2543A3778();
  v15 = v11;
  v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1C28, &qword_2543AEED0);
  sub_25435ED2C(&qword_27F5E1C30);
  sub_2543A3578();
  sub_2542E1650(v15, v16);
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_25435EB3C()
{
  result = qword_27F5E1C20;
  if (!qword_27F5E1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C20);
  }

  return result;
}

uint64_t AlarmsObservationUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1C38, &qword_2543AEED8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25435EB3C();
  sub_2543A3768();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1C28, &qword_2543AEED0);
    sub_25435ED2C(&qword_27F5E1C40);
    sub_2543A34D8();
    (*(v8 + 8))(v12, v5);
    v14 = v17;
    *a2 = v16;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25435ED2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E1C28, &qword_2543AEED0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25435ED7C(uint64_t a1)
{
  result = sub_25435EDA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25435EDA4()
{
  result = qword_27F5E1C48;
  if (!qword_27F5E1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C48);
  }

  return result;
}

uint64_t sub_25435EE40(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E1C58, &qword_2543AEF00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25435EF4C(uint64_t a1)
{
  result = sub_25435EF74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25435EF74()
{
  result = qword_27F5E1C70;
  if (!qword_27F5E1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C70);
  }

  return result;
}

unint64_t sub_25435EFF4(uint64_t a1)
{
  result = sub_25435F01C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25435F01C()
{
  result = qword_27F5E1C78;
  if (!qword_27F5E1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C78);
  }

  return result;
}

unint64_t sub_25435F070(uint64_t a1)
{
  *(a1 + 8) = sub_25435F0A0();
  result = sub_25435F0F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25435F0A0()
{
  result = qword_27F5E1C80;
  if (!qword_27F5E1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C80);
  }

  return result;
}

unint64_t sub_25435F0F4()
{
  result = qword_27F5E1C88;
  if (!qword_27F5E1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AlarmsObservationUpdate.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x25435F230);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25435F26C()
{
  result = qword_27F5E1C90;
  if (!qword_27F5E1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C90);
  }

  return result;
}

unint64_t sub_25435F2C4()
{
  result = qword_27F5E1C98;
  if (!qword_27F5E1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C98);
  }

  return result;
}

unint64_t sub_25435F31C()
{
  result = qword_27F5E1CA0;
  if (!qword_27F5E1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1CA0);
  }

  return result;
}

id sub_25435F3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_request];
  v9[3] = a2;
  v9[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  v11 = *(a2 - 8);
  (*(v11 + 16))(boxed_opaque_existential_1, a1, a2);
  v12 = (*(a3 + 32))(a2, a3);
  v13 = &v4[OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_requestTypeIdentifier];
  *v13 = v12;
  v13[1] = v14;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v11 + 8))(a1, a2);
  return v15;
}

void sub_25435F4D4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_request + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_request), *(v1 + OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_request + 24));
  v4 = *(v3 + 8);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  sub_25430D714();
  v7 = *(v1 + OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_requestTypeIdentifier);
  v8 = *(v1 + OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_requestTypeIdentifier + 8);
  v9 = sub_2543A2858();
  v10 = sub_2543A2858();
  [a1 encodeObject:v9 forKey:v10];
}

id sub_25435F720(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_25430CAE0();
  v3 = sub_2543A3088();
  if (v3)
  {
    v4 = v3;
    if (qword_27F5DF088 != -1)
    {
      swift_once();
    }

    v5 = sub_2543A2878();
    sub_25436A40C(v5, v6, a1, 0x74736575716552, 0xE700000000000000, &v19);

    v8 = v20;
    v9 = v21;
    v10 = __swift_project_boxed_opaque_existential_0(&v19, v20);
    v11 = swift_getObjectType();
    v12 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v11);
    v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14, v10, v8);
    v16 = sub_25435F378(v14, v8, v9);

    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  else
  {
    v7 = sub_2542DF684();
    static Logging.ulog(_:_:extended:)(90, 0xD00000000000002ALL, 0x80000002543BA050, v7 & 1, ObjectType, &off_28664A9F8);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v16;
}

uint64_t Profile.ProfileError.hashValue.getter()
{
  v1 = *v0;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v1);
  return sub_2543A3728();
}

unint64_t sub_25435FC68()
{
  result = qword_27F5E1CC0[0];
  if (!qword_27F5E1CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E1CC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Profile(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x25435FD58);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Profile.ProfileError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Profile.ProfileError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x25435FEE4);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

BOOL sub_25435FF60(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_29(a1, a2);
  v3 = v2();
  if (v4)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_2543A2798();
    sub_25432B39C(v3, 1);
    OUTLINED_FUNCTION_4_7();
    sub_2543A2778();
    swift_getWitnessTable();
    sub_2543A29C8();

    v3 = v6;
  }

  return v3 > 0;
}

uint64_t sub_2543600A0(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_25432B54C(a4, 1);
    sub_2543A2768();
    v12 = sub_2543A2768();
    OUTLINED_FUNCTION_4_7();
    sub_2543A2758();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_2_29();
    v11[2] = sub_2543A2DF8();

    v11[1] = v11;
    v11[4] = a4;
    v11[5] = a3;
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_4_7();
    sub_2543A2EB8();
    OUTLINED_FUNCTION_4_7();
    sub_2543A27B8();
    swift_getWitnessTable();
    sub_2543A29B8();
    v8 = v12;
    v12 = sub_2543A2768();
    OUTLINED_FUNCTION_2_29();
    v9 = MEMORY[0x259C098B0]();

    v12 = v9;
    swift_getWitnessTable();
    sub_254372EE4();
  }

  else
  {
    v8 = a1(a4, 1);
    OUTLINED_FUNCTION_4_7();
    sub_2543A2A88();
    if (sub_2543A2AC8())
    {
      sub_25432B00C();
    }

    else
    {
    }
  }

  return v8;
}

void *sub_254360330@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

unint64_t sub_25436034C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_29(a1, a2);
  v3 = v2();
  if (v4)
  {
    v8 = 0;
    sub_2543A3298();
    MEMORY[0x259C093D0](0x6465746567726154, 0xED0000203A796228);
    swift_getAssociatedTypeWitness();
    v5 = sub_2543A37B8();
    MEMORY[0x259C093D0](v5);

    MEMORY[0x259C093D0](0x203E2D2029, 0xE500000000000000);
    swift_getAssociatedConformanceWitness();
    sub_2543A27B8();
    swift_getWitnessTable();
    sub_2543A35D8();
    sub_25432B39C(v3, 1);
  }

  else
  {
    sub_2543A3298();

    v8 = 0xD000000000000012;
    v6 = sub_2543A35A8();
    MEMORY[0x259C093D0](v6);

    MEMORY[0x259C093D0](41, 0xE100000000000000);
  }

  return v8;
}

uint64_t sub_254360534(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v27 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v15 = &v26 - v14;
  v28 = v11;
  v16 = *v11;
  v17 = *(*v11 + 16);
  v31 = v12;
  if (v17 && (v18 = sub_2543607C4(v12, a5, v13), (v19 & 1) != 0))
  {
    v20 = *(*(v16 + 56) + 8 * v18);
  }

  else
  {
    v20 = 0;
  }

  v21 = a3(v20, 1);
  v22 = *(v7 + 16);
  v22(v15, v31, a5);
  v29 = v21 & ~(v21 >> 63);
  v30 = 0;
  sub_2543A27B8();
  v23 = v28;
  sub_2543A27E8();
  v24 = *v23;
  result = sub_2543A27D8();
  if (v30)
  {
    __break(1u);
  }

  else if (!v29)
  {
    v22(v27, v31, a5);
    v29 = 0;
    v30 = 1;
    return sub_2543A27E8();
  }

  return result;
}

uint64_t sub_254360738()
{
  v1 = *v0;
  sub_25432B54C(*v0, *(v0 + 8));
  return v1;
}

unint64_t sub_254360770(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_25436034C(a1, WitnessTable);
}

unint64_t sub_2543607C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_2543A27F8();

  return sub_254360820(a1, v9, a2, a3);
}

unint64_t sub_254360820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v17 = a4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v4;
  v19 = v4 + 64;
  v10 = ~(-1 << *(v4 + 32));
  for (i = v11 & v10; ((1 << i) & *(v19 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    (*(v6 + 16))(v9, *(v18 + 48) + *(v6 + 72) * i, a3);
    v13 = *(v17 + 8);
    v14 = sub_2543A2848();
    (*(v6 + 8))(v9, a3);
    if (v14)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2543609B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_254360A1C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254360A58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_254360AF0(uint64_t a1)
{
  OUTLINED_FUNCTION_24_0();
  sub_2543825BC(v3, a1);
  return sub_2543A3728();
}

uint64_t sub_254360B8C()
{
  OUTLINED_FUNCTION_24_0();
  sub_2543A28C8();
  return sub_2543A3728();
}

uint64_t sub_254360BEC(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_24_0();
  a2(a1);
  sub_2543A28C8();

  return sub_2543A3728();
}

uint64_t sub_254360C50(char a1)
{
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x259C0A1D0](a1 & 1);
  return sub_2543A3728();
}

uint64_t sub_254360C94(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x259C0A1D0](a1 - 1);
  return sub_2543A3728();
}

BOOL sub_254360CD8()
{
  v0 = sub_2543A3438();

  return v0 != 0;
}

BOOL sub_254360D50@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_254360CD8();
  *a2 = result;
  return result;
}

BOOL sub_254360D84@<W0>(_BYTE *a1@<X8>)
{
  result = sub_254360CD8();
  *a1 = result;
  return result;
}

uint64_t sub_254360DB0(uint64_t a1)
{
  v2 = sub_254361050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254360DEC(uint64_t a1)
{
  v2 = sub_254361050();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateSettingRequest.encode(to:)(void *a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1DC8, &qword_2543AF478);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_21();
  v10 = *v1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254361050();
  sub_2543A3778();
  v20[0] = 0;
  v12 = [objc_opt_self() archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v20];
  v13 = v20[0];
  if (v12)
  {
    v14 = sub_2543A1EF8();
    v16 = v15;

    v20[0] = v14;
    v20[1] = v16;
    sub_25431A9E4();
    sub_2543A3578();
    (*(v7 + 8))(v2, v4);
    result = sub_2542D7D40(v14, v16);
  }

  else
  {
    v18 = v13;
    sub_2543A1E88();

    swift_willThrow();
    result = (*(v7 + 8))(v2, v4);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_254361050()
{
  result = qword_27F5E1DD0;
  if (!qword_27F5E1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1DD0);
  }

  return result;
}

uint64_t UpdateSettingRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1DD8, &qword_2543AF480);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_21();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254361050();
  sub_2543A3768();
  if (!v2)
  {
    sub_25431AA38();
    sub_2543A34D8();
    sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
    sub_2542D6250(0, &qword_27F5E0C38, off_2797737F0);
    v12 = sub_2543A3038();
    if (v12)
    {
      v13 = OUTLINED_FUNCTION_2_19();
      v14(v13);
      sub_2542D7D40(v16, v17);
      *a2 = v12;
    }

    else
    {
      sub_2543612C8();
      swift_allocError();
      swift_willThrow();
      sub_2542D7D40(v16, v17);
      v10 = OUTLINED_FUNCTION_2_19();
      v11(v10);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_2543612C8()
{
  result = qword_27F5E1DE0;
  if (!qword_27F5E1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1DE0);
  }

  return result;
}

uint64_t sub_25436131C()
{
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x259C0A1D0](0);
  return sub_2543A3728();
}

uint64_t sub_2543613B0(uint64_t a1)
{
  v2 = sub_254361528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2543613EC(uint64_t a1)
{
  v2 = sub_254361528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateSettingResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1DE8, &qword_2543AF488);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_21();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254361528();
  sub_2543A3778();
  return (*(v6 + 8))(v1, v3);
}

unint64_t sub_254361528()
{
  result = qword_27F5E1DF0;
  if (!qword_27F5E1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1DF0);
  }

  return result;
}

unint64_t sub_2543615A8()
{
  result = qword_27F5E1DF8;
  if (!qword_27F5E1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1DF8);
  }

  return result;
}

unint64_t sub_2543615FC(uint64_t a1)
{
  result = sub_254361624();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_254361624()
{
  result = qword_27F5E1E00;
  if (!qword_27F5E1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E00);
  }

  return result;
}

unint64_t sub_2543616A4()
{
  result = qword_27F5E1E08;
  if (!qword_27F5E1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E08);
  }

  return result;
}

unint64_t sub_2543616F8()
{
  result = qword_27F5E1E10;
  if (!qword_27F5E1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E10);
  }

  return result;
}

uint64_t sub_254361778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2543617B4()
{
  result = qword_27F5E1E18;
  if (!qword_27F5E1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E18);
  }

  return result;
}

unint64_t sub_254361808()
{
  result = qword_27F5E1E20;
  if (!qword_27F5E1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E20);
  }

  return result;
}

_BYTE *sub_2543618D0(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x25436196CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2543619A8()
{
  result = qword_27F5E1E28;
  if (!qword_27F5E1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E28);
  }

  return result;
}

unint64_t sub_254361A00()
{
  result = qword_27F5E1E30;
  if (!qword_27F5E1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E30);
  }

  return result;
}

unint64_t sub_254361A58()
{
  result = qword_27F5E1E38;
  if (!qword_27F5E1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E38);
  }

  return result;
}

unint64_t sub_254361AB0()
{
  result = qword_27F5E1E40;
  if (!qword_27F5E1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E40);
  }

  return result;
}

unint64_t sub_254361B08()
{
  result = qword_27F5E1E48;
  if (!qword_27F5E1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E48);
  }

  return result;
}

unint64_t sub_254361B60()
{
  result = qword_27F5E1E50[0];
  if (!qword_27F5E1E50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E1E50);
  }

  return result;
}

void TransportObservationHandler.init(initialObservationValue:setUpObservation:tearDownObservation:transport:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_35_4();
  v18 = swift_allocObject();
  v18[2] = a10;
  v18[3] = a11;
  v18[4] = a12;
  v18[5] = a13;
  v18[6] = a14;
  v18[7] = a3;
  v18[8] = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TargetedObserverStore();
  v19 = sub_25437541C();
  WitnessTable = swift_getWitnessTable();
  *a9 = v19;
  a9[1] = WitnessTable;
  a9[2] = a1;
  a9[3] = a2;
  a9[4] = &unk_2543AF8A8;
  a9[5] = v18;
  OUTLINED_FUNCTION_36_3(WitnessTable, v21, v22, v23, v24, v25, v26, v27, v28, a2, a5, a6, a7, a8);
}

uint64_t sub_254361D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2822009F8](sub_254361D40, 0, 0);
}

uint64_t sub_254361D40()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_35_4();
  v5 = swift_allocObject();
  *(v0 + 88) = v5;
  v6 = *(v0 + 64);
  *(v5 + 16) = *(v0 + 48);
  *(v5 + 32) = v6;
  *(v5 + 48) = v1;
  *(v5 + 56) = v4;
  *(v5 + 64) = v2;

  v11 = (v3 + *v3);
  v7 = v3[1];
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_254361E8C;
  v9 = *(v0 + 40);

  return v11(&unk_2543AFA60, v5);
}

uint64_t sub_254361E8C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_139();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 88);

    OUTLINED_FUNCTION_27();

    return v13();
  }
}

uint64_t sub_254361FAC()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_254362008()
{
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_35_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_25436203C()
{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_3_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v1[1] = sub_2542D32CC;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_72_2();

  return sub_254361D08(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2543620D8(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2542D32CC;

  return v8(a1);
}

void TransportObservationHandler.init<>(initialObservationValue:setUpObservation:tearDownObservation:transport:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_35_4();
  v18 = swift_allocObject();
  v18[2] = a10;
  v18[3] = a11;
  v18[4] = a12;
  v18[5] = a13;
  v18[6] = a14;
  v18[7] = a1;
  v18[8] = a2;
  type metadata accessor for UntargetedObserverStore();
  v19 = sub_25430F604();
  WitnessTable = swift_getWitnessTable();
  *a9 = v19;
  a9[1] = WitnessTable;
  a9[2] = &unk_2543AF8B8;
  a9[3] = v18;
  a9[4] = a3;
  a9[5] = a4;
  OUTLINED_FUNCTION_36_3(WitnessTable, v21, v22, v23, v24, v25, v26, v27, v28, a4, a5, a6, a7, a8);
}

uint64_t sub_2543622BC(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2542DB160;

  return v8(a1);
}

uint64_t sub_2543623B8()
{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_3_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v1[1] = sub_2542DB160;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_72_2();

  return sub_2543622BC(v3, v4, v5);
}

uint64_t TransportObservationHandler.handle(_:from:)()
{
  OUTLINED_FUNCTION_89();
  v3 = v2;
  *(v1 + 352) = v4;
  *(v1 + 360) = v0;
  *(v1 + 336) = v5;
  *(v1 + 344) = v6;
  *(v1 + 368) = *(v4 + 32);
  *(v1 + 376) = *(v4 + 16);
  *(v1 + 384) = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_76();
  *(v1 + 392) = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_76();
  *(v1 + 400) = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult();
  *(v1 + 408) = v7;
  v8 = *(v7 - 8);
  *(v1 + 416) = v8;
  v9 = *(v8 + 64) + 15;
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *v0;
  v12 = v0[1];
  *(v1 + 448) = *v3;
  *(v1 + 464) = v11;
  v13 = v0[2];
  v14 = v0[3];
  *(v1 + 480) = v12;
  *(v1 + 496) = v13;
  *(v1 + 440) = v10;
  *(v1 + 313) = *(v3 + 16);
  *(v1 + 320) = v14;
  *(v1 + 512) = v0[4];
  v15 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2543625F0()
{
  *(v0 + 16) = *(v0 + 464);
  v1 = *(v0 + 313);
  v3 = *(v0 + 448);
  v2 = *(v0 + 456);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 344);
  v9 = *(v0 + 496);
  *(v0 + 32) = *(v0 + 480);
  *(v0 + 48) = v9;
  v10 = *(v0 + 512);
  *(v0 + 64) = *(v6 + 48);
  *(v0 + 80) = v10;
  OUTLINED_FUNCTION_40_3();
  MEMORY[0x259C093D0](0x5F28656C646E6168, 0xEF293A6D6F72663ALL);
  MEMORY[0x259C093D0](0x7473657571657220, 0xE90000000000003DLL);
  *(v0 + 296) = v3;
  *(v0 + 304) = v2;
  *(v0 + 312) = v1;
  type metadata accessor for ObservationLifeCycleRequest();
  sub_2543A35C8();
  v11 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x259C093D0](v11, 0xE800000000000000);
  *(v0 + 528) = *(v7 + 24);
  sub_2543A35C8();
  v12 = sub_2542DF684() & 1;
  *(v0 + 316) = v12;
  Logging.ulog(_:extended:)(v38, v12);

  if (v1)
  {
    v13 = *(v0 + 448);
    v14 = *(v0 + 456);
    v15 = *(v0 + 480);
    *(v0 + 96) = *(v0 + 464);
    v16 = *(v0 + 496);
    v17 = *(v0 + 512);
    *(v0 + 112) = v15;
    *(v0 + 128) = v16;
    *(v0 + 144) = *(v0 + 320);
    *(v0 + 160) = v17;
    sub_254364634(v13, v14, 1);
    v18 = swift_task_alloc();
    *(v0 + 544) = v18;
    *v18 = v0;
    v18[1] = sub_254362BA0;
    v19 = *(v0 + 448);
    v21 = *(v0 + 344);
    v20 = *(v0 + 352);
    OUTLINED_FUNCTION_128();

    return sub_254363E00(v22, v23, v24);
  }

  else
  {
    v27 = *(v0 + 464);
    v28 = *(v0 + 472);
    v30 = *(v0 + 448);
    v29 = *(v0 + 456);
    v32 = *(v0 + 368);
    v31 = *(v0 + 376);
    *(v0 + 536) = swift_getObjectType();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    *(v0 + 280) = sub_2543A2EB8();
    OUTLINED_FUNCTION_0_34();
    *(v0 + 288) = swift_getWitnessTable();
    *(v0 + 256) = v30;
    sub_254364634(v30, v29, 0);
    v33 = *(v28 + 8);
    sub_2543A2B58();
    OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_128();

    return MEMORY[0x2822009F8](v34, v35, v36);
  }
}

uint64_t sub_2543628C0()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 464);
  *(v0 + 314) = sub_2543694D4(*(v0 + 344), (v0 + 256), *(v0 + 536), *(v0 + 472));
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_254362934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_71();
  if (*(v14 + 314))
  {
    v15 = *(v14 + 316);
    v16 = *(v14 + 528);
    v17 = *(v14 + 520);
    v18 = *(v14 + 512);
    v19 = *(v14 + 488);
    v20 = *(v14 + 464);
    v22 = *(v14 + 368);
    v21 = *(v14 + 376);
    v23 = *(v14 + 352);
    *(v14 + 176) = v20;
    v24 = *(v14 + 472);
    *(v14 + 184) = v24;
    *(v14 + 200) = v19;
    a9 = *(v14 + 496);
    a10 = v24;
    v25 = *(v14 + 320);
    *(v14 + 208) = a9;
    *(v14 + 224) = v25;
    *(v14 + 240) = v18;
    *(v14 + 248) = v17;
    v26._object = 0x80000002543BA160;
    v26._countAndFlagsBits = 0xD000000000000023;
    Logging.ulog(_:extended:)(v26, v15);
    v27 = swift_allocObject();
    *(v14 + 552) = v27;
    v27[2] = v21;
    v27[3] = v16;
    v27[4] = v22;
    v27[5] = *(v23 + 40);
    v27[6] = *(v23 + 48);
    v27[7] = v20;
    v27[8] = a10;
    v27[9] = v18;
    v27[10] = v17;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    *&a10 = a9 + *a9;
    v28 = *(a9 + 4);
    v29 = swift_task_alloc();
    *(v14 + 560) = v29;
    *v29 = v14;
    v29[1] = sub_254362D8C;
    v30 = *(v14 + 504);
    OUTLINED_FUNCTION_48();
  }

  else
  {
    v39 = *(v14 + 456);
    OUTLINED_FUNCTION_5_16(*(v14 + 480));
    *&a10 = v40;
    v42 = *(v41 + 4);
    v43 = swift_task_alloc();
    *(v14 + 576) = v43;
    *v43 = v14;
    OUTLINED_FUNCTION_12_16(v43);
    v44 = *(v14 + 488);
    v45 = *(v14 + 432);
    OUTLINED_FUNCTION_48();
  }

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, *(&a9 + 1), a10, *(&a10 + 1), a11, a12, a13, a14);
}

uint64_t sub_254362BA0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = v1[68];
  v3 = v1[57];
  v4 = v1[56];
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  sub_254364670(v4, v3, 1);
  v7 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254362CBC()
{
  OUTLINED_FUNCTION_89();
  v1 = v0[55];
  v2 = v0[52];
  v3 = v0[48];
  v4 = swift_checkMetadataState();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  v5 = *(v2 + 32);
  v6 = OUTLINED_FUNCTION_20_7();
  v7(v6);
  swift_checkMetadataState();
  OUTLINED_FUNCTION_31_5();

  OUTLINED_FUNCTION_27();

  return v8();
}

uint64_t sub_254362D8C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 560);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 568) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_139();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 552);

    v13 = *(v3 + 456);
    OUTLINED_FUNCTION_5_16(*(v3 + 480));
    v21 = v14;
    v16 = *(v15 + 4);
    v17 = swift_task_alloc();
    *(v3 + 576) = v17;
    *v17 = v7;
    OUTLINED_FUNCTION_12_16(v17);
    v18 = *(v3 + 488);
    v19 = *(v3 + 432);

    return v21(v19, v13);
  }
}

uint64_t sub_254362F1C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *(v4 + 456);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v9 + 584) = v0;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_254363034()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[51];
  v4 = v0[52];
  v5 = v0[48];
  v6 = swift_checkMetadataState();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v6);
  v7 = *(v4 + 32);
  v7(v2, v1, v3);
  v8 = OUTLINED_FUNCTION_20_7();
  (v7)(v8);
  swift_checkMetadataState();
  OUTLINED_FUNCTION_31_5();

  OUTLINED_FUNCTION_27();

  return v9();
}

uint64_t sub_254363124()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[69];
  v2 = v0[57];

  v3 = v0[71];
  v5 = v0[54];
  v4 = v0[55];
  v6 = v0[53];

  OUTLINED_FUNCTION_27();

  return v7();
}

uint64_t sub_2543631B0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[73];
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[53];

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_254363228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = v20;
  v8[21] = v21;
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[22] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[23] = v10;
  v11 = *(v10 + 64) + 15;
  v8[24] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v8[7] = AssociatedTypeWitness;
  v8[8] = AssociatedConformanceWitness;
  v8[9] = v13;
  v8[10] = v14;
  updated = type metadata accessor for ObservationUpdateScope();
  v8[25] = updated;
  v16 = *(updated - 8);
  v8[26] = v16;
  v17 = *(v16 + 64) + 15;
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254363410, 0, 0);
}

uint64_t sub_254363410()
{
  v20 = *(v0 + 136);
  *(v0 + 16) = v20;
  v1 = *(v0 + 224);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 96);
  v21 = *(v0 + 152);
  *(v0 + 32) = v21;
  *(v0 + 48) = v2;
  v5 = type metadata accessor for TransportObservationHandler();
  *(v0 + 232) = v5;
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000010, 0x80000002543BA190);
  sub_2543A35C8();
  v6 = sub_2542DF684();
  *(v0 + 352) = v6 & 1;
  static Logging.ulog(_:extended:)(0, 0xE000000000000000, v6 & 1, v5, &protocol witness table for TransportObservationHandler<A, B>);

  v7 = *(v21 + 144);
  *(v0 + 240) = v7;
  *(v0 + 248) = (v21 + 144) & 0xFFFFFFFFFFFFLL | 0x3FE1000000000000;
  v7(v20);
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    *(v0 + 256) = swift_getObjectType();
    v10 = *(v8 + 48);
    v8 += 48;
    *(v0 + 264) = v10;
    *(v0 + 272) = v8 & 0xFFFFFFFFFFFFLL | 0x9E24000000000000;
    v11 = *(v8 - 40);
    sub_2543A2B58();
    OUTLINED_FUNCTION_30_4();
    v14 = sub_254363634;
  }

  else
  {
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 224), *(v0 + 176));
    *(v0 + 288) = swift_getObjectType();
    v17 = *(v15 + 56);
    v15 += 56;
    *(v0 + 296) = v17;
    *(v0 + 304) = v15 & 0xFFFFFFFFFFFFLL | 0x8084000000000000;
    v18 = *(v15 - 48);
    sub_2543A2B58();
    OUTLINED_FUNCTION_30_4();
    v14 = sub_2543638A8;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

uint64_t sub_254363634()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 272);
  v2 = *(v0 + 104);
  *(v0 + 280) = (*(v0 + 264))(*(v0 + 256), *(v0 + 112));
  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2543638A8()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 304);
  v2 = *(v0 + 104);
  *(v0 + 312) = (*(v0 + 296))(*(v0 + 192), *(v0 + 288), *(v0 + 112));
  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_254363B38()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 328);
  v9 = *v1;
  OUTLINED_FUNCTION_7();
  *v10 = v9;
  v5[42] = v0;

  if (!v0)
  {
    v11 = v5[40];

    v5[43] = v3;
  }

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_254363C50()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 232);
  sub_2543A3298();

  v4 = MEMORY[0x259C09530](v1, &type metadata for ObservationUpdateAcknowlegement);
  v6 = v5;

  MEMORY[0x259C093D0](v4, v6);

  static Logging.ulog(_:extended:)(0xD000000000000016, 0x80000002543BA1F0, v2, v3, &protocol witness table for TransportObservationHandler<A, B>);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  v9 = *(v0 + 192);

  OUTLINED_FUNCTION_27();

  return v10();
}

uint64_t sub_254363D80()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[40];

  v2 = v0[42];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[24];

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t sub_254363E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 288) = a3;
  *(v4 + 296) = v3;
  *(v4 + 272) = a1;
  *(v4 + 280) = a2;
  *(v4 + 304) = *(a3 + 24);
  v5 = sub_2543A30C8();
  *(v4 + 312) = v5;
  v6 = *(v5 - 8);
  *(v4 + 320) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  v8 = *v3;
  *(v4 + 216) = v3[1];
  v9 = v3[3];
  *(v4 + 232) = v3[2];
  *(v4 + 336) = v8;
  *(v4 + 352) = v9;
  *(v4 + 248) = v3[4];

  return MEMORY[0x2822009F8](sub_254363EE8, 0, 0);
}

uint64_t sub_254363EE8()
{
  *(v0 + 16) = *(v0 + 336);
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 352);
  v6 = v1[2];
  *(v0 + 32) = v1[1];
  *(v0 + 48) = v6;
  *(v0 + 64) = v5;
  *(v0 + 80) = v1[4];
  OUTLINED_FUNCTION_40_3();
  MEMORY[0x259C093D0](0xD00000000000001FLL, 0x80000002543BA210);
  v7 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x259C093D0](v7, 0xE800000000000000);
  sub_2543A35C8();
  MEMORY[0x259C093D0](0x7374656772617420, 0xE90000000000003DLL);
  v33 = v4;
  if (v4)
  {
    v8 = *(v0 + 280);
  }

  else
  {
    v9 = *(v0 + 288);
    v10 = *(v9 + 32);
    v11 = *(v9 + 16);
    swift_getAssociatedTypeWitness();
    sub_2543A2A88();
    if (sub_2543A2AC8())
    {
      swift_getAssociatedConformanceWitness();
      sub_25432B00C();
      v8 = v12;
    }

    else
    {

      v8 = MEMORY[0x277D84FA0];
    }
  }

  v13 = *(v0 + 336);
  v14 = *(v0 + 280);
  v15 = *(v0 + 288);
  *(v0 + 264) = v8;
  v16 = *(v15 + 32);
  v17 = *(v15 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = sub_2543A2EB8();
  sub_2543A2768();
  swift_getWitnessTable();
  sub_2543A35D8();

  v19 = sub_2542DF684() & 1;
  *(v0 + 416) = v19;
  Logging.ulog(_:extended:)(v34, v19);

  *(v0 + 368) = swift_getObjectType();
  if (v33)
  {
    v20 = *(v0 + 336);
    v21 = *(v0 + 344);
    *(v0 + 200) = v18;
    OUTLINED_FUNCTION_0_34();
    *(v0 + 208) = swift_getWitnessTable();
    *(v0 + 176) = v14;
    v22 = *(v21 + 96);
    v21 += 96;
    *(v0 + 392) = v22;
    *(v0 + 400) = v21 & 0xFFFFFFFFFFFFLL | 0xEC1A000000000000;
    v23 = *(v21 - 88);
    sub_2543A2768();
  }

  else
  {
    v25 = *(v0 + 336);
    v24 = *(v0 + 344);
    v26 = *(v24 + 104);
    v24 += 104;
    *(v0 + 376) = v26;
    *(v0 + 384) = v24 & 0xFFFFFFFFFFFFLL | 0x2E76000000000000;
    v27 = *(v24 - 96);
  }

  sub_2543A2B58();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_128();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_254364218()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 384);
  v2 = *(v0 + 336);
  *(v0 + 417) = (*(v0 + 376))(*(v0 + 272), *(v0 + 368), *(v0 + 344)) & 1;
  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_254364288()
{
  OUTLINED_FUNCTION_31();
  if (*(v0 + 417) == 1)
  {
    v1 = OUTLINED_FUNCTION_13_11();
    *(v0 + 144) = v2;
    *(v0 + 160) = v1;
    v3._object = 0x80000002543BA230;
    v3._countAndFlagsBits = 0xD000000000000025;
    Logging.ulog(_:extended:)(v3, v4);
    v13 = OUTLINED_FUNCTION_4_17(v5, v6, v7, v8, v9, v10, v11, v12, v28);
    v29 = v14;
    v15 = v13[1];
    v16 = swift_task_alloc();
    *(v0 + 408) = v16;
    *v16 = v0;
    v24 = OUTLINED_FUNCTION_9_12(v16, v17, v18, v19, v20, v21, v22, v23, v29);

    return v24();
  }

  else
  {
    v26 = *(v0 + 328);

    OUTLINED_FUNCTION_27();

    return v27();
  }
}

uint64_t sub_254364388()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 400);
  v2 = *(v0 + 336);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 312);
  *(v0 + 418) = (*(v0 + 392))(v3, *(v0 + 272), v0 + 176, *(v0 + 368), *(v0 + 344)) & 1;
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_254364430()
{
  OUTLINED_FUNCTION_31();
  if (*(v0 + 418) == 1)
  {
    v1 = OUTLINED_FUNCTION_13_11();
    *(v0 + 144) = v2;
    *(v0 + 160) = v1;
    v3._object = 0x80000002543BA230;
    v3._countAndFlagsBits = 0xD000000000000025;
    Logging.ulog(_:extended:)(v3, v4);
    v13 = OUTLINED_FUNCTION_4_17(v5, v6, v7, v8, v9, v10, v11, v12, v28);
    v29 = v14;
    v15 = v13[1];
    v16 = swift_task_alloc();
    *(v0 + 408) = v16;
    *v16 = v0;
    v24 = OUTLINED_FUNCTION_9_12(v16, v17, v18, v19, v20, v21, v22, v23, v29);

    return v24();
  }

  else
  {
    v26 = *(v0 + 328);

    OUTLINED_FUNCTION_27();

    return v27();
  }
}

uint64_t sub_254364530()
{
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  v2 = *(*v0 + 408);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v1 + 328);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_254364634(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_2543A2768();
    v3 = vars8;
  }

  return sub_2543A2768();
}

uint64_t sub_254364670(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2543646BC()
{
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2543646FC()
{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_69_0();
  v1 = v0[3];
  v22 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_39(v9);
  *v10 = v11;
  v10[1] = sub_2542DB160;
  OUTLINED_FUNCTION_72_2();

  return sub_254363228(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t TransportObservationHandler.handleLostMember(_:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = OUTLINED_FUNCTION_6();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2543647F4()
{
  OUTLINED_FUNCTION_89();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  memcpy(v0 + 2, v1, 0x50uLL);
  MEMORY[0x259C093D0](0xD000000000000014, 0x80000002543B93E0);
  v4 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x259C093D0](v4, 0xE800000000000000);
  v5 = *(v2 + 24);
  sub_2543A35C8();
  sub_2542DF684();
  v6._countAndFlagsBits = OUTLINED_FUNCTION_92();
  Logging.ulog(_:extended:)(v6, v7);

  memcpy(v0 + 12, v1, 0x50uLL);
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_25436494C;
  v10 = v0[22];
  v9 = v0[23];

  return sub_254363E00(v10, 0, v9);
}

uint64_t sub_25436494C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 200);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_254364A2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return TransportObservationHandler.handle(_:from:)();
}

uint64_t sub_254364B10(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254364B54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2542D32CC;

  return TransportObservationHandler.handleLostMember(_:)(a1, a2);
}

uint64_t sub_254364BF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_254364C3C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_254364C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}