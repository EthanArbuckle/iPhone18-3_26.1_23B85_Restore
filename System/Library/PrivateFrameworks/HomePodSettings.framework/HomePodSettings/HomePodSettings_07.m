uint64_t sub_254364CE8()
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

  return sub_2543620D8(v3, v4, v5);
}

void OUTLINED_FUNCTION_3_22()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
}

int *OUTLINED_FUNCTION_4_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  result = a9;
  v10 = a9 + *a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_22(uint64_t a1)
{
  *(a1 + 8) = sub_254363B38;
  v2 = v1[19];
  v4 = v1[16];
  v3 = v1[17];
  v5 = v1[15];
  return v1[12];
}

uint64_t OUTLINED_FUNCTION_9_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 8) = sub_254364530;
  v10 = *(v9 + 360);
  return a9;
}

__n128 OUTLINED_FUNCTION_13_11()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 288);
  v5 = *(v0 + 352);
  *(v0 + 96) = *(v0 + 336);
  v3 = *(v0 + 232);
  *(v0 + 112) = *(v0 + 216);
  *(v0 + 128) = v3;
  return *(v0 + 248);
}

uint64_t OUTLINED_FUNCTION_18_6()
{
  v10 = v0[30];
  v11 = v0[31];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[19];
  v7 = v0[17];
  v8 = v0[12];
}

uint64_t OUTLINED_FUNCTION_20_7()
{
  v1 = v0[54];
  v2 = v0[55];
  v4 = v0[50];
  v3 = v0[51];
  v6 = v0[48];
  v5 = v0[49];
  v7 = v0[42];
  return v0[53];
}

void OUTLINED_FUNCTION_22_2()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_23_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = a10 + 72;
  v11 = *(a10 + 72);
  return result;
}

void OUTLINED_FUNCTION_24_7(char a1)
{

  static Logging.ulog(_:_:extended:)(20, v2, v1, a1 & 1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_25_6()
{
  v1[11] = v0;
  v1[40] = v0;
  v3 = v1[21];
  v4 = v1[18];

  return sub_2543A2EB8();
}

uint64_t OUTLINED_FUNCTION_31_5()
{

  return sub_25434D220(v0, v1);
}

void OUTLINED_FUNCTION_36_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15[6] = v14;
  v15[7] = a12;
  v15[8] = a13;
  v15[9] = a14;
}

void OUTLINED_FUNCTION_39_3()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_40_3()
{

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return sub_2543A3298();
}

uint64_t get_enum_tag_for_layout_string_15HomePodSettings23TransportMessagingErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2543650F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254365134(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_25436517C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for TransportObservationError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x254365274);
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

unint64_t sub_2543652B0()
{
  result = qword_27F5E1ED8[0];
  if (!qword_27F5E1ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E1ED8);
  }

  return result;
}

uint64_t sub_254365304(uint64_t a1)
{
  v19 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = OUTLINED_FUNCTION_1_30();
  v21 = OUTLINED_FUNCTION_0_35();
  v22 = OUTLINED_FUNCTION_0_35();
  v23 = OUTLINED_FUNCTION_0_35();
  updated = type metadata accessor for ObservationUpdateScope();
  v2 = sub_2543A30C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = *(*(TupleTypeMetadata2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v7 = &AssociatedTypeWitness - v6;
  v8 = *(v2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &AssociatedTypeWitness - v10;
  OUTLINED_FUNCTION_1_30();
  swift_getAssociatedConformanceWitness();
  sub_2543A20C8();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, updated);
  v12 = *(TupleTypeMetadata2 + 48);
  v14 = AssociatedTypeWitness;
  v13 = v19;
  v15 = *(AssociatedTypeWitness - 8);
  (*(v15 + 16))(v7, v19, AssociatedTypeWitness);
  (*(v8 + 32))(&v7[v12], v11, v2);
  v16 = sub_2543A20D8();
  (*(v15 + 8))(v13, v14);
  return v16;
}

uint64_t sub_254365594()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_254365634()
{
  swift_getWitnessTable();

  return sub_25430D598();
}

uint64_t sub_254365688(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_35()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_1_30()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_254365704()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC58, &qword_2543A7F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2543A7E00;
  *(inited + 32) = 0;
  v4 = inited;
  LOBYTE(inited) = v3;
  switch(v3)
  {
    case 2:
      LOBYTE(inited) = 4;
      break;
    case 3:
      LOBYTE(inited) = 5;
      break;
    case 4:
      LOBYTE(inited) = 7;
      break;
    case 5:
      LOBYTE(inited) = 8;
      break;
    case 6:
      LODWORD(inited) = 0x60302u >> (8 * v1);
      break;
    default:
      break;
  }

  v6 = sub_254365CD4(inited);
  v4[8] = MEMORY[0x277D837D0];
  v4[5] = v6;
  v4[6] = v7;
  sub_2543667D4();
  v67 = sub_2543A2748();
  switch(v3)
  {
    case 0:
      swift_getErrorValue();
      v8 = v59;
      goto LABEL_11;
    case 1:
      swift_getErrorValue();
      v8 = v63;
LABEL_11:
      v19 = Error.nsError.getter(v8);
      v20 = sub_25436608C();
      v22 = v21;

      if (v22 >> 60 == 15)
      {
        v20 = 0;
      }

      v17 = OUTLINED_FUNCTION_2_31(v23, v24, v25, v26, v27, v28, v29, v30, v58, v59, v60, v61, v62, v63, v64, v65, v20);
      v18 = 1;
      goto LABEL_17;
    case 2:
      v31 = OUTLINED_FUNCTION_1_31();
      v17 = OUTLINED_FUNCTION_2_31(v31, v32, v33, v34, v35, v36, v37, v38, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      v18 = 2;
      goto LABEL_17;
    case 3:
      v9 = OUTLINED_FUNCTION_1_31();
      v17 = OUTLINED_FUNCTION_2_31(v9, v10, v11, v12, v13, v14, v15, v16, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      v18 = 3;
      goto LABEL_17;
    case 4:
      v39 = OUTLINED_FUNCTION_1_31();
      v17 = OUTLINED_FUNCTION_2_31(v39, v40, v41, v42, v43, v44, v45, v46, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      v18 = 4;
      goto LABEL_17;
    case 5:
      v47 = OUTLINED_FUNCTION_1_31();
      v17 = OUTLINED_FUNCTION_2_31(v47, v48, v49, v50, v51, v52, v53, v54, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      v18 = 5;
LABEL_17:
      sub_25439471C(v17, v18);
      break;
    case 6:
      break;
    default:
      JUMPOUT(0);
  }

  v55 = sub_25439E374(v67);

  v56 = sub_25436616C(v55);

  return v56;
}

void sub_254365960(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_254366430(a1);

  if (v3)
  {
    sub_25439E6C4(v3);
    v5 = v4;

    sub_254394938(0, v5, &v48);
    if (v49)
    {
      if (OUTLINED_FUNCTION_0_36())
      {
        switch(sub_254365C88())
        {
          case 1u:
            sub_254394938(1, v5, &v48);

            if (!v49)
            {
              goto LABEL_10;
            }

            if ((OUTLINED_FUNCTION_0_36() & 1) == 0)
            {
              goto LABEL_12;
            }

            sub_2542D6250(0, &qword_27F5DFD40, 0x277CCA9B8);
            OUTLINED_FUNCTION_4_1();
            v27 = sub_2543666E8();
            v28 = OUTLINED_FUNCTION_4_1();
            sub_2542D7D40(v28, v29);
            if (!v27)
            {
              goto LABEL_12;
            }

            *a2 = v27;
            *(a2 + 8) = 0;
            v9 = 1;
            goto LABEL_13;
          case 2u:

            *a2 = 0;
            *(a2 + 8) = 0;
            goto LABEL_32;
          case 3u:

            v18 = xmmword_2543AE8F0;
            goto LABEL_31;
          case 4u:
            sub_254394938(2, v5, &v48);

            if (!v49)
            {
              goto LABEL_10;
            }

            v10 = OUTLINED_FUNCTION_0_36();
            if ((v10 & 1) == 0)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_3_23(v10, v11, v12, v13, v14, v15, v16, v17, v46, v47);
            v9 = 2;
            goto LABEL_13;
          case 5u:
            sub_254394938(3, v5, &v48);

            if (!v49)
            {
              goto LABEL_10;
            }

            v30 = OUTLINED_FUNCTION_0_36();
            if ((v30 & 1) == 0)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_3_23(v30, v31, v32, v33, v34, v35, v36, v37, v46, v47);
            v9 = 3;
            goto LABEL_13;
          case 6u:

            v18 = xmmword_2543AE910;
LABEL_31:
            *a2 = v18;
LABEL_32:
            v9 = 6;
            goto LABEL_13;
          case 7u:
            sub_254394938(4, v5, &v48);

            if (!v49)
            {
              goto LABEL_10;
            }

            v19 = OUTLINED_FUNCTION_0_36();
            if ((v19 & 1) == 0)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_3_23(v19, v20, v21, v22, v23, v24, v25, v26, v46, v47);
            v9 = 4;
            goto LABEL_13;
          case 8u:
            sub_254394938(5, v5, &v48);

            if (!v49)
            {
              goto LABEL_10;
            }

            v38 = OUTLINED_FUNCTION_0_36();
            if ((v38 & 1) == 0)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_3_23(v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
            v9 = 5;
            goto LABEL_13;
          case 9u:
            break;
          default:
            sub_254394938(1, v5, &v48);

            if (!v49)
            {
              goto LABEL_10;
            }

            if ((OUTLINED_FUNCTION_0_36() & 1) == 0)
            {
              goto LABEL_12;
            }

            sub_2542D6250(0, &qword_27F5DFD40, 0x277CCA9B8);
            OUTLINED_FUNCTION_4_1();
            v6 = sub_2543666E8();
            v7 = OUTLINED_FUNCTION_4_1();
            sub_2542D7D40(v7, v8);
            if (!v6)
            {
              goto LABEL_12;
            }

            *a2 = v6;
            *(a2 + 8) = 0;
            *(a2 + 16) = 0;
            return;
        }
      }
    }

    else
    {

LABEL_10:
      sub_2542F5064(&v48, &unk_27F5DFA00, &unk_2543A76C0);
    }
  }

LABEL_12:
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = -1;
LABEL_13:
  *(a2 + 16) = v9;
}

uint64_t sub_254365C88()
{
  v0 = sub_2543A3438();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_254365CD4(char a1)
{
  result = 0x7365757165526F6ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      return result;
    case 8:
      result = 0x6E6F707365526F6ELL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15HomePodSettings21RapportTransportErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_254365E50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254365E90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_254365ED4(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_254365EFC()
{
  v0 = sub_2543A3438();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_254365F48(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 0x726F727265;
      break;
    case 2:
      v3 = 1651336557;
      goto LABEL_6;
    case 3:
      v3 = 1684956531;
LABEL_6:
      result = v3 | 0x4449726500000000;
      break;
    case 4:
      result = 0x4B74736575716572;
      break;
    case 5:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254366018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_254365EFC();
  *a2 = result;
  return result;
}

uint64_t sub_254366048@<X0>(uint64_t *a1@<X8>)
{
  result = sub_254365F48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25436608C()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:0 error:v8];
  v2 = v8[0];
  if (v1)
  {
    v3 = sub_2543A1EF8();
  }

  else
  {
    v4 = v2;
    v5 = sub_2543A1E88();

    swift_willThrow();
    v3 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_25436616C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1F78, &qword_2543AFE70);
    v2 = sub_2543A3418();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  result = sub_2543A2768();
  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2542D62F0(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;
    sub_2543A2768();
    swift_dynamicCast();
    sub_2542F50C4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2542F50C4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2542F50C4(v32, v33);
    v15 = *(v2 + 40);
    result = sub_2543A3208();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_2542F50C4(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_254366430(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1F60, &qword_2543AFE58);
    v2 = sub_2543A3418();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_2543A2768();
  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_254366778(*(a1 + 48) + 40 * v10, __src);
    sub_2542D62F0(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_254366778(__dst, v21);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_2542D62F0(&__dst[40], v22);
    sub_2542F5064(__dst, &qword_27F5E1F68, &unk_2543AFE60);
    v23 = v20;
    sub_2542F50C4(v22, v24);
    v11 = v23;
    sub_2542F50C4(v24, v25);
    sub_2542F50C4(v25, &v23);
    result = sub_25438E0D0();
    v12 = result;
    if (v13)
    {
      v14 = v2[6] + 16 * result;
      v15 = *(v14 + 8);
      *v14 = v11;

      v16 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v16);
      result = sub_2542F50C4(&v23, v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_2542F50C4(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  sub_2542F5064(__dst, &qword_27F5E1F68, &unk_2543AFE60);

  return 0;
}

uint64_t sub_2543666E8()
{
  sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
  sub_2542D6250(0, &qword_27F5DFD40, 0x277CCA9B8);
  return sub_2543A3038();
}

unint64_t sub_2543667D4()
{
  result = qword_27F5E1F70;
  if (!qword_27F5E1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1F70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RapportTransportError.CodingKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RapportTransportError.CodingKey(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25436697CLL);
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

unint64_t sub_2543669B8()
{
  result = qword_27F5E1F80;
  if (!qword_27F5E1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1F80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_31()
{

  return sub_2543A2768();
}

uint64_t sub_254366AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  OUTLINED_FUNCTION_175();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  OUTLINED_FUNCTION_175();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_2543AFFE0;
  v10[5] = v9;
  sub_2543688F4(0, 0, v7, &unk_2543AFFF0, v10);
}

id sub_254366C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_18();
  ObjectType = swift_getObjectType();
  v10 = &v4[qword_27F5E1F90];
  *v10 = v7;
  *(v10 + 1) = v6;
  v11 = &v4[qword_27F5E1F98];
  *v11 = v5;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_254366C74(void *a1, void *a2)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_1_26();
  sub_2543A3298();

  v4 = [a1 description];
  sub_2543A2878();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_13_8();

  OUTLINED_FUNCTION_12_17();
  MEMORY[0x259C093D0](0xD00000000000001DLL);
  v5 = [a2 description];
  v6 = sub_2543A2878();
  v8 = v7;

  MEMORY[0x259C093D0](v6, v8);

  v9 = sub_2542DF684() & 1;
  v10._countAndFlagsBits = 0x206C656E6E616843;
  v10._object = 0xE800000000000000;
  Logging.ulog(_:extended:)(v10, v9);
}

void sub_254366DA8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_254366C74(v6, v7);
}

uint64_t sub_254366E24(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_1_26();
  sub_2543A3298();
  MEMORY[0x259C093D0](0x206C656E6E616843, 0xE800000000000000);
  v2 = [a1 description];
  sub_2543A2878();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_13_8();

  OUTLINED_FUNCTION_12_17();
  MEMORY[0x259C093D0](0xD000000000000025);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A3358();
  v3 = sub_2542DF684();
  OUTLINED_FUNCTION_6_18(v3);
}

void sub_254366F3C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  sub_2543A2878();
  v8 = a3;
  v10 = a5;
  v9 = a1;
  sub_254366E24(v8);
}

uint64_t sub_254366FD0()
{
  OUTLINED_FUNCTION_28();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_254367040, 0, 0);
}

uint64_t sub_254367040()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v0[2] = v0[5];
  sub_2543A3298();

  v4 = [v3 description];
  v5 = sub_2543A2878();
  v7 = v6;

  MEMORY[0x259C093D0](v5, v7);

  OUTLINED_FUNCTION_14_10();
  v8 = [v2 description];
  v9 = sub_2543A2878();
  v11 = v10;

  MEMORY[0x259C093D0](v9, v11);

  v12 = sub_2542DF684() & 1;
  v13._countAndFlagsBits = 0xD000000000000033;
  v13._object = 0x80000002543BA3C0;
  Logging.ulog(_:extended:)(v13, v12);

  v14 = v0[1];

  return v14(1, 0);
}

uint64_t sub_2543671C4(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  v12 = a1;

  return sub_254366AA8(&unk_2543AFFD0, v9);
}

uint64_t sub_25436725C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_254367334;

  return sub_254366FD0();
}

uint64_t sub_254367334()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_41();
  v6 = v5[6];
  v7 = v5[5];
  v8 = v5[4];
  v9 = v5[3];
  v10 = v5[2];
  v11 = *v0;
  OUTLINED_FUNCTION_7();
  *v12 = v11;

  (v7)[2](v7, v4 & 1, v2);
  _Block_release(v7);

  OUTLINED_FUNCTION_27();

  return v13();
}

void sub_2543674AC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v50 = *MEMORY[0x277D85000] & *v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = &v49 - v12;
  OUTLINED_FUNCTION_16_9();
  sub_2543A3298();

  v52 = 0xD00000000000002FLL;
  v53 = 0x80000002543BA310;
  v13 = [a1 description];
  v14 = sub_2543A2878();
  v16 = v15;

  MEMORY[0x259C093D0](v14, v16);

  OUTLINED_FUNCTION_10_13();
  v17 = [a2 description];
  v18 = sub_2543A2878();
  v20 = v19;

  MEMORY[0x259C093D0](v18, v20);

  MEMORY[0x259C093D0](0x736E6F7073657220, 0xEA00000000003D65);
  v51 = a4;
  v21 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF330, &qword_2543AFFB0);
  v22 = sub_2543A2888();
  MEMORY[0x259C093D0](v22);

  v23 = v52;
  v24 = v53;
  v25 = sub_2542DF684() & 1;
  v26._countAndFlagsBits = v23;
  v27 = ObjectType;
  v26._object = v24;
  Logging.ulog(_:extended:)(v26, v25);

  if (a4)
  {
    v28 = *(v50 + 80);
    v29 = swift_dynamicCastUnknownClass();
    if (v29)
    {
      v30 = v29;
      v31 = sub_2543A2BB8();
      __swift_storeEnumTagSinglePayload(v49, 1, 1, v31);
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v32[4] = v5;
      v32[5] = a2;
      v32[6] = v30;
      v33 = v21;
      v34 = v5;
      v35 = a2;
      sub_2542CCD54();
    }

    else
    {
      v52 = 0;
      v53 = 0xE000000000000000;
      v54 = v5;
      v43 = v21;
      sub_2543A3298();
      OUTLINED_FUNCTION_18_7();
      v44 = [v43 description];
      sub_2543A2878();
      OUTLINED_FUNCTION_19_6();
      MEMORY[0x259C093D0](v5, a2);

      MEMORY[0x259C093D0](0x6574636570786520, 0xEE003D6570795464);
      v45 = sub_2543A37B8();
      MEMORY[0x259C093D0](v45);

      v46 = v52;
      v47 = v53;
      v48 = sub_2542DF684();
      Logging.ulog(_:_:extended:)(90, v46, v47, v48 & 1, v27, &off_28664B288);
    }
  }

  else
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    v54 = v5;
    sub_2543A3298();
    OUTLINED_FUNCTION_18_7();
    v36 = [a2 description];
    v37 = sub_2543A2878();
    v39 = v38;

    MEMORY[0x259C093D0](v37, v39);

    v40 = v52;
    v41 = v53;
    v42 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(90, v40, v41, v42 & 1, v27, &off_28664B288);
  }
}

uint64_t sub_254367928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25436794C, 0, 0);
}

uint64_t sub_25436794C()
{
  OUTLINED_FUNCTION_28();
  v1 = (v0[2] + qword_27F5E1F90);
  v2 = v1[1];
  v8 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_254367A48;
  v6 = v0[3];
  v5 = v0[4];

  return v8(v6, v5);
}

uint64_t sub_254367A48()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_27();

  return v5();
}

void sub_254367B28(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a1;
  sub_2543674AC(v10, v11, v14, a6);
}

uint64_t sub_254367BD8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - v12;
  OUTLINED_FUNCTION_16_9();
  sub_2543A3298();

  v35 = 0xD000000000000035;
  v36 = 0x80000002543BA2D0;
  v14 = [a1 description];
  v15 = sub_2543A2878();
  v17 = v16;

  MEMORY[0x259C093D0](v15, v17);

  OUTLINED_FUNCTION_10_13();
  v18 = [a2 description];
  v19 = sub_2543A2878();
  v21 = v20;

  MEMORY[0x259C093D0](v19, v21);

  v22 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v22, 0xE700000000000000);
  v34 = a5;
  v23 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF340, &qword_2543A68E8);
  v24 = sub_2543A2888();
  MEMORY[0x259C093D0](v24);

  v25 = v35;
  v26 = v36;
  v27 = sub_2542DF684() & 1;
  v28._countAndFlagsBits = v25;
  v28._object = v26;
  Logging.ulog(_:extended:)(v28, v27);

  v29 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v29);
  OUTLINED_FUNCTION_175();
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v6;
  v30[5] = a2;
  v31 = v6;
  v32 = a2;
  sub_2542CCD54();
}

uint64_t sub_254367E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_254367E4C, 0, 0);
}

