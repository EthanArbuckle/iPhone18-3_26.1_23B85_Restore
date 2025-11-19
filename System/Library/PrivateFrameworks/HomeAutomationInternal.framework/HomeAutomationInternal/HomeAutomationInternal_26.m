uint64_t objectdestroy_84Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_87Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_252B00A80()
{
  result = qword_27F543218;
  if (!qword_27F543218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5431E8, &qword_252E4AAE0);
    sub_252B00B40(&qword_27F543220, 255, type metadata accessor for IntentSelectionCacheRecordMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543218);
  }

  return result;
}

uint64_t sub_252B00B40(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252B00BCC()
{
  result = qword_27F543240;
  if (!qword_27F543240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543240);
  }

  return result;
}

unint64_t sub_252B00C24()
{
  result = qword_27F543248;
  if (!qword_27F543248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543248);
  }

  return result;
}

unint64_t sub_252B00C7C()
{
  result = qword_27F543250;
  if (!qword_27F543250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543250);
  }

  return result;
}

unint64_t sub_252B00CD4()
{
  result = qword_27F543258;
  if (!qword_27F543258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543258);
  }

  return result;
}

unint64_t sub_252B00D2C()
{
  result = qword_27F543260;
  if (!qword_27F543260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543260);
  }

  return result;
}

unint64_t sub_252B00D84()
{
  result = qword_27F543268;
  if (!qword_27F543268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543268);
  }

  return result;
}

unint64_t sub_252B00DDC()
{
  result = qword_27F543270;
  if (!qword_27F543270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543270);
  }

  return result;
}

unint64_t sub_252B00E34()
{
  result = qword_27F543278;
  if (!qword_27F543278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543278);
  }

  return result;
}

unint64_t sub_252B00E8C()
{
  result = qword_27F543280;
  if (!qword_27F543280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543280);
  }

  return result;
}

unint64_t sub_252B00EE4()
{
  result = qword_27F543288;
  if (!qword_27F543288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543288);
  }

  return result;
}

unint64_t sub_252B00F3C()
{
  result = qword_27F543290;
  if (!qword_27F543290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543290);
  }

  return result;
}

unint64_t sub_252B00F94()
{
  result = qword_27F543298;
  if (!qword_27F543298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543298);
  }

  return result;
}

HomeAutomationInternal::SnippetRenderingMode_optional __swiftcall SnippetRenderingMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SnippetRenderingMode.rawValue.getter()
{
  v1 = 0x6863726172656968;
  v2 = 0x6F7268636F6E6F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x657474656C6170;
  }

  if (*v0)
  {
    v1 = 0x6C6F6369746C756DLL;
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

uint64_t sub_252B010F4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B011C4()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252B01280()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252B01358(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000006C616369;
  v3 = 0x6863726172656968;
  v4 = 0x6F7268636F6E6F6DLL;
  v5 = 0xE700000000000000;
  if (*v1 == 2)
  {
    v5 = 0xEA0000000000656DLL;
  }

  else
  {
    v4 = 0x657474656C6170;
  }

  if (*v1)
  {
    v3 = 0x6C6F6369746C756DLL;
    v2 = 0xEA0000000000726FLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

HomeAutomationInternal::SnippetHomeDeviceType_optional __swiftcall SnippetHomeDeviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 30;
  switch(v3)
  {
    case 0:
      goto LABEL_47;
    case 1:
      v5 = 1;
      goto LABEL_47;
    case 2:
      v5 = 2;
      goto LABEL_47;
    case 3:
      v5 = 3;
      goto LABEL_47;
    case 4:
      v5 = 4;
      goto LABEL_47;
    case 5:
      v5 = 5;
      goto LABEL_47;
    case 6:
      v5 = 6;
      goto LABEL_47;
    case 7:
      v5 = 7;
      goto LABEL_47;
    case 8:
      v5 = 8;
      goto LABEL_47;
    case 9:
      v5 = 9;
      goto LABEL_47;
    case 10:
      v5 = 10;
      goto LABEL_47;
    case 11:
      v5 = 11;
      goto LABEL_47;
    case 12:
      v5 = 12;
      goto LABEL_47;
    case 13:
      v5 = 13;
      goto LABEL_47;
    case 14:
      v5 = 14;
      goto LABEL_47;
    case 15:
      v5 = 15;
      goto LABEL_47;
    case 16:
      v5 = 16;
      goto LABEL_47;
    case 17:
      v5 = 17;
      goto LABEL_47;
    case 18:
      v5 = 18;
      goto LABEL_47;
    case 19:
      v5 = 19;
      goto LABEL_47;
    case 20:
      v5 = 20;
      goto LABEL_47;
    case 21:
      v5 = 21;
      goto LABEL_47;
    case 22:
      v5 = 22;
      goto LABEL_47;
    case 23:
      v5 = 23;
      goto LABEL_47;
    case 24:
      v5 = 24;
      goto LABEL_47;
    case 25:
      v5 = 25;
      goto LABEL_47;
    case 26:
      v5 = 26;
      goto LABEL_47;
    case 27:
      v5 = 27;
      goto LABEL_47;
    case 28:
      v5 = 28;
      goto LABEL_47;
    case 29:
      v5 = 29;
LABEL_47:
      v6 = v5;
      break;
    case 30:
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    default:
      v6 = 48;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t SnippetHomeDeviceType.rawValue.getter()
{
  result = 0x6C7562746867696CLL;
  switch(*v0)
  {
    case 1:
      result = 0x686374697773;
      break;
    case 2:
      result = 0x74736F6D72656874;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 7233894;
      break;
    case 5:
      result = 0x74656C74756FLL;
      break;
    case 6:
      result = 0x6B636F4C726F6F64;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x79726574746162;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 0x53746361746E6F63;
      break;
    case 0xC:
      result = 1919905636;
      break;
    case 0xD:
      result = 0x79746964696D7568;
      break;
    case 0xE:
      result = 0x736E65536B61656CLL;
      break;
    case 0xF:
      v2 = 0x53746867696CLL;
      goto LABEL_42;
    case 0x10:
      result = 0x65536E6F69746F6DLL;
      break;
    case 0x11:
      result = 0x636E61707563636FLL;
      break;
    case 0x12:
      result = 0x7974697275636573;
      break;
    case 0x13:
      v2 = 0x53656B6F6D73;
LABEL_42:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 0x14:
      result = 0xD000000000000011;
      break;
    case 0x15:
      result = 0x776F646E6977;
      break;
    case 0x16:
      result = 0x736564616873;
      break;
    case 0x17:
      result = 0x6172656D61437069;
      break;
    case 0x18:
      result = 0x6F68706F7263696DLL;
      break;
    case 0x19:
      result = 0x72656B61657073;
      break;
    case 0x1A:
    case 0x1B:
      result = 0x657A69726F746F6DLL;
      break;
    case 0x1C:
      result = 0x6F43726574616568;
      break;
    case 0x1D:
      result = 0xD000000000000016;
      break;
    case 0x1E:
      result = 1952541811;
      break;
    case 0x1F:
      result = 0x656C6B6E69727073;
      break;
    case 0x20:
      result = 0x65766C6176;
      break;
    case 0x21:
      result = 0x746563756166;
      break;
    case 0x22:
      result = 0x7265776F6873;
      break;
    case 0x23:
      result = 0x69736976656C6574;
      break;
    case 0x24:
      result = 0x6C6C6542726F6F64;
      break;
    case 0x25:
      result = 0x6669727550726961;
      break;
    case 0x26:
      result = 0x7265746C6966;
      break;
    case 0x27:
      result = 0x5654656C707061;
      break;
    case 0x28:
      result = 0x65526172656D6163;
      break;
    case 0x29:
      result = 1802398067;
      break;
    case 0x2A:
      result = 0x706F4D746F626F72;
      break;
    case 0x2B:
      result = 0xD000000000000012;
      break;
    case 0x2C:
      result = 0x74726F70726961;
      break;
    case 0x2D:
      result = 0x726F736E6573;
      break;
    case 0x2E:
      result = 0x6D6F74737563;
      break;
    case 0x2F:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252B01B98(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SnippetHomeDeviceType.rawValue.getter();
  v4 = v3;
  if (v2 == SnippetHomeDeviceType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_252E37DB4();
  }

  return v7 & 1;
}

uint64_t sub_252B01C34()
{
  v1 = *v0;
  sub_252E37EC4();
  SnippetHomeDeviceType.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B01C9C()
{
  v2 = *v0;
  SnippetHomeDeviceType.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252B01D00()
{
  v1 = *v0;
  sub_252E37EC4();
  SnippetHomeDeviceType.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B01D70@<X0>(uint64_t *a1@<X8>)
{
  result = SnippetHomeDeviceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_252B01E4C()
{
  result = qword_27F5432A0;
  if (!qword_27F5432A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5432A0);
  }

  return result;
}

unint64_t sub_252B01EA4()
{
  result = qword_27F5432A8;
  if (!qword_27F5432A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5432A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SnippetHomeDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD1)
  {
    goto LABEL_17;
  }

  if (a2 + 47 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 47) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 47;
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

      return (*a1 | (v4 << 8)) - 47;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 47;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v8 = v6 - 48;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnippetHomeDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD1)
  {
    v4 = 0;
  }

  if (a2 > 0xD0)
  {
    v5 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
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
    *result = a2 + 47;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252B02058()
{
  result = qword_27F5432B0;
  if (!qword_27F5432B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5432B0);
  }

  return result;
}

unint64_t sub_252B020AC()
{
  result = qword_27F5432B8;
  if (!qword_27F5432B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5432B8);
  }

  return result;
}

uint64_t LocationService.init(timeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E36C84();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_252B0216C()
{
  v0 = sub_252E36C84();
  __swift_allocate_value_buffer(v0, qword_27F5432C0);
  *__swift_project_value_buffer(v0, qword_27F5432C0) = 50;
  v1 = *MEMORY[0x277D85178];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t static LocationService.defaultTimeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F53F348 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36C84();
  v3 = __swift_project_value_buffer(v2, qword_27F5432C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252B022C4()
{
  v1 = v0[11];
  v2 = [objc_allocWithZone(MEMORY[0x277D47310]) init];
  v0[12] = v2;
  [v2 setDesiredAccuracy_];
  sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
  v3 = sub_252E37674();
  [v2 setMaxAge_];

  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v2 setSearchTimeout_];

  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 56), (v0 + 2));

  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v8 = *(MEMORY[0x277D5BFB8] + 4);
  v9 = swift_task_alloc();
  v0[13] = v9;
  v10 = sub_25293F638(0, &qword_27F5432D8, 0x277D471B0);
  *v9 = v0;
  v9[1] = sub_252B02484;

  return MEMORY[0x2821BB6A0](v2, v6, v10, v7);
}

uint64_t sub_252B02484(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_252B0274C;
  }

  else
  {
    v5 = sub_252B02598;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B02598()
{
  v1 = *(v0 + 112);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = [objc_allocWithZone(MEMORY[0x277D4C408]) init];
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    if (v4)
    {
      [v3 latitude];
      [v4 setLat_];
      [v3 longitude];
      [v4 setLng_];
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 96);
    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D60);
    sub_252CC4050(0xD000000000000020, 0x8000000252E7B150, 0xD000000000000078, 0x8000000252E7B0B0, 0xD000000000000014, 0x8000000252E7B130, 40);
    v4 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v4);
}

uint64_t sub_252B0274C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544D60);
  sub_252E379F4();

  swift_getErrorValue();
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[9];
  v7 = sub_252E37E54();
  MEMORY[0x2530AD570](v7);

  sub_252CC4050(0xD000000000000020, 0x8000000252E7B080, 0xD000000000000078, 0x8000000252E7B0B0, 0xD000000000000014, 0x8000000252E7B130, 43);

  v8 = v0[1];

  return v8(0);
}

double sub_252B028D8()
{
  v1 = v0;
  v2 = sub_252E36C84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D85188])
  {
    (*(v3 + 96))(v6, v2);
    return *v6;
  }

  if (v7 == *MEMORY[0x277D85178])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = 1000.0;
  }

  else if (v7 == *MEMORY[0x277D85170])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = 1000000.0;
  }

  else
  {
    if (v7 != *MEMORY[0x277D85168])
    {
      (*(v3 + 8))(v6, v2);
      return 9.22337204e18;
    }

    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = 1000000000.0;
  }

  return v9 / v10;
}

uint64_t sub_252B02AD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25296BC70;

  return LocationService.getCurrentLocation()();
}

double sub_252B02B64()
{
  v1 = v0;
  v2 = sub_252E36C84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D85188])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
  }

  else
  {
    if (v7 == *MEMORY[0x277D85178])
    {
      (*(v3 + 96))(v6, v2);
      v9 = *v6;
      v10 = 1000.0;
    }

    else if (v7 == *MEMORY[0x277D85170])
    {
      (*(v3 + 96))(v6, v2);
      v9 = *v6;
      v10 = 1000000.0;
    }

    else
    {
      if (v7 != *MEMORY[0x277D85168])
      {
        (*(v3 + 8))(v6, v2);
        v8 = 9.22337204e18;
        return v8 * 1000.0;
      }

      (*(v3 + 96))(v6, v2);
      v9 = *v6;
      v10 = 1000000000.0;
    }

    v8 = v9 / v10;
  }

  return v8 * 1000.0;
}

uint64_t dispatch thunk of LocationProviding.getCurrentLocation()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25296BC70;

  return v9(a1, a2);
}

uint64_t type metadata accessor for LocationService()
{
  result = qword_27F5432E0;
  if (!qword_27F5432E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252B02F00()
{
  result = sub_252E36C84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t UnitSemantic.rawValue.getter()
{
  v1 = 0x746E6563726570;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x4773656572676564;
  }

  if (*v0)
  {
    v1 = 0x4373656572676564;
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

HomeAutomationInternal::UnitSemantic_optional __swiftcall UnitSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252B030E0()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B031C0()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252B0328C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252B03374(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746E6563726570;
  v4 = 0x8000000252E67E40;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x4773656572676564;
    v4 = 0xEE00636972656E65;
  }

  if (*v1)
  {
    v3 = 0x4373656572676564;
    v2 = 0xEE00737569736C65;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_252B034F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_252AD617C();
  v5 = sub_252B0385C();
  v6 = sub_252B038B0();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t _s22HomeAutomationInternal12UnitSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x746E6563726570;
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 0xD000000000000011;
      v5 = 0x8000000252E67E40;
    }

    else
    {
      v4 = 0x4773656572676564;
      v5 = 0xEE00636972656E65;
    }
  }

  else
  {
    if (*a1)
    {
      v4 = 0x4373656572676564;
    }

    else
    {
      v4 = 0x746E6563726570;
    }

    if (v3)
    {
      v5 = 0xEE00737569736C65;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000011;
  v8 = 0x8000000252E67E40;
  if (*a2 != 2)
  {
    v7 = 0x4773656572676564;
    v8 = 0xEE00636972656E65;
  }

  if (*a2)
  {
    v2 = 0x4373656572676564;
    v6 = 0xEE00737569736C65;
  }

  if (*a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (*a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

unint64_t sub_252B036E0()
{
  result = qword_27F5432F0;
  if (!qword_27F5432F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5432F0);
  }

  return result;
}

unint64_t sub_252B03738()
{
  result = qword_27F5432F8;
  if (!qword_27F5432F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5432F8);
  }

  return result;
}

unint64_t sub_252B03790()
{
  result = qword_27F543300;
  if (!qword_27F543300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5409C8, &qword_252E4B3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543300);
  }

  return result;
}

unint64_t sub_252B037F8()
{
  result = qword_27F543308;
  if (!qword_27F543308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543308);
  }

  return result;
}

unint64_t sub_252B0385C()
{
  result = qword_27F543310;
  if (!qword_27F543310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543310);
  }

  return result;
}

unint64_t sub_252B038B0()
{
  result = qword_27F543318;
  if (!qword_27F543318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543318);
  }

  return result;
}

uint64_t sub_252B03908(uint64_t a1)
{
  v1 = *(a1 + 16);

  sub_252E362B4();
}

uint64_t sub_252B0399C(uint64_t a1, void *a2)
{
  if (!a2)
  {
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  v2 = a2;
  v3 = sub_252C2F554();
  if (v3 >> 62)
  {
    v4 = sub_252E378C4();

    if (!v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v4)
  {
LABEL_4:
    LOBYTE(v4) = sub_252C2C2E4(0x12);
  }

LABEL_5:

  return v4 & 1;
}

uint64_t sub_252B03A30(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252B03A54, 0, 0);
}

uint64_t sub_252B03A54()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);

  sub_252943BD0(sub_252B03B8C, v1, 1, v3, v4);

  v5 = v0[1];

  return v5();
}

void *sub_252B03B28@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SceneNotSetUpResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B03B94()
{
  v0 = sub_252E33944();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_252E33924();
  return sub_252E33F54();
}

uint64_t sub_252B03C48()
{
  v0[3] = *(v0[2] + 24);
  v1 = *(MEMORY[0x277D55C70] + 4);
  v5 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_252ACFBBC;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000020, 0x8000000252E7B220, v3);
}

uint64_t sub_252B03D28(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for HomeAutomationBlockDisableSceneParameters(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B03DF4, 0, 0);
}

uint64_t sub_252B03DF4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *__swift_project_boxed_opaque_existential_1((v0[2] + 112), *(v0[2] + 136));
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  *(v1 + *(v2 + 20)) = 0;
  v7 = v1 + *(v2 + 24);
  *v7 = 0x4000000000000000;
  *(v7 + 8) = 0;
  sub_252E37024();
  v6(v3, 0, 1, v5);
  sub_252956C98(v3, v1);
  v8 = sub_252C05BC4();
  v0[6] = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_252B03FA0;

  return v12(0xD000000000000020, 0x8000000252E7B220, v8);
}

