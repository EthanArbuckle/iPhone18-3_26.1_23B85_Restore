uint64_t type metadata accessor for SiriDigestMetricsSELFReporter()
{
  result = qword_27F98A640;
  if (!qword_27F98A640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258ECE274()
{
  result = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_258ECE3F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A650, &unk_258F15C10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258ECE464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

MetricsFramework::SiriReponseCategory_optional __swiftcall SiriReponseCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0AD90();

  v5 = 0;
  v6 = 3;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
LABEL_11:
      v6 = v5;
      break;
    case 3:
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    default:
      v6 = 21;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_258ECE5F8()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD00000000000001ALL;
  if (v2 == 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000012;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001BLL;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_258ECE6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258ECF4C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258ECE6E4(uint64_t a1)
{
  v2 = sub_258ECEB74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258ECE720(uint64_t a1)
{
  v2 = sub_258ECEB74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriResponseIdentifierMapping.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A660, &qword_258F15C30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258ECEB74();
  sub_258F0AED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v41[0]) = 0;
  v12 = sub_258F0AC50();
  v14 = v13;
  v35 = v12;
  LOBYTE(v36) = 1;
  sub_258ECEBC8();
  sub_258F0AC70();
  v15 = LOBYTE(v41[0]);
  LOBYTE(v41[0]) = 2;
  v33 = sub_258F0ABF0();
  v51 = v15;
  v34 = v16;
  LOBYTE(v41[0]) = 3;
  v31 = sub_258F0ABF0();
  v32 = v17;
  LOBYTE(v41[0]) = 4;
  v30 = sub_258F0AC00();
  LOBYTE(v41[0]) = 5;
  v29 = sub_258F0AC00();
  v52 = 6;
  v18 = sub_258F0ABF0();
  v19 = v10;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  v22 = v35;
  *&v36 = v35;
  *(&v36 + 1) = v14;
  v23 = v51;
  LOBYTE(v37) = v51;
  v24 = v34;
  *(&v37 + 1) = v33;
  *&v38 = v34;
  *(&v38 + 1) = v31;
  *&v39 = v32;
  BYTE8(v39) = v30;
  BYTE9(v39) = v29;
  *&v40 = v18;
  *(&v40 + 1) = v21;
  v25 = v39;
  a2[2] = v38;
  a2[3] = v25;
  a2[4] = v40;
  v26 = v37;
  *a2 = v36;
  a2[1] = v26;
  sub_258ECEC1C(&v36, v41);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v41[0] = v22;
  v41[1] = v14;
  v42 = v23;
  v43 = v33;
  v44 = v24;
  v45 = v31;
  v46 = v32;
  v47 = v30;
  v48 = v29;
  v49 = v18;
  v50 = v21;
  return sub_258ECEC54(v41);
}

unint64_t sub_258ECEB74()
{
  result = qword_27F98A668;
  if (!qword_27F98A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A668);
  }

  return result;
}

unint64_t sub_258ECEBC8()
{
  result = qword_27F98A670;
  if (!qword_27F98A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A670);
  }

  return result;
}

uint64_t sub_258ECECA0()
{
  result = 0x454C505041;
  switch(*v0)
  {
    case 1:
      result = 0x44454E4E4143;
      break;
    case 2:
      result = 0x4F445F544E4143;
      break;
    case 3:
      result = 0x444E555F544E4143;
      break;
    case 4:
      result = 0x4D5249464E4F43;
      break;
    case 5:
      result = 0x4749424D41534944;
      break;
    case 6:
      result = 0x4E49414D4F44;
      break;
    case 7:
      result = 0x4C41544146;
      break;
    case 8:
      result = 0x44454C444E4148;
      break;
    case 9:
      result = 0x454C504D4F434E49;
      break;
    case 0xA:
      result = 0x4954535245544E49;
      break;
    case 0xB:
      result = 0x524546464FLL;
      break;
    case 0xC:
      result = 0x4843544150;
      break;
    case 0xD:
      result = 0x54504D4F5250;
      break;
    case 0xE:
      result = 0x494E495F49524953;
      break;
    case 0xF:
      result = 0x4C4149434F53;
      break;
    case 0x10:
      result = 0x4954534547475553;
      break;
    case 0x11:
      result = 0x455F4D4554535953;
      break;
    case 0x12:
      result = 0x53524F4644455355;
      break;
    case 0x13:
      result = 0x4345445F52455355;
      break;
    case 0x14:
      result = 0x4E574F4E4B4E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258ECEEE0(char *a1, char *a2)
{
  v8 = *a1;
  v7 = *a2;
  v2 = SiriReponseCategory.getCategoryCode()();
  v3 = SiriReponseCategory.getCategoryCode()();
  if (v2._countAndFlagsBits == v3._countAndFlagsBits && v2._object == v3._object)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_258F0AD80();
  }

  return v5 & 1;
}

unint64_t sub_258ECEF80()
{
  result = qword_27F98A678;
  if (!qword_27F98A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A678);
  }

  return result;
}

uint64_t sub_258ECEFD4()
{
  v1 = *v0;
  sub_258F0AE40();
  SiriReponseCategory.getCategoryCode()();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258ECF03C()
{
  v2 = *v0;
  SiriReponseCategory.getCategoryCode()();
  sub_258F0A5B0();
}

uint64_t sub_258ECF0A0()
{
  v1 = *v0;
  sub_258F0AE40();
  SiriReponseCategory.getCategoryCode()();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258ECF110@<X0>(Swift::String *a1@<X8>)
{
  v3 = SiriReponseCategory.getCategoryCode()();
  result = v3._countAndFlagsBits;
  *a1 = v3;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_258ECF1B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258ECF1FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SiriReponseCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriReponseCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258ECF3C4()
{
  result = qword_27F98A680;
  if (!qword_27F98A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A680);
  }

  return result;
}

unint64_t sub_258ECF41C()
{
  result = qword_27F98A688;
  if (!qword_27F98A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A688);
  }

  return result;
}

unint64_t sub_258ECF474()
{
  result = qword_27F98A690;
  if (!qword_27F98A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A690);
  }

  return result;
}

uint64_t sub_258ECF4C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000258F1CC50 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000258F1E510 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000258F1E530 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000258F1E550 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000258F1E570 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000258F1E590 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000258F1E5B0 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_258F0AD80();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_258ECF70C()
{
  result = qword_27F98A698;
  if (!qword_27F98A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A698);
  }

  return result;
}

uint64_t SiriSegmentCohortBiomeReporter.__allocating_init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = OBJC_IVAR____TtC16MetricsFramework30SiriSegmentCohortBiomeReporter_logger;
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 32))(v7 + v8, a2, v9);
  return v7;
}

uint64_t SiriSegmentCohortBiomeReporter.init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework30SiriSegmentCohortBiomeReporter_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_258ECF864(uint64_t a1)
{
  v2[2] = v1;
  v4 = *(type metadata accessor for DeviceSegmentsCohorts(0) - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *(a1 + 16);
  v2[4] = v6;
  v2[5] = v7;

  return MEMORY[0x2822009F8](sub_258ECF928, 0, 0);
}

uint64_t sub_258ECF928()
{
  v1 = v0[2] + OBJC_IVAR____TtC16MetricsFramework30SiriSegmentCohortBiomeReporter_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Reporter invoked: SiriDigestMetricsBiomeReporter", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[5];

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v0[3];
    v8 = *(v0[2] + 16);
    v9 = v0[5] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    do
    {
      v11 = v0[4];
      sub_258E9906C(v9, v11);
      v12 = _s16MetricsFramework30SiriSegmentCohortBiomeReporterC06createF34OnDeviceDigestSegmentsCohortsEvent08segmentsmA0So06BMSiriijklM0CAA0jlM0V_tFZ_0(v11);
      sub_258E990D0(v11);
      sub_258F09B90();

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

uint64_t sub_258ECFA84()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework30SiriSegmentCohortBiomeReporter_logger;
  v3 = sub_258F0A370();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t SiriSegmentCohortBiomeReporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework30SiriSegmentCohortBiomeReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SiriSegmentCohortBiomeReporter.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MetricsFramework30SiriSegmentCohortBiomeReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id _s16MetricsFramework30SiriSegmentCohortBiomeReporterC06createF34OnDeviceDigestSegmentsCohortsEvent08segmentsmA0So06BMSiriijklM0CAA0jlM0V_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AE0, &qword_258F114B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v48 - v5;
  v7 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  v8 = type metadata accessor for DeviceSegmentsCohorts(0);
  v9 = a1;
  v10 = *(a1 + *(v8 + 20));
  if (v10)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v49 = v8;
      v50 = v9;
      v51 = v6;
      v12 = (v10 + 60);
      while (1)
      {
        v13 = *(v12 - 5);
        v14 = *(v12 - 16);
        v15 = *(v12 - 3);
        v16 = *(v12 - 8);
        v17 = *(v12 - 1);
        v18 = *v12;
        if (*(v12 - 24))
        {
          v19 = 0;
          if ((*(v12 - 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v23 = *(v12 - 7);
          v19 = sub_258F0AE20();
          if ((v14 & 1) == 0)
          {
LABEL_6:
            v20 = sub_258F0AE20();
            if ((v16 & 1) == 0)
            {
              goto LABEL_7;
            }

            goto LABEL_11;
          }
        }

        v20 = 0;
        if ((v16 & 1) == 0)
        {
LABEL_7:
          v21 = sub_258F0AEB0();
          if (v18)
          {
            goto LABEL_12;
          }

          goto LABEL_8;
        }

LABEL_11:
        v21 = 0;
        if (v18)
        {
LABEL_12:
          v22 = 0;
          goto LABEL_13;
        }

LABEL_8:
        v22 = sub_258F0AEB0();
LABEL_13:
        [objc_allocWithZone(MEMORY[0x277CF1508]) initWithSegmentType:v19 segmentDataAvailabilityState:v20 daysWithTwoValidAssistantTurnsPerWeek:v21 daysWithTwoAssistantSpeechRequestsPerWeek:v22];

        MEMORY[0x259C9DF50]();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_258F0A6D0();
        }

        sub_258F0A700();
        v12 += 32;
        if (!--v11)
        {
          v7 = v53;
          v9 = v50;
          v6 = v51;
          v8 = v49;
          break;
        }
      }
    }
  }

  v25 = *(v9 + *(v8 + 24));
  if (v25)
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      v48 = v7;
      v49 = v8;
      v50 = v9;
      v51 = v6;
      v27 = (v25 + 48);
      while (1)
      {
        v28 = *(v27 - 4);
        v29 = *(v27 - 12);
        v30 = *(v27 - 2);
        v31 = *(v27 - 4);
        v32 = *v27;
        if (*v27)
        {
          v33 = v32;
          [v33 startTimestampInSecondsSince1970];
          [v33 numberOfSeconds];
          v34 = sub_258F0AEC0();
          v35 = sub_258F0AEB0();
        }

        else
        {
          v35 = 0;
          v34 = 0;
        }

        v36 = [objc_allocWithZone(MEMORY[0x277CF1518]) initWithStartTimestampInSecondsSince1970:v34 numberOfSeconds:v35];

        if (v29)
        {
          v37 = 0;
          if (v31)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v37 = sub_258F0AE20();
          if (v31)
          {
LABEL_27:
            v38 = 0;
            goto LABEL_28;
          }
        }

        v38 = sub_258F0AE20();
LABEL_28:
        v39 = objc_allocWithZone(MEMORY[0x277CF1500]);
        v40 = v36;
        [v39 initWithTimeInterval:v40 cohortType:v37 cohortDataAvailabilityState:v38];

        MEMORY[0x259C9DF50]();
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v41 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_258F0A6D0();
        }

        v27 += 3;
        sub_258F0A700();

        if (!--v26)
        {
          v6 = v51;
          v8 = v49;
          v9 = v50;
          break;
        }
      }
    }
  }

  sub_258E9906C(v9, v6);
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v42 = _s16MetricsFramework13EventMetadataV07toBiomeC021deviceSegmentsCohortsSo020BMSiriOnDeviceDigesthicD0CAA0lhI0VSg_tFZ_0(v6);
  sub_258ED0124(v6);
  v43 = objc_allocWithZone(MEMORY[0x277CF14F8]);
  sub_258DEB8C8(0, &qword_27F98A6B8, 0x277CF1508);
  v44 = sub_258F0A6A0();

  sub_258DEB8C8(0, &qword_27F98A6C0, 0x277CF1500);
  v45 = sub_258F0A6A0();

  v46 = [v43 initWithEventMetadata:v42 deviceSegmentsReported:v44 deviceCohortsReported:v45];

  return v46;
}

uint64_t type metadata accessor for SiriSegmentCohortBiomeReporter()
{
  result = qword_27F98A6A8;
  if (!qword_27F98A6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258ED0124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AE0, &qword_258F114B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258ED018C(uint64_t a1, uint64_t *a2, size_t *a3)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      sub_258ED404C(v17, a2, a3);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void (*sub_258ED02C4(uint64_t *a1, uint64_t a2))(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for EventMetadata(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_258EDA33C(a2, v8, type metadata accessor for EventMetadata);
  v6[5] = sub_258ED90C0(v6, v9);
  return sub_258ED03A0;
}

void (*sub_258ED03B8(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_258ED91D4(v6, a2, a3);
  return sub_258ED0440;
}

void sub_258ED0440(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void (*sub_258ED048C(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_258F09A20();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_258ED92E0(v4, v9);
  return sub_258ED05A4;
}

void sub_258ED05A4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void (*sub_258ED061C(uint64_t *a1, uint64_t a2))(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for FunnelEventMetadata(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_258EDA33C(a2, v8, type metadata accessor for FunnelEventMetadata);
  v6[5] = sub_258ED94B4(v6, v9);
  return sub_258ED06F8;
}

void sub_258ED0710(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_258EDA40C(v5, a3);
  free(v5);

  free(v4);
}

uint64_t SiriSegmentCohortResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SiriSegmentCohortResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SiriSegmentCohortResults.deviceSegmentsCohorts.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SiriSegmentCohortResults.deviceBatchData.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t SiriSegmentCohortCalculator.__allocating_init(defaults:logger:sqlFileURL:bookmarkService:oddId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v57 = a3;
  v58 = a4;
  v59 = a2;
  v60 = a1;
  v47 = sub_258F09A70();
  v56 = *(v47 - 8);
  v8 = v56;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v47, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v47 - v16;
  v61 = &v47 - v16;
  v49 = sub_258F0A370();
  v54 = *(v49 - 8);
  v18 = v54;
  v19 = *(v54 + 64);
  MEMORY[0x28223BE20](v49, v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v18 + 16);
  v51 = v22;
  v50(v22, a2);
  sub_258DE20C0(a3, v17, &qword_27F988720, &qword_258F0B830);
  v23 = *(v8 + 16);
  v24 = v47;
  v23(v12, a5, v47);
  sub_258F09F30();
  v52 = sub_258F09F20();
  v25 = type metadata accessor for CAAnalyticsEventSubmitter();
  v26 = swift_allocObject();
  type metadata accessor for BiomeResultsWrapperFactory();
  v48 = swift_allocObject();
  v63[3] = v25;
  v63[4] = &off_286A2C648;
  v63[0] = v26;
  v27 = type metadata accessor for SiriSegmentCohortCalculator();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v63, v25);
  v32 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v31, v31);
  v34 = (&v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v62[3] = v25;
  v62[4] = &off_286A2C648;
  v62[0] = v36;
  v37 = v22;
  v38 = v49;
  (v50)(v30 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_logger, v37, v49);
  sub_258DE20C0(v61, v30 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v39 = (v30 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bookmarkService);
  v39[3] = sub_258F09C20();
  v39[4] = &off_286A2FA30;
  *v39 = v58;
  v40 = v53;
  v41 = v24;
  v23((v30 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_oddId), v53, v24);
  *(v30 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_defaults) = v60;
  *(v30 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bugReporter) = v52;
  sub_258DE3FD8(v62, v30 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_analyticsEventSubmitter);
  *(v30 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_biomeResultsFactory) = v48;
  v42 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v30 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlDateFormatter) = v42;
  v43 = sub_258F0A4E0();
  [v42 setDateFormat_];

  v44 = *(v56 + 8);
  v44(v55, v41);
  sub_258DE2184(v57, &qword_27F988720, &qword_258F0B830);
  v45 = *(v54 + 8);
  v45(v59, v38);
  v44(v40, v41);
  sub_258DE2184(v61, &qword_27F988720, &qword_258F0B830);
  v45(v51, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  return v30;
}

uint64_t type metadata accessor for SiriSegmentCohortCalculator()
{
  result = qword_27F98A6F8;
  if (!qword_27F98A6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258ED0E2C(uint64_t a1)
{
  v2[167] = v1;
  v2[166] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0) - 8) + 64) + 15;
  v2[168] = swift_task_alloc();
  v2[169] = swift_task_alloc();
  v4 = type metadata accessor for DeviceSegmentsCohorts(0);
  v2[170] = v4;
  v5 = *(v4 - 8);
  v2[171] = v5;
  v6 = *(v5 + 64) + 15;
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0) - 8) + 64) + 15;
  v2[174] = swift_task_alloc();
  v2[175] = swift_task_alloc();
  v2[176] = swift_task_alloc();
  v2[177] = swift_task_alloc();
  v8 = sub_258F09B00();
  v2[178] = v8;
  v9 = *(v8 - 8);
  v2[179] = v9;
  v10 = *(v9 + 64) + 15;
  v2[180] = swift_task_alloc();
  v11 = sub_258F09A20();
  v2[181] = v11;
  v12 = *(v11 - 8);
  v2[182] = v12;
  v13 = *(v12 + 64) + 15;
  v2[183] = swift_task_alloc();
  v2[184] = swift_task_alloc();
  v2[185] = swift_task_alloc();
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  v2[188] = swift_task_alloc();
  v2[189] = swift_task_alloc();
  v2[190] = swift_task_alloc();
  v2[191] = swift_task_alloc();
  v2[192] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830) - 8) + 64) + 15;
  v2[193] = swift_task_alloc();
  v2[194] = swift_task_alloc();
  v2[195] = swift_task_alloc();
  v2[196] = swift_task_alloc();
  v15 = sub_258F0A2C0();
  v2[197] = v15;
  v16 = *(v15 - 8);
  v2[198] = v16;
  v17 = *(v16 + 64) + 15;
  v2[199] = swift_task_alloc();
  v2[200] = swift_task_alloc();
  v18 = sub_258F0A2F0();
  v2[201] = v18;
  v19 = *(v18 - 8);
  v2[202] = v19;
  v20 = *(v19 + 64) + 15;
  v2[203] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258ED11E0, 0, 0);
}