uint64_t sub_254367E4C()
{
  OUTLINED_FUNCTION_28();
  v1 = (v0[2] + qword_27F5E1F98);
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2543168D0;
  v5 = v0[3];

  return v7(v5);
}

void sub_254367F48(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  v19 = a7;
  sub_254367BD8(v12, v13, v17, v18, a7);
}

uint64_t sub_254368000()
{
  OUTLINED_FUNCTION_4_18();
  swift_getObjectType();
  OUTLINED_FUNCTION_1_26();
  sub_2543A3298();
  OUTLINED_FUNCTION_12_17();
  MEMORY[0x259C093D0](0xD000000000000032);
  MEMORY[0x259C093D0](0x656375646F727020, 0xEA00000000003D72);
  v2 = [v1 description];
  v3 = sub_2543A2878();
  v5 = v4;

  MEMORY[0x259C093D0](v3, v5);

  OUTLINED_FUNCTION_14_10();
  v6 = [v0 description];
  sub_2543A2878();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_13_8();

  v7 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v7, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A3358();
  v8 = sub_2542DF684();
  OUTLINED_FUNCTION_6_18(v8);
}

void sub_254368170(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = a1;
  sub_254368000();
}

uint64_t sub_254368240(uint64_t a1)
{
  v2 = *(a1 + qword_27F5E1F90 + 8);

  v3 = *(a1 + qword_27F5E1F98 + 8);
}

uint64_t sub_2543682AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2543682F0()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_17(v5);
  *v6 = v7;
  v6[1] = sub_2542DB160;
  v8 = OUTLINED_FUNCTION_16();

  return sub_254367E2C(v8, v9, v2, v4, v3);
}

uint64_t sub_25436839C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2543683EC()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_17(v6);
  *v7 = v8;
  v7[1] = sub_2542DB160;
  v9 = OUTLINED_FUNCTION_16();

  return sub_254367928(v9, v10, v2, v3, v4, v5);
}

uint64_t sub_2543684A0()
{
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2543684EC()
{
  OUTLINED_FUNCTION_40();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_6_23(v6);

  return v8(v7);
}

uint64_t sub_25436858C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2542DB160;

  return v7();
}

uint64_t sub_254368678()
{
  OUTLINED_FUNCTION_40();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_6_23(v6);

  return v8(v7);
}

uint64_t sub_254368718(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2542D32CC;

  return v8();
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_25436883C()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_17(v5);
  *v6 = v7;
  v6[1] = sub_2542DB160;
  v8 = OUTLINED_FUNCTION_16();

  return v9(v8);
}

uint64_t sub_2543688F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2542DA8D8(a3, v25 - v11);
  v13 = sub_2543A2BB8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_254368B90(v12);
  }

  else
  {
    sub_2543A2BA8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_2543A2B58();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2543A28A8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_254368B90(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254368B90(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_254368B90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254368BF8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254368CF0;

  return v7(a1);
}

uint64_t sub_254368CF0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_254368DD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254368E0C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17(v3);
  *v4 = v5;
  v4[1] = sub_2542DB160;
  v6 = OUTLINED_FUNCTION_16();

  return v7(v6);
}

uint64_t sub_254368EB4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17(v3);
  *v4 = v5;
  v4[1] = sub_2542D32CC;
  v6 = OUTLINED_FUNCTION_16();

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_6_23(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_14_10()
{

  JUMPOUT(0x259C093D0);
}

void OUTLINED_FUNCTION_16_9()
{
  *(v1 - 104) = 0;
  *(v1 - 96) = 0xE000000000000000;
  *(v1 - 88) = v0;
}

void OUTLINED_FUNCTION_18_7()
{

  JUMPOUT(0x259C093D0);
}

void OUTLINED_FUNCTION_19_6()
{
}

uint64_t sub_254369100(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v54 = a1;
  v55 = a2;
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_24();
  v56 = v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v58 = v19;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v43 - v24;
  v26 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_24();
  v52 = v27;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v46 = v29;
  v47 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v33 = &v43 - v32;
  v34 = sub_2543A2EF8();
  if (!v34)
  {
    return sub_2543A2A88();
  }

  v57 = v34;
  v61 = sub_2543A3328();
  v48 = sub_2543A3338();
  sub_2543A3308();
  result = sub_2543A2ED8();
  if ((v57 & 0x8000000000000000) == 0)
  {
    v43 = v12;
    v44 = a5;
    v36 = 0;
    v49 = (v58 + 16);
    v50 = v58 + 8;
    v51 = v8;
    while (!__OFADD__(v36, 1))
    {
      v58 = v36 + 1;
      v37 = sub_2543A2FA8();
      (*v49)(v25);
      v37(v60, 0);
      v38 = v59;
      v54(v25, v56);
      if (v38)
      {
        v41 = OUTLINED_FUNCTION_2_32();
        v42(v41);
        (*(v46 + 8))(v33, v47);

        return (*(v43 + 32))(v45, v56, v44);
      }

      v59 = 0;
      v39 = OUTLINED_FUNCTION_2_32();
      v40(v39);
      sub_2543A3318();
      result = sub_2543A2F58();
      ++v36;
      if (v58 == v57)
      {
        (*(v46 + 8))(v33, v47);
        return v61;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2543694D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(a4 + 80))();
  sub_254369548(a2, v4, a1, a3, a4);
  return v9 & 0x101;
}

uint64_t sub_254369548(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v10 = sub_2543A30C8();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_0(a1, v15);
  v17 = *(a5 + 64);
  v28 = a3;
  v29 = a2;
  v18 = v17(a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = MEMORY[0x259C098B0](v16, v18, AssociatedTypeWitness, v15, AssociatedConformanceWitness, *(v14 + 8));
  v30[0] = v21;
  v22 = sub_2543A2EB8();
  WitnessTable = swift_getWitnessTable();
  if (!sub_254372EE4())
  {
  }

  v30[3] = v22;
  v30[4] = WitnessTable;
  v30[0] = v21;
  (*(a5 + 96))(v13, v28, v30, a4, a5);
  (*(v26 + 8))(v13, v27);
  return __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t sub_254369780(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v8);
  v19[2] = a3;
  v19[3] = a4;
  v20 = v4;
  v21 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2080, &unk_2543B0070);
  v12 = sub_254369100(sub_25436A204, v19, v8, v10, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v11);
  v13 = 0;
  v14 = 0;
  v15 = *(v12 + 16);
  for (i = (v12 + 33); v15; --v15)
  {
    v13 |= *(i - 1);
    v14 |= *i;
    i += 2;
  }

  if (v14)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 0xFFFFFFFE | v13 & 1;
}

uint64_t sub_25436987C(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v35 = a2;
  v39 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = sub_2543A30C8();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_2();
  v38 = v16;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - v23;
  v26 = a3[3];
  v25 = a3[4];
  v27 = __swift_project_boxed_opaque_existential_0(a3, v26);
  v48 = a4;
  v49 = a5;
  v50 = v36;
  v51 = v35;
  v36 = sub_254369100(sub_25436A1B8, v47, v26, TupleTypeMetadata2, MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v27);
  v52 = v36;
  __swift_storeEnumTagSinglePayload(v14, 1, 1, AssociatedTypeWitness);
  v28 = *(TupleTypeMetadata2 + 48);
  *v22 = 0;
  v29 = v9 + 32;
  v30 = *(v9 + 32);
  AssociatedTypeWitness = v29;
  v31 = v34;
  v30(&v22[v28], v14, v34);
  v45 = a4;
  v46 = a5;
  v40 = a4;
  v41 = a5;
  v42 = sub_25436A1DC;
  v43 = &v44;
  sub_2543A2B38();
  swift_getWitnessTable();
  sub_2543A29C8();
  (*(v38 + 8))(v22, TupleTypeMetadata2);

  v32 = *v24;
  v30(v39, &v24[*(TupleTypeMetadata2 + 48)], v31);
  return v32;
}

uint64_t sub_254369BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_2543A30C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = (*(a4 + 88))(&a5[*(TupleTypeMetadata2 + 48)], a2, a1, a3, a4);
  *a5 = result & 1;
  return result;
}

uint64_t sub_254369C98(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5)
{
  v35 = a5;
  v33 = a4;
  v32 = a3;
  v37 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_2543A30C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v30 - v19;
  *(&v30 - v19) = a2;
  v21 = *(v6 - 8);
  v22 = *(v21 + 16);
  v22(&v30 + *(v18 + 48) - v19, v32, v6);
  *v17 = v33;
  v22(&v17[*(TupleTypeMetadata2 + 48)], v35, v6);
  v31 = v21;
  if (a2)
  {
    LODWORD(v35) = 1;
  }

  else
  {
    (*(v8 + 16))(v14, v17, TupleTypeMetadata2);
    LODWORD(v35) = *v14;
    (*(v21 + 8))(&v14[*(TupleTypeMetadata2 + 48)], v6);
  }

  v23 = *(v8 + 32);
  v24 = v34;
  v23(v34, v20, TupleTypeMetadata2);
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = AssociatedTypeWitness;
  if (__swift_getEnumTagSinglePayload(&v24[v25], 1, AssociatedTypeWitness) == 1)
  {
    v23(v14, v17, TupleTypeMetadata2);
    v27 = v31;
    (*(v31 + 32))(v37, &v14[*(TupleTypeMetadata2 + 48)], v6);
    if (__swift_getEnumTagSinglePayload(&v24[v25], 1, v26) != 1)
    {
      (*(v27 + 8))(&v24[v25], v6);
    }
  }

  else
  {
    (*(v8 + 8))(v17, TupleTypeMetadata2);
    v28 = v37;
    (*(*(v26 - 8) + 32))(v37, &v24[v25], v26);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v26);
  }

  return v35;
}

uint64_t sub_25436A004@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t (*a3)(_BYTE *, uint64_t, unsigned __int8 *, void, unsigned __int8 *)@<X2>, _BYTE *a4@<X8>)
{
  v8 = *a1;
  swift_getAssociatedTypeWitness();
  sub_2543A30C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a3(&a4[*(TupleTypeMetadata2 + 48)], v8, &a1[*(TupleTypeMetadata2 + 48)], *a2, &a2[*(TupleTypeMetadata2 + 48)]);
  *a4 = result & 1;
  return result;
}

uint64_t sub_25436A0D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = *(a3 + 80);
  v11 = *(a3 + 96);
  v7 = type metadata accessor for TargetedObserverStore();
  v8 = sub_254369780(a1, a2, v7, a4);
  return v8 & 1 | ((v8 > 0xFFu) << 8);
}

uint64_t sub_25436A144(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a4 + 80);
  v12 = *(a4 + 96);
  v9 = type metadata accessor for TargetedObserverStore();
  return sub_25436987C(a1, a2, a3, v9, a5) & 1;
}

uint64_t sub_25436A1DC(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  return sub_254369C98(a1, a2, a3, a4, a5);
}

uint64_t sub_25436A1E4@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 40);
  return sub_25436A004(a1, a2, *(v3 + 32), a3);
}

uint64_t sub_25436A204@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = v2[4];
  result = (*(v2[3] + 72))(v2[5], a1, v2[2]);
  *a2 = result & 1;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_32(__int16 a1)
{
  *(v1 - 2) = a1 & 1;
  *(v1 - 3) = HIBYTE(a1) & 1;
  return a1 & 1 | ((HIBYTE(a1) & 1) << 8);
}

uint64_t sub_25436A2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v7 = v6(a2, a3);
  MEMORY[0x259C093D0](v7);

  sub_2543005C0(40, 0xD00000000000001DLL, 0x80000002543BA4E0, 0);

  v8 = v6(a2, a3);
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  swift_beginAccess();
  v12 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + 16);
  sub_25431997C(sub_25436A904, v11, v8, v10, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v15;

  return swift_endAccess();
}

uint64_t sub_25436A40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2543A3298();

  *&v17 = 0xD000000000000026;
  *(&v17 + 1) = 0x80000002543BA4B0;
  MEMORY[0x259C093D0](a1, a2);
  MEMORY[0x259C093D0](0x3D79656B20, 0xE500000000000000);
  MEMORY[0x259C093D0](a4, a5);
  sub_2543005C0(40, 0xD000000000000026, 0x80000002543BA4B0, 0);

  swift_beginAccess();
  v12 = sub_254396570(a1, a2, *(v6 + 16));
  if (v12)
  {
    swift_endAccess();
    v19 = a3;
    v16[0] = a4;
    v16[1] = a5;
    v12(&v17, &v19, v16);
    sub_2542D7A3C(v12);
    if (v18)
    {
      return sub_2542DA8C0(&v17, a6);
    }

    sub_254300464(&v17);
  }

  else
  {
    swift_endAccess();
    a5 = a2;
    a4 = a1;
  }

  sub_25436A8A0();
  swift_allocError();
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = v12 != 0;
  sub_2543A2768();
  return swift_willThrow();
}

uint64_t sub_25436A5D8()
{
  type metadata accessor for TransportRequestsRegister();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2098, &qword_2543B00E8);
  result = sub_2543A2748();
  *(v0 + 16) = result;
  qword_27F5E2088 = v0;
  return result;
}

uint64_t static TransportRequestsRegister.shared.getter()
{
  if (qword_27F5DF088 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25436A6A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_2543A30C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = a2[1];
  v18 = *(*(a4 + 8) + 8);
  sub_25430D830(a3, &v21 - v13);
  if (__swift_getEnumTagSinglePayload(v14, 1, a3) == 1)
  {
    result = (*(v11 + 8))(v14, v10);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    *(a5 + 24) = a3;
    *(a5 + 32) = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, v14, a3);
  }

  return result;
}

uint64_t TransportRequestsRegister.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TransportRequestsRegister.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_25436A8A0()
{
  result = qword_27F5E2090;
  if (!qword_27F5E2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2090);
  }

  return result;
}

uint64_t IntroductionResponse.opalVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2543A2768();
  return v1;
}

uint64_t sub_25436A960(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x737265566C61706FLL && a2 == 0xEB000000006E6F69)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25436AA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25436A960(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25436AA2C(uint64_t a1)
{
  v2 = sub_25436ABD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25436AA68(uint64_t a1)
{
  v2 = sub_25436ABD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntroductionResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E20A0, &qword_2543B01B0);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25436ABD4();
  sub_2543A3778();
  sub_2543A3548();
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_25436ABD4()
{
  result = qword_27F5E20A8;
  if (!qword_27F5E20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20A8);
  }

  return result;
}

uint64_t IntroductionResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E20B0, &qword_2543B01B8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25436ABD4();
  sub_2543A3768();
  if (!v2)
  {
    v14 = sub_2543A34A8();
    v16 = v15;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    a2[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25436ADE0(uint64_t a1)
{
  v2 = sub_25436AF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25436AE1C(uint64_t a1)
{
  v2 = sub_25436AF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntroductionRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E20B8, &qword_2543B01D8);
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25436AF60();
  sub_2543A3778();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_25436AF60()
{
  result = qword_27F5E20C0;
  if (!qword_27F5E20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20C0);
  }

  return result;
}

unint64_t sub_25436B008()
{
  result = qword_27F5E20C8;
  if (!qword_27F5E20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20C8);
  }

  return result;
}

unint64_t sub_25436B05C()
{
  result = qword_27F5E20D0;
  if (!qword_27F5E20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20D0);
  }

  return result;
}

unint64_t sub_25436B0B4()
{
  result = qword_27F5E20D8;
  if (!qword_27F5E20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20D8);
  }

  return result;
}