uint64_t sub_252B03FA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252B0416C;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252B040EC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252B040EC()
{
  v1 = v0[3];
  sub_252B04DE4(v0[5]);

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_252B0416C()
{
  v1 = v0[3];
  sub_252B04DE4(v0[5]);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_252B04214(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25293B808;

  return (sub_252B0436C)(a2);
}

void *sub_252B042C4@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockDisableSceneHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

BOOL sub_252B04300(uint64_t *a1)
{
  v1 = a1[24];
  if (!*(a1[16] + 16) && !sub_2529A6F1C(19, a1[10]) || !*(v1 + 16))
  {
    return 0;
  }

  return sub_2529A78B0(1, v1);
}

uint64_t sub_252B0436C()
{
  v1[27] = v0;
  v2 = sub_252E34014();
  v1[28] = v2;
  v3 = *(v2 - 8);
  v1[29] = v3;
  v4 = *(v3 + 64) + 15;
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B0442C, 0, 0);
}

uint64_t sub_252B0442C()
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v1 + 288), v0 + 16);

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(v3 + 120))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v4)
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 216);
    v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v7 + 96), v0 + 96);

    v8 = *(v0 + 120);
    *(v0 + 248) = v8;
    *(v0 + 264) = __swift_project_boxed_opaque_existential_1((v0 + 96), v8);
    sub_252929E74(v6 + 32, v0 + 136);
    v9 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    sub_252B03B94();
    v10 = swift_task_alloc();
    *(v0 + 272) = v10;
    *v10 = v0;
    v10[1] = sub_252B046A4;
    v11 = *(v0 + 240);
    v12 = *(v0 + 216);

    return sub_252A199A8(v0 + 176, &unk_252E4B588, v12, &unk_252E4B590, 0, v11, 0, 0);
  }

  else
  {
    sub_252929E74(*(v0 + 216) + 32, v0 + 56);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v14);

    v16 = swift_task_alloc();
    *(v0 + 304) = v16;
    *v16 = v0;
    v16[1] = sub_252B049E0;
    v17 = *(v0 + 216);

    return sub_252BDC404(&unk_252E4B578, v17, v14, v15);
  }
}

uint64_t sub_252B046A4()
{
  v2 = *(*v1 + 272);
  v3 = *v1;
  v3[35] = v0;

  if (v0)
  {
    (*(v3[29] + 8))(v3[30], v3[28]);

    return MEMORY[0x2822009F8](sub_252B04B68, 0, 0);
  }

  else
  {
    (*(v3[29] + 8))(v3[30], v3[28]);
    v4 = *(MEMORY[0x277D5BF40] + 4);
    v5 = swift_task_alloc();
    v3[36] = v5;
    *v5 = v3;
    v5[1] = sub_252B04850;
    v6 = v3[32];
    v7 = v3[33];
    v8 = v3[31];

    return MEMORY[0x2821BB5D0](v3 + 22, v8, v6);
  }
}

uint64_t sub_252B04850()
{
  v2 = *v1;
  v3 = (*v1)[36];
  v6 = *v1;
  v2[37] = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 22);
  if (v0)
  {
    v4 = sub_252B04BDC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 17);
    v4 = sub_252B04974;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B04974()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[30];

  v2 = v0[1];

  return v2();
}

uint64_t sub_252B049E0()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_252B04C50;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_252B04AFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B04AFC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[30];

  v2 = v0[1];

  return v2();
}

uint64_t sub_252B04B68()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[35];
  v2 = v0[30];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252B04BDC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[37];
  v2 = v0[30];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252B04C50()
{
  v1 = v0[27];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v0[39];
  v3 = v0[30];

  v4 = v0[1];

  return v4();
}

uint64_t sub_252B04CC4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252B03D28(v0);
}

uint64_t sub_252B04D54()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252B03C28(v0);
}

uint64_t sub_252B04DE4(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationBlockDisableSceneParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_252B04E40(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_54;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = v1;
    v30 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v3, v28);
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v3 >= *(v31 + 16))
        {
          goto LABEL_49;
        }

        v5 = *(v30 + 8 * v3);

        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v27 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = sub_252E378C4();
          isUniquelyReferenced_nonNull_bridgeObject = v27;
          goto LABEL_3;
        }
      }

      v7 = sub_252E34524();

      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v2;
      }

      v2 = v8 >> 62;
      if (v8 >> 62)
      {
        v9 = sub_252E378C4();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v4 >> 62;
      if (v4 >> 62)
      {
        v25 = sub_252E378C4();
        v12 = v25 + v9;
        if (__OFADD__(v25, v9))
        {
LABEL_45:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v11 + v9;
        if (__OFADD__(v11, v9))
        {
          goto LABEL_45;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_24;
        }

        v13 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v10)
        {
LABEL_24:
          sub_252E378C4();
          goto LABEL_25;
        }

        v13 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_25:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v34 = v9;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v2)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_5:

          if (v34 > 0)
          {
            goto LABEL_50;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_5;
        }
      }

      if (((v16 >> 1) - v15) < v34)
      {
        goto LABEL_51;
      }

      v18 = v13 + 8 * v15 + 32;
      if (v2)
      {
        if (v17 < 1)
        {
          goto LABEL_53;
        }

        sub_2529E6488(&qword_27F543338, &qword_27F541820, &qword_252E40AB8);
        for (i = 0; i != v17; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541820, &qword_252E40AB8);
          v20 = sub_2529FBE00(v33, i, v8);
          v22 = *v21;

          (v20)(v33, 0);
          *(v18 + 8 * i) = v22;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543330, &qword_252E4B5A8);
        swift_arrayInitWithCopy();
      }

      v1 = v29;
      if (v34 >= 1)
      {
        v23 = *(v13 + 16);
        v6 = __OFADD__(v23, v34);
        v24 = v23 + v34;
        if (v6)
        {
          goto LABEL_52;
        }

        *(v13 + 16) = v24;
      }

LABEL_6:
      v2 = MEMORY[0x277D84F90];
      if (v3 == v1)
      {
        return v4;
      }
    }
  }

  return v2;
}

uint64_t sub_252B051B4(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v25 = a1 + 32;
  while (1)
  {
    v4 = *(v25 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v23 = *(v25 + 8 * v1);
      }

      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = sub_252E378C4();
      v9 = v24 + v6;
      if (__OFADD__(v24, v6))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v29 = v6;
    if (result)
    {
      if (v7)
      {
        goto LABEL_16;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v7)
      {
LABEL_16:
        sub_252E378C4();
        goto LABEL_17;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *(v10 + 16);
LABEL_17:
    result = sub_252E37A54();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v13 >> 1) - v12) < v29)
    {
      goto LABEL_40;
    }

    v27 = v2;
    v15 = v10 + 8 * v12 + 32;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_42;
      }

      sub_2529E6488(&qword_27F543340, &qword_27F5417F0, &qword_252E40A90);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5417F0, &qword_252E40A90);
        v17 = sub_2529FBE00(v28, i, v4);
        v19 = *v18;

        (v17)(v28, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      sub_252E35944();
      swift_arrayInitWithCopy();
    }

    v2 = v27;
    if (v29 >= 1)
    {
      v20 = *(v10 + 16);
      v21 = __OFADD__(v20, v29);
      v22 = v20 + v29;
      if (v21)
      {
        goto LABEL_41;
      }

      *(v10 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v26)
    {
      return v2;
    }
  }

  result = sub_252E378C4();
  v14 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v29 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_252B05484(uint64_t a1)
{

  v2 = sub_252B087A4(a1);

  v12 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_18:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v4, v2);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = *(v2 + 8 * v4 + 32);

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v8 = sub_252E35904();

    ++v4;
    if (v8)
    {
      MEMORY[0x2530AD700](v9);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v5 = v12;
      v4 = v7;
    }
  }

  return v5;
}

uint64_t sub_252B05604(unint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_40:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (2)
    {
      v7 = v5;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v7, v1);
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 >= *(v2 + 16))
          {
            goto LABEL_37;
          }

          v8 = *(v1 + 8 * v7 + 32);

          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }
        }

        sub_252E34554();
        sub_252E34E24();

        if (v21)
        {
          break;
        }

        ++v7;
        if (v5 == v3)
        {
          goto LABEL_20;
        }
      }

      MEMORY[0x2530AD700](v9);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v6 = v22;
      if (v5 != v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v22 = v6;

  v1 = sub_252B04E40(v11);

  v21 = v4;
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    v12 = sub_252E378C4();
    if (v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_22:
      v13 = MEMORY[0x277D84F90];
      v14 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v14, v1);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v14 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v15 = *(v1 + 8 * v14 + 32);

          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_38;
          }
        }

        sub_252E349D4();

        if (v20)
        {
          MEMORY[0x2530AD700](v17);
          if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v13 = v4;
          if (v16 == v12)
          {
            goto LABEL_43;
          }

          v14 = v16;
        }

        else
        {
          ++v14;
          if (v16 == v12)
          {
            goto LABEL_43;
          }
        }
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_43:

  sub_25297AE00(v13);
  return v22;
}

uint64_t sub_252B058DC(unint64_t a1)
{
  v12 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_20:
  v3 = sub_252E378C4();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    for (i = v4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](i, a1);
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_19;
        }

        v7 = *(a1 + 8 * i + 32);

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      sub_252E34514();
      sub_252E34E24();

      if (v11)
      {
        break;
      }

      if (v4 == v3)
      {
        return v5;
      }
    }

    MEMORY[0x2530AD700](v8);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v9 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v5 = v12;
  }

  while (v4 != v3);
  return v5;
}

uint64_t sub_252B05A58()
{
  v0 = sub_252E34874();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v61 = &v56 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v60 = &v56 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v59 = &v56 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v56 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v57 = &v56 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BE8, &qword_252E41DB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419C0;
  v21 = v1[13];
  v21(v19, *MEMORY[0x277D5E508], v0);
  v22 = sub_252E34854();
  v24 = v23;
  v25 = v1[1];
  v25(v19, v0);
  *(inited + 32) = v22;
  *(inited + 40) = v24;
  *(inited + 48) = 1;
  v21(v17, *MEMORY[0x277D5E530], v0);
  v26 = sub_252E34854();
  v28 = v27;
  v25(v17, v0);
  *(inited + 56) = v26;
  *(inited + 64) = v28;
  *(inited + 72) = 2;
  v29 = v57;
  v21(v57, *MEMORY[0x277D5E528], v0);
  v30 = sub_252E34854();
  v32 = v31;
  v25(v29, v0);
  *(inited + 80) = v30;
  *(inited + 88) = v32;
  *(inited + 96) = 3;
  v33 = v58;
  v21(v58, *MEMORY[0x277D5E550], v0);
  v34 = sub_252E34854();
  v36 = v35;
  v25(v33, v0);
  *(inited + 104) = v34;
  *(inited + 112) = v36;
  *(inited + 120) = 4;
  v37 = v59;
  v21(v59, *MEMORY[0x277D5E540], v0);
  v38 = sub_252E34854();
  v40 = v39;
  v25(v37, v0);
  *(inited + 128) = v38;
  *(inited + 136) = v40;
  *(inited + 144) = 6;
  v41 = v60;
  v21(v60, *MEMORY[0x277D5E538], v0);
  v42 = sub_252E34854();
  v44 = v43;
  v25(v41, v0);
  *(inited + 152) = v42;
  *(inited + 160) = v44;
  *(inited + 168) = 5;
  v45 = v61;
  v21(v61, *MEMORY[0x277D5E558], v0);
  v46 = sub_252E34854();
  v48 = v47;
  v25(v45, v0);
  *(inited + 176) = v46;
  *(inited + 184) = v48;
  *(inited + 192) = 7;
  v49 = v62;
  v21(v62, *MEMORY[0x277D5E548], v0);
  v50 = v49;
  v51 = sub_252E34854();
  v53 = v52;
  v25(v50, v0);
  *(inited + 200) = v51;
  *(inited + 208) = v53;
  *(inited + 216) = 7;
  v54 = sub_252CC643C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BF0, &qword_252E41DC0);
  result = swift_arrayDestroy();
  qword_27F575818 = v54;
  return result;
}

uint64_t sub_252B05F4C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544D90);
  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E7B4A0, 0xD000000000000068, 0x8000000252E7B280);
  v7 = *(sub_252B680FC() + 72);

  if (v7 != 1)
  {
    sub_252E34DA4();
    if (v17)
    {
      sub_252A00AF4(&v16, v18);
      sub_252974E7C(v18, &v16);
      sub_252E34E94();
      if (swift_dynamicCast())
      {

        sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E7B510, 0xD000000000000068, 0x8000000252E7B280);
        __swift_destroy_boxed_opaque_existential_1(v18);
        v10 = 0;
        return v10 & 1;
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
      sub_25293847C(&v16, &qword_27F541E80, &qword_252E3DFA0);
    }

    v11 = sub_252B05484(a1);
    v12 = sub_252B0C80C(v11);
    v13 = sub_252B05604(v11);

    *&v18[0] = v13;
    if (sub_252B0D160(v12))
    {

      v10 = 1;
      return v10 & 1;
    }

    if (a3 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_15;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:

      v8 = "Evaluating parse rejection";
      v9 = 0xD00000000000002ELL;
      goto LABEL_5;
    }

    if (a2 >> 62)
    {
      if (!sub_252E378C4())
      {
        goto LABEL_20;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      v10 = sub_252B0622C(v12, v13);

      return v10 & 1;
    }

    sub_25297AE00(v14);
    v13 = *&v18[0];
    goto LABEL_20;
  }

  v8 = "Handling noVerb_noEntity task";
  v9 = 0xD00000000000004DLL;
LABEL_5:
  sub_252CC3D90(v9, v8 | 0x8000000000000000, 0xD000000000000068, 0x8000000252E7B280);
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_252B0622C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v199 = sub_252E34544();
  v193 = *(v199 - 8);
  v6 = *(v193 + 64);
  MEMORY[0x28223BE20](v199);
  v194 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C20, &unk_252E5B5E0);
  v8 = *(*(v198 - 8) + 64);
  MEMORY[0x28223BE20](v198);
  v197 = &v192 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v207 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v201 = &v192 - v15;
  MEMORY[0x28223BE20](v14);
  v195 = &v192 - v16;
  v226 = sub_252E34B74();
  v235 = *(v226 - 8);
  v17 = *(v235 + 64);
  v18 = MEMORY[0x28223BE20](v226);
  v206 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v225 = &v192 - v21;
  MEMORY[0x28223BE20](v20);
  v224 = (&v192 - v22);
  v23 = sub_252E34804();
  v208 = *(v23 - 8);
  v24 = *(v208 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v192 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v220 = &v192 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v227 = &v192 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v192 - v32;
  v34 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v34 + 288), &v240);

  v35 = v242;
  v36 = v243;
  __swift_project_boxed_opaque_existential_1(&v240, v242);
  v37 = (*(v36 + 88))(v35, v36);
  __swift_destroy_boxed_opaque_existential_1(&v240);
  v204 = a1;
  v205 = a2;
  if ((v37 & 1) == 0)
  {
    goto LABEL_7;
  }

  v38 = sub_252B0D240(a1, a2);
  if (!*(v38 + 16))
  {

LABEL_7:
    v42 = MEMORY[0x277D84F90];
    v40 = v207;
    goto LABEL_8;
  }

  v39 = v38;
  v40 = v207;
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v41 = sub_252E36AD4();
  __swift_project_value_buffer(v41, qword_27F544D90);
  sub_252CC3D90(0xD000000000000028, 0x8000000252E7BB90, 0xD000000000000068, 0x8000000252E7B280);
  v42 = v39;