void sub_258ED11E0()
{
  v369 = v0;
  v1 = v0;
  v2 = v0[203];
  v3 = v0[200];
  sub_258F0A2E0();
  sub_258F0A2D0();
  sub_258F0A2A0();
  v4 = sub_258F0A2D0();
  v5 = sub_258F0A860();
  if (sub_258F0A900())
  {
    v6 = v1[200];
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_258F0A2B0();
    _os_signpost_emit_with_name_impl(&dword_258DD8000, v4, v5, v8, "SiriSegmentCohortCalculatorSP", "", v7, 2u);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v9 = v1[200];
  v10 = v1[199];
  v11 = v1[198];
  v12 = v1[197];
  v13 = v1[167];

  (*(v11 + 16))(v10, v9, v12);
  v14 = sub_258F0A330();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_258F0A320();
  v17 = sub_258F0A350();
  v18 = sub_258F0A810();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_258DD8000, v17, v18, "SQL calculator invoked: SiriSegmentCohortCalculator", v19, 2u);
    MEMORY[0x259C9EF40](v19, -1, -1);
  }

  v20 = v1[196];
  v21 = v1[167];

  sub_258DE20C0(v21 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlFileURL, v20, &qword_27F988720, &qword_258F0B830);
  v22 = sub_258F098D0();
  v23 = *(v22 - 8);
  v358 = *(v23 + 48);
  LODWORD(v21) = v358(v20, 1, v22);
  sub_258DE2184(v20, &qword_27F988720, &qword_258F0B830);
  if (v21 == 1)
  {
    v24 = v1[203];
    sub_258DE403C();
    swift_allocError();
    *v25 = 9;
    swift_willThrow();
LABEL_159:
    sub_258ED3DB0(v24, "SiriSegmentCohortCalculatorSP", 29, 2);

    v222 = v1[203];
    v223 = v1;
    v224 = v1[202];
    v225 = v223[201];
    v226 = v223[199];
    v227 = v223[196];
    v228 = v223[195];
    v229 = v223[194];
    v230 = v223[193];
    v300 = v223[192];
    v303 = v223[191];
    v306 = v223[190];
    v310 = v223[189];
    v313 = v223[188];
    v316 = v223[187];
    v319 = v223[186];
    v322 = v223[185];
    v325 = v223[184];
    v328 = v223[183];
    v331 = v223[180];
    v335 = v223[177];
    v341 = v223[176];
    v346 = v223[175];
    v347 = v223[174];
    v351 = v223[173];
    v355 = v223[172];
    v359 = v223[169];
    v363 = v223[168];
    (*(v223[198] + 8))(v223[200], v223[197]);
    (*(v224 + 8))(v222, v225);

    v231 = v223[1];
LABEL_160:

    v231();
    return;
  }

  v354 = v23;
  v26 = v1[167];
  sub_258DE0388();
  v27 = v1[167];
  v28 = sub_258DE0674();
  v29 = *__swift_project_boxed_opaque_existential_1((v1[167] + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bookmarkService), *(v1[167] + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bookmarkService + 24));
  v30 = sub_258F09BD0();
  v266 = v28;
  sub_258F0A100();
  v32 = v31;

  v33 = v1[192];
  v287 = v1;
  v267 = v22;
  if (v32)
  {
    v34 = v1[191];
    v337 = v1[190];
    v35 = v1[189];
    v36 = v1[182];
    v37 = v1[181];
    v38 = v1[180];
    v39 = v1[179];
    v40 = v287[178];
    sub_258F0A090();
    sub_258F09AC0();
    sub_258F09960();
    v41 = *(v39 + 8);
    v41(v38, v40);
    v42 = *(v36 + 8);
    v42(v35, v37);
    sub_258F09AC0();
    sub_258F09940();
    v41(v38, v40);
    v42(v337, v37);
    sub_258F09AC0();
    sub_258F09950();
    v41(v38, v40);
    v1 = v287;
    v42(v34, v37);
  }

  else
  {
    sub_258F09910();
  }

  v43 = v1[192];
  v44 = v1[188];
  v333 = v1[187];
  v338 = v1[186];
  v45 = v1[180];
  v46 = v1[179];
  v47 = v1[178];
  v344 = v1[167];
  sub_258F09AC0();
  sub_258F09960();
  v48 = *(v46 + 8);
  v48(v45, v47);
  sub_258F0A140();
  sub_258F09920();
  v49 = sub_258F0A120();
  sub_258F09AC0();
  sub_258F09960();
  v48(v45, v47);
  sub_258F09AC0();
  sub_258F09BB0();
  v271 = v48;
  v48(v45, v47);
  v50 = sub_258ED47C8(v333, v338);
  v52 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FC0, &qword_258F13C30);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_258F0B820;
  *(v53 + 56) = MEMORY[0x277D837D0];
  *(v53 + 64) = sub_258E98FA8();
  *(v53 + 32) = v50;
  *(v53 + 40) = v52;

  v54 = sub_258F0A520();
  v56 = v55;

  v57 = sub_258F0A350();
  v58 = sub_258F0A810();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v368[0] = v60;
    *v59 = 136315138;
    *(v59 + 4) = sub_258DE3018(v54, v56, v368);
    _os_log_impl(&dword_258DD8000, v57, v58, "SQL: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x259C9EF40](v60, -1, -1);
    MEMORY[0x259C9EF40](v59, -1, -1);
  }

  v61 = v1[185];
  v367 = MEMORY[0x277D84F98];
  sub_258F0A050();
  v265 = v49;
  v268 = sub_258F0A020();
  sub_258F0A040();
  sub_258F0A090();
  if ((sub_258F0A070() & 1) == 0)
  {
    v294 = 0;
    v288 = 0;
    v290 = 0;
    v345 = MEMORY[0x277D84F90];
LABEL_141:

    v186 = sub_258F0A350();
    v187 = sub_258F0A810();
    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      *v188 = 134217984;
      *(v188 + 4) = *(v345 + 16);

      _os_log_impl(&dword_258DD8000, v186, v187, "SiriSegmentCohortCalculator query yielded %ld results", v188, 0xCu);
      MEMORY[0x259C9EF40](v188, -1, -1);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BE8, &unk_258F13720);
    v189 = swift_allocObject();
    v190 = v288;
    v189[4] = v290;
    v189[5] = 0xD000000000000017;
    v189[6] = 0x8000000258F1AF40;
    v189[7] = v288;
    v189[8] = 0xD000000000000015;
    v189[9] = 0x8000000258F1D230;
    v189[10] = v294;
    v189[11] = 0xD00000000000001CLL;
    v189[12] = 0x8000000258F1D250;
    if (v290 >= 1)
    {
      v191 = v1[167];

      sub_258E2E0FC(v290, 0xD000000000000017, 0x8000000258F1AF40);

      v190 = v189[7];
    }

    if (v190 >= 1)
    {
      v192 = v1[167];
      v193 = v189[8];
      v194 = v189[9];

      sub_258E2E0FC(v190, v193, v194);
    }

    v195 = v189[10];
    if (v195 >= 1)
    {
      v196 = v1[167];
      v198 = v189[11];
      v197 = v189[12];

      sub_258E2E0FC(v195, v198, v197);
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v199 = sub_258F0A350();
    v200 = sub_258F0A810();
    if (os_log_type_enabled(v199, v200))
    {
      v201 = swift_slowAlloc();
      *v201 = 0;
      _os_log_impl(&dword_258DD8000, v199, v200, "SQL calculator invoked for SiriLogicClockIds", v201, 2u);
      MEMORY[0x259C9EF40](v201, -1, -1);
    }

    type metadata accessor for SiriSegmentCohortMetrics();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v203 = [objc_opt_self() bundleForClass_];
    v204 = sub_258F0A4E0();
    v205 = sub_258F0A4E0();
    v206 = [v203 URLForResource:v204 withExtension:v205];

    if (v206)
    {
      v207 = v1[194];
      sub_258F098B0();

      v208 = 0;
    }

    else
    {
      v208 = 1;
    }

    v209 = v1[195];
    v210 = v1[194];
    (*(v23 + 56))(v210, v208, 1, v267);
    sub_258E2EAD8(v210, v209, &qword_27F988720, &qword_258F0B830);
    if (v358(v209, 1, v267) == 1)
    {
      v24 = v1[203];
      v362 = v1[195];
      v211 = v1[192];
      v212 = v1[188];
      v213 = v1[187];
      v214 = v1[186];
      v215 = v1[185];
      v216 = v287[182];
      v217 = v287[181];

      sub_258DE403C();
      swift_allocError();
      *v218 = 9;
      swift_willThrow();

      v219 = *(v216 + 8);
      v219(v215, v217);
      v219(v214, v217);
      v219(v213, v217);
      v219(v212, v217);
      v219(v211, v217);
      v1 = v287;
      sub_258DE2184(v362, &qword_27F988720, &qword_258F0B830);

      goto LABEL_159;
    }

    v220 = v1[193];
    sub_258DE20C0(v1[195], v220, &qword_27F988720, &qword_258F0B830);
    if (v358(v220, 1, v267) == 1)
    {
      goto LABEL_204;
    }

    v221 = v1[193];
    sub_258F0A4D0();
    (*(v23 + 8))(v1[193], v267);
    sub_258F0A040();
    v232 = sub_258F0A070();
    if ((v232 & 1) == 0)
    {
LABEL_190:

      v368[0] = MEMORY[0x277D84F90];
      if (*(v367 + 16))
      {

        sub_258ED018C(v256, &v367, v368);

        v280 = v368[0];
      }

      else
      {
        v280 = MEMORY[0x277D84F90];
      }

      v298 = v287[202];
      v301 = v287[201];
      v289 = v287[203];
      v291 = v287[198];
      v293 = v287[197];
      v295 = v287[200];
      v304 = v287[199];
      v307 = v287[196];
      v285 = v287[195];
      v311 = v287[194];
      v314 = v287[193];
      v283 = v287[192];
      v317 = v287[191];
      v320 = v287[190];
      v323 = v287[189];
      v257 = v287[188];
      v282 = v287[187];
      v258 = v287[186];
      v259 = v287[185];
      v326 = v287[184];
      v329 = v287[183];
      v260 = v287[182];
      v261 = v287[181];
      v332 = v287[180];
      v336 = v287[177];
      v343 = v287[176];
      v350 = v287[175];
      v353 = v287[174];
      v357 = v287[173];
      v361 = v287[172];
      v364 = v287[169];
      v366 = v287[168];
      v262 = v287[166];
      sub_258F0A0F0();
      v281 = sub_258F09B70();

      v263 = *(v260 + 8);
      v263(v259, v261);
      v263(v258, v261);
      v263(v282, v261);
      v263(v257, v261);
      v263(v283, v261);
      *v262 = v281;
      v262[1] = MEMORY[0x277D84F90];
      v262[2] = v345;
      v262[3] = v280;
      sub_258DE2184(v285, &qword_27F988720, &qword_258F0B830);

      sub_258ED3DB0(v289, "SiriSegmentCohortCalculatorSP", 29, 2);

      (*(v291 + 8))(v295, v293);
      (*(v298 + 8))(v289, v301);

      v231 = v287[1];
      goto LABEL_160;
    }

    v360 = (v1 + 111);
    while (1)
    {
      v233 = sub_258F0A060();
      if (v233)
      {
        v234 = v233;
        v1[156] = 0x61645F746E657665;
        v1[157] = 0xEA00000000006574;
        sub_258F0AA80();
        if (*(v234 + 16) && (v235 = sub_258E2EA2C((v1 + 7)), (v236 & 1) != 0))
        {
          sub_258DE4090(*(v234 + 56) + 32 * v235, (v1 + 67));
          sub_258E0F590((v1 + 7));
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_189;
          }

          v237 = v1[147];
          if (*(v367 + 16))
          {
            v238 = v1[146];
            sub_258E2E9B4(v238, v1[147]);
            if ((v239 & 1) == 0)
            {
              goto LABEL_185;
            }

            v1[132] = 0xD000000000000011;
            v1[133] = 0x8000000258F1E650;
            sub_258F0AA80();
            if (*(v234 + 16))
            {
              v240 = sub_258E2EA2C((v1 + 27));
              if (v241)
              {
                sub_258DE4090(*(v234 + 56) + 32 * v240, (v1 + 103));
                sub_258E0F590((v1 + 27));
                if (swift_dynamicCast())
                {
                  v348 = v1[130];
                  v356 = v1[131];
                  v242 = sub_258ED03B8(v360, v238, v237);
                  v243 = v242;
                  v352 = v244;
                  if (*v244)
                  {
                    v342 = v242;
                    v245 = v1[174];
                    sub_258F09A30();
                    v246 = sub_258F09A70();
                    v247 = *(v246 - 8);
                    if ((*(v247 + 48))(v245, 1, v246) == 1)
                    {
                      goto LABEL_205;
                    }

                    v248 = *v352;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *v352 = v248;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v248 = sub_258DE26A4(0, v248[2] + 1, 1, v248);
                      *v352 = v248;
                    }

                    v251 = v248[2];
                    v250 = v248[3];
                    v252 = v251 + 1;
                    v349 = v246;
                    if (v251 >= v250 >> 1)
                    {
                      v255 = sub_258DE26A4(v250 > 1, v251 + 1, 1, v248);
                      v252 = v251 + 1;
                      v248 = v255;
                      *v352 = v255;
                    }

                    v1 = v287;
                    v253 = v287[174];
                    v248[2] = v252;
                    (*(v247 + 32))(v248 + ((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * v251, v253, v349);
                    v342();
                  }

                  else
                  {

                    v243();
                  }
                }

                else
                {
LABEL_185:
                }

LABEL_189:

                goto LABEL_166;
              }
            }

            sub_258E0F590((v1 + 27));
          }

          else
          {
            v254 = v1[147];
          }
        }

        else
        {

          sub_258E0F590((v1 + 7));
        }
      }

LABEL_166:
      if ((sub_258F0A070() & 1) == 0)
      {
        goto LABEL_190;
      }
    }
  }

  v294 = 0;
  v288 = 0;
  v290 = 0;
  v62 = v1 + 71;
  v315 = v1 + 107;
  v318 = v1 + 95;
  v312 = v1 + 119;
  v272 = v1 + 165;
  v273 = v1 + 164;
  v264 = (v1 + 204);
  v284 = (v1 + 205);
  v286 = v1 + 409;
  v274 = v1[170];
  v275 = v1[171];
  v279 = v1[167];
  v270 = OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlDateFormatter;
  v278 = OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_oddId;
  v269 = (v1[182] + 8);
  v277 = MEMORY[0x277D84F98];
  v345 = MEMORY[0x277D84F90];
  v276 = v1 + 71;
  while (1)
  {
    v63 = sub_258F0A060();
    if (!v63)
    {
      goto LABEL_15;
    }

    v64 = v63;
    v65 = sub_258F0A350();
    v66 = sub_258F0A810();
    v365 = v64;
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v368[0] = v68;
      *v67 = 136315138;
      v69 = sub_258F0A420();
      v71 = sub_258DE3018(v69, v70, v368);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_258DD8000, v65, v66, "SiriSegmentCohort row data: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x259C9EF40](v68, -1, -1);
      v72 = v67;
      v64 = v365;
      MEMORY[0x259C9EF40](v72, -1, -1);
    }

    v1[144] = 0xD000000000000010;
    v1[145] = 0x8000000258F1D270;
    sub_258F0AA80();
    if (*(v64 + 16) && (v73 = sub_258E2EA2C((v1 + 52)), (v74 & 1) != 0))
    {
      sub_258DE4090(*(v64 + 56) + 32 * v73, (v1 + 99));
      sub_258E0F590((v1 + 52));
      if (swift_dynamicCast())
      {
        v75 = *(v1 + 1645);
      }

      else
      {
        v75 = 2;
      }
    }

    else
    {
      sub_258E0F590((v1 + 52));
      v75 = 2;
    }

    v1[126] = 0xD000000000000015;
    v1[127] = 0x8000000258F1D290;
    sub_258F0AA80();
    if (!*(v64 + 16) || (v76 = sub_258E2EA2C((v1 + 2)), (v77 & 1) == 0))
    {
      sub_258E0F590((v1 + 2));
LABEL_31:
      v78 = 2;
LABEL_32:
      v79 = 1;
      goto LABEL_33;
    }

    sub_258DE4090(*(v64 + 56) + 32 * v76, (v1 + 79));
    sub_258E0F590((v1 + 2));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_31;
    }

    if ((*(v1 + 1644) & 1) == 0)
    {
      v78 = 0;
      goto LABEL_32;
    }

    v78 = 1;
    v79 = 2;