unint64_t sub_25436B128(uint64_t a1)
{
  result = sub_25436B150();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25436B150()
{
  result = qword_27F5E20E0;
  if (!qword_27F5E20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20E0);
  }

  return result;
}

uint64_t sub_25436B1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25436B20C()
{
  result = qword_27F5E20E8;
  if (!qword_27F5E20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20E8);
  }

  return result;
}

unint64_t sub_25436B260()
{
  result = qword_27F5E20F0;
  if (!qword_27F5E20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20F0);
  }

  return result;
}

uint64_t sub_25436B2E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25436B324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_25436B394(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x25436B430);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25436B46C()
{
  result = qword_27F5E20F8;
  if (!qword_27F5E20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20F8);
  }

  return result;
}

unint64_t sub_25436B4C4()
{
  result = qword_27F5E2100;
  if (!qword_27F5E2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2100);
  }

  return result;
}

unint64_t sub_25436B51C()
{
  result = qword_27F5E2108;
  if (!qword_27F5E2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2108);
  }

  return result;
}

unint64_t sub_25436B574()
{
  result = qword_27F5E2110;
  if (!qword_27F5E2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2110);
  }

  return result;
}

unint64_t sub_25436B5CC()
{
  result = qword_27F5E2118;
  if (!qword_27F5E2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2118);
  }

  return result;
}

uint64_t sub_25436B6A0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_100();
  *v3 = a2;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_25436B70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

id sub_25436B77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_2543A1F88();
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 24);
  [v16 lock];
  sub_2543A1F78();
  (*(v10 + 16))(v15, a3, v8);
  swift_beginAccess();

  v17 = *(v4 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + 16);
  sub_254319550(a1, a2, v15);
  *(v4 + 16) = v19;
  (*(v10 + 8))(v15, v8);
  swift_endAccess();
  return [v16 unlock];
}

uint64_t sub_25436B8F0()
{
  v1 = *(v0 + 24);
  [v1 lock];
  swift_beginAccess();
  sub_2542D56FC();
  swift_endAccess();
  [v1 unlock];
  return OUTLINED_FUNCTION_5_1();
}

void sub_25436B978(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_67();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v11 = a2;
  v10 = a3;
  v7(v11, v10, sub_25437259C, v9);
}

void sub_25436BA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2543A1E78();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_25436BAB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(*(a4[2] + 16) + 8);
  v9 = sub_2542DF684();
  v10._object = 0x80000002543BA520;
  v11 = v9 & 1;
  v10._countAndFlagsBits = 0xD00000000000001BLL;
  Logging.ulog(_:extended:)(v10, v11);
  v29 = a4[3];
  v12 = OUTLINED_FUNCTION_5_10();
  v14 = v13(v12);
  v28 = a4[5];
  v15 = OUTLINED_FUNCTION_5_10();
  v17 = v16(v15);
  OUTLINED_FUNCTION_67();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = v17;
  v19[5] = v18;
  v19[6] = a1;
  v19[7] = a2;
  v34 = sub_25437224C;
  v35 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_25436B978;
  v33 = &block_descriptor_61;
  v20 = _Block_copy(&aBlock);

  type metadata accessor for CoordinationRequest();
  [v14 registerHandler:v20 forRequestClass:swift_getObjCClassFromMetadata()];
  _Block_release(v20);

  v21 = OUTLINED_FUNCTION_5_10();
  v22 = v29(v21);
  v23 = OUTLINED_FUNCTION_5_10();
  v24 = v28(v23);
  OUTLINED_FUNCTION_67();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = v24;
  v26[5] = v25;
  v34 = sub_2543722D4;
  v35 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_25436B978;
  v33 = &block_descriptor_68;
  v27 = _Block_copy(&aBlock);

  type metadata accessor for CoordinationObservationUpdate();
  [v22 registerHandler:v27 forRequestClass:swift_getObjCClassFromMetadata()];
  _Block_release(v27);
}

uint64_t sub_25436BD88()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_2_33(v1);
  type metadata accessor for CoordinationTransportServer();
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v0 = v2;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436BE28();
}

uint64_t sub_25436BE28()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v1[32] = v4;
  v1[33] = v0;
  v1[30] = v5;
  v1[31] = v2;
  v1[28] = v6;
  v1[29] = v7;
  v1[26] = v8;
  v1[27] = v9;
  v10 = *(v5 - 8);
  v1[34] = v10;
  v11 = *(v10 + 64);
  v1[35] = OUTLINED_FUNCTION_146();
  v12 = *(*(v3 + 8) + 8);
  sub_2543A2B58();
  OUTLINED_FUNCTION_46_4();
  v1[36] = v13;
  v1[37] = v14;
  v15 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_25436BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[25] = v10[33];
  v11 = v10[34];
  v12 = v10[31];
  v46 = v10[35];
  v47 = v10[32];
  v13 = v10[29];
  v14 = v10[30];
  v15 = v10[28];
  v45 = v10[27];
  sub_2543A3298();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000001BLL);
  OUTLINED_FUNCTION_57_2();
  sub_2543A35C8();
  v16 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x259C093D0](v16, 0xE800000000000000);
  v17 = *(v12 + 16);
  v18 = *(v17 + 8);
  swift_getAssociatedTypeWitness();
  sub_2543A35C8();
  v19 = *(*(v17 + 16) + 8);
  v20 = sub_2542DF684() & 1;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v21, v20);

  type metadata accessor for CoordinationRequest();
  (*(v11 + 16))(v46, v45, v14);
  v22 = sub_2542FFF24(v46, v14, v47);
  v10[38] = v22;
  v23 = *(v12 + 48);
  OUTLINED_FUNCTION_28_4();
  v25 = v24();
  v10[39] = v25;
  if (!v25)
  {
    sub_254357FB0();
    OUTLINED_FUNCTION_100();
    *v30 = 0u;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 2;
    swift_willThrow();

    v31 = v10[35];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_98_0();

    __asm { BRAA            X1, X16 }
  }

  v26 = v25;
  v27 = v10[33];
  v28 = (*(v10[31] + 24))(v10[29]);
  v10[40] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF380, &unk_2543A6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2543A6820;
  *(inited + 32) = [v26 member];
  if (sub_2542EEECC(inited))
  {
    sub_254371BCC(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_2542F14A8();
  }

  sub_254371D74();
  sub_254371DB8();
  v34 = sub_2543A2DA8();
  v10[41] = v34;

  v10[2] = v10;
  v10[7] = v10 + 23;
  v10[3] = sub_25436C2C0;
  v35 = swift_continuation_init();
  v10[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF398, &unk_2543B0540);
  v10[10] = MEMORY[0x277D85DD0];
  v10[11] = 1107296256;
  v10[12] = sub_254372800;
  v10[13] = &block_descriptor_7;
  v10[14] = v35;
  [v28 sendRequest:v22 members:v34 withCompletionHandler:v10 + 10];
  OUTLINED_FUNCTION_98_0();

  return MEMORY[0x282200938](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_25436C2C0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 336) = v4;
  v5 = v3[37];
  v6 = v3[36];
  if (v4)
  {
    v7 = sub_25436C5C8;
  }

  else
  {
    v7 = sub_25436C3E0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25436C3E0()
{
  OUTLINED_FUNCTION_69_0();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);

  v5 = *(v0 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_83_2();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_14_3();
  type metadata accessor for CoordinationResponse();
  v7 = swift_dynamicCastClass();
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  if (v7)
  {
    v10 = v7;
    v11 = *(v0 + 280);
    v12 = *(v0 + 208);

    (*(*(AssociatedTypeWitness - 8) + 16))(v12, &v10[*((*MEMORY[0x277D85000] & *v10) + 0x60)], AssociatedTypeWitness);
  }

  else
  {
    swift_getObjectType();
    v14 = sub_2543A37B8();
    v16 = v15;
    v17 = sub_2543A37B8();
    v19 = v18;
    sub_254357FB0();
    OUTLINED_FUNCTION_100();
    *v20 = v14;
    *(v20 + 8) = v16;
    *(v20 + 16) = v17;
    *(v20 + 24) = v19;
    *(v20 + 32) = 1;
    swift_willThrow();

    v21 = *(v0 + 280);
  }

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_25436C5C8()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];
  swift_willThrow();

  v6 = v0[42];
  v7 = v0[35];

  OUTLINED_FUNCTION_27();

  return v8();
}

uint64_t sub_25436C654()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_2_33(v1);
  type metadata accessor for CoordinationTransportServer();
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v0 = v2;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436C6F4();
}

uint64_t sub_25436C6F4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_10_16(v1, v2, v3, v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_77_3();
  v9 = OUTLINED_FUNCTION_51_4(v8);
  v0[13] = v9;
  OUTLINED_FUNCTION_8(v9);
  v0[14] = v10;
  v12 = *(v11 + 64);
  v0[15] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_24_8();
  v0[16] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_35_5(v16);
  OUTLINED_FUNCTION_46_4();
  v0[19] = v17;
  v0[20] = v18;
  v19 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

void sub_25436C7F8()
{
  v0[2] = v0[10];
  v1 = v0[18];
  v2 = v0[12];
  v34 = v0[11];
  v35 = v0[15];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  sub_2543A3298();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000001BLL);
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_51_1();
  sub_2543A35C8();
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_79_2();
  v8 = *(OUTLINED_FUNCTION_76_3() + 8);
  OUTLINED_FUNCTION_80_2();
  sub_2543A35C8();
  v9 = *(v34 + 16);
  v10 = *(v9 + 8);
  sub_2542DF684();
  v37._countAndFlagsBits = OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_93_2(v37, v11);

  v12 = *(v4 + 56);
  OUTLINED_FUNCTION_28_4();
  v13();
  OUTLINED_FUNCTION_52_1(v35);
  if (!v14)
  {
    (*(v0[16] + 32))(v0[17], v0[15], v0[12]);
    v21 = *(v9 + 56);
    v36 = v21 + *v21;
    v22 = v21[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[21] = v23;
    *v23 = v24;
    v23[1] = sub_25436CAB8;
    v25 = v0[17];
    v26 = v0[9];
    v27 = v0[10];
    v29 = v0[6];
    v28 = v0[7];
    v30 = v0[3];
    v31 = v0[4];
    OUTLINED_FUNCTION_98_0();

    __asm { BRAA            X7, X16 }
  }

  v15 = OUTLINED_FUNCTION_62_2();
  v16(v15);
  sub_254357FB0();
  v17 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_4_16(v17, v18);
  OUTLINED_FUNCTION_78_2();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_98_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_25436CAB8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 168);
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 160);
  v8 = *(v1 + 152);
  if (v0)
  {
    v9 = sub_25436CC64;
  }

  else
  {
    v9 = sub_25436CBE0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_25436CBE0()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[15];
  (*(v0[16] + 8))(v0[17], v0[12]);

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_25436CC64()
{
  OUTLINED_FUNCTION_28();
  (*(v0[16] + 8))(v0[17], v0[12]);
  v1 = v0[22];
  OUTLINED_FUNCTION_78_2();

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_25436CCDC()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_2_33(v1);
  type metadata accessor for CoordinationTransportServer();
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v0 = v2;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436CD7C();
}

uint64_t sub_25436CD7C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_10_16(v1, v2, v3, v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_77_3();
  v9 = OUTLINED_FUNCTION_51_4(v8);
  v0[13] = v9;
  OUTLINED_FUNCTION_8(v9);
  v0[14] = v10;
  v12 = *(v11 + 64);
  v0[15] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_24_8();
  v0[16] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_35_5(v16);
  OUTLINED_FUNCTION_46_4();
  v0[19] = v17;
  v0[20] = v18;
  v19 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_25436D088()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 176);
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 168);

  OUTLINED_FUNCTION_167();
  v9 = *(v8 + 160);
  v10 = *(v1 + 152);
  if (v0)
  {
    v11 = sub_254372820;
  }

  else
  {
    v11 = sub_254372818;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_25436D1C4()
{
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_7_14();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  OUTLINED_FUNCTION_4_19(v1[7].n128_u64[0], v1[5], v1[6]);
  type metadata accessor for CoordinationTransportServer();
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_4();
  *v2 = v3;
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_77_0();

  return sub_25436D274();
}

uint64_t sub_25436D274()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_6(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_77_3();
  v10 = OUTLINED_FUNCTION_90_2(v9);
  v0[15] = v10;
  OUTLINED_FUNCTION_8(v10);
  v0[16] = v11;
  v13 = *(v12 + 64);
  v0[17] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_24_8();
  v0[18] = v14;
  v16 = *(v15 + 64);
  v17 = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_75_1(v17);
  OUTLINED_FUNCTION_46_4();
  v0[21] = v18;
  v0[22] = v19;
  v20 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_25436D378()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000002ALL);
  v1 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v1, 0xE600000000000000);
  v2 = sub_2543A37B8();
  MEMORY[0x259C093D0](v2);

  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_79_2();
  v3 = *(swift_getAssociatedConformanceWitness() + 8);
  OUTLINED_FUNCTION_80_2();
  sub_2543A35C8();
  OUTLINED_FUNCTION_50_2();
  v0[3] = v41;
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_14_3();
  v4 = sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_1();
  v5 = sub_2543A35D8();
  OUTLINED_FUNCTION_66_1(v5, v6, v7, v8, v9, v10, v11, v12, v39, v41, v43);
  v47._countAndFlagsBits = OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_93_2(v47, v13);

  v22 = OUTLINED_FUNCTION_49_1(v14, v15, v16, v17, v18, v19, v20, v21, v40, v42, v44, v45, v46);
  v23(v22);
  OUTLINED_FUNCTION_52_1(v4);
  if (v24)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    sub_254357FB0();
    v25 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_4_16(v25, v26);
    v27 = v0[19];
    v28 = v0[17];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_85();

    __asm { BRAA            X1, X16 }
  }

  v31 = OUTLINED_FUNCTION_48_2();
  v32(v31);
  v33 = OUTLINED_FUNCTION_20_8();
  v0[23] = v34(v33);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[24] = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_41_4(v35);
  OUTLINED_FUNCTION_85();

  return sub_2543289EC();
}

uint64_t sub_25436D5EC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 192);
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 184);

  OUTLINED_FUNCTION_167();
  v9 = *(v8 + 176);
  v10 = *(v1 + 168);
  if (v0)
  {
    v11 = sub_254372824;
  }

  else
  {
    v11 = sub_25437281C;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_25436D728()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_2_33(v1);
  type metadata accessor for CoordinationTransportServer();
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v0 = v2;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436D7C8();
}

uint64_t sub_25436D7C8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_10_16(v1, v2, v3, v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_77_3();
  v9 = OUTLINED_FUNCTION_51_4(v8);
  v0[13] = v9;
  OUTLINED_FUNCTION_8(v9);
  v0[14] = v10;
  v12 = *(v11 + 64);
  v0[15] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_24_8();
  v0[16] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_35_5(v16);
  OUTLINED_FUNCTION_46_4();
  v0[19] = v17;
  v0[20] = v18;
  v19 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_25436DAD4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 176);
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 168);

  OUTLINED_FUNCTION_167();
  v9 = *(v8 + 160);
  v10 = *(v1 + 152);
  if (v0)
  {
    v11 = sub_25436DC10;
  }

  else
  {
    v11 = sub_254372818;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_25436DC10()
{
  OUTLINED_FUNCTION_28();
  (*(v0[16] + 8))(v0[17], v0[12]);
  v1 = v0[23];
  OUTLINED_FUNCTION_78_2();

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_25436DC88()
{
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_7_14();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  OUTLINED_FUNCTION_4_19(v1[7].n128_u64[0], v1[5], v1[6]);
  type metadata accessor for CoordinationTransportServer();
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_4();
  *v2 = v3;
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_77_0();

  return sub_25436DD38();
}

uint64_t sub_25436DD38()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_6(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_77_3();
  v10 = OUTLINED_FUNCTION_90_2(v9);
  v0[15] = v10;
  OUTLINED_FUNCTION_8(v10);
  v0[16] = v11;
  v13 = *(v12 + 64);
  v0[17] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_24_8();
  v0[18] = v14;
  v16 = *(v15 + 64);
  v17 = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_75_1(v17);
  OUTLINED_FUNCTION_46_4();
  v0[21] = v18;
  v0[22] = v19;
  v20 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_25436DE3C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000002ALL);
  v1 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v1, 0xE600000000000000);
  v2 = sub_2543A37B8();
  MEMORY[0x259C093D0](v2);

  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_79_2();
  v3 = *(swift_getAssociatedConformanceWitness() + 8);
  OUTLINED_FUNCTION_80_2();
  sub_2543A35C8();
  OUTLINED_FUNCTION_50_2();
  v0[3] = v41;
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_14_3();
  v4 = sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_1();
  v5 = sub_2543A35D8();
  OUTLINED_FUNCTION_66_1(v5, v6, v7, v8, v9, v10, v11, v12, v39, v41, v43);
  v47._countAndFlagsBits = OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_93_2(v47, v13);

  v22 = OUTLINED_FUNCTION_49_1(v14, v15, v16, v17, v18, v19, v20, v21, v40, v42, v44, v45, v46);
  v23(v22);
  OUTLINED_FUNCTION_52_1(v4);
  if (v24)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    sub_254357FB0();
    v25 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_4_16(v25, v26);
    v27 = v0[19];
    v28 = v0[17];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_85();

    __asm { BRAA            X1, X16 }
  }

  v31 = OUTLINED_FUNCTION_48_2();
  v32(v31);
  v33 = OUTLINED_FUNCTION_20_8();
  v0[23] = v34(v33);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[24] = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_41_4(v35);
  OUTLINED_FUNCTION_85();

  return sub_254329C2C();
}

