uint64_t getEnumTagSinglePayload for ArcPackageExporter.Destination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArcPackageExporter.Destination(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_242C6C80C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_242C6CB24()
{
  result = qword_27ECEFA60;
  if (!qword_27ECEFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFA60);
  }

  return result;
}

unint64_t sub_242C6CB78()
{
  result = qword_27ECEFAA0;
  if (!qword_27ECEFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFAA0);
  }

  return result;
}

unint64_t sub_242C6CBCC()
{
  result = qword_27ECEFAA8;
  if (!qword_27ECEFAA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECEFAA8);
  }

  return result;
}

unint64_t sub_242C6CC18()
{
  result = qword_27ECEFAB0;
  if (!qword_27ECEFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFAB0);
  }

  return result;
}

unint64_t sub_242C6CC6C()
{
  result = qword_27ECEFAB8;
  if (!qword_27ECEFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFAB8);
  }

  return result;
}

uint64_t sub_242C6CCC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_242C6CD14()
{
  result = qword_27ECEFAC0;
  if (!qword_27ECEFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFAC0);
  }

  return result;
}

unint64_t sub_242C6CD68()
{
  result = qword_27ECEFAC8;
  if (!qword_27ECEFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFAC8);
  }

  return result;
}

_OWORD *sub_242C6CDBC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

BOOL sub_242C6CE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(v3 + 24))
  {
    return 1;
  }

  v4 = -3;
  if (*(v3 + 24) == 1)
  {
    v4 = -2;
  }

  return (v4 | *(a3 + 24)) == -1;
}

uint64_t sub_242C6CEC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_242C6CF00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_2Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_242C6CFB0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_2Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_242C6D090()
{
  result = qword_27ECEFAE8;
  if (!qword_27ECEFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFAE8);
  }

  return result;
}

uint64_t sub_242C6D138(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242C6D198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C6D208(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_242C6CCC0(a1, a2);
  }

  return a1;
}

uint64_t sub_242C6D21C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_242C6D270(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_242C6D21C(a1, a2);
  }

  return a1;
}

void sub_242C6D2E8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_242C6D468@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2[5];
  v3 = a2[6];
  v5 = a2[10];
  v6 = a2[13];
  v7 = a2[47];
  switch(*a1)
  {
    case 1:
      v3 = a2[1];
      goto LABEL_47;
    case 2:
      v3 = a2[3];
      goto LABEL_47;
    case 3:
      v3 = a2[4];
      goto LABEL_47;
    case 4:
      v3 = a2[20];
      goto LABEL_47;
    case 5:
      v23 = a2[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 6:
      v3 = a2[19];
      goto LABEL_47;
    case 7:
    case 0xA:
    case 0xB:
    case 0xC:
      goto LABEL_47;
    case 8:
      v3 = a2[29];
      goto LABEL_47;
    case 9:
      v3 = a2[7];
      goto LABEL_47;
    case 0xD:
      v3 = a2[45];
      goto LABEL_47;
    case 0xE:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_242F09510;
      *(v32 + 32) = 0;
      v33 = v32 + 32;
      *(v32 + 40) = v4;
      v34 = sub_242CE6C84(v32);
      swift_setDeallocating();

      sub_242C6E840(v33);
      swift_deallocClassInstance();
      v35 = sub_242E1E384(v34);
      goto LABEL_49;
    case 0xF:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_242F09510;
      *(v24 + 32) = 0;
      v15 = v24 + 32;
      *(v24 + 40) = v7;
      v16 = sub_242CE6C84(v24);
      swift_setDeallocating();
      goto LABEL_25;
    case 0x10:
    case 0x11:
    case 0x12:
      v25 = sub_242F04770();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_242F09510;
      *(v26 + 32) = 0;
      v27 = v26 + 32;
      *(v26 + 40) = v25;
      v28 = sub_242CE6C84(v26);
      swift_setDeallocating();

      sub_242C6E840(v27);
      swift_deallocClassInstance();
      v29 = sub_242E1E384(v28);

      if (*(v29 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
        v30 = sub_242F05CB0();
      }

      else
      {
        v30 = MEMORY[0x277D84F98];
      }

      v42[0] = v30;

      sub_242E21B3C(v31, 1, v42);

      goto LABEL_53;
    case 0x13:
      v3 = a2[22];
      goto LABEL_47;
    case 0x14:
      v3 = a2[23];
      goto LABEL_47;
    case 0x15:
      v3 = a2[25];
      goto LABEL_47;
    case 0x16:
      v3 = a2[24];
      goto LABEL_47;
    case 0x17:
      v3 = a2[26];
      goto LABEL_47;
    case 0x18:
      v3 = a2[21];
      goto LABEL_47;
    case 0x19:
      v3 = a2[27];
      goto LABEL_47;
    case 0x1A:
      v3 = a2[28];
      goto LABEL_47;
    case 0x1B:
      v23 = a2[32];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 0x1C:
      v23 = a2[33];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 0x1D:
      v23 = a2[43];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 0x1E:
      v23 = a2[44];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 0x1F:
      v23 = a2[40];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 0x20:
      v23 = a2[41];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 0x21:
      v19 = sub_242F04770();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_242F09510;
      *(inited + 32) = 0;
      v21 = inited + 32;
      *(inited + 40) = v19;
      v22 = sub_242CE6C84(inited);
      swift_setDeallocating();

      sub_242C6E840(v21);
      GradientColor.init(stops:)(v22, a3);

    case 0x22:
      v23 = a2[30];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 0x23:
      v3 = a2[9];
      goto LABEL_47;
    case 0x24:
    case 0x25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_242F09510;
      *(v17 + 32) = 0;
      *(v17 + 40) = v5;
      v16 = sub_242CE6C84(v17);
      swift_setDeallocating();

      v18 = v17 + 32;
      goto LABEL_26;
    case 0x26:
      v23 = a2[11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 0x27:
      v3 = a2[12];
      goto LABEL_47;
    case 0x28:
    case 0x29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_242F09510;
      *(v14 + 32) = 0;
      v15 = v14 + 32;
      *(v14 + 40) = v6;
      v16 = sub_242CE6C84(v14);
      swift_setDeallocating();
LABEL_25:

      v18 = v15;
LABEL_26:
      sub_242C6E840(v18);
      goto LABEL_48;
    case 0x2A:
      v23 = a2[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 0x2B:
      v23 = a2[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 0x2C:
    case 0x2D:
    case 0x2E:
      v9 = a2[15];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_242F09510;
      *(v10 + 32) = 0;
      v11 = v10 + 32;
      *(v10 + 40) = v9;
      v12 = sub_242CE6C84(v10);
      swift_setDeallocating();

      sub_242C6E840(v11);
      swift_deallocClassInstance();

      return GradientColor.init(stops:)(v12, a3);
    case 0x31:
      v23 = a2[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 0x32:
      v23 = a2[49];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 0x33:
      v23 = a2[50];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_57;
    case 0x34:
      v23 = a2[51];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
LABEL_57:
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_242F09510;
      *(v39 + 32) = 0;
      v40 = v39 + 32;
      *(v39 + 40) = v23;
      v41 = sub_242CE6C84(v39);
      swift_setDeallocating();

      sub_242C6E840(v40);
      result = GradientColor.init(stops:)(v41, a3);
      break;
    default:
      v3 = *a2;
LABEL_47:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_242F09510;
      *(v36 + 32) = 0;
      *(v36 + 40) = v3;
      v16 = sub_242CE6C84(v36);
      swift_setDeallocating();

      sub_242C6E840(v36 + 32);
LABEL_48:
      swift_deallocClassInstance();
      v35 = sub_242E1E384(v16);
LABEL_49:

      if (*(v35 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
        v37 = sub_242F05CB0();
      }

      else
      {
        v37 = MEMORY[0x277D84F98];
      }

      v42[0] = v37;

      sub_242E21B3C(v38, 1, v42);
LABEL_53:

      *a3 = v42[0];
      break;
  }

  return result;
}

uint64_t sub_242C6DC80@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2[1];
  v4 = a2[6];
  v5 = a2[18];
  switch(*a1)
  {
    case 1:
    case 3:
    case 5:
    case 7:
    case 0x14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_242F09510;
      *(v7 + 32) = 0;
      *(v7 + 40) = v3;
      v8 = sub_242CE6C84(v7);
      swift_setDeallocating();

      v9 = v7 + 32;
      goto LABEL_6;
    case 8:
      v4 = a2[20];
      goto LABEL_4;
    case 9:
      v4 = a2[2];
      goto LABEL_4;
    case 0xA:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x2A:
      goto LABEL_4;
    case 0xB:
      v4 = a2[29];
      goto LABEL_4;
    case 0xC:
      v4 = a2[7];
      goto LABEL_4;
    case 0x10:
      v4 = a2[45];
      goto LABEL_4;
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_242F09510;
      *(v11 + 32) = 0;
      *(v11 + 40) = v5;
      v8 = sub_242CE6C84(v11);
      swift_setDeallocating();

      v9 = v11 + 32;
LABEL_6:
      sub_242C6E840(v9);
      goto LABEL_7;
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
      v19 = sub_242F04770();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_242F09510;
      *(v20 + 32) = 0;
      v21 = v20 + 32;
      *(v20 + 40) = v19;
      v22 = sub_242CE6C84(v20);
      swift_setDeallocating();

      sub_242C6E840(v21);
      swift_deallocClassInstance();
      v23 = sub_242E1E384(v22);

      if (*(v23 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
        v24 = sub_242F05CB0();
      }

      else
      {
        v24 = MEMORY[0x277D84F98];
      }

      v34[0] = v24;

      sub_242E21B3C(v25, 1, v34);

      goto LABEL_40;
    case 0x1A:
      v4 = a2[22];
      goto LABEL_4;
    case 0x1B:
      v4 = a2[23];
      goto LABEL_4;
    case 0x1C:
      v4 = a2[25];
      goto LABEL_4;
    case 0x1D:
      v4 = a2[24];
      goto LABEL_4;
    case 0x1E:
      v12 = a2[26];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_35;
    case 0x1F:
      v12 = a2[21];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_35;
    case 0x20:
      v12 = a2[27];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_35;
    case 0x21:
      v12 = a2[28];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_35;
    case 0x22:
      v12 = a2[32];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_35;
    case 0x23:
      v12 = a2[33];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_35;
    case 0x24:
      v12 = a2[43];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_35;
    case 0x25:
      v12 = a2[44];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
LABEL_35:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_242F09510;
      *(inited + 32) = 0;
      v27 = inited + 32;
      *(inited + 40) = v12;
      v8 = sub_242CE6C84(inited);
      swift_setDeallocating();

      sub_242C6E840(v27);
      goto LABEL_36;
    case 0x26:
      v13 = a2[40];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_43;
    case 0x27:
      v13 = a2[41];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_43;
    case 0x28:
      v14 = sub_242F04770();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_242F09510;
      *(v15 + 32) = 0;
      v16 = v15 + 32;
      *(v15 + 40) = v14;
      v17 = sub_242CE6C84(v15);
      swift_setDeallocating();

      sub_242C6E840(v16);
      GradientColor.init(stops:)(v17, a3);

    case 0x29:
      v13 = a2[30];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_43;
    case 0x2B:
      v13 = a2[49];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_43;
    case 0x2C:
      v13 = a2[50];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_43;
    case 0x2D:
      v13 = a2[51];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
LABEL_43:
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_242F09510;
      *(v31 + 32) = 0;
      v32 = v31 + 32;
      *(v31 + 40) = v13;
      v33 = sub_242CE6C84(v31);
      swift_setDeallocating();

      sub_242C6E840(v32);
      result = GradientColor.init(stops:)(v33, a3);
      break;
    default:
      v4 = *a2;
LABEL_4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_242F09510;
      *(v10 + 32) = 0;
      *(v10 + 40) = v4;
      v8 = sub_242CE6C84(v10);
      swift_setDeallocating();

      sub_242C6E840(v10 + 32);
LABEL_7:
      swift_deallocClassInstance();
LABEL_36:
      v28 = sub_242E1E384(v8);

      if (*(v28 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
        v29 = sub_242F05CB0();
      }

      else
      {
        v29 = MEMORY[0x277D84F98];
      }

      v34[0] = v29;

      sub_242E21B3C(v30, 1, v34);
LABEL_40:

      *a3 = v34[0];
      break;
  }

  return result;
}

uint64_t sub_242C6E2E4@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = a2[18];
  switch(*a1)
  {
    case 1:
      v3 = a2[1];
      goto LABEL_20;
    case 2:
      v3 = a2[20];
      goto LABEL_20;
    case 3:
      v3 = a2[6];
      goto LABEL_20;
    case 4:
      v3 = a2[29];
      goto LABEL_20;
    case 5:
      v3 = a2[7];
      goto LABEL_20;
    case 6:
      v3 = a2[45];
      goto LABEL_20;
    case 7:
    case 8:
      goto LABEL_20;
    case 9:
    case 0xA:
    case 0xB:
      v6 = sub_242F04770();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_242F09510;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      *(v7 + 40) = v6;
      v9 = sub_242CE6C84(v7);
      swift_setDeallocating();

      sub_242C6E840(v8);
      swift_deallocClassInstance();
      goto LABEL_36;
    case 0xC:
      v3 = a2[22];
      goto LABEL_20;
    case 0xD:
      v3 = a2[23];
      goto LABEL_20;
    case 0xE:
      v3 = a2[25];
      goto LABEL_20;
    case 0xF:
      v5 = a2[24];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x10:
      v5 = a2[26];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x11:
      v5 = a2[21];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x12:
      v5 = a2[27];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x13:
      v5 = a2[28];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x14:
      v5 = a2[32];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x15:
      v5 = a2[33];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x16:
      v5 = a2[43];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x17:
      v5 = a2[44];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x18:
      v5 = a2[40];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x19:
      v5 = a2[41];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x1A:
      v19 = sub_242F04770();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_242F09510;
      *(inited + 32) = 0;
      v21 = inited + 32;
      *(inited + 40) = v19;
      v9 = sub_242CE6C84(inited);
      swift_setDeallocating();

      sub_242C6E840(v21);
LABEL_36:
      v22 = sub_242E1E384(v9);

      if (*(v22 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
        v23 = sub_242F05CB0();
      }

      else
      {
        v23 = MEMORY[0x277D84F98];
      }

      v25[0] = v23;

      sub_242E21B3C(v24, 1, v25);

      goto LABEL_34;
    case 0x1B:
      v5 = a2[30];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x1C:
      v5 = a2[49];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x1D:
      v5 = a2[50];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      goto LABEL_29;
    case 0x1E:
      v5 = a2[51];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
LABEL_29:
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_242F09510;
      *(v13 + 32) = 0;
      v14 = v13 + 32;
      *(v13 + 40) = v5;
      v12 = sub_242CE6C84(v13);
      swift_setDeallocating();

      sub_242C6E840(v14);
      break;
    default:
      v3 = *a2;
LABEL_20:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_242F09510;
      *(v10 + 32) = 0;
      v11 = v10 + 32;
      *(v10 + 40) = v3;
      v12 = sub_242CE6C84(v10);
      swift_setDeallocating();

      sub_242C6E840(v11);
      swift_deallocClassInstance();
      break;
  }

  v15 = sub_242E1E384(v12);

  if (*(v15 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60);
    v16 = sub_242F05CB0();
  }

  else
  {
    v16 = MEMORY[0x277D84F98];
  }

  v25[0] = v16;

  sub_242E21B3C(v17, 1, v25);
LABEL_34:

  *a3 = v25[0];
  return result;
}

uint64_t sub_242C6E840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 static Theme.Palette.RepresentedColorScheme.duoTone(tone1:tone2:)@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE68);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_242F09530;
  *(v8 + 32) = 0;
  *(v8 + 40) = v4;
  *(v8 + 48) = v5;
  *(v8 + 56) = 0x3FDFFFD60E94EE39;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = 0x3FE0000000000000;
  *(v8 + 88) = v6;
  *(v8 + 96) = v7;
  *(v8 + 104) = 0x3FF0000000000000;
  *(v8 + 112) = v6;
  *(v8 + 120) = v7;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_242F04B40();
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  __asm { FMOV            V0.2D, #1.0 }

  *(a3 + 24) = result;
  *(a3 + 40) = 2;
  return result;
}

__n128 Theme.Palette.LinearGradient.Stop.init(location:color:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t Theme.Palette.LinearGradient.init(stops:startPoint:endPoint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

BOOL sub_242C6E9B8(__int128 *a1, __int128 *a2)
{
  v28 = *a1;
  v4 = *(a1 + 2);
  v29 = v4;
  v26 = *a2;
  v5 = *(a2 + 2);
  v27 = v5;
  v6 = v28;
  v7 = v26;
  if (*(&v28 + 1) >> 1 != 0xFFFFFFFFLL)
  {
    v24 = v28;
    v25 = v4;
    if (*(&v26 + 1) >> 1 != 0xFFFFFFFFLL)
    {
      v22 = v26;
      v23 = v5;
      sub_242C7F8C8(&v28, &v20);
      sub_242C7F8C8(&v26, &v20);
      sub_242C7F7AC(v6, *(&v6 + 1));
      v10 = _s14CarPlayAssetUI5ThemeO13ColorOverrideO2eeoiySbAE_AEtFZ_0(&v24, &v22);
      sub_242C7F7D4(v22, *(&v22 + 1));
      sub_242C7F7D4(v24, *(&v24 + 1));
      sub_242C7F7C0(v6, *(&v6 + 1));
      if ((v10 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    sub_242C7F8C8(&v28, &v22);
    sub_242C7F8C8(&v26, &v22);
    sub_242C7F7AC(v6, *(&v6 + 1));
    sub_242C7F7D4(v6, *(&v6 + 1));
LABEL_7:
    sub_242C7F7C0(v6, *(&v6 + 1));
    v9 = *(&v7 + 1);
    v8 = v7;
LABEL_16:
    sub_242C7F7C0(v8, v9);
    return 0;
  }

  if (*(&v26 + 1) >> 1 != 0xFFFFFFFFLL)
  {
    sub_242C7F8C8(&v28, &v24);
    sub_242C7F8C8(&v26, &v24);
    goto LABEL_7;
  }

  sub_242C7F8C8(&v28, &v24);
  sub_242C7F8C8(&v26, &v24);
  sub_242C7F7C0(v6, *(&v6 + 1));
LABEL_9:
  v24 = *(a1 + 24);
  v11 = *(a1 + 5);
  v25 = v11;
  v22 = *(a2 + 24);
  v12 = *(a2 + 5);
  v23 = v12;
  v13 = v24;
  v14 = v22;
  if (*(&v24 + 1) >> 1 == 0xFFFFFFFFLL)
  {
    if (*(&v22 + 1) >> 1 == 0xFFFFFFFFLL)
    {
      sub_242C7F8C8(&v24, &v20);
      sub_242C7F8C8(&v22, &v20);
      sub_242C7F7C0(v13, *(&v13 + 1));
      return 1;
    }

    sub_242C7F8C8(&v24, &v20);
    sub_242C7F8C8(&v22, &v20);
    goto LABEL_15;
  }

  v20 = v24;
  v21 = v11;
  if (*(&v22 + 1) >> 1 == 0xFFFFFFFFLL)
  {
    sub_242C7F8C8(&v24, &v18);
    sub_242C7F8C8(&v22, &v18);
    sub_242C7F7AC(v13, *(&v13 + 1));
    sub_242C7F7D4(v13, *(&v13 + 1));
LABEL_15:
    sub_242C7F7C0(v13, *(&v13 + 1));
    v9 = *(&v14 + 1);
    v8 = v14;
    goto LABEL_16;
  }

  v18 = v22;
  v19 = v12;
  sub_242C7F8C8(&v24, v17);
  sub_242C7F8C8(&v22, v17);
  sub_242C7F7AC(v13, *(&v13 + 1));
  v16 = _s14CarPlayAssetUI5ThemeO13ColorOverrideO2eeoiySbAE_AEtFZ_0(&v20, &v18);
  sub_242C7F7D4(v18, *(&v18 + 1));
  sub_242C7F7D4(v20, *(&v20 + 1));
  sub_242C7F7C0(v13, *(&v13 + 1));
  return (v16 & 1) != 0;
}

uint64_t static Theme.Palette.LinearGradient.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_242C729F0(*a1, *a2) & 1) == 0 || (sub_242F04B20() & 1) == 0)
  {
    return 0;
  }

  return sub_242F04B20();
}

uint64_t sub_242C6ED78()
{
  v1 = 0x656C676E6973;
  v2 = 0x72477261656E696CLL;
  if (*v0 != 2)
  {
    v2 = 0x6C6F6369746C756DLL;
  }

  if (*v0)
  {
    v1 = 0x4363696D616E7964;
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

uint64_t sub_242C6EE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C7CEC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C6EE3C(uint64_t a1)
{
  v2 = sub_242C7C354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C6EE78(uint64_t a1)
{
  v2 = sub_242C7C354();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C6EEC8(uint64_t a1)
{
  v2 = sub_242C7C4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C6EF04(uint64_t a1)
{
  v2 = sub_242C7C4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C6EF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242C6EFC0(uint64_t a1)
{
  v2 = sub_242C7C3FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C6EFFC(uint64_t a1)
{
  v2 = sub_242C7C3FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C6F044(uint64_t a1)
{
  v2 = sub_242C7C3A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C6F080(uint64_t a1)
{
  v2 = sub_242C7C3A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C6F0BC()
{
  sub_242F06390();
  MEMORY[0x245D279A0](0);
  return sub_242F063E0();
}

uint64_t sub_242C6F100()
{
  sub_242F06390();
  MEMORY[0x245D279A0](0);
  return sub_242F063E0();
}

uint64_t sub_242C6F154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242C6F1D8(uint64_t a1)
{
  v2 = sub_242C7C5E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C6F214(uint64_t a1)
{
  v2 = sub_242C7C5E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Theme.Palette.RepresentedColorScheme.encode(to:)(void *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE70);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = &v26 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE78);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v28 = &v26 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE80);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE88);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE90);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = *v1;
  v35 = v1[1];
  v36 = v13;
  v14 = v1[2];
  v15 = v1[3];
  v16 = v1[4];
  v17 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C7C354();
  sub_242F064C0();
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      LOBYTE(v39) = 2;
      sub_242C7C3FC();
      v19 = v28;
      v18 = v38;
      sub_242F05E40();
      v39 = v36;
      v40 = v35;
      v41 = v14;
      v42 = v15;
      v43 = v16;
      sub_242C7C450();
      v20 = v33;
      sub_242F05F20();
      (*(v31 + 8))(v19, v20);
      return (*(v37 + 8))(v12, v18);
    }

    LOBYTE(v39) = 3;
    sub_242C7C3A8();
    v24 = v30;
    v25 = v38;
    sub_242F05E40();
    (*(v32 + 8))(v24, v34);
    return (*(v37 + 8))(v12, v25);
  }

  else
  {
    if (!v17)
    {
      LOBYTE(v39) = 0;
      sub_242C7C5E8();
      v18 = v38;
      sub_242F05E40();
      v39 = v36;
      sub_242C7C594();
      sub_242F05F20();
      (*(v26 + 8))(v9, v7);
      return (*(v37 + 8))(v12, v18);
    }

    LOBYTE(v39) = 1;
    sub_242C7C4A4();
    v22 = v38;
    sub_242F05E40();
    v39 = v36;
    v40 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEC0);
    sub_242C7C690(&qword_27ECEFEC8);
    v23 = v29;
    sub_242F05F20();
    (*(v27 + 8))(v6, v23);
    return (*(v37 + 8))(v12, v22);
  }
}

uint64_t Theme.Palette.RepresentedColorScheme.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 40) > 1u)
  {
    if (*(v1 + 40) == 2)
    {
      MEMORY[0x245D279A0](2);
      sub_242C7BAC0(a1, v3);
      sub_242F04B30();

      return sub_242F04B30();
    }

    else
    {
      return MEMORY[0x245D279A0](3);
    }
  }

  else
  {
    if (*(v1 + 40))
    {
      MEMORY[0x245D279A0](1);
      sub_242F04720();
    }

    else
    {
      MEMORY[0x245D279A0](0);
    }

    return sub_242F04720();
  }
}

uint64_t Theme.Palette.RepresentedColorScheme.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  sub_242F06390();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x245D279A0](2);
      sub_242C7BAC0(v4, v1);
      sub_242F04B30();
      sub_242F04B30();
    }

    else
    {
      MEMORY[0x245D279A0](3);
    }
  }

  else
  {
    if (v2)
    {
      MEMORY[0x245D279A0](1);
      sub_242F04720();
    }

    else
    {
      MEMORY[0x245D279A0](0);
    }

    sub_242F04720();
  }

  return sub_242F063E0();
}

uint64_t Theme.Palette.RepresentedColorScheme.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEE8);
  v44 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v53 = &v41[-v3];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEF0);
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v52 = &v41[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEF8);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v41[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF00);
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF08);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v41[-v14];
  v16 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v16);
  sub_242C7C354();
  v17 = v54;
  sub_242F06480();
  if (!v17)
  {
    v43 = v9;
    v18 = v52;
    v19 = v53;
    v54 = v13;
    v20 = v15;
    v21 = sub_242F05E10();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_242F05B10();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v27 = &type metadata for Theme.Palette.RepresentedColorScheme;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v54 + 8))(v20, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = *(v21 + 32);
      if (v23 > 1)
      {
        v48 = v21;
        if (v23 == 2)
        {
          LOBYTE(v55) = 2;
          sub_242C7C3FC();
          v29 = v15;
          sub_242F05D10();
          v30 = v51;
          v31 = v54;
          sub_242C7C63C();
          v32 = v46;
          sub_242F05E00();
          (*(v50 + 8))(v18, v32);
          (*(v31 + 8))(v29, v12);
          swift_unknownObjectRelease();
          v39 = v55;
          v37 = v56;
          v40 = v57;
          v38 = v58;
        }

        else
        {
          LOBYTE(v55) = 3;
          sub_242C7C3A8();
          v34 = v15;
          sub_242F05D10();
          v30 = v51;
          v35 = v54;
          (*(v44 + 8))(v19, v49);
          (*(v35 + 8))(v34, v12);
          swift_unknownObjectRelease();
          v39 = 0;
          v37 = 0;
          v38 = 0;
          v40 = 0uLL;
        }
      }

      else
      {
        if (v23)
        {
          LOBYTE(v55) = 1;
          sub_242C7C4A4();
          sub_242F05D10();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEC0);
          sub_242C7C690(&qword_27ECEFF20);
          v33 = v47;
          sub_242F05E00();
          (*(v48 + 8))(v8, v33);
          (*(v54 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v38 = 0;
          v39 = v55;
          v37 = v56;
        }

        else
        {
          v48 = v21;
          LOBYTE(v55) = 0;
          sub_242C7C5E8();
          sub_242F05D10();
          sub_242C7C540();
          v36 = v43;
          sub_242F05E00();
          (*(v45 + 8))(v11, v36);
          (*(v54 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v37 = 0;
          v38 = 0;
          v39 = v55;
        }

        v40 = 0uLL;
        v30 = v51;
      }

      *v30 = v39;
      *(v30 + 8) = v37;
      *(v30 + 16) = v40;
      *(v30 + 32) = v38;
      *(v30 + 40) = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v59);
}

uint64_t sub_242C7025C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 15;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242C70290()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242C702C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 29;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242C702F8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 14;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242C7032C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242C70360()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242C70394()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242C703C8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242C7042C()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  sub_242F06390();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x245D279A0](2);
      sub_242C7BAC0(v4, v1);
      sub_242F04B30();
      sub_242F04B30();
    }

    else
    {
      MEMORY[0x245D279A0](3);
    }
  }

  else
  {
    if (v2)
    {
      MEMORY[0x245D279A0](1);
      sub_242F04720();
    }

    else
    {
      MEMORY[0x245D279A0](0);
    }

    sub_242F04720();
  }

  return sub_242F063E0();
}