LABEL_8:
  v229 = *(v42 + 16);
  v202 = v27;
  v200 = v3;
  if (!v229)
  {

    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v43 = sub_252E36AD4();
    __swift_project_value_buffer(v43, qword_27F544D90);
    v44 = 0xD000000000000068;
    sub_252CC3D90(0xD000000000000032, 0x8000000252E7BB50, 0xD000000000000068, 0x8000000252E7B280);
    v45 = v205;
    v46 = sub_252B0DA14(v204, v205);
    v229 = *(v46 + 16);
    if (v229)
    {
      v234 = v46;
      v210 = v23;
      v211 = 0;
      goto LABEL_14;
    }

    v81 = 1;
LABEL_190:
    sub_252E34DA4();
    if (v242)
    {
      sub_252A00AF4(&v240, &v237);
      sub_252974E7C(&v237, &v240);
      sub_252E35174();
      if (swift_dynamicCast())
      {

        if (qword_27F53F4F8 != -1)
        {
          swift_once();
        }

        v159 = sub_252E36AD4();
        __swift_project_value_buffer(v159, qword_27F544D90);
        sub_252CC3D90(0xD00000000000004BLL, 0x8000000252E7B680, 0xD000000000000068, 0x8000000252E7B280);
        v160 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        sub_252929E74((v160 + 368), &v240);

        v161 = sub_252C92828(&v240);
        __swift_destroy_boxed_opaque_existential_1(&v240);
        if (v161)
        {
          v162 = 0xD000000000000047;
          v163 = 0x8000000252E7B6D0;
          goto LABEL_268;
        }

        __swift_destroy_boxed_opaque_existential_1(&v237);
        if (!v81)
        {
          goto LABEL_248;
        }

        goto LABEL_205;
      }

      __swift_destroy_boxed_opaque_existential_1(&v237);
      if (!v81)
      {
LABEL_248:
        sub_252E34DA4();
        if (v239)
        {
          sub_252A00AF4(&v237, &v240);
          sub_252974E7C(&v240, &v237);
          sub_252E34E34();
          if (swift_dynamicCast() || (sub_252974E7C(&v240, &v237), sub_252E34EA4(), v170 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/NL/NLv4+Utils.swift", swift_dynamicCast()))
          {

            if (qword_27F53F4F8 != -1)
            {
              swift_once();
            }

            v188 = sub_252E36AD4();
            __swift_project_value_buffer(v188, qword_27F544D90);
            sub_252CC3D90(v44 - 30, 0x8000000252E7B5C0, 0xD000000000000068, 0x8000000252E7B280);
            v189 = &v240;
            goto LABEL_269;
          }

          __swift_destroy_boxed_opaque_existential_1(&v240);
        }

        else
        {
          sub_25293847C(&v237, &qword_27F541E80, &qword_252E3DFA0);
          v170 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/NL/NLv4+Utils.swift";
        }

        if (qword_27F53F4F8 != -1)
        {
          goto LABEL_276;
        }

        goto LABEL_258;
      }
    }

    else
    {
      sub_25293847C(&v240, &qword_27F541E80, &qword_252E3DFA0);
      if (!v81)
      {
        goto LABEL_248;
      }
    }

LABEL_205:
    sub_252E34DA4();
    if (!v242)
    {
      sub_25293847C(&v240, &qword_27F541E80, &qword_252E3DFA0);
      goto LABEL_248;
    }

    sub_252A00AF4(&v240, &v237);
    sub_252974E7C(&v237, &v240);
    sub_252E34F84();
    if (!swift_dynamicCast())
    {
      sub_252974E7C(&v237, &v240);
      sub_252E35034();
      if (!swift_dynamicCast())
      {
        goto LABEL_247;
      }
    }

    v164 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v164 + 16), &v240);

    __swift_project_boxed_opaque_existential_1(&v240, v242);
    v223 = sub_252E338D4();
    __swift_destroy_boxed_opaque_existential_1(&v240);
    v165 = v45;
    if (v45 >> 62)
    {
      v166 = sub_252E378C4();
    }

    else
    {
      v166 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v167 = v201;
    v168 = v195;
    if (!v166)
    {
LABEL_231:
      v44 = v204;
      if (v204 >> 62)
      {
        v170 = sub_252E378C4();
      }

      else
      {
        v170 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v185 = 0;
      while (1)
      {
        if (v170 == v185)
        {
          goto LABEL_246;
        }

        if ((v44 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v185, v44);
          if (__OFADD__(v185, 1))
          {
LABEL_243:
            __break(1u);
            goto LABEL_247;
          }
        }

        else
        {
          if (v185 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
LABEL_276:
            swift_once();
LABEL_258:
            v190 = sub_252E36AD4();
            __swift_project_value_buffer(v190, qword_27F544D90);
            v154 = v44 - 85;
            v155 = 0x8000000252E7B5A0;
            v156 = (v170 - 4) | 0x8000000000000000;
LABEL_185:
            sub_252CC3D90(v154, v155, 0xD000000000000068, v156);
            return 1;
          }

          v186 = *(v44 + 8 * v185 + 32);

          if (__OFADD__(v185, 1))
          {
            goto LABEL_243;
          }
        }

        if (sub_252E34A14())
        {

          goto LABEL_264;
        }

        v187 = sub_252E34A34();

        v185 = (v185 + 1);
        if (v187)
        {
          goto LABEL_264;
        }
      }
    }

    v169 = 0;
    v231 = (v165 & 0xFFFFFFFFFFFFFF8);
    v232 = v165 & 0xC000000000000001;
    LODWORD(v230) = *MEMORY[0x277D5E230];
    v228 = (v193 + 56);
    v229 = (v193 + 104);
    v227 = (v193 + 48);
    v224 = (v193 + 32);
    v225 = (v193 + 8);
    v170 = &qword_252E41DE0;
    v226 = v166;
    while (1)
    {
      if (v232)
      {
        v172 = MEMORY[0x2530ADF00](v169, v205);
      }

      else
      {
        if (v169 >= v231[2])
        {
          goto LABEL_275;
        }

        v171 = *(v205 + 8 * v169 + 32);
      }

      v233 = v169 + 1;
      v234 = v169;
      if (__OFADD__(v169, 1))
      {
        goto LABEL_274;
      }

      v44 = v40;
      v235 = v172;
      sub_252E34534();
      v173 = v199;
      (*v229)(v167, v230, v199);
      (*v228)(v167, 0, 1, v173);
      v174 = *(v198 + 48);
      v175 = v197;
      sub_252938414(v168, v197, &qword_27F540288, &qword_252E41DE0);
      sub_252938414(v167, v175 + v174, &qword_27F540288, &qword_252E41DE0);
      v176 = v168;
      v177 = v167;
      v178 = *v227;
      if ((*v227)(v175, 1, v173) == 1)
      {
        sub_25293847C(v177, &qword_27F540288, &qword_252E41DE0);
        sub_25293847C(v176, &qword_27F540288, &qword_252E41DE0);
        v179 = v178(v175 + v174, 1, v173) == 1;
        v129 = v175;
        v168 = v176;
        if (v179)
        {
LABEL_263:
          sub_25293847C(v129, &qword_27F540288, &qword_252E41DE0);
          goto LABEL_264;
        }
      }

      else
      {
        sub_252938414(v175, v40, &qword_27F540288, &qword_252E41DE0);
        if (v178(v175 + v174, 1, v173) != 1)
        {
          v180 = v194;
          (*v224)(v194, v175 + v174, v173);
          sub_252B0F0EC(&qword_27F541C28, MEMORY[0x277D5E248]);
          v181 = sub_252E36EF4();
          v182 = *v225;
          v183 = v180;
          v40 = v207;
          (*v225)(v183, v173);
          sub_25293847C(v201, &qword_27F540288, &qword_252E41DE0);
          v168 = v195;
          sub_25293847C(v195, &qword_27F540288, &qword_252E41DE0);
          v182(v40, v173);
          sub_25293847C(v175, &qword_27F540288, &qword_252E41DE0);
          if (v181)
          {
            goto LABEL_264;
          }

          goto LABEL_224;
        }

        sub_25293847C(v201, &qword_27F540288, &qword_252E41DE0);
        v168 = v195;
        sub_25293847C(v195, &qword_27F540288, &qword_252E41DE0);
        (*v225)(v40, v173);
        v129 = v175;
      }

      sub_25293847C(v129, &qword_27F541C20, &unk_252E5B5E0);
LABEL_224:

      if (sub_252E34A24())
      {

        goto LABEL_264;
      }

      v184 = sub_252E34A14();

      if (v184)
      {
LABEL_264:

        goto LABEL_265;
      }

      v169 = v234 + 1;
      v167 = v201;
      if (v233 == v226)
      {
        goto LABEL_231;
      }
    }
  }

  v234 = v42;
  v210 = v23;
  v211 = 0;
LABEL_14:
  v47 = 0;
  v48 = v208;
  v49 = v234;
  v209 = v234 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
  v232 = v208 + 16;
  v223 = *MEMORY[0x277D5E6B0];
  v222 = (v235 + 104);
  v221 = (v235 + 8);
  v231 = (v208 + 8);
  v233 = 0xD000000000000015;
  v216 = ":setUsoIdentifiers:)";
  v215 = "homeAutomationNoun";
  v235 = 0xD000000000000017;
  v214 = "homeAutomationHue";
  v50 = 0xD000000000000012;
  v213 = "homeAutomationTemperatureValue";
  v212 = "homeAutomationService";
  v219 = "sink";
  v218 = "floatSettingName";
  v217 = " input, will handle the parse";
  v51 = "homeAutomationTrigger";
  v52 = "homeAutomationScene";
  v53 = "homeAutomationEntityTag";
  v203 = 0xD000000000000012;
  while (1)
  {
    if (v47 >= *(v49 + 16))
    {
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      swift_once();
      goto LABEL_64;
    }

    v228 = *(v48 + 72);
    v230 = *(v48 + 16);
    v230(v33, v209 + v228 * v47, v210);
    v54 = 0;
    v55 = (v47 + 1);
    do
    {
      v56 = byte_2864A5A20[v54 + 32];
      if (v56 <= 4)
      {
        v57 = 0xD000000000000013;
        if (v56 == 3)
        {
          v57 = v50;
        }

        v58 = v214;
        if (v56 != 3)
        {
          v58 = v213;
        }

        if (v56 == 2)
        {
          v57 = v235;
          v58 = v215;
        }

        v59 = 0xD00000000000001BLL;
        if (!byte_2864A5A20[v54 + 32])
        {
          v59 = v233;
        }

        v62 = v216;
        if (byte_2864A5A20[v54 + 32])
        {
          v62 = v212;
        }

        v63 = byte_2864A5A20[v54 + 32] <= 1u;
      }

      else
      {
        v57 = 0xD000000000000013;
        v58 = v218;
        if (v56 != 9)
        {
          v58 = v217;
        }

        if (v56 == 8)
        {
          v57 = v235;
          v58 = v219;
        }

        v59 = 0xD000000000000011;
        v60 = 0xD000000000000018;
        if (v56 == 6)
        {
          v60 = v233;
          v61 = "homeAutomationScene";
        }

        else
        {
          v61 = "homeAutomationEntityTag";
        }

        if (v56 == 5)
        {
          v62 = "homeAutomationTrigger";
        }

        else
        {
          v59 = v60;
          v62 = v61;
        }

        v63 = byte_2864A5A20[v54 + 32] <= 7u;
      }

      if (v63)
      {
        v64 = v59;
      }

      else
      {
        v64 = v57;
      }

      if (v63)
      {
        v65 = v62;
      }

      else
      {
        v65 = v58;
      }

      v66 = v65 | 0x8000000000000000;
      v67 = sub_252E347F4();
      if (v68)
      {
        if (v64 == v67 && v66 == v68)
        {

          goto LABEL_61;
        }

        v69 = sub_252E37DB4();

        if (v69)
        {
          goto LABEL_59;
        }
      }

      else
      {
      }

      ++v54;
    }

    while (v54 != 11);
    v196 = v55;
    v70 = v224;
    sub_252E34784();
    v71 = v225;
    v72 = v226;
    (*v222)(v225, v223, v226);
    v73 = MEMORY[0x2530AB010](v70, v71);
    v74 = *v221;
    (*v221)(v71, v72);
    v74(v70, v72);
    if (v73)
    {
LABEL_59:
      v51 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/NL/NLv4+Utils.swift";
      v52 = v210;
      v50 = v209;
      goto LABEL_62;
    }

    v75 = v206;
    sub_252E34784();
    v76 = sub_252E34B64();
    v78 = v77;
    v74(v75, v72);
    if (v76 == 0x6C7070612E6D6F63 && v78 == 0xEE00656D6F482E65)
    {
      break;
    }

    v79 = sub_252E37DB4();

    v80 = *v231;
    (*v231)(v33, v210);
    if (v79)
    {
      v51 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/NL/NLv4+Utils.swift";
      v52 = v210;
      v50 = v209;
      v53 = v80;
      goto LABEL_63;
    }

    v47 = v196;
    v49 = v234;
    v50 = v203;
    v48 = v208;
    if (v196 == v229)
    {

      v81 = 0;
      v44 = 0xD000000000000068;
      v45 = v205;
      v40 = v207;
      goto LABEL_190;
    }
  }

LABEL_61:
  v51 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/NL/NLv4+Utils.swift";
  v52 = v210;
  v50 = v209;

LABEL_62:
  v53 = *v231;
  (*v231)(v33, v52);
LABEL_63:
  if (qword_27F53F4F8 != -1)
  {
    goto LABEL_272;
  }

LABEL_64:
  v82 = 0xEF65747562697274;
  v83 = sub_252E36AD4();
  v84 = __swift_project_value_buffer(v83, qword_27F544D90);
  v85 = (v51 - 32);
  v51 = 0xD000000000000068;
  v215 = v85;
  v216 = v84;
  sub_252CC3D90(0xD000000000000048, 0x8000000252E7B720, 0xD000000000000068, v85 | 0x8000000000000000);
  v86 = 0;
  v217 = 0x8000000252E7BA70;
  v218 = 0x8000000252E7BA90;
  v214 = 0x8000000252E7B970;
  v213 = 0x8000000252E7B990;
  v212 = 0x8000000252E7B9B0;
  v210 = 0x8000000252E7B9D0;
  v208 = 0x8000000252E7B9F0;
  v207 = 0x8000000252E7BA10;
  v206 = 0x8000000252E7BA30;
  v205 = 0x8000000252E7BA50;
  v87 = &unk_2864A5000;
  v219 = 0xD000000000000010;
  v88 = v227;
  while (1)
  {
    if (v86 >= *(v234 + 16))
    {
      goto LABEL_271;
    }

    v230(v88, v50 + v86 * v228, v52);
    v204 = v86 + 1;
    v89 = v87[2672];
    v90 = 0x74416D6574737973;
    v91 = v219;
    if (v89 == 2)
    {
      v90 = v219;
    }

    v92 = v217;
    if (v89 != 2)
    {
      v92 = v82;
    }

    if (!v87[2672])
    {
      v91 = 0x747465536C6F6F62;
    }

    v93 = v218;
    if (!v87[2672])
    {
      v93 = 0xEF656D614E676E69;
    }

    v94 = v87[2672] <= 1u ? v91 : v90;
    v95 = v87[2672] <= 1u ? v93 : v92;
    v96 = sub_252E347F4();
    if (v97)
    {
      if (v94 == v96 && v97 == v95)
      {
LABEL_163:
        v127 = v215;

        goto LABEL_165;
      }

      v98 = sub_252E37DB4();

      if (v98)
      {
        break;
      }
    }

    else
    {
    }

    v99 = 0x74416D6574737973;
    v100 = v219;
    if (byte_2864A5A71 == 2)
    {
      v99 = v219;
    }

    v101 = v217;
    if (byte_2864A5A71 != 2)
    {
      v101 = v82;
    }

    if (!byte_2864A5A71)
    {
      v100 = 0x747465536C6F6F62;
    }

    v102 = v218;
    if (!byte_2864A5A71)
    {
      v102 = 0xEF656D614E676E69;
    }

    v103 = byte_2864A5A71 <= 1u ? v100 : v99;
    v104 = byte_2864A5A71 <= 1u ? v102 : v101;
    v105 = sub_252E347F4();
    if (v106)
    {
      if (v103 == v105 && v106 == v104)
      {
        goto LABEL_163;
      }

      v107 = sub_252E37DB4();

      if (v107)
      {
        break;
      }
    }

    else
    {
    }

    if (byte_2864A5A72 > 1u)
    {
      if (byte_2864A5A72 == 2)
      {
        v108 = v219;
        v109 = v217;
        v110 = sub_252E347F4();
        if (!v111)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v108 = 0x74416D6574737973;
        v109 = v82;
        v110 = sub_252E347F4();
        if (!v111)
        {
          goto LABEL_122;
        }
      }
    }

    else
    {
      if (byte_2864A5A72)
      {
        v108 = v219;
      }

      else
      {
        v108 = 0x747465536C6F6F62;
      }

      if (byte_2864A5A72)
      {
        v109 = v218;
      }

      else
      {
        v109 = 0xEF656D614E676E69;
      }

      v110 = sub_252E347F4();
      if (!v111)
      {
LABEL_122:

        goto LABEL_123;
      }
    }

    if (v108 == v110 && v111 == v109)
    {
      goto LABEL_163;
    }

    v112 = sub_252E37DB4();

    if (v112)
    {
      break;
    }

LABEL_123:
    if (byte_2864A5A73 <= 1u)
    {
      v113 = 0x747465536C6F6F62;
      v114 = 0xEF656D614E676E69;
      if (!byte_2864A5A73)
      {
        goto LABEL_129;
      }

      v113 = v219;
      v115 = &v245;
LABEL_128:
      v114 = *(v115 - 32);
LABEL_129:
      v116 = sub_252E347F4();
      if (!v117)
      {
        goto LABEL_135;
      }

      goto LABEL_130;
    }

    if (byte_2864A5A73 == 2)
    {
      v113 = v219;
      v115 = &v244;
      goto LABEL_128;
    }

    v113 = 0x74416D6574737973;
    v114 = v82;
    v116 = sub_252E347F4();
    if (!v117)
    {
LABEL_135:

      goto LABEL_136;
    }

LABEL_130:
    if (v113 == v116 && v117 == v114)
    {
      goto LABEL_163;
    }

    v118 = sub_252E37DB4();

    if (v118)
    {
      break;
    }

LABEL_136:
    v119 = v82;
    v51 = 0;
    do
    {
      v120 = &unk_2864A58E8 + v51++;
      v121 = 0xE700000000000000;
      v122 = 0x656D614E726143;
      switch(v120[32])
      {
        case 1:
          v122 = 0x656D614E726163;
          break;
        case 2:
          v122 = v233;
          v123 = &v236;
          goto LABEL_154;
        case 3:
          v122 = 0x6F69647541726163;
          v121 = 0xEE00656372756F53;
          break;
        case 4:
          v122 = 0x616D6D6F43726163;
          v121 = 0xEF6E756F4E73646ELL;
          break;
        case 5:
          v122 = v235;
          v123 = &v237;
          goto LABEL_154;
        case 6:
          v122 = v235;
          v123 = &v237 + 1;
          goto LABEL_154;
        case 7:
          v122 = v235;
          v123 = &v238;
          goto LABEL_154;
        case 8:
          v122 = 0xD000000000000013;
          v123 = &v240;
          goto LABEL_154;
        case 9:
          v122 = 0xD000000000000019;
          v123 = &v241;
          goto LABEL_154;
        case 10:
          v122 = v219;
          v123 = &v242;
          goto LABEL_154;
        case 11:
          v122 = v235;
          v123 = &v243;
LABEL_154:
          v121 = *(v123 - 32);
          break;
        case 12:
          v122 = 0x69666F7250726163;
          v121 = 0xEE00656D614E656CLL;
          break;
        case 13:
          v121 = 0xEB00000000657079;
          v122 = 0x5474616553726163;
          break;
        case 14:
          v122 = 0x4D746E6556726163;
          v121 = 0xEB0000000065646FLL;
          break;
        default:
          break;
      }

      v124 = sub_252E347F4();
      if (v125)
      {
        if (v122 == v124 && v125 == v121)
        {
          v88 = v227;
          goto LABEL_163;
        }

        v126 = sub_252E37DB4();

        if (v126)
        {
          v88 = v227;
          goto LABEL_164;
        }
      }

      else
      {
      }
    }

    while (v51 != 15);
    v88 = v227;
    (v53)(v227, v52);
    v86 = v204;
    v82 = v119;
    v87 = &unk_2864A5000;
    if (v204 == v229)
    {
LABEL_196:

      goto LABEL_197;
    }
  }

LABEL_164:
  v127 = v215;
LABEL_165:
  (v53)(v88, v52);
  *&v240 = 0;
  *(&v240 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD0000000000000D2, 0x8000000252E7B770);
  v128 = MEMORY[0x2530AD730](v234, v52);
  MEMORY[0x2530AD570](v128);

  sub_252CC3D90(v240, *(&v240 + 1), 0xD000000000000068, v127 | 0x8000000000000000);

  v130 = 0;
  v131 = v50;
  v235 = v53;
  while (v229 != v130)
  {
    if (v130 >= *(v234 + 16))
    {
      __break(1u);
LABEL_246:
      v44 = 0xD000000000000068;
      if ((v223 & 1) == 0)
      {
LABEL_247:
        __swift_destroy_boxed_opaque_existential_1(&v237);
        goto LABEL_248;
      }

LABEL_265:
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      v191 = sub_252E36AD4();
      __swift_project_value_buffer(v191, qword_27F544D90);
      v162 = 0xD00000000000006ALL;
      v163 = 0x8000000252E7B610;
LABEL_268:
      sub_252CC3D90(v162, v163, 0xD000000000000068, 0x8000000252E7B280);
      v189 = &v237;
LABEL_269:
      __swift_destroy_boxed_opaque_existential_1(v189);
      return 0;
    }

    ++v130;
    v132 = v228 + v131;
    v133 = v220;
    (v230)(v220);
    v134 = v224;
    sub_252E34784();
    v135 = v52;
    v136 = v225;
    v137 = v226;
    (*v222)(v225, v223, v226);
    v138 = MEMORY[0x2530AB010](v134, v136);
    v139 = *v221;
    v140 = v136;
    v52 = v135;
    (*v221)(v140, v137);
    v139(v134, v137);
    v53 = v235;
    v129 = (v235)(v133, v135);
    v131 = v132;
    if (v138)
    {

      v141 = 0xD000000000000041;
      v142 = 0x8000000252E7B850;
      v143 = v215 | 0x8000000000000000;
      goto LABEL_198;
    }
  }

  v144 = 0;
  v145 = v209;
  v146 = v202;
  while (2)
  {
    if (v144 >= *(v234 + 16))
    {
      __break(1u);
      goto LABEL_263;
    }

    v230(v146, v145, v52);
    if (sub_252B082A8())
    {
      (v53)(v146, v52);
LABEL_183:

      v153 = " handle the parse";
      v154 = 0xD000000000000051;
LABEL_184:
      v155 = v153 | 0x8000000000000000;
      v156 = v215 | 0x8000000000000000;
      goto LABEL_185;
    }

    v147 = sub_252E347F4();
    if (!v148)
    {
LABEL_171:
      v129 = (v53)(v146, v52);
      goto LABEL_172;
    }

    if (v147 != 0x7250726577736E61 || v148 != 0xED0000746375646FLL)
    {
      v149 = sub_252E37DB4();

      if (v149)
      {
        goto LABEL_180;
      }

      goto LABEL_171;
    }

LABEL_180:
    *&v240 = sub_252E347E4();
    *(&v240 + 1) = v150;
    MEMORY[0x28223BE20](v240);
    *(&v192 - 2) = &v240;
    v151 = v211;
    v152 = sub_2529ED970(sub_25296A69C, (&v192 - 4), &unk_2864A5998);
    v211 = v151;

    v53 = v235;
    v129 = (v235)(v146, v52);
    if ((v152 & 1) == 0)
    {
      goto LABEL_183;
    }

LABEL_172:
    ++v144;
    v145 += v228;
    if (v229 != v144)
    {
      continue;
    }

    break;
  }

  if ((sub_252B0E134(v234) & 1) == 0)
  {
    goto LABEL_196;
  }

  v158 = sub_252B0E400(v234);

  if (v158)
  {
    v153 = "jecting the parse";
    v154 = 0xD00000000000006DLL;
    goto LABEL_184;
  }

LABEL_197:
  v142 = 0x8000000252E7B4F0;
  v143 = v215 | 0x8000000000000000;
  v141 = v203;
LABEL_198:
  sub_252CC3D90(v141, v142, 0xD000000000000068, v143);
  return 0;
}

uint64_t sub_252B082A8()
{
  v0 = sub_252E347F4();
  if (v1)
  {
    if (v0 == 0x656D614E726143 && v1 == 0xE700000000000000)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_252E37DB4();
    }

    v3 = sub_252E347F4();
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_6:
    v20 = 0;
    goto LABEL_14;
  }

  v2 = 0;
  v3 = sub_252E347F4();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (v3 == 0x656D614E726163 && v4 == 0xE700000000000000)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_252E37DB4();
  }