uint64_t sub_25436E0B0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 192);
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 184);

  OUTLINED_FUNCTION_167();
  v9 = *(v8 + 176);
  v10 = *(v1 + 168);
  if (v0)
  {
    v11 = sub_25436E270;
  }

  else
  {
    v11 = sub_25436E1EC;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_25436E1EC()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[17];
  (*(v0[18] + 8))(v0[19], v0[14]);

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_25436E270()
{
  OUTLINED_FUNCTION_28();
  (*(v0[18] + 8))(v0[19], v0[14]);
  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[17];

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_25436E2F0()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_72_3();
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  OUTLINED_FUNCTION_4_19(v0[7].n128_u64[0], v0[5], v0[6]);
  type metadata accessor for CoordinationTransportServer();
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  *v2 = v1;
  OUTLINED_FUNCTION_44_1();

  return sub_25436E3B8();
}

uint64_t sub_25436E3B8()
{
  OUTLINED_FUNCTION_28();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[6] = v7;
  v8 = *(v4 + 8);
  v1[13] = v8;
  v1[14] = *(v8 + 8);
  sub_2543A2B58();
  OUTLINED_FUNCTION_46_4();
  v1[15] = v9;
  v1[16] = v10;
  v11 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_25436E43C()
{
  v1 = *(v0 + 104);
  v20 = *(v0 + 112);
  v2 = *(v0 + 64);
  v17 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v18 = *(v0 + 96);
  *(v0 + 16) = v18;
  v19 = *(v0 + 80);
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD00000000000001CLL, 0x80000002543B9BF0);
  MEMORY[0x259C093D0](0x3D65746164707520, 0xE800000000000000);
  sub_2543A35C8();
  MEMORY[0x259C093D0](0x6576726573626F20, 0xEB000000005B7372);
  v5 = *(v19 + 16);
  v6 = *(v5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_83_2();
  *(v0 + 24) = sub_2543A2E28();
  v7 = sub_2543A35A8();
  MEMORY[0x259C093D0](v7);

  MEMORY[0x259C093D0](15709, 0xE200000000000000);
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_83_2();
  sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  sub_2543A35D8();
  v8 = *(*(v5 + 16) + 8);
  v9 = sub_2542DF684() & 1;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  OUTLINED_FUNCTION_93_2(v21, v9);

  v10 = (*(v19 + 24))(v2, v19);
  *(v0 + 136) = v10;
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  *(v11 + 16) = v2;
  *(v11 + 24) = v17;
  *(v11 + 32) = v19;
  *(v11 + 48) = v3;
  *(v11 + 56) = v18;
  *(v11 + 64) = v10;
  *(v11 + 72) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B50, &qword_2543AEB98);
  v12 = *(MEMORY[0x277D859B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 152) = v13;
  *v13 = v14;
  v13[1] = sub_25436E74C;
  OUTLINED_FUNCTION_85();

  return MEMORY[0x282200740]();
}

uint64_t sub_25436E74C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (v0)
  {
    v9 = *(v3 + 120);
    v10 = *(v3 + 128);
    v11 = sub_25436E858;
  }

  else
  {
    v12 = *(v3 + 144);

    v9 = *(v3 + 120);
    v10 = *(v3 + 128);
    v11 = sub_254356B0C;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_25436E858()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_25436E8BC()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_2_33(v1);
  type metadata accessor for CoordinationTransportClient();
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v0 = v2;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436BE28();
}

uint64_t sub_25436E95C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_25436EA3C()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_2_33(v1);
  type metadata accessor for CoordinationTransportClient();
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v0 = v2;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436C6F4();
}

uint64_t sub_25436EADC()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_2_33(v1);
  type metadata accessor for CoordinationTransportClient();
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v0 = v2;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436CD7C();
}

uint64_t sub_25436EB7C()
{
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_7_14();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  OUTLINED_FUNCTION_4_19(v1[7].n128_u64[0], v1[5], v1[6]);
  type metadata accessor for CoordinationTransportClient();
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_4();
  *v2 = v3;
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_77_0();

  return sub_25436D274();
}

uint64_t sub_25436EC2C()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_2_33(v1);
  type metadata accessor for CoordinationTransportClient();
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v0 = v2;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436D7C8();
}

uint64_t sub_25436ECCC()
{
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_7_14();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  OUTLINED_FUNCTION_4_19(v1[7].n128_u64[0], v1[5], v1[6]);
  type metadata accessor for CoordinationTransportClient();
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_4();
  *v2 = v3;
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_77_0();

  return sub_25436DD38();
}

uint64_t sub_25436ED7C()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_72_3();
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  OUTLINED_FUNCTION_4_19(v0[7].n128_u64[0], v0[5], v0[6]);
  type metadata accessor for CoordinationTransportClient();
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  *v2 = v1;
  OUTLINED_FUNCTION_44_1();

  return sub_25436E3B8();
}

uint64_t sub_25436EE44()
{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v5 = *(v4 + 56);
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

void sub_25436EF34(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v54 = a7;
  v55 = a3;
  v50 = a6;
  v51 = a2;
  v52 = a9;
  v53 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - v16;
  v18 = sub_2543A1F88();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v22 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v45 - v23;
  type metadata accessor for CoordinationRequest();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v49 = v25;
    v26 = swift_allocObject();
    v48 = a8;
    v27 = v26;
    *(v26 + 16) = v55;
    *(v26 + 24) = a4;
    v55 = a1;

    v47 = v24;
    sub_25436B77C(sub_25437280C, v27, v24);

    v28 = sub_2543A2BB8();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v28);
    v46 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    (*(v19 + 16))(v22, v24, v18);
    v29 = (*(v19 + 80) + 56) & ~*(v19 + 80);
    v30 = (v20 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v50 = v17;
    v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    v34 = v53;
    *(v33 + 4) = v52;
    *(v33 + 5) = v34;
    *(v33 + 6) = a5;
    (*(v19 + 32))(&v33[v29], v22, v18);
    *&v33[v30] = v46;
    v35 = v51;
    *&v33[v31] = v51;
    v36 = &v33[v32];
    v37 = v48;
    *v36 = v54;
    *(v36 + 1) = v37;
    *&v33[(v32 + 23) & 0xFFFFFFFFFFFFFFF8] = v49;
    v38 = v55;

    v39 = v35;

    sub_2542CCD54();

    (*(v19 + 8))(v47, v18);
  }

  else
  {
    swift_getObjectType();
    v40 = sub_2543A37B8();
    v42 = v41;
    sub_254357FB0();
    v43 = swift_allocError();
    *v44 = v40;
    *(v44 + 8) = v42;
    *(v44 + 16) = 0xD000000000000013;
    *(v44 + 24) = 0x80000002543BA560;
    *(v44 + 32) = 0;
    (v55)(0, v43);
  }
}

uint64_t sub_25436F350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = v21;
  v8[21] = v22;
  v8[18] = v19;
  v8[19] = v20;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = *(v22 + 16);
  v8[22] = v9;
  v10 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[23] = AssociatedTypeWitness;
  v12 = sub_2543A30C8();
  v8[24] = v12;
  v13 = *(v12 - 8);
  v8[25] = v13;
  v14 = *(v13 + 64) + 15;
  v8[26] = swift_task_alloc();
  v15 = *(AssociatedTypeWitness - 8);
  v8[27] = v15;
  v16 = *(v15 + 64) + 15;
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25436F4AC, 0, 0);
}

uint64_t sub_25436F4AC()
{
  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = sub_25436B8F0();
  *(v0 + 232) = v3;
  *(v0 + 240) = v4;
  if (v3)
  {
    v5 = *(v0 + 120);
    OUTLINED_FUNCTION_91_2();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 248) = Strong;
    if (Strong)
    {
      v7 = *(v0 + 160);
      v8 = *(v0 + 168);
      *(v0 + 256) = [*(v0 + 128) member];
      v9 = *(v8 + 64);
      v8 += 64;
      *(v0 + 264) = v9;
      *(v0 + 272) = v8 & 0xFFFFFFFFFFFFLL | 0xF7E2000000000000;
      v10 = *(*(v8 - 56) + 8);
      sub_2543A2B58();
      v11 = OUTLINED_FUNCTION_64_2();

      return MEMORY[0x2822009F8](v11, v12, v13);
    }

    __swift_storeEnumTagSinglePayload(*(v0 + 208), 1, 1, *(v0 + 184));
    v14 = *(v0 + 232);
    v15 = *(v0 + 240);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_254357FB0();
    v16 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_19_7(v16, v17);
    v26 = OUTLINED_FUNCTION_86_1(v18, v19, v20, v21, v22, v23, v24, v25, v30, 0);
    v14(v26);
    v27 = OUTLINED_FUNCTION_5_1();
    sub_2542DB194(v27);
  }

  OUTLINED_FUNCTION_92_2();

  OUTLINED_FUNCTION_27();

  return v28();
}

uint64_t sub_25436F624()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 208);
  (*(v0 + 264))(v2, *(v0 + 160), *(v0 + 168));

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25436F6A0()
{
  OUTLINED_FUNCTION_89();
  v25 = v0;
  v1 = v0[26];
  v2 = v0[23];
  OUTLINED_FUNCTION_52_1(v1);
  if (v3)
  {
    v5 = v0[29];
    v4 = v0[30];
    (*(v0[25] + 8))(v1, v0[24]);
    sub_254357FB0();
    v6 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_19_7(v6, v7);
    v23 = 0;
    v24 = v8;
    v5(&v23, &v24);
    v9 = OUTLINED_FUNCTION_5_10();
    sub_2542DB194(v9);

    OUTLINED_FUNCTION_92_2();

    OUTLINED_FUNCTION_27();

    return v10();
  }

  else
  {
    v12 = v0[28];
    v13 = v0[19];
    v14 = v0[17];
    v15 = *(v0[27] + 32);
    OUTLINED_FUNCTION_83_2();
    v16();
    sub_2542FFE54((v0 + 2));
    v22 = (v14 + *v14);
    v17 = v14[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[35] = v18;
    *v18 = v19;
    v18[1] = sub_25436F878;
    v20 = v0[28];
    v21 = v0[18];

    return (v22)(v0 + 2, v20);
  }
}

uint64_t sub_25436F878()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v8 = *(v7 + 280);
  v9 = *v1;
  OUTLINED_FUNCTION_7();
  *v10 = v9;
  v5[36] = v0;

  if (!v0)
  {
    v5[37] = v3;
  }

  __swift_destroy_boxed_opaque_existential_0(v5 + 2);
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_25436F994()
{
  OUTLINED_FUNCTION_89();
  v12 = v0;
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[23];
  v10 = v0[37];
  v11 = 0;
  v6 = v10;
  v1(&v10, &v11);
  v7 = OUTLINED_FUNCTION_5_1();
  sub_2542DB194(v7);

  (*(v4 + 8))(v3, v5);
  OUTLINED_FUNCTION_92_2();

  OUTLINED_FUNCTION_27();

  return v8();
}

uint64_t sub_25436FA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_94();
  a22 = v24;
  v27 = v24[36];
  v29 = v24[29];
  v28 = v24[30];
  v30 = v24[27];
  v45 = v24[28];
  a11 = 0;
  v31 = v24[22];
  v32 = v24[23];
  v33 = v24[20];
  a12 = 0xE000000000000000;
  sub_2543A3298();
  v34 = a12;
  v24[10] = a11;
  v24[11] = v34;
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000018);
  v24[12] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A3358();
  static Logging.ulog(_:extended:)(v24[10], v24[11], 0, v33, *(*(v31 + 16) + 8));

  a13 = 0;
  a11 = v27;
  v35 = v27;
  v29(&a13, &a11);
  sub_2542DB194(v29);

  (*(v30 + 8))(v45, v32);
  OUTLINED_FUNCTION_92_2();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_48();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, a11, a12, a13, a14, a15, a16);
}

void sub_25436FBD4(void *a1, void *a2, void (*a3)(void, void *), uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v52 = a7;
  v53 = a8;
  v51 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - v15;
  v17 = sub_2543A1F88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v50 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  type metadata accessor for CoordinationObservationUpdate();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v49 = v23;
    v24 = swift_allocObject();
    v48 = a2;
    v25 = v24;
    *(v24 + 16) = a3;
    *(v24 + 24) = a4;
    v47 = a1;

    v26 = v22;
    v46 = v22;
    sub_25436B77C(sub_254372318, v25, v22);

    v27 = sub_2543A2BB8();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v27);
    v28 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v29 = v50;
    (*(v18 + 16))(v50, v26, v17);
    v30 = (*(v18 + 80) + 56) & ~*(v18 + 80);
    v31 = (v19 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = a5;
    v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v51 = v16;
    v34 = swift_allocObject();
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    v35 = v53;
    *(v34 + 4) = v52;
    *(v34 + 5) = v35;
    *(v34 + 6) = v32;
    (*(v18 + 32))(&v34[v30], v29, v17);
    *&v34[v31] = v28;
    v37 = v48;
    v36 = v49;
    *&v34[v33] = v48;
    *&v34[(v33 + 15) & 0xFFFFFFFFFFFFFFF8] = v36;
    v38 = v47;

    v39 = v37;
    sub_2542CCD54();

    (*(v18 + 8))(v46, v17);
  }

  else
  {
    swift_getObjectType();
    v40 = sub_2543A37B8();
    v42 = v41;
    sub_254357FB0();
    v43 = swift_allocError();
    *v44 = v40;
    *(v44 + 8) = v42;
    *(v44 + 16) = 0xD00000000000001DLL;
    *(v44 + 24) = 0x80000002543BA540;
    *(v44 + 32) = 0;
    a3(0, v43);
  }
}

uint64_t sub_25436FFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = v18;
  v8[21] = v19;
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[15] = a4;
  v9 = *(*(v19 + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[22] = AssociatedTypeWitness;
  v11 = sub_2543A30C8();
  v8[23] = v11;
  v12 = *(v11 - 8);
  v8[24] = v12;
  v13 = *(v12 + 64) + 15;
  v8[25] = swift_task_alloc();
  v14 = *(AssociatedTypeWitness - 8);
  v8[26] = v14;
  v15 = *(v14 + 64) + 15;
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254370114, 0, 0);
}

uint64_t sub_254370114()
{
  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = sub_25436B8F0();
  *(v0 + 224) = v3;
  *(v0 + 232) = v4;
  if (v3)
  {
    v5 = *(v0 + 136);
    OUTLINED_FUNCTION_91_2();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 240) = Strong;
    if (Strong)
    {
      v7 = *(v0 + 160);
      v8 = *(v0 + 168);
      *(v0 + 248) = [*(v0 + 144) member];
      v9 = *(v8 + 64);
      v8 += 64;
      *(v0 + 256) = v9;
      *(v0 + 264) = v8 & 0xFFFFFFFFFFFFLL | 0xF7E2000000000000;
      *(v0 + 272) = *(*(v8 - 56) + 8);
      sub_2543A2B58();
      v10 = OUTLINED_FUNCTION_64_2();

      return MEMORY[0x2822009F8](v10, v11, v12);
    }

    __swift_storeEnumTagSinglePayload(*(v0 + 200), 1, 1, *(v0 + 176));
    v13 = *(v0 + 224);
    v14 = *(v0 + 232);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    sub_254357FB0();
    v15 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_19_7(v15, v16);
    v25 = OUTLINED_FUNCTION_86_1(v17, v18, v19, v20, v21, v22, v23, v24, v29, 0);
    v13(v25);
    v26 = OUTLINED_FUNCTION_5_1();
    sub_2542DB194(v26);
  }

  OUTLINED_FUNCTION_94_3();

  OUTLINED_FUNCTION_27();

  return v27();
}

uint64_t sub_254370290()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 200);
  (*(v0 + 256))(v2, *(v0 + 160), *(v0 + 168));

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25437030C()
{
  OUTLINED_FUNCTION_89();
  v31 = v0;
  v1 = v0[25];
  v2 = v0[22];
  OUTLINED_FUNCTION_52_1(v1);
  if (v3)
  {
    v5 = v0[28];
    v4 = v0[29];
    (*(v0[24] + 8))(v1, v0[23]);
    sub_254357FB0();
    v6 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_19_7(v6, v7);
    v29 = 0;
    v30 = v8;
    v5(&v29, &v30);
    v9 = OUTLINED_FUNCTION_5_10();
    sub_2542DB194(v9);
    v10 = v6;
  }

  else
  {
    v11 = v0[17];
    (*(v0[26] + 32))(v0[27], v1, v2);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[35] = Strong;
    if (Strong)
    {
      v13 = v0[34];
      v14 = v0[20];
      v15 = v0[21];
      v0[36] = *(v15 + 32);
      v0[37] = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0xF9B3000000000000;
      sub_2543A2B58();
      v16 = OUTLINED_FUNCTION_64_2();

      return MEMORY[0x2822009F8](v16, v17, v18);
    }

    v19 = v0[28];
    v20 = v0[29];
    v22 = v0[26];
    v21 = v0[27];
    v23 = v0[22];
    sub_254357FB0();
    v24 = OUTLINED_FUNCTION_100();
    *v25 = 3;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 2;
    v29 = 0;
    v30 = v24;
    v19(&v29, &v30);
    v26 = OUTLINED_FUNCTION_5_1();
    sub_2542DB194(v26);
    (*(v22 + 8))(v21, v23);
    v10 = v24;
  }

  OUTLINED_FUNCTION_94_3();

  OUTLINED_FUNCTION_27();

  return v27();
}