uint64_t sub_242C70530(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 40) > 1u)
  {
    if (*(v1 + 40) == 2)
    {
      MEMORY[0x245D279A0](2);
      sub_242C7BAC0(a1, v3);
      sub_242F04B30();

      return sub_242F04B30();
    }

    else
    {
      return MEMORY[0x245D279A0](3);
    }
  }

  else
  {
    if (*(v1 + 40))
    {
      MEMORY[0x245D279A0](1);
      sub_242F04720();
    }

    else
    {
      MEMORY[0x245D279A0](0);
    }

    return sub_242F04720();
  }
}

uint64_t sub_242C70658()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  sub_242F06390();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x245D279A0](2);
      sub_242C7BAC0(v4, v1);
      sub_242F04B30();
      sub_242F04B30();
    }

    else
    {
      MEMORY[0x245D279A0](3);
    }
  }

  else
  {
    if (v2)
    {
      MEMORY[0x245D279A0](1);
      sub_242F04720();
    }

    else
    {
      MEMORY[0x245D279A0](0);
    }

    sub_242F04720();
  }

  return sub_242F063E0();
}

uint64_t Theme.Palette.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Theme.Palette.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Theme.Palette.colors.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Theme.Palette.representedColorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 88);
  *(a1 + 40) = v7;
  return sub_242C7C708(v2, v3, v4, v5, v6, v7);
}

uint64_t Theme.Palette.accentColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = v2;
  a1[1] = v3;
  return sub_242C7C77C(v2);
}

uint64_t Theme.Palette.init(colorSet:colorMap:explicitColorIDs:)@<X0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, 0x3B0uLL);
  v7 = *a2;
  v8 = a2[1];
  v25 = __dst[1];
  v26 = __dst[0];
  v30 = __dst[0];
  v31 = __dst[1];
  sub_242C6CB78();

  v9 = sub_242F058A0();
  v23 = v10;
  v24 = v9;
  v28 = v7;
  v29 = v8;
  memcpy(v27, __dst, sizeof(v27));
  v22 = ColorMap.explicit(colorIDs:colorSet:)(a3, v27);

  v11 = __dst[117];
  v12 = __dst[107];
  v13 = __dst[108];
  v14 = __dst[109];
  v15 = __dst[110];
  v16 = __dst[111];
  v21 = __dst[113];
  v17 = __dst[114];
  v18 = __dst[115];
  LOBYTE(v7) = __dst[112];

  sub_242C7C708(v12, v13, v14, v15, v16, v7);
  sub_242C7C77C(v17);
  result = sub_242C7C7BC(__dst);
  v20 = __dst[116];
  *a4 = v26;
  *(a4 + 8) = v25;
  *(a4 + 16) = v24;
  *(a4 + 24) = v23;
  *(a4 + 32) = v11;
  *(a4 + 40) = v22;
  *(a4 + 48) = v12;
  *(a4 + 56) = v13;
  *(a4 + 64) = v14;
  *(a4 + 72) = v15;
  *(a4 + 80) = v16;
  *(a4 + 88) = v7;
  *(a4 + 96) = v21;
  *(a4 + 104) = v17;
  *(a4 + 112) = v18;
  *(a4 + 120) = v20;
  return result;
}

uint64_t Theme.Palette.merging(colors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v17 = v2[2];
  v18 = *v2;
  v6 = v2[5];
  v19 = v2[4];
  v20 = v2[1];
  v7 = v2[7];
  v8 = v2[8];
  v9 = v2[9];
  v10 = v2[10];
  v11 = *(v2 + 88);
  v16 = v2[12];
  v23 = v2[13];
  v21 = v2[6];
  v22 = v2[14];
  v15 = *(v2 + 120);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v6;
  sub_242C7CB44(a1, sub_242C7BD8C, 0, isUniquelyReferenced_nonNull_native, &v24);

  v13 = v24;
  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v17;
  *(a2 + 24) = v5;
  *(a2 + 40) = v13;
  *(a2 + 48) = v21;
  *(a2 + 32) = v19;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  *(a2 + 88) = v11;
  *(a2 + 96) = v16;
  *(a2 + 104) = v23;
  *(a2 + 112) = v22;
  *(a2 + 120) = v15;

  sub_242C7C708(v21, v7, v8, v9, v10, v11);

  return sub_242C7C77C(v23);
}

{
  v29 = v2[2];
  v30 = *v2;
  v39 = v2[3];
  v40 = v2[1];
  v4 = v2[5];
  v37 = v2[7];
  v38 = v2[6];
  v35 = v2[9];
  v36 = v2[8];
  v34 = v2[10];
  v33 = *(v2 + 88);
  v28 = v2[12];
  v31 = v2[4];
  v32 = v2[13];
  v41 = v2[14];
  v27 = *(v2 + 120);
  v49 = MEMORY[0x277D84F98];
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = 24 * (__clz(__rbit64(v7)) | (v10 << 6));
      v12 = *(v4 + 48) + v11;
      v13 = *(v12 + 8);
      v14 = *(v4 + 56) + v11;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v18 = *(v12 + 16);
      v43 = *v12;
      v44 = v13;
      v45 = v18;
      v46 = v15;
      v47 = v16;
      v48 = v17;
      sub_242C7CE5C(v43, v13, v18);
      sub_242C7CE74(v15, v16, v17);
      sub_242C70DC4(&v49, &v43, a1);
      v7 &= v7 - 1;
      v19 = v46;
      v20 = v47;
      v21 = v48;
      sub_242C7CEB0(v43, v44, v45);
      sub_242C7FB88(v19, v20, v21);
      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);

      v24 = v46;
      v25 = v47;
      v26 = v48;
      sub_242C7CEB0(v43, v44, v45);
      sub_242C7FB88(v24, v25, v26);

      __break(1u);
      return result;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v22 = v49;
  *a2 = v30;
  *(a2 + 8) = v40;
  *(a2 + 16) = v29;
  *(a2 + 24) = v39;
  *(a2 + 32) = v31;
  *(a2 + 40) = v22;
  *(a2 + 48) = v38;
  *(a2 + 56) = v37;
  *(a2 + 64) = v36;
  *(a2 + 72) = v35;
  *(a2 + 80) = v34;
  *(a2 + 88) = v33;
  *(a2 + 96) = v28;
  *(a2 + 104) = v32;
  *(a2 + 112) = v41;
  *(a2 + 120) = v27;

  sub_242C7C708(v38, v37, v36, v35, v34, v33);

  return sub_242C7C77C(v32);
}