LABEL_33:
    v330 = v79;
    if (v75 != 2 && (v75 & 1) != 0)
    {
      v80 = 2;
LABEL_40:
      v327 = v80;
      goto LABEL_41;
    }

    if (v78 == 2 || (v78 & 1) == 0)
    {
      v80 = 1;
      goto LABEL_40;
    }

    v327 = 0;
LABEL_41:
    v1[154] = 0xD000000000000025;
    v1[155] = 0x8000000258F1AD60;
    sub_258F0AA80();
    if (!*(v365 + 16) || (v81 = sub_258E2EA2C((v1 + 62)), (v82 & 1) == 0))
    {
      sub_258E0F590((v1 + 62));
LABEL_46:
      v83 = 0;
      goto LABEL_47;
    }

    sub_258DE4090(*(v365 + 56) + 32 * v81, (v1 + 75));
    sub_258E0F590((v1 + 62));
    if (!swift_dynamicCast())
    {
      goto LABEL_46;
    }

    v83 = *v284;
LABEL_47:
    v1[142] = 0xD000000000000029;
    v1[143] = 0x8000000258F1AD90;
    sub_258F0AA80();
    if (!*(v365 + 16) || (v84 = sub_258E2EA2C((v1 + 57)), (v85 & 1) == 0))
    {
      sub_258E0F590((v1 + 57));
LABEL_52:
      v86 = 0;
      goto LABEL_53;
    }

    sub_258DE4090(*(v365 + 56) + 32 * v84, (v1 + 87));
    sub_258E0F590((v1 + 57));
    if (!swift_dynamicCast())
    {
      goto LABEL_52;
    }

    v86 = *v286;
LABEL_53:
    if (v75 == 2 || v78 == 2 || (v75 & 1) != 0 || v83 || v86 || (v78 & 1) == 0)
    {
      break;
    }

    v23 = v354;
LABEL_15:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  v321 = v86;
  v305 = v83;
  v87 = v1[177];
  v88 = sub_258F09A70();
  v89 = *(v88 - 8);
  v339 = *(v89 + 56);
  v339(v87, 1, 1, v88);
  v1[138] = 0xD000000000000015;
  v1[139] = 0x8000000258F189D0;
  sub_258F0AA80();
  v90 = v365;
  if (*(v365 + 16) && (v91 = sub_258E2EA2C((v1 + 47)), (v92 & 1) != 0))
  {
    sub_258DE4090(*(v365 + 56) + 32 * v91, v318);
  }

  else
  {
    *v318 = 0u;
    v318[1] = 0u;
  }

  sub_258E0F590((v1 + 47));
  v308 = v89;
  if (v1[98])
  {
    if (swift_dynamicCast())
    {
      v93 = v1[177];
      v94 = v1[176];
      v95 = v1[160];
      v96 = v1[161];
      sub_258F09A30();

      sub_258DE2184(v93, &qword_27F988730, &unk_258F0F8E0);
      v90 = v365;
      sub_258E2EAD8(v94, v93, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_70;
    }
  }

  else
  {
    sub_258DE2184(v318, &qword_27F989868, &unk_258F12D70);
  }

  v97 = sub_258F0A350();
  v98 = sub_258F0A820();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_258DD8000, v97, v98, "observed NilDeviceAggregationId", v99, 2u);
    v100 = v99;
    v90 = v365;
    MEMORY[0x259C9EF40](v100, -1, -1);
  }

  v101 = __OFADD__(v290++, 1);
  if (v101)
  {
    goto LABEL_199;
  }

LABEL_70:
  v339(v1[175], 1, 1, v88);
  v1[136] = 0xD000000000000013;
  v1[137] = 0x8000000258F1A5E0;
  sub_258F0AA80();
  if (*(v90 + 16) && (v102 = sub_258E2EA2C((v1 + 42)), (v103 & 1) != 0))
  {
    sub_258DE4090(*(v90 + 56) + 32 * v102, v315);
  }

  else
  {
    *v315 = 0u;
    v315[1] = 0u;
  }

  sub_258E0F590((v1 + 42));
  if (v1[110])
  {
    if (swift_dynamicCast())
    {
      v104 = v1[176];
      v105 = v1[175];
      v106 = v1[128];
      v107 = v1[129];
      sub_258F09A30();

      sub_258DE2184(v105, &qword_27F988730, &unk_258F0F8E0);
      v90 = v365;
      sub_258E2EAD8(v104, v105, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_81;
    }
  }

  else
  {
    sub_258DE2184(v315, &qword_27F989868, &unk_258F12D70);
  }

  v108 = sub_258F0A350();
  v109 = sub_258F0A820();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    _os_log_impl(&dword_258DD8000, v108, v109, "observed NilUserAggregationId", v110, 2u);
    v111 = v110;
    v90 = v365;
    MEMORY[0x259C9EF40](v111, -1, -1);
  }

  v101 = __OFADD__(v288++, 1);
  if (v101)
  {
    goto LABEL_200;
  }

LABEL_81:
  v1[162] = 0xD000000000000029;
  v1[163] = 0x8000000258F18AC0;
  sub_258F0AA80();
  if (*(v90 + 16) && (v112 = sub_258E2EA2C((v1 + 37)), (v113 & 1) != 0))
  {
    sub_258DE4090(*(v90 + 56) + 32 * v112, v312);
  }

  else
  {
    *v312 = 0u;
    v312[1] = 0u;
  }

  sub_258E0F590((v1 + 37));
  if (v1[122])
  {
    v114 = swift_dynamicCast();
    if (v114)
    {
      v115 = *v273;
    }

    else
    {
      v115 = 0;
    }

    v116 = v114 ^ 1;
  }

  else
  {
    sub_258DE2184(v312, &qword_27F989868, &unk_258F12D70);
    v115 = 0;
    v116 = 1;
  }

  v299 = v116;
  v1[134] = 0xD00000000000002BLL;
  v1[135] = 0x8000000258F18AF0;
  sub_258F0AA80();
  if (*(v90 + 16) && (v117 = sub_258E2EA2C((v1 + 32)), (v118 & 1) != 0))
  {
    sub_258DE4090(*(v90 + 56) + 32 * v117, v62);
  }

  else
  {
    *v62 = 0u;
    v62[1] = 0u;
  }

  sub_258E0F590((v1 + 32));
  if (v1[74])
  {
    v119 = swift_dynamicCast();
    if (v119)
    {
      v120 = *v272;
    }

    else
    {
      v120 = 0;
    }

    v121 = v119 ^ 1;
  }

  else
  {
    sub_258DE2184(v62, &qword_27F989868, &unk_258F12D70);
    v120 = 0;
    v121 = 1;
  }

  v296 = v121;
  v324 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
  v1[140] = 0x61645F746E657665;
  v1[141] = 0xEA00000000006574;
  sub_258F0AA80();
  sub_258E262F8((v1 + 22), v90, v1 + 115);
  sub_258E0F590((v1 + 22));
  v302 = v115;
  v297 = v120;
  if (!v1[118])
  {
    sub_258DE2184((v1 + 115), &qword_27F989868, &unk_258F12D70);
LABEL_107:
    if (__OFADD__(v294, 1))
    {
      goto LABEL_198;
    }

    ++v294;
    goto LABEL_109;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_107;
  }

  v122 = v1[152];
  v123 = v1[153];
  v124 = *(v279 + v270);
  v125 = sub_258F0A4E0();

  v126 = [v124 dateFromString_];

  if (!v126)
  {
    goto LABEL_107;
  }

  v127 = v1[187];
  v128 = v1[184];
  v129 = v1[183];
  v130 = v1[180];
  v131 = v1[178];
  sub_258F09A00();

  sub_258F09AC0();
  sub_258F09950();
  v271(v130, v131);
  if (sub_258F099C0())
  {
    v132 = v1[184];
    v133 = v1[183];
    v134 = v1[181];
    v135 = v1[177];
    v136 = v1[175];

    v137 = *v269;
    (*v269)(v133, v134);
    v137(v132, v134);
    sub_258DE2184(v136, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v135, &qword_27F988730, &unk_258F0F8E0);
LABEL_126:
    v23 = v354;
    goto LABEL_15;
  }

  if (v324)
  {
    v172 = v1[191];
    v173 = v1[184];
    v174 = v1[181];
    v175 = v1[180];
    v176 = v1[178];
    v177 = v324;
    sub_258F09AC0();
    sub_258F09930();
    v271(v175, v176);
    sub_258F099E0();
    v179 = v178;
    v180 = v178;
    v181 = *v269;
    (*v269)(v172, v174);
    if ((*&v180 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_201;
    }

    if (v179 <= -1.0)
    {
      goto LABEL_202;
    }

    if (v179 >= 1.84467441e19)
    {
      goto LABEL_203;
    }

    [v177 setStartTimestampInSecondsSince1970_];

    v1[158] = 0xD000000000000018;
    v1[159] = 0x8000000258F1A780;
    v182 = v177;
    sub_258F0AA80();
    sub_258E262F8((v1 + 12), v365, v1 + 83);
    sub_258E0F590((v1 + 12));
    if (v1[86])
    {
      if (swift_dynamicCast())
      {
        v183 = *v264;
      }

      else
      {
        v183 = 86400;
      }
    }

    else
    {
      v183 = 86400;
      sub_258DE2184((v1 + 83), &qword_27F989868, &unk_258F12D70);
    }

    [v182 setNumberOfSeconds_];
  }

  else
  {
    v181 = *v269;
  }

  v184 = v1[184];
  v185 = v1[181];
  v181(v1[183], v185);
  v181(v184, v185);
LABEL_109:
  v138 = v1[185];
  v139 = v1[177];
  v140 = v1[175];
  v141 = v1[169];
  v142 = type metadata accessor for DeviceSegmentsCohortsImpl(0);
  v143 = *(v142 + 48);
  v144 = *(v142 + 52);
  v145 = swift_allocObject();
  v146 = v145 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata;
  v147 = type metadata accessor for EventMetadata(0);
  v148 = *(*(v147 - 1) + 56);
  v148(v146, 1, 1, v147);
  *(v145 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_deviceSegmentsReported) = 0;
  (*(v308 + 16))(v141, v279 + v278, v88);
  v339(v141, 0, 1, v88);
  sub_258DE20C0(v139, v141 + v147[5], &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(v140, v141 + v147[6], &qword_27F988730, &unk_258F0F8E0);
  sub_258F099E0();
  if ((*&v149 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v149 <= -1.0)
    {
      goto LABEL_195;
    }

    if (v149 >= 1.84467441e19)
    {
      goto LABEL_196;
    }

    if (!is_mul_ok(v149, 0x3E8uLL))
    {
      goto LABEL_197;
    }

    v292 = 1000 * v149;
    v1 = v287;
    v334 = v287[173];
    v150 = v287[169];
    v309 = v287[168];
    v151 = objc_opt_self();
    v340 = v324;
    v152 = [v151 sharedPreferences];
    v153 = [v152 longLivedIdentifierUploadingEnabled];

    v154 = v150 + v147[7];
    *v154 = v292;
    *(v154 + 8) = 0;
    *(v150 + v147[8]) = v324;
    v155 = v150 + v147[9];
    *v155 = v302;
    *(v155 + 8) = v299;
    v156 = v150 + v147[10];
    *v156 = v297;
    *(v156 + 8) = v296;
    v157 = v150 + v147[11];
    *v157 = 0;
    *(v157 + 4) = 1;
    *(v150 + v147[12]) = v153 ^ 1;
    v148(v150, 0, 1, v147);
    sub_258E2EAD8(v150, v309, &qword_27F9894E0, &unk_258F106A0);
    swift_beginAccess();
    sub_258E2EA70(v309, v146, &qword_27F9894E0, &unk_258F106A0);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FD0, &qword_258F13730);
    v158 = swift_allocObject();
    *(v158 + 16) = xmmword_258F0B820;
    *(v158 + 32) = v327;
    *(v158 + 36) = 0;
    *(v158 + 40) = v330;
    *(v158 + 44) = 0;
    *(v158 + 48) = v305;
    *(v158 + 52) = 0;
    *(v158 + 56) = v321;
    *(v158 + 60) = 0;
    sub_258DE20C0(v146, v334, &qword_27F9894E0, &unk_258F106A0);
    swift_setDeallocating();
    sub_258DE2184(v145 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata, &qword_27F9894E0, &unk_258F106A0);
    v159 = *(*v145 + 48);
    v160 = *(*v145 + 52);
    swift_deallocClassInstance();
    *(v334 + *(v274 + 20)) = v158;
    *(v334 + *(v274 + 24)) = 0;
    v287[148] = 0x61645F746E657665;
    v287[149] = 0xEA00000000006574;
    sub_258F0AA80();
    sub_258E262F8((v1 + 17), v365, v1 + 91);

    sub_258E0F590((v287 + 17));
    if (v287[94])
    {
      v62 = v276;
      if (swift_dynamicCast())
      {
        v161 = v287[150];
        v162 = v287[151];
        if (*(v277 + 16) && (sub_258E2E9B4(v287[150], v287[151]), (v163 & 1) != 0))
        {
        }

        else
        {
          v165 = swift_isUniquelyReferenced_nonNull_native();
          v368[0] = v367;
          sub_258ED76BC(MEMORY[0x277D84F90], v305 | (v321 << 32), v161, v162, v165);

          v277 = v368[0];
          v367 = v368[0];
        }
      }

      v164 = v345;
    }

    else
    {
      sub_258DE2184((v287 + 91), &qword_27F989868, &unk_258F12D70);
      v164 = v345;
      v62 = v276;
    }

    sub_258EDA33C(v287[173], v287[172], type metadata accessor for DeviceSegmentsCohorts);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v164 = sub_258DE2A9C(0, v164[2] + 1, 1, v164);
    }

    v167 = v164[2];
    v166 = v164[3];
    v345 = v164;
    if (v167 >= v166 >> 1)
    {
      v345 = sub_258DE2A9C(v166 > 1, v167 + 1, 1, v164);
    }

    v168 = v287[177];
    v169 = v287[175];
    v170 = v287[173];
    v171 = v287[172];

    sub_258EDA40C(v170, type metadata accessor for DeviceSegmentsCohorts);
    sub_258DE2184(v169, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v168, &qword_27F988730, &unk_258F0F8E0);
    *(v345 + 16) = v167 + 1;
    sub_258EDA3A4(v171, v345 + ((*(v275 + 80) + 32) & ~*(v275 + 80)) + *(v275 + 72) * v167, type metadata accessor for DeviceSegmentsCohorts);
    goto LABEL_126;
  }

  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
}