uint64_t sub_254370510()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  *(v0 + 304) = (*(v0 + 288))(*(v0 + 160), *(v0 + 168));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_254370584()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[19];
  sub_254396E2C((v0 + 2));
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_254370648;
  v4 = v0[38];
  v5 = v0[27];

  return sub_254324CA8();
}

uint64_t sub_254370648()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_254370740()
{
  OUTLINED_FUNCTION_69_0();
  v1 = *(v0 + 304);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2128, &unk_2543B0588);
  *(v0 + 104) = objc_allocWithZone(v7);
  *(v0 + 112) = v7;
  v8 = objc_msgSendSuper2((v0 + 104), sel_init);
  v16 = OUTLINED_FUNCTION_86_1(v8, v9, v10, v11, v12, v13, v14, v15, v19, v8);
  v3(v16);

  sub_2542DB194(v3);
  (*(v5 + 8))(v4, v6);

  OUTLINED_FUNCTION_94_3();

  OUTLINED_FUNCTION_27();

  return v17();
}

uint64_t sub_254370848()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0[40];
  v2 = v0[38];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[22];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v8 = v1;
  v16 = OUTLINED_FUNCTION_86_1(v8, v9, v10, v11, v12, v13, v14, v15, v19, 0);
  v4(v16);

  sub_2542DB194(v4);

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_94_3();

  OUTLINED_FUNCTION_27();

  return v17();
}

uint64_t sub_25437092C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v19;
  v8[20] = v20;
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v9 = *(a8 - 8);
  v8[21] = v9;
  v8[22] = *(v9 + 64);
  v8[23] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0) - 8) + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B58, &unk_2543AEBA0);
  v8[26] = v11;
  v12 = *(v11 - 8);
  v8[27] = v12;
  v13 = *(v12 + 64) + 15;
  v8[28] = swift_task_alloc();
  v14 = *(v19 + 8);
  v8[29] = v14;
  v8[30] = *(v14 + 8);
  v16 = sub_2543A2B58();
  v8[31] = v16;
  v8[32] = v15;

  return MEMORY[0x2822009F8](sub_254370AD8, v16, v15);
}

uint64_t sub_254370AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16[9] = v16[13];
  v77 = v16 + 2;
  v17 = v16[29];
  v19 = v16[19];
  v18 = v16[20];
  v21 = v16[17];
  v20 = v16[18];
  v22 = sub_254371434(v16[14], v21, v20, v19, v18);
  v24 = v23;
  v25 = swift_task_alloc();
  v25[2] = v21;
  v25[3] = v20;
  v25[4] = v19;
  v25[5] = v18;
  v25[6] = v22;
  v25[7] = v24;
  v26 = *(v19 + 16);
  v27 = *(v26 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_14_3();
  v28 = sub_2543A2EB8();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2120, &qword_2543B0570);
  WitnessTable = swift_getWitnessTable();
  v32 = sub_254369100(sub_254371F1C, v25, v28, v29, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v31);

  v41 = 0;
  v42 = MEMORY[0x277D84F90];
  v90 = MEMORY[0x277D84F90];
  v43 = *(v32 + 16);