LABEL_14:
  v5 = sub_252E347F4();
  if (v6)
  {
    if (v5 == 0xD000000000000019 && v6 == 0x8000000252E7B9B0)
    {

LABEL_19:
      v21 = sub_252E347E4();
      v22 = v8;
      MEMORY[0x28223BE20](v21);
      v19[2] = &v21;
      v9 = sub_2529ED970(sub_25296A724, v19, &unk_2864A5918);

      goto LABEL_21;
    }

    v7 = sub_252E37DB4();

    if (v7)
    {
      goto LABEL_19;
    }
  }

  v9 = 0;
LABEL_21:
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544D60);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E7BCC0);
  if (v2)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v2)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v11, v12);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E7BCE0);
  v13 = v20;
  if (v20)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v20)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v14, v15);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E7BD00);
  if (v9)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v9)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v16, v17);

  sub_252CC3D90(v21, v22, 0xD000000000000068, 0x8000000252E7B280);

  return (v2 | v13 | v9) & 1;
}

uint64_t sub_252B085DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543320, &qword_252E4B598);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543328, &qword_252E4B5A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  if (!sub_252E35CD4() && !sub_252E35CF4() && !sub_252E35CE4() && !sub_252E35D14())
  {
    sub_252E35CC4();
    v9 = sub_252E35CB4();
    v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
    sub_25293847C(v7, &qword_27F543328, &qword_252E4B5A0);
    if (v10 != 1)
    {
      return 0;
    }

    sub_252E35D24();
    v11 = sub_252E35DC4();
    v12 = (*(*(v11 - 8) + 48))(v3, 1, v11);
    sub_25293847C(v3, &qword_27F543320, &qword_252E4B598);
    if (v12 != 1)
    {
      return 0;
    }

    if (!sub_252E35D04())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_252B087A4(uint64_t a1)
{
  v38 = *(a1 + 16);
  if (!v38)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v37 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  v3 = &unk_27F5417F0;
  v4 = &unk_252E40A90;
  while (1)
  {
    v6 = *(v37 + v1);
    v7 = sub_252E35854();
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = 0x69746E4572657375;
        v9 = 0xEC00000073656974;
        if (!*(v7 + 16))
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0xE900000000000065;
        v8 = 0x636E657265666572;
        if (!*(v7 + 16))
        {
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    else
    {
      v9 = 0xE600000000000000;
      v8 = 0x797469746E65;
      if (!*(v7 + 16))
      {
        goto LABEL_13;
      }
    }

    v10 = sub_252A44A10(v8, v9);
    v12 = v11;

    if (v12)
    {
      v13 = *(*(v7 + 56) + 8 * v10);

      goto LABEL_15;
    }

LABEL_14:
    v13 = MEMORY[0x277D84F90];
LABEL_15:

    v14 = v13 >> 62;
    v15 = v13 >> 62 ? sub_252E378C4() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v2 >> 62;
    if (v2 >> 62)
    {
      v35 = sub_252E378C4();
      v18 = v35 + v15;
      if (__OFADD__(v35, v15))
      {
LABEL_44:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v17 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        goto LABEL_44;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v16)
      {
        goto LABEL_26;
      }

      v19 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v18 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v16)
      {
LABEL_26:
        sub_252E378C4();
        goto LABEL_27;
      }

      v19 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = *(v19 + 16);
LABEL_27:
    result = sub_252E37A54();
    v2 = result;
    v19 = result & 0xFFFFFFFFFFFFFF8;
LABEL_28:
    v41 = v2;
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v14)
    {
      break;
    }

    v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_3;
    }

LABEL_32:
    if (((v22 >> 1) - v21) < v15)
    {
      goto LABEL_48;
    }

    v39 = v1;
    v25 = v19 + 8 * v21 + 32;
    v36 = v19;
    if (v14)
    {
      if (v23 < 1)
      {
        goto LABEL_50;
      }

      sub_2529E6488(&qword_27F543340, v3, v4);
      for (i = 0; i != v23; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
        v27 = sub_2529FBE00(v40, i, v13);
        v28 = v4;
        v29 = v3;
        v31 = *v30;

        (v27)(v40, 0);
        *(v25 + 8 * i) = v31;
        v3 = v29;
        v4 = v28;
      }
    }

    else
    {
      sub_252E35944();
      swift_arrayInitWithCopy();
    }

    v1 = v39;
    v2 = v41;
    if (v15 >= 1)
    {
      v32 = *(v36 + 16);
      v33 = __OFADD__(v32, v15);
      v34 = v32 + v15;
      if (v33)
      {
        goto LABEL_49;
      }

      *(v36 + 16) = v34;
    }

LABEL_4:
    if (++v1 == v38)
    {
      return v2;
    }
  }

  v24 = v19;
  result = sub_252E378C4();
  v19 = v24;
  v23 = result;
  if (result)
  {
    goto LABEL_32;
  }

LABEL_3:

  v2 = v41;
  if (v15 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_252B08B50()
{
  v0 = sub_252E343C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E34244();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_252E342C4())
  {
    sub_252E34314();
    sub_252E34394();
    (*(v1 + 8))(v4, v0);
    sub_252E344D4();
    v11 = MEMORY[0x2530AAF90]();

    (*(v6 + 8))(v9, v5);
    return v11;
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544D60);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E7B3C0);
    sub_252E34354();
    sub_252E37AE4();
    sub_252CC4050(v14, v15, 0xD000000000000068, 0x8000000252E7B280, 0x726628736B736174, 0xEC000000293A6D6FLL, 68);

    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_252B08F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v67 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D90, &qword_252E42500);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = v54 - v15;
  v16 = sub_252E34874();
  v62 = *(v16 - 8);
  v63 = v16;
  v17 = *(v62 + 64);
  MEMORY[0x28223BE20](v16);
  v70 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252E34B94();
  v61 = *(v19 - 8);
  v20 = *(v61 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_252E34B74();
  v59 = *(v23 - 8);
  v24 = *(v59 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_252E34804();
  v64 = *(v27 - 8);
  v65 = v27;
  v28 = *(v64 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v60 = v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = v54 - v31;
  v66 = a2;
  v69 = a3;
  result = sub_252E34584();
  if ((a5 & 1) == 0)
  {
    return result;
  }

  sub_252E34DF4();
  result = sub_252E349E4();
  if (!result)
  {
    goto LABEL_13;
  }

  v34 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v35 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v51 = v12;
  v52 = result;
  v35 = sub_252E378C4();
  result = v52;
  v12 = v51;
  if (!v35)
  {
LABEL_12:

LABEL_13:
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v53 = sub_252E36AD4();
    __swift_project_value_buffer(v53, qword_27F544D60);
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E7B250);
    v71 = a1;
    sub_252E345A4();
    sub_252E37AE4();
    sub_252CC4050(v72, v73, 0xD000000000000068, 0x8000000252E7B280, 0xD00000000000003BLL, 0x8000000252E7B380, 548);
  }

LABEL_5:
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
    goto LABEL_18;
  }

  v57 = v12;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_18:
    v58 = MEMORY[0x2530ADF00](v37);
    goto LABEL_10;
  }

  if ((v37 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v37 < *(v34 + 16))
  {
    v58 = *(result + 8 * v37 + 32);

LABEL_10:

    v56 = *MEMORY[0x277D5E6B0];
    v38 = v59;
    v55 = *(v59 + 104);
    v55(v26);

    v39 = sub_252E34B64();
    v54[0] = v40;
    v54[1] = v39;
    (*(v38 + 8))(v26, v23);
    v41 = *MEMORY[0x277D5E6E0];
    v42 = v61;
    v59 = *(v61 + 104);
    (v59)(v22, v41, v19);
    sub_252E34B84();
    (*(v42 + 8))(v22, v19);
    sub_252E347D4();
    sub_252E34634();
    (*(v62 + 16))(v70, v67, v63);
    (v55)(v26, v56, v23);
    v43 = v68;
    (v59)(v68, *MEMORY[0x277D5E6E8], v19);
    (*(v42 + 56))(v43, 0, 1, v19);
    v44 = *MEMORY[0x277D5E4C8];
    v45 = sub_252E34764();
    v46 = *(v45 - 8);
    v47 = v57;
    (*(v46 + 104))(v57, v44, v45);
    (*(v46 + 56))(v47, 0, 1, v45);
    v48 = v60;
    sub_252E347C4();
    sub_252E34634();

    v49 = v65;
    v50 = *(v64 + 8);
    v50(v48, v65);
    return (v50)(v32, v49);
  }

  __break(1u);
  return result;
}

unint64_t sub_252B09664(char *a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D90, &qword_252E42500);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v60 - v12;
  v14 = sub_252E34B74();
  v67 = *(v14 - 8);
  v68 = v14;
  v15 = *(v67 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_252E34804();
  v70 = *(v18 - 8);
  v71 = v18;
  v19 = *(v70 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v69 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v73 = &v60 - v22;
  v23 = sub_252E34874();
  v74 = *(v23 - 8);
  v24 = *(v74 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v72 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v60 - v27;
  v29 = *a1;
  LOBYTE(v76) = *a1;
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E34584();

  if ((a3 & 1) == 0)
  {
    return result;
  }

  sub_252E34DF4();
  result = sub_252E349E4();
  if (!result)
  {
    goto LABEL_26;
  }

  v31 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v32 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

  v58 = result;
  v32 = sub_252E378C4();
  result = v58;
  if (!v32)
  {
LABEL_25:

LABEL_26:
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v59 = sub_252E36AD4();
    __swift_project_value_buffer(v59, qword_27F544D60);
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E7B250);
    v75 = a2;
    sub_252E345A4();
    sub_252E37AE4();
    sub_252CC4050(v76, v77, 0xD000000000000068, 0x8000000252E7B280, 0xD000000000000044, 0x8000000252E7B2F0, 569);
  }

LABEL_5:
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
    goto LABEL_31;
  }

  a2 = v74;
  v63 = v9;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_31:
    v66 = MEMORY[0x2530ADF00](v34);
LABEL_10:

    v35 = *(a2 + 104);
    v35(v28, *MEMORY[0x277D5E548], v23);
    LOBYTE(v76) = v29;
    v36 = AccessoryTypeSemantic.rawValue.getter();
    v62 = v13;
    v64 = v28;
    v65 = v23;
    if (v36 == 0x656C6B6E69727073 && v37 == 0xE900000000000072)
    {
      goto LABEL_12;
    }

    v38 = sub_252E37DB4();

    if (v38)
    {
      goto LABEL_18;
    }

    LOBYTE(v76) = v29;
    if (AccessoryTypeSemantic.rawValue.getter() == 1802398067 && v39 == 0xE400000000000000)
    {
      goto LABEL_12;
    }

    v40 = sub_252E37DB4();

    if (v40)
    {
      goto LABEL_18;
    }

    LOBYTE(v76) = v29;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x7265776F6873 && v56 == 0xE600000000000000)
    {
LABEL_12:
    }

    else
    {
      v57 = sub_252E37DB4();

      if ((v57 & 1) == 0)
      {
        v60 = 0xD000000000000015;
        v61 = ":setUsoIdentifiers:)";
        goto LABEL_19;
      }
    }

LABEL_18:
    (*(v74 + 8))(v28, v23);
    v35(v28, *MEMORY[0x277D5E558], v23);
    v60 = 0xD00000000000001BLL;
    v61 = "homeAutomationService";