uint64_t sub_258ED3DB0(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v25 = a2;
  v5 = sub_258F0A300();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_258F0A2C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_258F0A2D0();
  sub_258F0A310();
  v24 = sub_258F0A850();
  result = sub_258F0A900();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v12 + 8))(v16, v11);
  }

  if ((a4 & 1) == 0)
  {
    v19 = v25;
    if (v25)
    {
LABEL_9:

      sub_258F0A340();

      if ((*(v6 + 88))(v10, v5) == *MEMORY[0x277D85B00])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v10, v5);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_258F0A2B0();
      _os_signpost_emit_with_name_impl(&dword_258DD8000, v17, v24, v22, v19, v20, v21, 2u);
      MEMORY[0x259C9EF40](v21, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v25 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v25 & 0xFFFFF800) != 0xD800)
  {
    if (v25 >> 16 <= 0x10)
    {
      v19 = &v26;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_258ED404C(uint64_t *a1, uint64_t *a2, size_t *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v107 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v106 = &v89 - v14;
  v15 = type metadata accessor for DeviceBatchData(0);
  v104 = *(v15 - 8);
  v105 = v15;
  v16 = *(v104 + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v89 - v22;
  v109 = sub_258F09A70();
  v24 = *(v109 - 8);
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v109, v26);
  v108 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v115 = &v89 - v30;
  v31 = *a1;
  v32 = a1[1];
  v33 = *a2;
  if (*(*a2 + 16) && (v34 = sub_258E2E9B4(v31, v32), (v35 & 1) != 0))
  {
    v36 = *(*(v33 + 56) + 16 * v34);

    if (v37)
    {
    }
  }

  else
  {
    v37 = 0;
  }

  v90 = v37;

  v38 = *a2;
  if (*(*a2 + 16) && (v39 = sub_258E2E9B4(v31, v32), (v40 & 1) != 0))
  {
    v41 = *(v38 + 56) + 16 * v39;
    v42 = *v41;
    v43 = *(v41 + 8);
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  if (v44)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  v102 = v45;
  v103 = v44;

  v46 = *a2;
  if (*(*a2 + 16) && (v47 = sub_258E2E9B4(v31, v32), (v48 & 1) != 0))
  {
    v49 = *(v46 + 56) + 16 * v47;
    v50 = *v49;
    v51 = *(v49 + 12);
  }

  else
  {
    v51 = 0;
    v50 = 0;
  }

  if (v50)
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v101 = v52;

  result = v90;
  if (v90)
  {
    v54 = *(v90 + 16);
    if (v54)
    {
      v89 = v4;
      v56 = *(v24 + 16);
      v55 = v24 + 16;
      v57 = v90 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
      v95 = (v55 + 40);
      v96 = v56;
      v94 = (v55 + 16);
      v93 = *(v55 + 56);
      v98 = v55;
      v92 = (v55 - 8);
      v58 = v108;
      v59 = v109;
      v99 = a3;
      v100 = v20;
      v97 = v50;
      v91 = v23;
      do
      {
        v113 = v57;
        v114 = v54;
        v111 = v103 == 0;
        v112 = v50 == 0;
        v60 = v96;
        (v96)(v115);
        sub_258F09A60();
        v61 = type metadata accessor for DeviceBatchDataBuilderImpl(0);
        v62 = *(v61 + 48);
        v63 = *(v61 + 52);
        v64 = swift_allocObject();
        v110 = OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_odbatchId;
        v65 = *v95;
        (*v95)(v64 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_odbatchId, 1, 1, v59);
        v66 = OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_originalClockId;
        v65(v64 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_originalClockId, 1, 1, v59);
        v67 = v64 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_daysWithTwoValidAssistantTurnsPerWeek;
        *v67 = 0;
        *(v67 + 4) = 1;
        v68 = v64 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_daysWithTwoAssistantSpeechRequestsPerWeek;
        *v68 = 0;
        *(v68 + 4) = 1;
        v69 = v58;
        v70 = v59;
        v71 = v106;
        v60(v106, v69, v70);
        v65(v71, 0, 1, v70);
        v72 = v107;
        sub_258E2EAD8(v71, v107, &qword_27F988730, &unk_258F0F8E0);
        v73 = v110;
        swift_beginAccess();
        sub_258E2EA70(v72, v64 + v73, &qword_27F988730, &unk_258F0F8E0);
        swift_endAccess();
        (*v94)(v71, v115, v70);
        v65(v71, 0, 1, v70);
        sub_258E2EAD8(v71, v72, &qword_27F988730, &unk_258F0F8E0);
        swift_beginAccess();
        sub_258E2EA70(v72, v64 + v66, &qword_27F988730, &unk_258F0F8E0);
        swift_endAccess();
        v74 = v91;
        sub_258DE20C0(v64 + v73, v91, &qword_27F988730, &unk_258F0F8E0);
        v75 = v105;
        v76 = v64 + v66;
        v77 = v99;
        sub_258DE20C0(v76, v74 + *(v105 + 20), &qword_27F988730, &unk_258F0F8E0);
        swift_setDeallocating();
        sub_258DE2184(v64 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_odbatchId, &qword_27F988730, &unk_258F0F8E0);
        sub_258DE2184(v64 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_originalClockId, &qword_27F988730, &unk_258F0F8E0);
        v78 = *(*v64 + 48);
        v79 = *(*v64 + 52);
        swift_deallocClassInstance();
        v80 = v74 + *(v75 + 24);
        *v80 = v102;
        *(v80 + 4) = v111;
        v81 = *(v75 + 28);
        v82 = v100;
        v83 = v74 + v81;
        *v83 = v101;
        *(v83 + 4) = v112;
        sub_258EDA33C(v74, v82, type metadata accessor for DeviceBatchData);
        v84 = *v77;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v77 = v84;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v84 = sub_258DE2D40(0, v84[2] + 1, 1, v84);
          *v77 = v84;
        }

        v87 = v84[2];
        v86 = v84[3];
        v58 = v108;
        v59 = v109;
        v50 = v97;
        if (v87 >= v86 >> 1)
        {
          *v77 = sub_258DE2D40(v86 > 1, v87 + 1, 1, v84);
        }

        sub_258EDA40C(v74, type metadata accessor for DeviceBatchData);
        (*v92)(v58, v59);
        v88 = *v77;
        v88[2] = v87 + 1;
        sub_258EDA3A4(v82, v88 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v87, type metadata accessor for DeviceBatchData);
        v57 = v113 + v93;
        v54 = v114 - 1;
      }

      while (v114 != 1);
    }
  }

  return result;
}

uint64_t sub_258ED47C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = sub_258F09B00();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v45, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258F09A20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v39 - v18;
  (*(v12 + 16))(&v39 - v18, a1, v11);
  v20 = sub_258EDA2F4(&qword_27F989870, MEMORY[0x277CC9578]);
  v46 = a2;
  v43 = v20;
  v21 = sub_258F0A4A0();
  v40 = v12;
  if (v21)
  {
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
    v25 = *(v3 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlDateFormatter);
    v41 = (v6 + 8);
    v42 = v25;
    v26 = (v12 + 8);
    v27 = (v12 + 32);
    v22 = MEMORY[0x277D84F90];
    do
    {
      v47 = 39;
      v48 = 0xE100000000000000;
      v28 = sub_258F099A0();
      v29 = [v42 stringFromDate_];

      v30 = sub_258F0A4F0();
      v32 = v31;

      MEMORY[0x259C9DEB0](v30, v32);

      MEMORY[0x259C9DEB0](39, 0xE100000000000000);
      v33 = v47;
      v34 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_258DE2990(0, *(v22 + 2) + 1, 1, v22);
      }

      v36 = *(v22 + 2);
      v35 = *(v22 + 3);
      if (v36 >= v35 >> 1)
      {
        v22 = sub_258DE2990((v35 > 1), v36 + 1, 1, v22);
      }

      *(v22 + 2) = v36 + 1;
      v37 = &v22[16 * v36];
      *(v37 + 4) = v33;
      *(v37 + 5) = v34;
      sub_258F09AC0();
      v38 = v44;
      sub_258F09960();
      (*v41)(v10, v45);
      (*v26)(v19, v11);
      (*v27)(v19, v38, v11);
    }

    while ((sub_258F0A4A0() & 1) == 0);
  }

  v47 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
  sub_258E99738();
  v23 = sub_258F0A490();

  (*(v40 + 8))(v19, v11);
  return v23;
}