LABEL_2:
  v84 = v42;
  while (v43 != v41)
  {
    if (v41 >= *(v32 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v33 = *(v32 + 8 * v41 + 32);
    if (v33)
    {
      v33 = [v33 member];
      if (v33)
      {
        MEMORY[0x259C09500]();
        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2543A2A78();
        }

        ++v41;
        OUTLINED_FUNCTION_51_1();
        v33 = sub_2543A2AB8();
        v42 = v90;
        goto LABEL_2;
      }
    }

    ++v41;
  }

  v33 = sub_2542EEECC(v84);
  v83 = v33;
  if (v33)
  {
    if (v33 < 1)
    {
LABEL_30:
      __break(1u);
      return MEMORY[0x2822004E8](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    v44 = 0;
    v82 = *(*(v26 + 16) + 8);
    v81 = v16[21];
    v80 = *v16[12];
    v79 = v16[22] + 7;
    v78 = v16;
    do
    {
      v88 = v44;
      if ((v84 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x259C09DA0](v44, v84);
      }

      else
      {
        v45 = *(v84 + 8 * v44 + 32);
      }

      v46 = v45;
      v47 = v16[25];
      v48 = v16[23];
      v86 = v16[20];
      v87 = v16[24];
      v50 = v16[16];
      v49 = v16[17];
      v85 = v16[15];
      v89 = *(v16 + 9);
      sub_2543A3298();
      MEMORY[0x259C093D0](0xD000000000000039, 0x80000002543B9C30);
      v51 = [v46 description];
      v52 = sub_2543A2878();
      v54 = v53;

      MEMORY[0x259C093D0](v52, v54);

      static Logging.ulog(_:extended:)(0, 0xE000000000000000, 0, v49, v82);

      v55 = sub_2543A2BB8();
      __swift_storeEnumTagSinglePayload(v47, 1, 1, v55);
      (*(v81 + 16))(v48, v50, v89);
      v56 = (*(v81 + 80) + 72) & ~*(v81 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = 0;
      v58 = (v57 + 16);
      *(v57 + 24) = 0;
      *(v57 + 32) = v49;
      *(v57 + 40) = v89;
      *(v57 + 56) = v86;
      *(v57 + 64) = v85;
      (*(v81 + 32))(v57 + v56, v48, v89);
      *(v57 + ((v79 + v56) & 0xFFFFFFFFFFFFFFF8)) = v46;
      v16 = v78;
      sub_2542DA8D8(v47, v87);
      LODWORD(v46) = __swift_getEnumTagSinglePayload(v87, 1, v55);
      v59 = v85;
      v60 = v78[24];
      if (v46 == 1)
      {
        sub_254368B90(v78[24]);
      }

      else
      {
        sub_2543A2BA8();
        (*(*(v55 - 8) + 8))(v60, v55);
      }

      if (*v58)
      {
        v61 = *(v57 + 24);
        v62 = *v58;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v63 = sub_2543A2B58();
        v65 = v64;
        swift_unknownObjectRelease();
      }

      else
      {
        v63 = 0;
        v65 = 0;
      }

      v66 = (v65 | v63);
      if (v65 | v63)
      {
        v66 = v77;
        *v77 = 0;
        v77[1] = 0;
        v78[4] = v63;
        v78[5] = v65;
      }

      v44 = v88 + 1;
      v67 = v78[25];
      v78[6] = 1;
      v78[7] = v66;
      v78[8] = v80;
      swift_task_create();

      sub_254368B90(v67);
    }

    while (v83 != v88 + 1);
  }

  v68 = v16[28];
  v69 = v16[12];

  v70 = *v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A2CB8();
  v16[33] = MEMORY[0x277D84F90];
  v71 = v16[30];
  v72 = v16[14];
  v73 = *(MEMORY[0x277D85828] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v16[34] = v74;
  *v74 = v75;
  v33 = OUTLINED_FUNCTION_21_3(v74);

  return MEMORY[0x2822004E8](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_254371118()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[33];

    v10 = v3[31];
    v11 = v3[32];
    v12 = sub_254371390;
  }

  else
  {
    v10 = v3[31];
    v11 = v3[32];
    v12 = sub_254371218;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_254371218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_40();
  v17 = *(v16 + 264);
  if (*(v16 + 280) == 1)
  {
    v18 = *(v16 + 200);
    v20 = *(v16 + 184);
    v19 = *(v16 + 192);
    v21 = *(v16 + 88);
    (*(*(v16 + 216) + 8))(*(v16 + 224), *(v16 + 208));
    *v21 = v17;

    OUTLINED_FUNCTION_27();

    return v22();
  }

  else
  {
    v24 = *(v16 + 264);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v16 + 264);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = *(v26 + 16);
      sub_2542F1228();
      v26 = v43;
    }

    v27 = *(v26 + 16);
    v28 = v27 + 1;
    if (v27 >= *(v26 + 24) >> 1)
    {
      sub_2542F1228();
      v26 = v44;
    }

    *(v26 + 16) = v28;
    *(v16 + 264) = v26;
    v29 = *(v16 + 240);
    v30 = *(v16 + 112);
    v31 = *(MEMORY[0x277D85828] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v16 + 272) = v32;
    *v32 = v33;
    v34 = OUTLINED_FUNCTION_21_3();

    return MEMORY[0x2822004E8](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_254371390()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[25];
  v3 = v0[23];
  v2 = v0[24];
  (*(v0[27] + 8))(v0[28], v0[26]);
  v4 = v0[10];

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t (*sub_254371434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return sub_254372194;
}

uint64_t sub_2543714BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = v13;
  v8[33] = v14;
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  v9 = *(a8 - 8);
  v8[34] = v9;
  v10 = *(v9 + 64) + 15;
  v8[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254371584, 0, 0);
}

uint64_t sub_254371584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  v12 = v10[34];
  v11 = v10[35];
  v13 = v10[33];
  v14 = v10[31];
  v15 = v10[28];
  v16 = v10[29];
  type metadata accessor for CoordinationObservationUpdate();
  (*(v12 + 16))(v11, v15, v14);
  v17 = sub_254396EFC(v11, v14, v13);
  v10[36] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF380, &unk_2543A6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2543A6820;
  *(inited + 32) = v16;
  v19 = sub_2542EEECC(inited);
  v20 = v10[29];
  if (v19)
  {
    v21 = v20;
    sub_254371BCC(inited);
  }

  else
  {
    swift_setDeallocating();
    v22 = v20;
    sub_2542F14A8();
  }

  v23 = v10[27];
  sub_254371D74();
  sub_254371DB8();
  v24 = sub_2543A2DA8();
  v10[37] = v24;

  v10[2] = v10;
  v10[7] = v10 + 23;
  v10[3] = sub_25437178C;
  v25 = swift_continuation_init();
  v10[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF398, &unk_2543B0540);
  v10[10] = MEMORY[0x277D85DD0];
  v10[11] = 1107296256;
  v10[12] = sub_254372800;
  v10[13] = &block_descriptor_18;
  v10[14] = v25;
  [v23 sendRequest:v17 members:v24 withCompletionHandler:v10 + 10];
  OUTLINED_FUNCTION_52_2();

  return MEMORY[0x282200938](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_25437178C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = *(v3 + 48);
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_254371888()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);

  v3 = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2128, &unk_2543B0588);
  if (swift_dynamicCastClass())
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 256);
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    sub_2543A3298();
    *(v0 + 200) = 0;
    *(v0 + 208) = 0xE000000000000000;
    MEMORY[0x259C093D0](0xD000000000000024, 0x80000002543B9C70);
    sub_2543A3358();
    v8 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x259C093D0](v8, 0xE800000000000000);
    v9 = [v7 description];
    v10 = sub_2543A2878();
    v12 = v11;

    MEMORY[0x259C093D0](v10, v12);

    static Logging.ulog(_:extended:)(*(v0 + 200), *(v0 + 208), 0, v6, *(*(*(v5 + 16) + 16) + 8));
  }

  else
  {
    swift_getObjectType();
    v14 = sub_2543A37B8();
    v16 = v15;
    sub_254357FB0();
    OUTLINED_FUNCTION_100();
    *v17 = v14;
    *(v17 + 8) = v16;
    *(v17 + 16) = 0xD00000000000001FLL;
    *(v17 + 24) = 0x80000002543BA500;
    *(v17 + 32) = 1;
    swift_willThrow();

    v18 = *(v0 + 280);
  }

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_254371AA4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  swift_willThrow();

  v4 = v0[38];
  v5 = v0[35];

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t *sub_254371B20(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    return sub_25436B6A0(v8, a4);
  }

  if (a2)
  {
    if (a3)
    {
      return sub_25436B70C(v8, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_254371BA4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_254371BCC(unint64_t a1)
{
  if (sub_2542EEECC(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF560, &qword_2543A6D00);
    v2 = sub_2543A3268();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v19 = sub_2542EEECC(a1);
  if (v19)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_254371BA4(v3, v18 == 0, a1);
      result = v18 ? MEMORY[0x259C09DA0](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      result = sub_2543A30A8();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        sub_254371D74();
        v14 = *(*(v2 + 48) + 8 * v10);
        v15 = sub_2543A30B8();

        if (v15)
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v6;
      v16 = *(v2 + 16);
      v7 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v17;
LABEL_17:
      if (v3 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_254371D74()
{
  result = qword_27F5DF388;
  if (!qword_27F5DF388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5DF388);
  }

  return result;
}

unint64_t sub_254371DB8()
{
  result = qword_27F5DF390;
  if (!qword_27F5DF390)
  {
    sub_254371D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF390);
  }

  return result;
}

uint64_t sub_254371E3C()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v0[3];
  v21 = v0[2];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_2542DB160;
  OUTLINED_FUNCTION_77_0();

  return sub_25437092C(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_254371F1C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_254371F5C()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_0_2();
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 72) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = OUTLINED_FUNCTION_67_2();
  v8(v7);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_254372024(uint64_t a1)
{
  v3 = v1[5];
  v17 = v1[4];
  v5 = v1[6];
  v4 = v1[7];
  OUTLINED_FUNCTION_0_2();
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[8];
  v12 = *(v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v2 + 16) = v13;
  *v13 = v14;
  v13[1] = sub_2542D32CC;

  return sub_2543714BC(a1, v9, v10, v11, v1 + v7, v12, v17, v3);
}

uint64_t sub_25437215C()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_254372194(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[6];
  return (*(v3 + 48))(a1, v2);
}

uint64_t sub_2543721D0()
{
  MEMORY[0x259C0AE60](v0 + 16);
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_254372204()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_254372294()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2543722E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254372318(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_254372348()
{
  sub_2543A1F88();
  OUTLINED_FUNCTION_0_2();
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_45_2();
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 48);

  v10 = OUTLINED_FUNCTION_67_2();
  v11(v10);
  v12 = *(v0 + v1);

  return MEMORY[0x2821FE8E8](v0, v3 + 8, v5 | 7);
}

uint64_t sub_254372428()
{
  v2 = v1;
  v3 = v0[5];
  v28 = v0[4];
  v4 = sub_2543A1F88();
  OUTLINED_FUNCTION_8(v4);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_40_4();
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[6];
  v13 = *(v0 + v12);
  v15 = *(v0 + v14);
  v17 = *(v0 + v16);
  v18 = swift_task_alloc();
  *(v2 + 16) = v18;
  *v18 = v2;
  v18[1] = sub_2542D32CC;
  OUTLINED_FUNCTION_69_4();

  return sub_25436FFC4(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_254372568()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2543725A4()
{
  sub_2543A1F88();
  OUTLINED_FUNCTION_0_2();
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_45_2();
  v8 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 48);

  v11 = OUTLINED_FUNCTION_67_2();
  v12(v11);
  v13 = *(v0 + v1);

  v14 = *(v0 + v3 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v5 | 7);
}

uint64_t sub_2543726A0()
{
  OUTLINED_FUNCTION_94();
  v2 = v1;
  v31 = v0[4];
  v30 = v0[5];
  v3 = sub_2543A1F88();
  OUTLINED_FUNCTION_8(v3);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_40_4();
  v8 = v0[3];
  v29 = v0[2];
  v9 = v0[6];
  v11 = *(v0 + v10);
  v13 = *(v0 + v12);
  v16 = *(v0 + v14);
  v15 = *(v0 + v14 + 8);
  v17 = *(v0 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v2 + 16) = v18;
  *v18 = v2;
  v18[1] = sub_2542DB160;
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_48();

  return sub_25436F350(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t OUTLINED_FUNCTION_2_33(uint64_t a1)
{
  *(v2 + 56) = a1;
  v3 = *(v1 + 112);
  v4 = *(v1 + 96);
  *(v2 + 16) = *(v1 + 80);
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_4_19@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  v3[1] = a2;
  v3[2] = a3;
  v3[3].n128_u64[0] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_10_16(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = result;
  v8[4] = a2;
  v9 = *(a6 + 16);
  v8[11] = v9;
  v10 = *(v9 + 8);
  return result;
}

void OUTLINED_FUNCTION_19_7(uint64_t a1, uint64_t a2)
{
  *a2 = 2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1)
{
  *(a1 + 8) = sub_254371118;
  v2 = *(v1 + 224);
  v3 = *(v1 + 208);
  return v1 + 280;
}

uint64_t OUTLINED_FUNCTION_27_3()
{
  v2 = v0[20];
  v3 = v0[14];
  v4 = v0[11];
  v11 = v0[13];
  v5 = v0[9];
  v12 = v0[10];
  v13 = v0[17];
  v6 = v0[8];
  v10 = v0[7];
  v7 = v0[5];
  v8 = v0[6];
  v0[2] = v0[12];

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_29_5()
{
  v0[2] = v0[10];
  v2 = v0[18];
  v3 = v0[12];
  v9 = v0[11];
  v10 = v0[15];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_31_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = a8;
  v9[12] = v8;
  v9[9] = a6;
  v9[10] = a7;
  v9[7] = a4;
  v9[8] = a5;
  v9[5] = a2;
  v9[6] = a3;
  v9[4] = result;
  v10 = *(a7 + 16);
  v9[13] = v10;
  v11 = *(v10 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_5(uint64_t a1)
{
  *(v2 + 136) = a1;
  v4 = *(v1 + 8);
  *(v2 + 144) = v4;
  v5 = *(v4 + 8);

  return sub_2543A2B58();
}

uint64_t OUTLINED_FUNCTION_41_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[19];
  v4 = v2[11];
  v5 = v2[9];
  v6 = v2[7];
  result = v2[4];
  v8 = v2[5];
  return result;
}

uint64_t OUTLINED_FUNCTION_43_2()
{
  result = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  v7 = *(v0[16] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_2()
{
  result = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[8];
  v7 = *(v0[18] + 32);
  return result;
}

void OUTLINED_FUNCTION_50_2()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_51_4(uint64_t a1)
{
  *(v1 + 96) = a1;

  return sub_2543A30C8();
}

void OUTLINED_FUNCTION_57_2()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_58_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[17];
  v4 = v2[9];
  v5 = v2[7];
  result = v2[3];
  v7 = v2[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_62_2()
{
  result = v0[15];
  v2 = v0[13];
  v3 = *(v0[14] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_65_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(*(a9 + 16) + 8);

  return sub_2542DF684();
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(*(a11 + 16) + 8);

  return sub_2542DF684();
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1)
{
  *(v2 + 152) = a1;
  v4 = *(v1 + 8);
  *(v2 + 160) = v4;
  v5 = *(v4 + 8);

  return sub_2543A2B58();
}

uint64_t OUTLINED_FUNCTION_76_3()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_77_3()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_78_2()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
}

void OUTLINED_FUNCTION_79_2()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_80_2()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_89_3()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_90_2(uint64_t a1)
{
  *(v1 + 112) = a1;

  return sub_2543A30C8();
}

uint64_t OUTLINED_FUNCTION_91_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_92_2()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
}

void OUTLINED_FUNCTION_93_2(Swift::String _, Swift::Bool extended)
{

  Logging.ulog(_:extended:)(_, extended);
}

uint64_t OUTLINED_FUNCTION_94_3()
{
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
}

uint64_t sub_254372F70(uint64_t a1)
{
  v2 = sub_254373100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254372FAC(uint64_t a1)
{
  v2 = sub_254373100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerOperationResponse.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2130, &qword_2543B0670);
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_13();
  sub_254373100();
  OUTLINED_FUNCTION_14_12();
  type metadata accessor for HPTimer(0);
  OUTLINED_FUNCTION_0_38();
  sub_254373344(v4, v5);
  OUTLINED_FUNCTION_11_14();
  v6 = OUTLINED_FUNCTION_16_10();
  return v7(v6);
}

unint64_t sub_254373100()
{
  result = qword_27F5E2138;
  if (!qword_27F5E2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2138);
  }

  return result;
}

uint64_t TimerOperationResponse.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_17_8(a1);
  v4 = type metadata accessor for HPTimer(v3);
  v5 = OUTLINED_FUNCTION_26(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2140, &qword_2543B0678);
  OUTLINED_FUNCTION_3(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_13_9();
  v13 = type metadata accessor for TimerOperationResponse(v12);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_9();
  v17 = v16 - v15;
  v18 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  sub_254373100();
  OUTLINED_FUNCTION_15_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_0_38();
    sub_254373344(v19, v20);
    OUTLINED_FUNCTION_9_13();
    v21 = OUTLINED_FUNCTION_12_18();
    v22(v21);
    OUTLINED_FUNCTION_1_34();
    sub_25437338C(v18, v17, v23);
    sub_25437338C(v17, v25, type metadata accessor for TimerOperationResponse);
  }

  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t sub_254373344(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25437338C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_26(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t TimerOperationRequest.Payload.timer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimerOperationRequest.Payload(0) + 20);
  OUTLINED_FUNCTION_7_15();
  return sub_254373C18(v1 + v4, a1, v5);
}

uint64_t TimerOperationRequest.Payload.init(operation:timer:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for TimerOperationRequest.Payload(0) + 20);
  OUTLINED_FUNCTION_1_34();
  return sub_25437338C(a2, &a3[v6], v7);
}

uint64_t sub_2543734D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

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

uint64_t sub_25437359C(char a1)
{
  if (a1)
  {
    return 0x72656D6974;
  }

  else
  {
    return 0x6F6974617265706FLL;
  }
}

uint64_t sub_2543735DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2543734D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254373604(uint64_t a1)
{
  v2 = sub_254373810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254373640(uint64_t a1)
{
  v2 = sub_254373810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerOperationRequest.Payload.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2148, &qword_2543B0680);
  OUTLINED_FUNCTION_3(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-v8];
  OUTLINED_FUNCTION_13_13();
  sub_254373810();
  OUTLINED_FUNCTION_14_12();
  v14[15] = *v0;
  v14[14] = 0;
  sub_254373864();
  sub_2543A3578();
  if (!v1)
  {
    v10 = *(type metadata accessor for TimerOperationRequest.Payload(0) + 20);
    v14[13] = 1;
    type metadata accessor for HPTimer(0);
    OUTLINED_FUNCTION_0_38();
    sub_254373344(v11, v12);
    sub_2543A3578();
  }

  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_254373810()
{
  result = qword_27F5E2150;
  if (!qword_27F5E2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2150);
  }

  return result;
}

unint64_t sub_254373864()
{
  result = qword_27F5E2158;
  if (!qword_27F5E2158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2158);
  }

  return result;
}

uint64_t TimerOperationRequest.Payload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = type metadata accessor for HPTimer(0);
  v5 = OUTLINED_FUNCTION_26(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2160, &qword_2543B0688);
  v12 = OUTLINED_FUNCTION_3(v11);
  v42 = v13;
  v43 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = type metadata accessor for TimerOperationRequest.Payload(0);
  v20 = OUTLINED_FUNCTION_26(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9();
  v25 = (v24 - v23);
  v26 = a1[3];
  v27 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v26);
  sub_254373810();
  sub_2543A3768();
  if (!v2)
  {
    v28 = v25;
    v29 = v42;
    v46 = 0;
    sub_254373B44();
    v30 = v43;
    sub_2543A34D8();
    v40 = v28;
    *v28 = v47;
    v45 = 1;
    OUTLINED_FUNCTION_0_38();
    sub_254373344(v31, v32);
    sub_2543A34D8();
    (*(v29 + 8))(v18, v30);
    v33 = *(v19 + 20);
    OUTLINED_FUNCTION_1_34();
    v34 = v40;
    sub_25437338C(v10, &v40[v35], v36);
    OUTLINED_FUNCTION_2_34();
    sub_25437338C(v34, v41, v37);
  }

  return __swift_destroy_boxed_opaque_existential_0(v44);
}

unint64_t sub_254373B44()
{
  result = qword_27F5E2168;
  if (!qword_27F5E2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2168);
  }

  return result;
}

uint64_t sub_254373C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_26(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_254373CA4(uint64_t a1)
{
  v2 = sub_254373E34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254373CE0(uint64_t a1)
{
  v2 = sub_254373E34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerOperationRequest.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2170, &qword_2543B06A8);
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_13();
  sub_254373E34();
  OUTLINED_FUNCTION_14_12();
  type metadata accessor for TimerOperationRequest.Payload(0);
  OUTLINED_FUNCTION_6_25();
  sub_254373344(v4, v5);
  OUTLINED_FUNCTION_11_14();
  v6 = OUTLINED_FUNCTION_16_10();
  return v7(v6);
}

unint64_t sub_254373E34()
{
  result = qword_27F5E2178;
  if (!qword_27F5E2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2178);
  }

  return result;
}

uint64_t TimerOperationRequest.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_17_8(a1);
  v4 = type metadata accessor for TimerOperationRequest.Payload(v3);
  v5 = OUTLINED_FUNCTION_26(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2188, &qword_2543B06B0);
  OUTLINED_FUNCTION_3(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_13_9();
  v13 = type metadata accessor for TimerOperationRequest(v12);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_9();
  v17 = v16 - v15;
  v18 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  sub_254373E34();
  OUTLINED_FUNCTION_15_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_6_25();
    sub_254373344(v19, v20);
    OUTLINED_FUNCTION_9_13();
    v21 = OUTLINED_FUNCTION_12_18();
    v22(v21);
    OUTLINED_FUNCTION_2_34();
    sub_25437338C(v18, v17, v23);
    sub_25437338C(v17, v25, type metadata accessor for TimerOperationRequest);
  }

  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t sub_254374078(uint64_t a1)
{
  *(a1 + 8) = sub_254373344(&qword_27F5E2198, type metadata accessor for TimerOperationResponse);
  result = sub_254373344(&qword_27F5E21A0, type metadata accessor for TimerOperationResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2543740FC(uint64_t a1)
{
  result = sub_254373344(&qword_27F5E21A8, type metadata accessor for TimerOperationResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254374154(uint64_t a1)
{
  result = sub_254373344(&qword_27F5E21B0, type metadata accessor for TimerOperationRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254374214(uint64_t a1)
{
  result = sub_254373344(&qword_27F5E21C0, type metadata accessor for TimerOperationRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254374270(uint64_t a1)
{
  *(a1 + 8) = sub_254373344(&qword_27F5E21C8, type metadata accessor for TimerOperationRequest);
  result = sub_254373344(&qword_27F5E21D0, type metadata accessor for TimerOperationRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254374338()
{
  v2 = OUTLINED_FUNCTION_8_17();
  v3 = type metadata accessor for HPTimer(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_25437438C()
{
  v0 = OUTLINED_FUNCTION_8_17();
  type metadata accessor for HPTimer(v0);
  v1 = OUTLINED_FUNCTION_18_8();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2543743F0()
{
  v2 = OUTLINED_FUNCTION_8_17();
  v3 = type metadata accessor for TimerOperationRequest.Payload(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_254374444()
{
  v0 = OUTLINED_FUNCTION_8_17();
  type metadata accessor for TimerOperationRequest.Payload(v0);
  v1 = OUTLINED_FUNCTION_18_8();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_254374494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254374518(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for HPTimer(0);
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_2543745AC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = type metadata accessor for HPTimer(0);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_254374628()
{
  result = type metadata accessor for HPTimer(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimerOperationRequest.Payload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x254374784);
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

_BYTE *sub_2543747BC(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x254374858);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254374894()
{
  result = qword_27F5E2208;
  if (!qword_27F5E2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2208);
  }

  return result;
}

unint64_t sub_2543748EC()
{
  result = qword_27F5E2210;
  if (!qword_27F5E2210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2210);
  }

  return result;
}

unint64_t sub_254374944()
{
  result = qword_27F5E2218;
  if (!qword_27F5E2218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2218);
  }

  return result;
}

unint64_t sub_25437499C()
{
  result = qword_27F5E2220;
  if (!qword_27F5E2220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2220);
  }

  return result;
}

unint64_t sub_2543749F4()
{
  result = qword_27F5E2228;
  if (!qword_27F5E2228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2228);
  }

  return result;
}

unint64_t sub_254374A4C()
{
  result = qword_27F5E2230;
  if (!qword_27F5E2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2230);
  }

  return result;
}

unint64_t sub_254374AA4()
{
  result = qword_27F5E2238;
  if (!qword_27F5E2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2238);
  }

  return result;
}

unint64_t sub_254374AFC()
{
  result = qword_27F5E2240;
  if (!qword_27F5E2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2240);
  }

  return result;
}

unint64_t sub_254374B54()
{
  result = qword_27F5E2248[0];
  if (!qword_27F5E2248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E2248);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_13()
{
  v2 = *(v0 - 72);

  return sub_2543A34D8();
}

uint64_t OUTLINED_FUNCTION_11_14()
{

  return sub_2543A3578();
}

uint64_t OUTLINED_FUNCTION_14_12()
{

  return sub_2543A3778();
}

uint64_t OUTLINED_FUNCTION_15_9()
{

  return sub_2543A3768();
}

uint64_t sub_254374D48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  OUTLINED_FUNCTION_42();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_39(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_1_35(v7);

  return v10(v9);
}

uint64_t sub_254374E48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  OUTLINED_FUNCTION_42();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_39(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_1_35(v7);

  return v10(v9);
}

uint64_t sub_254374F48()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_254375048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  OUTLINED_FUNCTION_42();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_39(v10);
  *v11 = v12;
  v11[1] = sub_254375168;

  return v14(a1, a2, a3);
}

uint64_t sub_254375168(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t sub_25437525C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a7 + 40);
  OUTLINED_FUNCTION_42();
  v22 = (v15 + *v15);
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_39(v18);
  *v19 = v20;
  v19[1] = sub_254374F48;

  return v22(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_25437541C()
{
  v0 = swift_allocObject();
  sub_254375824();
  return v0;
}

uint64_t sub_254375454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a5 + 8);
  if (sub_2543A2848())
  {
    v8 = *(type metadata accessor for TargetedObserverStore.Tuple() + 52);
    v9 = *(a6 + 8);
    v10 = sub_2543A2848();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_2543754E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  sub_2543A2808();
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = v2 + *(a2 + 52);
  return sub_2543A2808();
}

uint64_t sub_254375538(uint64_t a1)
{
  sub_2543A36E8();
  sub_2543754E8(v3, a1);
  return sub_2543A3728();
}

uint64_t sub_254375580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for TargetedObserverStore.Tuple();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_254375650(uint64_t a1, uint64_t a2)
{
  sub_2543A36E8();
  sub_2543754E8(v4, a2);
  return sub_2543A3728();
}

uint64_t sub_2543756A4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_97();
  v15 = v0[14];
  OUTLINED_FUNCTION_8_18();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_18();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_8_18();
  v7 = *(v6 + 96);
  OUTLINED_FUNCTION_8_18();
  v9 = *(v8 + 104);
  KeyPath = swift_getKeyPath();
  sub_2543A2768();
  type metadata accessor for TargetedObserverStore.Tuple();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  v11 = sub_2543A2EB8();
  OUTLINED_FUNCTION_0_34();
  WitnessTable = swift_getWitnessTable();
  sub_254369100(sub_25433D320, KeyPath, v11, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  OUTLINED_FUNCTION_45_0();
  sub_2543A2B38();
  OUTLINED_FUNCTION_2_35();
  return sub_2543A2EC8();
}

uint64_t *sub_254375824()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  type metadata accessor for TargetedObserverStore.Tuple();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  v0[14] = sub_2543A26F8();
  return v0;
}

uint64_t sub_2543758B0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_97();
  v2 = v0[14];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  sub_2543A2768();
  type metadata accessor for TargetedObserverStore.Tuple();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  sub_2543A2E48();
  KeyPath = swift_getKeyPath();
  v8 = sub_2543A2EB8();
  OUTLINED_FUNCTION_0_34();
  WitnessTable = swift_getWitnessTable();
  sub_254369100(sub_254376C48, KeyPath, v8, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  OUTLINED_FUNCTION_45_0();
  sub_2543A2B38();
  OUTLINED_FUNCTION_2_35();
  return OUTLINED_FUNCTION_4_20();
}

uint64_t sub_254375A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(type metadata accessor for TargetedObserverStore.Tuple() + 52);
  v8 = *(a6 + 8);
  return sub_2543A2848() & 1;
}

uint64_t sub_254375AF0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_97();
  v2 = v0[14];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v11 = v1[13];
  sub_2543A2768();
  type metadata accessor for TargetedObserverStore.Tuple();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  sub_2543A2E48();
  KeyPath = swift_getKeyPath();
  v7 = sub_2543A2EB8();
  OUTLINED_FUNCTION_0_34();
  WitnessTable = swift_getWitnessTable();
  sub_254369100(sub_254376C48, KeyPath, v7, v4, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  OUTLINED_FUNCTION_45_0();
  sub_2543A2B38();
  OUTLINED_FUNCTION_2_35();
  return OUTLINED_FUNCTION_4_20();
}

uint64_t sub_254375CA8(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v3 = *v2;
  OUTLINED_FUNCTION_56_0();
  v5 = *(v4 + 88);
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v38 = &v35[-v8];
  OUTLINED_FUNCTION_56_0();
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v35[-v16];
  v37 = *(v18 + 96);
  *&v19 = v10;
  *(&v19 + 1) = v5;
  v43 = v19;
  v44 = v37;
  v20 = type metadata accessor for TargetedObserverStore.Tuple();
  OUTLINED_FUNCTION_0_2();
  v39 = v21;
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v35[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v29 = &v35[-v28];
  OUTLINED_FUNCTION_97();
  v30 = v2[14];
  sub_2543A2768();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  v36 = sub_2543A2E78();

  (*(v12 + 16))(v17, v41, v10);
  v31 = v38;
  (*(v40 + 16))(v38, v42, v5);
  sub_254375580(v17, v31, v10, v5, v27);
  swift_beginAccess();
  sub_2543A2EB8();
  v32 = sub_2543A2E58();
  (*(v39 + 8))(v29, v20);
  swift_endAccess();
  if (v32)
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  return v33 | v32 & 1u & v36;
}

uint64_t sub_254375FD0(uint64_t a1, char *a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v62 = a1;
  v4 = *v3;
  v57 = v3 + 14;
  OUTLINED_FUNCTION_56_0();
  v6 = *(v5 + 88);
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  OUTLINED_FUNCTION_56_0();
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_0_2();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v55 = *(v20 + 96);
  *&v21 = v12;
  *(&v21 + 1) = v6;
  v63 = v21;
  v64 = v55;
  v22 = type metadata accessor for TargetedObserverStore.Tuple();
  OUTLINED_FUNCTION_0_2();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  sub_2543A30C8();
  OUTLINED_FUNCTION_0_2();
  v60 = v31;
  v61 = v30;
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v30);
  v36 = &v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v53 - v37;
  v39 = *(v14 + 16);
  v40 = v58;
  v58 = (v14 + 16);
  v54 = v39;
  v39(v19, v40, v12);
  v41 = v57;
  (*(v56 + 16))(v10, v59, v6);
  v42 = v19;
  v43 = v12;
  sub_254375580(v42, v10, v12, v6, v29);
  swift_beginAccess();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  sub_2543A2EB8();
  sub_2543A2E68();
  v44 = *(v24 + 8);
  v44(v29, v22);
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v38, 1, v22) == 1)
  {
    v45 = 0;
  }

  else
  {
    v46 = *v41;
    sub_2543A2768();
    v45 = sub_2543A2E78();
  }

  v48 = v60;
  v47 = v61;
  (*(v60 + 32))(v36, v38, v61);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v22);
  v50 = v62;
  if (EnumTagSinglePayload == 1)
  {
    (*(v48 + 8))(v36, v47);
    v51 = 1;
  }

  else
  {
    v54(v62, v36, v43);
    v44(v36, v22);
    v51 = 0;
  }

  __swift_storeEnumTagSinglePayload(v50, v51, 1, v43);
  return v45 & 1;
}

BOOL sub_254376410()
{
  v1 = v0;
  v2 = *v0;
  OUTLINED_FUNCTION_97();
  v3 = v1[14];
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  v10 = v2[13];
  sub_2543A2768();
  type metadata accessor for TargetedObserverStore.Tuple();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  sub_2543A2E48();
  swift_beginAccess();
  OUTLINED_FUNCTION_45_0();
  sub_2543A2EB8();
  sub_2543A2EA8();
  swift_endAccess();
  v7 = v1[14];
  sub_2543A2768();
  LOBYTE(v1) = sub_2543A2E78();

  if (v1)
  {
    OUTLINED_FUNCTION_0_34();
    swift_getWitnessTable();
    v8 = sub_254372EE4();
  }

  else
  {
    v8 = 0;
  }

  sub_2543A2E28();

  return v8;
}

uint64_t sub_2543765FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_254376688(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_254376860(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a2)
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        return;
      case 2:
        *&v6[v15] = v21;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x254376AECLL);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v9 < v11)
        {
          a1 = (&a1[v14] & ~v13);
          v9 = v11;
          v7 = v8;
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
      }

      return;
  }
}

uint64_t sub_254376B88(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254376BC4()
{
  v1 = v0[6];
  v2 = *(v0[4] + 8);
  v3 = v0[2];
  return sub_2543A2848() & 1;
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_4_20()
{

  return sub_2543A2EC8();
}

uint64_t static HPTimer.Status.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
  v7 = OUTLINED_FUNCTION_110(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_10();
  v68 = v10 - v11;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v12);
  v67 = &v66 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF640, &qword_2543A6DF0);
  v14 = OUTLINED_FUNCTION_26(v72);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_10();
  v71 = v17 - v18;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v19);
  v70 = &v66 - v20;
  v21 = sub_2543A1F38();
  v22 = OUTLINED_FUNCTION_3(v21);
  v73 = v23;
  v74 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_10();
  v69 = v26 - v27;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v28);
  v30 = &v66 - v29;
  v31 = type metadata accessor for HPTimer.Status(0);
  v32 = OUTLINED_FUNCTION_26(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_13_14();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v66 - v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_23_6();
  MEMORY[0x28223BE20](v39);
  v41 = &v66 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2350, &qword_2543B0E00);
  OUTLINED_FUNCTION_110(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_32_1();
  v47 = *(v46 + 56);
  sub_25437AD60(a1, v2);
  sub_25437AD60(v75, v2 + v47);
  OUTLINED_FUNCTION_46();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v2, v4);
      if (OUTLINED_FUNCTION_29_6() != 1)
      {
        goto LABEL_20;
      }

      v54 = *v4 == *(v2 + v47);
      goto LABEL_23;
    case 2u:
      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v2, v38);
      if (OUTLINED_FUNCTION_29_6() != 2)
      {
        v55 = v38;
        goto LABEL_19;
      }

      v48 = *(v72 + 48);
      v49 = v70;
      sub_2542DE374(v38, v70);
      sub_2542DE374(v2 + v47, v49 + v48);
      v50 = v74;
      OUTLINED_FUNCTION_36_5(v49, 1);
      if (v51)
      {
        goto LABEL_12;
      }

      v52 = v49;
      v53 = v67;
      goto LABEL_24;
    case 3u:
      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v2, v3);
      if (OUTLINED_FUNCTION_29_6() == 3)
      {
        v49 = v71;
        v48 = *(v72 + 48);
        sub_2542DE374(v3, v71);
        sub_2542DE374(v2 + v47, v49 + v48);
        v50 = v74;
        OUTLINED_FUNCTION_36_5(v49, 1);
        if (v51)
        {
LABEL_12:
          OUTLINED_FUNCTION_36_5(v49 + v48, 1);
          if (v51)
          {
            sub_2542DE3E4(v49, &qword_27F5DF638, &unk_2543B0DF0);
LABEL_30:
            OUTLINED_FUNCTION_2_36();
            sub_25437ADBC();
            v54 = 1;
            return v54 & 1;
          }
        }

        else
        {
          v52 = v49;
          v53 = v68;
LABEL_24:
          sub_2542DE304(v52, v53);
          OUTLINED_FUNCTION_36_5(v49 + v48, 1);
          if (!v51)
          {
            v59 = v73;
            v60 = v69;
            (*(v73 + 32))(v69, v49 + v48, v50);
            OUTLINED_FUNCTION_1_36();
            sub_25437812C(v61, v62);
            v63 = sub_2543A2848();
            v64 = *(v59 + 8);
            v64(v60, v50);
            v64(v53, v50);
            sub_2542DE3E4(v49, &qword_27F5DF638, &unk_2543B0DF0);
            if (v63)
            {
              goto LABEL_30;
            }

LABEL_28:
            OUTLINED_FUNCTION_2_36();
            sub_25437ADBC();
            goto LABEL_21;
          }

          (*(v73 + 8))(v53, v50);
        }

        sub_2542DE3E4(v49, &qword_27F5DF640, &qword_2543A6DF0);
        goto LABEL_28;
      }

      v55 = v3;
LABEL_19:
      sub_2542DE3E4(v55, &qword_27F5DF638, &unk_2543B0DF0);
LABEL_20:
      sub_2542DE3E4(v2, &qword_27F5E2350, &qword_2543B0E00);
LABEL_21:
      v54 = 0;
      return v54 & 1;
    case 4u:
      if (OUTLINED_FUNCTION_29_6() == 4)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    default:
      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v2, v41);
      if (OUTLINED_FUNCTION_29_6())
      {
        (*(v73 + 8))(v41, v74);
        goto LABEL_20;
      }

      v57 = v73;
      v56 = v74;
      (*(v73 + 32))(v30, v2 + v47, v74);
      OUTLINED_FUNCTION_18_9();
      v54 = sub_2543A1F28();
      v58 = *(v57 + 8);
      v58(v30, v56);
      v58(v41, v56);
LABEL_23:
      OUTLINED_FUNCTION_2_36();
      sub_25437ADBC();
      return v54 & 1;
  }
}

uint64_t sub_25437730C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646573756170 && a2 == 0xE600000000000000;
    if (v6 || (sub_2543A3608() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69726966 && a2 == 0xE600000000000000;
      if (v7 || (sub_2543A3608() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657373696D736964 && a2 == 0xE900000000000064;
        if (v8 || (sub_2543A3608() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2543A3608();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_2543774B4(char a1)
{
  result = 0x676E696E6E7572;
  switch(a1)
  {
    case 1:
      result = 0x646573756170;
      break;
    case 2:
      result = 0x676E69726966;
      break;
    case 3:
      result = 0x657373696D736964;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254377588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25437730C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2543775B0(uint64_t a1)
{
  v2 = sub_254378030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2543775EC(uint64_t a1)
{
  v2 = sub_254378030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25437762C(uint64_t a1)
{
  v2 = sub_2543780D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254377668(uint64_t a1)
{
  v2 = sub_2543780D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2543776A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542FA5E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2543776D4(uint64_t a1)
{
  v2 = sub_254378174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254377710(uint64_t a1)
{
  v2 = sub_254378174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25437774C(uint64_t a1)
{
  v2 = sub_2543781C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254377788(uint64_t a1)
{
  v2 = sub_2543781C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2543777C4(uint64_t a1)
{
  v2 = sub_25437821C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254377800(uint64_t a1)
{
  v2 = sub_25437821C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25437783C(uint64_t a1)
{
  v2 = sub_254378084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254377878(uint64_t a1)
{
  v2 = sub_254378084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPTimer.Status.encode(to:)(void *a1)
{
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2358, &qword_2543B0E08);
  OUTLINED_FUNCTION_3(v95);
  v93 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_0();
  v91 = v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2360, &qword_2543B0E10);
  OUTLINED_FUNCTION_3(v96);
  v94 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_0();
  v92 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2368, &qword_2543B0E18);
  v14 = OUTLINED_FUNCTION_3(v13);
  v89 = v15;
  v90 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_0();
  v88 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
  v21 = OUTLINED_FUNCTION_110(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_10();
  v87 = v24 - v25;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v26);
  v86 = &v80 - v27;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2370, &qword_2543B0E20);
  OUTLINED_FUNCTION_3(v84);
  v82 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v31);
  v33 = &v80 - v32;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2378, &qword_2543B0E28);
  OUTLINED_FUNCTION_3(v85);
  v83 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v37);
  v39 = &v80 - v38;
  v97 = sub_2543A1F38();
  v40 = OUTLINED_FUNCTION_3(v97);
  v81 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9();
  v46 = v45 - v44;
  v47 = type metadata accessor for HPTimer.Status(0);
  v48 = OUTLINED_FUNCTION_26(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_32_1();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2380, &qword_2543B0E30);
  v52 = OUTLINED_FUNCTION_3(v51);
  v99 = v53;
  v100 = v52;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v56);
  v57 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254378030();
  sub_2543A3778();
  OUTLINED_FUNCTION_0_40();
  sub_25437AD60(v98, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v76 = *v1;
      v102 = 1;
      sub_2543781C8();
      OUTLINED_FUNCTION_12_19();
      v77 = v84;
      sub_2543A3568();
      (*(v82 + 8))(v33, v77);
      goto LABEL_8;
    case 2u:
      v68 = v86;
      sub_2542DE374(v1, v86);
      v103 = 2;
      sub_254378174();
      v69 = v88;
      OUTLINED_FUNCTION_12_19();
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v70, v71);
      v72 = v90;
      sub_2543A3538();
      v73 = v89;
      goto LABEL_6;
    case 3u:
      v68 = v87;
      sub_2542DE374(v1, v87);
      v104 = 3;
      sub_2543780D8();
      v69 = v92;
      OUTLINED_FUNCTION_12_19();
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v74, v75);
      v72 = v96;
      sub_2543A3538();
      v73 = v94;
LABEL_6:
      (*(v73 + 8))(v69, v72);
      sub_2542DE3E4(v68, &qword_27F5DF638, &unk_2543B0DF0);
      goto LABEL_8;
    case 4u:
      v105 = 4;
      sub_254378084();
      v63 = v91;
      v64 = v100;
      sub_2543A3508();
      (*(v93 + 8))(v63, v95);
      v65 = OUTLINED_FUNCTION_30_5();
      return v66(v65, v64);
    default:
      v58 = v81;
      v59 = v97;
      (*(v81 + 32))(v46, v1, v97);
      v101 = 0;
      sub_25437821C();
      OUTLINED_FUNCTION_12_19();
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v60, v61);
      v62 = v85;
      sub_2543A3578();
      (*(v83 + 8))(v39, v62);
      (*(v58 + 8))(v46, v59);
LABEL_8:
      v78 = OUTLINED_FUNCTION_30_5();
      return v79(v78, v47);
  }
}

unint64_t sub_254378030()
{
  result = qword_27F5E2388;
  if (!qword_27F5E2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2388);
  }

  return result;
}

unint64_t sub_254378084()
{
  result = qword_27F5E2390;
  if (!qword_27F5E2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2390);
  }

  return result;
}

unint64_t sub_2543780D8()
{
  result = qword_27F5E2398;
  if (!qword_27F5E2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2398);
  }

  return result;
}

uint64_t sub_25437812C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_254378174()
{
  result = qword_27F5E23A0;
  if (!qword_27F5E23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E23A0);
  }

  return result;
}

unint64_t sub_2543781C8()
{
  result = qword_27F5E23A8;
  if (!qword_27F5E23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E23A8);
  }

  return result;
}

unint64_t sub_25437821C()
{
  result = qword_27F5E23B0;
  if (!qword_27F5E23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E23B0);
  }

  return result;
}

uint64_t HPTimer.Status.hash(into:)()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
  v5 = OUTLINED_FUNCTION_110(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_13_14();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_6();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_35_6();
  v14 = OUTLINED_FUNCTION_3(v13);
  v55 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9();
  v18 = type metadata accessor for HPTimer.Status(0);
  v19 = OUTLINED_FUNCTION_26(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9();
  v24 = (v23 - v22);
  OUTLINED_FUNCTION_0_40();
  sub_25437AD60(v0, v24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v35 = *v24;
      MEMORY[0x259C0A1D0](1);
      v36 = 0.0;
      if (v35 != 0.0)
      {
        v36 = v35;
      }

      result = MEMORY[0x259C0A1F0](*&v36);
      break;
    case 2u:
      sub_2542DE374(v24, v1);
      MEMORY[0x259C0A1D0](2);
      sub_2542DE304(v1, v3);
      OUTLINED_FUNCTION_52_1(v3);
      if (v34)
      {
        sub_2543A3708();
      }

      else
      {
        v37 = v55;
        v38 = OUTLINED_FUNCTION_20_9(v55);
        v39(v38, v3, v13);
        sub_2543A3708();
        OUTLINED_FUNCTION_1_36();
        sub_25437812C(v40, v41);
        OUTLINED_FUNCTION_15_10();
        v42 = *(v37 + 8);
        v43 = OUTLINED_FUNCTION_5_10();
        v44(v43);
      }

      v45 = v1;
      goto LABEL_15;
    case 3u:
      sub_2542DE374(v24, v11);
      MEMORY[0x259C0A1D0](3);
      sub_2542DE304(v11, v2);
      OUTLINED_FUNCTION_52_1(v2);
      if (v34)
      {
        sub_2543A3708();
      }

      else
      {
        v46 = v55;
        v47 = OUTLINED_FUNCTION_20_9(v55);
        v48(v47, v2, v13);
        sub_2543A3708();
        OUTLINED_FUNCTION_1_36();
        sub_25437812C(v49, v50);
        OUTLINED_FUNCTION_15_10();
        v51 = *(v46 + 8);
        v52 = OUTLINED_FUNCTION_5_10();
        v53(v52);
      }

      v45 = v11;
LABEL_15:
      result = sub_2542DE3E4(v45, &qword_27F5DF638, &unk_2543B0DF0);
      break;
    case 4u:
      result = MEMORY[0x259C0A1D0](4);
      break;
    default:
      v25 = v55;
      v26 = OUTLINED_FUNCTION_20_9(v55);
      v27(v26, v24, v13);
      MEMORY[0x259C0A1D0](0);
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v28, v29);
      OUTLINED_FUNCTION_15_10();
      v30 = *(v25 + 8);
      v31 = OUTLINED_FUNCTION_5_10();
      result = v32(v31);
      break;
  }

  return result;
}

uint64_t HPTimer.Status.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23C0, &qword_2543B0E38);
  OUTLINED_FUNCTION_3(v136);
  v128 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_0();
  v133 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23C8, &qword_2543B0E40);
  v129 = OUTLINED_FUNCTION_3(v9);
  v130 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_0();
  v140 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23D0, &qword_2543B0E48);
  v16 = OUTLINED_FUNCTION_3(v15);
  v126 = v17;
  v127 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_0();
  v132 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23D8, &qword_2543B0E50);
  v23 = OUTLINED_FUNCTION_3(v22);
  v124 = v24;
  v125 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10_0();
  v131 = v28;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23E0, &qword_2543B0E58);
  OUTLINED_FUNCTION_3(v123);
  v122 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_0();
  v134 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23E8, &unk_2543B0E60);
  v35 = OUTLINED_FUNCTION_3(v34);
  v138 = v36;
  v139 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v39);
  v41 = &v117 - v40;
  v137 = type metadata accessor for HPTimer.Status(0);
  v42 = OUTLINED_FUNCTION_26(v137);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_10();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_13_14();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v117 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v117 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = &v117 - v56;
  v58 = a1[3];
  v59 = a1[4];
  v141 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v58);
  sub_254378030();
  v60 = v142;
  sub_2543A3768();
  if (v60)
  {
    goto LABEL_8;
  }

  v118 = v52;
  v119 = v55;
  v120 = v2;
  v121 = v47;
  v61 = v139;
  v142 = v57;
  v62 = sub_2543A34E8();
  sub_2542DF254(v62, 0);
  if (v64 == v65 >> 1)
  {
    goto LABEL_7;
  }

  v117 = 0;
  if (v64 >= (v65 >> 1))
  {
    __break(1u);
    JUMPOUT(0x254379064);
  }

  v66 = *(v63 + v64);
  sub_2542DF244(v64 + 1);
  v68 = v67;
  v70 = v69;
  swift_unknownObjectRelease();
  if (v68 != v70 >> 1)
  {
LABEL_7:
    v75 = v137;
    v76 = sub_2543A32E8();
    swift_allocError();
    v78 = v77;
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0) + 48);
    *v78 = v75;
    sub_2543A3468();
    sub_2543A32D8();
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x277D84160], v76);
    swift_willThrow();
    swift_unknownObjectRelease();
    v80 = OUTLINED_FUNCTION_7_16();
    v81(v80);