LABEL_19:
    LOBYTE(v76) = v29;
    AccessoryTypeSemantic.rawValue.getter();
    v41 = *MEMORY[0x277D5E6B0];
    v42 = v67;
    v43 = v68;
    v44 = *(v67 + 104);
    v44(v17, v41, v68);
    sub_252E34B64();
    (*(v42 + 8))(v17, v43);
    sub_252E347D4();
    sub_252E34634();
    (*(v74 + 16))(v72, v64, v65);
    v44(v17, v41, v43);
    v45 = *MEMORY[0x277D5E6E8];
    v46 = sub_252E34B94();
    v47 = *(v46 - 8);
    v48 = v62;
    (*(v47 + 104))(v62, v45, v46);
    (*(v47 + 56))(v48, 0, 1, v46);
    v49 = *MEMORY[0x277D5E4C8];
    v50 = sub_252E34764();
    v51 = *(v50 - 8);
    v52 = v63;
    (*(v51 + 104))(v63, v49, v50);
    (*(v51 + 56))(v52, 0, 1, v50);
    v53 = v69;
    sub_252E347C4();
    sub_252E34634();

    v54 = v71;
    v55 = *(v70 + 8);
    v55(v53, v71);
    v55(v73, v54);
    return (*(v74 + 8))(v64, v65);
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v34 < *(v31 + 16))
  {
    v66 = *(result + 8 * v34 + 32);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_252B09EF8(void *a1, int a2)
{
  v85 = a2;
  v3 = sub_252E34874();
  v4 = *(v3 - 8);
  v83 = v3;
  v84 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v82 - v9;
  v11 = sub_252E34E84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_252E345A4();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v86 = sub_252E34594();
  v19 = [a1 hasAllQuantifier];
  if (v19)
  {
    v20 = v19;
    if ([v19 BOOLValue])
    {
      v21 = sub_252E352F4();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      sub_252E352E4();
      (*(v12 + 104))(v15, *MEMORY[0x277D5EA28], v11);
      sub_252E352D4();
      (*(v12 + 8))(v15, v11);

      sub_252E34E14();
    }

    else
    {
    }
  }

  v24 = [a1 homeEntityName];
  v25 = v83;
  if (v24)
  {
    v26 = v24;
    v27 = sub_252E36F34();
    v29 = v28;

    v30 = v84;
    v31 = *(v84 + 104);
    v31(v10, *MEMORY[0x277D5E548], v25);
    if ([a1 entityType] == 5)
    {
      (*(v30 + 8))(v10, v25);
      v31(v10, *MEMORY[0x277D5E538], v25);
    }

    sub_252B08F3C(v86, v27, v29, v10, v85 & 1);

    (*(v30 + 8))(v10, v25);
  }

  if ([a1 outerDeviceType])
  {
    v32 = [a1 outerDeviceType];
    if (qword_27F53F2A0 != -1)
    {
      v80 = v32;
      swift_once();
      v32 = v80;
    }

    v33 = off_27F541CD0;
    if (*(off_27F541CD0 + 2))
    {
      v34 = sub_252A488EC(v32);
      if (v35)
      {
        v87 = *(v33[7] + v34);
        sub_252B09664(&v87, v86, v85 & 1);
      }
    }
  }

  v36 = [a1 outerDeviceName];
  if (v36)
  {
    v37 = v36;
    v38 = sub_252E36F34();
    v40 = v39;

    v41 = v84;
    (*(v84 + 104))(v8, *MEMORY[0x277D5E558], v25);
    sub_252B08F3C(v86, v38, v40, v8, v85 & 1);

    (*(v41 + 8))(v8, v25);
  }

  if ([a1 deviceType])
  {
    v42 = [a1 deviceType];
    if (qword_27F53F2A0 != -1)
    {
      v81 = v42;
      swift_once();
      v42 = v81;
    }

    v43 = off_27F541CD0;
    if (*(off_27F541CD0 + 2))
    {
      v44 = sub_252A488EC(v42);
      if (v45)
      {
        v88 = *(v43[7] + v44);
        sub_252B09664(&v88, v86, v85 & 1);
      }
    }
  }

  v46 = [a1 groupName];
  if (v46)
  {
    v47 = v46;
    v48 = sub_252E36F34();
    v50 = v49;

    v51 = *(v16 + 48);
    v52 = *(v16 + 52);
    swift_allocObject();
    v53 = sub_252E34594();
    v54 = v84;
    (*(v84 + 104))(v8, *MEMORY[0x277D5E550], v25);
    sub_252B08F3C(v53, v48, v50, v8, v85 & 1);

    (*(v54 + 8))(v8, v25);

    sub_252E34574();
  }

  else
  {
    v53 = 0;
    v54 = v84;
  }

  v55 = [a1 roomName];
  if (v55)
  {
    v56 = v55;
    v57 = sub_252E36F34();
    v59 = v58;

    v60 = *(v16 + 48);
    v61 = *(v16 + 52);
    swift_allocObject();
    v62 = sub_252E34594();
    (*(v54 + 104))(v8, *MEMORY[0x277D5E528], v25);
    sub_252B08F3C(v62, v57, v59, v8, v85 & 1);

    (*(v54 + 8))(v8, v25);

    sub_252E34574();
    if (v53)
    {
    }

    v53 = v62;
  }

  v63 = [a1 zoneName];
  if (v63)
  {
    v64 = v63;
    v65 = sub_252E36F34();
    v67 = v66;

    v68 = *(v16 + 48);
    v69 = *(v16 + 52);
    swift_allocObject();
    v70 = sub_252E34594();
    (*(v54 + 104))(v8, *MEMORY[0x277D5E530], v25);
    sub_252B08F3C(v70, v65, v67, v8, v85 & 1);

    (*(v54 + 8))(v8, v25);

    sub_252E34574();
    if (v53)
    {
    }

    v53 = v70;
  }

  v71 = [a1 homeName];
  if (v71)
  {
    v72 = v71;
    v73 = sub_252E36F34();
    v75 = v74;

    v76 = *(v16 + 48);
    v77 = *(v16 + 52);
    swift_allocObject();
    v78 = sub_252E34594();
    (*(v54 + 104))(v8, *MEMORY[0x277D5E508], v25);
    sub_252B08F3C(v78, v73, v75, v8, v85 & 1);

    (*(v54 + 8))(v8, v25);

    sub_252E34574();
    if (v53)
    {
    }
  }

  return v86;
}

uint64_t sub_252B0A7D4(uint64_t a1)
{
  v2 = sub_252E34804();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v42 - v7;
  v8 = MEMORY[0x277D84F98];
  v53 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v11 = *(v3 + 16);
  v10 = v3 + 16;
  v44 = *(v10 + 64);
  v12 = *(v10 + 56);
  v47 = (v44 + 32) & ~v44;
  v48 = v11;
  v13 = a1 + v47;
  v51 = (v10 + 16);
  v43 = xmmword_252E3C290;
  v45 = v2;
  v46 = v10;
  v50 = v12;
  while (1)
  {
    v48(v52, v13, v2);
    v17 = sub_252E34744();
    v18 = v17;
    v19 = HIDWORD(v17) & 1;
    v20 = v17;
    v22 = sub_252A45430(v17 | (v19 << 32));
    v23 = v8[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v8[3] < v25)
    {
      sub_252DFFC2C(v25, 1);
      v8 = v53;
      v27 = sub_252A45430(v20 | (v19 << 32));
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {
      v29 = v8[7];
      v30 = *v51;
      (*v51)(v49, v52, v2);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_2529F85CC(0, v31[2] + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_2529F85CC(v33 > 1, v34 + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v14 = v47;
      v31[2] = v34 + 1;
      v15 = v50;
      v16 = v31 + v14 + v34 * v50;
      v2 = v45;
      v30(v16, v49, v45);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540250, &qword_252E3C080);
      v35 = v47;
      v36 = swift_allocObject();
      *(v36 + 16) = v43;
      (*v51)((v36 + v35), v52, v2);
      v8[(v22 >> 6) + 8] |= 1 << v22;
      v37 = v8[6] + 8 * v22;
      *v37 = v18;
      *(v37 + 4) = v19;
      *(v8[7] + 8 * v22) = v36;
      v38 = v8[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_18;
      }

      v8[2] = v40;
      v15 = v50;
    }

    v13 += v15;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543360, &unk_252E5B590);
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t sub_252B0AB50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v188 = &v173 - v2;
  v189 = sub_252E32E84();
  v3 = *(v189 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v189);
  v178 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v180 = &v173 - v7;
  v8 = sub_252E34B94();
  v245 = *(v8 - 8);
  v246 = v8;
  v9 = *(v245 + 64);
  MEMORY[0x28223BE20](v8);
  v219 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543358, &qword_252E4B5B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v183 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v214 = &v173 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v222 = &v173 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v173 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v199 = &v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v185 = &v173 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v184 = &v173 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v206 = &v173 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v173 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v207 = &v173 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v221 = &v173 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v224 = &v173 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v225 = &v173 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v173 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v173 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v173 - v48;
  v248 = sub_252E34804();
  v50 = *(v248 - 8);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v248);
  v190 = &v173 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v175 = &v173 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v217 = &v173 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v187 = &v173 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v228 = &v173 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v191 = &v173 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v247 = &v173 - v65;
  MEMORY[0x28223BE20](v64);
  v194 = &v173 - v66;
  v193 = MEMORY[0x277D84F90];
  v253 = MEMORY[0x277D84F90];

  v68 = sub_252B0A7D4(v67);

  v70 = 0;
  v72 = v68 + 64;
  v71 = *(v68 + 64);
  v208 = v68;
  v73 = 1 << *(v68 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & v71;
  v76 = (v73 + 63) >> 6;
  v242 = v50 + 16;
  v230 = *MEMORY[0x277D5E6E0];
  v241 = (v245 + 104);
  v240 = (v245 + 56);
  v232 = (v245 + 48);
  v218 = (v245 + 32);
  v227 = (v245 + 8);
  v244 = (v50 + 8);
  v231 = v50;
  v198 = (v50 + 32);
  v220 = *MEMORY[0x277D5E6E8];
  v213 = *MEMORY[0x277D5E700];
  v186 = (v3 + 48);
  v203 = "userDialogAct(from:)";
  v202 = "Dropped identifier group ";
  v201 = "me string builder from ";
  v179 = (v3 + 32);
  v182 = *MEMORY[0x277D5E6F0];
  v177 = (v3 + 16);
  v176 = (v3 + 8);
  v243 = v11;
  v215 = v33;
  v226 = v44;
  v216 = v47;
  v233 = v49;
  v204 = v76;
  v196 = v20;
  v205 = v68 + 64;
  if (!v75)
  {
    goto LABEL_4;
  }

LABEL_8:
  while (2)
  {
    v211 = (v75 - 1) & v75;
    v212 = v70;
    v78 = (v70 << 9) | (8 * __clz(__rbit64(v75)));
    v79 = *(v208 + 56);
    v80 = *(v208 + 48) + v78;
    LODWORD(v210) = *v80;
    LODWORD(v209) = *(v80 + 4);
    v81 = *(v79 + v78);
    v245 = *(v81 + 16);
    if (!v245)
    {

      goto LABEL_45;
    }

    v197 = (*(v231 + 80) + 32) & ~*(v231 + 80);
    v239 = v81 + v197;

    v82 = 0;
    v234 = v81;
    while (1)
    {
      if (v82 >= *(v81 + 16))
      {
        __break(1u);
        goto LABEL_78;
      }

      v235 = *(v231 + 72);
      v238 = *(v231 + 16);
      v238(v247, v239 + v235 * v82, v248);
      sub_252E34794();
      v84 = v246;
      v237 = *v241;
      v237(v47, v230, v246);
      v236 = *v240;
      v236(v47, 0, 1, v84);
      v85 = *(v243 + 48);
      sub_252938414(v49, v20, &qword_27F541D98, &unk_252E5B5B0);
      sub_252938414(v47, &v20[v85], &qword_27F541D98, &unk_252E5B5B0);
      v86 = *v232;
      if ((*v232)(v20, 1, v84) == 1)
      {
        break;
      }

      v87 = v226;
      sub_252938414(v20, v226, &qword_27F541D98, &unk_252E5B5B0);
      if (v86(&v20[v85], 1, v84) == 1)
      {
        sub_25293847C(v47, &qword_27F541D98, &unk_252E5B5B0);
        sub_25293847C(v233, &qword_27F541D98, &unk_252E5B5B0);
        (*v227)(v87, v84);
        v81 = v234;
        goto LABEL_11;
      }

      v229 = v86;
      v88 = v219;
      (*v218)(v219, &v20[v85], v84);
      sub_252B0F0EC(&qword_27F543368, MEMORY[0x277D5E708]);
      v89 = sub_252E36EF4();
      v90 = *v227;
      v91 = v88;
      v47 = v216;
      (*v227)(v91, v84);
      sub_25293847C(v47, &qword_27F541D98, &unk_252E5B5B0);
      sub_25293847C(v233, &qword_27F541D98, &unk_252E5B5B0);
      v90(v226, v84);
      sub_25293847C(v20, &qword_27F541D98, &unk_252E5B5B0);
      v81 = v234;
      if (v89)
      {
        goto LABEL_21;
      }

LABEL_12:
      ++v82;
      result = (*v244)(v247, v248);
      v49 = v233;
      if (v245 == v82)
      {
        goto LABEL_45;
      }
    }

    sub_25293847C(v47, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v49, &qword_27F541D98, &unk_252E5B5B0);
    v83 = v86(&v20[v85], 1, v84);
    v81 = v234;
    if (v83 != 1)
    {
LABEL_11:
      sub_25293847C(v20, &qword_27F543358, &qword_252E4B5B8);
      goto LABEL_12;
    }

    v229 = v86;
    sub_25293847C(v20, &qword_27F541D98, &unk_252E5B5B0);
LABEL_21:
    v92 = v194;
    v93 = v248;
    v192 = *v198;
    v192(v194, v247, v248);
    v181 = sub_252E347E4();
    v195 = v94;
    v223 = *v244;
    result = v223(v92, v93);
    v95 = 0;
    v96 = v239;
    v97 = v246;
    while (2)
    {
      v100 = v95 >= *(v81 + 16);
      v101 = v225;
      if (v100)
      {
        goto LABEL_79;
      }

      v238(v228, v96, v248);
      sub_252E34794();
      v102 = v224;
      v237(v224, v220, v97);
      v236(v102, 0, 1, v97);
      v103 = *(v243 + 48);
      v104 = v222;
      sub_252938414(v101, v222, &qword_27F541D98, &unk_252E5B5B0);
      sub_252938414(v102, v104 + v103, &qword_27F541D98, &unk_252E5B5B0);
      v105 = v229;
      if (v229(v104, 1, v97) != 1)
      {
        v106 = v221;
        sub_252938414(v104, v221, &qword_27F541D98, &unk_252E5B5B0);
        if (v105((v104 + v103), 1, v246) == 1)
        {
          sub_25293847C(v224, &qword_27F541D98, &unk_252E5B5B0);
          sub_25293847C(v225, &qword_27F541D98, &unk_252E5B5B0);
          v97 = v246;
          (*v227)(v106, v246);
          v99 = v104;
          v81 = v234;
LABEL_23:
          sub_25293847C(v99, &qword_27F543358, &qword_252E4B5B8);
        }

        else
        {
          v107 = v219;
          v108 = v246;
          (*v218)(v219, (v104 + v103), v246);
          sub_252B0F0EC(&qword_27F543368, MEMORY[0x277D5E708]);
          v109 = sub_252E36EF4();
          v110 = *v227;
          (*v227)(v107, v108);
          sub_25293847C(v224, &qword_27F541D98, &unk_252E5B5B0);
          sub_25293847C(v225, &qword_27F541D98, &unk_252E5B5B0);
          v110(v221, v108);
          sub_25293847C(v104, &qword_27F541D98, &unk_252E5B5B0);
          v81 = v234;
          v97 = v108;
          if (v109)
          {
            goto LABEL_32;
          }
        }

        ++v95;
        result = v223(v228, v248);
        v96 += v235;
        if (v245 == v95)
        {
          goto LABEL_43;
        }

        continue;
      }

      break;
    }

    sub_25293847C(v102, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v101, &qword_27F541D98, &unk_252E5B5B0);
    v97 = v246;
    v98 = v105((v104 + v103), 1, v246) == 1;
    v99 = v104;
    v81 = v234;
    if (!v98)
    {
      goto LABEL_23;
    }

    sub_25293847C(v104, &qword_27F541D98, &unk_252E5B5B0);
LABEL_32:
    v111 = v191;
    v112 = v248;
    v192(v191, v228, v248);
    v173 = sub_252E347E4();
    v174 = v113;
    result = v223(v111, v112);
    v114 = 0;
    v115 = v207;
    while (2)
    {
      if (v114 >= *(v81 + 16))
      {
        goto LABEL_80;
      }

      v238(v217, v239, v248);
      sub_252E34794();
      v118 = v215;
      v237(v215, v213, v97);
      v236(v118, 0, 1, v97);
      v119 = *(v243 + 48);
      v120 = v214;
      sub_252938414(v115, v214, &qword_27F541D98, &unk_252E5B5B0);
      sub_252938414(v118, v120 + v119, &qword_27F541D98, &unk_252E5B5B0);
      v121 = v97;
      v122 = v115;
      v123 = v229;
      if (v229(v120, 1, v97) == 1)
      {
        sub_25293847C(v118, &qword_27F541D98, &unk_252E5B5B0);
        sub_25293847C(v122, &qword_27F541D98, &unk_252E5B5B0);
        v98 = v123((v120 + v119), 1, v97) == 1;
        v116 = v120;
        v117 = v223;
        v115 = v122;
        if (!v98)
        {
          goto LABEL_34;
        }

        sub_25293847C(v120, &qword_27F541D98, &unk_252E5B5B0);
        v127 = v199;
LABEL_51:
        v133 = v187;
        v134 = v248;
        v192(v187, v217, v248);
        sub_252E347E4();
        v117(v133, v134);
        v135 = v188;
        sub_252E32E14();

        v136 = v189;
        if ((*v186)(v135, 1, v189) == 1)
        {

          sub_25293847C(v135, &unk_27F541F20, &qword_252E3C180);
          goto LABEL_44;
        }

        v209 = *v179;
        result = v209(v180, v135, v136);
        v137 = 0;
        v138 = v81 + v197;
        v139 = v185;
        while (1)
        {
          v143 = *(v234 + 16);
          v239 = v137;
          if (v137 >= v143)
          {
            goto LABEL_81;
          }

          v210 = v138;
          (v238)(v190);
          v144 = v184;
          sub_252E34794();
          v237(v139, v182, v97);
          v236(v139, 0, 1, v97);
          v145 = *(v243 + 48);
          v146 = v183;
          v147 = v97;
          sub_252938414(v144, v183, &qword_27F541D98, &unk_252E5B5B0);
          sub_252938414(v139, v146 + v145, &qword_27F541D98, &unk_252E5B5B0);
          v148 = v229;
          if (v229(v146, 1, v147) == 1)
          {
            sub_25293847C(v139, &qword_27F541D98, &unk_252E5B5B0);
            sub_25293847C(v144, &qword_27F541D98, &unk_252E5B5B0);
            v98 = v148((v146 + v145), 1, v147) == 1;
            v140 = v146;
            v141 = v223;
            if (v98)
            {
              sub_25293847C(v146, &qword_27F541D98, &unk_252E5B5B0);
              v142 = v196;
              v152 = v192;
LABEL_65:

              v155 = v175;
              v156 = v248;
              v152(v175, v190, v248);
              v153 = sub_252E347E4();
              v154 = v157;
              v141(v155, v156);
LABEL_66:
              (*v177)(v178, v180, v189);
              if (qword_27F53F350 != -1)
              {
                swift_once();
              }

              v158 = qword_27F575818;
              if (*(qword_27F575818 + 16))
              {
                v159 = sub_252A44A10(v173, v174);
                v161 = v160;

                if (v161)
                {
                  v162 = *(*(v158 + 56) + 8 * v159);
LABEL_73:
                  v163 = type metadata accessor for Entity();
                  v164 = *(v163 + 48);
                  v165 = *(v163 + 52);
                  v166 = swift_allocObject();
                  v167 = v189;
                  v168 = v209((v166 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier), v178, v189);
                  v169 = (v166 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                  v170 = v195;
                  *v169 = v181;
                  v169[1] = v170;
                  *(v166 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = v162;
                  v171 = (v166 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
                  *v171 = v153;
                  v171[1] = v154;
                  MEMORY[0x2530AD700](v168);
                  v20 = v142;
                  if (*((v253 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v253 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v172 = *((v253 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_252E372A4();
                  }

                  sub_252E372D4();
                  result = (*v176)(v180, v167);
                  v193 = v253;
                  v47 = v216;
                  v49 = v233;
                  goto LABEL_48;
                }
              }

              else
              {
              }

              v162 = 0;
              goto LABEL_73;
            }
          }

          else
          {
            sub_252938414(v146, v127, &qword_27F541D98, &unk_252E5B5B0);
            if (v148((v146 + v145), 1, v147) != 1)
            {
              v149 = v219;
              (*v218)(v219, (v146 + v145), v147);
              sub_252B0F0EC(&qword_27F543368, MEMORY[0x277D5E708]);
              v150 = sub_252E36EF4();
              v151 = *v227;
              (*v227)(v149, v147);
              sub_25293847C(v185, &qword_27F541D98, &unk_252E5B5B0);
              sub_25293847C(v184, &qword_27F541D98, &unk_252E5B5B0);
              v151(v127, v147);
              sub_25293847C(v146, &qword_27F541D98, &unk_252E5B5B0);
              v142 = v196;
              v152 = v192;
              v141 = v223;
              v97 = v147;
              if (v150)
              {
                goto LABEL_65;
              }

              goto LABEL_56;
            }

            sub_25293847C(v185, &qword_27F541D98, &unk_252E5B5B0);
            sub_25293847C(v184, &qword_27F541D98, &unk_252E5B5B0);
            (*v227)(v127, v147);
            v140 = v146;
            v141 = v223;
          }

          v229 = v148;
          sub_25293847C(v140, &qword_27F543358, &qword_252E4B5B8);
          v142 = v196;
          v97 = v246;
LABEL_56:
          v137 = v239 + 1;
          result = v141(v190, v248);
          v138 = v210 + v235;
          v139 = v185;
          if (v245 == v137)
          {

            v153 = 0;
            v154 = 0;
            goto LABEL_66;
          }
        }
      }

      v124 = v206;
      sub_252938414(v120, v206, &qword_27F541D98, &unk_252E5B5B0);
      if (v123((v120 + v119), 1, v121) == 1)
      {
        sub_25293847C(v215, &qword_27F541D98, &unk_252E5B5B0);
        v115 = v122;
        sub_25293847C(v122, &qword_27F541D98, &unk_252E5B5B0);
        (*v227)(v124, v121);
        v116 = v120;
        v81 = v234;
        v97 = v121;
        v117 = v223;
LABEL_34:
        sub_25293847C(v116, &qword_27F543358, &qword_252E4B5B8);
      }

      else
      {
        v125 = v219;
        (*v218)(v219, (v120 + v119), v121);
        sub_252B0F0EC(&qword_27F543368, MEMORY[0x277D5E708]);
        v200 = sub_252E36EF4();
        v126 = *v227;
        (*v227)(v125, v121);
        sub_25293847C(v215, &qword_27F541D98, &unk_252E5B5B0);
        sub_25293847C(v207, &qword_27F541D98, &unk_252E5B5B0);
        v126(v124, v121);
        v115 = v207;
        sub_25293847C(v120, &qword_27F541D98, &unk_252E5B5B0);
        v127 = v199;
        v81 = v234;
        v97 = v121;
        v117 = v223;
        if (v200)
        {
          goto LABEL_51;
        }
      }

      ++v114;
      result = v117(v217, v248);
      v239 += v235;
      if (v245 != v114)
      {
        continue;
      }

      break;
    }

LABEL_43:

LABEL_44:
    v49 = v233;
    v20 = v196;
LABEL_45:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v128 = sub_252E36AD4();
    __swift_project_value_buffer(v128, qword_27F544CB8);
    v251 = 0;
    v252 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000019, v203 | 0x8000000000000000);
    v249 = v210;
    v250 = v209;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543360, &unk_252E5B590);
    v129 = sub_252E36F94();
    MEMORY[0x2530AD570](v129);

    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    v130 = MEMORY[0x2530AD730](v81, v248);
    v132 = v131;

    MEMORY[0x2530AD570](v130, v132);

    MEMORY[0x2530AD570](0xD000000000000015, v202 | 0x8000000000000000);
    sub_252CC3D90(v251, v252, 0xD000000000000068, v201 | 0x8000000000000000);

    v47 = v216;
LABEL_48:
    v72 = v205;
    v70 = v212;
    v76 = v204;
    v75 = v211;
    if (v211)
    {
      continue;
    }

    break;
  }

LABEL_4:
  while (2)
  {
    v77 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      return result;
    }

    if (v77 < v76)
    {
      v75 = *(v72 + 8 * v77);
      ++v70;
      if (!v75)
      {
        continue;
      }

      v70 = v77;
      goto LABEL_8;
    }

    break;
  }

  return v193;
}

unint64_t sub_252B0C80C(unint64_t a1)
{
  v1 = a1;
  v19 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_39:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = v5;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v7, v1);
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v7 >= *(v2 + 16))
          {
            goto LABEL_38;
          }

          v8 = *(v1 + 8 * v7 + 32);

          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        sub_252E34D94();
        sub_252E34E24();

        if (v18)
        {
          break;
        }

        ++v7;
        if (v5 == v3)
        {
          goto LABEL_20;
        }
      }

      MEMORY[0x2530AD700](v9);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v6 = v19;
    }

    while (v5 != v3);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v18 = v4;
  v19 = v6;
  if (v6 >> 62)
  {
    v1 = sub_252E378C4();
  }

  else
  {
    v1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v1 != v11)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v11, v6);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v13 = *(v6 + 8 * v11 + 32);

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    v2 = sub_252E34D54();

    ++v11;
    if (v2)
    {
      MEMORY[0x2530AD700](v15);
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v12 = v4;
      v11 = v14;
    }
  }

  sub_25297BB64(v12);
  return v6;
}

uint64_t sub_252B0CAB0()
{
  v43 = sub_252E34804();
  v39 = *(v43 - 8);
  v0 = *(v39 + 64);
  v1 = MEMORY[0x28223BE20](v43);
  v41 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - v3;
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 288), &v44);

  v6 = v46;
  v7 = v47;
  __swift_project_boxed_opaque_existential_1(&v44, v46);
  v8 = (*(v7 + 88))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  if (v8)
  {
    v9 = sub_252E34A44();
    if (v9)
    {
      if (*(v9 + 16))
      {
        if (qword_27F53F4F8 != -1)
        {
          swift_once();
        }

        v10 = sub_252E36AD4();
        __swift_project_value_buffer(v10, qword_27F544D90);
        sub_252CC3D90(0xD000000000000048, 0x8000000252E7BDA0, 0xD000000000000068, 0x8000000252E7B280);
        sub_252E34B04();
        v11 = sub_252E34AE4();

        v12 = sub_252A491E4(v11, MEMORY[0x277D84F90], 0, 0);

        v13 = v12;
        goto LABEL_10;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
  v13 = sub_252E34A64();
  if (!v13)
  {
    v13 = v14;
  }

LABEL_10:
  v38 = *(v13 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = 0x8000000252E7BD20;
    v36 = v39 + 16;
    v33 = (v39 + 8);
    v34 = 0x8000000252E7BD40;
    v40 = (v39 + 32);
    v16 = MEMORY[0x277D84F90];
    v37 = v13;
    do
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      v42 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v19 = *(v39 + 72);
      (*(v39 + 16))(v4, v13 + v42 + v19 * v15, v43);
      v20 = 0;
      ++v15;
      while (1)
      {
        v21 = &unk_2864A58B8 + v20++;
        v22 = 0xE600000000000000;
        v23 = 0x656D756C6F76;
        switch(v21[32])
        {
          case 1:
            v23 = 0xD000000000000011;
            v22 = v34;
            break;
          case 2:
            v23 = 0x6D6E6F7269766E65;
            v22 = 0xEB00000000746E65;
            break;
          case 3:
            v22 = 0xE800000000000000;
            v23 = 0x64656C6666756873;
            break;
          case 4:
            v22 = 0xE900000000000073;
            v23 = 0x656C746974627573;
            break;
          case 5:
            v22 = 0xE200000000000000;
            v23 = 25443;
            break;
          case 6:
            v23 = 0xD00000000000001BLL;
            v22 = v35;
            break;
          case 7:
            v22 = 0xE500000000000000;
            v23 = 0x6F69647561;
            break;
          case 8:
            v22 = 0xE400000000000000;
            v23 = 1702131053;
            break;
          case 9:
            v23 = 0x6574756D6E75;
            break;
          case 10:
            v23 = 0x707954616964656DLL;
            v22 = 0xE900000000000065;
            break;
          case 11:
            v22 = 0xE800000000000000;
            v23 = 0x6465746165706572;
            break;
          case 12:
            v23 = 0x6D6D69446F747561;
            v22 = 0xEB00000000676E69;
            break;
          case 13:
            v22 = 0xE700000000000000;
            v23 = 0x79616C50726961;
            break;
          default:
            break;
        }

        if (v23 == sub_252E347E4() && v22 == v24)
        {
          break;
        }

        v25 = sub_252E37DB4();

        if (v25)
        {
          goto LABEL_38;
        }

        if (v20 == 14)
        {
          (*v33)(v4, v43);
          goto LABEL_15;
        }
      }

LABEL_38:
      v26 = *v40;
      (*v40)(v41, v4, v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA640(0, *(v16 + 16) + 1, 1);
        v16 = v44;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2529AA640(v17 > 1, v18 + 1, 1);
        v16 = v44;
      }

      *(v16 + 16) = v18 + 1;
      v26((v16 + v42 + v18 * v19), v41, v43);
LABEL_15:
      v13 = v37;
    }

    while (v15 != v38);

    if (*(v16 + 16))
    {
      if (qword_27F53F4F8 == -1)
      {
LABEL_42:
        v28 = sub_252E36AD4();
        __swift_project_value_buffer(v28, qword_27F544D90);
        v44 = 0;
        v45 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E7BD60);
        v29 = MEMORY[0x2530AD730](v16, v43);
        v31 = v30;

        MEMORY[0x2530AD570](v29, v31);

        sub_252CC3D90(v44, v45, 0xD000000000000068, 0x8000000252E7B280);

        return 1;
      }

LABEL_47:
      swift_once();
      goto LABEL_42;
    }
  }

  else
  {
  }

  return 0;
}