uint64_t SiriSegmentCohortCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_analyticsEventSubmitter));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bugReporter);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bookmarkService));
  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_biomeResultsFactory);

  v5 = OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_oddId;
  v6 = sub_258F09A70();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t SiriSegmentCohortCalculator.__deallocating_deinit()
{
  SiriSegmentCohortCalculator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258ED4D88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_logger;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_258ED4E10(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258ED0E2C(a1);
}

uint64_t sub_258ED4EAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B90, &unk_258F0D0F0);
  v36 = a2;
  result = sub_258F0ABC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_258DEB8B8(v25, v37);
      }

      else
      {
        sub_258DE4090(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_258F0AE40();
      sub_258F0A5B0();
      result = sub_258F0AE90();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_258DEB8B8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_258ED5164(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B58, &unk_258F0D720);
  result = sub_258F0ABC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_258DEB8B8((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_258DEB85C(v24, &v38);
        sub_258DE4090(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_258F0AA60();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_258DEB8B8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_258ED541C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988BB0, &qword_258F0D110);
  v38 = a2;
  result = sub_258F0ABC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_258F0AE40();
      sub_258F0A5B0();
      result = sub_258F0AE90();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_258ED56E4(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for EventMetadata(0);
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v46 = a2;
  result = sub_258F0ABC0();
  v18 = result;
  if (*(v15 + 16))
  {
    v44 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v45 + 72);
      v32 = *(v15 + 48) + v31 * v30;
      if (v46)
      {
        sub_258EDA3A4(v32, v14, type metadata accessor for EventMetadata);
        v47 = *(*(v15 + 56) + 16 * v30);
      }

      else
      {
        sub_258EDA33C(v32, v14, type metadata accessor for EventMetadata);
        v47 = *(*(v15 + 56) + 16 * v30);
        v33 = v47;
      }

      v34 = *(v18 + 40);
      sub_258F0AE40();
      EventMetadata.hash(into:)();
      result = sub_258F0AE90();
      v35 = -1 << *(v18 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v25 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v25 + 8 * v37);
          if (v41 != -1)
          {
            v26 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v36) & ~*(v25 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_258EDA3A4(v14, *(v18 + 48) + v31 * v26, type metadata accessor for EventMetadata);
      *(*(v18 + 56) + 16 * v26) = v47;
      ++*(v18 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v7 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v15 + 32);
    v7 = v44;
    if (v42 >= 64)
    {
      bzero((v15 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v42;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_258ED5A6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B88, &unk_258F16160);
  v39 = a2;
  result = sub_258F0ABC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_258F0AE40();
      sub_258F0A5B0();
      result = sub_258F0AE90();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_258ED5D10(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_258F09A20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v17 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v48 = a2;
  result = sub_258F0ABC0();
  v19 = result;
  if (*(v16 + 16))
  {
    v52 = v15;
    v44 = v7;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v45 = (v11 + 16);
    v46 = v16;
    v47 = v11;
    v49 = (v11 + 32);
    v26 = result + 64;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v31 = v28 | (v20 << 6);
      v32 = *(v16 + 48);
      v51 = *(v47 + 72);
      v33 = v32 + v51 * v31;
      if (v48)
      {
        (*v49)(v52, v33, v10);
        v50 = *(*(v16 + 56) + 8 * v31);
      }

      else
      {
        (*v45)(v52, v33, v10);
        v50 = *(*(v16 + 56) + 8 * v31);
      }

      v34 = *(v19 + 40);
      sub_258EDA2F4(&qword_27F989518, MEMORY[0x277CC9578]);
      result = sub_258F0A440();
      v35 = -1 << *(v19 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v26 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v26 + 8 * v37);
          if (v41 != -1)
          {
            v27 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v36) & ~*(v26 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      result = (*v49)(*(v19 + 48) + v51 * v27, v52, v10);
      *(*(v19 + 56) + 8 * v27) = v50;
      ++*(v19 + 16);
      v16 = v46;
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v20 >= v25)
      {
        break;
      }

      v30 = v21[v20];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v7 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v16 + 32);
    v7 = v44;
    if (v42 >= 64)
    {
      bzero(v21, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v42;
    }

    *(v16 + 16) = 0;
  }

LABEL_36:
  *v7 = v19;
  return result;
}

uint64_t sub_258ED60EC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for EventMetadata(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A718, &unk_258F16188);
  v48 = a2;
  result = sub_258F0ABC0();
  v14 = v11;
  v15 = result;
  if (*(v11 + 16))
  {
    v45 = v3;
    v46 = v11;
    v16 = 0;
    v17 = (v11 + 64);
    v18 = 1 << *(v11 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v11 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v47 + 72);
      v29 = *(v14 + 48) + v28 * v27;
      if (v48)
      {
        sub_258EDA3A4(v29, v10, type metadata accessor for EventMetadata);
        v30 = *(v14 + 56);
        v31 = v10;
        v32 = *(v30 + 8 * v27);
      }

      else
      {
        sub_258EDA33C(v29, v10, type metadata accessor for EventMetadata);
        v33 = *(v14 + 56);
        v31 = v10;
        v32 = *(v33 + 8 * v27);
      }

      v34 = *(v15 + 40);
      sub_258F0AE40();
      v35 = v31;
      EventMetadata.hash(into:)();
      result = sub_258F0AE90();
      v36 = -1 << *(v15 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_258EDA3A4(v35, *(v15 + 48) + v28 * v23, type metadata accessor for EventMetadata);
      *(*(v15 + 56) + 8 * v23) = v32;
      v10 = v35;
      ++*(v15 + 16);
      v14 = v46;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v43 = 1 << *(v14 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v17, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v43;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_258ED6470(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A710, &unk_258F16178);
  v42 = a2;
  result = sub_258F0ABC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = *v27;
      v29 = v27[1];
      if ((v42 & 1) == 0)
      {
        v30 = v24[1];
      }

      v31 = *(v8 + 40);
      sub_258F0AE40();
      sub_258F0A5B0();
      result = sub_258F0AE90();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v28;
      v19[1] = v29;
      ++*(v8 + 16);
      v5 = v41;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_258ED674C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FunnelEventMetadata(0);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A708, &qword_258F16170);
  v42 = a2;
  result = sub_258F0ABC0();
  v14 = result;
  if (*(v11 + 16))
  {
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v41 + 72);
      v28 = *(v11 + 48) + v27 * v26;
      if (v42)
      {
        sub_258EDA3A4(v28, v10, type metadata accessor for FunnelEventMetadata);
        v43 = *(*(v11 + 56) + 16 * v26);
      }

      else
      {
        sub_258EDA33C(v28, v10, type metadata accessor for FunnelEventMetadata);
        v43 = *(*(v11 + 56) + 16 * v26);
        v29 = v43;
      }

      v30 = *(v14 + 40);
      sub_258F0AE40();
      FunnelEventMetadata.hash(into:)();
      result = sub_258F0AE90();
      v31 = -1 << *(v14 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_258EDA3A4(v10, *(v14 + 48) + v27 * v22, type metadata accessor for FunnelEventMetadata);
      *(*(v14 + 56) + 16 * v22) = v43;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v11 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v11 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_258ED6AD4(unint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for EventMetadata(0);
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v31, v6);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = (sub_258F0A9E0() + 1) & ~v10;
    v14 = *(v4 + 72);
    v32 = a2 + 64;
    do
    {
      v15 = v14;
      v16 = v14 * v11;
      v17 = a1;
      v18 = v33;
      sub_258EDA33C(*(a2 + 48) + v14 * v11, v33, type metadata accessor for EventMetadata);
      v19 = *(a2 + 40);
      sub_258F0AE40();
      EventMetadata.hash(into:)();
      v20 = sub_258F0AE90();
      v21 = v18;
      a1 = v17;
      result = sub_258EDA40C(v21, type metadata accessor for EventMetadata);
      v22 = v20 & v12;
      if (v17 >= v13)
      {
        if (v22 < v13)
        {
          v9 = v32;
          v14 = v15;
          goto LABEL_4;
        }

        v14 = v15;
        if (v17 >= v22)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v14 = v15;
        if (v22 >= v13 || v17 >= v22)
        {
LABEL_11:
          v23 = *(a2 + 48);
          v24 = v14 * v17;
          result = v23 + v14 * v17;
          if (v14 * v17 < v16 || result >= v23 + v16 + v14)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v9 = v32;
          }

          else
          {
            v9 = v32;
            if (v24 != v16)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = *(a2 + 56);
          v26 = (v25 + 8 * a1);
          v27 = (v25 + 8 * v11);
          if (a1 != v11 || v26 >= v27 + 1)
          {
            *v26 = *v27;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      v9 = v32;
LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_258ED6D90(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258F0A9E0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_258F0AE40();

      sub_258F0A5B0();
      v13 = sub_258F0AE90();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_258ED6F40(int64_t a1, uint64_t a2)
{
  v44 = sub_258F09A20();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v44, v6);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v45 = v8;
    v14 = sub_258F0A9E0();
    v15 = v44;
    v8 = v45;
    v16 = v13;
    v42 = (v14 + 1) & v13;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v40 = a2 + 64;
    v41 = v18;
    v19 = *(v17 + 56);
    v39 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v12;
      v22 = v43;
      v23 = v16;
      v24 = v17;
      v25 = v8;
      v41(v43, *(v8 + 48) + v19 * v12, v15);
      v26 = *(v25 + 40);
      sub_258EDA2F4(&qword_27F989518, MEMORY[0x277CC9578]);
      v27 = sub_258F0A440();
      result = (*v39)(v22, v15);
      v16 = v23;
      v28 = v27 & v23;
      if (a1 >= v42)
      {
        if (v28 >= v42 && a1 >= v28)
        {
LABEL_15:
          v8 = v45;
          v31 = *(v45 + 48);
          result = v31 + v20 * a1;
          v17 = v24;
          if (v20 * a1 < v21 || (v19 = v20, result >= v31 + v21 + v20))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v45;
            v19 = v20;
            v16 = v23;
            v10 = v40;
          }

          else
          {
            v10 = v40;
            if (v20 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v8 = v45;
              v19 = v20;
              v16 = v23;
            }
          }

          v32 = *(v8 + 56);
          v33 = (v32 + 8 * a1);
          v34 = (v32 + 8 * v12);
          if (a1 != v12 || v33 >= v34 + 1)
          {
            *v33 = *v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v28 >= v42 || a1 >= v28)
      {
        goto LABEL_15;
      }

      v17 = v24;
      v10 = v40;
      v19 = v20;
      v8 = v45;
LABEL_4:
      v12 = (v12 + 1) & v16;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v8 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v37;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_258ED7260(unint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for FunnelEventMetadata(0);
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v31, v6);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = (sub_258F0A9E0() + 1) & ~v10;
    v14 = *(v4 + 72);
    v32 = a2 + 64;
    do
    {
      v15 = v14;
      v16 = v14 * v11;
      v17 = a1;
      v18 = v33;
      sub_258EDA33C(*(a2 + 48) + v14 * v11, v33, type metadata accessor for FunnelEventMetadata);
      v19 = *(a2 + 40);
      sub_258F0AE40();
      FunnelEventMetadata.hash(into:)();
      v20 = sub_258F0AE90();
      v21 = v18;
      a1 = v17;
      result = sub_258EDA40C(v21, type metadata accessor for FunnelEventMetadata);
      v22 = v20 & v12;
      if (v17 >= v13)
      {
        if (v22 < v13)
        {
          v9 = v32;
          v14 = v15;
          goto LABEL_4;
        }

        v14 = v15;
        if (v17 >= v22)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v14 = v15;
        if (v22 >= v13 || v17 >= v22)
        {
LABEL_11:
          v23 = *(a2 + 48);
          v24 = v14 * v17;
          result = v23 + v14 * v17;
          if (v14 * v17 < v16 || result >= v23 + v16 + v14)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v9 = v32;
          }

          else
          {
            v9 = v32;
            if (v24 != v16)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = *(a2 + 56);
          v26 = (v25 + 16 * a1);
          v27 = (v25 + 16 * v11);
          if (a1 != v11 || v26 >= v27 + 1)
          {
            *v26 = *v27;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      v9 = v32;
LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_258ED7530(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_258E2E9B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_258ED5A6C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_258E2E9B4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_258F0ADC0();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_258ED88FC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_258ED76BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_258E2E9B4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_258ED6470(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_258E2E9B4(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_258F0ADC0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_258ED8CB4();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t sub_258ED7850()
{
  result = qword_27F98A6D8;
  if (!qword_27F98A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A6D8);
  }

  return result;
}

uint64_t sub_258ED78A4(uint64_t a1)
{
  result = sub_258EDA2F4(&qword_27F98A6E0, type metadata accessor for SiriSegmentCohortCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258ED78FC(uint64_t a1)
{
  result = sub_258EDA2F4(&qword_27F98A6E8, type metadata accessor for SiriSegmentCohortCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258ED7954()
{
  result = qword_27F98A6F0;
  if (!qword_27F98A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A6F0);
  }

  return result;
}

uint64_t sub_258ED79A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_258ED79F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_258ED7A48()
{
  v0 = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_258DE3B74();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_258F09A70();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of SiriSegmentCohortCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t sub_258ED7CD8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v31 = a4;
  v32 = a5;
  v6 = v5;
  v10 = sub_258F09A20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v5;
  v18 = sub_258E2EED8(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      sub_258ED8E48(v31, v32);
      goto LABEL_7;
    }

    sub_258ED5D10(v21, a3 & 1, v31, v32);
    v28 = *v6;
    v29 = sub_258E2EED8(a2);
    if ((v22 & 1) == (v30 & 1))
    {
      v18 = v29;
      v24 = *v6;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v15, a2, v10);
      return sub_258ED8284(v18, v15, a1, v24);
    }

LABEL_15:
    result = sub_258F0ADC0();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v6;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = v24[7];
  v26 = *(v25 + 8 * v18);
  *(v25 + 8 * v18) = a1;
}

void sub_258ED7EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for FunnelEventMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v4;
  v17 = sub_258E2F028(a3);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 >= v20 && (a4 & 1) == 0)
    {
      sub_258ED86C0(type metadata accessor for FunnelEventMetadata, &qword_27F98A708, &qword_258F16170, type metadata accessor for FunnelEventMetadata);
      goto LABEL_7;
    }

    sub_258ED674C(v20, a4 & 1);
    v27 = *v5;
    v28 = sub_258E2F028(a3);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v5;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_258EDA33C(a3, v14, type metadata accessor for FunnelEventMetadata);
      sub_258ED8110(v17, v14, a1, a2, v23, type metadata accessor for FunnelEventMetadata, type metadata accessor for FunnelEventMetadata);
      return;
    }

LABEL_15:
    sub_258F0ADC0();
    __break(1u);
    return;
  }

LABEL_7:
  v23 = *v5;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = (v23[7] + 16 * v17);
  v25 = v24[1];
  v31 = *v24;
  *v24 = a1;
  v24[1] = a2;

  v26 = v31;
}

unint64_t sub_258ED80C8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_258ED8110(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a5[6];
  v14 = a6(0);
  result = sub_258EDA3A4(a2, v13 + *(*(v14 - 8) + 72) * a1, a7);
  v16 = (a5[7] + 16 * a1);
  *v16 = a3;
  v16[1] = a4;
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

uint64_t sub_258ED81CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for EventMetadata(0);
  result = sub_258EDA3A4(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for EventMetadata);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_258ED8284(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_258F09A20();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_258ED833C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B90, &unk_258F0D0F0);
  v2 = *v0;
  v3 = sub_258F0ABB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_258DE4090(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_258DEB8B8(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_258ED84E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988BB0, &qword_258F0D110);
  v2 = *v0;
  v3 = sub_258F0ABB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_258ED86C0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v34 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = *v4;
  v15 = sub_258F0ABB0();
  v16 = v15;
  if (*(v14 + 16))
  {
    v34 = v8;
    result = (v15 + 64);
    v18 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v14 || result >= v14 + 64 + 8 * v18)
    {
      result = memmove(result, (v14 + 64), 8 * v18);
    }

    v20 = 0;
    *(v16 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 64);
    v23 = -1;
    if (v21 < 64)
    {
      v23 = ~(-1 << v21);
    }

    v24 = v23 & v22;
    v25 = (v21 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_17:
        v29 = v26 | (v20 << 6);
        v30 = *(v35 + 72) * v29;
        sub_258EDA33C(*(v14 + 48) + v30, v13, a4);
        v29 *= 16;
        v31 = *(v16 + 48);
        v36 = *(*(v14 + 56) + v29);
        sub_258EDA3A4(v13, v31 + v30, a4);
        v32 = v36;
        *(*(v16 + 56) + v29) = v36;
        v33 = v32;
      }

      while (v24);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v8 = v34;
        goto LABEL_21;
      }

      v28 = *(v14 + 64 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v16;
  }

  return result;
}

id sub_258ED88FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B88, &unk_258F16160);
  v2 = *v0;
  v3 = sub_258F0ABB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_258ED8A68()
{
  v1 = v0;
  v2 = type metadata accessor for EventMetadata(0);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A718, &unk_258F16188);
  v6 = *v0;
  v7 = sub_258F0ABB0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v27 = v1;
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v28 = v6 + 64;
    v11 = 0;
    v12 = *(v6 + 16);
    v31 = v8;
    *(v8 + 16) = v12;
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_258EDA33C(*(v6 + 48) + v23, v29, type metadata accessor for EventMetadata);
        v24 = *(*(v6 + 56) + 8 * v21);
        v25 = v31;
        sub_258EDA3A4(v22, *(v31 + 48) + v23, type metadata accessor for EventMetadata);
        *(*(v25 + 56) + 8 * v21) = v24;
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v27;
        v8 = v31;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_258ED8CB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A710, &unk_258F16178);
  v2 = *v0;
  v3 = sub_258F0ABB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = (*(v4 + 48) + v17);
        v24 = v21[1];
        *v23 = v20;
        v23[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_258ED8E48(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v37 = sub_258F09A20();
  v39 = *(v37 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v37, v7);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *v2;
  v10 = sub_258F0ABB0();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v5;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v5 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v11;
  }

  return result;
}

void (*sub_258ED90C0(uint64_t *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x58uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(*(type metadata accessor for EventMetadata(0) - 8) + 64);
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v7[8] = v9;
  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_258EDA33C(a2, v10, type metadata accessor for EventMetadata);
  v7[9] = sub_258EDA1C4(v7);
  v7[10] = sub_258ED964C(v7 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_258ED91BC;
}

void (*sub_258ED91D4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_258EDA1C4(v8);
  v8[9] = sub_258ED9900(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_258ED9280;
}

void sub_258ED9280(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_258ED92E0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_258F09A20();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_258EDA1EC(v7);
  v7[12] = sub_258ED9BCC(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_258ED941C;
}

void sub_258ED941C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_258ED94B4(uint64_t *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x58uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(*(type metadata accessor for FunnelEventMetadata(0) - 8) + 64);
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v7[8] = v9;
  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_258EDA33C(a2, v10, type metadata accessor for FunnelEventMetadata);
  v7[9] = sub_258EDA1C4(v7);
  v7[10] = sub_258ED9EA0(v7 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_258ED95B0;
}

void sub_258ED95C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_258EDA40C(v6, a3);
  v5(v4, 0);
  free(v6);

  free(v4);
}

void (*sub_258ED964C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = *(type metadata accessor for EventMetadata(0) - 8);
  *(v10 + 24) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 32) = v12;
  v13 = *v4;
  v14 = sub_258E2EF70(a2);
  *(v10 + 48) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_258ED8A68();
      v14 = v22;
      goto LABEL_14;
    }

    sub_258ED60EC(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_258E2EF70(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_258F0ADC0();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 40) = v14;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_258ED97F8;
}

void sub_258ED97F8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 48);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[5];
    if ((*a1)[6])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[4];
      sub_258EDA33C(v1[1], v8, type metadata accessor for EventMetadata);
      sub_258ED81CC(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[6])
  {
    v6 = v1[5];
    v7 = *v1[2];
    sub_258EDA40C(*(v7 + 48) + *(v1[3] + 72) * v6, type metadata accessor for EventMetadata);
    sub_258ED6AD4(v6, v7);
  }

  v9 = v1[4];
  v10 = *v1;

  free(v9);

  free(v1);
}

void (*sub_258ED9900(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_258E2E9B4(a2, a3);
  *(v11 + 48) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_258ED8CB4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_258ED6470(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_258E2E9B4(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_258F0ADC0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v24 = (*(*v5 + 56) + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  *v11 = v25;
  v11[1] = v26;
  return sub_258ED9A60;
}

void sub_258ED9A60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  LOBYTE(v5) = *(*a1 + 48);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v6 = v2[5];
    v7 = *v2[4];
    if ((*a1)[6])
    {
      goto LABEL_9;
    }

    v9 = v2[2];
    v8 = v2[3];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v10 = 16 * v6;
    v11 = (v7[6] + v10);
    *v11 = v9;
    v11[1] = v8;
    v5 = (v7[7] + v10);
    *v5 = v4;
    v5[1] = v3;
    v12 = v7[2];
    v13 = __OFADD__(v12, 1);
    v3 = v12 + 1;
    if (!v13)
    {
LABEL_13:
      v7[2] = v3;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v5)
    {
      v15 = v2[5];
      v16 = *v2[4];
      sub_258EDA2A0(*(v16 + 48) + 16 * v15);
      sub_258ED6D90(v15, v16);
    }

    goto LABEL_14;
  }

  v6 = v2[5];
  v7 = *v2[4];
  if ((v5 & 1) == 0)
  {
    v18 = v2[2];
    v17 = v2[3];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v19 = 16 * v6;
    v20 = (v7[6] + v19);
    *v20 = v18;
    v20[1] = v17;
    v21 = (v7[7] + v19);
    *v21 = v4;
    v21[1] = v3;
    v22 = v7[2];
    v13 = __OFADD__(v22, 1);
    v3 = v22 + 1;
    if (v13)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  v14 = (v7[7] + 16 * v6);
  *v14 = v4;
  v14[1] = v3;
LABEL_14:
  v23 = *v2;

  free(v2);
}

void (*sub_258ED9BCC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_258F09A20();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_258E2EED8(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_258ED8E48(&qword_27F988B68, &qword_258F0D0C8);
      v15 = v23;
      goto LABEL_14;
    }

    sub_258ED5D10(v20, a3 & 1, &qword_27F988B68, &qword_258F0D0C8);
    v24 = *v4;
    v15 = sub_258E2EED8(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_258F0ADC0();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return sub_258ED9DA0;
}

void sub_258ED9DA0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      sub_258ED8284(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[2];
    (*(v1[4] + 8))(*(v7 + 48) + *(v1[4] + 72) * v6, v1[3]);
    sub_258ED6F40(v6, v7);
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

void (*sub_258ED9EA0(uint64_t *a1, uint64_t a2, char a3))(void ***a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 16) = a2;
  *(v9 + 24) = v4;
  v11 = *(type metadata accessor for FunnelEventMetadata(0) - 8);
  *(v10 + 32) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 40) = v12;
  v13 = *v4;
  v14 = sub_258E2F028(a2);
  *(v10 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_18;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_258ED86C0(type metadata accessor for FunnelEventMetadata, &qword_27F98A708, &qword_258F16170, type metadata accessor for FunnelEventMetadata);
      v14 = v22;
      goto LABEL_14;
    }

    sub_258ED674C(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_258E2F028(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_18:
    result = sub_258F0ADC0();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v14;
  v25 = 0uLL;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 16 * v14);
  }

  *v10 = v25;
  return sub_258EDA084;
}

void sub_258EDA084(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  v4 = (*a1)[1];
  if (v2)
  {
    v5 = *v1[3];
    v6 = v1[6];
    if ((*a1)[7])
    {
      *(v5[7] + 16 * v6) = **a1;
    }

    else
    {
      v9 = v1[5];
      sub_258EDA33C(v1[2], v9, type metadata accessor for FunnelEventMetadata);
      sub_258ED8110(v6, v9, v2, v4, v5, type metadata accessor for FunnelEventMetadata, type metadata accessor for FunnelEventMetadata);
    }
  }

  else if ((*a1)[7])
  {
    v7 = v1[6];
    v8 = *v1[3];
    sub_258EDA40C(*(v8 + 48) + *(v1[4] + 9) * v7, type metadata accessor for FunnelEventMetadata);
    sub_258ED7260(v7, v8);
  }

  v10 = v1[5];
  v11 = *v1;
  v12 = v1[1];
  sub_258EDA220(v2);
  sub_258EDA260(v11);
  free(v10);

  free(v1);
}

uint64_t (*sub_258EDA1C4(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_258EDA46C;
}

uint64_t (*sub_258EDA1EC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_258EDA214;
}

void *sub_258EDA220(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *sub_258EDA260(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_258EDA2F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258EDA33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258EDA3A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258EDA40C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SiriSegmentCohortDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortDataProvider_logger;
  v7 = sub_258F0A370();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t SiriSegmentCohortDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258EDA58C()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SiriSegmentCohortDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t SiriSegmentCohortDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriSegmentCohortDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EDA768()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EDA56C();
}

uint64_t type metadata accessor for SiriSegmentCohortDataProvider()
{
  result = qword_27F98A738;
  if (!qword_27F98A738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SiriSegmentCohortDataProvider.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t SiriSegmentCohortMetrics.__allocating_init(defaults:logger:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  SiriSegmentCohortMetrics.init(defaults:logger:)(a1, a2);
  return v7;
}

uint64_t sub_258EDAA04@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SiriSegmentCohortMetrics();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t SiriSegmentCohortMetrics.init(defaults:logger:)(void *a1, uint64_t a2)
{
  v144 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v140 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v141 = &v128 - v10;
  v135 = sub_258F09B00();
  v134 = *(v135 - 1);
  v11 = *(v134 + 8);
  MEMORY[0x28223BE20](v135, v12);
  v132 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_258F09A20();
  v131 = *(v133 - 8);
  v14 = *(v131 + 8);
  MEMORY[0x28223BE20](v133, v15);
  v130 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_258F0A370();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v139 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v148 = &v128 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v143 = (&v128 - v27);
  v28 = sub_258F09A70();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v137 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v128 - v35;
  v157 = v18;
  v37 = *(v18 + 16);
  v136 = OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_logger;
  v37(v2 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_logger, a2, v17);
  sub_258F09A60();
  v149 = v29;
  v38 = *(v29 + 32);
  v152 = v2;
  v145 = OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_oddId;
  v138 = v36;
  v150 = v28;
  v38(v2 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_oddId, v36, v28);
  v39 = sub_258F0A1F0();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = v144;
  v43 = sub_258F0A1E0();
  v155 = v39;
  v156 = MEMORY[0x277D04548];
  v154[0] = v43;
  v151 = a2;
  v44 = a2;
  v45 = v17;
  v147 = v18 + 16;
  v142 = v37;
  v37(v143, v44, v17);
  v46 = sub_258F09C20();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = v146;
  v50 = sub_258F09BE0();
  if (v49)
  {
    v51 = *(v157 + 8);
    v51(v151, v17);

    v52 = v152;
    v51(v152 + v136, v17);
    v149[1](&v145[v52], v150);
    type metadata accessor for SiriSegmentCohortMetrics();
    v53 = *(*v52 + 48);
    v54 = *(*v52 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v55 = v50;
    v129 = v42;
    v56 = v130;
    sub_258F0A090();
    v57 = v132;
    sub_258F09AC0();
    v146 = v55;
    sub_258F09C10();
    (*(v134 + 1))(v57, v135);
    (*(v131 + 1))(v56, v133);
    v58 = v148;
    v59 = v151;
    v60 = v142;
    v142(v148, v151, v45);
    v61 = type metadata accessor for SiriSegmentCohortDataProvider();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    v64 = swift_allocObject();
    v65 = *(v157 + 32);
    v136 = v157 + 32;
    v143 = v65;
    (v65)(v64 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortDataProvider_logger, v58, v45);
    v66 = v152;
    *(v152 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortDataProvider) = v64;
    v67 = v66;
    v68 = v60;
    v60(v58, v59, v45);
    v144 = 0;
    v69 = v149[2];
    v131 = (v149 + 2);
    v70 = &v145[v67];
    v71 = v138;
    v72 = v150;
    (v69)(v138, v70, v150);
    v134 = v69;
    v145 = v129;

    v73 = v141;
    sub_258EDAA04(v141);
    v68(v139, v58, v45);
    v74 = v68;
    sub_258DECF90(v73, v140);
    (v69)(v137, v71, v72);
    sub_258F09F30();
    v133 = sub_258F09F20();
    v75 = v45;
    v76 = type metadata accessor for CAAnalyticsEventSubmitter();
    v77 = swift_allocObject();
    type metadata accessor for BiomeResultsWrapperFactory();
    v132 = swift_allocObject();
    v155 = v76;
    v156 = &off_286A2C648;
    v154[0] = v77;
    v78 = type metadata accessor for SiriSegmentCohortCalculator();
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    v81 = swift_allocObject();
    v82 = __swift_mutable_project_boxed_opaque_existential_1(v154, v76);
    v135 = &v128;
    v83 = *(*(v76 - 8) + 64);
    MEMORY[0x28223BE20](v82, v82);
    v85 = (&v128 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v86 + 16))(v85);
    v87 = *v85;
    v153[3] = v76;
    v153[4] = &off_286A2C648;
    v153[0] = v87;
    v88 = v139;
    v74(v81 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_logger, v139, v75);
    v89 = v140;
    sub_258DECF90(v140, v81 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlFileURL);
    v90 = (v81 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bookmarkService);
    v90[3] = v46;
    v90[4] = &off_286A2FA30;
    *v90 = v146;
    v91 = v137;
    v92 = v150;
    (v134)(v81 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_oddId, v137, v150);
    *(v81 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_defaults) = v145;
    *(v81 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bugReporter) = v133;
    sub_258DE3FD8(v153, v81 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_analyticsEventSubmitter);
    *(v81 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_biomeResultsFactory) = v132;
    v93 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    *(v81 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlDateFormatter) = v93;
    v94 = sub_258F0A4E0();
    [v93 setDateFormat_];

    v95 = v149[1];
    v95(v91, v92);
    sub_258DED000(v89);
    v96 = v157 + 8;
    v97 = *(v157 + 8);
    (v97)(v88, v75);
    v149 = v97;
    v157 = v96;
    sub_258DED000(v141);
    v95(v138, v92);
    v98 = v148;
    (v97)(v148, v75);
    __swift_destroy_boxed_opaque_existential_1Tm(v153);
    __swift_destroy_boxed_opaque_existential_1Tm(v154);
    *(v152 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortCalculator) = v81;
    v99 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v100 = [v99 Metrics];
    swift_unknownObjectRelease();
    v101 = [v100 OnDeviceDigestSegmentsCohorts];
    swift_unknownObjectRelease();
    v102 = [v101 source];

    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A768, &unk_258F16298);
    v104 = *(v103 + 48);
    v105 = *(v103 + 52);
    swift_allocObject();
    v106 = sub_258F09B80();
    v107 = v151;
    v108 = v142;
    v142(v98, v151, v75);
    v109 = type metadata accessor for SiriSegmentCohortBiomeReporter();
    v110 = *(v109 + 48);
    v111 = *(v109 + 52);
    v112 = swift_allocObject();
    *(v112 + 16) = v106;
    v113 = v143;
    v143(v112 + OBJC_IVAR____TtC16MetricsFramework30SiriSegmentCohortBiomeReporter_logger, v98, v75);
    v108(v98, v107, v75);

    v114 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, 0, 0);
    v115 = type metadata accessor for SiriSegmentCohortSELFReporter();
    v116 = *(v115 + 48);
    v117 = *(v115 + 52);
    v118 = swift_allocObject();
    *(v118 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents) = MEMORY[0x277D84F90];
    v113(v118 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger, v148, v75);
    v52 = v152;
    *(v118 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService) = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_258F0F6D0;
    *(v119 + 32) = v112;
    *(v119 + 40) = v118;
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A770, &qword_258F162A8);
    v121 = *(v120 + 48);
    v122 = *(v120 + 52);
    swift_allocObject();

    v154[0] = sub_258F09BA0();
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A778, qword_258F162B0);
    v124 = *(v123 + 48);
    v125 = *(v123 + 52);
    swift_allocObject();
    v126 = sub_258F09BC0();

    (v149)(v107, v75);
    *(v52 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortReporter) = v126;
  }

  return v52;
}

uint64_t type metadata accessor for SiriSegmentCohortMetrics()
{
  result = qword_27F98A7A0;
  if (!qword_27F98A7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EDB8A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EDB8C8, 0, 0);
}

uint64_t sub_258EDB8C8()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortDataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258EDA56C();
}

uint64_t sub_258EDB96C(_OWORD *a1)
{
  *(v2 + 48) = v1;
  v3 = a1[1];
  *(v2 + 56) = *a1;
  *(v2 + 72) = v3;
  return MEMORY[0x2822009F8](sub_258EDB998, 0, 0);
}

uint64_t sub_258EDB998()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortReporter);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  v2 = *(MEMORY[0x277D04448] + 4);
  v5 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_258EDBA64;

  return v5(v0 + 16);
}

uint64_t sub_258EDBA64()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258EDC784, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_258EDBB98(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EDBBB8, 0, 0);
}

uint64_t sub_258EDBBB8()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortCalculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED408;
  v3 = v0[2];

  return sub_258ED0E2C(v3);
}

uint64_t SiriSegmentCohortMetrics.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortDataProvider);

  v6 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortCalculator);

  v7 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortReporter);

  return v0;
}

uint64_t SiriSegmentCohortMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortDataProvider);

  v6 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortCalculator);

  v7 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortReporter);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EDBE38(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EDBE5C, 0, 0);
}

uint64_t sub_258EDBE5C()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortDataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258EDA56C();
}

uint64_t sub_258EDBF00(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EDBF24, 0, 0);
}

uint64_t sub_258EDBF24()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortCalculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED984;
  v3 = v0[2];

  return sub_258ED0E2C(v3);
}

uint64_t sub_258EDBFC8(_OWORD *a1)
{
  *(v2 + 48) = *v1;
  v3 = a1[1];
  *(v2 + 56) = *a1;
  *(v2 + 72) = v3;
  return MEMORY[0x2822009F8](sub_258EDBFF8, 0, 0);
}

uint64_t sub_258EDBFF8()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortReporter);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  v2 = *(MEMORY[0x277D04448] + 4);
  v5 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_258EDC0C4;

  return v5(v0 + 16);
}

uint64_t sub_258EDC0C4()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258EDC1F8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_258EDC2AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriSegmentCohortMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258EDC2F8()
{
  result = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_258F09A70();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriSegmentCohortMetrics.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of SiriSegmentCohortMetrics.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of SiriSegmentCohortMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t sub_258EDC840(uint64_t a1)
{
  v4 = *(**v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t dispatch thunk of SiriSegmentCohortReporter.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t SiriSegmentCohortSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents) = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService) = a2;
  return v7;
}

uint64_t sub_258EDCB68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_258EDCBD0()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_258EDCC18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SiriSegmentCohortSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents) = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService) = a2;
  return v2;
}

uint64_t sub_258EDCD64(_OWORD *a1)
{
  *(v2 + 40) = v1;
  v4 = *(type metadata accessor for DeviceSegmentsCohorts(0) - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v6 = a1[1];
  *(v2 + 64) = *a1;
  *(v2 + 80) = v6;

  return MEMORY[0x2822009F8](sub_258EDCE2C, 0, 0);
}

uint64_t sub_258EDCE2C()
{
  v40 = v0;
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  *(v0 + 96) = v2;
  if (!v2)
  {
LABEL_18:
    v19 = *(v0 + 88);
    v20 = *(v0 + 40);
    v37 = *(v0 + 64);
    v38 = v1;
    v39 = v19;
    *(v0 + 176) = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
    v21 = sub_258EDE228(&v37);
    v22 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents;
    swift_beginAccess();
    v23 = *(v20 + v22);
    *(v20 + v22) = v21;

    v24 = *(v20 + v22);
    *(v0 + 184) = v24;
    if (!(v24 >> 62))
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_20;
    }

LABEL_31:
    v25 = sub_258F0AA20();
LABEL_20:
    v26 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService;
    *(v0 + 192) = v25;
    *(v0 + 200) = v26;

    v27 = *(v0 + 184);
    if (!v25)
    {
      v34 = *(v0 + 56);
      v35 = *(v0 + 184);

      v36 = *(v0 + 8);

      return v36();
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x259C9E3B0](0);
      v26 = *(v0 + 200);
    }

    else
    {
      if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        v13 = MEMORY[0x259C9E3B0](0);
LABEL_14:
        v14 = v13;
        *(v0 + 144) = v13;
        *(v0 + 152) = 1;
        v15 = *(v0 + 112);
        v16 = *(v0 + 40);
        v17 = *(v16 + *(v0 + 104));
        v18 = swift_task_alloc();
        *(v0 + 160) = v18;
        *v18 = v0;
        v18[1] = sub_258EDD1E4;

        return sub_258EB5738(v14, v16 + v15);
      }

      v28 = *(v27 + 32);
    }

    *(v0 + 208) = v28;
    *(v0 + 216) = 1;
    v29 = *(v0 + 176);
    v30 = *(v0 + 40);
    v31 = *(v30 + v26);
    v32 = v28;
    v33 = swift_task_alloc();
    *(v0 + 224) = v33;
    *v33 = v0;
    v33[1] = sub_258EDD6A0;

    return sub_258EB6184(v32, v30 + v29);
  }

  v3 = *(v0 + 48);
  v4 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  *(v0 + 104) = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService;
  *(v0 + 112) = v4;
  *(v0 + 240) = *(v3 + 80);
  *(v0 + 120) = 0;
  if (!*(v1 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(v0 + 56);
    sub_258EDEBBC(v1 + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(*(v0 + 48) + 72) * v5, v6, type metadata accessor for DeviceSegmentsCohorts);
    v7 = sub_258EDDB00();
    *(v0 + 128) = v7;
    sub_258EDEC24(v6, type metadata accessor for DeviceSegmentsCohorts);
    result = v7 >> 62 ? sub_258F0AA20() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 136) = result;
    v9 = *(v0 + 128);
    if (result)
    {
      break;
    }

    v10 = *(v0 + 120);
    v11 = *(v0 + 96);
    v12 = *(v0 + 128);

    if (v10 + 1 == v11)
    {
      v1 = *(v0 + 80);
      goto LABEL_18;
    }

    v5 = *(v0 + 120) + 1;
    *(v0 + 120) = v5;
    v1 = *(v0 + 80);
    if (v5 >= *(v1 + 16))
    {
      goto LABEL_30;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v9 + 32);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_258EDD1E4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);

    v5 = sub_258EDD918;
  }

  else
  {
    v5 = sub_258EDD300;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_258EDD300()
{
  v39 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);

  if (v1 != v2)
  {
    v5 = *(v0 + 152);
LABEL_10:
    v12 = *(v0 + 128);
    if ((v12 & 0xC000000000000001) != 0)
    {
LABEL_30:
      v13 = MEMORY[0x259C9E3B0](v5);
    }

    else
    {
      if (v5 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        v26 = sub_258F0AA20();
        goto LABEL_19;
      }

      v13 = *(v12 + 8 * v5 + 32);
    }

    v14 = v13;
    *(v0 + 144) = v13;
    *(v0 + 152) = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      v15 = *(v0 + 112);
      v16 = *(v0 + 40);
      v17 = *(v16 + *(v0 + 104));
      v18 = swift_task_alloc();
      *(v0 + 160) = v18;
      *v18 = v0;
      v18[1] = sub_258EDD1E4;

      return sub_258EB5738(v14, v16 + v15);
    }

    __break(1u);
    goto LABEL_32;
  }

  while (1)
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 96);

    if (v4 + 1 == v5)
    {
      break;
    }

    v6 = *(v0 + 120) + 1;
    *(v0 + 120) = v6;
    v7 = *(v0 + 80);
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v8 = *(v0 + 56);
    sub_258EDEBBC(v7 + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(*(v0 + 48) + 72) * v6, v8, type metadata accessor for DeviceSegmentsCohorts);
    v9 = sub_258EDDB00();
    *(v0 + 128) = v9;
    sub_258EDEC24(v8, type metadata accessor for DeviceSegmentsCohorts);
    if (v9 >> 62)
    {
      v11 = sub_258F0AA20();
      *(v0 + 136) = v11;
      if (v11)
      {
LABEL_8:
        v5 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 136) = v10;
      if (v10)
      {
        goto LABEL_8;
      }
    }
  }

  v20 = *(v0 + 40);
  v21 = *(v0 + 80);
  v38[0] = *(v0 + 64);
  v38[1] = v21;
  *(v0 + 176) = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  v22 = sub_258EDE228(v38);
  v23 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents;
  swift_beginAccess();
  v24 = *(v20 + v23);
  *(v20 + v23) = v22;

  v25 = *(v20 + v23);
  *(v0 + 184) = v25;
  if (v25 >> 62)
  {
    goto LABEL_33;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
  v27 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService;
  *(v0 + 192) = v26;
  *(v0 + 200) = v27;

  v28 = *(v0 + 184);
  if (v26)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x259C9E3B0](0);
      v27 = *(v0 + 200);
    }

    else
    {
      if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v29 = *(v28 + 32);
    }

    *(v0 + 208) = v29;
    *(v0 + 216) = 1;
    v30 = *(v0 + 176);
    v31 = *(v0 + 40);
    v32 = *(v31 + v27);
    v33 = v29;
    v34 = swift_task_alloc();
    *(v0 + 224) = v34;
    *v34 = v0;
    v34[1] = sub_258EDD6A0;

    return sub_258EB6184(v33, v31 + v30);
  }

  else
  {
    v35 = *(v0 + 56);
    v36 = *(v0 + 184);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_258EDD6A0()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 184);

    v5 = sub_258EDDA0C;
  }

  else
  {
    v5 = sub_258EDD7BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_258EDD7BC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);

  if (v1 == v2)
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 56);

    v5 = *(v0 + 8);

    v5();
    return;
  }

  v6 = *(v0 + 216);
  v7 = *(v0 + 184);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x259C9E3B0](*(v0 + 216));
  }

  else
  {
    if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v8 = *(v7 + 8 * v6 + 32);
  }

  v9 = v8;
  *(v0 + 208) = v8;
  *(v0 + 216) = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = *(v0 + 176);
  v11 = *(v0 + 40);
  v12 = *(v11 + *(v0 + 200));
  v13 = swift_task_alloc();
  *(v0 + 224) = v13;
  *v13 = v0;
  v13[1] = sub_258EDD6A0;

  sub_258EB6184(v9, v11 + v10);
}