uint64_t sub_242C70DC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a3 + 16);
  sub_242C7CE5C(*a2, v5, v7);
  sub_242C7CE74(v9, v8, v10);
  if (!v11 || (v12 = sub_242CE50F4(v6, v5, v7), (v13 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *a1;
    sub_242CDE3B0(v9, v8, v10, v6, v5, v7, isUniquelyReferenced_nonNull_native);
    result = sub_242C7CEB0(v6, v5, v7);
LABEL_14:
    *a1 = v28;
    return result;
  }

  v14 = *(a3 + 56) + 24 * v12;
  v15 = *v14;
  if (v10)
  {
    if (*(v14 + 16))
    {
      v16 = *(v14 + 8);
      v17 = *v14;
      if (!v15)
      {

        v17 = v9;
      }

      v27 = v17;
      v18 = v16;
      if (!v16)
      {

        v18 = v8;
      }

      v26 = v18;
      sub_242C7FB48(v15, v16, 1);

      v19 = swift_isUniquelyReferenced_nonNull_native();
      v28 = *a1;
      sub_242CDE3B0(v27, v26, 1, v6, v5, v7, v19);
      sub_242C7CEB0(v6, v5, v7);
      sub_242C7FB88(v15, v16, 1);
      v20 = v9;
      v21 = v8;
      v22 = 1;
      goto LABEL_13;
    }
  }

  else if ((*(v14 + 16) & 1) == 0)
  {

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *a1;
    sub_242CDE3B0(v15, 0, 0, v6, v5, v7, v25);
    sub_242C7CEB0(v6, v5, v7);
    v20 = v9;
    v21 = v8;
    v22 = 0;
LABEL_13:
    result = sub_242C7FB88(v20, v21, v22);
    goto LABEL_14;
  }

  result = sub_242F05C60();
  __break(1u);
  return result;
}

uint64_t Theme.Palette.subset(colorIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16 = v2[2];
  v17 = *v2;
  v13 = v2[3];
  v14 = v2[7];
  v15 = v2[6];
  v6 = v2[8];
  v7 = v2[9];
  v8 = v2[10];
  v22 = v2[12];
  v20 = v2[13];
  v18 = v2[4];
  v19 = v2[14];
  v21 = *(v2 + 120);
  v9 = *(v2 + 88);

  v11 = sub_242C7D638(v10, a1);

  *a2 = v17;
  *(a2 + 8) = v5;
  *(a2 + 16) = v16;
  *(a2 + 24) = v13;
  *(a2 + 32) = v18;
  *(a2 + 40) = v11;
  *(a2 + 48) = v15;
  *(a2 + 56) = v14;
  *(a2 + 64) = v6;
  *(a2 + 72) = v7;
  *(a2 + 80) = v8;
  *(a2 + 88) = v9;
  *(a2 + 96) = v22;
  *(a2 + 104) = v20;
  *(a2 + 112) = v19;
  *(a2 + 120) = v21;

  sub_242C7C708(v15, v14, v6, v7, v8, v9);

  return sub_242C7C77C(v20);
}

uint64_t sub_242C7118C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6F43746E65636361;
  if (v1 != 6)
  {
    v3 = 0x6E656E696D6F7270;
  }

  v4 = 0x65646E4974726F73;
  if (v1 == 4)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 2)
  {
    v5 = 0x73726F6C6F63;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242C71290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C7F304(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C712C4(uint64_t a1)
{
  v2 = sub_242C7D7F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C71300(uint64_t a1)
{
  v2 = sub_242C7D7F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Theme.Palette.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v34 = *(v1 + 24);
  v35 = v9;
  v10 = *(v1 + 32);
  v32 = *(v1 + 40);
  v33 = v10;
  v11 = *(v1 + 48);
  v30 = *(v1 + 56);
  v31 = v11;
  v12 = *(v1 + 64);
  v13 = *(v1 + 72);
  v28 = *(v1 + 80);
  v29 = v12;
  v43 = *(v1 + 88);
  v14 = *(v1 + 104);
  v26 = *(v1 + 96);
  v27 = v13;
  v15 = *(v1 + 112);
  v24 = v14;
  v25 = v15;
  v23[3] = *(v1 + 120);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C7D7F8();

  sub_242F064C0();
  v37 = v7;
  v38 = v8;
  v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF38);
  sub_242C7D9A8(&qword_27ECEFF40);
  v16 = v36;
  sub_242F05F20();
  if (v16)
  {
  }

  else
  {
    v17 = v32;
    v18 = v33;
    v19 = v29;
    v20 = v30;
    v21 = v31;

    LOBYTE(v37) = 1;
    sub_242F05EC0();
    v37 = v18;
    v44 = 2;
    sub_242C7C594();
    sub_242F05EB0();
    v37 = v17;
    v44 = 3;
    sub_242C7D84C();

    sub_242F05F20();

    v37 = v21;
    v38 = v20;
    v39 = v19;
    v40 = v27;
    v41 = v28;
    v42 = v43;
    v44 = 4;
    sub_242C7C708(v21, v20, v19, v27, v28, v43);
    sub_242C7D8A0();
    sub_242F05F20();
    sub_242C7D8F4(v37, v38, v39, v40, v41, v42);
    LOBYTE(v37) = 5;
    sub_242F05F00();
    v37 = v24;
    v38 = v25;
    v44 = 6;
    sub_242C7C77C(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEC0);
    sub_242C7C690(&qword_27ECEFEC8);
    sub_242F05EB0();
    sub_242C7D968(v37);
    LOBYTE(v37) = 7;
    sub_242F05ED0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Theme.Palette.hash(into:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 88);
  v7 = *(v1 + 104);
  v9 = *(v1 + 96);
  sub_242F04DD0();
  sub_242F04DD0();
  sub_242F063B0();
  if (v4)
  {
    sub_242F04720();
  }

  sub_242C78E78(a1, v3);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      MEMORY[0x245D279A0](2);
      sub_242C7BAC0(a1, v5);
      sub_242F04B30();
      sub_242F04B30();
    }

    else
    {
      MEMORY[0x245D279A0](3);
    }
  }

  else
  {
    if (v6)
    {
      MEMORY[0x245D279A0](1);
      sub_242F04720();
    }

    else
    {
      MEMORY[0x245D279A0](0);
    }

    sub_242F04720();
  }

  MEMORY[0x245D279A0](v9);
  sub_242F063B0();
  if (v7)
  {
    sub_242F04720();
    sub_242F04720();
  }

  return sub_242F063B0();
}

uint64_t Theme.Palette.hashValue.getter()
{
  sub_242F06390();
  Theme.Palette.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Theme.Palette.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF58);
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v26 - v6;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C7D7F8();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF38);
  LOBYTE(v38[0]) = 0;
  sub_242C7D9A8(&qword_27ECEFF60);
  sub_242F05E00();
  v36 = *(&v44 + 1);
  v9 = v44;
  LOBYTE(v44) = 1;
  v10 = sub_242F05DA0();
  *(&v35 + 1) = v11;
  v34 = v9;
  *&v35 = v10;
  LOBYTE(v38[0]) = 2;
  sub_242C7C540();
  sub_242F05D90();
  v33 = v44;
  LOBYTE(v38[0]) = 3;
  sub_242C7DA18();
  sub_242F05E00();
  v32 = v44;
  LOBYTE(v38[0]) = 4;
  sub_242C7DA6C();
  v12 = v37;
  sub_242F05E00();
  v31 = v44;
  v29 = v45;
  v30 = v46;
  v56 = v47;
  LOBYTE(v44) = 5;
  v26 = sub_242F05DE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEC0);
  LOBYTE(v38[0]) = 6;
  sub_242C7C690(&qword_27ECEFF20);
  sub_242F05D90();
  v27 = *(&v44 + 1);
  v28 = v44;
  v57 = 7;
  v13 = sub_242F05DB0();
  (*(v8 + 8))(v7, v12);
  LODWORD(v37) = v13 & 1;
  v14 = v33;
  v15 = v34;
  v16 = *(&v35 + 1);
  *&v38[0] = v34;
  *(&v38[0] + 1) = v36;
  v38[1] = v35;
  v17 = v32;
  *&v39 = v33;
  *(&v39 + 1) = v32;
  v40 = v31;
  v41 = v29;
  *&v42 = v30;
  v18 = v56;
  BYTE8(v42) = v56;
  *&v43[0] = v26;
  *(&v43[0] + 1) = v28;
  *&v43[1] = v27;
  BYTE8(v43[1]) = v37;
  v19 = v38[0];
  v20 = v35;
  v21 = v31;
  a2[2] = v39;
  a2[3] = v21;
  *a2 = v19;
  a2[1] = v20;
  v22 = v41;
  v23 = v42;
  v24 = v43[0];
  *(a2 + 105) = *(v43 + 9);
  a2[5] = v23;
  a2[6] = v24;
  a2[4] = v22;
  sub_242C7DAC0(v38, &v44);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  *&v44 = v15;
  *(&v44 + 1) = v36;
  *&v45 = v35;
  *(&v45 + 1) = v16;
  v46 = v14;
  v47 = v17;
  v48 = v31;
  v49 = v29;
  v50 = v30;
  v51 = v18;
  v52 = v26;
  v53 = v28;
  v54 = v27;
  v55 = v37;
  return sub_242C7DAF8(&v44);
}

uint64_t sub_242C71F4C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_242C71F58()
{
  sub_242F06390();
  Theme.Palette.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242C71F9C()
{
  sub_242F06390();
  Theme.Palette.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Theme.Palette.LinearGradient.Stop.color.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

__n128 Theme.Palette.LinearGradient.Stop.color.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

BOOL static Theme.Palette.LinearGradient.Stop.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return (sub_242F04710() & 1) != 0 && (sub_242F04710() & 1) != 0;
}

uint64_t sub_242C72108()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_242C72140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242C72218(uint64_t a1)
{
  v2 = sub_242C7DB28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C72254(uint64_t a1)
{
  v2 = sub_242C7DB28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Theme.Palette.LinearGradient.Stop.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C7DB28();
  sub_242F064C0();
  v12 = v8;
  v14 = 0;
  sub_242C7DB7C();
  sub_242F05F20();
  if (!v2)
  {
    v12 = v9;
    v13 = v11;
    v14 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEC0);
    sub_242C7C690(&qword_27ECEFEC8);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Theme.Palette.LinearGradient.Stop.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x245D279D0](*&v1);
  sub_242F04720();

  return sub_242F04720();
}

uint64_t Theme.Palette.LinearGradient.Stop.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x245D279D0](*&v2);
  sub_242F04720();
  sub_242F04720();
  return sub_242F063E0();
}

uint64_t Theme.Palette.LinearGradient.Stop.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C7DB28();
  sub_242F06480();
  if (!v2)
  {
    v13 = 0;
    sub_242C7DBD0();
    sub_242F05E00();
    v9 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEC0);
    v13 = 1;
    sub_242C7C690(&qword_27ECEFF20);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242C727B8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x245D279D0](*&v1);
  sub_242F04720();

  return sub_242F04720();
}

uint64_t sub_242C72824()
{
  v1 = *v0;
  sub_242F06390();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x245D279D0](*&v2);
  sub_242F04720();
  sub_242F04720();
  return sub_242F063E0();
}

BOOL sub_242C728A0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return (sub_242F04710() & 1) != 0 && (sub_242F04710() & 1) != 0;
}

uint64_t Theme.Palette.LinearGradient.stops.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 (*Theme.Palette.LinearGradient.startPoint.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 8);
  return sub_242C72994;
}

__n128 sub_242C72994(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 8) = *a1;
  return result;
}

__n128 (*Theme.Palette.LinearGradient.endPoint.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 24);
  return sub_242C729E0;
}

__n128 sub_242C729E0(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 24) = *a1;
  return result;
}

uint64_t sub_242C729F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 48;
    for (i = a2 + 48; *(v3 - 16) == *(i - 16); i += 24)
    {

      if ((sub_242F04710() & 1) == 0)
      {

        return 0;
      }

      v5 = sub_242F04710();

      if ((v5 & 1) == 0)
      {
        return 0;
      }

      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_242C72B08(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  while (v2)
  {
    v4.f64[1] = *(result + v3 + 48);
    v5.f64[1] = *(a2 + v3 + 48);
    v4.f64[0] = *(result + v3 + 32);
    v5.f64[0] = *(a2 + v3 + 32);
    v6 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, v5), vceqq_f64(*(result + v3 + 56), *(a2 + v3 + 56))))) & (*(result + v3 + 40) == *(a2 + v3 + 40));
    v7 = v6 != 1 || v2-- == 1;
    v3 += 40;
    if (v7)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C72BB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v23 = v2;
  v24 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  v7 = v4 - 1;
  do
  {
    v8 = v7;
    v9 = *(v5 + 112);
    v21[6] = *(v5 + 96);
    v21[7] = v9;
    v22 = *(v5 + 128);
    v10 = *(v5 + 48);
    v21[2] = *(v5 + 32);
    v21[3] = v10;
    v11 = *(v5 + 80);
    v21[4] = *(v5 + 64);
    v21[5] = v11;
    v12 = *(v5 + 16);
    v21[0] = *v5;
    v21[1] = v12;
    v13 = *(v6 + 112);
    v19[6] = *(v6 + 96);
    v19[7] = v13;
    v20 = *(v6 + 128);
    v14 = *(v6 + 48);
    v19[2] = *(v6 + 32);
    v19[3] = v14;
    v15 = *(v6 + 80);
    v19[4] = *(v6 + 64);
    v19[5] = v15;
    v16 = *(v6 + 16);
    v19[0] = *v6;
    v19[1] = v16;
    v17 = _s14CarPlayAssetUI14VisibilityRuleO2eeoiySbAC_ACtFZ_0(v21, v19);
    if (!v17)
    {
      break;
    }

    v7 = v8 - 1;
    v6 += 136;
    v5 += 136;
  }

  while (v8);
  return v17;
}

uint64_t sub_242C72C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); *(v3 - 4) == *(i - 4); i += 5)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_242F06110() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_242F06110() & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_242C72D78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v6 = a1 + i;
      v7 = a2 + i;
      if (*(a1 + i + 32) != *(a2 + i + 32))
      {
        break;
      }

      v8 = *(v6 + 56);
      v9 = *(v7 + 56);
      if (*(v6 + 40) == *(v7 + 40) && *(v6 + 48) == *(v7 + 48))
      {
        if (v8 != v9)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_242F06110();
        result = 0;
        if (v11 & 1) == 0 || ((v8 ^ v9))
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_242C72E4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v37 = v2;
  v38 = v3;
  v5 = a1 + 32;
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v24 = v28;
    v25 = v8;
    v26 = v30;
    v22 = v27[0];
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[3];
    v32 = *(v6 + 8);
    v31[2] = v12;
    v31[3] = v13;
    v31[0] = v10;
    v31[1] = v11;
    v19 = v12;
    v20 = v13;
    v21 = v32;
    v17 = v10;
    v18 = v11;
    sub_242C7F9E8(v27, v16);
    sub_242C7F9E8(v31, v16);
    v14 = _s14CarPlayAssetUI17NotificationModelV05FancyF0V19ActionConfigurationV2eeoiySbAG_AGtFZ_0(&v22, &v17);
    v33[2] = v19;
    v33[3] = v20;
    v34 = v21;
    v33[0] = v17;
    v33[1] = v18;
    sub_242C7FA44(v33);
    v35[2] = v24;
    v35[3] = v25;
    v36 = v26;
    v35[0] = v22;
    v35[1] = v23;
    sub_242C7FA44(v35);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 72);
    v5 += 72;
  }

  return 1;
}