LABEL_8:
    v82 = v141;
    return __swift_destroy_boxed_opaque_existential_0(v82);
  }

  v71 = v135;
  switch(v66)
  {
    case 1:
      v144 = 1;
      sub_2543781C8();
      OUTLINED_FUNCTION_10_17();
      sub_2543A34C8();
      v95 = v138;
      v111 = v110;
      swift_unknownObjectRelease();
      v112 = *(v124 + 8);
      v113 = OUTLINED_FUNCTION_18_9();
      v114(v113);
      (*(v95 + 8))(v41, v61);
      v115 = v118;
      *v118 = v111;
      swift_storeEnumTagMultiPayload();
      v116 = v115;
      goto LABEL_15;
    case 2:
      v145 = 2;
      sub_254378174();
      OUTLINED_FUNCTION_10_17();
      sub_2543A1F38();
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v89, v90);
      v74 = v120;
      OUTLINED_FUNCTION_25_7();
      sub_2543A3498();
      swift_unknownObjectRelease();
      v96 = OUTLINED_FUNCTION_22_3();
      v97(v96);
      v98 = OUTLINED_FUNCTION_7_16();
      v99(v98);
      goto LABEL_14;
    case 3:
      v146 = 3;
      sub_2543780D8();
      OUTLINED_FUNCTION_10_17();
      sub_2543A1F38();
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v91, v92);
      v93 = v121;
      v94 = v129;
      sub_2543A3498();
      swift_unknownObjectRelease();
      v100 = OUTLINED_FUNCTION_30_5();
      v101(v100, v94);
      v102 = OUTLINED_FUNCTION_7_16();
      v103(v102);
      swift_storeEnumTagMultiPayload();
      v88 = v142;
      sub_25437AC24(v93, v142);
      v104 = v141;
      v71 = v135;
      goto LABEL_17;
    case 4:
      v147 = 4;
      sub_254378084();
      OUTLINED_FUNCTION_10_17();
      swift_unknownObjectRelease();
      v84 = OUTLINED_FUNCTION_22_3();
      v85(v84);
      v86 = OUTLINED_FUNCTION_7_16();
      v87(v86);
      v88 = v142;
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    default:
      v143 = 0;
      sub_25437821C();
      OUTLINED_FUNCTION_10_17();
      sub_2543A1F38();
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v72, v73);
      v74 = v119;
      sub_2543A34D8();
      swift_unknownObjectRelease();
      v105 = *(v122 + 8);
      v106 = OUTLINED_FUNCTION_18_9();
      v107(v106);
      v108 = OUTLINED_FUNCTION_7_16();
      v109(v108);