uint64_t sub_258EDD918()
{
  v1 = v0[5] + v0[14];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[21];
  v6 = v0[18];

  swift_willThrow();
  v7 = v0[21];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_258EDDA0C()
{
  v1 = v0[5] + v0[22];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[29];
  v6 = v0[26];

  swift_willThrow();
  v7 = v0[29];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_258EDDB00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v57 - v5;
  v7 = type metadata accessor for EventMetadata(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x277D84F90];
  sub_258DE20C0(v1, v6, &qword_27F9894E0, &unk_258F106A0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_258DE2184(v6, &qword_27F9894E0, &unk_258F106A0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_258E3F8CC(v6, v12);
    v14 = type metadata accessor for DeviceSegmentsCohorts(0);
    v15 = *&v1[*(v14 + 20)];
    if (v15 && (v16 = [objc_allocWithZone(MEMORY[0x277D593E0]) init]) != 0)
    {
      v17 = v16;
      v58 = v14;
      v59 = v1;
      v61 = 1;
      v60 = v12;
      v18 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
      v57 = v17;
      [v17 setEventMetadata_];

      v19 = [objc_allocWithZone(MEMORY[0x277D592E8]) init];
      v20 = *(v15 + 16);
      if (v20)
      {
        v21 = (v15 + 44);
        do
        {
          v22 = *(v21 - 3);
          v23 = *(v21 - 8);
          v24 = *(v21 - 1);
          v25 = *v21;
          v26 = [objc_allocWithZone(MEMORY[0x277D592E0]) init];
          if (v26)
          {
            if (v23)
            {
              v27 = 0;
            }

            else
            {
              v27 = v22;
            }

            v28 = v26;
            [v26 setSegmentType_];
            if (v25)
            {
              v29 = 0;
            }

            else
            {
              v29 = v24;
            }

            [v28 setSegmentDataAvailabilityState_];
            v30 = v19;
            [v30 addSegments_];
          }

          v21 += 32;
          --v20;
        }

        while (v20);
      }

      v31 = v57;
      [v57 setDeviceSegmentsReported_];
      v32 = v31;
      MEMORY[0x259C9DF50]();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v55 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_258F0A6D0();
      }

      sub_258F0A700();

      v13 = v63;
      v1 = v59;
      v12 = v60;
      v14 = v58;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v33 = *&v1[*(v14 + 24)];
    if (v33 && (v34 = [objc_allocWithZone(MEMORY[0x277D593E0]) init]) != 0)
    {
      v35 = v34;
      v62 = 1;
      v60 = v12;
      v36 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
      v59 = v35;
      [v35 setEventMetadata_];

      v37 = [objc_allocWithZone(MEMORY[0x277D592D8]) init];
      v38 = *(v33 + 16);
      if (v38)
      {
        v39 = (v33 + 48);
        do
        {
          v40 = *(v39 - 4);
          v41 = *(v39 - 12);
          v42 = *(v39 - 2);
          v43 = *(v39 - 4);
          v44 = *v39;
          v45 = objc_allocWithZone(MEMORY[0x277D592D0]);
          v46 = v44;
          v47 = [v45 0x2798CCB78];
          if (v47)
          {
            if (v41)
            {
              v48 = 0;
            }

            else
            {
              v48 = v40;
            }

            v49 = v47;
            [v47 setCohortType_];
            if (v43)
            {
              v50 = 0;
            }

            else
            {
              v50 = v42;
            }

            [v49 setCohortDataAvailabilityState_];
            [v49 setCohortInterval_];
            v51 = v37;
            [v51 addCohorts_];

            v46 = v49;
          }

          v39 += 3;

          --v38;
        }

        while (v38);
      }

      v52 = v59;
      [v59 setDeviceCohortsReported_];
      v53 = v52;
      MEMORY[0x259C9DF50]();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_258F0A6D0();
      }

      sub_258F0A700();

      sub_258EDEC24(v60, type metadata accessor for EventMetadata);
      return v63;
    }

    else
    {
      sub_258EDEC24(v12, type metadata accessor for EventMetadata);
    }
  }

  return v13;
}

uint64_t sub_258EDE03C()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents);
}

uint64_t SiriSegmentCohortSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents);

  return v0;
}