uint64_t sub_242C72F94(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C72FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v7 = *(v4 - 2);
      v8 = *v4 | (*(v4 + 4) << 32);
      v9 = *(v3 - 2);
      v10 = *v3 | (*(v3 + 4) << 32);
      v11 = (v8 >> 38) & 3;
      if (((v8 >> 38) & 3) > 1)
      {
        v13 = *(v3 - 1);
        if (v11 == 2)
        {
          if (((v10 >> 38) & 3) != 2)
          {
            return 0;
          }

          result = 0;
          v18 = *&v7 == *&v9 && *(&v7 + 1) == *(&v9 + 1) && COERCE_FLOAT(*(v4 - 1)) == *&v13 && COERCE_FLOAT(HIDWORD(*(v4 - 1))) == *(&v13 + 1) && *v4 == *v3;
          if (!v18 || (v4[1] & 1) == ((v10 & 0x100000000) == 0))
          {
            return result;
          }
        }

        else
        {
          if (((v10 >> 38) & 3) != 3)
          {
            return 0;
          }

          result = 0;
          if (v13 | v9 || (v10 & 0xFFFFFFFFFFLL) != 0xC000000000)
          {
            return result;
          }
        }
      }

      else
      {
        v12 = (v10 >> 38) & 3;
        if (v11)
        {
          if (v12 != 1)
          {
            return 0;
          }
        }

        else if (v12)
        {
          return 0;
        }

        v5 = HIDWORD(v9);
        if (*&v7 != COERCE_FLOAT(*(v3 - 2)) || *(&v7 + 1) != *&v5)
        {
          return 0;
        }
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_242C73158(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v3 += 8;
        v4 += 8;

        v5 = sub_242F04710();

        if ((v5 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_242C73210(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_242F06110() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_242C732A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C732FC()
{
  v1 = 0x696F507472617473;
  if (*v0 != 1)
  {
    v1 = 0x746E696F50646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73706F7473;
  }
}

uint64_t sub_242C73358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C7F5A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C73380(uint64_t a1)
{
  v2 = sub_242C7DC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C733BC(uint64_t a1)
{
  v2 = sub_242C7DC24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Theme.Palette.LinearGradient.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFFA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C7DC24();

  sub_242F064C0();
  v14 = v8;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFFB0);
  sub_242C7DCCC(&qword_27ECEFFB8, sub_242C7DC78);
  sub_242F05F20();

  if (!v2)
  {
    v14 = v9;
    v15 = v10;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFFC8);
    sub_242C7E000(&qword_27ECEFFD0, &qword_27ECEFFC8);
    sub_242F05F20();
    v14 = v11;
    v15 = v12;
    v16 = 2;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Theme.Palette.LinearGradient.hash(into:)(uint64_t a1)
{
  sub_242C7BAC0(a1, *v1);
  sub_242F04B30();

  return sub_242F04B30();
}

uint64_t Theme.Palette.LinearGradient.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  sub_242C7BAC0(v3, v1);
  sub_242F04B30();
  sub_242F04B30();
  return sub_242F063E0();
}

uint64_t Theme.Palette.LinearGradient.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFFD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C7DC24();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFFB0);
  v17 = 0;
  sub_242C7DCCC(&qword_27ECEFFE0, sub_242C7DD44);
  sub_242F05E00();
  v15 = a2;
  v9 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFFC8);
  v17 = 1;
  sub_242C7E000(&qword_27ECEFFF0, &qword_27ECEFFC8);
  sub_242F05E00();
  v10 = v16;
  v17 = 2;
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v11 = v16;
  v12 = v15;
  *v15 = v9;
  *(v12 + 1) = v10;
  *(v12 + 3) = v11;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242C73A70()
{
  v1 = *v0;
  sub_242F06390();
  sub_242C7BAC0(v3, v1);
  sub_242F04B30();
  sub_242F04B30();
  return sub_242F063E0();
}

uint64_t sub_242C73AF0(uint64_t a1)
{
  sub_242C7BAC0(a1, *v1);
  sub_242F04B30();

  return sub_242F04B30();
}

uint64_t sub_242C73B5C()
{
  v1 = *v0;
  sub_242F06390();
  sub_242C7BAC0(v3, v1);
  sub_242F04B30();
  sub_242F04B30();
  return sub_242F063E0();
}

uint64_t sub_242C73BD8(uint64_t *a1, uint64_t *a2)
{
  if ((sub_242C729F0(*a1, *a2) & 1) == 0 || (sub_242F04B20() & 1) == 0)
  {
    return 0;
  }

  return sub_242F04B20();
}

uint64_t Theme.Palette.ColorsEncoder.wrappedValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Theme.Palette.ColorsEncoder.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);

  sub_242F064B0();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFFF8);
  sub_242C7DDE8();
  sub_242F061B0();

  return __swift_destroy_boxed_opaque_existential_2Tm(v2);
}

uint64_t Theme.Palette.ColorsEncoder.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F06470();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_2Tm(v7, v7[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFFF8);
    sub_242C7DEF4();
    sub_242F06160();
    v5 = v7[6];
    __swift_destroy_boxed_opaque_existential_2Tm(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242C74064(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v21 = (v6 - 1) & v6;
LABEL_13:
    v11 = v8 | (v2 << 6);
    v12 = result;
    v13 = *(result + 48) + 24 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(*(result + 56) + 8 * v11);
    v18 = v17 == 0;

    if (!v17)
    {
      return v18;
    }

    sub_242CE503C(v14, v15, v16);
    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v20 = sub_242F04710();

    result = v12;
    v6 = v21;
    if ((v20 & 1) == 0)
    {
      return v18;
    }
  }

  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v21 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C741EC(uint64_t result, uint64_t a2)
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
  v26 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v27 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v11 = 16 * (v8 | (v4 << 6));
    v12 = (*(v3 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(v3 + 56) + v11);
    v17 = *v15;
    v16 = v15[1];
    v18 = v13 == 0;

    if (!v13)
    {
      return v18;
    }

    v19 = v3;
    v20 = sub_242CE8370(v14, v13);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v17 && v16 == v23[1])
    {

      v3 = v19;
    }

    else
    {
      v25 = sub_242F06110();

      v3 = v19;
      if ((v25 & 1) == 0)
      {
        return v18;
      }
    }
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v27)
    {
      return 1;
    }

    v10 = *(v26 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v7 = (v10 - 1) & v10;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C743A0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v28 = result + 64;
  v29 = result;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v27 = (v4 + 63) >> 6;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v30 = (v6 - 1) & v6;
LABEL_13:
    v10 = 24 * (v7 | (v3 << 6));
    v11 = *(result + 48) + v10;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(result + 56) + v10;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v11 + 16);
    sub_242C7CE5C(*v11, v13, *(v11 + 16));
    sub_242C7CE74(v15, v16, v17);
    v19 = sub_242CE50F4(v12, v13, v18);
    v21 = v20;
    sub_242C7CEB0(v12, v13, v18);
    if ((v21 & 1) == 0)
    {
      sub_242C7FB88(v15, v16, v17);
      return 0;
    }

    v22 = *(a2 + 56) + 24 * v19;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    sub_242C7CE74(*v22, v24, v25);
    v26 = sub_242C78A4C(v23, v24, v25, v15, v16, v17);
    sub_242C7FB88(v15, v16, v17);
    sub_242C7FB88(v23, v24, v25);
    result = v29;
    v6 = v30;
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v27)
    {
      return 1;
    }

    v9 = *(v28 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v30 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C74594(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = (*(v2 + 48) + 16 * (v8 | (v3 << 6)));
    v12 = *v11;
    v13 = v11[1];

    sub_242CE519C(v12, v13);
    v15 = v14;

    if ((v15 & 1) == 0)
    {

      return 0;
    }

    v16 = sub_242F04710();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C746FC(uint64_t a1)
{
  result = MEMORY[0x28223BE20](a1);
  if (result == v2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(v2 + 16))
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
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = v9 | (v4 << 6);
LABEL_15:
      v15 = (*(v3 + 48) + 944 * v10);
      memcpy(__dst, v15, sizeof(__dst));
      v16 = *(*(v3 + 56) + 8 * v10);
      memmove(__src, v15, 0x3B0uLL);
      v25 = v16;
      nullsub_2(__src);
      sub_242C7F7E0(__dst, &v22);
      memcpy(v26, __src, sizeof(v26));
      v17 = v25;

      v12 = v4;
LABEL_16:
      memcpy(__src, v26, sizeof(__src));
      v25 = v17;
      result = get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__src);
      if (result == 1)
      {
        break;
      }

      memcpy(v27, v26, 0x3B0uLL);
      sub_242CE5238(v27);
      v19 = v18;
      sub_242C7C7BC(v27);
      if ((v19 & 1) == 0)
      {

        return 0;
      }

      v21 = sub_242C74944(v20, v17);

      if ((v21 & 1) == 0)
      {
        return 0;
      }

      v4 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v8 <= v4 + 1)
    {
      v11 = v4 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        sub_242C7F83C(__src);
        memcpy(v26, __src, sizeof(v26));
        v7 = 0;
        v17 = v25;
        goto LABEL_16;
      }

      v14 = *(v3 + 64 + 8 * v13);
      ++v4;
      if (v14)
      {
        v7 = (v14 - 1) & v14;
        v10 = __clz(__rbit64(v14)) | (v13 << 6);
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242C74944(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v60 = result + 64;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v59 = (v3 + 63) >> 6;
  v61 = result;
  while (1)
  {
    while (1)
    {
      if (!v5)
      {
        v8 = v2;
        while (1)
        {
          v2 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v2 >= v59)
          {
            return 1;
          }

          v9 = *(v60 + 8 * v2);
          ++v8;
          if (v9)
          {
            v6 = __clz(__rbit64(v9));
            v7 = (v9 - 1) & v9;
            goto LABEL_13;
          }
        }

        __break(1u);
        return result;
      }

      v6 = __clz(__rbit64(v5));
      v7 = (v5 - 1) & v5;
LABEL_13:
      v65 = v2;
      v10 = v6 | (v2 << 6);
      v11 = *(result + 48) + 24 * v10;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(result + 56) + 56 * v10;
      v16 = *v15;
      v17 = *(v15 + 8);
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      v67 = *(v15 + 32);
      v69 = *(v15 + 40);
      v20 = *(v15 + 48);
      sub_242C7CE5C(*v11, v13, v14);
      v68 = v16;
      v70 = v17;
      v66 = v19;
      v63 = v18;
      sub_242C7F844(v16, v17, v19, v18, v67, v69, v20, sub_242C7F7A0, sub_242C7F7AC);
      v21 = v20 == 255;
      if (v20 == 255)
      {
        return v21;
      }

      v64 = v7;
      v22 = sub_242CE50F4(v12, v13, v14);
      v24 = v23;
      sub_242C7CEB0(v12, v13, v14);
      if ((v24 & 1) == 0)
      {
        sub_242C7F844(v16, v17, v66, v63, v67, v69, v20, sub_242C7F7D4, sub_242C7F7C0);
        return 0;
      }

      v25 = *(a2 + 56) + 56 * v22;
      v27 = *v25;
      v26 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(v25 + 24);
      v30 = *(v25 + 32);
      v31 = *(v25 + 40);
      v71 = *(v25 + 48);
      if ((v71 & 1) == 0)
      {
        break;
      }

      if ((v20 & 1) == 0)
      {
        v54 = *(v25 + 40);
        v55 = *(v25 + 16);
        v56 = *(v25 + 32);
        sub_242C7F844(v27, v26, v28, v29, v30, v31, 1, sub_242C7F7A0, sub_242C7F7AC);
        sub_242C7F844(v27, v26, v55, v29, v56, v31, 1, sub_242C7F7A0, sub_242C7F7AC);
        sub_242C7F7C0(v27, v26);
        sub_242C7F7C0(v29, v56);
        goto LABEL_66;
      }

      *&v77 = v16;
      *(&v77 + 1) = v17;
      v78 = v66;
      v79 = v63;
      v80 = v67;
      v81 = v69;
      *&v72 = v27;
      *(&v72 + 1) = v26;
      v73 = v28;
      v74 = v29;
      v32 = v29;
      v33 = v30;
      v75 = v30;
      v76 = v31;
      v34 = v28;
      sub_242C7F844(v27, v26, v28, v32, v30, v31, 1, sub_242C7F7A0, sub_242C7F7AC);
      sub_242C7F844(v27, v26, v34, v32, v33, v31, 1, sub_242C7F7A0, sub_242C7F7AC);
      v35 = sub_242C6E9B8(&v72, &v77);
      sub_242C6D138(&v77, &qword_27ECF0148);
      sub_242C7F7C0(v27, v26);
      sub_242C7F7C0(v32, v33);
      sub_242C7F844(v27, v26, v34, v32, v33, v31, 1, sub_242C7F7D4, sub_242C7F7C0);
      result = v61;
      v5 = v64;
      v2 = v65;
      if (!v35)
      {
        return v21;
      }
    }

    if (v20)
    {
      v54 = *(v25 + 40);
      v55 = *(v25 + 16);
      v56 = *(v25 + 32);
      sub_242C7F844(v27, v26, v28, v29, v30, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
      sub_242C7F844(v27, v26, v55, v29, v56, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
      sub_242C7F7D4(v27, v26);
LABEL_66:
      sub_242C7F844(v27, v26, v55, v29, v56, v54, v71, sub_242C7F7D4, sub_242C7F7C0);
      sub_242C7F844(v16, v17, v66, v63, v67, v69, v71 ^ 1, sub_242C7F7D4, sub_242C7F7C0);
      return 0;
    }

    v36 = *(v25 + 32);
    if ((v26 & 0x8000000000000000) == 0)
    {
      break;
    }

    v37 = v17;
    if ((v17 & 0x8000000000000000) == 0)
    {
      v42 = *(v25 + 16);
      sub_242C7F844(v27, v26, v28, v29, v30, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
      sub_242C7F844(v27, v26, v42, v29, v36, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
      sub_242C7F7A0(v27, v26);
      goto LABEL_70;
    }

    v42 = *(v25 + 16);
    sub_242C7F7A0(v27, v26);
    sub_242C7F844(v27, v26, v42, v29, v36, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
    sub_242C7F844(v27, v26, v42, v29, v36, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
    sub_242C7F7A0(v27, v26);
    sub_242C7F7A0(v16, v70);
    v43 = sub_242C74594(v27, v16);
    sub_242C7F7D4(v27, v26);
    sub_242C7F7D4(v16, v70);
    sub_242C7F7D4(v16, v70);
    sub_242C7F7D4(v27, v26);
    if ((v43 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_43:
    sub_242C7F7D4(v27, v26);
    sub_242C7F844(v27, v26, v42, v29, v36, v31, v71, sub_242C7F7D4, sub_242C7F7C0);
    result = v61;
    v5 = v64;
    v2 = v65;
  }

  v37 = v17;
  if ((v17 & 0x8000000000000000) == 0)
  {
    v58 = *(v25 + 24);
    if (v26)
    {
      if (v27 <= 2)
      {
        if (v27)
        {
          v50 = *(v25 + 16);
          if (v27 == 1)
          {
            sub_242C7F844(1, v26, v28, v29, v30, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
            v39 = v50;
            sub_242C7F844(1, v26, v50, v29, v36, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
            v41 = 0x7373416465657073;
            v40 = 0xEB00000000747369;
          }

          else
          {
            sub_242C7F844(2, v26, v28, v29, v30, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
            v39 = v50;
            sub_242C7F844(2, v26, v50, v29, v36, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
            v41 = 0xD000000000000015;
            v40 = 0x8000000242F58D00;
          }
        }

        else
        {
          v52 = *(v25 + 24);
          v41 = 0xD000000000000013;
          v53 = *(v25 + 16);
          sub_242C7F844(0, v26, v28, v52, v30, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
          v39 = v53;
          sub_242C7F844(0, v26, v53, v52, v36, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
          v40 = 0x8000000242F58D20;
        }
      }

      else if (v27 > 4)
      {
        v51 = *(v25 + 16);
        if (v27 == 5)
        {
          sub_242C7F844(5, v26, v28, v29, v30, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
          v39 = v51;
          sub_242C7F844(5, v26, v51, v29, v36, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
          v40 = 0xE700000000000000;
          v41 = 0x656E696C646572;
        }

        else
        {
          sub_242C7F844(6, v26, v28, v29, v30, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
          v39 = v51;
          sub_242C7F844(6, v26, v51, v29, v36, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
          v41 = 0xD000000000000019;
          v40 = 0x8000000242F58CE0;
        }
      }

      else
      {
        v38 = *(v25 + 16);
        if (v27 == 3)
        {
          sub_242C7F844(3, v26, v28, v29, v30, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
          v39 = v38;
          sub_242C7F844(3, v26, v38, v29, v36, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
          v40 = 0xE800000000000000;
          v41 = 0x6574617453776F6CLL;
        }

        else
        {
          sub_242C7F844(4, v26, v28, v29, v30, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
          v39 = v38;
          sub_242C7F844(4, v26, v38, v29, v36, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
          v41 = 0x6C61636974697263;
          v40 = 0xED00006574617453;
        }
      }
    }

    else
    {
      v44 = *(v25 + 16);
      sub_242C7F844(v27, v26, v28, v29, v30, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
      v39 = v44;
      sub_242C7F844(v27, v26, v44, v29, v36, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
      v41 = sub_242F05F60();
      v40 = v45;
    }

    if (v70)
    {
      if (v68 <= 2)
      {
        if (v68)
        {
          if (v68 == 1)
          {
            v47 = 0x7373416465657073;
            v46 = 0xEB00000000747369;
          }

          else
          {
            v47 = 0xD000000000000015;
            v46 = 0x8000000242F58D00;
          }
        }

        else
        {
          v47 = 0xD000000000000013;
          v46 = 0x8000000242F58D20;
        }
      }

      else if (v68 > 4)
      {
        if (v68 == 5)
        {
          v46 = 0xE700000000000000;
          v47 = 0x656E696C646572;
        }

        else
        {
          v47 = 0xD000000000000019;
          v46 = 0x8000000242F58CE0;
        }
      }

      else if (v68 == 3)
      {
        v46 = 0xE800000000000000;
        v47 = 0x6574617453776F6CLL;
      }

      else
      {
        v47 = 0x6C61636974697263;
        v46 = 0xED00006574617453;
      }
    }

    else
    {
      v47 = sub_242F05F60();
      v46 = v48;
    }

    if (v41 == v47 && v40 == v46)
    {
      sub_242C7F7D4(v27, v26);
      sub_242C7F7D4(v68, v70);

      v42 = v39;
      v29 = v58;
      if (v39 != v66)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v49 = sub_242F06110();
      sub_242C7F7D4(v27, v26);
      sub_242C7F7D4(v68, v70);

      v42 = v39;
      v29 = v58;
      if ((v49 & 1) == 0 || v39 != v66)
      {
LABEL_67:
        v57 = v71;
        goto LABEL_71;
      }
    }

    goto LABEL_43;
  }

  v42 = *(v25 + 16);
  sub_242C7F844(v27, v26, v28, v29, v30, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
  sub_242C7F844(v27, v26, v42, v29, v36, v31, 0, sub_242C7F7A0, sub_242C7F7AC);
LABEL_70:
  sub_242C7F7D4(v27, v26);
  sub_242C7F7D4(v16, v37);
  v57 = 0;
LABEL_71:
  sub_242C7F7D4(v27, v26);
  sub_242C7F844(v27, v26, v42, v29, v36, v31, v57, sub_242C7F7D4, sub_242C7F7C0);
  return 0;
}

uint64_t sub_242C758CC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = (*(v2 + 48) + 16 * (v8 | (v3 << 6)));
    v12 = *v11;
    v13 = v11[1];

    sub_242CE519C(v12, v13);
    v15 = v14;

    if (v15)
    {
      result = sub_242F03B40();
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C75A30(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 64);
  v31 = result + 64;
  v32 = result;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v30 = (v6 + 63) >> 6;
  if ((v7 & v5) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v12 = v4;
  do
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v4 >= v30)
    {
      return 1;
    }

    v13 = *(v31 + 8 * v4);
    ++v12;
  }

  while (!v13);
  v10 = __clz(__rbit64(v13));
  for (i = (v13 - 1) & v13; ; i = (v8 - 1) & v8)
  {
    v14 = v10 | (v4 << 6);
    v15 = *(*(v3 + 48) + 8 * v14);
    v16 = *(v3 + 56) + 24 * v14;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_242C7CE5C(*v16, v17, *(v16 + 16));
    result = v19 == 255;
    if (v19 == 255)
    {
      break;
    }

    v20 = sub_242CE52B8(v15);
    if ((v21 & 1) == 0)
    {
      sub_242C7CEB0(v18, v17, v19);
      return 0;
    }

    v34 = i;
    v22 = *(v2 + 56) + 24 * v20;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    sub_242C7CE5C(*v22, v24, v25);
    v26 = Theme.ColorID.rawValue.getter();
    v28 = v27;
    if (v26 == Theme.ColorID.rawValue.getter() && v28 == v29)
    {
      sub_242C7CEB0(v23, v24, v25);
      sub_242C7CEB0(v18, v17, v19);

      v3 = v32;
      v2 = a2;
      v8 = v34;
      if (!v34)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = sub_242F06110();
      sub_242C7CEB0(v23, v24, v25);
      sub_242C7CEB0(v18, v17, v19);

      v3 = v32;
      v2 = a2;
      v8 = v34;
      result = 0;
      if ((v9 & 1) == 0)
      {
        return result;
      }

      if (!v34)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = __clz(__rbit64(v8));
  }

  return result;
}

uint64_t sub_242C75C94(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v29 = result + 64;
  v30 = result;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v28 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v33 = (v7 - 1) & v7;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = *(*(v3 + 48) + 8 * v11);
    v13 = *(v3 + 56) + 24 * v11;
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    sub_242C55470(*v13, v14, *(v13 + 16));
    v17 = v16 == 254;
    if (v16 == 254)
    {
      return v17;
    }

    v18 = sub_242CE52B8(v12);
    if ((v19 & 1) == 0)
    {
      goto LABEL_27;
    }

    v20 = *(v2 + 56) + 24 * v18;
    v22 = *v20;
    v21 = *(v20 + 8);
    v23 = *(v20 + 16);
    if (v23 == 255)
    {
      sub_242C55484(*v20, *(v20 + 8), 255);
      if (v16 != 255)
      {
        goto LABEL_27;
      }

      result = sub_242C55484(v15, v14, 255);
LABEL_22:
      v3 = v30;
      v2 = a2;
      v7 = v33;
    }

    else
    {
      if (v16 == 255)
      {
        sub_242C7CE5C(*v20, *(v20 + 8), *(v20 + 16));
        sub_242C55484(v22, v21, v23);
LABEL_27:
        sub_242C55484(v15, v14, v16);
        return 0;
      }

      sub_242C55470(v22, v21, v23);
      sub_242C55470(v22, v21, v23);
      sub_242C55470(v15, v14, v16);
      v24 = Theme.ColorID.rawValue.getter();
      v32 = v25;
      if (v24 == Theme.ColorID.rawValue.getter() && v32 == v26)
      {
        sub_242C55484(v22, v21, v23);
        sub_242C55484(v15, v14, v16);
        sub_242C55484(v15, v14, v16);
        sub_242C55484(v22, v21, v23);

        goto LABEL_22;
      }

      v27 = sub_242F06110();
      sub_242C55484(v22, v21, v23);
      sub_242C55484(v15, v14, v16);
      sub_242C55484(v15, v14, v16);
      sub_242C55484(v22, v21, v23);

      v3 = v30;
      v2 = a2;
      v7 = v33;
      if ((v27 & 1) == 0)
      {
        return v17;
      }
    }
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v28)
    {
      return 1;
    }

    v10 = *(v29 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C75FB8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v24 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v9 = (v7 - 1) & v7;
LABEL_13:
    v12 = v8 | (v3 << 6);
    v13 = (*(v2 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v2 + 56) + 8 * v12);
    v17 = v14 == 0;

    if (!v14)
    {
      return v17;
    }

    v18 = v9;
    v19 = v2;
    sub_242CE8370(v15, v14);
    v21 = v20;

    if ((v21 & 1) == 0)
    {

      return 0;
    }

    v23 = sub_242C76150(v22, v16);

    v2 = v19;
    v7 = v18;
    if ((v23 & 1) == 0)
    {
      return v17;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v24)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C76150(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(result + 64);
  v52 = result + 64;
  v53 = result;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  if ((v6 & v4) != 0)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = v9 | (v3 << 6);
LABEL_15:
      v15 = (*(v53 + 48) + 16 * v10);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(v53 + 56) + (v10 << 7));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v67 = v18[2];
      v68 = v19;
      v65 = v21;
      v66 = v20;
      v23 = v18[5];
      v22 = v18[6];
      v24 = v18[4];
      *(v71 + 9) = *(v18 + 105);
      v70 = v23;
      v71[0] = v22;
      v69 = v24;
      v25 = *v18;
      v26 = v18[1];
      v27 = v18[3];
      v74 = v18[2];
      v75 = v27;
      v72 = v25;
      v73 = v26;
      v28 = v18[4];
      v29 = v18[5];
      v30 = v18[6];
      *(v78 + 9) = *(v18 + 105);
      v77 = v29;
      v78[0] = v30;
      v76 = v28;
      *&v79 = v16;
      *(&v79 + 1) = v17;
      v84 = v28;
      v85 = v29;
      v86[0] = v30;
      *(v86 + 9) = *(v78 + 9);
      v80 = v72;
      v81 = v73;
      v82 = v74;
      v83 = v27;
      nullsub_2(&v79);

      sub_242C7DAC0(&v65, v63);
      v31 = *(&v79 + 1);
      v32 = v79;
      v91 = v84;
      v92 = v85;
      v93[0] = v86[0];
      *(v93 + 9) = *(v86 + 9);
      v87 = v80;
      v88 = v81;
      v33 = v82;
      v34 = v83;
      v12 = v3;
LABEL_16:
      v89 = v33;
      v90 = v34;
      v84 = v91;
      v85 = v92;
      v86[0] = v93[0];
      *(v86 + 9) = *(v93 + 9);
      v80 = v87;
      v81 = v88;
      v82 = v33;
      v83 = v34;
      *&v79 = v32;
      *(&v79 + 1) = v31;
      result = get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v79);
      if (result == 1)
      {
        break;
      }

      v76 = v91;
      v77 = v92;
      v78[0] = v93[0];
      *(v78 + 9) = *(v93 + 9);
      v72 = v87;
      v73 = v88;
      v74 = v89;
      v75 = v90;
      v35 = sub_242CE8370(v32, v31);
      v37 = v36;

      if ((v37 & 1) == 0)
      {
        v69 = v91;
        v70 = v92;
        v71[0] = v93[0];
        *(v71 + 9) = *(v93 + 9);
        v65 = v87;
        v66 = v88;
        v67 = v89;
        v68 = v90;
        sub_242C7DAF8(&v65);
        return 0;
      }

      v38 = (*(a2 + 56) + (v35 << 7));
      v39 = v38[3];
      v41 = *v38;
      v40 = v38[1];
      v61[2] = v38[2];
      v61[3] = v39;
      v61[0] = v41;
      v61[1] = v40;
      v43 = v38[5];
      v42 = v38[6];
      v44 = v38[4];
      *(v62 + 9) = *(v38 + 105);
      v61[5] = v43;
      v62[0] = v42;
      v61[4] = v44;
      v45 = *v38;
      v46 = v38[1];
      v47 = v38[3];
      v56 = v38[2];
      v57 = v47;
      v54 = v45;
      v55 = v46;
      v48 = v38[4];
      v49 = v38[5];
      v50 = v38[6];
      *&v60[9] = *(v38 + 105);
      v59 = v49;
      *v60 = v50;
      v58 = v48;
      sub_242C7DAC0(v61, &v65);
      v51 = _s14CarPlayAssetUI5ThemeO7PaletteV2eeoiySbAE_AEtFZ_0(&v54, &v72);
      v63[4] = v58;
      v63[5] = v59;
      v64[0] = *v60;
      *(v64 + 9) = *&v60[9];
      v63[0] = v54;
      v63[1] = v55;
      v63[2] = v56;
      v63[3] = v57;
      sub_242C7DAF8(v63);
      v69 = v76;
      v70 = v77;
      v71[0] = v78[0];
      *(v71 + 9) = *(v78 + 9);
      v65 = v72;
      v66 = v73;
      v67 = v74;
      v68 = v75;
      result = sub_242C7DAF8(&v65);
      if ((v51 & 1) == 0)
      {
        return 0;
      }

      v3 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v8 <= v3 + 1)
    {
      v11 = v3 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        sub_242C7F784(&v79);
        v7 = 0;
        v31 = *(&v79 + 1);
        v32 = v79;
        v91 = v84;
        v92 = v85;
        v93[0] = v86[0];
        *(v93 + 9) = *(v86 + 9);
        v87 = v80;
        v88 = v81;
        v33 = v82;
        v34 = v83;
        goto LABEL_16;
      }

      v14 = *(v52 + 8 * v13);
      ++v3;
      if (v14)
      {
        v7 = (v14 - 1) & v14;
        v10 = __clz(__rbit64(v14)) | (v13 << 6);
        v3 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242C7653C(uint64_t result, uint64_t a2)
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_242CE52B8(v13);
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      result = *v19;
      if (*v19 == v15 && v19[1] == v16)
      {
        continue;
      }

      result = sub_242F06110();
      if (result)
      {
        continue;
      }
    }

    return 0;
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
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C76664(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v32 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v33 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = *(*(result + 48) + 8 * v12);
    v14 = (*(result + 56) + 32 * v12);
    v16 = *v14;
    v15 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v15 == 0;

    if (!v15)
    {
      return v19;
    }

    v20 = v13;
    v21 = v2;
    v22 = sub_242CE52B8(v20);
    if ((v23 & 1) == 0 || ((v24 = (*(v2 + 56) + 32 * v22), v25 = v24[2], v26 = v24[3], *v24 == v16) ? (v27 = v15 == v24[1]) : (v27 = 0), !v27 && (v28 = v24[2], v29 = sub_242F06110(), v25 = v28, (v29 & 1) == 0)))
    {

      return 0;
    }

    if (v25 == v18 && v17 == v26)
    {

      v2 = v21;
      result = v32;
      v7 = v33;
    }

    else
    {
      v31 = sub_242F06110();

      v2 = v21;
      result = v32;
      v7 = v33;
      if ((v31 & 1) == 0)
      {
        return v19;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v33 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C76850(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v30 = result + 64;
  v31 = result;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v29 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v9 = (v7 - 1) & v7;
LABEL_13:
    v12 = v8 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = *(v3 + 56) + 24 * v12;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    sub_242C55470(*v14, v15, *(v14 + 16));
    v18 = v17 == 254;
    if (v17 == 254)
    {
      return v18;
    }

    v19 = sub_242CE52B8(v13);
    if ((v20 & 1) == 0)
    {
      goto LABEL_27;
    }

    v34 = v9;
    v21 = *(v2 + 56) + 24 * v19;
    v23 = *v21;
    v22 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (v24 == 255)
    {
      sub_242C55484(*v21, *(v21 + 8), 255);
      if (v17 != 255)
      {
        goto LABEL_27;
      }

      result = sub_242C55484(v16, v15, 255);
LABEL_22:
      v3 = v31;
      v2 = a2;
      v7 = v34;
    }

    else
    {
      if (v17 == 255)
      {
        sub_242C7CE5C(*v21, *(v21 + 8), *(v21 + 16));
        sub_242C55484(v23, v22, v24);
LABEL_27:
        sub_242C55484(v16, v15, v17);
        return 0;
      }

      sub_242C55470(v23, v22, v24);
      sub_242C55470(v23, v22, v24);
      sub_242C55470(v16, v15, v17);
      v25 = Theme.ColorID.rawValue.getter();
      v33 = v26;
      if (v25 == Theme.ColorID.rawValue.getter() && v33 == v27)
      {
        sub_242C55484(v16, v15, v17);
        sub_242C55484(v23, v22, v24);
        sub_242C55484(v23, v22, v24);
        sub_242C55484(v16, v15, v17);

        goto LABEL_22;
      }

      v28 = sub_242F06110();
      sub_242C55484(v16, v15, v17);
      sub_242C55484(v23, v22, v24);
      sub_242C55484(v23, v22, v24);
      sub_242C55484(v16, v15, v17);

      v3 = v31;
      v2 = a2;
      v7 = v34;
      if ((v28 & 1) == 0)
      {
        return v18;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v29)
    {
      return 1;
    }

    v11 = *(v30 + 8 * v4);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C76B70(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
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
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_242CE519C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_242F06110();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C76D14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v98 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v84 = v7;
  v85 = result;
  if (v6)
  {
    do
    {
      v8 = __clz(__rbit64(v6));
      v90 = (v6 - 1) & v6;
LABEL_12:
      v11 = v8 | (v3 << 6);
      v12 = (*(result + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = (*(result + 56) + (v11 << 6));
      v16 = *(v15 + 41);
      v18 = v15[1];
      v17 = v15[2];
      v102 = *v15;
      v103 = v18;
      *v104 = v17;
      *&v104[9] = v16;
      v94 = v102;
      v96 = v18;
      v20 = *&v104[8];
      v19 = v17;
      v21 = v16 >> 56;
      v22 = HIBYTE(v16);

      sub_242C7F938(&v102, &v106);
      if (!v13)
      {
        return 1;
      }

      v106 = v94;
      v107 = v96;
      v108 = v19;
      v109 = v20;
      v110 = v21;
      v111 = v22;
      v23 = sub_242CE519C(v14, v13);
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        goto LABEL_57;
      }

      v26 = (*(v2 + 56) + (v23 << 6));
      v27 = *(v26 + 41);
      v29 = v26[1];
      v28 = v26[2];
      v100[0] = *v26;
      v100[1] = v29;
      *v101 = v28;
      *&v101[9] = v27;
      v30 = *(&v100[0] + 1);
      v31 = *&v100[0];
      v33 = *(&v29 + 1);
      v32 = v29;
      v34 = v28;
      v35 = v106;
      v37 = *(&v107 + 1);
      v36 = v107;
      v102 = v100[0];
      v103 = v29;
      v104[0] = v28;
      *&v104[8] = v106;
      v97 = *(&v106 + 1);
      *&v104[24] = v107;
      v38 = v108;
      v105 = v108;
      v92 = *&v101[8];
      v93 = *(&v29 + 1);
      v91 = v109;
      v95 = v106;
      if (v28 < 0)
      {
        if ((v108 & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        v87 = v29;
        v88 = *&v100[0];
        if (*&v100[0])
        {
          if (!v106)
          {
            sub_242C7F6C4(*&v100[0], *(&v100[0] + 1), v29, *(&v29 + 1), v28);
            v72 = 0;
            goto LABEL_48;
          }

          v52 = v29;
          sub_242C6CBCC();
          sub_242C7F6C4(v35, v97, v36, v37, v38);
          sub_242C7F6C4(v31, v30, v52, v33, v34);
          sub_242C7F6C4(v31, v30, v52, v33, v34);
          sub_242C7F6C4(v95, v97, v36, v37, v38);
          v53 = v33;
          v54 = v34;
          sub_242C7F6C4(v31, v30, v52, v53, v34);
          v35 = v95;
          v55 = v37;
          v56 = v37;
          v57 = v38;
          sub_242C7F6C4(v95, v97, v36, v56, v38);
          sub_242C7F938(v100, v99);
          v58 = v95;
          v59 = v31;
          v60 = sub_242F05810();

          if ((v60 & 1) == 0)
          {
            sub_242C7F724(v88, v30, v87, v93, v54);
            sub_242C7F724(v95, v97, v36, v55, v57);
            sub_242C6D138(&v102, &qword_27ECF0140);
            sub_242C7F724(v95, v97, v36, v55, v57);
            v76 = v88;
            v77 = v30;
            v78 = v87;
            v79 = v93;
            goto LABEL_54;
          }
        }

        else
        {
          v66 = 0;
          if (v106)
          {
            goto LABEL_47;
          }

          v67 = v29;
          sub_242C7F6C4(0, *(&v106 + 1), v107, *(&v107 + 1), v108);
          sub_242C7F6C4(0, v30, v67, v33, v34);
          sub_242C7F6C4(0, v30, v67, v33, v34);
          sub_242C7F6C4(0, v97, v36, v37, v38);
          v68 = v33;
          v54 = v34;
          sub_242C7F6C4(0, v30, v67, v68, v34);
          v55 = v37;
          v69 = v37;
          v57 = v38;
          sub_242C7F6C4(0, v97, v36, v69, v38);
          sub_242C7F938(v100, v99);
        }

        if ((v30 != v97 || v87 != v36) && (sub_242F06110() & 1) == 0)
        {
          sub_242C6D138(&v102, &qword_27ECF0140);
          sub_242C7F724(v35, v97, v36, v55, v57);
          sub_242C7F724(v88, v30, v87, v93, v54);
          sub_242C7F724(v35, v97, v36, v55, v57);
          v76 = v88;
          v77 = v30;
          v78 = v87;
          v79 = v93;
LABEL_54:
          v75 = v54;
LABEL_55:
          sub_242C7F724(v76, v77, v78, v79, v75);
LABEL_56:
          sub_242C7F994(v100);
LABEL_57:
          sub_242C7F994(&v106);
          return 0;
        }

        v82 = sub_242C776F0(v93, v55);
        sub_242C6D138(&v102, &qword_27ECF0140);
        sub_242C7F724(v35, v97, v36, v55, v57);
        sub_242C7F724(v88, v30, v87, v93, v54);
        sub_242C7F724(v95, v97, v36, v55, v57);
        sub_242C7F724(v88, v30, v87, v93, v54);
        v2 = a2;
        v51 = v91;
        v50 = v92;
        if ((v82 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v108 < 0 || v100[0] != v106 && (v39 = *(&v100[0] + 1), v41 = *(&v107 + 1), v40 = v107, v42 = v29, v43 = sub_242F06110(), v32 = v42, v37 = v41, v36 = v40, v30 = v39, v33 = v93, (v43 & 1) == 0))
        {
LABEL_46:
          v66 = v31;
LABEL_47:
          sub_242C7F6C4(v66, v30, v32, v33, v34);
          v72 = v35;
LABEL_48:
          v73 = v97;
          v74 = v36;
LABEL_49:
          sub_242C7F6C4(v72, v73, v74, v37, v38);
          sub_242C6D138(&v102, &qword_27ECF0140);
          goto LABEL_57;
        }

        if (v32)
        {
          if (!v36)
          {
            sub_242C7F6C4(v31, v30, v32, v33, v34);
            v72 = v35;
            v73 = v97;
            v74 = 0;
            goto LABEL_49;
          }

          v89 = v37;
          v44 = v32;
          sub_242C6CBCC();
          sub_242C7F6C4(v35, v97, v36, v37, v38);
          sub_242C7F6C4(v31, v30, v44, v33, v34);
          v45 = v38;
          sub_242C7F6C4(v31, v30, v44, v33, v34);
          sub_242C7F6C4(v95, v97, v36, v89, v38);
          v46 = v44;
          v86 = v44;
          sub_242C7F6C4(v31, v30, v44, v33, v34);
          sub_242C7F6C4(v95, v97, v36, v89, v45);
          sub_242C7F938(v100, v99);
          v47 = v36;
          v81 = v34;
          v48 = v46;
          v80 = sub_242F05810();
          sub_242C6D138(&v102, &qword_27ECF0140);
          sub_242C7F724(v95, v97, v36, v89, v45);
          sub_242C7F724(v31, v30, v86, v93, v81);

          v2 = a2;
          v33 = v93;
          v49 = *&v89;
          v38 = v45;
          sub_242C7F724(v95, v97, v36, v89, v45);
          sub_242C7F724(v31, v30, v86, v93, v81);
          if ((v80 & 1) == 0)
          {
            goto LABEL_56;
          }

          if (v81)
          {
LABEL_22:
            v51 = v91;
            v50 = v92;
            if ((v38 & 1) == 0)
            {
              goto LABEL_56;
            }

            goto LABEL_40;
          }
        }

        else
        {
          sub_242C7F6C4(v31, v30, 0, v33, v34);
          v61 = v35;
          v62 = v36;
          sub_242C7F6C4(v61, v97, v36, v37, v38);
          sub_242C7F6C4(v31, v30, 0, v33, v34);
          sub_242C7F6C4(v95, v97, v36, v37, v38);
          sub_242C7F938(v100, v99);
          v63 = v36;
          v64 = v31;
          v65 = v63;
          sub_242C6D138(&v102, &qword_27ECF0140);
          if (v62)
          {

            sub_242C7F724(v95, v97, v62, v37, v38);
            v76 = v64;
            v77 = v30;
            v78 = 0;
            v79 = v33;
            v75 = v34;
            goto LABEL_55;
          }

          v49 = *&v37;
          sub_242C7F724(v95, v97, 0, v37, v38);
          sub_242C7F724(v64, v30, 0, v33, v34);
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v51 = v91;
        v50 = v92;
        if ((v38 & 1) != 0 || *&v33 != v49)
        {
          goto LABEL_56;
        }
      }

LABEL_40:
      if (v50 != v51 || (sub_242C75A30(*&v101[16], v110) & 1) == 0)
      {
        goto LABEL_56;
      }

      v70 = v101[24];
      v71 = v111;
      sub_242C7F994(v100);
      sub_242C7F994(&v106);
      if (v70 != v71)
      {
        return 0;
      }

      v7 = v84;
      result = v85;
      v6 = v90;
    }

    while (v90);
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v98 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v90 = (v10 - 1) & v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C776F0(uint64_t result, uint64_t a2)
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
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_16:
    v15 = v11 | (v4 << 6);
    v16 = (*(v3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v3 + 56) + 32 * v15;
    v21 = *v19;
    v20 = *(v19 + 8);
    v22 = *(v19 + 16);
    v33 = *(v19 + 24);
    v34 = v17 == 0;

    if (!v17)
    {
      return v34;
    }

    v32 = v12;
    v23 = v3;
    v24 = sub_242CE519C(v18, v17);
    v26 = v25;

    if ((v26 & 1) == 0)
    {

      return 0;
    }

    v27 = *(a2 + 56) + 32 * v24;
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);
    if (*v27 == v21 && v20 == *(v27 + 8))
    {

      v3 = v23;
      if (v29)
      {
        goto LABEL_26;
      }

LABEL_6:
      v10 = v33;
      result = v34;
      if (v28 != v22)
      {
        v10 = 1;
      }

      v8 = v32;
      if (v10)
      {
        return result;
      }
    }

    else
    {
      v31 = sub_242F06110();

      v3 = v23;
      if ((v31 & 1) == 0)
      {
        return v34;
      }

      if ((v29 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_26:
      v8 = v32;
      result = v34;
      if ((v33 & 1) == 0)
      {
        return result;
      }
    }
  }

  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_242C778E4(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v4 = 0;
  v66 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v69 = v8;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
LABEL_15:
    v14 = v10 | (v4 << 6);
    v15 = *(*(v3 + 48) + 8 * v14);
    v16 = *(v3 + 56) + 48 * v14;
    v17 = *(v16 + 24);
    v18 = *(v16 + 32);
    v73 = *(v16 + 40);
    v75 = *(v16 + 16);
    v19 = *v16;
    v20 = *(v16 + 8);
    sub_242C7F6C4(*v16, v20, v75, v17, *(v16 + 32));
    v76 = v18;
    if (v18 > 0xFFFFFFFD)
    {
      return;
    }

    v21 = sub_242CE52B8(v15);
    if ((v22 & 1) == 0)
    {
      v53 = v19;
      v54 = v20;
      v55 = v75;
      v56 = v17;
      v57 = v18;
LABEL_57:
      sub_242C7F724(v53, v54, v55, v56, v57);
      return;
    }

    v71 = v11;
    v23 = *(v2 + 56) + 48 * v21;
    v24 = *v23;
    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    v27 = *(v23 + 32);
    v28 = *(v23 + 40);
    v78 = *(v23 + 8);
    v79[0] = *v23;
    v79[1] = v78;
    v79[2] = v26;
    v29 = v26;
    v77 = v25;
    v79[3] = v25;
    v80 = v27;
    v30 = v19;
    v81 = v19;
    v82 = v20;
    v83 = v75;
    v84 = v17;
    v85 = v18;
    v72 = v28;
    if (v27 < 0)
    {
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      v61 = v27;
      v59 = v17;
      v60 = v24;
      if (v24)
      {
        if (!v19)
        {
          v58 = v25;
          sub_242C7F6C4(v24, v78, v26, v25, v27);
          sub_242C7F6C4(v24, v78, v29, v77, v27);
          sub_242C6D138(v79, &qword_27ECF0140);
LABEL_55:
          v53 = v24;
          v54 = v78;
          v55 = v29;
          v56 = v58;
LABEL_56:
          v57 = v27;
          goto LABEL_57;
        }

        v37 = v17;
        v38 = v24;
        v39 = v78;
        sub_242C6CBCC();
        sub_242C7F6C4(v38, v78, v29, v77, v27);
        sub_242C7F6C4(v19, v20, v75, v37, v18);
        sub_242C7F6C4(v38, v78, v29, v77, v27);
        sub_242C7F6C4(v38, v78, v29, v77, v27);
        sub_242C7F6C4(v19, v20, v75, v37, v18);
        sub_242C7F6C4(v38, v78, v29, v77, v27);
        v40 = v19;
        v41 = v37;
        v30 = v19;
        v42 = v75;
        sub_242C7F6C4(v40, v20, v75, v41, v18);
        v43 = v30;
        v44 = v38;
        v45 = sub_242F05810();

        if ((v45 & 1) == 0)
        {
          v58 = v77;
          LOBYTE(v27) = v61;
          sub_242C7F724(v60, v78, v29, v77, v61);
          sub_242C7F724(v30, v20, v75, v59, v76);
          sub_242C6D138(v79, &qword_27ECF0140);
          sub_242C7F724(v30, v20, v75, v59, v76);
          sub_242C7F724(v60, v78, v29, v77, v61);
          sub_242C7F724(v30, v20, v75, v59, v76);
          v24 = v60;
          goto LABEL_55;
        }
      }

      else
      {
        sub_242C7F6C4(0, v78, v26, v25, v27);
        if (v19)
        {
          goto LABEL_50;
        }

        v42 = v75;
        sub_242C7F6C4(0, v20, v75, v17, v18);
        sub_242C7F6C4(0, v78, v29, v77, v27);
        sub_242C7F6C4(0, v78, v29, v77, v27);
        sub_242C7F6C4(0, v20, v75, v17, v18);
        sub_242C7F6C4(0, v78, v29, v77, v27);
        sub_242C7F6C4(0, v20, v75, v17, v18);
        v39 = v78;
      }

      v52 = v39 == v20 && v29 == v42;
      if (!v52 && (sub_242F06110() & 1) == 0)
      {
        sub_242C6D138(v79, &qword_27ECF0140);
        sub_242C7F724(v30, v20, v42, v59, v76);
        v24 = v60;
        v58 = v77;
        LOBYTE(v27) = v61;
        sub_242C7F724(v60, v78, v29, v77, v61);
        sub_242C7F724(v30, v20, v42, v59, v76);
        sub_242C7F724(v60, v78, v29, v77, v61);
        sub_242C7F724(v30, v20, v42, v59, v76);
        goto LABEL_55;
      }

      v74 = sub_242C776F0(v77, v59);
      sub_242C6D138(v79, &qword_27ECF0140);
      sub_242C7F724(v30, v20, v42, v59, v76);
      sub_242C7F724(v60, v78, v29, v77, v61);
      sub_242C7F724(v30, v20, v42, v59, v76);
      sub_242C7F724(v60, v78, v29, v77, v61);
      sub_242C7F724(v30, v20, v42, v59, v76);
      sub_242C7F724(v60, v78, v29, v77, v61);
      v8 = v69;
      v9 = v72;
      if ((v74 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if ((v18 & 0x80000000) != 0 || ((v31 = v18, v24 == v30) ? (v32 = v78 == v20) : (v32 = 0), !v32 && (sub_242F06110() & 1) == 0))
      {
LABEL_49:
        sub_242C7F6C4(v24, v78, v29, v77, v27);
LABEL_50:
        sub_242C6D138(v79, &qword_27ECF0140);
        return;
      }

      if (v29)
      {
        if (!v75)
        {
          sub_242C7F6C4(v24, v78, v29, v77, v27);
          sub_242C6D138(v79, &qword_27ECF0140);
          return;
        }

        sub_242C6CBCC();
        sub_242C7F6C4(v24, v78, v29, v77, v27);
        sub_242C7F6C4(v30, v20, v75, v17, v18);
        sub_242C7F6C4(v24, v78, v29, v77, v27);
        sub_242C7F6C4(v24, v78, v29, v77, v27);
        v62 = v30;
        sub_242C7F6C4(v30, v20, v75, v17, v18);
        sub_242C7F6C4(v24, v78, v29, v77, v27);
        v33 = v30;
        v34 = v20;
        sub_242C7F6C4(v33, v20, v75, v17, v18);
        v63 = v75;
        v64 = v29;
        v65 = sub_242F05810();
        sub_242C6D138(v79, &qword_27ECF0140);
        sub_242C7F724(v62, v20, v75, v17, v18);
        v70 = v29;
        sub_242C7F724(v24, v78, v29, v77, v27);
        sub_242C7F724(v62, v20, v75, v17, v18);
        sub_242C7F724(v24, v78, v29, v77, v27);

        v35 = *&v17;
        v36 = *&v77;
        sub_242C7F724(v62, v34, v75, v17, v18);
        sub_242C7F724(v24, v78, v70, v77, v27);
        if ((v65 & 1) == 0)
        {
          return;
        }

        if (v27)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_242C7F6C4(v24, v78, 0, v77, v27);
        v36 = *&v77;
        sub_242C7F6C4(v24, v78, 0, v77, v27);
        sub_242C7F6C4(v30, v20, v75, v17, v18);
        v46 = v20;
        v47 = v30;
        v48 = v17;
        v49 = v24;
        v50 = v75;
        sub_242C6D138(v79, &qword_27ECF0140);
        if (v75)
        {

          sub_242C7F724(v47, v46, v75, v48, v18);
          v53 = v49;
          v54 = v78;
          v55 = 0;
          v56 = v77;
          goto LABEL_56;
        }

        v51 = v47;
        v35 = *&v48;
        sub_242C7F724(v51, v46, 0, v48, v18);
        sub_242C7F724(v49, v78, 0, v77, v27);
        v31 = v18;
        if (v27)
        {
LABEL_28:
          v8 = v69;
          v9 = v72;
          if ((v31 & 1) == 0)
          {
            return;
          }

          goto LABEL_7;
        }
      }

      v8 = v69;
      v9 = v72;
      if ((v31 & 1) != 0 || v36 != v35)
      {
        return;
      }
    }

LABEL_7:
    v3 = a1;
    v2 = a2;
    v7 = v71;
    if (v9 != v73)
    {
      return;
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return;
    }

    v13 = *(v66 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_242C78328(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
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
  if (!v7)
  {
LABEL_7:
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
        v42 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
    return result;
  }

  while (1)
  {
    v9 = __clz(__rbit64(v7));
    v42 = (v7 - 1) & v7;
LABEL_12:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v3 + 56) + 72 * v12;
    v17 = *(v16 + 64);
    v19 = *(v16 + 32);
    v18 = *(v16 + 48);
    v53 = *(v16 + 16);
    v20 = *v16;
    *v54 = v19;
    *&v54[16] = v18;
    v52 = v20;
    *&v54[32] = v17;
    v47 = v18;
    v49 = v53;
    v43 = v19;
    v45 = v20;

    sub_242C7FA98(&v52, &v61);
    if (!v14)
    {
      return 1;
    }

    v61 = v45;
    v62 = v49;
    v63 = v43;
    v64 = v47;
    v65 = v17;
    v21 = sub_242CE519C(v15, v14);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_59;
    }

    v24 = *(v2 + 56) + 72 * v21;
    v56 = *v24;
    v26 = *(v24 + 32);
    v25 = *(v24 + 48);
    v27 = *(v24 + 16);
    v60 = *(v24 + 64);
    v58 = v26;
    v59 = v25;
    v57 = v27;
    if (v56 != v61 || *(&v56 + 2) != *(&v61 + 2) || *(&v56 + 3) != *(&v61 + 3) || *&v57 != *&v62 || *(&v57 + 1) != *(&v62 + 1) || BYTE8(v57) != BYTE8(v62) || BYTE9(v62) != BYTE9(v57))
    {
      goto LABEL_59;
    }

    v28 = v58;
    v29 = v60;
    v30 = v63;
    v31 = v64;
    v32 = v65;
    v52 = v58;
    v44 = *(&v58 + 1);
    v46 = v59;
    v53 = v59;
    v50 = *(&v59 + 1);
    v54[0] = v60;
    *&v54[8] = v63;
    *&v54[24] = v64;
    v48 = *(&v64 + 1);
    v55 = v65;
    if (v60 < 0)
    {
      break;
    }

    if (v65 < 0)
    {
      goto LABEL_61;
    }

    sub_242C7FA98(&v56, v51);
    sub_242C7FA98(&v56, v51);
    sub_242C7FA98(&v61, v51);
    sub_242C7FA98(&v56, v51);
    sub_242C7FA98(&v61, v51);
    if ((sub_242C75A30(v28, v30) & 1) == 0 || (sub_242C75A30(v44, *(&v30 + 1)) & 1) == 0)
    {
LABEL_58:
      sub_242C6D138(&v52, &qword_27ECF0158);
      sub_242C7FAF4(&v61);
      sub_242C7FAF4(&v56);
      sub_242C7FAF4(&v56);
LABEL_59:
      sub_242C7FAF4(&v61);
      return 0;
    }

    if (v46)
    {
      if (!v31)
      {
        goto LABEL_58;
      }

      v33 = sub_242C75A30(v46, v31);

      if ((v33 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (v31)
    {
      goto LABEL_58;
    }

    if (v50)
    {
      if (!v48)
      {
        goto LABEL_58;
      }

      v38 = sub_242C75A30(v50, v48);

      sub_242C6D138(&v52, &qword_27ECF0158);
      sub_242C7FAF4(&v61);
      sub_242C7FAF4(&v56);
      sub_242C7FAF4(&v56);
      result = sub_242C7FAF4(&v61);
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      sub_242C6D138(&v52, &qword_27ECF0158);
      sub_242C7FAF4(&v61);
      sub_242C7FAF4(&v56);
      sub_242C7FAF4(&v56);
      result = sub_242C7FAF4(&v61);
      if (v48)
      {
        return 0;
      }
    }

    if ((v32 ^ v29))
    {
      return 0;
    }

LABEL_54:
    if (HIBYTE(v65) != HIBYTE(v60))
    {
      return 0;
    }

    v2 = a2;
    v7 = v42;
    if (!v42)
    {
      goto LABEL_7;
    }
  }

  if ((v65 & 0x80000000) == 0)
  {
    goto LABEL_61;
  }

  if (v58)
  {
    if (!v63)
    {
      sub_242C7FA98(&v56, v51);
      sub_242C7FA98(&v61, v51);
      sub_242C6D138(&v52, &qword_27ECF0158);
      goto LABEL_59;
    }

    sub_242C7FA98(&v56, v51);
    sub_242C7FA98(&v56, v51);
    sub_242C7FA98(&v61, v51);
    sub_242C7FA98(&v56, v51);
    sub_242C7FA98(&v61, v51);

    v34 = sub_242C75A30(v28, v30);

    if ((v34 & 1) == 0)
    {
      goto LABEL_58;
    }

    v35 = v44;
    if (v44)
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

  if (!v63)
  {
    sub_242C7FA98(&v56, v51);
    sub_242C7FA98(&v56, v51);
    sub_242C7FA98(&v61, v51);
    sub_242C7FA98(&v56, v51);
    sub_242C7FA98(&v61, v51);
    v35 = v44;
    if (v44)
    {
LABEL_34:
      v36 = v48;
      if (!*(&v30 + 1))
      {
        goto LABEL_58;
      }

      v37 = sub_242C75A30(v35, *(&v30 + 1));

      if ((v37 & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_48;
    }

LABEL_47:
    v36 = v48;
    if (*(&v30 + 1))
    {
      goto LABEL_58;
    }

LABEL_48:
    if (v46)
    {
      if (!v31)
      {
        goto LABEL_58;
      }

      v39 = sub_242C75A30(v46, v31);

      if ((v39 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (v31)
    {
      goto LABEL_58;
    }

    v40 = sub_242C75A30(v50, v36);
    sub_242C6D138(&v52, &qword_27ECF0158);
    sub_242C7FAF4(&v61);
    sub_242C7FAF4(&v56);
    sub_242C7FAF4(&v56);
    result = sub_242C7FAF4(&v61);
    if ((v40 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_54;
  }

LABEL_61:
  sub_242C7FA98(&v56, v51);
  sub_242C6D138(&v52, &qword_27ECF0158);
  return 0;
}

uint64_t Theme.Palette.ColorsEncoder.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  sub_242C78E78(v3, v1);
  return sub_242F063E0();
}

uint64_t sub_242C789AC()
{
  v1 = *v0;
  sub_242F06390();
  sub_242C78E78(v3, v1);
  return sub_242F063E0();
}

uint64_t sub_242C789FC()
{
  v1 = *v0;
  sub_242F06390();
  sub_242C78E78(v3, v1);
  return sub_242F063E0();
}

uint64_t sub_242C78A4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      sub_242C7CE74(a1, a2, 1);
      sub_242C7CE74(a4, a5, 1);
      sub_242C7CE74(a1, a2, 1);
      if (sub_242C74594(a1, a4))
      {
        v12 = sub_242C74594(a2, a5);

        if (v12)
        {
          sub_242C7FB88(a1, a2, 1);
          return 1;
        }
      }

      else
      {
      }

      v15 = a1;
      v16 = a2;
      v14 = 1;
      goto LABEL_13;
    }

    sub_242C7CE74(a1, a2, 1);
    sub_242C7CE74(a4, a5, 0);
    sub_242C7CE74(a1, a2, 1);
  }

  else
  {
    if ((a6 & 1) == 0)
    {
      sub_242C7CE74(a1, a2, 0);
      sub_242C7CE74(a4, a5, 0);
      sub_242C7CE74(a1, a2, 0);
      v17 = sub_242C74594(a1, a4);

      sub_242C7FB88(a1, a2, 0);
      return v17 & 1;
    }

    sub_242C7CE74(a1, a2, 0);
    sub_242C7CE74(a4, a5, 1);
    sub_242C7CE74(a1, a2, 0);
  }

  sub_242C7FB88(a1, a2, a3 & 1);
  v14 = a6 & 1;
  v15 = a4;
  v16 = a5;
LABEL_13:
  sub_242C7FB88(v15, v16, v14);
  return 0;
}

void *sub_242C78C30(void *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_242C7D03C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_242C78CCC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v17 = 0;
  v8 = 0;
  while (v5)
  {
LABEL_14:
    v11 = __clz(__rbit64(v5)) | (v8 << 6);
    v12 = *(*(a2 + 48) + 16 * v11 + 8);
    v13 = *(a2 + 56) + 32 * v11;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);

    if (!v12)
    {
LABEL_17:

      return MEMORY[0x245D279A0](v17);
    }

    sub_242F04DD0();

    sub_242F04DD0();

    if (v15)
    {
      sub_242F063B0();
    }

    else
    {
      sub_242F063B0();
      if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v14;
      }

      else
      {
        v9 = 0;
      }

      MEMORY[0x245D279D0](v9);
    }

    v5 &= v5 - 1;

    result = sub_242F063E0();
    v17 ^= result;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_17;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C78E78(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v42 = v6;
  v43 = v2;
  while (v5)
  {
    v45 = v8;
LABEL_13:
    v11 = 24 * (__clz(__rbit64(v5)) | (v9 << 6));
    v12 = *(a2 + 48) + v11;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(a2 + 56) + v11;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v12 + 16);
    sub_242C7CE5C(*v12, v14, v19);
    sub_242C7CE74(v17, v16, v18);
    Theme.ColorID.rawValue.getter();
    sub_242F04DD0();
    sub_242C7CEB0(v13, v14, v19);

    v20 = v17 + 64;
    if ((v18 & 1) == 0)
    {
      MEMORY[0x245D279A0](0);
      v28 = 1 << *(v17 + 32);
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v30 = v29 & *(v17 + 64);
      v31 = (v28 + 63) >> 6;

      v32 = 0;
      v33 = 0;
      if (v30)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v34 >= v31)
        {

          MEMORY[0x245D279A0](v32);
          goto LABEL_6;
        }

        v30 = *(v20 + 8 * v34);
        ++v33;
        if (v30)
        {
          v33 = v34;
          do
          {
LABEL_34:
            v30 &= v30 - 1;

            sub_242F04DD0();

            sub_242F04720();

            result = sub_242F063E0();
            v32 ^= result;
          }

          while (v30);
          continue;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    MEMORY[0x245D279A0](1);
    v21 = 1 << *(v17 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v17 + 64);
    v24 = (v21 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v25 = 0;
    v26 = 0;
    if (v23)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      if (v27 >= v24)
      {
        break;
      }

      v23 = *(v20 + 8 * v27);
      ++v26;
      if (v23)
      {
        v26 = v27;
        do
        {
LABEL_23:
          v23 &= v23 - 1;

          sub_242F04DD0();

          sub_242F04720();

          result = sub_242F063E0();
          v25 ^= result;
        }

        while (v23);
        continue;
      }
    }

    MEMORY[0x245D279A0](v25);

    v35 = 1 << *(v16 + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & *(v16 + 64);
    v38 = (v35 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v39 = 0;
    v40 = 0;
    if (v37)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_51;
      }

      if (v41 >= v38)
      {
        break;
      }

      v37 = *(v16 + 64 + 8 * v41);
      ++v40;
      if (v37)
      {
        v40 = v41;
        do
        {
LABEL_45:
          v37 &= v37 - 1;

          sub_242F04DD0();

          sub_242F04720();

          result = sub_242F063E0();
          v39 ^= result;
        }

        while (v37);
        continue;
      }
    }

    MEMORY[0x245D279A0](v39);

LABEL_6:
    v5 &= v5 - 1;

    result = sub_242F063E0();
    v8 = result ^ v45;
    v6 = v42;
    v2 = v43;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x245D279A0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v45 = v8;
      v9 = v10;
      goto LABEL_13;
    }
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_242C793AC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x245D279A0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_242F04DD0();

        sub_242F04720();

        result = sub_242F063E0();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C79508(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v5)) | (v10 << 6);
      v12 = *(*(a2 + 48) + 8 * v11);
      v13 = *(a2 + 56) + 24 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_242C7CE5C(*v13, v15, *(v13 + 16));
      if (v16 == 255)
      {
        break;
      }

      v5 &= v5 - 1;
      MEMORY[0x245D279A0](v12);
      Theme.ColorID.rawValue.getter();
      sub_242F04DD0();
      sub_242C7CEB0(v14, v15, v16);

      result = sub_242F063E0();
      v8 ^= result;
      v9 = v10;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x245D279A0](v8);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242C796C4(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(*(a2 + 48) + 8 * (__clz(__rbit64(v6)) | (v11 << 6)));
    v6 &= v6 - 1;
    MEMORY[0x245D279A0](v12);

    sub_242F04DD0();

    result = sub_242F063E0();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x245D279A0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C7980C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v5)) | (v10 << 6);
      v12 = *(*(a2 + 48) + 8 * v11);
      v13 = *(*(a2 + 56) + 32 * v11 + 8);

      if (!v13)
      {
        break;
      }

      v5 &= v5 - 1;
      MEMORY[0x245D279A0](v12);

      sub_242F04DD0();

      sub_242F04DD0();
      swift_bridgeObjectRelease_n();

      result = sub_242F063E0();
      v8 ^= result;
      v9 = v10;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x245D279A0](v8);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242C799A8(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v35 = v2;
  v39 = v6;
  while (v5)
  {
LABEL_12:
    v16 = __clz(__rbit64(v5)) | (v9 << 6);
    v17 = *(*(a2 + 48) + 8 * v16);
    v18 = *(a2 + 56) + 48 * v16;
    v12 = *(v18 + 8);
    v13 = *(v18 + 16);
    v19 = *(v18 + 32);
    v42 = *(v18 + 40);
    v44 = *v18;
    v46 = *(v18 + 24);
    sub_242C7F6C4(*v18, v12, v13, v46, *(v18 + 32));
    if (v19 > 0xFD)
    {
LABEL_42:

      return MEMORY[0x245D279A0](v8);
    }

    v41 = v8;
    MEMORY[0x245D279A0](v17);
    v43 = v19;
    if ((v19 & 0x80) != 0)
    {
      MEMORY[0x245D279A0](1);
      sub_242F063B0();
      if (v44)
      {
        sub_242C7F6C4(v44, v12, v13, v46, v19);
        v22 = v44;
        sub_242F05820();
      }

      else
      {
        sub_242C7F6C4(0, v12, v13, v46, v19);
      }

      sub_242F04DD0();
      v24 = 1 << *(v46 + 32);
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v26 = v25 & *(v46 + 64);
      v38 = (v24 + 63) >> 6;

      v45 = 0;
      v27 = 0;
      v36 = v13;
      v37 = v12;
      while (v26)
      {
LABEL_39:
        v30 = __clz(__rbit64(v26)) | (v27 << 6);
        v31 = *(*(v46 + 48) + 16 * v30 + 8);
        v32 = *(v46 + 56) + 32 * v30;
        v33 = *(v32 + 16);
        v34 = *(v32 + 24);

        if (!v31)
        {
LABEL_5:
          v10 = v46;

          MEMORY[0x245D279A0](v45);
          v2 = v35;
          v11 = v44;
          v13 = v36;
          v12 = v37;
          v14 = v43;
          goto LABEL_6;
        }

        sub_242F04DD0();

        sub_242F04DD0();

        if (v34)
        {
          sub_242F063B0();
        }

        else
        {
          sub_242F063B0();
          if ((v33 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v28 = v33;
          }

          else
          {
            v28 = 0;
          }

          MEMORY[0x245D279D0](v28);
        }

        v26 &= v26 - 1;

        result = sub_242F063E0();
        v45 ^= result;
      }

      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v38)
        {
          goto LABEL_5;
        }

        v26 = *(v46 + 64 + 8 * v29);
        ++v27;
        if (v26)
        {
          v27 = v29;
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    MEMORY[0x245D279A0](0);
    v20 = v13;

    v11 = v44;
    sub_242F04DD0();
    if (v13)
    {
      sub_242F063B0();
      v21 = v20;
      sub_242F05820();

      v14 = v19;
      if (v19)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_242F063B0();
      v14 = v19;
      if (v19)
      {
LABEL_16:
        sub_242F063B0();
        v10 = v46;
        goto LABEL_6;
      }
    }

    sub_242F063B0();
    v10 = v46;
    if ((v46 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v23 = v46;
    }

    else
    {
      v23 = 0;
    }

    MEMORY[0x245D279D0](v23);
LABEL_6:
    v5 &= v5 - 1;
    sub_242C7F724(v11, v12, v13, v10, v14);
    MEMORY[0x245D279A0](v42);
    sub_242C7F724(v11, v12, v13, v10, v14);
    result = sub_242F063E0();
    v8 = result ^ v41;
    v6 = v39;
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v6)
    {
      goto LABEL_42;
    }

    v5 = *(v2 + 8 * v15);
    ++v9;
    if (v5)
    {
      v9 = v15;
      goto LABEL_12;
    }
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_242C79DEC(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(a2 + 48) + 16 * v13 + 8);
      v15 = *(a2 + 56) + 72 * v13;
      v16 = *(v15 + 64);
      v18 = *(v15 + 32);
      v17 = *(v15 + 48);
      v27 = *(v15 + 16);
      v19 = *v15;
      v28 = v18;
      v29 = v17;
      v26 = v19;
      LOWORD(v30) = v16;
      v24 = v27;
      v25 = v19;
      v22 = v17;
      v23 = v18;

      sub_242C7FA98(&v26, v36);
      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v32 = v24;
      v31 = v25;
      v34 = v22;
      v33 = v23;
      v35 = v16;
      v20 = a1[3];
      v28 = a1[2];
      v29 = v20;
      v30 = *(a1 + 8);
      v21 = a1[1];
      v26 = *a1;
      v27 = v21;
      sub_242F04DD0();

      Instrument.GaugeStyle.TicksConfiguration.TickTypeConfiguration.hash(into:)(&v26);
      v36[2] = v33;
      v36[3] = v34;
      v37 = v35;
      v36[0] = v31;
      v36[1] = v32;
      sub_242C7FAF4(v36);
      result = sub_242F063E0();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x245D279A0](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242C79FC0(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v16 = 0;
  v9 = 0;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = *(a2 + 48) + 24 * v11;
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(*(a2 + 56) + 8 * v11);

    if (!v15)
    {
LABEL_14:

      return MEMORY[0x245D279A0](v16);
    }

    if (!v13)
    {
      sub_242F05F60();
    }

    v6 &= v6 - 1;
    sub_242F04DD0();

    MEMORY[0x245D279A0](v14);
    sub_242F04720();

    result = sub_242F063E0();
    v16 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C7A268(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v12 = 0;
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(*(a2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v6)))) + 8);

      if (!v11)
      {
        break;
      }

      v6 &= v6 - 1;
      sub_242F04DD0();

      sub_242F04DD0();

      result = sub_242F063E0();
      v12 ^= result;
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x245D279A0](v12);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242C7A3DC(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_12:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v12 << 6);
      v17 = (*(a2 + 48) + 944 * v16);
      memcpy(__dst, v17, sizeof(__dst));
      v18 = *(*(a2 + 56) + 8 * v16);
      memmove(__src, v17, 0x3B0uLL);
      v27 = v18;
      nullsub_2(__src);
      sub_242C7F7E0(__dst, v24);
      memcpy(v28, __src, sizeof(v28));
      v19 = v27;

      v14 = v12;
LABEL_13:
      memcpy(__src, v28, sizeof(__src));
      v27 = v19;
      if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__src) == 1)
      {
        break;
      }

      memcpy(v24, v28, sizeof(v24));
      v20 = *(a1 + 48);
      v22[2] = *(a1 + 32);
      v22[3] = v20;
      v23 = *(a1 + 64);
      v21 = *(a1 + 16);
      v22[0] = *a1;
      v22[1] = v21;
      ColorSet.hash(into:)(v22);
      memcpy(__dst, v24, sizeof(__dst));
      sub_242C7C7BC(__dst);
      sub_242C7A5F8(v22, v19);

      result = sub_242F063E0();
      v10 ^= result;
      v11 = v14;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x245D279A0](v10);
  }

  else
  {
LABEL_5:
    if (v8 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = v8;
    }

    v14 = v13 - 1;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        sub_242C7F83C(__src);
        memcpy(v28, __src, sizeof(v28));
        v7 = 0;
        v19 = v27;
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242C7A5F8(uint64_t a1, uint64_t a2)
{
  v49 = a2 + 64;
  v2 = 1 << *(a2 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a2 + 64);
  v5 = (v2 + 63) >> 6;

  v55 = 0;
  v7 = 0;
  v50 = v5;
  while (v4)
  {
LABEL_13:
    v52 = v4;
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(a2 + 48) + 24 * v10;
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(a2 + 56) + 56 * v10;
    v16 = *v15;
    v54 = *(v15 + 8);
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = *(v15 + 40);
    v56 = *(v15 + 32);
    v20 = *(v15 + 48);
    sub_242C7CE5C(*v11, v12, v14);
    v57 = v16;
    v21 = v16;
    v22 = v54;
    v53 = v17;
    v23 = v17;
    v24 = v18;
    sub_242C7F844(v21, v54, v23, v18, v56, v19, v20, sub_242C7F7A0, sub_242C7F7AC);
    if (v20 == 255)
    {
LABEL_71:

      return MEMORY[0x245D279A0](v55);
    }

    Theme.ColorID.rawValue.getter();
    sub_242F04DD0();
    sub_242C7CEB0(v13, v12, v14);

    if (v20)
    {
      MEMORY[0x245D279A0](1);
      v25 = v57;
      if (v54 >> 1 == 0xFFFFFFFF)
      {
        sub_242F063B0();
        goto LABEL_47;
      }

      sub_242F063B0();
      if ((v54 & 0x8000000000000000) != 0)
      {
        v48 = v19;
        MEMORY[0x245D279A0](1);
        v34 = 1 << *(v57 + 32);
        if (v34 < 64)
        {
          v35 = ~(-1 << v34);
        }

        else
        {
          v35 = -1;
        }

        v36 = v35 & *(v57 + 64);
        v37 = (v34 + 63) >> 6;

        v38 = 0;
        v39 = 0;
        if (v36)
        {
          goto LABEL_44;
        }

        while (1)
        {
          v40 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_74;
          }

          if (v40 >= v37)
          {
            break;
          }

          v36 = *(v57 + 64 + 8 * v40);
          ++v39;
          if (v36)
          {
            v39 = v40;
            do
            {
LABEL_44:
              v36 &= v36 - 1;

              sub_242F04DD0();

              sub_242F04720();

              result = sub_242F063E0();
              v38 ^= result;
            }

            while (v36);
            continue;
          }
        }

        v25 = v57;

        MEMORY[0x245D279A0](v38);
        v22 = v54;
        v19 = v48;
LABEL_47:
        v26 = v24;
      }

      else
      {
        v26 = v18;
        MEMORY[0x245D279A0](0);
        if ((v54 & 1) == 0)
        {
          sub_242F05F60();
        }

        sub_242F04DD0();

        MEMORY[0x245D279A0](v53);
      }

      if (v56 >> 1 == 0xFFFFFFFF)
      {
        sub_242F063B0();
        goto LABEL_70;
      }

      sub_242F063B0();
      if ((v56 & 0x8000000000000000) != 0)
      {
        MEMORY[0x245D279A0](1);
        v41 = 1 << *(v26 + 32);
        if (v41 < 64)
        {
          v42 = ~(-1 << v41);
        }

        else
        {
          v42 = -1;
        }

        v43 = v42 & *(v26 + 64);
        v44 = (v41 + 63) >> 6;

        v45 = 0;
        v46 = 0;
        if (v43)
        {
          goto LABEL_65;
        }

        while (1)
        {
          v47 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_75;
          }

          if (v47 >= v44)
          {
            break;
          }

          v43 = *(v26 + 64 + 8 * v47);
          ++v46;
          if (v43)
          {
            v46 = v47;
            do
            {
LABEL_65:
              v43 &= v43 - 1;

              sub_242F04DD0();

              sub_242F04720();

              result = sub_242F063E0();
              v45 ^= result;
            }

            while (v43);
            continue;
          }
        }

        MEMORY[0x245D279A0](v45);
        sub_242C7F7C0(v57, v54);
        sub_242C7F7C0(v24, v56);
      }

      else
      {
        MEMORY[0x245D279A0](0);
        if ((v56 & 1) == 0)
        {
          sub_242F05F60();
        }

        sub_242F04DD0();

        MEMORY[0x245D279A0](v19);
LABEL_70:
        sub_242C7F7C0(v25, v22);
        sub_242C7F7C0(v26, v56);
      }

LABEL_6:
      v8 = v52;
      goto LABEL_7;
    }

    MEMORY[0x245D279A0](0);
    if ((v54 & 0x8000000000000000) != 0)
    {
      MEMORY[0x245D279A0](1);
      v27 = 1 << *(v57 + 32);
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v29 = v28 & *(v57 + 64);
      v30 = (v27 + 63) >> 6;

      v31 = 0;
      v32 = 0;
      if (v29)
      {
        goto LABEL_32;
      }

      while (1)
      {
        v33 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_73;
        }

        if (v33 >= v30)
        {
          break;
        }

        v29 = *(v57 + 64 + 8 * v33);
        ++v32;
        if (v29)
        {
          v32 = v33;
          do
          {
LABEL_32:
            v29 &= v29 - 1;

            sub_242F04DD0();

            sub_242F04720();

            result = sub_242F063E0();
            v31 ^= result;
          }

          while (v29);
          continue;
        }
      }

      MEMORY[0x245D279A0](v31);
      sub_242C7F7D4(v57, v54);
      goto LABEL_6;
    }

    MEMORY[0x245D279A0](0);
    if ((v54 & 1) == 0)
    {
      sub_242F05F60();
    }

    v8 = v52;
    sub_242F04DD0();

    MEMORY[0x245D279A0](v53);
LABEL_7:
    v4 = (v8 - 1) & v8;
    result = sub_242F063E0();
    v55 ^= result;
    v5 = v50;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {
      goto LABEL_71;
    }

    v4 = *(v49 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_242C7B010(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = (*(a2 + 56) + 32 * (__clz(__rbit64(v6)) | (v11 << 6)));
    v13 = *v12;
    v14 = v12[1];
    v6 &= v6 - 1;
    v15 = v12[2];
    v16 = v12[3];

    sub_242F04DD0();

    if (v13 == 0.0)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v13;
    }

    MEMORY[0x245D279D0](*&v17);
    if (v14 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v14;
    }

    MEMORY[0x245D279D0](*&v18);
    if (v15 == 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v15;
    }

    MEMORY[0x245D279D0](*&v19);
    if (v16 == 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v16;
    }

    MEMORY[0x245D279D0](*&v20);
    result = sub_242F063E0();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x245D279A0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C7B1C4(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
LABEL_11:
    v13 = __clz(__rbit64(v7)) | (v11 << 6);
    v14 = *(*(a2 + 48) + 8 * v13);
    v15 = *(a2 + 56) + 24 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    a3(*v15, v17, v18);
    if (v18 == 254)
    {
LABEL_14:

      return MEMORY[0x245D279A0](v10);
    }

    MEMORY[0x245D279A0](v14);
    if (v18 == 255)
    {
      MEMORY[0x245D279A0](0);
    }

    else
    {
      MEMORY[0x245D279A0](1);
      Theme.ColorID.rawValue.getter();
      sub_242F04DD0();
      a4(v16, v17, v18);
    }

    v7 &= v7 - 1;
    result = sub_242F063E0();
    v10 ^= result;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C7B384(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v46 = v6;
  v47 = v2;
LABEL_6:
  if (!v5)
  {
    do
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_48;
      }

      if (v11 >= v6)
      {
        goto LABEL_46;
      }

      v5 = *(v2 + 8 * v11);
      ++v9;
    }

    while (!v5);
    v9 = v11;
  }

  v51 = v5;
  v12 = __clz(__rbit64(v5)) | (v9 << 6);
  v13 = *(*(a2 + 48) + 16 * v12 + 8);
  v14 = (*(a2 + 56) + (v12 << 6));
  v15 = *(v14 + 41);
  v17 = v14[1];
  v16 = v14[2];
  v58 = *v14;
  v59 = v17;
  *v60 = v16;
  *&v60[9] = v15;
  v53 = v58;
  v55 = v17;
  v18 = *v60;
  v19 = v15 >> 56;
  v20 = HIBYTE(v15);

  sub_242C7F938(&v58, v56);
  if (!v13)
  {
LABEL_46:

    return MEMORY[0x245D279A0](v8);
  }

  v50 = v8;
  v62 = v53;
  v63 = v55;
  v64 = v18;
  v65 = v19;
  v66 = v20;
  v21 = a1[3];
  *v60 = a1[2];
  *&v60[16] = v21;
  v61 = *(a1 + 8);
  v22 = a1[1];
  v58 = *a1;
  v59 = v22;
  sub_242F04DD0();

  v23 = v62;
  v24 = v63;
  v25 = v64;
  v27 = *(&v64 + 1);
  v26 = v65;
  if (v64 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();

    if (v23)
    {
      sub_242C7F6C4(v23, *(&v23 + 1), v24, *(&v24 + 1), v25);
      v29 = v23;
      sub_242F05820();
    }

    else
    {
      sub_242C7F6C4(0, *(&v23 + 1), v24, *(&v24 + 1), v25);
    }

    sub_242F04DD0();
    sub_242C78CCC(&v58, *(&v24 + 1));
  }

  else
  {
    MEMORY[0x245D279A0](0);

    sub_242C7F6C4(v23, *(&v23 + 1), v24, *(&v24 + 1), v25);
    sub_242F04DD0();
    if (v24)
    {
      sub_242F063B0();
      v28 = v24;
      sub_242F05820();

      if (v25)
      {
LABEL_15:
        sub_242F063B0();
        goto LABEL_25;
      }
    }

    else
    {
      sub_242F063B0();
      if (v25)
      {
        goto LABEL_15;
      }
    }

    sub_242F063B0();
    if ((*(&v24 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v30 = *(&v24 + 1);
    }

    else
    {
      v30 = 0;
    }

    MEMORY[0x245D279D0](v30);
  }

LABEL_25:
  v52 = (v51 - 1) & v51;
  MEMORY[0x245D279A0](v27);
  sub_242C7F724(v23, *(&v23 + 1), v24, *(&v24 + 1), v25);
  v31 = v26 + 64;
  v32 = 1 << *(v26 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v26 + 64);
  v35 = (v32 + 63) >> 6;
  v54 = v26;

  v36 = 0;
  v37 = 0;
  if (v34)
  {
    while (1)
    {
LABEL_33:
      v39 = __clz(__rbit64(v34)) | (v37 << 6);
      v40 = *(*(v54 + 48) + 8 * v39);
      v41 = *(v54 + 56) + 24 * v39;
      v43 = *v41;
      v42 = *(v41 + 8);
      v44 = *(v41 + 16);
      sub_242C7CE5C(*v41, v42, *(v41 + 16));
      if (v44 == 255)
      {
LABEL_5:

        v10 = v66;
        MEMORY[0x245D279A0](v36);

        MEMORY[0x245D279A0](v10 + 1);
        sub_242C7F994(&v62);
        result = sub_242F063E0();
        v5 = v52;
        v8 = result ^ v50;
        v6 = v46;
        v2 = v47;
        goto LABEL_6;
      }

      v56[2] = *v60;
      v56[3] = *&v60[16];
      v57 = v61;
      v56[0] = v58;
      v56[1] = v59;
      MEMORY[0x245D279A0](v40);
      if (v44 <= 1)
      {
        if (v44)
        {
          MEMORY[0x245D26660](0x2E72616C75646F6DLL, 0xE800000000000000);
        }

        else
        {
          MEMORY[0x245D26660](0x2E6C6169646172, 0xE700000000000000);
        }

        goto LABEL_43;
      }

      if (v44 == 2)
      {
        break;
      }

      if (v44 == 3)
      {
        MEMORY[0x245D26660](0x2E6E6F6D6D6F63, 0xE700000000000000);
LABEL_43:
        sub_242F05C20();
        goto LABEL_44;
      }

      v45 = sub_242F04F90();
      MEMORY[0x245D26660](v45);

LABEL_44:
      v34 &= v34 - 1;
      sub_242F04DD0();
      sub_242C7CEB0(v43, v42, v44);

      result = sub_242F063E0();
      v36 ^= result;
      if (!v34)
      {
        goto LABEL_29;
      }
    }

    MEMORY[0x245D26660](0x6964654D7370616DLL, 0xEA00000000002E61);
    goto LABEL_43;
  }

LABEL_29:
  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v38 >= v35)
    {
      goto LABEL_5;
    }

    v34 = *(v31 + 8 * v38);
    ++v37;
    if (v34)
    {
      v37 = v38;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_242C7B954(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x245D279A0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_242F04DD0();

        sub_242F04DD0();

        result = sub_242F063E0();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C7BAC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D279A0](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 - 16);
      if (v6 == 0.0)
      {
        v6 = 0.0;
      }

      MEMORY[0x245D279D0](*&v6);

      sub_242F04720();
      sub_242F04720();

      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_242C7BB70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D279A0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_242F063C0();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_242C7BBD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D279A0](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 + 4) >> 6;
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          MEMORY[0x245D279A0](2);
          sub_242F063C0();
          sub_242F063C0();
          sub_242F063C0();
          sub_242F063C0();
          sub_242F063C0();
          result = sub_242F063B0();
        }

        else
        {
          result = MEMORY[0x245D279A0](3);
        }
      }

      else
      {
        MEMORY[0x245D279A0](v6 != 0);
        sub_242F063C0();
        result = sub_242F063C0();
      }

      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_242C7BD24(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D279A0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x245D279D0](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_242C7BD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v7 = *(a1 + 16);
  *(a2 + 16) = v7;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  sub_242C7CE5C(v3, v2, v7);

  return sub_242C7CE74(v4, v5, v6);
}

BOOL _s14CarPlayAssetUI5ThemeO7PaletteV22RepresentedColorSchemeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      if (v13 == 2)
      {
        v33 = *a2;
        v20 = *(a2 + 24);
        v21 = *(a2 + 32);
        v22 = *(a2 + 8);
        sub_242C7C708(*a2, v8, v11, v20, v12, 2);
        sub_242C7C708(v3, v2, v5, v4, v6, 2);
        sub_242C7C708(v33, v22, v11, v20, v21, 2);
        sub_242C7C708(v3, v2, v5, v4, v6, 2);
        if (sub_242C729F0(v3, v33) & 1) != 0 && (sub_242F04B20())
        {
          v32 = sub_242F04B20();
          sub_242C7D8F4(v3, v2, v5, v4, v6, 2);
          sub_242C7D8F4(v33, v22, v11, v20, v21, 2);
          sub_242C7D8F4(v33, v22, v11, v20, v21, 2);
          sub_242C7D8F4(v3, v2, v5, v4, v6, 2);
          return (v32 & 1) != 0;
        }

        sub_242C7D8F4(v3, v2, v5, v4, v6, 2);
        sub_242C7D8F4(v33, v22, v11, v20, v21, 2);
        sub_242C7D8F4(v33, v22, v11, v20, v21, 2);
        v26 = v3;
        v27 = v2;
        v28 = v5;
        v29 = v4;
        v30 = v6;
        v31 = 2;
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v13 == 3 && !(v8 | v9 | v11 | v10 | v12))
    {
      sub_242C7D8F4(*a1, v2, v5, v4, v6, 3);
      sub_242C7D8F4(0, 0, 0, 0, v12, 3);
      return 1;
    }

LABEL_17:
    v37 = *(a2 + 40);
    v35 = *(a2 + 8);
    sub_242C7C708(*a2, v35, v11, v10, v12, v13);
    sub_242C7C708(v3, v2, v5, v4, v6, v7);
    sub_242C7D8F4(v3, v2, v5, v4, v6, v7);
    v26 = v9;
    v27 = v35;
    v28 = v11;
    v29 = v10;
    v30 = v12;
    v31 = v37;
LABEL_18:
    sub_242C7D8F4(v26, v27, v28, v29, v30, v31);
    return 0;
  }

  if (!*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      v14 = *a2;
      v34 = *(a2 + 16);
      v15 = *(a2 + 24);
      v16 = *(a2 + 32);
      v17 = *(a2 + 8);
      sub_242C7C708(*a2, v17, v34, v15, v12, 0);
      sub_242C7C708(v3, v2, v5, v4, v6, 0);
      v18 = sub_242F04710();
      sub_242C7D8F4(v3, v2, v5, v4, v6, 0);
      sub_242C7D8F4(v14, v17, v34, v15, v16, 0);
      return v18 & 1;
    }

    goto LABEL_17;
  }

  if (v13 != 1)
  {
    goto LABEL_17;
  }

  v23 = *a2;
  v24 = *(a2 + 16);
  v25 = *(a2 + 8);
  sub_242C7C708(*a2, v25, v24, v10, v12, 1);
  sub_242C7C708(v3, v2, v5, v4, v6, 1);
  sub_242C7C708(v23, v25, v24, v10, v12, 1);
  sub_242C7C708(v3, v2, v5, v4, v6, 1);
  if ((sub_242F04710() & 1) == 0)
  {
    sub_242C7D8F4(v3, v2, v5, v4, v6, 1);
    sub_242C7D8F4(v23, v25, v24, v10, v12, 1);
    sub_242C7D8F4(v23, v25, v24, v10, v12, 1);
    v26 = v3;
    v27 = v2;
    v28 = v5;
    v29 = v4;
    v30 = v6;
    v31 = 1;
    goto LABEL_18;
  }

  v36 = sub_242F04710();
  sub_242C7D8F4(v3, v2, v5, v4, v6, 1);
  sub_242C7D8F4(v23, v25, v24, v10, v12, 1);
  sub_242C7D8F4(v23, v25, v24, v10, v12, 1);
  sub_242C7D8F4(v3, v2, v5, v4, v6, 1);
  result = 1;
  if ((v36 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_242C7C354()
{
  result = qword_27ECEFE98;
  if (!qword_27ECEFE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFE98);
  }

  return result;
}

unint64_t sub_242C7C3A8()
{
  result = qword_27ECEFEA0;
  if (!qword_27ECEFEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFEA0);
  }

  return result;
}

unint64_t sub_242C7C3FC()
{
  result = qword_27ECEFEA8;
  if (!qword_27ECEFEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFEA8);
  }

  return result;
}

unint64_t sub_242C7C450()
{
  result = qword_27ECEFEB0;
  if (!qword_27ECEFEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFEB0);
  }

  return result;
}

unint64_t sub_242C7C4A4()
{
  result = qword_27ECEFEB8;
  if (!qword_27ECEFEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFEB8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_242C7C540()
{
  result = qword_27ECEFED0;
  if (!qword_27ECEFED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFED0);
  }

  return result;
}

unint64_t sub_242C7C594()
{
  result = qword_27ECEFED8;
  if (!qword_27ECEFED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFED8);
  }

  return result;
}

unint64_t sub_242C7C5E8()
{
  result = qword_27ECEFEE0;
  if (!qword_27ECEFEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFEE0);
  }

  return result;
}

unint64_t sub_242C7C63C()
{
  result = qword_27ECEFF18;
  if (!qword_27ECEFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFF18);
  }

  return result;
}

uint64_t sub_242C7C690(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECEFEC0);
    sub_242C7C540();
    sub_242C7C594();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242C7C708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2)
  {
  }

  else
  {
    if (a6 == 1)
    {
    }

    else
    {
      if (a6)
      {
        return result;
      }
    }
  }
}

uint64_t sub_242C7C77C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s14CarPlayAssetUI5ThemeO7PaletteV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v33 = *(a1 + 56);
  v34 = *(a1 + 48);
  v31 = *(a1 + 72);
  v32 = *(a1 + 64);
  v30 = *(a1 + 80);
  v29 = *(a1 + 88);
  v24 = *(a1 + 96);
  v22 = *(a1 + 104);
  v20 = *(a1 + 120);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v27 = *(a2 + 72);
  v28 = *(a2 + 64);
  v26 = *(a2 + 80);
  v25 = *(a2 + 88);
  v23 = *(a2 + 96);
  v21 = *(a2 + 104);
  v19 = *(a2 + 120);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_242F06110() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_242F06110() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }

    v12 = sub_242F04710();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = sub_242C743A0(v5, v8);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v41 = v34;
  v42 = v33;
  v43 = v32;
  v44 = v31;
  v45 = v30;
  v46 = v29;
  v35 = v10;
  v36 = v11;
  v37 = v28;
  v38 = v27;
  v39 = v26;
  v40 = v25;
  sub_242C7C708(v34, v33, v32, v31, v30, v29);
  sub_242C7C708(v10, v11, v28, v27, v26, v25);
  v14 = _s14CarPlayAssetUI5ThemeO7PaletteV22RepresentedColorSchemeO2eeoiySbAG_AGtFZ_0(&v41, &v35);
  sub_242C7D8F4(v35, v36, v37, v38, v39, v40);
  sub_242C7D8F4(v41, v42, v43, v44, v45, v46);
  result = 0;
  if (v14 && v24 == v23)
  {
    if (v22)
    {
      v16 = v21;
      if (v21)
      {
        sub_242C7C77C(v22);
        sub_242C7C77C(v21);
        if (sub_242F04710())
        {
          v17 = sub_242F04710();
          sub_242C7D968(v21);
          sub_242C7D968(v22);
          if ((v17 & 1) == 0)
          {
            return 0;
          }

          return v20 ^ v19 ^ 1u;
        }

        sub_242C7D968(v21);
        v18 = v22;
LABEL_24:
        sub_242C7D968(v18);
        return 0;
      }
    }

    else
    {
      v16 = v21;
      if (!v21)
      {
        sub_242C7C77C(0);
        sub_242C7C77C(0);
        sub_242C7D968(0);
        return v20 ^ v19 ^ 1u;
      }
    }

    sub_242C7C77C(v22);
    sub_242C7C77C(v16);
    sub_242C7D968(v22);
    v18 = v16;
    goto LABEL_24;
  }

  return result;
}