BOOL sub_252B0D160(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v4, a1);
      if (__OFADD__(v5, 1))
      {
LABEL_12:
        __break(1u);
        return v3 != v5;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v6 = *(a1 + 8 * v4 + 32);

      if (__OFADD__(v5, 1))
      {
        goto LABEL_12;
      }
    }

    v7 = sub_252B0CAB0();

    v4 = v5 + 1;
  }

  while ((v7 & 1) == 0);
  return v3 != v5;
}

uint64_t sub_252B0D240(unint64_t a1, unint64_t a2)
{
  if (qword_27F53F4F8 != -1)
  {
LABEL_49:
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544D90);
  sub_252CC3D90(0xD000000000000064, 0x8000000252E7BBC0, 0xD000000000000068, 0x8000000252E7B280);
  if (a1 >> 62)
  {
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v6, a1);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v8 = *(a1 + 8 * v6 + 32);

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    v10 = sub_252E34A44();

    ++v6;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2529F8AEC(0, v7[2] + 1, 1, v7);
      }

      v12 = v7[2];
      v11 = v7[3];
      if (v12 >= v11 >> 1)
      {
        v7 = sub_2529F8AEC((v11 > 1), v12 + 1, 1, v7);
      }

      v7[2] = v12 + 1;
      v7[v12 + 4] = v10;
      v6 = v9;
    }
  }

  v13 = MEMORY[0x277D84F90];
  v71 = MEMORY[0x277D84F90];
  v14 = v7[2];
  if (v14)
  {
    v15 = 0;
    a1 = MEMORY[0x277D84F90];
    while (v15 < v7[2])
    {
      v16 = v15 + 1;
      v17 = v7[v15 + 4];

      sub_252E34B04();
      v18 = sub_252E34AE4();
      v19 = sub_252A491E4(v18, a1, 0, 0);

      sub_25297BA5C(v19);
      v15 = v16;
      if (v14 == v16)
      {
        v13 = v71;
        goto LABEL_23;
      }
    }

    goto LABEL_46;
  }

LABEL_23:

  if (!(a2 >> 62))
  {
    a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v69 = v13;
    if (a1)
    {
      goto LABEL_25;
    }

LABEL_52:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  a1 = sub_252E378C4();
  v69 = v13;
  if (!a1)
  {
    goto LABEL_52;
  }

LABEL_25:
  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  do
  {
    v70 = v21;
    v22 = v20;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v22, a2);
        v20 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v22 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v23 = *(a2 + 8 * v22 + 32);

        v20 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_47;
        }
      }

      sub_252E34644();
      v24 = sub_252E359F4();

      if (*(v24 + 16))
      {
        v25 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000);
        if (v26)
        {
          break;
        }
      }

      ++v22;
      if (v20 == a1)
      {
        v21 = v70;
        goto LABEL_53;
      }
    }

    v27 = *(*(v24 + 56) + 8 * v25);

    v28 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_2529F8B10(0, v70[2] + 1, 1, v70);
    }

    v31 = v28[2];
    v30 = v28[3];
    v32 = v28;
    if (v31 >= v30 >> 1)
    {
      v32 = sub_2529F8B10((v30 > 1), v31 + 1, 1, v28);
    }

    v32[2] = v31 + 1;
    v21 = v32;
    v32[v31 + 4] = v27;
  }

  while (v20 != a1);
LABEL_53:
  v33 = sub_252B051B4(v21);

  if (v33 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v35 = 0;
    v36 = MEMORY[0x277D84F90];
    while ((v33 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v35, v33);
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_67;
      }

LABEL_59:
      v39 = sub_252E35914();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_2529F8AEC(0, v36[2] + 1, 1, v36);
      }

      v41 = v36[2];
      v40 = v36[3];
      if (v41 >= v40 >> 1)
      {
        v36 = sub_2529F8AEC((v40 > 1), v41 + 1, 1, v36);
      }

      v36[2] = v41 + 1;
      v36[v41 + 4] = v39;
      ++v35;
      if (v38 == i)
      {
        goto LABEL_71;
      }
    }

    if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_68;
    }

    v37 = *(v33 + 8 * v35 + 32);

    v38 = v35 + 1;
    if (!__OFADD__(v35, 1))
    {
      goto LABEL_59;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_71:

  v43 = v36[2];
  if (!v43)
  {
    v46 = MEMORY[0x277D84F90];
LABEL_81:

    v52 = v46[2];
    if (!v52)
    {
      v54 = MEMORY[0x277D84F90];
LABEL_100:

      sub_25297BA5C(v54);
      return v69;
    }

    v53 = 0;
    v54 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v53 >= v46[2])
      {
        goto LABEL_102;
      }

      v55 = v46[v53 + 4];
      v56 = *(v55 + 16);
      v57 = v54[2];
      v58 = v57 + v56;
      if (__OFADD__(v57, v56))
      {
        goto LABEL_103;
      }

      v59 = v46[v53 + 4];

      v60 = swift_isUniquelyReferenced_nonNull_native();
      if (v60 && v58 <= v54[3] >> 1)
      {
        if (!*(v55 + 16))
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v57 <= v58)
        {
          v61 = v57 + v56;
        }

        else
        {
          v61 = v57;
        }

        v54 = sub_2529F85CC(v60, v61, 1, v54);
        if (!*(v55 + 16))
        {
LABEL_83:

          if (v56)
          {
            goto LABEL_104;
          }

          goto LABEL_84;
        }
      }

      v62 = (v54[3] >> 1) - v54[2];
      result = sub_252E34804();
      v63 = *(result - 8);
      if (v62 < v56)
      {
        goto LABEL_105;
      }

      v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v65 = *(v63 + 72);
      swift_arrayInitWithCopy();

      if (v56)
      {
        v66 = v54[2];
        v67 = __OFADD__(v66, v56);
        v68 = v66 + v56;
        if (v67)
        {
          goto LABEL_106;
        }

        v54[2] = v68;
      }

LABEL_84:
      if (v52 == ++v53)
      {
        goto LABEL_100;
      }
    }
  }

  v44 = 0;
  v45 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  while (v44 < v36[2])
  {
    v47 = v36[v44 + 4];

    sub_252E34B04();
    v48 = sub_252E34AE4();
    v49 = sub_252A491E4(v48, v45, 0, 0);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2529F8AC8(0, v46[2] + 1, 1, v46);
      v46 = result;
    }

    v51 = v46[2];
    v50 = v46[3];
    if (v51 >= v50 >> 1)
    {
      result = sub_2529F8AC8((v50 > 1), v51 + 1, 1, v46);
      v46 = result;
    }

    ++v44;
    v46[2] = v51 + 1;
    v46[v51 + 4] = v49;
    if (v43 == v44)
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
  return result;
}

uint64_t sub_252B0DA14(unint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_84:
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v67 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v5, v2);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_74;
      }

      v6 = *(v2 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v8 = sub_252E34A64();

    ++v5;
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_2529F8AC8(0, v67[2] + 1, 1, v67);
      }

      v10 = v67[2];
      v9 = v67[3];
      if (v10 >= v9 >> 1)
      {
        v67 = sub_2529F8AC8((v9 > 1), v10 + 1, 1, v67);
      }

      v67[2] = v10 + 1;
      v67[v10 + 4] = v8;
      v5 = v7;
    }
  }

  v2 = a2;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v12 = sub_252E378C4();
    if (v12)
    {
LABEL_19:
      v3 = 0;
      v13 = a2 & 0xC000000000000001;
      v66 = MEMORY[0x277D84F90];
      while (1)
      {
        v14 = v3;
        while (1)
        {
          if (v13)
          {
            MEMORY[0x2530ADF00](v14, v2);
            v3 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v14 >= *(v11 + 16))
            {
              goto LABEL_76;
            }

            v15 = *(v2 + 8 * v14 + 32);

            v3 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_75;
            }
          }

          sub_252E34644();
          v16 = sub_252E359F4();

          if (*(v16 + 16))
          {
            v17 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000);
            if (v18)
            {
              break;
            }
          }

          ++v14;
          if (v3 == v12)
          {
            goto LABEL_87;
          }
        }

        v19 = *(*(v16 + 56) + 8 * v17);

        if (v19 >> 62)
        {
          v2 = sub_252E378C4();
          v63 = v12;
          v64 = v11;
          if (v2)
          {
LABEL_33:
            v20 = 0;
            v68 = v19 & 0xFFFFFFFFFFFFFF8;
            v69 = v19 & 0xC000000000000001;
            v21 = MEMORY[0x277D84F90];
            v22 = v19;
            while (1)
            {
              if (v69)
              {
                MEMORY[0x2530ADF00](v20, v19);
                v24 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
                  goto LABEL_77;
                }
              }

              else
              {
                if (v20 >= *(v68 + 16))
                {
                  goto LABEL_78;
                }

                v23 = *(v19 + 8 * v20 + 32);

                v24 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
                  goto LABEL_77;
                }
              }

              v25 = sub_252E358F4();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = sub_2529F8AC8(0, v21[2] + 1, 1, v21);
              }

              v27 = v21[2];
              v26 = v21[3];
              if (v27 >= v26 >> 1)
              {
                v21 = sub_2529F8AC8((v26 > 1), v27 + 1, 1, v21);
              }

              v21[2] = v27 + 1;
              v21[v27 + 4] = v25;
              ++v20;
              v19 = v22;
              if (v24 == v2)
              {
                goto LABEL_48;
              }
            }
          }
        }

        else
        {
          v2 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v63 = v12;
          v64 = v11;
          if (v2)
          {
            goto LABEL_33;
          }
        }

        v21 = MEMORY[0x277D84F90];