LABEL_14:
      swift_storeEnumTagMultiPayload();
      v116 = v74;
LABEL_15:
      v88 = v142;
      sub_25437AC24(v116, v142);
LABEL_16:
      v104 = v141;
LABEL_17:
      sub_25437AC24(v88, v71);
      v82 = v104;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_0(v82);
}

uint64_t HPTimer.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HPTimer(0) + 20);
  v4 = sub_2543A1F88();
  v5 = OUTLINED_FUNCTION_26(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t HPTimer.title.getter()
{
  v1 = (v0 + *(type metadata accessor for HPTimer(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  sub_2543A2768();
  return v2;
}

uint64_t HPTimer.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HPTimer(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*HPTimer.title.modify())(void)
{
  v0 = OUTLINED_FUNCTION_177();
  v1 = *(type metadata accessor for HPTimer(v0) + 24);
  return nullsub_1;
}

uint64_t HPTimer.status.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HPTimer(0) + 28);
  OUTLINED_FUNCTION_0_40();
  return sub_25437AD60(v1 + v4, a1);
}

uint64_t HPTimer.status.setter()
{
  v2 = OUTLINED_FUNCTION_177();
  v3 = v1 + *(type metadata accessor for HPTimer(v2) + 28);

  return sub_25437ACA8(v0, v3);
}

uint64_t (*HPTimer.status.modify())(void)
{
  v0 = OUTLINED_FUNCTION_177();
  v1 = *(type metadata accessor for HPTimer(v0) + 28);
  return nullsub_1;
}

uint64_t HPTimer.init(duration:id:title:status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>, double a6@<D0>)
{
  v12 = type metadata accessor for HPTimer(0);
  v13 = (a5 + v12[6]);
  *a5 = a6;
  v14 = v12[5];
  v15 = sub_2543A1F88();
  OUTLINED_FUNCTION_26(v15);
  (*(v16 + 32))(a5 + v14, a1);
  *v13 = a2;
  v13[1] = a3;
  v17 = a5 + v12[7];

  return sub_25437AC24(a4, v17);
}

uint64_t static HPTimer.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_26_4();
  v5 = type metadata accessor for HPTimer(v4);
  v6 = v5[5];
  if ((sub_2543A1F68() & 1) == 0)
  {
    return 0;
  }

  v7 = v5[6];
  v8 = (v2 + v7);
  v9 = *(v2 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (v11)
    {
      v12 = *v8 == *v10 && v9 == v11;
      if (v12 || (sub_2543A3608() & 1) != 0)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  if (v11)
  {
    return 0;
  }

LABEL_10:
  v13 = v5[7];

  return static HPTimer.Status.== infix(_:_:)(v2 + v13, a2 + v13);
}

uint64_t sub_254379488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_2543A3608() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_2543A3608() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2543A3608();

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

uint64_t sub_2543795D0(char a1)
{
  result = 0x6E6F697461727564;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x737574617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254379658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254379488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254379680(uint64_t a1)
{
  v2 = sub_25437AD0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2543796BC(uint64_t a1)
{
  v2 = sub_25437AD0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPTimer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23F0, &qword_2543B0E70);
  OUTLINED_FUNCTION_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v10);
  v12 = &v26[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25437AD0C();
  sub_2543A3778();
  v14 = *v3;
  v26[15] = 0;
  sub_2543A3568();
  if (!v2)
  {
    v15 = type metadata accessor for HPTimer(0);
    v16 = v15[5];
    v26[14] = 1;
    sub_2543A1F88();
    OUTLINED_FUNCTION_6_26();
    sub_25437812C(v17, v18);
    OUTLINED_FUNCTION_25_7();
    sub_2543A3578();
    v19 = (v3 + v15[6]);
    v20 = *v19;
    v21 = v19[1];
    v26[13] = 2;
    sub_2543A3518();
    v22 = v15[7];
    v26[12] = 3;
    type metadata accessor for HPTimer.Status(0);
    OUTLINED_FUNCTION_11_15();
    sub_25437812C(v23, v24);
    OUTLINED_FUNCTION_25_7();
    sub_2543A3578();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t HPTimer.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  if (*v0 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x259C0A1F0](*&v2);
  v3 = type metadata accessor for HPTimer(0);
  v4 = v3[5];
  sub_2543A1F88();
  OUTLINED_FUNCTION_6_26();
  sub_25437812C(v5, v6);
  sub_2543A2808();
  v7 = (v1 + v3[6]);
  if (v7[1])
  {
    v8 = *v7;
    sub_2543A3708();
    sub_2543A28C8();
  }

  else
  {
    sub_2543A3708();
  }

  v9 = v1 + v3[7];
  return HPTimer.Status.hash(into:)();
}

uint64_t sub_254379A24(void (*a1)(_BYTE *))
{
  sub_2543A36E8();
  a1(v3);
  return sub_2543A3728();
}

uint64_t HPTimer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for HPTimer.Status(0);
  v6 = OUTLINED_FUNCTION_26(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9();
  v11 = v10 - v9;
  v44 = sub_2543A1F88();
  v12 = OUTLINED_FUNCTION_3(v44);
  v42 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_32_1();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2408, &qword_2543B0E78);
  OUTLINED_FUNCTION_3(v40);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v18);
  v41 = type metadata accessor for HPTimer(0);
  v19 = OUTLINED_FUNCTION_26(v41);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9();
  v43 = (v23 - v22);
  v24 = a1[3];
  v25 = a1[4];
  v26 = OUTLINED_FUNCTION_18_9();
  __swift_project_boxed_opaque_existential_0(v26, v27);
  sub_25437AD0C();
  sub_2543A3768();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_33_4();
  sub_2543A34C8();
  *v43 = v28;
  OUTLINED_FUNCTION_6_26();
  sub_25437812C(v29, v30);
  OUTLINED_FUNCTION_33_4();
  sub_2543A34D8();
  (*(v42 + 32))(&v43[v41[5]], v2, v44);
  OUTLINED_FUNCTION_33_4();
  v31 = sub_2543A3478();
  v32 = &v43[v41[6]];
  *v32 = v31;
  v32[1] = v33;
  OUTLINED_FUNCTION_11_15();
  sub_25437812C(v34, v35);
  OUTLINED_FUNCTION_33_4();
  sub_2543A34D8();
  v36 = OUTLINED_FUNCTION_24_9();
  v37(v36);
  sub_25437AC24(v11, &v43[v41[7]]);
  sub_25437AD60(v43, a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25437ADBC();
}

uint64_t sub_254379EF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2543A36E8();
  a4(v6);
  return sub_2543A3728();
}

uint64_t HPTimer.Status.shortDescription.getter()
{
  v2 = type metadata accessor for HPTimer.Status(0);
  v3 = OUTLINED_FUNCTION_26(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_0_40();
  sub_25437AD60(v1, v0);
  OUTLINED_FUNCTION_46();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646573756170;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      return result;
    case 2:
      sub_25437ADBC();
      result = 0x676E69726966;
      break;
    case 3:
      sub_25437ADBC();
      result = 0x657373696D736964;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      sub_25437ADBC();
      result = 0x676E696E6E7572;
      break;
  }

  return result;
}

uint64_t HPTimer.Status.description.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
  v4 = OUTLINED_FUNCTION_110(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_23_6();
  MEMORY[0x28223BE20](v7);
  v86 = &v86 - v8;
  OUTLINED_FUNCTION_5_8();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v86 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = OUTLINED_FUNCTION_35_6();
  v14 = OUTLINED_FUNCTION_3(v13);
  v87 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_13_14();
  MEMORY[0x28223BE20](v18);
  v19 = type metadata accessor for HPTimer.Status(0);
  v20 = OUTLINED_FUNCTION_26(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_10();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = (&v86 - v27);
  OUTLINED_FUNCTION_0_40();
  v29 = OUTLINED_FUNCTION_18_9();
  sub_25437AD60(v29, v30);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = *v28;
      v55 = HPTimer.Status.shortDescription.getter();
      v57 = v56;
      v88 = 0;
      v89 = 0xE000000000000000;
      MEMORY[0x259C093D0](40, 0xE100000000000000);
      sub_2543A2D98();
      OUTLINED_FUNCTION_37_4();
      v58 = v88;
      v59 = v89;
      v88 = v55;
      v89 = v57;
      sub_2543A2768();
      MEMORY[0x259C093D0](v58, v59);

      v42 = v88;
      break;
    case 2u:
      sub_2542DE374(v28, v1);
      v46 = HPTimer.Status.shortDescription.getter();
      v48 = v47;
      OUTLINED_FUNCTION_21_4();
      sub_2542DE304(v1, v12);
      OUTLINED_FUNCTION_52_1(v12);
      if (v49)
      {
        v65 = 7104878;
        v67 = 0xE300000000000000;
      }

      else
      {
        v60 = v87;
        v61 = OUTLINED_FUNCTION_20_9(v87);
        v62(v61, v12, v13);
        v63 = OUTLINED_FUNCTION_27_4();
        v64(v63);
        v65 = sub_2543A2888();
        v67 = v66;
        v68 = *(v60 + 8);
        v69 = OUTLINED_FUNCTION_5_10();
        v70(v69);
      }

      MEMORY[0x259C093D0](v65, v67);

      OUTLINED_FUNCTION_37_4();
      v88 = v46;
      v89 = v48;
      sub_2543A2768();
      v71 = OUTLINED_FUNCTION_46();
      MEMORY[0x259C093D0](v71);

      v42 = v88;
      v72 = v1;
      goto LABEL_14;
    case 3u:
      v50 = v86;
      sub_2542DE374(v28, v86);
      v51 = HPTimer.Status.shortDescription.getter();
      v53 = v52;
      OUTLINED_FUNCTION_21_4();
      sub_2542DE304(v50, v2);
      OUTLINED_FUNCTION_52_1(v2);
      if (v49)
      {
        v78 = 7104878;
        v80 = 0xE300000000000000;
      }

      else
      {
        v73 = v87;
        v74 = OUTLINED_FUNCTION_20_9(v87);
        v75(v74, v2, v13);
        v76 = OUTLINED_FUNCTION_27_4();
        v77(v76);
        v78 = sub_2543A2888();
        v80 = v79;
        v81 = *(v73 + 8);
        v82 = OUTLINED_FUNCTION_5_10();
        v83(v82);
      }

      MEMORY[0x259C093D0](v78, v80);

      OUTLINED_FUNCTION_37_4();
      v88 = v51;
      v89 = v53;
      sub_2543A2768();
      v84 = OUTLINED_FUNCTION_46();
      MEMORY[0x259C093D0](v84);

      v42 = v88;
      v72 = v50;
LABEL_14:
      sub_2542DE3E4(v72, &qword_27F5DF638, &unk_2543B0DF0);
      break;
    case 4u:
      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v0, v25);
      v42 = 0x646573756170;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          return v42;
        case 2u:
          OUTLINED_FUNCTION_2_36();
          sub_25437ADBC();
          v42 = 0x676E69726966;
          break;
        case 3u:
          OUTLINED_FUNCTION_2_36();
          sub_25437ADBC();
          v42 = 0x657373696D736964;
          break;
        case 4u:
          v42 = 0x6E776F6E6B6E75;
          break;
        default:
          OUTLINED_FUNCTION_2_36();
          sub_25437ADBC();
          v42 = 0x676E696E6E7572;
          break;
      }

      break;
    default:
      v31 = v87;
      v32 = OUTLINED_FUNCTION_20_9(v87);
      v33(v32, v28, v13);
      v34 = HPTimer.Status.shortDescription.getter();
      v36 = v35;
      OUTLINED_FUNCTION_21_4();
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v37, v38);
      v39 = sub_2543A35A8();
      MEMORY[0x259C093D0](v39);

      OUTLINED_FUNCTION_37_4();
      v40 = v88;
      v41 = v89;
      v88 = v34;
      v89 = v36;
      sub_2543A2768();
      MEMORY[0x259C093D0](v40, v41);

      v42 = v88;
      v43 = *(v31 + 8);
      v44 = OUTLINED_FUNCTION_5_10();
      v45(v44);
      break;
  }

  return v42;
}

uint64_t sub_25437A6D8()
{
  v1 = type metadata accessor for HPTimer.Status(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HPTimer(0);
  sub_25437AD60(v0 + *(v5 + 28), v4);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      return result;
    case 2:
      sub_25437ADBC();
      result = 3;
      break;
    case 3:
      sub_25437ADBC();
      result = 4;
      break;
    case 4:
      result = 0;
      break;
    default:
      sub_25437ADBC();
      result = 2;
      break;
  }

  return result;
}

uint64_t static HPTimer.< infix(_:_:)(double *a1, double *a2)
{
  v4 = sub_2543A1F38();
  v5 = OUTLINED_FUNCTION_3(v4);
  v45 = v6;
  v46 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_10();
  v44 = (v9 - v10);
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for HPTimer.Status(0);
  v15 = OUTLINED_FUNCTION_26(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_10();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2350, &qword_2543B0E00);
  OUTLINED_FUNCTION_26(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v27);
  v29 = &v43 - v28;
  v30 = sub_25437A6D8();
  if (v30 == sub_25437A6D8())
  {
    v31 = *(type metadata accessor for HPTimer(0) + 28);
    v32 = *(v24 + 48);
    sub_25437AD60(a1 + v31, v29);
    sub_25437AD60(a2 + v31, &v29[v32]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2 && swift_getEnumCaseMultiPayload() == 2)
        {
          v34 = *a2 < *a1;
          sub_25437ADBC();
LABEL_15:
          sub_25437ADBC();
          return v34 & 1;
        }

        goto LABEL_12;
      }

      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v29, v20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = *v20 < *&v29[v32];
LABEL_14:
        OUTLINED_FUNCTION_2_36();
        goto LABEL_15;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v29, v23);
      if (!swift_getEnumCaseMultiPayload())
      {
        v37 = v45;
        v36 = v46;
        v38 = *(v45 + 32);
        v38(v13, v23, v46);
        v39 = &v29[v32];
        v40 = v44;
        v38(v44, v39, v36);
        v34 = sub_2543A1F18();
        v41 = *(v37 + 8);
        v41(v40, v36);
        v41(v13, v36);
        goto LABEL_14;
      }

      (*(v45 + 8))(v23, v46);
    }

LABEL_12:
    v34 = *a1 < *a2;
    sub_2542DE3E4(v29, &qword_27F5E2350, &qword_2543B0E00);
    return v34 & 1;
  }

  v35 = sub_25437A6D8();
  v34 = sub_25437A6D8() < v35;
  return v34 & 1;
}

uint64_t sub_25437AC24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HPTimer.Status(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25437ACA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HPTimer.Status(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25437AD0C()
{
  result = qword_27F5E23F8;
  if (!qword_27F5E23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E23F8);
  }

  return result;
}

uint64_t sub_25437AD60(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26_4();
  v6 = v5(v4);
  OUTLINED_FUNCTION_26(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_25437ADBC()
{
  v1 = OUTLINED_FUNCTION_177();
  v3 = v2(v1);
  OUTLINED_FUNCTION_26(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_25437AEFC(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_26_4();
  v6 = sub_2543A1F88();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_10:

    return __swift_getEnumTagSinglePayload(v3 + v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = type metadata accessor for HPTimer.Status(0);
    v8 = a3[7];
    goto LABEL_10;
  }

  v9 = *(v3 + a3[6] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_25437AFEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_26_4();
  result = sub_2543A1F88();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[6] + 8) = a2;
      return result;
    }

    v9 = type metadata accessor for HPTimer.Status(0);
    v10 = a4[7];
  }

  return __swift_storeEnumTagSinglePayload(v4 + v10, a2, a2, v9);
}

void sub_25437B0B8()
{
  sub_2543A1F88();
  if (v0 <= 0x3F)
  {
    sub_25437B164();
    if (v1 <= 0x3F)
    {
      type metadata accessor for HPTimer.Status(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25437B164()
{
  if (!qword_27F5E2438)
  {
    v0 = sub_2543A30C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5E2438);
    }
  }
}

void sub_25437B1B4()
{
  sub_2543A1F38();
  if (v0 <= 0x3F)
  {
    sub_2542DE900();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HPTimer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25437B2FCLL);
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

_BYTE *storeEnumTagSinglePayload for HPTimer.Status.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x25437B400);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_25437B46C(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x25437B508);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}