uint64_t SiriSegmentCohortSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EDE228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v80 = &v72 - v9;
  v10 = sub_258F09A70();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v72 - v18;
  v20 = type metadata accessor for DeviceBatchData(0);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 24);
  v28 = *(v27 + 16);
  if (v28)
  {
    v82 = v19;
    v83 = v10;
    v77 = v23;
    v78 = v7;
    v73 = v16;
    v29 = v27 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v30 = (v11 + 48);
    v81 = (v11 + 32);
    v72 = MEMORY[0x277D84F90];
    v75 = (v11 + 8);
    v76 = (v11 + 48);
    v31 = 0x277D59000uLL;
    v86 = *(v24 + 72);
    v87 = MEMORY[0x277D84F90];
    v32 = &selRef_setSampledErrorAsset_;
    v33 = v80;
    v34 = v26;
    v74 = v26;
    while (1)
    {
      sub_258EDEBBC(v29, v34, type metadata accessor for DeviceBatchData);
      v35 = [objc_allocWithZone(*(v31 + 392)) v32[10]];
      if (v35)
      {
        v36 = v35;
        v37 = [objc_allocWithZone(MEMORY[0x277D59190]) v32[10]];
        if (v37)
        {
          v38 = v37;
          v39 = [objc_allocWithZone(MEMORY[0x277D59198]) v32[10]];
          if (!v39)
          {
            sub_258EDEC24(v34, type metadata accessor for DeviceBatchData);

LABEL_22:
            v32 = &selRef_setSampledErrorAsset_;
            goto LABEL_4;
          }

          v84 = v39;
          v85 = v38;
          sub_258DE20C0(v34, v33, &qword_27F988730, &unk_258F0F8E0);
          v40 = *v30;
          v41 = v33;
          v42 = v33;
          v43 = v83;
          if ((*v30)(v41, 1, v83) != 1)
          {
            v44 = v42;
            v45 = v43;
            v79 = *v81;
            v79(v82, v44, v43);
            v46 = v77;
            v47 = v34 + *(v77 + 20);
            v48 = v78;
            sub_258DE20C0(v47, v78, &qword_27F988730, &unk_258F0F8E0);
            if (v40(v48, 1, v45) == 1)
            {

              (*v75)(v82, v45);
              v49 = v74;
              sub_258EDEC24(v74, type metadata accessor for DeviceBatchData);
              sub_258DE2184(v48, &qword_27F988730, &unk_258F0F8E0);
              v33 = v80;
              v34 = v49;
            }

            else
            {
              v50 = v73;
              v51 = v45;
              v79(v73, v48, v45);
              v34 = v74;
              v52 = &v74[*(v46 + 24)];
              v53 = v85;
              if (v52[4] == 1)
              {

                v54 = *v75;
                (*v75)(v50, v51);
                v54(v82, v51);
                sub_258EDEC24(v34, type metadata accessor for DeviceBatchData);
                v33 = v80;
              }

              else
              {
                v55 = &v74[*(v46 + 28)];
                v33 = v80;
                if (v55[4] == 1)
                {

                  v56 = *v75;
                  v57 = v83;
                  (*v75)(v73, v83);
                  v56(v82, v57);
                  sub_258EDEC24(v34, type metadata accessor for DeviceBatchData);
                }

                else
                {
                  LODWORD(v72) = *v52;
                  LODWORD(v79) = *v55;
                  v58 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                  v59 = sub_258F09A50();
                  v60 = [v58 initWithNSUUID_];

                  [v53 setOdbatchId_];
                  v61 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                  v62 = sub_258F09A50();
                  v63 = [v61 initWithNSUUID_];

                  v64 = v84;
                  [v84 setOriginalClockId_];

                  [v64 setDaysWithTwoValidAssistantTurnsPerWeek_];
                  [v64 setDaysWithTwoAssistantSpeechRequestsPerWeek_];
                  [v36 setEventMetadata_];
                  [v36 setOdbatchDataReported_];
                  v65 = v36;
                  MEMORY[0x259C9DF50]();
                  v66 = v83;
                  if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_258F0A6D0();
                  }

                  sub_258F0A700();

                  v67 = *v75;
                  (*v75)(v73, v66);
                  v67(v82, v66);
                  sub_258EDEC24(v34, type metadata accessor for DeviceBatchData);
                  v72 = v87;
                }
              }
            }

            v30 = v76;
            v31 = 0x277D59000;
            goto LABEL_22;
          }

          sub_258EDEC24(v34, type metadata accessor for DeviceBatchData);

          sub_258DE2184(v42, &qword_27F988730, &unk_258F0F8E0);
          v31 = 0x277D59000;
          v32 = &selRef_setSampledErrorAsset_;
          v33 = v42;
        }

        else
        {
          sub_258EDEC24(v34, type metadata accessor for DeviceBatchData);
        }
      }

      else
      {
        sub_258EDEC24(v34, type metadata accessor for DeviceBatchData);
      }

LABEL_4:
      v29 += v86;
      if (!--v28)
      {
        return v72;
      }
    }
  }

  v69 = sub_258F0A350();
  v70 = sub_258F0A800();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_258DD8000, v69, v70, "No On-Device ODBATCH Data available", v71, 2u);
    MEMORY[0x259C9EF40](v71, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t type metadata accessor for SiriSegmentCohortSELFReporter()
{
  result = qword_27F98A7C0;
  if (!qword_27F98A7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EDEA68()
{
  result = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_258EDEBBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258EDEC24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258EDECA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A7D0, &qword_258F16580);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A7D8, &qword_258F16588);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7, v10);
  v13 = v18 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  sub_258DE4090(a1 + 32, v19);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 2;
  }

  if (v14 == 1)
  {
    goto LABEL_10;
  }

  v16 = v18[2];
  v15 = v18[3];
  sub_258DE4090(a1 + 64, v19);
  if (swift_dynamicCast())
  {
    sub_258F09DE0();
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v13, v6, v7);
    v19[0] = v16;
    v19[1] = v15;
    sub_258EDEF94();
    sub_258EDEFE8();
    v17 = sub_258F0A470();
    (*(v8 + 8))(v13, v7);

    return v17 & 1;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_258EDEF2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A7D0, &qword_258F16580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258EDEF94()
{
  result = qword_27F98A7E0;
  if (!qword_27F98A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A7E0);
  }

  return result;
}

unint64_t sub_258EDEFE8()
{
  result = qword_27F98A7E8;
  if (!qword_27F98A7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F98A7D8, &qword_258F16588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A7E8);
  }

  return result;
}

uint64_t sub_258EDF04C(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    sub_258DE4090(result + 32, v19);
    v3 = MEMORY[0x277D837D0];
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_258F0B820;
        v12 = *MEMORY[0x277CCA450];
        *(inited + 32) = sub_258F0A4F0();
        *(inited + 72) = v3;
        *(inited + 40) = v13;
        *(inited + 48) = 0xD00000000000002DLL;
        *(inited + 56) = 0x8000000258F1E9D0;
        sub_258DFBCE0(inited);
        swift_setDeallocating();
        sub_258DE2184(inited + 32, &qword_27F988B98, &unk_258F0D3A0);
        v14 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v8 = sub_258F0A4E0();
        v9 = sub_258F0A400();

        v10 = [v14 initWithDomain:v8 code:-1 userInfo:v9];
        goto LABEL_8;
      }

      return 0;
    }

    type metadata accessor for SiriUserDefinedFunctions();
    static SiriUserDefinedFunctions.getSiriResponseCategoryUdf(siriResponseId:)(v17, v18, v19);

    if (v19[0] == 21)
    {
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
        v4 = swift_initStackObject();
        *(v4 + 16) = xmmword_258F0B820;
        v5 = *MEMORY[0x277CCA450];
        *(v4 + 32) = sub_258F0A4F0();
        *(v4 + 72) = v3;
        *(v4 + 40) = v6;
        *(v4 + 48) = 0xD000000000000046;
        *(v4 + 56) = 0x8000000258F1EA00;
        sub_258DFBCE0(v4);
        swift_setDeallocating();
        sub_258DE2184(v4 + 32, &qword_27F988B98, &unk_258F0D3A0);
        v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v8 = sub_258F0A4E0();
        v9 = sub_258F0A400();

        v10 = [v7 initWithDomain:v8 code:1 userInfo:v9];
LABEL_8:
        v15 = v10;

        v16 = v15;
        result = 0;
        *a2 = v15;
        return result;
      }

      return 0;
    }

    return SiriReponseCategory.rawValue.getter()._countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static SiriUserDefinedFunctions.getSiriResponseCategoryUdf(siriResponseId:)(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v67 = a2;
  v68 = a1;
  v69 = a3;
  v71[4] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v64 - v14;
  type metadata accessor for SiriUserDefinedFunctions();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_258F0A4E0();
  v19 = sub_258F0A4E0();
  v20 = [v17 URLForResource:v18 withExtension:v19];

  if (v20)
  {
    sub_258F098B0();

    v21 = sub_258F098D0();
    (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  }

  else
  {
    v21 = sub_258F098D0();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  }

  sub_258E25BDC(v12, v15);
  sub_258F098D0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v15, 1, v21) == 1)
  {
    sub_258EDFC4C();
    v24 = swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }

  else
  {
    sub_258DECF90(v15, v8);
    if (v23(v8, 1, v21) == 1)
    {
      __break(1u);
      return;
    }

    v26 = sub_258F098E0();
    v28 = v27;
    (*(v22 + 8))(v8, v21);
    v29 = objc_opt_self();
    v30 = sub_258F098F0();
    v71[0] = 0;
    v31 = [v29 JSONObjectWithData:v30 options:0 error:v71];

    if (v31)
    {
      v32 = v71[0];
      sub_258F0A9C0();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A7F8, &qword_258F16590);
      if (swift_dynamicCast())
      {
        v65 = v26;
        v66 = v28;
        countAndFlagsBits = v70._countAndFlagsBits;
        v34 = *(v70._countAndFlagsBits + 16);
        if (v34)
        {
          for (i = 0; v34 != i; ++i)
          {
            if (i >= *(countAndFlagsBits + 16))
            {
              __break(1u);
            }

            v37 = *(countAndFlagsBits + 8 * i + 32);
            if (*(v37 + 16))
            {
              v38 = *(countAndFlagsBits + 8 * i + 32);

              v39 = sub_258E2E9B4(0xD000000000000010, 0x8000000258F1CC50);
              if (v40)
              {
                sub_258DE4090(*(v37 + 56) + 32 * v39, v71);
                if (swift_dynamicCast())
                {
                  if (v70._countAndFlagsBits == v68 && v70._object == v67)
                  {

LABEL_33:

                    v57 = v65;
                    v56 = v66;
                    if (*(v37 + 16) && (v58 = sub_258E2E9B4(0xD00000000000001BLL, 0x8000000258F1E510), (v59 & 1) != 0))
                    {
                      sub_258DE4090(*(v37 + 56) + 32 * v58, v71);

                      if (swift_dynamicCast())
                      {
                        SiriReponseCategory.init(rawValue:)(v70);
                        v49 = v71[0];
                        v50 = v69;
                        if (LOBYTE(v71[0]) != 21)
                        {
                          sub_258DEB978(v57, v56);
                          sub_258DE2184(v15, &qword_27F988720, &qword_258F0B830);
                          goto LABEL_28;
                        }

LABEL_40:
                        v60 = sub_258F0A810();
                        sub_258EDFCA0();
                        v61 = sub_258F0A910();
                        if (os_log_type_enabled(v61, v60))
                        {
                          v62 = swift_slowAlloc();
                          v63 = swift_slowAlloc();
                          v71[0] = v63;
                          *v62 = 136315138;
                          *(v62 + 4) = sub_258DE3018(v68, v67, v71);
                          _os_log_impl(&dword_258DD8000, v61, v60, "Unable to find the SiriReponseCategory for %s", v62, 0xCu);
                          __swift_destroy_boxed_opaque_existential_1Tm(v63);
                          MEMORY[0x259C9EF40](v63, -1, -1);
                          MEMORY[0x259C9EF40](v62, -1, -1);
                        }

                        sub_258DEB978(v57, v56);

LABEL_32:
                        sub_258DE2184(v15, &qword_27F988720, &qword_258F0B830);
                        v49 = 20;
                        goto LABEL_28;
                      }
                    }

                    else
                    {
                    }

                    v50 = v69;
                    goto LABEL_40;
                  }

                  v36 = sub_258F0AD80();

                  if (v36)
                  {
                    goto LABEL_33;
                  }
                }
              }
            }
          }
        }

        v52 = sub_258F0A810();
        sub_258EDFCA0();
        v53 = sub_258F0A910();
        if (os_log_type_enabled(v53, v52))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v71[0] = v55;
          *v54 = 136315138;
          *(v54 + 4) = sub_258DE3018(v68, v67, v71);
          _os_log_impl(&dword_258DD8000, v53, v52, "Unable to find the %s in the mapping source", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          MEMORY[0x259C9EF40](v55, -1, -1);
          MEMORY[0x259C9EF40](v54, -1, -1);
        }

        sub_258DEB978(v65, v66);

        v50 = v69;
        goto LABEL_32;
      }

      sub_258EDFC4C();
      v24 = swift_allocError();
      *v42 = 2;
    }

    else
    {
      v41 = v71[0];
      v24 = sub_258F09890();
    }

    swift_willThrow();
    sub_258DEB978(v26, v28);
  }

  sub_258DE2184(v15, &qword_27F988720, &qword_258F0B830);
  v43 = sub_258F0A820();
  sub_258EDFCA0();
  v44 = sub_258F0A910();
  if (os_log_type_enabled(v44, v43))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    v47 = v24;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 4) = v48;
    *v46 = v48;
    _os_log_impl(&dword_258DD8000, v44, v43, "unexpected error throws: %@", v45, 0xCu);
    sub_258DE2184(v46, &qword_27F988C78, &qword_258F11A20);
    MEMORY[0x259C9EF40](v46, -1, -1);
    MEMORY[0x259C9EF40](v45, -1, -1);
  }

  else
  {
  }

  v49 = 21;
  v50 = v69;
LABEL_28:
  *v50 = v49;
  v51 = *MEMORY[0x277D85DE8];
}

unint64_t sub_258EDFC4C()
{
  result = qword_27F98A7F0;
  if (!qword_27F98A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A7F0);
  }

  return result;
}

unint64_t sub_258EDFCA0()
{
  result = qword_27F988A08;
  if (!qword_27F988A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F988A08);
  }

  return result;
}