LABEL_48:

        v28 = v21[2];
        if (v28)
        {
          break;
        }

        v30 = MEMORY[0x277D84F90];
LABEL_67:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_2529F8AC8(0, v66[2] + 1, 1, v66);
        }

        v12 = v63;
        v11 = v64;
        v13 = a2 & 0xC000000000000001;
        v45 = v66[2];
        v44 = v66[3];
        if (v45 >= v44 >> 1)
        {
          v66 = sub_2529F8AC8((v44 > 1), v45 + 1, 1, v66);
        }

        v66[2] = v45 + 1;
        v66[v45 + 4] = v30;
        v2 = a2;
        if (v3 == v63)
        {
          goto LABEL_87;
        }
      }

      v29 = 0;
      v70 = v21 + 4;
      v30 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v29 >= v21[2])
        {
          goto LABEL_79;
        }

        v31 = v70[v29];
        v32 = *(v31 + 16);
        v2 = v30[2];
        v33 = v2 + v32;
        if (__OFADD__(v2, v32))
        {
          goto LABEL_80;
        }

        v34 = v70[v29];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v33 <= v30[3] >> 1)
        {
          if (!*(v31 + 16))
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v2 <= v33)
          {
            v36 = v2 + v32;
          }

          else
          {
            v36 = v2;
          }

          v30 = sub_2529F85CC(isUniquelyReferenced_nonNull_native, v36, 1, v30);
          if (!*(v31 + 16))
          {
LABEL_50:

            if (v32)
            {
              goto LABEL_81;
            }

            goto LABEL_51;
          }
        }

        v2 = v30[2];
        v37 = (v30[3] >> 1) - v2;
        v38 = *(sub_252E34804() - 8);
        if (v37 < v32)
        {
          goto LABEL_82;
        }

        v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v40 = *(v38 + 72);
        swift_arrayInitWithCopy();

        if (v32)
        {
          v41 = v30[2];
          v42 = __OFADD__(v41, v32);
          v43 = v41 + v32;
          if (v42)
          {
            goto LABEL_83;
          }

          v30[2] = v43;
        }

LABEL_51:
        if (v28 == ++v29)
        {
          goto LABEL_67;
        }
      }
    }
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_19;
    }
  }

  v66 = MEMORY[0x277D84F90];
LABEL_87:
  result = sub_25297BB90(v66);
  v47 = v67[2];
  if (!v47)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_106:

    return v49;
  }

  v48 = 0;
  v49 = MEMORY[0x277D84F90];
  while (v48 < v67[2])
  {
    v50 = v67[v48 + 4];
    v51 = *(v50 + 16);
    v52 = v49[2];
    v53 = v52 + v51;
    if (__OFADD__(v52, v51))
    {
      goto LABEL_108;
    }

    v54 = v67[v48 + 4];

    v55 = swift_isUniquelyReferenced_nonNull_native();
    if (v55 && v53 <= v49[3] >> 1)
    {
      if (*(v50 + 16))
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (v52 <= v53)
      {
        v56 = v52 + v51;
      }

      else
      {
        v56 = v52;
      }

      v49 = sub_2529F85CC(v55, v56, 1, v49);
      if (*(v50 + 16))
      {
LABEL_101:
        v57 = (v49[3] >> 1) - v49[2];
        result = sub_252E34804();
        v58 = *(result - 8);
        if (v57 < v51)
        {
          goto LABEL_110;
        }

        v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v60 = *(v58 + 72);
        swift_arrayInitWithCopy();

        if (v51)
        {
          v61 = v49[2];
          v42 = __OFADD__(v61, v51);
          v62 = v61 + v51;
          if (v42)
          {
            goto LABEL_111;
          }

          v49[2] = v62;
        }

        goto LABEL_90;
      }
    }

    if (v51)
    {
      goto LABEL_109;
    }

LABEL_90:
    if (v47 == ++v48)
    {
      goto LABEL_106;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
  return result;
}

uint64_t sub_252B0E134(uint64_t a1)
{
  v2 = sub_252E34804();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 1;
  }

  v9 = *(v3 + 16);
  v8 = v3 + 16;
  v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
  v11 = *(v8 + 56);
  v26 = 0x8000000252E7B340;
  v27 = v9;
  v24 = v11;
  v25 = 0x8000000252E7B360;
  v22 = 0x8000000252E7BAB0;
  v23 = 0x8000000252E7BB30;
  v12 = (v8 - 8);
  v9(v6, v10, v2);
  while (1)
  {
    v14 = sub_252E347F4();
    if (!v15)
    {
      goto LABEL_4;
    }

    v16 = v14;
    v17 = v15;
    if (v14 == 0xD000000000000015 && v26 == v15)
    {
      break;
    }

    if ((sub_252E37DB4() & 1) != 0 || v16 == 0xD00000000000001BLL && v25 == v17)
    {
      break;
    }

    if ((sub_252E37DB4() & 1) != 0 || v16 == 0xD000000000000017 && v23 == v17)
    {
      break;
    }

    v18 = sub_252E37DB4();
    v19 = v16 == 0xD000000000000015 && 0x8000000252E7BAD0 == v17;
    v20 = v19;
    if ((v18 & 1) != 0 || v20 || (sub_252E37DB4() & 1) != 0 || v16 == 0xD000000000000013 && v22 == v17)
    {
      break;
    }

    v13 = sub_252E37DB4();

    if (v13)
    {
      goto LABEL_27;
    }

LABEL_4:
    (*v12)(v6, v2);
    v10 += v24;
    if (!--v7)
    {
      return 1;
    }

    v27(v6, v10, v2);
  }

LABEL_27:
  (*v12)(v6, v2);
  return 0;
}

uint64_t sub_252B0E400(uint64_t a1)
{
  v50 = sub_252E36CA4();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_252E36D04();
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E34804();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  v16 = *(v9 + 16);
  v14 = v9 + 16;
  v15 = v16;
  v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v52 = *(v14 + 56);
  v41 = "tings + userEntities";
  v46 = "me string builder from ";
  v40 = 0x8000000252E72DC0;
  v39 = &v55;
  v38 = (v2 + 8);
  v37 = (v5 + 8);
  v18 = (v14 - 8);
  v36 = xmmword_252E41C50;
  v44 = v14;
  v45 = v8;
  v42 = (v14 - 8);
  v43 = v16;
  v16(v12, v17, v8);
  while (1)
  {
    sub_252E347F4();
    if (v24)
    {

      sub_252E347E4();
      v25 = sub_252E37B74();

      if (!v25)
      {
        if (qword_27F53F4F8 != -1)
        {
          swift_once();
        }

        v26 = sub_252E36AD4();
        v27 = __swift_project_value_buffer(v26, qword_27F544D90);
        sub_252CC3D90(0xD000000000000026, v41 | 0x8000000000000000, 0xD000000000000068, v46 | 0x8000000000000000);
        if (qword_2814B0DB8 != -1)
        {
          swift_once();
        }

        sub_252E37604();
        v28 = off_2814B0DC0;
        v35[1] = v27;
        if (off_2814B0DC0)
        {
        }

        else
        {
          type metadata accessor for LifeCycleManager();
          swift_allocObject();
          v28 = sub_252D7EAE8();
          off_2814B0DC0 = v28;

          sub_252D7E92C();
        }

        sub_252E37614();
        v51 = *(v28 + 2);
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        *(v29 + 24) = v36;
        *(v29 + 40) = v40;
        *(v29 + 48) = sub_252979724;
        *(v29 + 56) = 0;
        v57 = sub_252990560;
        v58 = v29;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v55 = sub_252AD686C;
        v56 = &block_descriptor_11;
        v30 = _Block_copy(aBlock);

        v31 = v47;
        sub_252E36CD4();
        v53 = MEMORY[0x277D84F90];
        sub_252B0F0EC(qword_2814B0298, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
        sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
        v32 = v49;
        v33 = v50;
        sub_252E37824();
        MEMORY[0x2530ADA30](0, v31, v32, v30);
        _Block_release(v30);
        (*v38)(v32, v33);
        (*v37)(v31, v48);

        if (qword_27F53F220 != -1)
        {
          swift_once();
        }

        sub_252E37604();
        v22 = qword_27F5407C0;
        v8 = v45;
        v15 = v43;
        if (qword_27F5407C0)
        {
        }

        else
        {
          v19 = type metadata accessor for ApplicationContext();
          v20 = *(v19 + 48);
          v21 = *(v19 + 52);
          swift_allocObject();
          v22 = sub_252978E58();
          qword_27F5407C0 = v22;
        }

        sub_252E37614();
        sub_252929E74((v22 + 16), aBlock);

        __swift_project_boxed_opaque_existential_1(aBlock, v56);
        v23 = sub_252979634();
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v18 = v42;
        if (v23)
        {
          break;
        }
      }
    }

    (*v18)(v12, v8);
    v17 += v52;
    if (!--v13)
    {
      return 0;
    }

    v15(v12, v17, v8);
  }

  sub_252CC3D90(0xD000000000000058, 0x8000000252E7BC60, 0xD000000000000068, v46 | 0x8000000000000000);
  (*v18)(v12, v8);
  return 1;
}

id sub_252B0EB38(uint64_t a1)
{
  v2 = sub_252E34614();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F50, &qword_252E42D00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543348, &qword_252E4B5B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v29 = v3;
  v20 = *(v3 + 56);
  v20(&v28 - v18, 1, 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_252E3C130;
  *(v21 + 32) = a1;
  v22 = sub_252E34A74();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);

  MEMORY[0x2530AAE70](v21, v9);

  sub_25293847C(v9, &qword_27F541F50, &qword_252E42D00);
  sub_252E357F4();
  sub_25293847C(v19, &qword_27F543348, &qword_252E4B5B0);
  v20(v17, 0, 1, v2);
  sub_252B0F064(v17, v19);
  v23 = v29;
  sub_252938414(v19, v14, &qword_27F543348, &qword_252E4B5B0);
  if ((*(v23 + 48))(v14, 1, v2) == 1)
  {
    sub_25293847C(v19, &qword_27F543348, &qword_252E4B5B0);

    sub_25293847C(v14, &qword_27F543348, &qword_252E4B5B0);
    return 0;
  }

  else
  {
    v25 = v28;
    (*(v23 + 32))(v28, v14, v2);
    sub_252A62FB0();
    v26 = MEMORY[0x2530ADA70](v25);
    v27 = [objc_allocWithZone(MEMORY[0x277D5F5E0]) initWithTask_];

    (*(v23 + 8))(v25, v2);
    sub_25293847C(v19, &qword_27F543348, &qword_252E4B5B0);
    return v27;
  }
}

uint64_t sub_252B0F064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543348, &qword_252E4B5B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252B0F0EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ConfirmationSemantic.rawValue.getter()
{
  v1 = 28526;
  if (*v0 != 1)
  {
    v1 = 0x6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7562617;
  }
}

HomeAutomationInternal::ConfirmationSemantic_optional __swiftcall ConfirmationSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252B0F1E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252B0F2C0()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B0F34C()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252B0F3C4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252B0F458(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE200000000000000;
  v5 = 28526;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7562617;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252B0F4A4(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (*a2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (*a2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (v2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252B0F594(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252B0F684(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (*a2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (*a2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (v2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252B0F820(uint64_t a1, uint64_t a2)
{
  v4 = sub_252B0FAEC();
  v5 = sub_252B0FB40();
  v6 = sub_252B0FB94();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t _s22HomeAutomationInternal20ConfirmationSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

unint64_t sub_252B0F970()
{
  result = qword_27F543370;
  if (!qword_27F543370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543370);
  }

  return result;
}

unint64_t sub_252B0F9C8()
{
  result = qword_27F543378;
  if (!qword_27F543378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543378);
  }

  return result;
}

unint64_t sub_252B0FA20()
{
  result = qword_27F543380;
  if (!qword_27F543380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543388, &qword_252E4B6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543380);
  }

  return result;
}

unint64_t sub_252B0FA88()
{
  result = qword_27F543390;
  if (!qword_27F543390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543390);
  }

  return result;
}

unint64_t sub_252B0FAEC()
{
  result = qword_27F543398;
  if (!qword_27F543398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543398);
  }

  return result;
}

unint64_t sub_252B0FB40()
{
  result = qword_27F5433A0;
  if (!qword_27F5433A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5433A0);
  }

  return result;
}

unint64_t sub_252B0FB94()
{
  result = qword_27F5433A8;
  if (!qword_27F5433A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5433A8);
  }

  return result;
}

uint64_t sub_252B0FC00(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v2 = *(v1 + 2);

  if (v2)
  {
    v39 = v2;
    v3 = 0;
    v4 = v1 + 32;
    v40 = v1 + 32;
    do
    {
      memcpy(__dst, &v4[504 * v3], 0x1F8uLL);
      if (*(__dst[16] + 16))
      {
        v5 = v1;
        v6 = __dst[47];
        v7 = *(__dst[47] + 16);
        sub_2529353AC(__dst, v47);
        v8 = (v6 + 32);

        while (2)
        {
          if (v7)
          {
            v9 = "noMatchingEntities";
            switch(*v8)
            {
              case 6:
                goto LABEL_8;
              case 0xA:
                v9 = "Home";
LABEL_8:
                if (0x8000000252E67960 != (v9 | 0x8000000000000000))
                {
                  goto LABEL_9;
                }

                goto LABEL_13;
              default:
LABEL_9:
                v10 = sub_252E37DB4();

                ++v8;
                --v7;
                if ((v10 & 1) == 0)
                {
                  continue;
                }

LABEL_13:
                sub_252935408(__dst);

                v11 = 0;
                v1 = v5;
                v12 = v2;
                v13 = v40;
                break;
            }

            while (1)
            {
              if (v11 == v2)
              {
                goto LABEL_80;
              }

              memcpy(v47, &v13[504 * v11], sizeof(v47));
              if (*(v47[16] + 16))
              {
                v14 = v47[47];
                v15 = *(v47[47] + 16);
                sub_2529353AC(v47, v46);
                v16 = (v14 + 32);

                while (2)
                {
                  if (v15)
                  {
                    switch(*v16)
                    {
                      case 7:

                        break;
                      default:
                        v17 = sub_252E37DB4();

                        ++v16;
                        --v15;
                        if ((v17 & 1) == 0)
                        {
                          continue;
                        }

                        break;
                    }

                    sub_252935408(v47);

                    if (qword_27F53F520 != -1)
                    {
                      goto LABEL_81;
                    }

LABEL_24:
                    v18 = sub_252E36AD4();
                    __swift_project_value_buffer(v18, qword_27F544E08);
                    sub_252CC3D90(0xD00000000000004ALL, 0x8000000252E7BDF0, 0xD00000000000009ELL, 0x8000000252E7BE40);
                    v19 = 0;
                    v20 = v40;
                    do
                    {
                      result = memcpy(v46, &v20[504 * v19], sizeof(v46));
                      if (*(v46[16] + 16))
                      {
                        v22 = v46[47];
                        v23 = *(v46[47] + 16);
                        sub_2529353AC(v46, v45);
                        v24 = (v22 + 32);

                        while (2)
                        {
                          if (v23)
                          {
                            switch(*v24)
                            {
                              case 7:

                                break;
                              default:
                                v25 = sub_252E37DB4();

                                ++v24;
                                --v23;
                                if ((v25 & 1) == 0)
                                {
                                  continue;
                                }

                                break;
                            }

                            sub_252935408(v46);

                            v12 = v19 + 1;
                            if (__OFADD__(v19, 1))
                            {
                              goto LABEL_85;
                            }

                            if (v12 == v39)
                            {
                              goto LABEL_35;
                            }

                            if ((v12 & 0x8000000000000000) == 0)
                            {
                              v29 = (v1 + 16);
                              while (v12 < *(v1 + 2))
                              {
                                v30 = v1 + 32;
                                v31 = &v1[504 * v12 + 32];
                                result = memcpy(v45, v31, sizeof(v45));
                                if (*(v45[16] + 16))
                                {
                                  v39 = &v1[504 * v12 + 32];
                                  v40 = v1;
                                  v32 = v45[47];
                                  v33 = *(v45[47] + 16);
                                  sub_2529353AC(v45, __src);
                                  v34 = (v32 + 32);

                                  while (2)
                                  {
                                    if (v33)
                                    {
                                      switch(*v34)
                                      {
                                        case 7:

                                          break;
                                        default:
                                          v35 = sub_252E37DB4();

                                          ++v34;
                                          --v33;
                                          if ((v35 & 1) == 0)
                                          {
                                            continue;
                                          }

                                          break;
                                      }

                                      sub_252935408(v45);

                                      v1 = v40;
                                      v38 = __OFADD__(v12++, 1);
                                      if (v38)
                                      {
                                        goto LABEL_73;
                                      }

                                      goto LABEL_68;
                                    }

                                    break;
                                  }

                                  sub_252935408(v45);

                                  v1 = v40;
                                  v31 = v39;
                                }

                                if (v19 != v12)
                                {
                                  if (v19 < 0)
                                  {
                                    goto LABEL_76;
                                  }

                                  v36 = *v29;
                                  if (v19 >= v36)
                                  {
                                    goto LABEL_77;
                                  }

                                  memcpy(v43, &v30[504 * v19], sizeof(v43));
                                  if (v12 >= v36)
                                  {
                                    goto LABEL_78;
                                  }

                                  memcpy(__src, v31, sizeof(__src));
                                  sub_2529353AC(v43, v42);
                                  sub_2529353AC(__src, v42);
                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    v1 = sub_252D57AC0(v1);
                                  }

                                  v37 = v1 + 32;
                                  memcpy(v41, &v1[504 * v19 + 32], sizeof(v41));
                                  memcpy(&v1[504 * v19 + 32], __src, 0x1F8uLL);
                                  sub_252935408(v41);
                                  if (v12 >= *(v1 + 2))
                                  {
                                    goto LABEL_79;
                                  }

                                  memcpy(v42, &v37[504 * v12], sizeof(v42));
                                  memcpy(&v37[504 * v12], v43, 0x1F8uLL);
                                  result = sub_252935408(v42);
                                }

                                v38 = __OFADD__(v19++, 1);
                                if (v38)
                                {
                                  goto LABEL_74;
                                }

                                v38 = __OFADD__(v12++, 1);
                                if (v38)
                                {
                                  goto LABEL_73;
                                }

LABEL_68:
                                if (v12 == *(v1 + 2))
                                {
                                  goto LABEL_35;
                                }

                                v29 = (v1 + 16);
                              }

                              __break(1u);
LABEL_73:
                              __break(1u);
LABEL_74:
                              __break(1u);
                            }

                            __break(1u);
LABEL_76:
                            __break(1u);
LABEL_77:
                            __break(1u);
LABEL_78:
                            __break(1u);
LABEL_79:
                            __break(1u);
LABEL_80:
                            __break(1u);
LABEL_81:
                            swift_once();
                            goto LABEL_24;
                          }

                          break;
                        }

                        sub_252935408(v46);

                        v20 = v40;
                      }

                      ++v19;
                    }

                    while (v19 != v12);
                    v19 = v12;
LABEL_35:
                    v26 = *(v1 + 2);
                    if (v19 > v26)
                    {
                      __break(1u);
                    }

                    else if ((v19 & 0x8000000000000000) == 0)
                    {
                      if (!__OFADD__(v26, v19 - v26))
                      {
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v46[0] = v1;
                        if (!isUniquelyReferenced_nonNull_native || v19 > *(v1 + 3) >> 1)
                        {
                          if (v26 <= v19)
                          {
                            v28 = v19;
                          }

                          else
                          {
                            v28 = v26;
                          }

                          v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v28, 1, v1);
                          v46[0] = v1;
                        }

                        sub_252B7B280(v19, v26, 0);
                        return v1;
                      }

LABEL_84:
                      __break(1u);
LABEL_85:
                      __break(1u);
                      return result;
                    }

                    __break(1u);
                    goto LABEL_84;
                  }

                  break;
                }

                sub_252935408(v47);

                v13 = v40;
              }

              if (++v11 == v2)
              {
                return v1;
              }
            }
          }

          break;
        }

        sub_252935408(__dst);

        v1 = v5;
        v4 = v40;
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return v1;
}

unint64_t sub_252B107EC(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_68;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v43 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v44 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v40 = isUniquelyReferenced_nonNull_bridgeObject;
    v42 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = &qword_27F542000;
    v5 = MEMORY[0x277D84F90];
    v41 = v1;
    while (1)
    {
      if (v44)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v3, v40);
        v6 = isUniquelyReferenced_nonNull_bridgeObject;
        v7 = __OFADD__(v3++, 1);
        if (v7)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v3 >= *(v43 + 16))
        {
          goto LABEL_62;
        }

        v6 = *(v42 + 8 * v3);

        v7 = __OFADD__(v3++, 1);
        if (v7)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          v39 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = sub_252E378C4();
          isUniquelyReferenced_nonNull_bridgeObject = v39;
          goto LABEL_3;
        }
      }

      if (qword_27F53F320 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v8 = v4[425];
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v10 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
        v11 = v4[425];
        v4[425] = v10;
        v9 = v10;
      }

      sub_252E37614();
      v12 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v13 = *&v9[v12];
      if (v13 >> 62)
      {
        if (v13 < 0)
        {
          v20 = *&v9[v12];
        }

        v21 = sub_252E378C4();

        if (!v21)
        {
LABEL_29:

          v19 = v2;
          goto LABEL_30;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v14)
        {
          goto LABEL_29;
        }
      }

      sub_252E37604();
      v15 = v4[425];
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v17 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
        v18 = v4[425];
        v4[425] = v17;
        v16 = v17;
      }

      sub_252E37614();
      v19 = sub_252AC0F68(v6);

      if (!v19)
      {
        v19 = v2;
      }

LABEL_30:
      v22 = v19 >> 62;
      if (v19 >> 62)
      {
        v23 = sub_252E378C4();
      }

      else
      {
        v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v47 = v23;
      v7 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v23);
      v25 = isUniquelyReferenced_nonNull_bridgeObject + v23;
      if (v7)
      {
        goto LABEL_63;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v24)
        {
          goto LABEL_42;
        }

        v26 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v45 = v5;
          goto LABEL_44;
        }
      }

      else
      {
        if (v24)
        {
LABEL_42:
          sub_252E378C4();
          goto LABEL_43;
        }

        v26 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v27 = *(v26 + 16);
LABEL_43:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v45 = isUniquelyReferenced_nonNull_bridgeObject;
      v26 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_44:
      v28 = *(v26 + 16);
      v29 = *(v26 + 24);
      if (v22)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v30 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_48:
          if (((v29 >> 1) - v28) < v47)
          {
            goto LABEL_65;
          }

          v31 = v26 + 8 * v28 + 32;
          if (v22)
          {
            if (v30 < 1)
            {
              goto LABEL_67;
            }

            sub_252A00B04(&qword_27F542DB0, &qword_27F542DA8, &qword_252E49180);
            for (i = 0; i != v30; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DA8, &qword_252E49180);
              v33 = sub_2529FBD80(v46, i, v19);
              v35 = *v34;
              (v33)(v46, 0);
              *(v31 + 8 * i) = v35;
            }
          }

          else
          {
            type metadata accessor for HomeAttributeTargetArea();
            swift_arrayInitWithCopy();
          }

          v1 = v41;
          v2 = MEMORY[0x277D84F90];
          v4 = &qword_27F542000;
          v5 = v45;
          if (v47 >= 1)
          {
            v36 = *(v26 + 16);
            v7 = __OFADD__(v36, v47);
            v37 = v36 + v47;
            if (v7)
            {
              goto LABEL_66;
            }

            *(v26 + 16) = v37;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v30 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
          goto LABEL_48;
        }
      }

      v4 = &qword_27F542000;
      v5 = v45;
      if (v47 > 0)
      {
        goto LABEL_64;
      }