uint64_t sub_258EDFD08(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    sub_258DE4090(result + 32, v13);
    v3 = MEMORY[0x277D837D0];
    if (swift_dynamicCast())
    {
      v4 = _s16MetricsFramework24SiriUserDefinedFunctionsC09convertToC13ResponseIdUdf03rawI0SSSgSS_tFZ_0();

      return v4;
    }

    else if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_258F0B820;
      v6 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_258F0A4F0();
      *(inited + 72) = v3;
      *(inited + 40) = v7;
      *(inited + 48) = 0xD000000000000018;
      *(inited + 56) = 0x8000000258F1E930;
      sub_258DFBCE0(inited);
      swift_setDeallocating();
      sub_258DE2184(inited + 32, &qword_27F988B98, &unk_258F0D3A0);
      v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v9 = sub_258F0A4E0();
      v10 = sub_258F0A400();

      v11 = [v8 initWithDomain:v9 code:-1 userInfo:v10];

      v12 = v11;
      result = 0;
      *a2 = v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258EDFF04(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      if ((v1[1] & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      result = sub_258F0A5D0();
      if ((v2 & 1) == 0)
      {
        v5 = result;
        result = 15;
        v2 = v5;

        return MEMORY[0x2821FBD18](result, v2);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v2);
  }

  return result;
}

uint64_t MetricsUtilityError.hashValue.getter()
{
  v1 = *v0;
  sub_258F0AE40();
  MEMORY[0x259C9E710](v1);
  return sub_258F0AE90();
}

id sub_258EE002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_258F0A4E0();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_258F09890();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t _s16MetricsFramework24SiriUserDefinedFunctionsC09convertToC13ResponseIdUdf03rawI0SSSgSS_tFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A438, &unk_258F166C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v44 - v3;
  v5 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v6 = sub_258EE002C(0xD000000000000021, 0x8000000258F1E950, 0);
  v7 = sub_258F0A4E0();
  v8 = sub_258F0A5C0();
  v9 = sub_258F0A4E0();
  v10 = &selRef_setSampledErrorAsset_;
  v11 = [v6 stringByReplacingMatchesInString:v7 options:0 range:0 withTemplate:{v8, v9}];

  v12 = sub_258F0A4F0();
  v14 = v13;

  *&v46 = v12;
  *(&v46 + 1) = v14;
  sub_258DEF388();

  v15 = sub_258F0A9B0();

  v16 = *(v15 + 16);
  v45 = v6;
  if (v16 < 3)
  {

LABEL_7:
    v29 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v30 = sub_258EE002C(0x2E5D3A2E5C245C5BLL, 0xEA0000000000242ALL, 0);
    v31 = sub_258F0A4E0();
    v32 = sub_258F0A5C0();

    v33 = sub_258F0A4E0();
    v34 = [v30 v10[287]];

    v35 = sub_258F0A4F0();
    v37 = v36;

    *&v46 = v35;
    *(&v46 + 1) = v37;
    *&v53 = v35;
    *(&v53 + 1) = v37;
    v51 = 0xD000000000000010;
    v52 = 0x8000000258F1E9B0;
    sub_258EDEF94();
    sub_258EE0718();
    if (sub_258F0A460())
    {
      v38 = sub_258F0A5C0();
      sub_258EDFF04(v38);
      v39 = *(&v46 + 1);
      v35 = v46;
      v53 = v46;
      v51 = 95;
      v52 = 0xE100000000000000;
      v40 = sub_258F09AA0();
      (*(*(v40 - 8) + 56))(v4, 1, 1, v40);

      sub_258F0A980();
      v42 = v41;
      sub_258DE2184(v4, &qword_27F98A438, &unk_258F166C0);

      if ((v42 & 1) == 0)
      {
        v53 = __PAIR128__(v39, v35);
        v51 = 95;
        v52 = 0xE100000000000000;
        v49 = 35;
        v50 = 0xE100000000000000;
        v35 = sub_258F0A970();

        return v35;
      }
    }

    else
    {
    }

    return v35;
  }

  if (!*(v15 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = *(v15 + 32);
  v18 = *(v15 + 40);
  v20 = *(v15 + 48);
  v19 = *(v15 + 56);
  *&v53 = 0;
  *(&v53 + 1) = 0xE000000000000000;

  v21 = sub_258F0A5C0();
  v22 = sub_258F0A940();
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  MEMORY[0x259C9DE50](v24);
  *&v46 = v17;
  *(&v46 + 1) = v18;
  v47 = v20;
  v48 = v19;
  sub_258EE076C();
  sub_258F0A5E0();
  *&v46 = 35;
  *(&v46 + 1) = 0xE100000000000000;
  sub_258F0A5E0();

  if (*(v15 + 16) >= 2uLL)
  {
    v26 = *(&v53 + 1);
    v25 = v53;
    v44 = *(v15 + 64);
    v28 = *(v15 + 80);
    v27 = *(v15 + 88);

    v53 = __PAIR128__(v26, v25);
    v46 = v44;
    v47 = v28;
    v48 = v27;
    sub_258F0A5E0();

    v6 = v45;
    v10 = &selRef_setSampledErrorAsset_;
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_258EE069C()
{
  result = qword_27F98A800;
  if (!qword_27F98A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A800);
  }

  return result;
}

unint64_t sub_258EE0718()
{
  result = qword_27F98A808;
  if (!qword_27F98A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A808);
  }

  return result;
}

unint64_t sub_258EE076C()
{
  result = qword_27F98A810;
  if (!qword_27F98A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A810);
  }

  return result;
}

id SpeakerIdManifestResult.speakerIdSelectionEvents.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t SpeakerIdManifestResult.speakerIdManifestEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SpeakerIdManifestCalculator.__allocating_init(defaults:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a2, v4);
  v10 = type metadata accessor for SamplingUtils();
  v11 = type metadata accessor for CAAnalyticsEventSubmitter();
  v12 = swift_allocObject();
  v27[3] = v11;
  v27[4] = &off_286A2C648;
  v27[0] = v12;
  v13 = type metadata accessor for SpeakerIdManifestCalculator();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v27, v11);
  v18 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v17, v17);
  v20 = (&v27[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v23 = (v16 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_analyticsEventSubmitter);
  v23[3] = v11;
  v23[4] = &off_286A2C648;
  *v23 = v22;
  sub_258F09AE0();
  *(v16 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_defaults) = a1;
  (*(v5 + 32))(v16 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_logger, v9, v4);
  v24 = (v16 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_samplingUtils);
  *v24 = v10;
  v24[1] = &protocol witness table for SamplingUtils;
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  (*(v5 + 8))(a2, v4);
  return v16;
}

uint64_t type metadata accessor for SpeakerIdManifestCalculator()
{
  result = qword_27F98A840;
  if (!qword_27F98A840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EE0B30(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_258EE0B50, 0, 0);
}

uint64_t sub_258EE0B50()
{
  v86 = v0;
  v1 = v0[7];
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdManifestCalculator: Sampling Calculator invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = *(v5 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_samplingUtils);
  v7 = *(v5 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_samplingUtils + 8);
  v8 = (*(v7 + 72))(v6, v7);
  if (!v9)
  {
    v36 = sub_258F0A350();
    v37 = sub_258F0A820();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_258DD8000, v36, v37, "SpeakerIdSelectionCalculator: Unable to retrieve the siri language.", v38, 2u);
      MEMORY[0x259C9EF40](v38, -1, -1);
    }

    v39 = 0;
    v40 = &unk_286A299A8;
    goto LABEL_44;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_258F0A350();
  v13 = sub_258F0A810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v84 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_258DE3018(v10, v11, &v84);
    _os_log_impl(&dword_258DD8000, v12, v13, "#SpeakerIdManifestCalculator: locale: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x259C9EF40](v15, -1, -1);
    MEMORY[0x259C9EF40](v14, -1, -1);
  }

  if ((*(v7 + 8))(v10, v11, v6, v7) != 1)
  {

    v41 = sub_258F0A350();
    v42 = sub_258F0A810();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_258DD8000, v41, v42, "#SpeakerIdManifestCalculator: SSREnrollmentSelectionStatus is not samplingSelectionCollecting", v43, 2u);
      MEMORY[0x259C9EF40](v43, -1, -1);
    }

    v39 = 0;
    v40 = &unk_286A29980;
    goto LABEL_44;
  }

  v16 = (*(v7 + 16))(v10, v11, v6, v7);
  if (!v17)
  {

    v44 = sub_258F0A350();
    v45 = sub_258F0A820();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_258DD8000, v44, v45, "SpeakerIdSelectionCalculator: Unable to retrieve the enrollmentId.", v46, 2u);
      MEMORY[0x259C9EF40](v46, -1, -1);
    }

    v39 = 0;
    v40 = &unk_286A29958;
    goto LABEL_44;
  }

  v18 = v16;
  v19 = v17;
  v82 = v11;
  v81 = v10;
  v20 = v0;
  v21 = v0[7];
  v84 = v16;
  v85 = v17;

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0x6F697463656C6553, 0xED0000657461446ELL);

  v78 = v84;
  v79 = v85;

  v22 = sub_258EE1918(v18, v19);
  v83 = v20;
  v20[5] = v22;
  v23 = v22;
  v24 = sub_258F0A350();
  v25 = sub_258F0A810();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = *(v23 + 16);
    _os_log_impl(&dword_258DD8000, v24, v25, "#SpeakerIdManifestCalculator: Current Sample Count: %ld", v26, 0xCu);
    MEMORY[0x259C9EF40](v26, -1, -1);
  }

  v80 = v23;
  v27 = v83[7];

  v84 = v18;
  v85 = v19;

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD00000000000001DLL, 0x8000000258F1D6E0);

  v28 = *(v27 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_defaults);
  v29 = (*(v7 + 128))(v84, v85, v28, v6, v7);

  v30 = sub_258F0A350();
  v31 = v18;
  v32 = sub_258F0A810();

  if (os_log_type_enabled(v30, v32))
  {
    v33 = swift_slowAlloc();
    v34 = v29;
    v35 = swift_slowAlloc();
    v84 = v35;
    *v33 = 134218242;
    *(v33 + 4) = v34;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_258DE3018(v31, v19, &v84);
    _os_log_impl(&dword_258DD8000, v30, v32, "#SpeakerIdManifestCalculator: samplesUploadedCount: %ld for enrollmentId: %s", v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x259C9EF40](v35, -1, -1);
    MEMORY[0x259C9EF40](v33, -1, -1);

    v29 = v34;
  }

  else
  {
  }

  v47 = (*(v7 + 112))(v28, v6, v7);
  result = (*(v7 + 120))(v28, v6, v7);
  v49 = *(v80 + 16);
  v77 = v29;
  v50 = __OFADD__(v29, v49);
  v51 = v29 + v49;
  if (v50)
  {
    __break(1u);
    goto LABEL_50;
  }

  v52 = result;
  v53 = (*(v7 + 104))(v78, v79, v28, v6, v7);

  if ((v53 & 1) == 0)
  {
    v54 = v83[7];
    sub_258EE3048(v31, v19, v81, v82);
  }

  if (v51 >= v47)
  {

    v50 = __OFSUB__(v51, v47);
    v60 = v51 - v47;
    if (!v50)
    {
      v61 = v83[7];
      swift_beginAccess();
      v59 = sub_258EE3818(v31, v19, v83 + 5, v60);
      swift_endAccess();
      sub_258EE3048(v31, v19, v81, v82);

      v39 = 0;
      goto LABEL_41;
    }

LABEL_50:
    __break(1u);
    return result;
  }

  if (*(v80 + 16) >= v52)
  {
    if (v77)
    {
      v62 = v83[7];

      v59 = sub_258EE1714(v31, v19, v80, v77);

      v63 = sub_258F0A350();
      v64 = sub_258F0A810();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_258DD8000, v63, v64, "#SpeakerIdManifestCalculator: Created ODSAMPLECOLLECTIONSTATUS_INTERMEDIATE_RESULT event", v65, 2u);
        MEMORY[0x259C9EF40](v65, -1, -1);
      }

      v39 = 0;
      goto LABEL_41;
    }

    (*(v7 + 152))(v28, v6, v7);
    v66 = (*(v7 + 160))(v6, v7);
    v67 = v83[7];
    if (v66)
    {

      v59 = sub_258EE1714(v31, v19, v80, 0);

      v39 = sub_258EE2484(1);
      v68 = sub_258F0A350();
      v69 = sub_258F0A810();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_258DD8000, v68, v69, "#SpeakerIdManifestCalculator: Created ODSAMPLECOLLECTIONSTATUS_INTERMEDIATE_RESULT event for first time", v70, 2u);
        MEMORY[0x259C9EF40](v70, -1, -1);
      }

      goto LABEL_41;
    }

    sub_258EE3048(v31, v19, v81, v82);

    sub_258EE3270(v31, v19);

    v55 = sub_258F0A350();
    v56 = sub_258F0A810();
    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_30;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = "#SpeakerIdManifestCalculator: user is not selected, mark enrollment selection as finished";
    goto LABEL_29;
  }

  swift_bridgeObjectRelease_n();

  v55 = sub_258F0A350();
  v56 = sub_258F0A810();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = "#SpeakerIdManifestCalculator: Not uploading until we have the privacy approved minimal count.";
LABEL_29:
    _os_log_impl(&dword_258DD8000, v55, v56, v58, v57, 2u);
    MEMORY[0x259C9EF40](v57, -1, -1);
  }

LABEL_30:

  v39 = 0;
  v59 = 0;
LABEL_41:
  v71 = sub_258F0A350();
  v72 = sub_258F0A810();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_258DD8000, v71, v72, "#SpeakerIdManifestCalculator: Sampling Calculator Completed", v73, 2u);
    MEMORY[0x259C9EF40](v73, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A820, &qword_258F166D8);
  v40 = swift_allocObject();
  v40[1] = xmmword_258F0B820;
  *(v40 + 4) = v59;
  v0 = v83;
  v74 = v83[5];

LABEL_44:
  v75 = v0[6];
  *v75 = v39;
  v75[1] = v40;
  v76 = v0[1];

  return v76();
}

uint64_t sub_258EE1714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_258EE2700(a1, a2, a3, 1u);
  v16 = a1;
  v17 = a2;

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD00000000000001DLL, 0x8000000258F1D6E0);

  v11 = *(a3 + 16);
  if (__OFADD__(a4, v11))
  {
    __break(1u);
  }

  else
  {
    _s16MetricsFramework13SamplingUtilsC23setManifestCurrentCount6forKey_2inySS_SiSo14NSUserDefaultsCtFZ_0(v16, v17, a4 + v11, *(v4 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_defaults));

    v12 = sub_258F0A350();
    v13 = sub_258F0A810();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_258DE3018(a1, a2, &v16);
      *(v14 + 12) = 2048;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2048;
      *(v14 + 24) = *(a3 + 16);

      _os_log_impl(&dword_258DD8000, v12, v13, "#SpeakerIdManifestCalculator: set manifest event manifestCurrentCount for %s to %ld + %ld", v14, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x259C9EF40](v15, -1, -1);
      MEMORY[0x259C9EF40](v14, -1, -1);
    }

    else
    {
    }

    sub_258EE3270(a1, a2);
    return v9;
  }

  return result;
}

uint64_t sub_258EE1918(unint64_t a1, void (*a2)(char *, char *, char *))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v73 - v8;
  v84 = sub_258F09A70();
  v91 = *(v84 - 8);
  v10 = *(v91 + 64);
  v12 = MEMORY[0x28223BE20](v84, v11);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = MEMORY[0x28223BE20](v16, v17);
  MEMORY[0x28223BE20](v18, v19);
  v94 = v73 - v22;
  v23 = MEMORY[0x277D84FA0];
  if (a2)
  {
    v78 = v21;
    v79 = v20;
    v24 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v25 = [v24 OnDeviceAnalytics];
    swift_unknownObjectRelease();
    v26 = [v25 SpeakerIdSampling];
    swift_unknownObjectRelease();
    v27 = [v26 publisher];

    v28 = swift_allocObject();
    *(v28 + 16) = MEMORY[0x277D84F90];
    v96 = (v28 + 16);
    v102 = nullsub_1;
    v103 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v99 = 1107296256;
    v100 = sub_258E0915C;
    v101 = &block_descriptor_16_0;
    v29 = _Block_copy(&aBlock);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v2;
    v102 = sub_258EE4E50;
    v103 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v99 = 1107296256;
    v31 = v28;
    v100 = sub_258E0289C;
    v101 = &block_descriptor_22_0;
    v32 = _Block_copy(&aBlock);

    v74 = v27;
    v33 = [v27 sinkWithCompletion:v29 receiveInput:v32];
    _Block_release(v32);
    _Block_release(v29);

    v34 = sub_258F0A350();
    v35 = sub_258F0A810();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      aBlock = v95;
      *v36 = 134218242;
      v37 = v96;
      swift_beginAccess();
      v38 = *v37;
      if (*v37 >> 62)
      {
        if (v38 < 0)
        {
          v72 = *v37;
        }

        v39 = sub_258F0AA20();
      }

      else
      {
        v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = MEMORY[0x277D84FA0];
      *(v36 + 4) = v39;

      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_258DE3018(a1, a2, &aBlock);
      _os_log_impl(&dword_258DD8000, v34, v35, "#SpeakerIdManifestCalculator: Fetched %ld samples with enrollmentId: %s", v36, 0x16u);
      v41 = v95;
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x259C9EF40](v41, -1, -1);
      MEMORY[0x259C9EF40](v36, -1, -1);
    }

    else
    {

      v40 = MEMORY[0x277D84FA0];
      v37 = v96;
    }

    swift_beginAccess();
    v42 = *v37;
    v97 = v40;
    if (v42 >> 62)
    {
      goto LABEL_50;
    }

    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

    v80 = v43;
    if (v43)
    {
      v73[1] = v31;
      v44 = 0;
      v88 = v42 & 0xC000000000000001;
      v87 = v42 & 0xFFFFFFFFFFFFFF8;
      v86 = (v42 + 32);
      v92 = (v91 + 32);
      v93 = (v91 + 48);
      v82 = a1;
      v90 = v9;
      v81 = v42;
      v31 = v80;
      v83 = a2;
      v77 = v14;
      v76 = v91 + 16;
      v75 = (v91 + 8);
      while (1)
      {
        if (v88)
        {
          v45 = MEMORY[0x259C9E3B0](v44, v42);
          v46 = __OFADD__(v44++, 1);
          if (v46)
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v44 >= *(v87 + 16))
          {
            goto LABEL_49;
          }

          v45 = v86[v44];
          v46 = __OFADD__(v44++, 1);
          if (v46)
          {
LABEL_43:
            __break(1u);
LABEL_44:
            v23 = v97;
            goto LABEL_46;
          }
        }

        v89 = v45;
        v47 = [v45 enrollmentIdentifier];
        if (v47)
        {
          v48 = v47;
          v49 = sub_258F0A4F0();
          v51 = v50;

          if (v49 == a1 && v51 == a2)
          {
          }

          else
          {
            v53 = sub_258F0AD80();

            if ((v53 & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v85 = v44;
          v54 = [v89 onDeviceSampleIdentifiers];
          v55 = sub_258F0A6B0();

          v56 = *(v55 + 16);
          if (v56)
          {
            a1 = 0;
            v42 = v55 + 40;
            v96 = MEMORY[0x277D84F90];
            v14 = v84;
            while (a1 < *(v55 + 16))
            {
              a2 = *(v42 - 8);
              v57 = *v42;

              sub_258F09A30();

              if ((*v93)(v9, 1, v14) == 1)
              {
                sub_258DE2184(v9, &qword_27F988730, &unk_258F0F8E0);
              }

              else
              {
                a2 = *v92;
                (*v92)(v94, v9, v14);
                v58 = v96;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v58 = sub_258DE26A4(0, v58[2] + 1, 1, v58);
                }

                v59 = v58;
                v60 = v58[2];
                v96 = v59;
                v61 = v59[3];
                if (v60 >= v61 >> 1)
                {
                  v96 = sub_258DE26A4(v61 > 1, v60 + 1, 1, v96);
                }

                v62 = v96;
                v96[2] = v60 + 1;
                a2(v62 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v60, v94, v14);
                v9 = v90;
              }

              ++a1;
              v42 += 16;
              if (v56 == a1)
              {
                goto LABEL_37;
              }
            }

            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            v43 = sub_258F0AA20();
            goto LABEL_9;
          }

          v96 = MEMORY[0x277D84F90];
LABEL_37:

          v63 = v96[2];
          if (v63)
          {
            v64 = v96 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
            v95 = *(v91 + 72);
            v65 = *(v91 + 16);
            v14 = v77;
            v66 = v79;
            v67 = v78;
            v68 = v84;
            v69 = v75;
            do
            {
              v65(v67, v64, v68);
              v65(v14, v67, v68);
              sub_258E05C6C(v66, v14);
              v70 = *v69;
              (*v69)(v66, v68);
              v70(v67, v68);
              v64 += v95;
              --v63;
            }

            while (v63);

            a2 = v83;
            a1 = v82;
            v9 = v90;
            v42 = v81;
            v31 = v80;
          }

          else
          {

            a2 = v83;
            a1 = v82;
            v42 = v81;
          }

          v44 = v85;
        }

LABEL_13:

        if (v44 == v31)
        {
          goto LABEL_44;
        }
      }
    }

    v23 = MEMORY[0x277D84FA0];
LABEL_46:
  }

  return v23;
}