LABEL_6:
      if (v3 == v1)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_252B10C8C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_68;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v43 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v44 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v40 = isUniquelyReferenced_nonNull_bridgeObject;
    v42 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = &unk_27F542000;
    v5 = MEMORY[0x277D84F90];
    v41 = v1;
    while (1)
    {
      if (v44)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v3, v40);
        v6 = isUniquelyReferenced_nonNull_bridgeObject;
        v7 = __OFADD__(v3++, 1);
        if (v7)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v3 >= *(v43 + 16))
        {
          goto LABEL_62;
        }

        v6 = *(v42 + 8 * v3);

        v7 = __OFADD__(v3++, 1);
        if (v7)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          v39 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = sub_252E378C4();
          isUniquelyReferenced_nonNull_bridgeObject = v39;
          goto LABEL_3;
        }
      }

      if (qword_27F53F320 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v8 = v4[425];
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v10 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
        v11 = v4[425];
        v4[425] = v10;
        v9 = v10;
      }

      sub_252E37614();
      v12 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v13 = *&v9[v12];
      if (v13 >> 62)
      {
        if (v13 < 0)
        {
          v20 = *&v9[v12];
        }

        v21 = sub_252E378C4();

        if (!v21)
        {
LABEL_29:

          v19 = v2;
          goto LABEL_30;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v14)
        {
          goto LABEL_29;
        }
      }

      sub_252E37604();
      v15 = v4[425];
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v17 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
        v18 = v4[425];
        v4[425] = v17;
        v16 = v17;
      }

      sub_252E37614();
      v19 = sub_252AC11C8(v6);

      if (!v19)
      {
        v19 = v2;
      }

LABEL_30:
      v22 = v19 >> 62;
      if (v19 >> 62)
      {
        v23 = sub_252E378C4();
      }

      else
      {
        v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v47 = v23;
      v7 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v23);
      v25 = isUniquelyReferenced_nonNull_bridgeObject + v23;
      if (v7)
      {
        goto LABEL_63;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v24)
        {
          goto LABEL_42;
        }

        v26 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v45 = v5;
          goto LABEL_44;
        }
      }

      else
      {
        if (v24)
        {
LABEL_42:
          sub_252E378C4();
          goto LABEL_43;
        }

        v26 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v27 = *(v26 + 16);
LABEL_43:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v45 = isUniquelyReferenced_nonNull_bridgeObject;
      v26 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_44:
      v28 = *(v26 + 16);
      v29 = *(v26 + 24);
      if (v22)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v30 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_48:
          if (((v29 >> 1) - v28) < v47)
          {
            goto LABEL_65;
          }

          v31 = v26 + 8 * v28 + 32;
          if (v22)
          {
            if (v30 < 1)
            {
              goto LABEL_67;
            }

            sub_252A00B04(&qword_27F5433E0, &qword_27F5433D8, &qword_252E4B828);
            for (i = 0; i != v30; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433D8, &qword_252E4B828);
              v33 = sub_2529FBD80(v46, i, v19);
              v35 = *v34;
              (v33)(v46, 0);
              *(v31 + 8 * i) = v35;
            }
          }

          else
          {
            type metadata accessor for HomeAttributeTargetMap();
            swift_arrayInitWithCopy();
          }

          v1 = v41;
          v2 = MEMORY[0x277D84F90];
          v4 = &unk_27F542000;
          v5 = v45;
          if (v47 >= 1)
          {
            v36 = *(v26 + 16);
            v7 = __OFADD__(v36, v47);
            v37 = v36 + v47;
            if (v7)
            {
              goto LABEL_66;
            }

            *(v26 + 16) = v37;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v30 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
          goto LABEL_48;
        }
      }

      v4 = &unk_27F542000;
      v5 = v45;
      if (v47 > 0)
      {
        goto LABEL_64;
      }

LABEL_6:
      if (v3 == v1)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_252B1112C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = sub_252D523AC();

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v34 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = v3;
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v32 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v34)
          {
            goto LABEL_45;
          }

          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            sub_252A00B04(&qword_27F5433F0, &qword_27F5433E8, &unk_252E4B830);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433E8, &unk_252E4B830);
              v19 = sub_2529FBE00(v33, i, v6);
              v21 = *v20;

              (v19)(v33, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for Zone();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v32;
          if (v34 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v34);
            v23 = v22 + v34;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v32;
      if (v34 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252B11488()
{
  result = sub_252C759A0(&unk_2864ACBF8);
  qword_27F575820 = result;
  return result;
}

uint64_t sub_252B114B0()
{
  result = sub_252C759A0(&unk_2864ACC30);
  qword_27F575828 = result;
  return result;
}

uint64_t sub_252B114D8()
{
  result = sub_252C759A0(&unk_2864ACC98);
  qword_27F575830 = result;
  return result;
}

uint64_t sub_252B11500(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 outerDeviceName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252E36F34();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a2 outerDeviceName];
  if (!v9)
  {
    if (!v8)
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  v10 = v9;
  v11 = sub_252E36F34();
  v13 = v12;

  if (!v8)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  if (!v13)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (v6 == v11 && v8 == v13)
  {
LABEL_25:

    goto LABEL_31;
  }

  v15 = sub_252E37DB4();

  if (v15)
  {
    goto LABEL_31;
  }

LABEL_17:
  v16 = [v3 homeEntityName];
  if (v16)
  {
    v17 = v16;
    v18 = sub_252E36F34();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a2 homeEntityName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_252E36F34();
    v25 = v24;

    if (v20)
    {
      if (!v25)
      {
        goto LABEL_41;
      }

      if (v18 == v23 && v20 == v25)
      {
        goto LABEL_25;
      }

      v26 = sub_252E37DB4();

      if ((v26 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v25)
    {
      goto LABEL_58;
    }
  }

  else if (v20)
  {
    goto LABEL_41;
  }

LABEL_31:
  v27 = [v3 roomName];
  if (v27)
  {
    v28 = v27;
    v29 = sub_252E36F34();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [a2 roomName];
  if (!v32)
  {
    if (!v31)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  v33 = v32;
  v34 = sub_252E36F34();
  v36 = v35;

  if (!v31)
  {
    if (v36)
    {
      goto LABEL_58;
    }

    goto LABEL_45;
  }

  if (!v36)
  {
LABEL_41:
    v37 = 0;
LABEL_59:

    return v37 & 1;
  }

  if (v29 == v34 && v31 == v36)
  {

    goto LABEL_45;
  }

  v38 = sub_252E37DB4();

  if (v38)
  {
LABEL_45:
    v39 = [v3 homeName];
    if (v39)
    {
      v40 = v39;
      v41 = sub_252E36F34();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v44 = [a2 homeName];
    if (v44)
    {
      v45 = v44;
      v46 = sub_252E36F34();
      v48 = v47;

      if (v43)
      {
        if (v48)
        {
          if (v41 == v46 && v43 == v48)
          {

            v37 = 1;
          }

          else
          {
            v37 = sub_252E37DB4();
          }

          goto LABEL_59;
        }

        goto LABEL_55;
      }

      if (v48)
      {
LABEL_58:
        v37 = 0;
        goto LABEL_59;
      }
    }

    else if (v43)
    {
LABEL_55:
      v37 = 0;
      goto LABEL_59;
    }

    v37 = 1;
    return v37 & 1;
  }

LABEL_56:
  v37 = 0;
  return v37 & 1;
}

BOOL sub_252B118A8(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27F53F368 != -1)
  {
    v3 = v1;
    swift_once();
    v1 = v3;
  }

  return (sub_252DB4F4C(v1, qword_27F575830) & 1) == 0;
}

uint64_t sub_252B11920@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = 0;
  v8 = *result;
  v7 = *(result + 8);
  v9 = *(result + 16);
  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        v15.n128_f64[0] = HomeFilter.Builder.init()();
        v17 = (*(*v16 + 752))(a3, v15);

        v18 = (*(*v17 + 608))(0, 0);

        v14 = (*(*v18 + 576))(v8, v7);
      }

      else
      {
        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        v23.n128_f64[0] = HomeFilter.Builder.init()();
        v25 = (*(*v24 + 752))(a3, v23);

        v14 = (*(*v25 + 664))(v8, v7);
      }

      goto LABEL_23;
    }

    if (a2 == 2)
    {
      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      v26.n128_f64[0] = HomeFilter.Builder.init()();
      v28 = (*(*v27 + 752))(a3, v26);

      v29 = (*(*v28 + 576))(0, 0);

      v14 = (*(*v29 + 608))(v8, v7);
      goto LABEL_23;
    }

    if (a2 != 3)
    {
      goto LABEL_24;
    }

    v43 = *(result + 16);
    result = sub_252A47F84(&v43);
    if ((v19 & 1) == 0)
    {
LABEL_21:
      v34 = result;
      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      v35.n128_f64[0] = HomeFilter.Builder.init()();
      v37 = (*(*v36 + 752))(a3, v35);

      v14 = (*(*v37 + 624))(v34);
      goto LABEL_23;
    }

LABEL_13:
    v6 = 0;
    goto LABEL_24;
  }

  if (a2 > 5u)
  {
    switch(a2)
    {
      case 6u:
        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        v30.n128_f64[0] = HomeFilter.Builder.init()();
        v32 = (*(*v31 + 752))(a3, v30);

        v14 = (*(*v32 + 648))(v8, v7);
        goto LABEL_23;
      case 7u:
        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        v38.n128_f64[0] = HomeFilter.Builder.init()();
        v40 = (*(*v39 + 752))(a3, v38);

        v14 = (*(*v40 + 632))(v8, v7);
        goto LABEL_23;
      case 8u:
        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        v10.n128_f64[0] = HomeFilter.Builder.init()();
        v12 = (*(*v11 + 752))(a3, v10);

        v13 = (*(*v12 + 576))(v8, v7);

        v14 = (*(*v13 + 592))(5);
LABEL_23:
        v41 = v14;

        v6 = (*(*v41 + 760))(v42);

        goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (a2 == 4)
  {
    v44 = *(result + 16);
    result = sub_252A47F84(&v44);
    if ((v33 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (a2 == 5)
  {
    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v20.n128_f64[0] = HomeFilter.Builder.init()();
    v22 = (*(*v21 + 752))(a3, v20);

    v14 = (*(*v22 + 680))(v8, v7);
    goto LABEL_23;
  }

LABEL_24:
  *a4 = v6;
  return result;
}

uint64_t sub_252B120A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a4;
  v31 = a3;
  v30 = a2;
  v26 = sub_252E36324();
  v9 = *(v26 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v26);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v24 = a5;
    v25 = v6;
    v6 = 0;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = a1 & 0xC000000000000001;
    v14 = v9 + 1;
    while (1)
    {
      if (v29)
      {
        v15 = MEMORY[0x2530ADF00](v6, a1);
      }

      else
      {
        if (v6 >= *(v28 + 16))
        {
          goto LABEL_18;
        }

        v15 = *(a1 + 8 * v6 + 32);
      }

      v9 = v15;
      v16 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_252A6D400(v30, v15);
      if (v17)
      {
        sub_252E37024();

        v18 = sub_252E36304();
        v20 = v19;
        (*v14)(v12, v26);
        if (v18 == v31 && v20 == v27)
        {

LABEL_16:
          v22 = *v24;
          *v24 = v9;

          return 1;
        }

        a5 = sub_252E37DB4();

        if (a5)
        {
          goto LABEL_16;
        }
      }

      ++v6;
      if (v16 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}