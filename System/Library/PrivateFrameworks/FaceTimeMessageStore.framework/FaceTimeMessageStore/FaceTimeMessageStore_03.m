uint64_t sub_1BC7E23FC(uint64_t a1)
{
  v2 = sub_1BC7E2A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E2470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E1278(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7E2498(uint64_t a1)
{
  v2 = sub_1BC7E2934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E24D4(uint64_t a1)
{
  v2 = sub_1BC7E2934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E2540(uint64_t a1)
{
  v2 = sub_1BC7E28E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E257C(uint64_t a1)
{
  v2 = sub_1BC7E28E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BC7E2600()
{
  result = qword_1EDC209B8;
  if (!qword_1EDC209B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC209B8);
  }

  return result;
}

unint64_t sub_1BC7E2658()
{
  result = qword_1EDC209C0;
  if (!qword_1EDC209C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC209C0);
  }

  return result;
}

uint64_t sub_1BC7E2760(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC7E28E0()
{
  result = qword_1EBCF5058;
  if (!qword_1EBCF5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5058);
  }

  return result;
}

unint64_t sub_1BC7E2934()
{
  result = qword_1EBCF5068;
  if (!qword_1EBCF5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5068);
  }

  return result;
}

uint64_t sub_1BC7E2988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportTranscriptAccuracy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7E29EC(uint64_t a1)
{
  v2 = type metadata accessor for ReportTranscriptAccuracy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BC7E2A48()
{
  result = qword_1EBCF5080;
  if (!qword_1EBCF5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5080);
  }

  return result;
}

unint64_t sub_1BC7E2A9C()
{
  result = qword_1EDC202D0;
  if (!qword_1EDC202D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC202D0);
  }

  return result;
}

unint64_t sub_1BC7E2AF0()
{
  result = qword_1EDC1DF10;
  if (!qword_1EDC1DF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5098, &qword_1BC8FD350);
    sub_1BC7E2760(&qword_1EDC1F9B8, type metadata accessor for MessageUpdate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF10);
  }

  return result;
}

unint64_t sub_1BC7E2BA4()
{
  result = qword_1EDC1DF18;
  if (!qword_1EDC1DF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5098, &qword_1BC8FD350);
    sub_1BC7E2760(&qword_1EDC20528, type metadata accessor for MessageUpdate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF18);
  }

  return result;
}

unint64_t sub_1BC7E2C58()
{
  result = qword_1EBCF50B8;
  if (!qword_1EBCF50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF50B8);
  }

  return result;
}

unint64_t sub_1BC7E2CAC()
{
  result = qword_1EBCF50D0;
  if (!qword_1EBCF50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF50D0);
  }

  return result;
}

unint64_t sub_1BC7E2D00()
{
  result = qword_1EBCF50E8;
  if (!qword_1EBCF50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF50E8);
  }

  return result;
}

unint64_t sub_1BC7E2D54()
{
  result = qword_1EBCF50F8;
  if (!qword_1EBCF50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF50F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReportTranscriptAccuracy.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC7E2EF8()
{
  result = qword_1EBCF5120;
  if (!qword_1EBCF5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5120);
  }

  return result;
}

unint64_t sub_1BC7E2F50()
{
  result = qword_1EBCF5128;
  if (!qword_1EBCF5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5128);
  }

  return result;
}

unint64_t sub_1BC7E2FA8()
{
  result = qword_1EBCF5130;
  if (!qword_1EBCF5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5130);
  }

  return result;
}

unint64_t sub_1BC7E3000()
{
  result = qword_1EBCF5138;
  if (!qword_1EBCF5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5138);
  }

  return result;
}

unint64_t sub_1BC7E3058()
{
  result = qword_1EBCF5140;
  if (!qword_1EBCF5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5140);
  }

  return result;
}

unint64_t sub_1BC7E30B0()
{
  result = qword_1EBCF5148;
  if (!qword_1EBCF5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5148);
  }

  return result;
}

unint64_t sub_1BC7E3108()
{
  result = qword_1EBCF5150;
  if (!qword_1EBCF5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5150);
  }

  return result;
}

unint64_t sub_1BC7E3160()
{
  result = qword_1EBCF5158;
  if (!qword_1EBCF5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5158);
  }

  return result;
}

unint64_t sub_1BC7E31B8()
{
  result = qword_1EBCF5160;
  if (!qword_1EBCF5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5160);
  }

  return result;
}

unint64_t sub_1BC7E3210()
{
  result = qword_1EBCF5168;
  if (!qword_1EBCF5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5168);
  }

  return result;
}

unint64_t sub_1BC7E3268()
{
  result = qword_1EBCF5170;
  if (!qword_1EBCF5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5170);
  }

  return result;
}

unint64_t sub_1BC7E32C0()
{
  result = qword_1EBCF5178;
  if (!qword_1EBCF5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5178);
  }

  return result;
}

unint64_t sub_1BC7E3318()
{
  result = qword_1EBCF5180;
  if (!qword_1EBCF5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5180);
  }

  return result;
}

unint64_t sub_1BC7E3370()
{
  result = qword_1EBCF5188;
  if (!qword_1EBCF5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5188);
  }

  return result;
}

unint64_t sub_1BC7E33C8()
{
  result = qword_1EBCF5190;
  if (!qword_1EBCF5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5190);
  }

  return result;
}

unint64_t sub_1BC7E3420()
{
  result = qword_1EDC202C0;
  if (!qword_1EDC202C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC202C0);
  }

  return result;
}

unint64_t sub_1BC7E3478()
{
  result = qword_1EDC202C8;
  if (!qword_1EDC202C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC202C8);
  }

  return result;
}

unint64_t sub_1BC7E34D0()
{
  result = qword_1EBCF5198;
  if (!qword_1EBCF5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5198);
  }

  return result;
}

unint64_t sub_1BC7E3528()
{
  result = qword_1EBCF51A0;
  if (!qword_1EBCF51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51A0);
  }

  return result;
}

unint64_t sub_1BC7E3580()
{
  result = qword_1EBCF51A8;
  if (!qword_1EBCF51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51A8);
  }

  return result;
}

unint64_t sub_1BC7E35D8()
{
  result = qword_1EBCF51B0;
  if (!qword_1EBCF51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51B0);
  }

  return result;
}

unint64_t sub_1BC7E3630()
{
  result = qword_1EBCF51B8;
  if (!qword_1EBCF51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51B8);
  }

  return result;
}

unint64_t sub_1BC7E3688()
{
  result = qword_1EBCF51C0;
  if (!qword_1EBCF51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51C0);
  }

  return result;
}

unint64_t sub_1BC7E36DC()
{
  result = qword_1EBCF51D0;
  if (!qword_1EBCF51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51D0);
  }

  return result;
}

unint64_t sub_1BC7E3730()
{
  result = qword_1EBCF51E0;
  if (!qword_1EBCF51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF51E0);
  }

  return result;
}

unint64_t sub_1BC7E3784()
{
  result = qword_1EDC208B8;
  if (!qword_1EDC208B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208B8);
  }

  return result;
}

unint64_t sub_1BC7E37D8()
{
  result = qword_1EDC1FA30;
  if (!qword_1EDC1FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FA30);
  }

  return result;
}

unint64_t sub_1BC7E382C()
{
  result = qword_1EBCF5208;
  if (!qword_1EBCF5208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5200, &qword_1BC8FE298);
    sub_1BC7E2760(&unk_1EDC20FB0, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5208);
  }

  return result;
}

unint64_t sub_1BC7E38E0()
{
  result = qword_1EDC1DEB8;
  if (!qword_1EDC1DEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5200, &qword_1BC8FE298);
    sub_1BC7E2760(&unk_1EDC20FC0, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DEB8);
  }

  return result;
}

unint64_t sub_1BC7E3994()
{
  result = qword_1EDC20920;
  if (!qword_1EDC20920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20920);
  }

  return result;
}

unint64_t sub_1BC7E39E8()
{
  result = qword_1EDC20A00;
  if (!qword_1EDC20A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20A00);
  }

  return result;
}

unint64_t sub_1BC7E3AA0()
{
  result = qword_1EBCF5238;
  if (!qword_1EBCF5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5238);
  }

  return result;
}

unint64_t sub_1BC7E3AF8()
{
  result = qword_1EBCF5240;
  if (!qword_1EBCF5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5240);
  }

  return result;
}

unint64_t sub_1BC7E3B50()
{
  result = qword_1EBCF5248;
  if (!qword_1EBCF5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5248);
  }

  return result;
}

unint64_t sub_1BC7E3BA8()
{
  result = qword_1EBCF5250;
  if (!qword_1EBCF5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5250);
  }

  return result;
}

unint64_t sub_1BC7E3C00()
{
  result = qword_1EDC209F0;
  if (!qword_1EDC209F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC209F0);
  }

  return result;
}

unint64_t sub_1BC7E3C58()
{
  result = qword_1EDC209F8;
  if (!qword_1EDC209F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC209F8);
  }

  return result;
}

unint64_t sub_1BC7E3CB0()
{
  result = qword_1EDC20910;
  if (!qword_1EDC20910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20910);
  }

  return result;
}

unint64_t sub_1BC7E3D08()
{
  result = qword_1EDC20918;
  if (!qword_1EDC20918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20918);
  }

  return result;
}

unint64_t sub_1BC7E3D60()
{
  result = qword_1EDC1FA20;
  if (!qword_1EDC1FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FA20);
  }

  return result;
}

unint64_t sub_1BC7E3DB8()
{
  result = qword_1EDC1FA28;
  if (!qword_1EDC1FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FA28);
  }

  return result;
}

unint64_t sub_1BC7E3E10()
{
  result = qword_1EDC208A8;
  if (!qword_1EDC208A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208A8);
  }

  return result;
}

unint64_t sub_1BC7E3E68()
{
  result = qword_1EDC208B0;
  if (!qword_1EDC208B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208B0);
  }

  return result;
}

unint64_t sub_1BC7E3EC0()
{
  result = qword_1EBCF5258;
  if (!qword_1EBCF5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5258);
  }

  return result;
}

unint64_t sub_1BC7E3F18()
{
  result = qword_1EBCF5260;
  if (!qword_1EBCF5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5260);
  }

  return result;
}

unint64_t sub_1BC7E3F70()
{
  result = qword_1EBCF5268;
  if (!qword_1EBCF5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5268);
  }

  return result;
}

unint64_t sub_1BC7E3FC8()
{
  result = qword_1EBCF5270;
  if (!qword_1EBCF5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5270);
  }

  return result;
}

FaceTimeMessageStore::SpotlightReindexingReason sub_1BC7E4118@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SpotlightReindexingReason.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BC7E4158@<X0>(uint64_t *a1@<X8>)
{
  result = SpotlightReindexingReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static SpotlightIndexManagerUtilities.voicemailsNeedIndexingDueToVersionMismatch(defaults:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v4 = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0);
    if (!v4)
    {
      v4 = [objc_opt_self() standardUserDefaults];
    }

    v2 = v4;
  }

  v5 = a1;
  v6 = sub_1BC8F7BE4();
  v7 = [v2 objectForKey_];

  if (!v7)
  {
    memset(v21, 0, sizeof(v21));
    sub_1BC7E6180(v21, &unk_1EBCF5E50, &qword_1BC8FE850);
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v15 = sub_1BC8F7734();
    __swift_project_value_buffer(v15, qword_1EDC2B3C0);
    v16 = sub_1BC8F7714();
    v17 = sub_1BC8F8204();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_20;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "No spotlight index version found";
    goto LABEL_19;
  }

  sub_1BC8F8474();
  swift_unknownObjectRelease();
  sub_1BC7E6180(v21, &unk_1EBCF5E50, &qword_1BC8FE850);
  v8 = sub_1BC8F7BE4();
  v9 = [v2 integerForKey_];

  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v10 = sub_1BC8F7734();
  __swift_project_value_buffer(v10, qword_1EDC2B3C0);
  v11 = sub_1BC8F7714();
  v12 = sub_1BC8F8204();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = v9;
    *(v13 + 12) = 2048;
    *(v13 + 14) = 8;
    _os_log_impl(&dword_1BC7A3000, v11, v12, "Current spotlight index version for voicemails: %ld expected index version: %ld", v13, 0x16u);
    OUTLINED_FUNCTION_6();
  }

  if (v9 != 8)
  {
    v16 = sub_1BC8F7714();
    v17 = sub_1BC8F8204();
    if (!os_log_type_enabled(v16, v17))
    {
LABEL_20:

      v14 = 1;
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Spotlight Index versions mismatch";
LABEL_19:
    _os_log_impl(&dword_1BC7A3000, v16, v17, v19, v18, 2u);
    OUTLINED_FUNCTION_6();
    goto LABEL_20;
  }

  v14 = 0;
LABEL_21:

  return v14;
}

void static SpotlightIndexManagerUtilities.voicemailsDeferredReindexingReason(defaults:)(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v6 = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0);
    if (!v6)
    {
      v6 = [objc_opt_self() standardUserDefaults];
    }

    v4 = v6;
  }

  v7 = a1;
  v8 = sub_1BC8F7BE4();
  v9 = [v4 integerForKey_];

  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v10 = sub_1BC8F7734();
  __swift_project_value_buffer(v10, qword_1EDC2B3C0);
  v11 = sub_1BC8F7714();
  v12 = sub_1BC8F8204();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v9;
    _os_log_impl(&dword_1BC7A3000, v11, v12, "voicemailsDeferredReindexingReason: %ld", v13, 0xCu);
    OUTLINED_FUNCTION_6();
  }

  *a2 = v9;
}

uint64_t static SpotlightIndexManagerUtilities.setVoicemailsNeedsDeferredReindexing(for:defaults:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  type metadata accessor for AnalyticsSender();
  v4 = swift_allocObject();
  type metadata accessor for AnalyticsManager();
  swift_allocObject();
  v5 = sub_1BC8EBC08(v4, 1);
  v7 = v3;
  sub_1BC7E46FC(v5, &v7, a2);
}

void sub_1BC7E46FC(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0);
    if (!v7)
    {
      v7 = [objc_opt_self() standardUserDefaults];
    }

    v17 = v7;
  }

  v8 = a3;
  v9 = sub_1BC8F7BE4();
  v10 = [v17 integerForKey_];

  if ((v5 & ~v10) != 0)
  {
    v11 = v10 | v5;
    v12 = sub_1BC8F7BE4();
    [v17 setInteger:v11 forKey:v12];

    v18 = v5;
    sub_1BC7E4904(a1, &v18, 0);
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v13 = sub_1BC8F7734();
    __swift_project_value_buffer(v13, qword_1EDC2B3C0);
    v14 = sub_1BC8F7714();
    v15 = sub_1BC8F8204();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218240;
      *(v16 + 4) = v5;
      *(v16 + 12) = 2048;
      *(v16 + 14) = v11;
      _os_log_impl(&dword_1BC7A3000, v14, v15, "Voicemails updated deferredSpotlightReindexingReason for reason: %ld finalReason: %ld", v16, 0x16u);
      OUTLINED_FUNCTION_6();
    }
  }
}

void sub_1BC7E4904(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = sub_1BC8F72D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BC8F6DA4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v62 - v16;
  v18 = sub_1BC8F71E4();
  isa = v18[-1].isa;
  v19 = *(isa + 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v20);
  if (a1)
  {
    v66 = v22;
    v67 = v11;
    v68 = v10;
    v69 = v7;
    v70 = v6;
    v71 = &v62 - v21;
    v23 = *a2;
    v75 = v18;
    if (a3)
    {

      v24 = a3;
    }

    else
    {
      v29 = objc_allocWithZone(MEMORY[0x1E695E000]);

      v30 = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0);
      if (!v30)
      {
        v30 = [objc_opt_self() standardUserDefaults];
      }

      v24 = v30;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5298, &qword_1BC8FEA68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC8FE840;
    *(inited + 32) = 0xD00000000000001DLL;
    *(inited + 40) = 0x80000001BC90BD50;
    v32 = sub_1BC7E613C();
    v33 = a3;
    *(inited + 48) = sub_1BC8F8384();
    *(inited + 56) = 0xD000000000000019;
    *(inited + 64) = 0x80000001BC90BD70;
    *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(inited + 80) = 0xD000000000000027;
    v65 = 0x80000001BC90BDD0;
    *(inited + 88) = 0x80000001BC90BDD0;
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v64 = v32;
    v34 = sub_1BC8F7AD4();
    v35 = sub_1BC8F7BE4();
    v36 = [v24 objectForKey_];

    if (v36)
    {
      sub_1BC8F8474();
      swift_unknownObjectRelease();
    }

    else
    {
      v76 = 0u;
      v77 = 0u;
    }

    v37 = v75;
    v78[0] = v76;
    v78[1] = v77;
    if (*(&v77 + 1))
    {
      v38 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v17, v38 ^ 1u, 1, v37);
      if (__swift_getEnumTagSinglePayload(v17, 1, v37) != 1)
      {
        v62 = v24;
        v63 = a1;
        v39 = isa;
        v40 = v71;
        (*(isa + 4))(v71, v17, v37);
        v41 = v73;
        sub_1BC8F72B4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF52A0, &qword_1BC8FEA70);
        v42 = sub_1BC8F72C4();
        v43 = *(v42 - 8);
        v44 = *(v43 + 72);
        v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1BC8FC230;
        (*(v43 + 104))(v46 + v45, *MEMORY[0x1E6969A58], v42);
        sub_1BC8C12CC();
        v47 = v66;
        sub_1BC8F71D4();
        v48 = v72;
        sub_1BC8F72A4();

        v49 = *(v39 + 1);
        v49(v47, v37);
        (*(v69 + 8))(v41, v70);
        v50 = sub_1BC8F6D94();
        LOBYTE(v42) = v51;
        (*(v67 + 8))(v48, v68);
        if (v42)
        {
          v49(v40, v37);
          a1 = v63;
        }

        else
        {
          v52 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          a1 = v63;
          if (!v52)
          {
            v56 = sub_1BC803CBC(0xD000000000000027, v65);
            if (v57)
            {
              v58 = v56;
              swift_isUniquelyReferenced_nonNull_native();
              *&v78[0] = v34;
              v59 = *(v34 + 24);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF52A8, &qword_1BC8FEA78);
              sub_1BC8F8734();
              v34 = *&v78[0];
              v60 = *(*(*&v78[0] + 48) + 16 * v58 + 8);

              v61 = *(*(v34 + 56) + 8 * v58);
              sub_1BC8F8754();

              a1 = v63;
            }

            v24 = v62;
            v49(v71, v37);
            goto LABEL_26;
          }

          swift_isUniquelyReferenced_nonNull_native();
          *&v78[0] = v34;
          sub_1BC83D5E4();
          v49(v71, v37);
          v34 = *&v78[0];
        }

        v24 = v62;
LABEL_26:
        sub_1BC7E5BAC(v34);
        v54 = v53;

        v55 = *(a1 + 56);
        sub_1BC8EB8A8(8, v54);

        return;
      }
    }

    else
    {
      sub_1BC7E6180(v78, &unk_1EBCF5E50, &qword_1BC8FE850);
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v37);
    }

    sub_1BC7E6180(v17, &unk_1EBCF5D80, &qword_1BC8FEA60);
    goto LABEL_26;
  }

  if (qword_1EDC20730 != -1)
  {
    swift_once();
  }

  v25 = sub_1BC8F7734();
  __swift_project_value_buffer(v25, qword_1EDC2B3C0);
  v75 = sub_1BC8F7714();
  v26 = sub_1BC8F81E4();
  if (os_log_type_enabled(v75, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1BC7A3000, v75, v26, "Unable to report reindexing finished because analytics manager was nil", v27, 2u);
    MEMORY[0x1BFB2AA50](v27, -1, -1);
  }

  v28 = v75;
}

void sub_1BC7E5254(NSObject *a1, uint64_t *a2, void *a3, double a4)
{
  v8 = sub_1BC8F72D4();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_4();
  v80 = v14;
  v15 = sub_1BC8F6DA4();
  v16 = OUTLINED_FUNCTION_0(v15);
  v81 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_4();
  v79 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v74 - v23;
  v25 = sub_1BC8F71E4();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v26);
  v33 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  if (a1)
  {
    v75 = v15;
    v76 = v11;
    v77 = v8;
    v78 = &v74 - v34;
    v35 = *a2;
    v83 = a1;
    if (a3)
    {

      v36 = a3;
    }

    else
    {
      v41 = objc_allocWithZone(MEMORY[0x1E695E000]);

      v42 = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0);
      if (!v42)
      {
        v42 = [objc_opt_self() standardUserDefaults];
      }

      v36 = v42;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5298, &qword_1BC8FEA68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC8FE840;
    *(inited + 32) = 0xD00000000000001DLL;
    *(inited + 40) = 0x80000001BC90BD50;
    v44 = sub_1BC7E613C();
    v45 = a3;
    v82 = v44;
    *(inited + 48) = sub_1BC8F8384();
    *(inited + 56) = 0xD000000000000019;
    *(inited + 64) = 0x80000001BC90BD70;
    *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(inited + 80) = 0xD00000000000001ALL;
    *(inited + 88) = 0x80000001BC90BD90;
    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (a4 > -9.22337204e18)
    {
      if (a4 < 9.22337204e18)
      {
        *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v46 = sub_1BC8F7AD4();
        v47 = sub_1BC8F7BE4();
        v48 = [v36 objectForKey_];

        if (v48)
        {
          sub_1BC8F8474();
          swift_unknownObjectRelease();
        }

        else
        {
          v85 = 0u;
          v84 = 0u;
        }

        v49 = v83;
        v86[0] = v84;
        v86[1] = v85;
        if (*(&v85 + 1))
        {
          v50 = swift_dynamicCast();
          __swift_storeEnumTagSinglePayload(v24, v50 ^ 1u, 1, v25);
          if (__swift_getEnumTagSinglePayload(v24, 1, v25) != 1)
          {
            v74 = v36;
            v51 = v78;
            (*(v28 + 32))(v78, v24, v25);
            v52 = v80;
            sub_1BC8F72B4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF52A0, &qword_1BC8FEA70);
            v53 = sub_1BC8F72C4();
            OUTLINED_FUNCTION_0(v53);
            v55 = v54;
            v57 = *(v56 + 72);
            v58 = (*(v54 + 80) + 32) & ~*(v54 + 80);
            v59 = swift_allocObject();
            *(v59 + 16) = xmmword_1BC8FC230;
            (*(v55 + 104))(v59 + v58, *MEMORY[0x1E6969A58], v53);
            sub_1BC8C12CC();
            sub_1BC8F71D4();
            v60 = v79;
            v61 = v51;
            sub_1BC8F72A4();

            v62 = *(v28 + 8);
            v62(v33, v25);
            (*(v76 + 8))(v52, v77);
            v63 = sub_1BC8F6D94();
            LOBYTE(v53) = v64;
            (*(v81 + 8))(v60, v75);
            if (v53)
            {
              v62(v61, v25);
            }

            else
            {
              if (![objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
              {
                v68 = sub_1BC803CBC(0xD000000000000027, 0x80000001BC90BDD0);
                v36 = v74;
                if (v69)
                {
                  v70 = v68;
                  swift_isUniquelyReferenced_nonNull_native();
                  *&v86[0] = v46;
                  v71 = *(v46 + 24);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF52A8, &qword_1BC8FEA78);
                  v36 = v74;
                  sub_1BC8F8734();
                  v46 = *&v86[0];
                  v72 = *(*(*&v86[0] + 48) + 16 * v70 + 8);

                  v73 = *(*(v46 + 56) + 8 * v70);
                  sub_1BC8F8754();
                }

                v49 = v83;
                v62(v78, v25);
                goto LABEL_28;
              }

              swift_isUniquelyReferenced_nonNull_native();
              *&v86[0] = v46;
              sub_1BC83D5E4();
              v62(v78, v25);
              v46 = *&v86[0];
            }

            v36 = v74;
            v49 = v83;
LABEL_28:
            sub_1BC7E5BAC(v46);
            v66 = v65;

            isa = v49[7].isa;
            sub_1BC8EB8A8(9, v66);

            return;
          }
        }

        else
        {
          sub_1BC7E6180(v86, &unk_1EBCF5E50, &qword_1BC8FE850);
          __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
        }

        sub_1BC7E6180(v24, &unk_1EBCF5D80, &qword_1BC8FEA60);
        goto LABEL_28;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (qword_1EDC20730 != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_0_2();
  }

  v37 = sub_1BC8F7734();
  __swift_project_value_buffer(v37, qword_1EDC2B3C0);
  v83 = sub_1BC8F7714();
  v38 = sub_1BC8F81E4();
  if (os_log_type_enabled(v83, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1BC7A3000, v83, v38, "Unable to report reindexing finished because analytics manager was nil", v39, 2u);
    OUTLINED_FUNCTION_6();
  }

  v40 = v83;
}

void sub_1BC7E5BAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF52B0, &unk_1BC8FEA80);
    v2 = sub_1BC8F87D4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = sub_1BC803CBC(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      v20 = v19[1];
      *v19 = v13;
      v19[1] = v12;

      v21 = v2[7];
      v22 = *(v21 + 8 * v17);
      *(v21 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v23 = (v2[6] + 16 * v16);
      *v23 = v13;
      v23[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t static SpotlightIndexManagerUtilities.lastFourDigits(from:)()
{
  v0 = sub_1BC8F8A54();
  v2 = v1;
  if (sub_1BC8F7CE4() >= 5)
  {
    v3 = sub_1BC8F7D04();
    v4 = sub_1BC7E5E98(v3, v0, v2);
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v0 = MEMORY[0x1BFB290C0](v4, v6, v8, v10);
  }

  return v0;
}

unint64_t sub_1BC7E5E98(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1BC8F7D94();
  }

  __break(1u);
  return result;
}

id sub_1BC7E5EE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BC8F7BE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_1BC7E5F4C()
{
  result = qword_1EBCF5278;
  if (!qword_1EBCF5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5278);
  }

  return result;
}

unint64_t sub_1BC7E5FA4()
{
  result = qword_1EBCF5280;
  if (!qword_1EBCF5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5280);
  }

  return result;
}

unint64_t sub_1BC7E5FFC()
{
  result = qword_1EBCF5288;
  if (!qword_1EBCF5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5288);
  }

  return result;
}

unint64_t sub_1BC7E6054()
{
  result = qword_1EBCF5290;
  if (!qword_1EBCF5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5290);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageFetchOptions(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MessageFetchOptions(uint64_t result, int a2, int a3)
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

unint64_t sub_1BC7E613C()
{
  result = qword_1EDC210D0;
  if (!qword_1EDC210D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC210D0);
  }

  return result;
}

uint64_t sub_1BC7E6180(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_1BC7E61F8()
{
  v2 = *v1;
  v3 = *v1 >> 60;
  if (v3 == 10)
  {
    OUTLINED_FUNCTION_23_1(v2);
    if (v10)
    {
      sub_1BC7D9730(0, &qword_1EDC1DE88, 0x1E696AE18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5520, &qword_1BC9001E8);
      v4 = OUTLINED_FUNCTION_48_0();
      v11 = OUTLINED_FUNCTION_38_2(v4, MEMORY[0x1E69E6158], xmmword_1BC8FEAA0);
      v11[2].n128_u64[0] = 0x69616D6563696F76;
      v11[2].n128_u64[1] = 0xEB0000000044496CLL;
      v8 = &qword_1EBCF5360;
      v9 = &qword_1BC8FEB48;
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_37_2();
    return sub_1BC7B0F6C(v15, v16, v17);
  }

  else
  {
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_31_2(v2);
      sub_1BC7D9730(0, &qword_1EDC1DE88, 0x1E696AE18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5520, &qword_1BC9001E8);
      v4 = OUTLINED_FUNCTION_48_0();
      v5 = OUTLINED_FUNCTION_35_2(v4, MEMORY[0x1E69E6158], xmmword_1BC8FEAA0);
      v5[2].n128_u64[0] = v6;
      v5[2].n128_u64[1] = v7;
      v8 = &qword_1EBCF4FE0;
      v9 = &unk_1BC8FC780;
LABEL_6:
      v4[5].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      v4[4].n128_u64[0] = v0;

      v12 = OUTLINED_FUNCTION_24_3();
      return sub_1BC7C034C(v12, v13, v4);
    }

    return 0;
  }
}

unint64_t static MessageStoreQuery.|| infix(_:_:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  OUTLINED_FUNCTION_21_4();
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v7 = OUTLINED_FUNCTION_55();
  *(v7 + 16) = xmmword_1BC8FEAA0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v6 + 16) = v7;
  *a3 = v6 | 0xD000000000000000;
  sub_1BC7A5AB4(v4);

  return sub_1BC7A5AB4(v5);
}

unint64_t static MessageStoreQuery.! prefix(_:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_21_4();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a2 = v4 | 0xB000000000000000;

  return sub_1BC7A5AB4(v3);
}

uint64_t sub_1BC7E645C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BC7E64CC(uint64_t a1)
{
  v2 = sub_1BC7E818C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6508(uint64_t a1)
{
  v2 = sub_1BC7E818C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6544(uint64_t a1)
{
  v2 = sub_1BC7B4AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6580(uint64_t a1)
{
  v2 = sub_1BC7B4AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E65BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7E6454();
  *a1 = result;
  return result;
}

uint64_t sub_1BC7E65E4(uint64_t a1)
{
  v2 = sub_1BC7B4380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6620(uint64_t a1)
{
  v2 = sub_1BC7B4380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E665C(uint64_t a1)
{
  v2 = sub_1BC7E7FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6698(uint64_t a1)
{
  v2 = sub_1BC7E7FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E66D4(uint64_t a1)
{
  v2 = sub_1BC7E80E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6710(uint64_t a1)
{
  v2 = sub_1BC7E80E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E674C(uint64_t a1)
{
  v2 = sub_1BC7B43D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6788(uint64_t a1)
{
  v2 = sub_1BC7B43D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E67C4(uint64_t a1)
{
  v2 = sub_1BC7E7BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6800(uint64_t a1)
{
  v2 = sub_1BC7E7BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E683C(uint64_t a1)
{
  v2 = sub_1BC7E7CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6878(uint64_t a1)
{
  v2 = sub_1BC7E7CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E68B4(uint64_t a1)
{
  v2 = sub_1BC7B5BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E68F0(uint64_t a1)
{
  v2 = sub_1BC7B5BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E692C(uint64_t a1)
{
  v2 = sub_1BC7E8138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6968(uint64_t a1)
{
  v2 = sub_1BC7E8138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E69A4(uint64_t a1)
{
  v2 = sub_1BC7E7ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E69E0(uint64_t a1)
{
  v2 = sub_1BC7E7ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6A1C(uint64_t a1)
{
  v2 = sub_1BC7E79E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6A58(uint64_t a1)
{
  v2 = sub_1BC7E79E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6A94(uint64_t a1)
{
  v2 = sub_1BC7E7EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6AD0(uint64_t a1)
{
  v2 = sub_1BC7E7EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6B0C(uint64_t a1)
{
  v2 = sub_1BC7B54A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6B48(uint64_t a1)
{
  v2 = sub_1BC7B54A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6B84(uint64_t a1)
{
  v2 = sub_1BC7E8090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6BC0(uint64_t a1)
{
  v2 = sub_1BC7E8090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6BFC(uint64_t a1)
{
  v2 = sub_1BC7E7D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6C38(uint64_t a1)
{
  v2 = sub_1BC7E7D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6C74(uint64_t a1)
{
  v2 = sub_1BC7BECB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6CB0(uint64_t a1)
{
  v2 = sub_1BC7BECB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E6CEC(uint64_t a1)
{
  v2 = sub_1BC7E7B10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E6D28(uint64_t a1)
{
  v2 = sub_1BC7E7B10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessageStoreQuery.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
      OUTLINED_FUNCTION_25_3(v2);
      v12 = 3;
      goto LABEL_18;
    case 2uLL:
      OUTLINED_FUNCTION_25_3(v2);
      v12 = 4;
LABEL_18:
      MEMORY[0x1BFB2A020](v12);

      v16 = OUTLINED_FUNCTION_30();
      sub_1BC7DF8D4(v16, v17);
      goto LABEL_24;
    case 3uLL:
      OUTLINED_FUNCTION_25_3(v2);
      v5 = 5;
      goto LABEL_14;
    case 4uLL:
      OUTLINED_FUNCTION_25_3(v2);
      MEMORY[0x1BFB2A020](6);
      v7 = OUTLINED_FUNCTION_30();

      sub_1BC7DF894(v7, v8);
      return;
    case 5uLL:
      OUTLINED_FUNCTION_25_3(v2);
      MEMORY[0x1BFB2A020](7);
      v18 = OUTLINED_FUNCTION_30();

      sub_1BC7DF854(v18, v19);
      return;
    case 6uLL:
      OUTLINED_FUNCTION_25_3(v2);
      MEMORY[0x1BFB2A020](8);
      v22 = OUTLINED_FUNCTION_30();

      goto LABEL_29;
    case 7uLL:
      v15 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v11 = 9;
      goto LABEL_16;
    case 8uLL:
      OUTLINED_FUNCTION_25_3(v2);
      MEMORY[0x1BFB2A020](10);
      v22 = OUTLINED_FUNCTION_30();

LABEL_29:
      sub_1BC7DFB68(v22);
      return;
    case 9uLL:
      v10 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v11 = 11;
LABEL_16:
      MEMORY[0x1BFB2A020](v11);
      sub_1BC8F8C24();
      return;
    case 0xAuLL:
      OUTLINED_FUNCTION_25_3(v2);
      MEMORY[0x1BFB2A020](13);
      v23 = OUTLINED_FUNCTION_30();

      sub_1BC7DF814(v23, v24);
      return;
    case 0xBuLL:
      OUTLINED_FUNCTION_25_3(v2);
      MEMORY[0x1BFB2A020](14);
      MessageStoreQuery.hash(into:)(a1);
      return;
    case 0xCuLL:
      OUTLINED_FUNCTION_25_3(v2);
      v9 = 15;
      goto LABEL_23;
    case 0xDuLL:
      OUTLINED_FUNCTION_25_3(v2);
      v9 = 16;
LABEL_23:
      MEMORY[0x1BFB2A020](v9);

      v20 = OUTLINED_FUNCTION_30();
      sub_1BC7DF7B0(v20, v21);
      goto LABEL_24;
    case 0xEuLL:
      if (v2 == 0xE000000000000000)
      {
        v6 = 0;
      }

      else if (v2 == 0xE000000000000008)
      {
        v6 = 1;
      }

      else
      {
        v6 = 12;
      }

      MEMORY[0x1BFB2A020](v6);
      return;
    default:
      v4 = *(v2 + 16);
      v5 = 2;
LABEL_14:
      MEMORY[0x1BFB2A020](v5);

      v13 = OUTLINED_FUNCTION_30();
      sub_1BC7DEC58(v13, v14);
LABEL_24:

      return;
  }
}

uint64_t MessageStoreQuery.hashValue.getter()
{
  v2[9] = *v0;
  sub_1BC8F8C04();
  MessageStoreQuery.hash(into:)(v2);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7E706C()
{
  v2[9] = *v0;
  sub_1BC8F8C04();
  MessageStoreQuery.hash(into:)(v2);
  return sub_1BC8F8C64();
}

void sub_1BC7E70B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_63();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v29 = *v24;
  a12 = MEMORY[0x1E69E7CC0];
  v30 = sub_1BC7C0454(v27);
  for (i = 0; ; ++i)
  {
    if (v30 == i)
    {
      OUTLINED_FUNCTION_62();
      return;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1BFB29A00](i, v28);
    }

    else
    {
      if (i >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v32 = *(v28 + 8 * i + 32);
    }

    v33 = v32;
    if (__OFADD__(i, 1))
    {
      break;
    }

    a10 = v29;
    a11 = v29;
    if (sub_1BC7E71B0(&a10, v32))
    {
      sub_1BC8F8654();
      v34 = *(a12 + 16);
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1BC7E71B0(unint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v70 - v7;
  v9 = sub_1BC8F7264();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *v2;
  switch(v14 >> 60)
  {
    case 1uLL:
      v41 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v51 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      swift_beginAccess();
      v52 = (*(v10 + 16))(v13, a2 + v51, v9);
      MEMORY[0x1EEE9AC00](v52);
      v44 = &v70 - 4;
      *(&v70 - 2) = v13;

      v45 = sub_1BC7E8CA0;
      goto LABEL_27;
    case 2uLL:
      v41 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v42 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID;
      swift_beginAccess();
      v43 = (*(v10 + 16))(v13, a2 + v42, v9);
      MEMORY[0x1EEE9AC00](v43);
      v44 = &v70 - 4;
      *(&v70 - 2) = v13;

      v45 = sub_1BC7E8C64;
LABEL_27:
      v23 = sub_1BC7ECB3C(v45, v44, v41);

      (*(v10 + 8))(v13, v9);
      return v23 & 1;
    case 3uLL:
      v16 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v46 = (a2 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
      v47 = swift_beginAccess();
      v48 = v46[1];
      v72 = *v46;
      v73 = v48;
      MEMORY[0x1EEE9AC00](v47);
      v20 = &v70 - 4;
      *(&v70 - 2) = &v72;

      v21 = sub_1BC7E8C84;
      goto LABEL_42;
    case 4uLL:
      v26 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *(v26 + 16);
      v16 = MEMORY[0x1E69E7CC0];
      if (!v27)
      {
        goto LABEL_41;
      }

      v74 = MEMORY[0x1E69E7CC0];

      sub_1BC7AD404();
      v28 = 32;
      v16 = v74;
      v29 = "ingLastReindexTimeDelta";
      do
      {
        v30 = *(v26 + v28);
        v31 = 0xD000000000000017;
        v32 = "lservicesd.FaceTimeProvider";
        if (v30 != 1)
        {
          if (v30 != 2)
          {
            goto LABEL_47;
          }

          v31 = 0xD00000000000003BLL;
          v32 = v29;
        }

        v74 = v16;
        v33 = *(v16 + 16);
        if (v33 >= *(v16 + 24) >> 1)
        {
          v71 = v29;
          sub_1BC7AD404();
          v29 = v71;
          v16 = v74;
        }

        *(v16 + 16) = v33 + 1;
        v34 = v16 + 16 * v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = v32 | 0x8000000000000000;
        v28 += 8;
        --v27;
      }

      while (v27);

LABEL_41:
      v66 = (a2 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
      v67 = swift_beginAccess();
      v68 = v66[1];
      v72 = *v66;
      v73 = v68;
      MEMORY[0x1EEE9AC00](v67);
      v20 = &v70 - 4;
      *(&v70 - 2) = &v72;

      v21 = sub_1BC7AFCBC;
LABEL_42:
      v23 = sub_1BC7AFC0C(v21, v20, v16);

      return v23 & 1;
    case 5uLL:
      v53 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v54 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
      swift_beginAccess();
      v55 = sub_1BC7CF5BC(*(a2 + v54), v53);
      goto LABEL_40;
    case 6uLL:
      v61 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v62 = &OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
      goto LABEL_39;
    case 7uLL:
      v49 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v50 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
      swift_beginAccess();
      v40 = v49 ^ *(a2 + v50);
      goto LABEL_25;
    case 8uLL:
      v61 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v62 = &OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
LABEL_39:
      v65 = *v62;
      swift_beginAccess();
      v55 = sub_1BC7CF5BC(*(a2 + v65), v61);
      goto LABEL_40;
    case 9uLL:
      v40 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
LABEL_25:
      v23 = v40 ^ 1;
      return v23 & 1;
    case 0xAuLL:
      v63 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v64 = a2 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID;
      swift_beginAccess();
      if (*(v64 + 4))
      {
        goto LABEL_37;
      }

      v55 = sub_1BC7E79B8(*v64, v63);
LABEL_40:
      v23 = v55;
      return v23 & 1;
    case 0xBuLL:
      v24 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v74 = *v2;
      v72 = v24;
      sub_1BC7A5AB4(v24);
      v25 = sub_1BC7E71B0(&v72, a2);
      sub_1BC7B0EFC(v24);
      v23 = v25 ^ 1;
      return v23 & 1;
    case 0xCuLL:
      v35 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *(v35 + 16);

      v30 = 0;
      while (2)
      {
        if (v36 == v30)
        {
          goto LABEL_33;
        }

        if (v30 < *(v35 + 16))
        {
          v37 = *(v35 + 8 * v30 + 32);
          v38 = v30 + 1;
          v74 = v15;
          v72 = v37;
          sub_1BC7A5AB4(v37);
          v39 = sub_1BC7E71B0(&v72, a2);
          sub_1BC7B0EFC(v37);
          v30 = v38;
          if ((v39 & 1) == 0)
          {
            goto LABEL_20;
          }

          continue;
        }

        break;
      }

      __break(1u);
      goto LABEL_46;
    case 0xDuLL:
      v56 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v57 = *(v56 + 16);

      v30 = 0;
      break;
    case 0xEuLL:
      if (v14 == 0xE000000000000000)
      {
        goto LABEL_34;
      }

      if (v14 == 0xE000000000000008)
      {
        goto LABEL_37;
      }

      v22 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID;
      swift_beginAccess();
      sub_1BC7E8B8C(a2 + v22, v8);
      v23 = __swift_getEnumTagSinglePayload(v8, 1, v9) != 1;
      sub_1BC7E8BFC(v8);
      return v23 & 1;
    default:
      v16 = *(v14 + 16);
      v17 = (a2 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
      v18 = swift_beginAccess();
      v19 = v17[1];
      v72 = *v17;
      v73 = v19;
      MEMORY[0x1EEE9AC00](v18);
      v20 = &v70 - 4;
      *(&v70 - 2) = &v72;

      v21 = sub_1BC7E8C84;
      goto LABEL_42;
  }

  while (1)
  {
    if (v57 == v30)
    {
LABEL_20:

LABEL_37:
      v23 = 0;
      return v23 & 1;
    }

    if (v30 >= *(v56 + 16))
    {
      break;
    }

    v58 = *(v56 + 8 * v30 + 32);
    v59 = v30 + 1;
    v74 = v15;
    v72 = v58;
    sub_1BC7A5AB4(v58);
    v60 = sub_1BC7E71B0(&v72, a2);
    sub_1BC7B0EFC(v58);
    v30 = v59;
    if (v60)
    {
LABEL_33:

LABEL_34:
      v23 = 1;
      return v23 & 1;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  v72 = v30;
  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

BOOL sub_1BC7E79B8(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

unint64_t sub_1BC7E79E4()
{
  result = qword_1EBCF5348;
  if (!qword_1EBCF5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5348);
  }

  return result;
}

unint64_t sub_1BC7E7A38()
{
  result = qword_1EDC1FF78;
  if (!qword_1EDC1FF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4F80, &qword_1BC8FEB40);
    sub_1BC7B2348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF78);
  }

  return result;
}

unint64_t sub_1BC7E7ABC()
{
  result = qword_1EBCF5350;
  if (!qword_1EBCF5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5350);
  }

  return result;
}

unint64_t sub_1BC7E7B10()
{
  result = qword_1EBCF5358;
  if (!qword_1EBCF5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5358);
  }

  return result;
}

unint64_t sub_1BC7E7B64()
{
  result = qword_1EBCF5368;
  if (!qword_1EBCF5368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5360, &qword_1BC8FEB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5368);
  }

  return result;
}

unint64_t sub_1BC7E7BE0()
{
  result = qword_1EBCF5370;
  if (!qword_1EBCF5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5370);
  }

  return result;
}

unint64_t sub_1BC7E7C34()
{
  result = qword_1EDC1FF68;
  if (!qword_1EDC1FF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5378, &unk_1BC8FEB50);
    sub_1BC7B5C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF68);
  }

  return result;
}

unint64_t sub_1BC7E7CB8()
{
  result = qword_1EBCF5380;
  if (!qword_1EBCF5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5380);
  }

  return result;
}

unint64_t sub_1BC7E7D0C()
{
  result = qword_1EDC1DF28;
  if (!qword_1EDC1DF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5388, &qword_1BC902620);
    sub_1BC7BED0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF28);
  }

  return result;
}

unint64_t sub_1BC7E7D90()
{
  result = qword_1EBCF5390;
  if (!qword_1EBCF5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5390);
  }

  return result;
}

unint64_t sub_1BC7E7DE4()
{
  result = qword_1EBCF53A0;
  if (!qword_1EBCF53A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5398, &qword_1BC8FEB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53A0);
  }

  return result;
}

unint64_t sub_1BC7E7E60()
{
  result = qword_1EDC1FF70;
  if (!qword_1EDC1FF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF53A8, &qword_1BC9002E0);
    sub_1BC7B566C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF70);
  }

  return result;
}

unint64_t sub_1BC7E7EE4()
{
  result = qword_1EBCF53B0;
  if (!qword_1EBCF53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53B0);
  }

  return result;
}

unint64_t sub_1BC7E7F38()
{
  result = qword_1EBCF53B8;
  if (!qword_1EBCF53B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53B8);
  }

  return result;
}

unint64_t sub_1BC7E7FB4()
{
  result = qword_1EBCF53C0;
  if (!qword_1EBCF53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53C0);
  }

  return result;
}

uint64_t sub_1BC7E8008(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4FE0, &unk_1BC8FC780);
    sub_1BC7E85B8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC7E8090()
{
  result = qword_1EBCF53D0;
  if (!qword_1EBCF53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53D0);
  }

  return result;
}

unint64_t sub_1BC7E80E4()
{
  result = qword_1EBCF53D8;
  if (!qword_1EBCF53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53D8);
  }

  return result;
}

unint64_t sub_1BC7E8138()
{
  result = qword_1EBCF53E0;
  if (!qword_1EBCF53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53E0);
  }

  return result;
}

unint64_t sub_1BC7E818C()
{
  result = qword_1EBCF53E8;
  if (!qword_1EBCF53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF53E8);
  }

  return result;
}

unint64_t sub_1BC7E81E0()
{
  result = qword_1EDC1DEF0;
  if (!qword_1EDC1DEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4F80, &qword_1BC8FEB40);
    sub_1BC7B5D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DEF0);
  }

  return result;
}

unint64_t sub_1BC7E8264()
{
  result = qword_1EBCF5480;
  if (!qword_1EBCF5480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5360, &qword_1BC8FEB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5480);
  }

  return result;
}

unint64_t sub_1BC7E82E0()
{
  result = qword_1EDC1DEE0;
  if (!qword_1EDC1DEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5378, &unk_1BC8FEB50);
    sub_1BC7C7198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DEE0);
  }

  return result;
}

unint64_t sub_1BC7E8364()
{
  result = qword_1EDC1DF20;
  if (!qword_1EDC1DF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5388, &qword_1BC902620);
    sub_1BC7C70CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF20);
  }

  return result;
}

unint64_t sub_1BC7E83E8()
{
  result = qword_1EBCF5488;
  if (!qword_1EBCF5488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5398, &qword_1BC8FEB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5488);
  }

  return result;
}

unint64_t sub_1BC7E8464()
{
  result = qword_1EDC1DEE8;
  if (!qword_1EDC1DEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF53A8, &qword_1BC9002E0);
    sub_1BC7E84E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DEE8);
  }

  return result;
}

unint64_t sub_1BC7E84E8()
{
  result = qword_1EDC1F278[0];
  if (!qword_1EDC1F278[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC1F278);
  }

  return result;
}

unint64_t sub_1BC7E853C()
{
  result = qword_1EBCF5490;
  if (!qword_1EBCF5490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5490);
  }

  return result;
}

uint64_t sub_1BC7E85B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BC8F7264();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC7E8600()
{
  result = qword_1EBCF54A0;
  if (!qword_1EBCF54A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54A0);
  }

  return result;
}

unint64_t sub_1BC7E8668()
{
  result = qword_1EBCF54A8;
  if (!qword_1EBCF54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54A8);
  }

  return result;
}

unint64_t sub_1BC7E86C0()
{
  result = qword_1EBCF54B0;
  if (!qword_1EBCF54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54B0);
  }

  return result;
}

unint64_t sub_1BC7E8718()
{
  result = qword_1EBCF54B8;
  if (!qword_1EBCF54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54B8);
  }

  return result;
}

unint64_t sub_1BC7E8770()
{
  result = qword_1EBCF54C0;
  if (!qword_1EBCF54C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54C0);
  }

  return result;
}

unint64_t sub_1BC7E87C8()
{
  result = qword_1EBCF54C8;
  if (!qword_1EBCF54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54C8);
  }

  return result;
}

unint64_t sub_1BC7E8820()
{
  result = qword_1EBCF54D0;
  if (!qword_1EBCF54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54D0);
  }

  return result;
}

unint64_t sub_1BC7E8878()
{
  result = qword_1EBCF54D8;
  if (!qword_1EBCF54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54D8);
  }

  return result;
}

unint64_t sub_1BC7E88D0()
{
  result = qword_1EBCF54E0;
  if (!qword_1EBCF54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54E0);
  }

  return result;
}

unint64_t sub_1BC7E8928()
{
  result = qword_1EBCF54E8;
  if (!qword_1EBCF54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54E8);
  }

  return result;
}

unint64_t sub_1BC7E8980()
{
  result = qword_1EBCF54F0;
  if (!qword_1EBCF54F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54F0);
  }

  return result;
}

unint64_t sub_1BC7E89D8()
{
  result = qword_1EBCF54F8;
  if (!qword_1EBCF54F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF54F8);
  }

  return result;
}

unint64_t sub_1BC7E8A30()
{
  result = qword_1EBCF5500;
  if (!qword_1EBCF5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5500);
  }

  return result;
}

unint64_t sub_1BC7E8A88()
{
  result = qword_1EBCF5508;
  if (!qword_1EBCF5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5508);
  }

  return result;
}

unint64_t sub_1BC7E8AE0()
{
  result = qword_1EBCF5510;
  if (!qword_1EBCF5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5510);
  }

  return result;
}

unint64_t sub_1BC7E8B38()
{
  result = qword_1EBCF5518;
  if (!qword_1EBCF5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5518);
  }

  return result;
}

uint64_t sub_1BC7E8B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7E8BFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MessageStoreProvider.identifierString.getter(uint64_t a1)
{
  result = 0xD000000000000017;
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return 0xD00000000000003BLL;
    }

    else
    {
      result = sub_1BC8F8B04();
      __break(1u);
    }
  }

  return result;
}

uint64_t MessageStoreProvider.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001BC90BE40 == a2;
  if (v3 || (OUTLINED_FUNCTION_0_4() & 1) != 0)
  {
    goto LABEL_6;
  }

  v6 = *MEMORY[0x1E69D8DB8];
  if (sub_1BC8F7C24() == a1 && v7 == a2)
  {

    goto LABEL_6;
  }

  v9 = OUTLINED_FUNCTION_0_4();

  if (v9)
  {
LABEL_6:

    return 1;
  }

  v10 = a1 == 0xD00000000000003BLL && 0x80000001BC90BE00 == a2;
  if (v10 || (OUTLINED_FUNCTION_0_4() & 1) != 0)
  {
    goto LABEL_17;
  }

  v11 = *MEMORY[0x1E69D8D98];
  if (sub_1BC8F7C24() == a1 && v12 == a2)
  {

LABEL_17:

    return 2;
  }

  v14 = OUTLINED_FUNCTION_0_4();

  if (v14)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1BC7E8EE8()
{
  result = qword_1EBCF5528;
  if (!qword_1EBCF5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5528);
  }

  return result;
}

unint64_t sub_1BC7E8F40()
{
  result = qword_1EBCF5530;
  if (!qword_1EBCF5530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF53A8, &qword_1BC9002E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5530);
  }

  return result;
}

uint64_t sub_1BC7E8FA4(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v54 = a1;
  v55 = a2;
  OUTLINED_FUNCTION_0_5();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_4();
  v56 = v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_5();
  v58 = v19;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - v24;
  v26 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_4();
  v52 = v27;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_5();
  v46 = v29;
  v47 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v33 = &v43 - v32;
  v34 = sub_1BC8F8144();
  if (!v34)
  {
    return sub_1BC8F7EA4();
  }

  v57 = v34;
  v61 = sub_1BC8F86C4();
  v48 = sub_1BC8F86D4();
  sub_1BC8F8674();
  result = sub_1BC8F8134();
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
      v37 = sub_1BC8F8184();
      (*v49)(v25);
      v37(v60, 0);
      v38 = v59;
      v54(v25, v56);
      if (v38)
      {
        v41 = OUTLINED_FUNCTION_2_5();
        v42(v41);
        (*(v46 + 8))(v33, v47);

        return (*(v43 + 32))(v45, v56, v44);
      }

      v59 = 0;
      v39 = OUTLINED_FUNCTION_2_5();
      v40(v39);
      sub_1BC8F86B4();
      result = sub_1BC8F8154();
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

uint64_t Array<A>.deletionQuery.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BC8F7F24();
  WitnessTable = swift_getWitnessTable();
  result = sub_1BC8F8174();
  if (result)
  {
    v5 = 0xE000000000000008;
  }

  else
  {
    v6 = swift_allocObject();
    MEMORY[0x1EEE9AC00](v6);
    KeyPath = swift_getKeyPath();
    v8 = sub_1BC8F7264();
    v10 = sub_1BC7E8FA4(sub_1BC7E9694, KeyPath, v2, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

    *(v6 + 16) = v10;
    v5 = v6 | 0x1000000000000000;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1BC7E9524(uint64_t a1, void **a2)
{
  v4 = sub_1BC8F7264();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x130))(v7);
}

void sub_1BC7E9634(id *a1)
{
  v1 = *a1;
  swift_getAtKeyPath();
}

uint8_t *sub_1BC7E96CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1BC8F6F44();
  v10 = sub_1BC7E98C4(a3);
  v22 = 0;
  v23[0] = 0;
  LOBYTE(a4) = sub_1BC7E9B3C(v9, a2, v10, 300, a4, v23, &v22, v5);

  v11 = v22;
  v12 = v23[0];
  if (a4)
  {
    if (v23[0])
    {
      v12 = sub_1BC8F7C24();
      v13 = v11;
    }

    else
    {
      v15 = qword_1EDC1E1F8;
      v16 = v22;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = sub_1BC8F7734();
      __swift_project_value_buffer(v17, qword_1EDC2B2B0);
      v18 = sub_1BC8F7714();
      v19 = sub_1BC8F81E4();
      if (os_log_type_enabled(v18, v19))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        MEMORY[0x1BFB2AA50](v12, -1, -1);
      }

      sub_1BC7E9C38();
      swift_allocError();
      swift_willThrow();
    }
  }

  else
  {
    v14 = v22;
    v12 = v12;
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t sub_1BC7E98C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5540, &qword_1BC9003C0);
    v2 = sub_1BC8F8574();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v22 = *v11;
    v23 = v11[1];

    swift_dynamicCast();
    v12 = *(v2 + 40);
    result = sub_1BC8F8524();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v5 &= v5 - 1;
    v21 = *(v2 + 48) + 40 * v16;
    *(v21 + 32) = v26;
    *v21 = v24;
    *(v21 + 16) = v25;
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

    v5 = *(a1 + 56 + 8 * v10);
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

id sub_1BC7E9B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = sub_1BC8F7A94();
  v12 = sub_1BC8F80E4();

  v13 = sub_1BC8F7A94();
  v14 = [a8 sendResourceAtURL:a1 metadata:v11 toDestinations:v12 priority:a4 options:v13 identifier:a6 error:a7];

  return v14;
}

unint64_t sub_1BC7E9C38()
{
  result = qword_1EBCF5538;
  if (!qword_1EBCF5538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5538);
  }

  return result;
}

uint64_t sub_1BC7E9CDC()
{
  if (![v0 isTranscriptionAvailable])
  {
    return 4;
  }

  v1 = [v0 transcriptionState];

  return sub_1BC8C2198(v1);
}

void sub_1BC7E9D30(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BC8F7014();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = [v2 transcript];
  if (v16)
  {
    sub_1BC7DA3A8(v16, &v27);
LABEL_3:
    *a1 = v27;
    *(a1 + 8) = v28;
    return;
  }

  v17 = [v2 transcriptionURL];
  if (v17)
  {
    v18 = v17;
    sub_1BC8F6FB4();

    (*(v7 + 32))(v15, v12, v4);
    v19 = sub_1BC8F7054();
    v21 = v20;
    sub_1BC7D9730(0, &qword_1EBCF5548, 0x1E696ACD0);
    sub_1BC7D9730(0, &qword_1EBCF5550, 0x1E69E06B0);
    v22 = sub_1BC8F8214();
    if (v22)
    {
      sub_1BC7DA3A8(v22, &v27);
      sub_1BC7D4C94(v19, v21);
      v23 = OUTLINED_FUNCTION_7_2();
      v24(v23);
      goto LABEL_3;
    }

    v25 = OUTLINED_FUNCTION_7_2();
    v26(v25);
    sub_1BC7D4C94(v19, v21);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1BC7EA2F0@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 transcriptionURL];
  if (v3)
  {
    v4 = v3;
    sub_1BC8F6FB4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1BC8F7014();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

void sub_1BC7EA3D4(SEL *a1, void (*a2)(void))
{
  v4 = [v2 *a1];
  a2();
}

unint64_t sub_1BC7EA4AC(uint64_t a1)
{
  result = sub_1BC7EA4D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC7EA4D4()
{
  result = qword_1EDC1DE70;
  if (!qword_1EDC1DE70)
  {
    sub_1BC7D9730(255, &qword_1EDC1DE78, 0x1E69E0698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DE70);
  }

  return result;
}

uint64_t sub_1BC7EA54C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  LODWORD(v5) = 0;
  v6 = 0;
  switch(v4)
  {
    case 0:
      v7 = (*(a2 + 32))(a1, a2);
      v6 = (v7 & 8) == 0;
      v5 = (v7 & 8) >> 2;
      break;
    case 1:
      return v5 | (v6 << 16);
    case 2:
      v6 = 0;
      LODWORD(v5) = 1;
      break;
    case 3:
      v6 = 0;
      LODWORD(v5) = 2;
      break;
    default:
      LODWORD(v5) = 0;
      v6 = 1;
      break;
  }

  return v5 | (v6 << 16);
}

unint64_t sub_1BC7EA618(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1BC8F71E4();
  v5 = OUTLINED_FUNCTION_0(v4);
  v114 = v6;
  v115 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v113 = (&v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1BC8F7264();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_20_0();
  v118 = v12 - v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v119 = (&v106 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v106 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  OUTLINED_FUNCTION_20_0();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v106 - v25);
  v27 = sub_1BC8F7014();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_20_0();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v106 - v37;
  v116 = a2;
  sub_1BC7EB644(a2, v26);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v27);
  v120 = v30;
  v117 = v23;
  if (EnumTagSinglePayload == 1)
  {
    v40 = v18;
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v42 = *(v41 + 72);
    v43 = OUTLINED_FUNCTION_3_3();
    v44 = v41;
    v18 = v40;
    v45(v43, v44);
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) != 1)
    {
      sub_1BC7E6180(v26, &qword_1EBCF5A20, &qword_1BC901BF0);
    }
  }

  else
  {
    (*(v30 + 32))(v38, v26, v27);
  }

  v108 = v35;
  v109 = v18;
  OUTLINED_FUNCTION_4_8();
  v46 = v26[16];
  v47 = OUTLINED_FUNCTION_0_6();
  v48(v47);
  sub_1BC8F7254();
  sub_1BC8F7254();
  (*(v120 + 16))(v35, v38, v27);
  v49 = v117;
  __swift_storeEnumTagSinglePayload(v117, 1, 1, v27);
  OUTLINED_FUNCTION_4_8();
  v50 = v26[6];
  v51 = OUTLINED_FUNCTION_0_6();
  v107 = v52(v51);
  v54 = v53;
  OUTLINED_FUNCTION_4_8();
  v55 = v26[8];
  v56 = OUTLINED_FUNCTION_0_6();
  v57(v56);
  OUTLINED_FUNCTION_4_8();
  v58 = v26[7];
  v59 = OUTLINED_FUNCTION_0_6();
  v61 = v60(v59);
  v63 = v62;
  v111 = v38;
  v64 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v65 = *(v64 + 104);
  v66 = OUTLINED_FUNCTION_3_3();
  v67(v66, v64);
  v124 = v126;
  v125 = v127;
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v69 = *(v68 + 136);
  v70 = OUTLINED_FUNCTION_3_3();
  v72 = v71(v70, v68);
  v74 = v73;
  v123 = 3;
  v110 = v27;
  v75 = a1[3];
  v76 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v75);
  result = (*(v76 + 144))(v75, v76);
  if (result >> 31)
  {
    __break(1u);
  }

  else
  {
    if (v54)
    {
      v78 = v54;
    }

    else
    {
      v78 = 0xE000000000000000;
    }

    if (v54)
    {
      v79 = v107;
    }

    else
    {
      v79 = 0;
    }

    memset(v122, 0, sizeof(v122));
    v121 = 0;
    LOBYTE(v105) = 0;
    LOBYTE(v104) = 0;
    Message.__allocating_init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:from:provider:isSensitive:duration:recipient:transcript:isRTT:simID:quality:voicemailID:summary:)(v109, v119, v118, v108, v49, 1, v79, v78, 0xD000000000000017, 0x80000001BC90BE40, v104, v61, v63, &v124, v105, v72, v74, &v123, result, v122, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
    v81 = v80;
    OUTLINED_FUNCTION_5_4();
    v82 = v63[11];
    v83 = v81;
    LOWORD(v81) = v82(v75, v63);
    v84 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
    swift_beginAccess();
    *&v83[v84] = v81;
    OUTLINED_FUNCTION_5_4();
    v85 = v63[2];
    v86 = OUTLINED_FUNCTION_6_7();
    LOBYTE(v81) = v87(v86);
    v88 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
    swift_beginAccess();
    v83[v88] = v81 & 1;
    OUTLINED_FUNCTION_5_4();
    v89 = v63[5];
    v90 = v113;
    v91 = OUTLINED_FUNCTION_6_7();
    v92(v91);
    v93 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
    OUTLINED_FUNCTION_8_9();
    v94 = v115;
    v95 = *(v114 + 40);
    v95(&v83[v93], v90, v115);
    swift_endAccess();
    OUTLINED_FUNCTION_5_4();
    v96 = v63[5];
    v97 = OUTLINED_FUNCTION_6_7();
    v98(v97);
    v99 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified;
    OUTLINED_FUNCTION_8_9();
    v95(&v83[v99], v90, v94);
    swift_endAccess();
    v100 = a1[3];
    v101 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v100);
    v102 = sub_1BC7EA54C(v100, v101);
    sub_1BC7E6180(v116, &qword_1EBCF5A20, &qword_1BC901BF0);
    (*(v120 + 8))(v111, v110);
    if ((v102 & 0x10000) != 0)
    {
      LOWORD(v102) = 0;
    }

    v103 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
    swift_beginAccess();
    *&v83[v103] = v102;

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v83;
  }

  return result;
}

BOOL sub_1BC7EAD54(void *a1)
{
  v3 = MEMORY[0x1BFB2A220]();
  sub_1BC7EADAC(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

unint64_t sub_1BC7EADAC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v87 = a3;
  v86 = sub_1BC8F71E4();
  v85 = *(v86 - 8);
  v5 = *(v85 + 64);
  v6 = MEMORY[0x1EEE9AC00](v86);
  v84 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v83 - v8;
  v9 = sub_1BC8F7264();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v83 - v15;
  v17 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  swift_beginAccess();
  (*(v10 + 16))(v16, a1 + v17, v9);
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 128))(v18, v19);
  LOBYTE(v17) = sub_1BC8F7234();
  v20 = *(v10 + 8);
  v20(v14, v9);
  result = (v20)(v16, v9);
  if ((v17 & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = (a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  swift_beginAccess();
  v24 = *v22;
  v23 = v22[1];
  v25 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  v27 = *(v26 + 48);

  v28 = v27(v25, v26);
  if (v29)
  {
    if (v24 == v28 && v29 == v23)
    {

      goto LABEL_15;
    }

    v31 = sub_1BC8F8AA4();

    if (v31)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v32 = v22[1];
  v33 = *v22 & 0xFFFFFFFFFFFFLL;
  if ((v32 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v32) & 0xF;
  }

  if (v33)
  {
    goto LABEL_16;
  }

LABEL_15:
  v34 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
  swift_beginAccess();
  v35 = *(a1 + v34);
  v36 = a2[3];
  v37 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v36);
  result = (*(v37 + 16))(v36, v37);
  if (v35 != (result & 1))
  {
    goto LABEL_16;
  }

  v39 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  swift_beginAccess();
  v40 = *(a1 + v39);
  v41 = a2[3];
  v42 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v41);
  result = sub_1BC7EA54C(v41, v42);
  v38 = 0;
  if ((result & 0x10000) != 0 || v40 != result)
  {
    goto LABEL_17;
  }

  v43 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
  swift_beginAccess();
  v44 = *(a1 + v43);
  v45 = a2[3];
  v46 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v45);
  result = (*(v46 + 88))(v45, v46);
  if (v44 != result)
  {
    goto LABEL_16;
  }

  v47 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  swift_beginAccess();
  v48 = v85;
  v49 = v83;
  v50 = v86;
  (*(v85 + 16))(v83, a1 + v47, v86);
  v51 = a2[3];
  v52 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v51);
  v53 = v84;
  (*(v52 + 40))(v51, v52);
  LOBYTE(v51) = sub_1BC8F71A4();
  v54 = *(v48 + 8);
  v54(v53, v50);
  result = (v54)(v49, v50);
  if ((v51 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1BC865C3C();
  v55 = v88[3];
  v56 = v88[4];
  v57 = v88[5];
  v58 = a2[3];
  v59 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v58);
  (*(v59 + 104))(v88, v58, v59);
  v60 = v88[0];
  v61 = v88[1];
  v62 = v88[2];
  if (!v55)
  {
    if (!v88[0])
    {
      v65 = 0;
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  if (!v88[0])
  {
    sub_1BC7C52A8(v55);

LABEL_39:
    sub_1BC7C532C(v55);
    v66 = v60;
    goto LABEL_40;
  }

  if ((sub_1BC7DC654(v55, v88[0]) & 1) == 0)
  {
    goto LABEL_35;
  }

  if (!v57)
  {
    sub_1BC7C52A8(v55);
    if (!v62)
    {
      v67 = v60;
      goto LABEL_44;
    }

LABEL_36:
    sub_1BC7C532C(v60);
LABEL_37:

    v66 = v55;
LABEL_40:
    result = sub_1BC7C532C(v66);
    goto LABEL_16;
  }

  if (!v62)
  {
LABEL_35:
    sub_1BC7C52A8(v55);
    goto LABEL_36;
  }

  if (v56 != v61 || v57 != v62)
  {
    v64 = sub_1BC8F8AA4();
    sub_1BC7C52A8(v55);
    sub_1BC7C532C(v60);
    if (v64)
    {
      goto LABEL_45;
    }

    goto LABEL_37;
  }

  sub_1BC7C52A8(v55);
  v67 = v60;
LABEL_44:
  sub_1BC7C532C(v67);
LABEL_45:

  v65 = v55;
LABEL_46:
  sub_1BC7C532C(v65);
  v68 = (a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID);
  swift_beginAccess();
  v70 = *v68;
  v69 = v68[1];
  v71 = a2[3];
  v72 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v71);
  v73 = *(v72 + 136);

  v74 = v73(v71, v72);
  if (!v69)
  {
    if (!v75)
    {
      goto LABEL_57;
    }

LABEL_55:

    goto LABEL_16;
  }

  if (!v75)
  {
    goto LABEL_55;
  }

  if (v70 == v74 && v69 == v75)
  {
  }

  else
  {
    v77 = sub_1BC8F8AA4();

    if ((v77 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_57:
  v78 = (a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID);
  swift_beginAccess();
  v79 = *v78;
  v80 = *(v78 + 4);
  v81 = a2[3];
  v82 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v81);
  result = (*(v82 + 144))(v81, v82);
  if (!(result >> 31))
  {
    if ((v80 & 1) == 0)
    {
      v38 = v79 == result;
      goto LABEL_17;
    }

LABEL_16:
    v38 = 0;
LABEL_17:
    *v87 = v38;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7EB5E4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1BC8F7C24();

  return v4;
}

uint64_t sub_1BC7EB644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BC7EB6B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BC8F7A74();
  v5 = OUTLINED_FUNCTION_0(v4);
  *&v47 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC8F7A64();
  v12 = OUTLINED_FUNCTION_0(v11);
  v46 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v19;

  v21 = sub_1BC7EBAF0(a1, a2);
  v23 = v22;
  sub_1BC7EC634(&qword_1EDC210E8, MEMORY[0x1E6966620]);
  sub_1BC8F7A54();
  sub_1BC7EC5DC(v21, v23);
  sub_1BC7EC540(v21, v23);
  v42 = v23;
  v43 = v21;
  sub_1BC7D4C94(v21, v23);
  sub_1BC8F7A44();
  (*(v47 + 8))(v10, v4);
  v24 = *(v46 + 16);
  v44 = v20;
  v24(v18, v20, v11);
  sub_1BC7EC634(&qword_1EDC210F0, MEMORY[0x1E69663E0]);
  v45 = v11;
  sub_1BC8F7DA4();
  v25 = v48;
  v26 = v49;
  v27 = *(v48 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  if (v49 == v27)
  {
LABEL_2:

    v48 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    sub_1BC7ADBA4();
    sub_1BC8F7B74();

    v29 = sub_1BC7C1DF4(10);
    MEMORY[0x1BFB290C0](v29);

    sub_1BC7D4C94(v43, v42);
    (*(v46 + 8))(v44, v45);
  }

  else
  {
    v47 = xmmword_1BC8FC230;
    v30 = v49;
    while ((v26 & 0x8000000000000000) == 0)
    {
      if (v30 >= *(v25 + 16))
      {
        goto LABEL_13;
      }

      v31 = *(v25 + 32 + v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E48, &qword_1BC9001E0);
      v32 = swift_allocObject();
      *(v32 + 16) = v47;
      *(v32 + 56) = MEMORY[0x1E69E7508];
      *(v32 + 64) = MEMORY[0x1E69E7558];
      *(v32 + 32) = v31;
      v33 = sub_1BC8F7C44();
      v35 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = *(v28 + 16);
        sub_1BC7F6F9C();
        v28 = v39;
      }

      v36 = *(v28 + 16);
      if (v36 >= *(v28 + 24) >> 1)
      {
        sub_1BC7F6F9C();
        v28 = v40;
      }

      ++v30;
      *(v28 + 16) = v36 + 1;
      v37 = v28 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v35;
      if (v27 == v30)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1BC7EBAF0(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  *&v37 = a1;
  *(&v37 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5558, &qword_1BC900490);
  if (swift_dynamicCast())
  {
    sub_1BC7CF5EC(v35, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    sub_1BC8F6DB4();
    v35[0] = v37;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    goto LABEL_59;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_1BC7EC990(v35);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v35[0] = a1;
    *(&v35[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v35;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1BC8F8634();
  }

  sub_1BC7EBFE8(v4, v5, &v38);
  v6 = *(&v38 + 1);
  v7 = v38;
  if (*(&v38 + 1) >> 60 != 15)
  {
    v35[0] = v38;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v35[0] = MEMORY[0x1BFB284B0](v8);
  *(&v35[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v35[0]);
  v10 = sub_1BC7EC104(sub_1BC7ECA30);
  v12 = *(&v35[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v35[0]);
  switch(*(&v35[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v35[0]) - LODWORD(v35[0]);
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v35[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v35[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v35[0] + 16);
      v20 = *(*&v35[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1BC8F7094();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v37 + 7) = 0;
      *&v37 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v35[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = sub_1BC7ECA4C(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_1BC8F7D34();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_1BC8F7D64();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v38 = v13;
      *(&v38 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v38 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_1BC8F8634();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = sub_1BC7ECA4C(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = sub_1BC8F7D44();
LABEL_46:
    *(&v37 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v38 = v37;
      *(&v38 + 6) = *(&v37 + 6);
      sub_1BC8F70B4();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v38 = v37;
    *(&v38 + 6) = *(&v37 + 6);
    sub_1BC8F70B4();
    sub_1BC7ECAC8(v34, v6);
    goto LABEL_58;
  }

  sub_1BC7ECAC8(v34, v6);
LABEL_59:
  v31 = v35[0];
  sub_1BC7EC5DC(*&v35[0], *(&v35[0] + 1));

  sub_1BC7D4C94(v31, *(&v31 + 1));
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t sub_1BC7EBFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1BC8F7024();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1BC8F6D84();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1BC8F6D44();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1BC8F7084();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1BC7EC0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1BC7EC6C4(sub_1BC7ECB1C, v5, a1, a2);
}

uint64_t sub_1BC7EC104(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BC7D4C94(v6, v5);
      *v4 = xmmword_1BC900480;
      sub_1BC7D4C94(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_1BC8F6D54() && __OFSUB__(v6, sub_1BC8F6D74()))
      {
        goto LABEL_24;
      }

      v13 = sub_1BC8F6D84();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1BC8F6D34();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1BC7EC728(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BC7D4C94(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1BC900480;
      sub_1BC7D4C94(0, 0xC000000000000000);
      sub_1BC8F7034();
      v6 = v20;
      v9 = sub_1BC7EC728(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x1E69E9840];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_1BC7D4C94(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_1BC7EC4C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1BC8F7024();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1BFB28450]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1BFB28470]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_1BC7EC540(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_1BC7EC8B0(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_1BC7EC7DC();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_1BC7EC5DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BC7EC634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC7EC67C(uint64_t result)
{
  if (result)
  {
    result = sub_1BC8F85B4();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BC7EC6C4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1BC7EC728(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1BC8F6D54();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1BC8F6D74();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1BC8F6D64();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1BC7EC7DC()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1BC8F7A74();
  sub_1BC7EC634(&qword_1EDC210E8, MEMORY[0x1E6966620]);
  result = sub_1BC8F7A34();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BC7EC8B0(uint64_t a1, uint64_t a2)
{
  result = sub_1BC8F6D54();
  if (!result || (result = sub_1BC8F6D74(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1BC8F6D64();
      sub_1BC8F7A74();
      sub_1BC7EC634(&qword_1EDC210E8, MEMORY[0x1E6966620]);
      return sub_1BC8F7A34();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7EC990(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5560, &qword_1BC900498);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1BC7EC9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1BC7EC0B0(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1BC7ECA4C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BC8F7D74();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1BFB29160](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1BC7ECAC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BC7D4C94(a1, a2);
  }

  return a1;
}

uint64_t sub_1BC7ECADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_1BC7EC67C(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

BOOL sub_1BC7ECB3C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = sub_1BC8F7264();
    OUTLINED_FUNCTION_26(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

BOOL sub_1BC7ECC08(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

void sub_1BC7ECCB0()
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1BC8F6E04();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_5();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_4();
  sub_1BC8F7014();
  OUTLINED_FUNCTION_0_7();
  sub_1BC7C46D8(v14, v15);
  if ((sub_1BC8F7BC4() & 1) == 0)
  {
    v45 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5588, &unk_1BC900648);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC8FC230;
    v17 = *MEMORY[0x1E695DB00];
    *(inited + 32) = *MEMORY[0x1E695DB00];
    v18 = v17;
    sub_1BC8C14C8(inited);
    sub_1BC8F6F14();

    v23 = sub_1BC8F6DE4();
    v24 = *(v5 + 8);
    v25 = v1;
    v26 = v23;
    v24(v25, v2);
    if (v26)
    {
      v44 = v24;
      v27 = swift_initStackObject();
      OUTLINED_FUNCTION_13_6(v27);
      *(v28 + 32) = v18;
      v29 = v18;
      sub_1BC8C14C8(v24);
      sub_1BC8F6F14();

      v24 = v0;
      sub_1BC8F6DE4();
      v38 = OUTLINED_FUNCTION_28_2();
      v44(v38, v2);
      if (v0)
      {
        v39 = [v26 isEqual_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v39)
        {
          goto LABEL_10;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v19 = swift_initStackObject();
    OUTLINED_FUNCTION_13_6(v19);
    v20 = *MEMORY[0x1E695DA88];
    *(v21 + 32) = *MEMORY[0x1E695DA88];
    v22 = v20;
    sub_1BC8C14C8(v24);
    sub_1BC8F6F14();

    v30 = sub_1BC8F6DD4();
    v32 = v31;
    v33 = *(v5 + 8);
    v34 = OUTLINED_FUNCTION_44_1();
    v33(v34);
    if (v32)
    {
      v35 = swift_initStackObject();
      OUTLINED_FUNCTION_13_6(v35);
      *(v36 + 32) = v22;
      v37 = v22;
      sub_1BC8C14C8(v5 + 8);
      sub_1BC8F6F14();

      v40 = sub_1BC8F6DD4();
      v42 = v41;
      (v33)(v45, v2);
      if (v42)
      {
        if (v30 != v40 || v32 != v42)
        {
          sub_1BC8F8AA4();
        }
      }

      else
      {
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_24();
}

FaceTimeMessageStore::AssetHelperError_optional __swiftcall AssetHelperError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BC8F8804();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AssetHelperError.rawValue.getter()
{
  result = 0xD000000000000010;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BC7ED1D8@<X0>(unint64_t *a1@<X8>)
{
  result = AssetHelperError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BC7ED204()
{
  result = qword_1EBCF5568;
  if (!qword_1EBCF5568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5568);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetHelperError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1BC7ED3FC()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1BC8F7014();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_20_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_4();
  _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v12 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v12, qword_1EDC2B3A8);
  v13 = *(v4 + 16);
  v14 = OUTLINED_FUNCTION_45_2();
  v13(v14);
  (v13)(v9, v0, v1);
  v15 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_35_3();
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_11_2();
    v17 = swift_slowAlloc();
    OUTLINED_FUNCTION_18();
    v35 = swift_slowAlloc();
    *v17 = 136446466;
    OUTLINED_FUNCTION_0_7();
    sub_1BC7C46D8(v18, v19);
    v33 = v15;
    v20 = sub_1BC8F8A54();
    v34 = v0;
    v22 = v21;
    v23 = *(v4 + 8);
    v24 = OUTLINED_FUNCTION_44_1();
    v23(v24);
    v25 = sub_1BC7A9A4C(v20, v22, &v35);
    v0 = v34;

    *(v17 + 4) = v25;
    *(v17 + 12) = 2082;
    sub_1BC8F8A54();
    (v23)(v9, v1);
    v26 = OUTLINED_FUNCTION_40();
    v29 = sub_1BC7A9A4C(v26, v27, v28);

    *(v17 + 14) = v29;
    _os_log_impl(&dword_1BC7A3000, v33, (v4 + 16), "MessageStore: Asked to check if %{public}s is in sandbox directory: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v23 = *(v4 + 8);
    (v23)(v9, v1);
    v30 = OUTLINED_FUNCTION_44_1();
    v23(v30);
  }

  v31 = sub_1BC8F6F04();
  v32 = sub_1BC8F6F04();
  sub_1BC87310C(v32, v31);

  (v23)(v0, v1);
  OUTLINED_FUNCTION_24();
}

void sub_1BC7ED740(void *a1@<X0>, uint64_t a2@<X8>)
{
  v177[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BC8F7014();
  v7 = OUTLINED_FUNCTION_0(v6);
  v175 = v8;
  v176 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_0();
  v169 = (v11 - v12);
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_4();
  v164 = v15;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_4();
  v163 = v17;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_20_4();
  v171 = v19;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_4();
  v168 = v21;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_20_4();
  v166 = v23;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_4();
  v165 = v25;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_20_4();
  v167 = v27;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v160 - v29;
  sub_1BC8F6EE4();
  v32 = v31;
  v33 = MEMORY[0x1BFB2A220]();
  OUTLINED_FUNCTION_45_2();
  sub_1BC7C1A54(v34, v32, v35);
  if (!v2)
  {

    objc_autoreleasePoolPop(v33);
    v174 = a1;
    sub_1BC7ECCB0();
    v172 = a2;
    if (v36)
    {
      v37 = v176;
      if (qword_1EDC20728 != -1)
      {
        OUTLINED_FUNCTION_1();
        swift_once();
      }

      v38 = sub_1BC8F7734();
      __swift_project_value_buffer(v38, qword_1EDC2B3A8);
      v39 = v175;
      v40 = *(v175 + 2);
      v40(v3, v174, v37);
      v41 = v169;
      v42 = OUTLINED_FUNCTION_27_0();
      (v40)(v42);
      v43 = sub_1BC8F7714();
      v44 = sub_1BC8F8204();
      if (os_log_type_enabled(v43, v44))
      {
        OUTLINED_FUNCTION_11_2();
        v45 = swift_slowAlloc();
        v170 = 0;
        v46 = v45;
        OUTLINED_FUNCTION_18();
        v174 = swift_slowAlloc();
        v177[0] = v174;
        *v46 = 136446466;
        OUTLINED_FUNCTION_0_7();
        sub_1BC7C46D8(v47, v48);
        sub_1BC8F8A54();
        LODWORD(v171) = v44;
        v50 = v49;
        v173 = v30;
        v51 = *(v175 + 1);
        v51(v3, v176);
        v52 = OUTLINED_FUNCTION_10_8();
        v54 = sub_1BC7A9A4C(v52, v50, v53);

        *(v46 + 4) = v54;
        *(v46 + 12) = 2082;
        v39 = v175;
        sub_1BC8F8A54();
        OUTLINED_FUNCTION_24_4();
        v51(v41, v176);
        v30 = v173;
        v37 = v176;
        sub_1BC7A9A4C(v50, v41, v177);
        OUTLINED_FUNCTION_16_3();

        *(v46 + 14) = v50;
        _os_log_impl(&dword_1BC7A3000, v43, v171, "MessageStore: Not copying incoming message file since source and destination are the same! Source: %{public}s, Destination: %{public}s", v46, 0x16u);
        OUTLINED_FUNCTION_41_4();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      else
      {

        v83 = *(v39 + 1);
        v83(v41, v37);
        v83(v3, v37);
      }

      goto LABEL_28;
    }

    v169 = objc_opt_self();
    v55 = [v169 defaultManager];
    v173 = v30;
    sub_1BC8F6FC4();
    v56 = sub_1BC8F7BE4();

    v57 = [v55 fileExistsAtPath_];

    p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
    v37 = v176;
    v59 = v174;
    v170 = 0;
    if (v57)
    {
      if (qword_1EDC20728 != -1)
      {
        OUTLINED_FUNCTION_1();
        swift_once();
      }

      v60 = sub_1BC8F7734();
      v61 = __swift_project_value_buffer(v60, qword_1EDC2B3A8);
      v62 = v175;
      v63 = v175 + 16;
      v64 = v167;
      v161 = *(v175 + 2);
      v161(v167, v173, v37);
      v162 = v61;
      v65 = sub_1BC8F7714();
      v66 = sub_1BC8F8204();
      if (os_log_type_enabled(v65, v66))
      {
        OUTLINED_FUNCTION_9();
        v67 = swift_slowAlloc();
        v160[1] = v63;
        v68 = v64;
        v69 = v67;
        OUTLINED_FUNCTION_8_2();
        v70 = swift_slowAlloc();
        v177[0] = v70;
        *v69 = 136446210;
        OUTLINED_FUNCTION_0_7();
        sub_1BC7C46D8(v71, v72);
        sub_1BC8F8A54();
        OUTLINED_FUNCTION_37_3();
        v73 = *(v62 + 1);
        v73(v68, v176);
        v74 = OUTLINED_FUNCTION_10_8();
        sub_1BC7A9A4C(v74, v37, v75);
        OUTLINED_FUNCTION_23_2();
        *(v69 + 4) = v68;
        OUTLINED_FUNCTION_43_2();
        _os_log_impl(v76, v77, v78, v79, v80, v81);
        __swift_destroy_boxed_opaque_existential_1(v70);
        v82 = OUTLINED_FUNCTION_5_5();
        MEMORY[0x1BFB2AA50](v82);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      else
      {

        v73 = *(v62 + 1);
        v73(v64, v37);
      }

      v84 = [v169 defaultManager];
      sub_1BC8F6FC4();
      v85 = sub_1BC8F7BE4();

      v59 = v174;
      sub_1BC8F6FC4();
      v86 = sub_1BC8F7BE4();

      v87 = [v84 contentsEqualAtPath:v85 andPath:v86];

      p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
      if (v87)
      {
        v171 = v73;
        v88 = v165;
        v89 = v161;
        v161(v165, v59, v37);
        v90 = v166;
        v30 = v173;
        v89(v166, v173, v37);
        v91 = sub_1BC8F7714();
        sub_1BC8F8204();
        OUTLINED_FUNCTION_30_3();
        if (!os_log_type_enabled(v91, v92))
        {

          v39 = v175;
          v154 = v171;
          (v171)(v90, v37);
          v155 = OUTLINED_FUNCTION_12_5();
          v154(v155);
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_11_2();
        v93 = swift_slowAlloc();
        OUTLINED_FUNCTION_18();
        v174 = swift_slowAlloc();
        v177[0] = v174;
        *v93 = 136446466;
        OUTLINED_FUNCTION_0_7();
        v37 = sub_1BC7C46D8(v94, v95);
        v96 = v88;
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_38_3();
        v97 = v88;
        v39 = v175;
        v98 = v171;
        (v171)(v97, v176);
        v99 = OUTLINED_FUNCTION_10_8();
        sub_1BC7A9A4C(v99, v59, v100);
        OUTLINED_FUNCTION_28_2();

        *(v93 + 4) = v96;
        *(v93 + 12) = 2082;
        v101 = v166;
        v102 = v166;
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_37_3();
        v98(v101, v176);
        v103 = OUTLINED_FUNCTION_10_8();
        sub_1BC7A9A4C(v103, v37, v104);
        OUTLINED_FUNCTION_23_2();
        *(v93 + 14) = v102;
        v105 = "%{public}s and %{public}s have the same contents!";
        v106 = OS_LOG_TYPE_DEFAULT;
LABEL_17:
        _os_log_impl(&dword_1BC7A3000, v91, v106, v105, v93, 0x16u);
        OUTLINED_FUNCTION_41_4();
        swift_arrayDestroy();
        v30 = v173;
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        v107 = OUTLINED_FUNCTION_5_5();
        MEMORY[0x1BFB2AA50](v107);

LABEL_28:
        (*(v39 + 4))(v172, v30, v37);
LABEL_31:
        v157 = *MEMORY[0x1E69E9840];
        return;
      }
    }

    if (p_cache[229] != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v108 = sub_1BC8F7734();
    v109 = __swift_project_value_buffer(v108, qword_1EDC2B3A8);
    v39 = v175;
    v110 = v175 + 16;
    v111 = *(v175 + 2);
    v112 = v168;
    v111(v168, v59, v37);
    v113 = v171;
    v114 = v173;
    v165 = v111;
    v166 = v110;
    v111(v171, v173, v37);
    v167 = v109;
    v115 = sub_1BC8F7714();
    sub_1BC8F8204();
    OUTLINED_FUNCTION_30_3();
    if (os_log_type_enabled(v115, v116))
    {
      OUTLINED_FUNCTION_11_2();
      v117 = swift_slowAlloc();
      OUTLINED_FUNCTION_18();
      v162 = swift_slowAlloc();
      v177[0] = v162;
      *v117 = 136446466;
      OUTLINED_FUNCTION_0_7();
      sub_1BC7C46D8(v118, v119);
      OUTLINED_FUNCTION_47_2();
      sub_1BC8F8A54();
      OUTLINED_FUNCTION_37_3();
      v120 = *(v175 + 1);
      v120(v112, v176);
      v121 = OUTLINED_FUNCTION_10_8();
      sub_1BC7A9A4C(v121, v37, v122);
      OUTLINED_FUNCTION_23_2();
      *(v117 + 4) = v112;
      *(v117 + 12) = 2082;
      v123 = v171;
      OUTLINED_FUNCTION_47_2();
      sub_1BC8F8A54();
      v125 = v124;
      v120(v123, v37);
      v39 = v175;
      v126 = OUTLINED_FUNCTION_10_8();
      v128 = sub_1BC7A9A4C(v126, v125, v127);
      v114 = v173;

      *(v117 + 14) = v128;
      _os_log_impl(&dword_1BC7A3000, v115, v111, "MessageStore: Copying incoming message file from %{public}s to %{public}s", v117, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v59 = v174;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v129 = v113;
      v120 = *(v39 + 1);
      v120(v129, v37);
      v120(v112, v37);
    }

    v130 = v170;
    sub_1BC7EE4C8(v59, 1);
    if (!v130)
    {
      sub_1BC7EE4C8(v114, 0);
      v175 = v120;
      v131 = [v169 defaultManager];
      v132 = v59;
      v133 = v114;
      v134 = sub_1BC8F6F44();
      v135 = sub_1BC8F6F44();
      v177[0] = 0;
      v136 = [v131 copyItemAtURL:v134 toURL:v135 error:v177];

      v137 = v177[0];
      if (v136)
      {
        v170 = 0;
        v138 = v163;
        v139 = OUTLINED_FUNCTION_44_1();
        v140 = v165;
        (v165)(v139);
        v141 = v164;
        v140(v164, v133, v37);
        v142 = v137;
        v91 = sub_1BC8F7714();
        v143 = sub_1BC8F8204();
        if (!os_log_type_enabled(v91, v143))
        {
          v30 = v133;

          v158 = v175;
          v175(v141, v37);
          v159 = OUTLINED_FUNCTION_45_2();
          v158(v159);
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_11_2();
        v144 = v141;
        v93 = swift_slowAlloc();
        OUTLINED_FUNCTION_18();
        v174 = swift_slowAlloc();
        v177[0] = v174;
        *v93 = 136446466;
        OUTLINED_FUNCTION_0_7();
        v37 = sub_1BC7C46D8(v145, v146);
        LODWORD(v171) = v143;
        v147 = v138;
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_38_3();
        v148 = v138;
        v149 = v175;
        v175(v148, v176);
        v150 = OUTLINED_FUNCTION_10_8();
        sub_1BC7A9A4C(v150, v133, v151);
        OUTLINED_FUNCTION_28_2();

        *(v93 + 4) = v147;
        *(v93 + 12) = 2082;
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_37_3();
        v149(v144, v176);
        v152 = OUTLINED_FUNCTION_10_8();
        sub_1BC7A9A4C(v152, v37, v153);
        OUTLINED_FUNCTION_23_2();
        *(v93 + 14) = v144;
        v105 = "MessageStore: Copied incoming message file from %{public}s to %{public}s";
        v106 = v171;
        goto LABEL_17;
      }

      v156 = v177[0];
      OUTLINED_FUNCTION_16_3();
      sub_1BC8F6EA4();

      swift_willThrow();
      v114 = v133;
      v120 = v175;
    }

    v120(v114, v37);
    goto LABEL_31;
  }

  objc_autoreleasePoolPop(v33);
  __break(1u);
}

void sub_1BC7EE4C8(uint64_t a1, int a2)
{
  v4 = sub_1BC8F7014();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v43 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-v9];
  if (qword_1EDC20728 != -1)
  {
    swift_once();
  }

  v11 = sub_1BC8F7734();
  v12 = __swift_project_value_buffer(v11, qword_1EDC2B3A8);
  v39 = v5[2];
  v40 = v5 + 2;
  v39(v10, a1, v4);
  v42 = v12;
  v13 = sub_1BC8F7714();
  v14 = sub_1BC8F81D4();
  v15 = os_log_type_enabled(v13, v14);
  v44 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v45 = v38;
    *v16 = 136315650;
    *(v16 + 4) = sub_1BC7A9A4C(0xD000000000000022, 0x80000001BC90BE80, &v45);
    *(v16 + 12) = 1026;
    *(v16 + 14) = a2 & 1;
    *(v16 + 18) = 2082;
    sub_1BC7C46D8(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
    v17 = sub_1BC8F8A54();
    v37 = v14;
    v18 = a2;
    v20 = v19;
    v41 = v44[1];
    v41(v10, v4);
    v21 = sub_1BC7A9A4C(v17, v20, &v45);
    a2 = v18;

    *(v16 + 20) = v21;
    _os_log_impl(&dword_1BC7A3000, v13, v37, "%s shouldExist: %{BOOL,public}d file: %{public}s", v16, 0x1Cu);
    v22 = v38;
    swift_arrayDestroy();
    MEMORY[0x1BFB2AA50](v22, -1, -1);
    MEMORY[0x1BFB2AA50](v16, -1, -1);
  }

  else
  {

    v41 = v5[1];
    v41(v10, v4);
  }

  v23 = [objc_opt_self() defaultManager];
  sub_1BC8F6FC4();
  v24 = sub_1BC8F7BE4();

  v25 = [v23 fileExistsAtPath_];

  if ((v25 ^ a2))
  {
    v39(v43, a1, v4);
    v26 = sub_1BC8F7714();
    v27 = sub_1BC8F81E4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = v29;
      *v28 = 136315906;
      *(v28 + 4) = sub_1BC7A9A4C(0xD000000000000022, 0x80000001BC90BE80, &v45);
      *(v28 + 12) = 1026;
      *(v28 + 14) = a2 & 1;
      *(v28 + 18) = 1026;
      *(v28 + 20) = v25;
      *(v28 + 24) = 2082;
      sub_1BC7C46D8(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
      v30 = v43;
      v31 = sub_1BC8F8A54();
      v33 = v32;
      v41(v30, v4);
      v34 = sub_1BC7A9A4C(v31, v33, &v45);

      *(v28 + 26) = v34;
      _os_log_impl(&dword_1BC7A3000, v26, v27, "%s shouldExist: %{BOOL,public}d doesExist: %{BOOL,public}d file: %{public}s", v28, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1BFB2AA50](v29, -1, -1);
      MEMORY[0x1BFB2AA50](v28, -1, -1);
    }

    else
    {

      v41(v43, v4);
    }

    sub_1BC7F17E4();
    swift_allocError();
    *v35 = (a2 & 1) == 0;
    swift_willThrow();
  }
}

void sub_1BC7EEA50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = sub_1BC8F7264();
    OUTLINED_FUNCTION_26(v3);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v6 + 72);
    do
    {
      sub_1BC7EEAE4();
      v5 += v7;
      --v1;
    }

    while (v1);
  }
}

void sub_1BC7EEAE4()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v98[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BC8F7014();
  v5 = OUTLINED_FUNCTION_0(v4);
  v89 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v92 = v9 - v10;
  OUTLINED_FUNCTION_17_0();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v85 - v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_4();
  sub_1BC7C1C54(v1);
  v97 = objc_opt_self();
  v16 = [v97 defaultManager];
  v17 = sub_1BC8F6F44();
  v98[0] = 0;
  v18 = [v16 contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:0 options:0 error:v98];

  v19 = v98[0];
  if (v18)
  {
    v93 = v4;
    sub_1BC8F7E54();
    v20 = v19;

    MEMORY[0x1EEE9AC00](v21);
    v85[-2] = v3;
    sub_1BC7F1F38();
    v23 = v22;
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v24 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v24, qword_1EDC2B3A8);

    v91 = v18;
    v25 = sub_1BC8F7714();
    v26 = sub_1BC8F8204();

    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_9();
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v28 = swift_slowAlloc();
      v98[0] = v28;
      *v27 = 136315138;
      v29 = MEMORY[0x1BFB29280](v23, v93);
      v31 = v0;
      v32 = sub_1BC7A9A4C(v29, v30, v98);

      *(v27 + 4) = v32;
      v0 = v31;
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v33, v34, v35, v36, v37, v38);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v40 = v89;
    v41 = v92;
    v42 = *(v23 + 16);
    if (v42)
    {
      v85[1] = v23;
      v86 = v1;
      v43 = *(v89 + 16);
      v44 = v23 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
      v94 = *(v89 + 72);
      v95 = v43;
      v96 = (v89 + 8);
      *&v39 = 136446210;
      v88 = v39;
      v45 = v93;
      v89 += 16;
      v87 = v0;
      do
      {
        v46 = v95;
        (v95)(v0, v44, v45);
        v47 = [v97 defaultManager];
        v48 = sub_1BC8F6F44();
        v98[0] = 0;
        v49 = [v47 removeItemAtURL:v48 error:v98];

        if (v49)
        {
          v50 = *v96;
          v51 = v98[0];
          v50(v0, v45);
        }

        else
        {
          v52 = v98[0];
          v53 = sub_1BC8F6EA4();

          v93 = v53;
          swift_willThrow();
          v54 = OUTLINED_FUNCTION_48_1();
          v46(v54);
          v55 = sub_1BC8F7714();
          v56 = v0;
          v57 = sub_1BC8F81E4();
          if (os_log_type_enabled(v55, v57))
          {
            OUTLINED_FUNCTION_9();
            v58 = swift_slowAlloc();
            OUTLINED_FUNCTION_8_2();
            v90 = swift_slowAlloc();
            v98[0] = v90;
            *v58 = v88;
            OUTLINED_FUNCTION_0_7();
            sub_1BC7C46D8(&qword_1EDC20610, v59);
            sub_1BC8F8A54();
            v61 = v60;
            v50 = *v96;
            (*v96)(v92, v45);
            v62 = OUTLINED_FUNCTION_10_8();
            v64 = sub_1BC7A9A4C(v62, v61, v63);

            *(v58 + 4) = v64;
            _os_log_impl(&dword_1BC7A3000, v55, v57, "MessageStore: Failed to delete file at URL %{public}s", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v90);
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
            v41 = v92;
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();

            v0 = v87;
            v50(v87, v45);
          }

          else
          {

            v50 = *v96;
            (*v96)(v41, v45);
            v50(v56, v45);
            v0 = v56;
          }
        }

        v44 += v94;
        --v42;
      }

      while (v42);

      v1 = v86;
    }

    else
    {

      v50 = *(v40 + 8);
      v45 = v93;
    }

    v50(v1, v45);
  }

  else
  {
    v65 = v98[0];
    v66 = sub_1BC8F6EA4();

    swift_willThrow();
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v67 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v67, qword_1EDC2B3A8);
    v68 = v89;
    v69 = v4;
    (*(v89 + 16))(v14, v1, v4);
    v70 = v66;
    v71 = sub_1BC8F7714();
    v72 = sub_1BC8F81E4();

    if (os_log_type_enabled(v71, v72))
    {
      OUTLINED_FUNCTION_11_2();
      v73 = swift_slowAlloc();
      v96 = OUTLINED_FUNCTION_32_3();
      OUTLINED_FUNCTION_8_2();
      v97 = swift_slowAlloc();
      v98[0] = v97;
      *v73 = 136446466;
      sub_1BC8F6FC4();
      v86 = v1;
      v75 = v74;
      v76 = *(v68 + 8);
      v76(v14, v69);
      v77 = OUTLINED_FUNCTION_10_8();
      v79 = sub_1BC7A9A4C(v77, v75, v78);

      *(v73 + 4) = v79;
      *(v73 + 12) = 2114;
      v80 = v66;
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 14) = v81;
      v82 = v96;
      *v96 = v81;
      _os_log_impl(&dword_1BC7A3000, v71, v72, "MessageStore: Encountered an error while enumerating files for deletion %{public}s: %{public}@", v73, 0x16u);
      sub_1BC7F1790(v82, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      __swift_destroy_boxed_opaque_existential_1(v97);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();

      v76(v86, v69);
    }

    else
    {

      v83 = *(v68 + 8);
      v83(v14, v69);
      v83(v1, v69);
    }
  }

  v84 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7EF2F0()
{
  sub_1BC8F6F24();
  sub_1BC8F7204();
  v0 = sub_1BC8731C0();

  return v0 & 1;
}

void sub_1BC7EF368()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = sub_1BC8F7014();
  v4 = OUTLINED_FUNCTION_0(v3);
  v77 = v5;
  v78 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v72[-v10];
  v12 = sub_1BC8F6E04();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v72[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5588, &unk_1BC900648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FC230;
  v21 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v22 = v21;
  sub_1BC8C14C8(inited);
  sub_1BC8F6F14();
  v23 = v11;
  v76 = v15;

  v24 = sub_1BC8F6DF4();
  if (v25)
  {
    v26 = v77;
    v27 = v78;
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v28 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v28, qword_1EDC2B3A8);
    v29 = v0;
    (*(v26 + 16))(v0, v2, v27);
    v30 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_30_3();
    v32 = v12;
    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_9();
      v33 = v19;
      v34 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v35 = swift_slowAlloc();
      v79 = v35;
      *v34 = 136446210;
      OUTLINED_FUNCTION_0_7();
      sub_1BC7C46D8(v36, v37);
      sub_1BC8F8A54();
      OUTLINED_FUNCTION_39_2();
      v38(v29, v39);
      v40 = sub_1BC7A9A4C(v29, v27, &v79);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_1BC7A3000, v30, v2, "MessageStore: Failed to get asset size for url: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v41 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v41);

      (*(v76 + 8))(v33, v32);
    }

    else
    {

      (*(v26 + 8))(v29, v27);
      (*(v76 + 8))(v19, v12);
    }

LABEL_11:
    OUTLINED_FUNCTION_24();
    return;
  }

  v42 = v24;
  v43 = v77;
  v44 = v78;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v45 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v45, qword_1EDC2B3A8);
  v46 = OUTLINED_FUNCTION_46_1();
  v47(v46);
  v48 = sub_1BC8F7714();
  v49 = sub_1BC8F8204();
  if (os_log_type_enabled(v48, v49))
  {
    OUTLINED_FUNCTION_11_2();
    v50 = swift_slowAlloc();
    v75 = v12;
    v51 = v23;
    v52 = v50;
    OUTLINED_FUNCTION_18();
    v74 = swift_slowAlloc();
    v79 = v74;
    *v52 = 136446466;
    v53 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
    v73 = v49;
    v54 = v53;
    v55 = [v53 stringFromByteCount_];

    sub_1BC8F7C24();
    OUTLINED_FUNCTION_38_3();

    v56 = OUTLINED_FUNCTION_19_5();
    sub_1BC7A9A4C(v56, v57, v58);
    OUTLINED_FUNCTION_28_2();

    *(v52 + 4) = v54;
    *(v52 + 12) = 2082;
    OUTLINED_FUNCTION_0_7();
    sub_1BC7C46D8(v59, v60);
    sub_1BC8F8A54();
    OUTLINED_FUNCTION_38_3();
    (*(v43 + 8))(v51, v44);
    v61 = OUTLINED_FUNCTION_19_5();
    v64 = sub_1BC7A9A4C(v61, v62, v63);

    *(v52 + 14) = v64;
    _os_log_impl(&dword_1BC7A3000, v48, v73, "MessageStore: Got %{public}s for url: %{public}s", v52, 0x16u);
    OUTLINED_FUNCTION_41_4();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();

    (*(v76 + 8))(v19, v75);
  }

  else
  {

    v65 = *(v43 + 8);
    v66 = OUTLINED_FUNCTION_48_1();
    v67(v66);
    v68 = *(v76 + 8);
    v69 = OUTLINED_FUNCTION_27_0();
    v71(v69, v70);
  }

  if ((v42 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1BC7EFADC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1BC8F7014();
  v2[6] = v3;
  OUTLINED_FUNCTION_26(v3);
  v2[7] = v4;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC7EFBC4, 0, 0);
}

uint64_t sub_1BC7EFBC4()
{
  v97 = v0;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = sub_1BC8F7734();
  v0[13] = __swift_project_value_buffer(v5, qword_1EDC2B3A8);
  v0[14] = *(v3 + 16);
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6 = OUTLINED_FUNCTION_40();
  v93 = v7;
  v7(v6);
  v8 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_35_3();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[12];
  v13 = v0[6];
  v12 = v0[7];
  if (v10)
  {
    OUTLINED_FUNCTION_9();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v15 = swift_slowAlloc();
    v96[0] = v15;
    *v14 = 136446210;
    OUTLINED_FUNCTION_0_7();
    sub_1BC7C46D8(v16, v17);
    v18 = sub_1BC8F8A54();
    v20 = v19;
    v21 = *(v12 + 8);
    v22 = OUTLINED_FUNCTION_12_5();
    v24 = v23;
    v23(v22);
    v25 = sub_1BC7A9A4C(v18, v20, v96);

    *(v14 + 4) = v25;
    _os_log_impl(&dword_1BC7A3000, v8, v4, "MOV to AMR conversion started for %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v26 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v26);
  }

  else
  {

    v27 = *(v12 + 8);
    v28 = OUTLINED_FUNCTION_12_5();
    v24 = v29;
    v29(v28);
  }

  v0[16] = v24;
  v30 = v0[11];
  v31 = v0[6];
  v32 = v0[4];
  sub_1BC7D9730(0, &qword_1EDC1DEA8, 0x1E6988168);
  v33 = OUTLINED_FUNCTION_40();
  v93(v33);
  v34 = sub_1BC7F0BB8();
  v0[17] = v34;
  v35 = *MEMORY[0x1E6987318];
  v36 = sub_1BC8F7C24();
  objc_allocWithZone(MEMORY[0x1E6987E60]);
  v37 = v34;
  v38 = sub_1BC7F15F0(v37);
  v0[18] = v38;
  if (v38)
  {
    v39 = v38;
    v92 = v24;
    v40 = [v38 supportedFileTypes];
    type metadata accessor for AVFileType(0);
    OUTLINED_FUNCTION_12_5();
    v41 = sub_1BC8F7E54();

    v42 = *MEMORY[0x1E6987468];
    v0[19] = *MEMORY[0x1E6987468];
    v0[2] = v42;
    v43 = swift_task_alloc();
    *(v43 + 16) = v0 + 2;
    v44 = sub_1BC7ECC08(sub_1BC7F19EC, v43, v41);

    if (v44)
    {

      v45 = sub_1BC8F7714();
      v46 = sub_1BC8F8204();

      if (os_log_type_enabled(v45, v46))
      {
        OUTLINED_FUNCTION_9();
        v47 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v48 = swift_slowAlloc();
        v96[0] = v48;
        *v47 = 136446210;
        v49 = OUTLINED_FUNCTION_45_2();
        MEMORY[0x1BFB29280](v49);

        v50 = OUTLINED_FUNCTION_48_1();
        v53 = sub_1BC7A9A4C(v50, v51, v52);

        *(v47 + 4) = v53;
        _os_log_impl(&dword_1BC7A3000, v45, v46, "Supported file types: %{public}s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        v54 = OUTLINED_FUNCTION_5_5();
        MEMORY[0x1BFB2AA50](v54);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5580, &qword_1BC900640);
      v80 = sub_1BC8F7404();
      v0[20] = v80;
      v81 = *(MEMORY[0x1E69E5A20] + 4);
      v86 = swift_task_alloc();
      v0[21] = v86;
      *v86 = v0;
      v86[1] = sub_1BC7F02E8;

      return MEMORY[0x1EEE68140](v0 + 3, v80, 0, 0, v82, v83, v84, v85);
    }

    v60 = v0[9];
    v61 = v0[6];
    v62 = v0[4];

    v63 = OUTLINED_FUNCTION_12_5();
    v93(v63);
    v64 = sub_1BC8F7714();
    v65 = sub_1BC8F81E4();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v0[9];
    v69 = v0[6];
    v68 = v0[7];
    if (v66)
    {
      OUTLINED_FUNCTION_9();
      v70 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v95 = swift_slowAlloc();
      v96[0] = v95;
      *v70 = 136446210;
      OUTLINED_FUNCTION_0_7();
      sub_1BC7C46D8(v71, v72);
      v73 = v37;
      v74 = sub_1BC8F8A54();
      v94 = v65;
      v76 = v75;
      v77 = OUTLINED_FUNCTION_19_5();
      v92(v77);
      v78 = v74;
      v37 = v73;
      v79 = sub_1BC7A9A4C(v78, v76, v96);

      *(v70 + 4) = v79;
      _os_log_impl(&dword_1BC7A3000, v64, v94, "AVFoundation doesn't support exporting this file as a .amr file. Input file: %{public}s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v87 = OUTLINED_FUNCTION_19_5();
      v92(v87);
    }

    sub_1BC7F17E4();
    v88 = swift_allocError();
    OUTLINED_FUNCTION_51_0(v88, v89);
  }

  else
  {
    v55 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_35_3();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1BC7A3000, v55, v36, "Failed to setup export session for .mov to .amr conversion!", v57, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    sub_1BC7F17E4();
    v58 = swift_allocError();
    OUTLINED_FUNCTION_51_0(v58, v59);
  }

  OUTLINED_FUNCTION_33_5();

  OUTLINED_FUNCTION_27();

  return v90();
}

uint64_t sub_1BC7F02E8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);

  if (v0)
  {
    v6 = sub_1BC7F08B8;
  }

  else
  {
    v6 = sub_1BC7F041C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BC7F041C()
{
  v1 = v0[18];
  v2 = v0[13];
  sub_1BC7F1944(v0[3], v1);
  v3 = v1;
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    OUTLINED_FUNCTION_9();
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_32_3();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "Set exportSession properties %{public}@", v7, 0xCu);
    sub_1BC7F1790(v8, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v10 = v0[18];

  v11 = *(MEMORY[0x1E69E59F0] + 4);
  v12 = swift_task_alloc();
  v0[23] = v12;
  *v12 = v0;
  v12[1] = sub_1BC7F059C;
  v13 = v0[19];
  v14 = v0[5];

  return MEMORY[0x1EEE68110](v14, v13, 0, 0);
}

uint64_t sub_1BC7F059C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1BC7F0950;
  }

  else
  {
    v3 = sub_1BC7F06B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BC7F06B0()
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 104);
  (*(v1 + 112))(*(v1 + 80), *(v1 + 40), *(v1 + 48));
  v4 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_35_3();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 144);
  v8 = *(v1 + 128);
  v9 = *(v1 + 80);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  if (v6)
  {
    OUTLINED_FUNCTION_9();
    v26 = v12;
    v27 = v7;
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v28 = swift_slowAlloc();
    *v13 = 136446210;
    OUTLINED_FUNCTION_0_7();
    sub_1BC7C46D8(v14, v15);
    sub_1BC8F8A54();
    v8(v9, v10);
    v16 = OUTLINED_FUNCTION_48_1();
    sub_1BC7A9A4C(v16, v17, v18);
    OUTLINED_FUNCTION_28_2();

    *(v13 + 4) = v9;
    _os_log_impl(&dword_1BC7A3000, v4, v0, "MOV to AMR conversion finished for %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v8(v9, v10);
  }

  v20 = *(v1 + 88);
  v19 = *(v1 + 96);
  v22 = *(v1 + 72);
  v21 = *(v1 + 80);
  v23 = *(v1 + 64);

  OUTLINED_FUNCTION_27();

  return v24();
}

uint64_t sub_1BC7F08B8()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 176);
  OUTLINED_FUNCTION_33_5();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC7F0950()
{
  v40 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  (*(v0 + 112))(*(v0 + 64), *(v0 + 32), *(v0 + 48));
  v4 = v1;
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F81E4();

  if (os_log_type_enabled(v5, v6))
  {
    v37 = *(v0 + 128);
    v38 = *(v0 + 192);
    v7 = *(v0 + 64);
    v36 = *(v0 + 56);
    v8 = *(v0 + 48);
    OUTLINED_FUNCTION_11_2();
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_8_2();
    v11 = swift_slowAlloc();
    v39 = v11;
    *v9 = 136446466;
    OUTLINED_FUNCTION_0_7();
    sub_1BC7C46D8(v12, v13);
    v14 = sub_1BC8F8A54();
    v16 = v15;
    v17 = OUTLINED_FUNCTION_19_5();
    v18(v17);
    v19 = sub_1BC7A9A4C(v14, v16, &v39);

    *(v9 + 4) = v19;
    *(v9 + 12) = 2114;
    v20 = v38;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v21;
    *v10 = v21;
    _os_log_impl(&dword_1BC7A3000, v5, v6, "Conversion failed for %{public}s with error %{public}@", v9, 0x16u);
    sub_1BC7F1790(v10, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v22);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v23 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v23);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v24);
  }

  else
  {
    v25 = *(v0 + 128);
    v27 = *(v0 + 56);
    v26 = *(v0 + 64);
    v28 = *(v0 + 48);

    v29 = OUTLINED_FUNCTION_40();
    v25(v29);
  }

  v30 = *(v0 + 192);
  v31 = *(v0 + 136);
  v32 = *(v0 + 144);
  swift_willThrow();

  v33 = *(v0 + 192);
  OUTLINED_FUNCTION_33_5();

  OUTLINED_FUNCTION_27();

  return v34();
}

id sub_1BC7F0BB8()
{
  OUTLINED_FUNCTION_16_3();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1BC8F6F44();
  v3 = [v1 initWithURL:v2 options:0];

  v4 = sub_1BC8F7014();
  OUTLINED_FUNCTION_42(v4);
  (*(v5 + 8))(v0);
  return v3;
}

void sub_1BC7F0C48(char *a1, void *a2)
{
  v3 = *a1;
  LOBYTE(v20[0]) = *a1;
  MessageKey.rawValue.getter();
  v4 = sub_1BC8F7BE4();

  v5 = [a2 valueForKey_];

  if (v5)
  {
    sub_1BC8F8474();
    swift_unknownObjectRelease();
    sub_1BC7F0E58(&v19, v20);
    swift_dynamicCast();
    OUTLINED_FUNCTION_50_0();
    sub_1BC7F0E68();
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_50_0();
      sub_1BC7D4C94(v7, v8);
    }

    else
    {
      if (qword_1EDC20728 != -1)
      {
        OUTLINED_FUNCTION_1();
        swift_once();
      }

      v9 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v9, qword_1EDC2B3A8);
      v10 = sub_1BC8F7714();
      v11 = sub_1BC8F81E4();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_9();
        v12 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v13 = swift_slowAlloc();
        *&v20[0] = v13;
        *v12 = 136446210;
        LOBYTE(v19) = v3;
        sub_1BC7F173C();
        v14 = sub_1BC8F8A54();
        v16 = sub_1BC7A9A4C(v14, v15, v20);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_1BC7A3000, v10, v11, "MessageStore: Failed to convert the CoreData attribute %{public}s to a local file.", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v17 = OUTLINED_FUNCTION_50_0();
      sub_1BC7D4C94(v17, v18);
    }
  }

  else
  {
    __break(1u);
  }
}

_OWORD *sub_1BC7F0E58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1BC7F0E68()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1BC8F7014();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  if ((sub_1BC7C2EFC() & 1) == 0)
  {
    v44 = v7;
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v17 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v17, qword_1EDC2B3A8);
    v41 = *(v11 + 16);
    v41(v16, v3, v8);
    v43 = v7;
    v18 = sub_1BC8F7714();
    sub_1BC8F8204();
    OUTLINED_FUNCTION_30_3();
    v20 = os_log_type_enabled(v18, v19);
    v42 = v11;
    if (v20)
    {
      OUTLINED_FUNCTION_9();
      v21 = swift_slowAlloc();
      v39 = v5;
      v22 = v21;
      OUTLINED_FUNCTION_8_2();
      v38 = swift_slowAlloc();
      v45 = v38;
      *v22 = 136446210;
      OUTLINED_FUNCTION_0_7();
      sub_1BC7C46D8(v23, v24);
      sub_1BC8F8A54();
      v40 = v0;
      v26 = v25;
      v27 = OUTLINED_FUNCTION_36_5();
      v28(v27);
      v29 = OUTLINED_FUNCTION_10_8();
      v31 = sub_1BC7A9A4C(v29, v26, v30);

      *(v22 + 4) = v31;
      _os_log_impl(&dword_1BC7A3000, v18, v1, "MessageStore: File at %{public}s doesn't exist! Attempting to copy it from the data.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v32 = OUTLINED_FUNCTION_36_5();
      v33(v32);
    }

    sub_1BC8F70F4();
    if ((sub_1BC7C2EFC() & 1) == 0)
    {
      v34 = sub_1BC8F7714();
      v35 = sub_1BC8F81E4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1BC7A3000, v34, v35, "MessageStore: Failed to convert fileData to a local file.", v36, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }
    }
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7F13F0(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1BC7EC5DC(a1, a2);
  v5 = sub_1BC7F165C(a1, a2);
  [v5 setRequiresSecureCoding_];
  sub_1BC7D9730(0, &qword_1EBCF5550, 0x1E69E06B0);
  v6 = *MEMORY[0x1E696A508];
  sub_1BC8F7C24();
  v7 = sub_1BC8F8364();

  return v7;
}

id sub_1BC7F15F0(void *a1)
{
  v3 = sub_1BC8F7BE4();

  v4 = [v1 initWithAsset:a1 presetName:v3];

  return v4;
}

id sub_1BC7F165C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BC8F70C4();
  v12[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  sub_1BC7D4C94(a1, a2);
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

unint64_t sub_1BC7F173C()
{
  result = qword_1EDC1F9C8;
  if (!qword_1EDC1F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9C8);
  }

  return result;
}

uint64_t sub_1BC7F1790(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_42(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_1BC7F17E4()
{
  result = qword_1EBCF5578;
  if (!qword_1EBCF5578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5578);
  }

  return result;
}

uint64_t sub_1BC7F1838()
{
  sub_1BC8F7264();
  OUTLINED_FUNCTION_3_9();
  sub_1BC7C46D8(v0, v1);
  return sub_1BC8F7BC4() & 1;
}

uint64_t sub_1BC7F18B8()
{
  v0 = sub_1BC8F7C24();
  v2 = v1;
  if (v0 == sub_1BC8F7C24() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BC8F8AA4();
  }

  return v5 & 1;
}

void sub_1BC7F1944(uint64_t a1, void *a2)
{
  sub_1BC7D9730(0, &qword_1EDC1DE58, 0x1E6987FE0);
  v3 = sub_1BC8F7E34();

  [a2 setMetadata_];
}

uint64_t sub_1BC7F19C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1BC7F18B8() & 1;
}

unint64_t sub_1BC7F1A2C()
{
  result = qword_1EBCF5590;
  if (!qword_1EBCF5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5590);
  }

  return result;
}

void sub_1BC7F1A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1BC7AD404();
    v3 = v33;
    v6 = sub_1BC83053C(v2);
    v7 = 0;
    v29 = v2 + 56;
    v24 = v2 + 64;
    v25 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v8 = v6 >> 6;
        if ((*(v29 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_26;
        }

        v28 = v5;
        v26 = v7;
        v27 = v4;
        v9 = *(v2 + 48) + 32 * v6;
        v30 = *v9;
        v31 = *(v9 + 8);
        v32 = *(v9 + 24);
        v10 = Person.description.getter();
        v12 = v11;
        v13 = *(v3 + 16);
        if (v13 >= *(v3 + 24) >> 1)
        {
          sub_1BC7AD404();
        }

        *(v3 + 16) = v13 + 1;
        v14 = v3 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v12;
        if (v28)
        {
          goto LABEL_30;
        }

        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v6 >= v15)
        {
          goto LABEL_27;
        }

        v16 = *(v29 + 8 * v8);
        if ((v16 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_29;
        }

        v17 = v16 & (-2 << (v6 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v3;
          v19 = v8 << 6;
          v20 = v8 + 1;
          v21 = (v24 + 8 * v8);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1BC7FBED8(v6, v27, 0);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_19;
            }
          }

          sub_1BC7FBED8(v6, v27, 0);
LABEL_19:
          v3 = v18;
        }

        v7 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v5 = 0;
        v4 = *(v25 + 36);
        v6 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

void sub_1BC7F1D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1BC7AD404();
    v5 = sub_1BC83053C(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 32 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_1BC7AD404();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1BC7FBED8(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1BC7FBED8(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1BC7F1F38()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v32 = v3;
  v33 = v4;
  v35 = sub_1BC8F7014();
  v5 = OUTLINED_FUNCTION_0(v35);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v29 = (v10 - v11);
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = 0;
  v34 = *(v2 + 16);
  v31 = v7 + 16;
  v16 = (v7 + 8);
  v28 = (v7 + 32);
  v30 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v34 == v15)
    {

LABEL_15:
      OUTLINED_FUNCTION_23();
      return;
    }

    if (v15 >= *(v2 + 16))
    {
      break;
    }

    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = *(v7 + 72);
    v19 = v2;
    (*(v7 + 16))(v14, v2 + v17 + v18 * v15, v35);
    v20 = v32(v14);
    if (v0)
    {
      (*v16)(v14, v35);

      goto LABEL_15;
    }

    if (v20)
    {
      v27 = *v28;
      v27(v29, v14, v35);
      v21 = v30;
      v36 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v21;
      }

      else
      {
        v23 = *(v21 + 16);
        sub_1BC7DDA24();
        v22 = v36;
      }

      v2 = v19;
      v24 = *(v22 + 16);
      v25 = v24 + 1;
      if (v24 >= *(v22 + 24) >> 1)
      {
        v30 = v24 + 1;
        v26 = v24;
        sub_1BC7DDA24();
        v25 = v30;
        v24 = v26;
        v2 = v19;
        v22 = v36;
      }

      ++v15;
      *(v22 + 16) = v25;
      v30 = v22;
      v27((v22 + v17 + v24 * v18), v29, v35);
    }

    else
    {
      (*v16)(v14, v35);
      ++v15;
    }
  }

  __break(1u);
}

uint64_t sub_1BC7F21D4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29 = a2;
  v5 = type metadata accessor for HistoryItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = 0;
  v14 = *(a3 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v14 == v13)
    {

      return v27;
    }

    if (v13 >= *(a3 + 16))
    {
      break;
    }

    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = *(v6 + 72);
    sub_1BC7FB138(a3 + v15 + v16 * v13, v12);
    v17 = v28(v12);
    if (v3)
    {
      sub_1BC7FB19C(v12);
      v23 = v27;

      return v23;
    }

    if (v17)
    {
      sub_1BC7FBC68(v12, v26);
      v18 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = *(v18 + 16);
        sub_1BC7DDA7C();
        v18 = v30;
      }

      v21 = *(v18 + 16);
      v22 = v21 + 1;
      if (v21 >= *(v18 + 24) >> 1)
      {
        v27 = v21 + 1;
        v25 = v21;
        sub_1BC7DDA7C();
        v22 = v27;
        v21 = v25;
        v18 = v30;
      }

      ++v13;
      *(v18 + 16) = v22;
      v27 = v18;
      result = sub_1BC7FBC68(v26, v18 + v15 + v21 * v16);
    }

    else
    {
      result = sub_1BC7FB19C(v12);
      ++v13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BC7F2404(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1BC7F2488(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    OUTLINED_FUNCTION_25(v6);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t ParticipantKey.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BC7F1D00(a1);
  v4 = v3;

  v6 = v4;

  sub_1BC7F8024(&v6);

  *a2 = v6;
  return result;
}

uint64_t ParticipantKey.description.getter()
{
  v2 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  sub_1BC7ADBA4();
  sub_1BC8F7B74();

  return OUTLINED_FUNCTION_40();
}

uint64_t sub_1BC7F2648(uint64_t a1, uint64_t a2)
{
  if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BC7F26D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7F2648(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7F2704(uint64_t a1)
{
  v2 = sub_1BC7F8090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7F2740(uint64_t a1)
{
  v2 = sub_1BC7F8090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParticipantKey.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5598, &qword_1BC900658);
  OUTLINED_FUNCTION_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1BC7F8090();

  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8CA4();
  a10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  sub_1BC7FB0D0(&qword_1EBCF53B8);
  sub_1BC8F89F4();

  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_23();
}

uint64_t ParticipantKey.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1BFB2A020](v2);
  if (v2)
  {
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1BC8F7CD4();

      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ParticipantKey.hashValue.getter()
{
  v1 = *v0;
  sub_1BC8F8C04();
  sub_1BC7DEC58(v3, v1);
  return sub_1BC8F8C64();
}

void ParticipantKey.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55A8, &qword_1BC900660);
  OUTLINED_FUNCTION_0(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v35 = v24[3];
  v36 = v24[4];
  v37 = OUTLINED_FUNCTION_73();
  __swift_project_boxed_opaque_existential_1(v37, v38);
  sub_1BC7F8090();
  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8C84();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    sub_1BC7FB0D0(&qword_1EBCF5490);
    sub_1BC8F88F4();
    (*(v29 + 8))(v34, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7F2B68()
{
  v1 = *v0;
  sub_1BC8F8C04();
  sub_1BC7DEC58(v3, v1);
  return sub_1BC8F8C64();
}

uint64_t GroupedHistoryItem.init(people:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v8 = a2;

    sub_1BC7F80FC(&v8);

    v7 = v8;
    *a3 = a1;
    a3[1] = v7;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t GroupedHistoryItem.key.getter@<X0>(void *a1@<X8>)
{
  sub_1BC7F1D00(*v1);
  v5 = v3;

  sub_1BC7F8024(&v5);

  *a1 = v5;
  return result;
}

void GroupedHistoryItem.mostRecentItem.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (*(v3 + 16))
  {
    v4 = type metadata accessor for HistoryItem();
    OUTLINED_FUNCTION_25(v4);
    v6 = *(v5 + 80);
    OUTLINED_FUNCTION_25_1();

    sub_1BC7FB138(v3 + v7, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t GroupedHistoryItem.coalescedItems.getter()
{
  v1 = *(v0 + 8);

  v2 = sub_1BC7F2E34(1, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_1BC8F8AD4();
  swift_unknownObjectRetain_n();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);

  if (__OFSUB__(v8 >> 1, v6))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v12 != (v8 >> 1) - v6)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_2:
    sub_1BC7F7E5C(v2, v4, v6, v8);
    v10 = v9;
LABEL_9:
    swift_unknownObjectRelease();
    return v10;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v10)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  return v10;
}

int64_t sub_1BC7F2E34(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1BC830538(0, result, *(a2 + 16), a2);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_1BC7F2488(result, v3, a2, type metadata accessor for HistoryItem);

      return v5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BC7F2EE0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1BC8F7CF4();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1BC8F7D94();

      return OUTLINED_FUNCTION_40();
    }
  }

  __break(1u);
  return result;
}

void sub_1BC7F3018()
{
  OUTLINED_FUNCTION_29_0();
  v31[0] = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1BC8F7324();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v16 = v15 - v14;
  v17 = type metadata accessor for HistoryItem();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v24 = v31 - v23;
  v25 = *(v0 + 8);
  if (*(v25 + 16))
  {
    sub_1BC7FB138(v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v31 - v23);
    sub_1BC7FB138(v24, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1BC7FB19C(v24);
      v26 = *v21;
      v27 = *v3;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v28 = (v31[0])(0);
      OUTLINED_FUNCTION_4_1(v28);
      (*(v29 + 16))(v7, &v26[v27]);
    }

    else
    {
      v30 = (*(v11 + 32))(v16, v21, v8);
      v5(v30);
      (*(v11 + 8))(v16, v8);
      sub_1BC7FB19C(v24);
    }

    OUTLINED_FUNCTION_24();
  }

  else
  {
    __break(1u);
  }
}

uint64_t GroupedHistoryItem.filtered(matching:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];

  v9 = sub_1BC7F21D4(a1, a2, v7);
  if (*(v9 + 16))
  {
    v12 = v9;

    sub_1BC7F80FC(&v12);

    v11 = v12;
    *a3 = v8;
    a3[1] = v11;
  }

  else
  {

    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_1BC7F3314(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(*(*v4 + 16), v7))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1BC7FAA54();
  v5 = *v4;
  v9 = (*(*v4 + 24) >> 1) - *(*v4 + 16);
  if (v6 == a3)
  {
    if (v7 <= 0)
    {
      v7 = 0;
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v9 < v7)
  {
    __break(1u);
  }

  else
  {
    swift_arrayInitWithCopy();
    if (v7 <= 0)
    {
      goto LABEL_10;
    }

    v10 = *(v5 + 16);
    v11 = __OFADD__(v10, v7);
    v12 = v10 + v7;
    if (!v11)
    {
      *(v5 + 16) = v12;
LABEL_10:
      swift_unknownObjectRelease();
      if (v7 != v9)
      {
LABEL_11:
        *v4 = v5;
        return;
      }

LABEL_15:
      sub_1BC7FBE10(0);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1BC7F3440(uint64_t a1)
{
  OUTLINED_FUNCTION_5_6(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BC7FA9FC();
  v5 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_22_4();
  if (v6 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    *(v5 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1BC7F3540(uint64_t a1)
{
  OUTLINED_FUNCTION_5_6(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BC7FAA54();
  v5 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_22_4();
  if (v6 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    *(v5 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1BC7F3640(uint64_t a1)
{
  result = OUTLINED_FUNCTION_5_6(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_1BC7FAADC(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1BC7F3744()
{
  OUTLINED_FUNCTION_29_0();
  v4 = v3;
  v5 = sub_1BC8F73D4();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56B8, &unk_1BC900B80);
  v15 = OUTLINED_FUNCTION_25(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_81_1();
  MEMORY[0x1EEE9AC00](v19);
  v22 = v57 - v21;
  v23 = *(v4 + 16);
  v24 = *(*v0 + 16);
  if (__OFADD__(v24, v23))
  {
    __break(1u);
    goto LABEL_10;
  }

  v70 = v20;
  v71 = v13;
  sub_1BC7FAADC(v24 + v23, 1, sub_1BC7F74F0);
  v1 = *v0;
  v13 = *(v8 + 72);
  v25 = (*(*v0 + 24) >> 1) - *(*v0 + 16);
  v69 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  sub_1BC8B1EE4();
  if (v26 < v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v26)
  {
    v29 = *(v1 + 16);
    v30 = __OFADD__(v29, v26);
    v31 = v29 + v26;
    if (v30)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v31;
  }

  if (v26 != v25)
  {
    sub_1BC7CAD38();
LABEL_8:
    *v0 = v1;
    OUTLINED_FUNCTION_24();
    return;
  }

LABEL_11:
  v23 = *(v1 + 16);
  v27 = v73;
  v63 = v72;
  v28 = v74;
  v25 = v75;
  v61 = v73;
  v57[1] = v74;
  if (v76)
  {
    v32 = (v76 - 1) & v76;
    v33 = __clz(__rbit64(v76)) | (v75 << 6);
    v60 = (v74 + 64) >> 6;
LABEL_19:
    (*(v8 + 16))(v22, *(v63 + 48) + v33 * v13, v5);
    v36 = 0;
LABEL_20:
    __swift_storeEnumTagSinglePayload(v22, v36, 1, v5);
    v62 = (v8 + 16);
    v58 = (v8 + 8);
    v59 = (v8 + 32);
    v37 = v23;
    v64 = v2;
    v67 = v22;
    while (2)
    {
      v38 = v70;
      sub_1BC7FBDA0(v22, v70);
      if (__swift_getEnumTagSinglePayload(v38, 1, v5) != 1)
      {
        sub_1BC7C1744(v38, &qword_1EBCF56B8, &unk_1BC900B80);
        v39 = *(v1 + 24);
        v66 = v39 >> 1;
        if ((v39 >> 1) < v37 + 1)
        {
          v1 = sub_1BC7F74F0(v39 > 1, v37 + 1, 1, v1);
          v66 = *(v1 + 24) >> 1;
        }

        v68 = v37;
        v65 = v1 + v69;
        v40 = v59;
        while (1)
        {
          v41 = OUTLINED_FUNCTION_44_2();
          sub_1BC7FBDA0(v41, v42);
          if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
          {
            break;
          }

          v43 = *v40;
          v44 = v71;
          v45 = OUTLINED_FUNCTION_44_2();
          v43(v45);
          v46 = v5;
          v47 = v68;
          if (v68 >= v66)
          {
            v52 = *v58;
            v53 = OUTLINED_FUNCTION_44_2();
            v54(v53);
            v5 = v46;
            v2 = v64;
            v22 = v67;
            goto LABEL_39;
          }

          sub_1BC7C1744(v67, &qword_1EBCF56B8, &unk_1BC900B80);
          (v43)(v65 + v47 * v13, v44, v46);
          v5 = v46;
          if (!v32)
          {
            v22 = v67;
            v49 = v68;
            v2 = v64;
            while (1)
            {
              v48 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                break;
              }

              if (v48 >= v60)
              {
                v32 = 0;
                v51 = 1;
                goto LABEL_35;
              }

              v32 = *(v61 + 8 * v48);
              ++v25;
              if (v32)
              {
                v25 = v48;
                goto LABEL_34;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

          v48 = v25;
          v22 = v67;
          v49 = v68;
          v2 = v64;
LABEL_34:
          v50 = __clz(__rbit64(v32));
          v32 &= v32 - 1;
          (*v62)(v22, *(v63 + 48) + (v50 | (v48 << 6)) * v13, v5);
          v51 = 0;
LABEL_35:
          v68 = v49 + 1;
          __swift_storeEnumTagSinglePayload(v22, v51, 1, v5);
        }

        sub_1BC7C1744(v2, &qword_1EBCF56B8, &unk_1BC900B80);
LABEL_39:
        v37 = v68;
        *(v1 + 16) = v68;
        continue;
      }

      break;
    }

LABEL_41:
    sub_1BC7C1744(v22, &qword_1EBCF56B8, &unk_1BC900B80);
    sub_1BC7CAD38();
    v55 = OUTLINED_FUNCTION_62_0();
    sub_1BC7C1744(v55, v56, &unk_1BC900B80);
    goto LABEL_8;
  }

LABEL_14:
  v60 = (v28 + 64) >> 6;
  while (1)
  {
    v34 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v34 >= ((v28 + 64) >> 6))
    {
      v32 = 0;
      v36 = 1;
      goto LABEL_20;
    }

    v35 = *(v27 + 8 * v34);
    ++v25;
    if (v35)
    {
      v32 = (v35 - 1) & v35;
      v33 = __clz(__rbit64(v35)) | (v34 << 6);
      v25 = v34;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1BC7F3C50(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_5_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BC7FAADC(v4, 1, sub_1BC7F7600);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_22_4();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1BC7F3D28()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v28 = v6;
  v7 = type metadata accessor for HistoryItem();
  v8 = OUTLINED_FUNCTION_26(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_0();
  v29 = v13 - v14;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_53_1();
  v16 = 0;
  v17 = v0[1];
  v27 = *v0;
  v18 = *(v17 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  while (v18 != v16)
  {
    if (v16 >= *(v17 + 16))
    {
      __break(1u);

      __break(1u);
      return;
    }

    v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v20 = *(v10 + 72);
    sub_1BC7FB138(v17 + v19 + v20 * v16, v1);
    if (v5(v1))
    {
      sub_1BC7FB19C(v1);
      ++v16;
    }

    else
    {
      sub_1BC7FBC68(v1, v29);
      v21 = v30;
      v32 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = *(v30 + 16);
        sub_1BC7DDA7C();
        v21 = v32;
      }

      v23 = *(v21 + 16);
      v24 = v23 + 1;
      if (v23 >= *(v21 + 24) >> 1)
      {
        v31 = v23 + 1;
        v26 = *(v21 + 16);
        sub_1BC7DDA7C();
        v24 = v31;
        v23 = v26;
        v21 = v32;
      }

      ++v16;
      *(v21 + 16) = v24;
      v30 = v21;
      sub_1BC7FBC68(v29, v21 + v19 + v23 * v20);
    }
  }

  if (*(v30 + 16))
  {
    v32 = v30;

    sub_1BC7F80FC(&v32);

    v25 = v32;
    *v28 = v27;
    v28[1] = v25;
  }

  else
  {

    *v28 = 0;
    v28[1] = 0;
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC7F3F64()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v69 = sub_1BC8F7324();
  v6 = OUTLINED_FUNCTION_0(v69);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_4();
  v68 = v11;
  OUTLINED_FUNCTION_19_6();
  v75 = sub_1BC8F7264();
  v12 = OUTLINED_FUNCTION_0(v75);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  v17 = v16 - v15;
  v74 = type metadata accessor for HistoryItem();
  v18 = OUTLINED_FUNCTION_0(v74);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_20_0();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v25);
  v28 = v63 - v27;
  v29 = *v0;
  v30 = v0[1];
  v31 = *(v3 + 16);
  if (v31)
  {
    v63[1] = v29;
    v64 = v5;
    v73 = v8;
    v32 = v26;

    v34 = sub_1BC7F4638(v33, sub_1BC7F4444, 0);
    v63[0] = 0;
    v35 = *(v32 + 80);
    OUTLINED_FUNCTION_25_1();
    v37 = v3 + v36;
    v38 = *(v32 + 72);
    v66 = (v73 + 1);
    v67 = (v73 + 4);
    v72 = v38;
    v73 = (v39 + 16);
    v65 = v39;
    v70 = v1;
    v71 = (v39 + 8);
    do
    {
      sub_1BC7FB138(v37, v28);
      sub_1BC7FB138(v28, v1);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v40 = *v1;
        v41 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        (*v73)(v17, &v40[v41], v75);
      }

      else
      {
        v42 = OUTLINED_FUNCTION_18_4();
        v41 = v69;
        v43(v42, v1, v69);
        sub_1BC8F7314();
        v44 = OUTLINED_FUNCTION_18_4();
        v45(v44, v41);
      }

      sub_1BC7FB138(v28, v23);
      swift_isUniquelyReferenced_nonNull_native();
      v76 = v34;
      v46 = sub_1BC83C928();
      if (__OFADD__(*(v34 + 16), (v47 & 1) == 0))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        sub_1BC8F8B44();
        __break(1u);
        goto LABEL_23;
      }

      v41 = v46;
      v23 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5688, &unk_1BC900B48);
      if (sub_1BC8F8734())
      {
        v48 = sub_1BC83C928();
        if ((v23 & 1) != (v49 & 1))
        {
          goto LABEL_22;
        }

        v41 = v48;
      }

      v34 = v76;
      if (v23)
      {
        v50 = OUTLINED_FUNCTION_40_3();
        sub_1BC7FBCCC(v50, v51);
        (*v71)(v17, v75);
        sub_1BC7FB19C(v28);
      }

      else
      {
        *(v76 + 8 * (v41 >> 6) + 64) |= 1 << v41;
        v52 = v65;
        v53 = v75;
        (*(v65 + 16))(*(v34 + 48) + *(v65 + 72) * v41, v17, v75);
        v54 = OUTLINED_FUNCTION_40_3();
        sub_1BC7FBC68(v54, v55);
        (*(v52 + 8))(v17, v53);
        sub_1BC7FB19C(v28);
        v56 = *(v34 + 16);
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_21;
        }

        *(v34 + 16) = v58;
      }

      v37 += v41;
      --v31;
      v1 = v70;
    }

    while (v31);

    v76 = sub_1BC899A10(v59);

    v41 = v63[0];
    sub_1BC7F80FC(&v76);
    if (!v41)
    {

      v60 = v76;

      GroupedHistoryItem.init(people:items:)(v61, v60, v64);

      OUTLINED_FUNCTION_24();
      return;
    }

LABEL_23:

    __break(1u);
  }

  else
  {
    *v5 = v29;
    v5[1] = v30;

    OUTLINED_FUNCTION_24();
  }
}

uint64_t sub_1BC7F4444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC8F7324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HistoryItem();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BC7FB138(a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    v14 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    swift_beginAccess();
    v15 = sub_1BC8F7264();
    (*(*(v15 - 8) + 16))(a2, &v13[v14], v15);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1BC8F7314();
    (*(v5 + 8))(v8, v4);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56A8, &unk_1BC900B70);
  return sub_1BC7FB138(a1, a2 + *(v16 + 48));
}

uint64_t sub_1BC7F4638(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5690, &qword_1BC900B58);
    v7 = sub_1BC8F87D4();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v10 = v7;
  sub_1BC7FAB54(a1, a2, a3, 1, &v10);
  v8 = v10;
  if (v3)
  {
  }

  return v8;
}

void sub_1BC7F46E8()
{
  OUTLINED_FUNCTION_22();
  v49 = v2;
  v47 = v3;
  v4 = sub_1BC8F7324();
  v5 = OUTLINED_FUNCTION_0(v4);
  v48 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v12 = type metadata accessor for HistoryItem();
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_56_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v46 - v17);
  v19 = sub_1BC8F71E4();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_0();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_53_1();
  sub_1BC7FB138(v47, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v18;
    v47 = v4;
    v30 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v31 = &v29[v30];
    v4 = v47;
    (*(v22 + 16))(v0, v31, v19);

    v32 = v48;
  }

  else
  {
    v47 = v19;
    v33 = v48;
    v34 = *(v48 + 32);
    v35 = OUTLINED_FUNCTION_20_5();
    v36(v35);
    sub_1BC8F7304();
    v37 = *(v33 + 8);
    v38 = OUTLINED_FUNCTION_31_3();
    v39(v38);
    v32 = v33;
    v19 = v47;
  }

  sub_1BC7FB138(v49, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v1;
    v41 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    (*(v22 + 16))(v27, &v40[v41], v19);
  }

  else
  {
    (*(v32 + 32))(v11, v1, v4);
    sub_1BC8F7304();
    v42 = *(v32 + 8);
    v43 = OUTLINED_FUNCTION_31_3();
    v44(v43);
  }

  sub_1BC8F7184();
  v45 = *(v22 + 8);
  v45(v27, v19);
  v45(v0, v19);
  OUTLINED_FUNCTION_23();
}

void GroupedHistoryItem.description.getter()
{
  OUTLINED_FUNCTION_29_0();
  v70 = *MEMORY[0x1E69E9840];
  v3 = sub_1BC8F7C64();
  v4 = OUTLINED_FUNCTION_25(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_19_6();
  v7 = sub_1BC8F7264();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_4();
  v63 = v13;
  OUTLINED_FUNCTION_19_6();
  v14 = type metadata accessor for HistoryItem();
  v15 = OUTLINED_FUNCTION_26(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_53_1();
  v21 = *v0;
  v22 = *(v0 + 8);
  v23 = sub_1BC8F6CB4();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_1BC8F6CA4();
  v64 = v21;
  sub_1BC7F1A94(v21);
  if (!*(v22 + 16))
  {
    goto LABEL_14;
  }

  v28 = v27;
  v61 = v10;
  v62 = v7;
  v29 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  sub_1BC7FB138(v22 + v29, v2);
  v30 = sub_1BC7F501C(v2, v26);
  sub_1BC7FB19C(v2);
  v66 = v17;
  v59 = v26;
  v60 = v30;
  v68 = v21;
  v69 = v22;
  v58 = v22;
  v31 = GroupedHistoryItem.coalescedItems.getter();
  v32 = *(v31 + 16);
  if (v32)
  {
    v57 = v28;
    v67 = MEMORY[0x1E69E7CC0];
    sub_1BC7DD9E4(0, v32, 0);
    v33 = 0;
    v34 = v67;
    v65 = v31 + v29;
    while (v33 < *(v31 + 16))
    {
      v35 = v34;
      sub_1BC7FB138(v65 + *(v66 + 72) * v33, v1);
      v36 = sub_1BC7F501C(v1, v26);
      v37 = v31;
      sub_1BC7FB19C(v1);
      v34 = v35;
      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1BC7DD9E4(v38 > 1, v39 + 1, 1);
        v26 = v59;
        v34 = v35;
      }

      ++v33;
      *(v34 + 16) = v39 + 1;
      *(v34 + 8 * v39 + 32) = v36;
      v31 = v37;
      if (v32 == v33)
      {
        v40 = v34;

        v28 = v57;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55B0, &qword_1BC90A130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FC240;
  *(inited + 32) = 0x4449657571696E75;
  *(inited + 40) = 0xE800000000000000;
  v68 = v64;
  v69 = v58;
  GroupedHistoryItem.uniqueID.getter();
  v42 = sub_1BC8F7204();
  v44 = v43;
  (*(v61 + 8))(v63, v62);
  v45 = MEMORY[0x1E69E6158];
  *(inited + 48) = v42;
  *(inited + 56) = v44;
  *(inited + 72) = v45;
  *(inited + 80) = 0x656C706F6570;
  *(inited + 88) = 0xE600000000000000;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  *(inited + 96) = v28;
  *(inited + 120) = v46;
  strcpy((inited + 128), "mostRecentItem");
  *(inited + 143) = -18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5030, &unk_1BC8FC7D0);
  *(inited + 144) = v60;
  *(inited + 168) = v47;
  strcpy((inited + 176), "coalescedItems");
  *(inited + 191) = -18;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55B8, &qword_1BC900668);
  *(inited + 192) = v40;

  sub_1BC8F7AD4();
  v48 = objc_opt_self();
  v49 = sub_1BC8F7A94();
  v68 = 0;
  v50 = [v48 dataWithJSONObject:v49 options:1 error:&v68];

  v51 = v68;
  if (v50)
  {
    sub_1BC8F70D4();

    sub_1BC8F7C54();
    OUTLINED_FUNCTION_69();
    v51 = sub_1BC8F7C34();
    if (v52)
    {
      v53 = OUTLINED_FUNCTION_69();
      sub_1BC7D4C94(v53, v54);

      v55 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_24();
      return;
    }

    __break(1u);
  }

  v56 = v51;
  sub_1BC8F6EA4();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1BC7F501C(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = sub_1BC8F7324();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HistoryItem();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1BC8F6C74();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1BC8F6C64();
  sub_1BC8F6C84();
  sub_1BC7FB138(a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v13;
    *&v45 = *v13;
    type metadata accessor for Message();
    sub_1BC7FBE94(&unk_1EDC20DF8);
    v17 = sub_1BC8F6C94();
    if (v2)
    {

      goto LABEL_20;
    }

    v21 = v17;
    v22 = v18;

    a2 = 0xE700000000000000;
    v23 = 0x6567617373654DLL;
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1BC7FBE94(&unk_1EBCF56C8);
    v19 = sub_1BC8F6C94();
    if (v2)
    {
      (*(v6 + 8))(v9, v5);
      goto LABEL_20;
    }

    v21 = v19;
    v22 = v20;
    (*(v6 + 8))(v9, v5);
    a2 = 0xEA00000000006C6CLL;
    v23 = 0x6143746E65636552;
  }

  v24 = objc_opt_self();
  v25 = sub_1BC8F70C4();
  *&v45 = 0;
  v26 = [v24 JSONObjectWithData:v25 options:0 error:&v45];

  if (v26)
  {
    v27 = v45;
    sub_1BC8F8474();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5030, &unk_1BC8FC7D0);
    if (swift_dynamicCast())
    {
      v28 = *&v44[0];
      *(&v46 + 1) = MEMORY[0x1E69E6158];
      *&v45 = v23;
      *(&v45 + 1) = a2;
      sub_1BC7F0E58(&v45, v44);
      swift_isUniquelyReferenced_nonNull_native();
      v43 = v28;
      sub_1BC83D5F8(v44, 0x4979726F74736968, 0xEF657079546D6574);
      a2 = v43;
      v29 = sub_1BC803CBC(0x6E61725477656E5FLL, 0xEE00747069726373);
      if (v30)
      {
        v31 = v29;
        swift_isUniquelyReferenced_nonNull_native();
        *&v44[0] = a2;
        v32 = *(a2 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56C0, &unk_1BC900B90);
        sub_1BC8F8734();
        a2 = *&v44[0];
        v33 = *(*(*&v44[0] + 48) + 16 * v31 + 8);

        sub_1BC7F0E58((*(a2 + 56) + 32 * v31), &v45);
        sub_1BC8F8754();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      sub_1BC7C1744(&v45, &unk_1EBCF5E50, &qword_1BC8FE850);
      v35 = sub_1BC803CBC(0x656373656C616F63, 0xEE00736C6C614364);
      if (v36)
      {
        v37 = v35;
        swift_isUniquelyReferenced_nonNull_native();
        *&v44[0] = a2;
        v38 = *(a2 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56C0, &unk_1BC900B90);
        sub_1BC8F8734();
        a2 = *&v44[0];
        v39 = *(*(*&v44[0] + 48) + 16 * v37 + 8);

        sub_1BC7F0E58((*(a2 + 56) + 32 * v37), &v45);
        sub_1BC8F8754();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      sub_1BC7C1744(&v45, &unk_1EBCF5E50, &qword_1BC8FE850);
    }

    else
    {

      a2 = sub_1BC8F7AD4();
    }

    sub_1BC7D4C94(v21, v22);
  }

  else
  {
    v34 = v45;

    sub_1BC8F6EA4();

    swift_willThrow();
    sub_1BC7D4C94(v21, v22);
  }

LABEL_20:
  v40 = *MEMORY[0x1E69E9840];
  return a2;
}

void static GroupedHistoryItem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1BC7F5C04(*a1, *a2);
  if (v4)
  {

    sub_1BC7DB564();
  }
}

void sub_1BC7F56A4()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_1BC8F73D4();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_4();
  v46 = v12;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  if (v4 == v2 || *(v4 + 16) != *(v2 + 16))
  {
LABEL_20:
    OUTLINED_FUNCTION_24();
  }

  else
  {
    v16 = 0;
    v17 = *(v4 + 56);
    v36 = v4 + 56;
    v18 = 1 << *(v4 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = (v18 + 63) >> 6;
    v42 = v8 + 32;
    v44 = v2 + 56;
    v45 = v8 + 16;
    v21 = (v8 + 8);
    v37 = v20;
    v38 = &v35 - v14;
    v39 = v8;
    v40 = v4;
    if ((v19 & v17) != 0)
    {
      while (2)
      {
        OUTLINED_FUNCTION_82_0();
        v41 = v23;
LABEL_13:
        v26 = *(v4 + 48);
        v43 = *(v8 + 72);
        v27 = *(v8 + 16);
        v27(v15, v26 + v43 * (v22 | (v16 << 6)), v5);
        (*(v8 + 32))(v46, v15, v5);
        v28 = *(v2 + 40);
        OUTLINED_FUNCTION_21_6();
        sub_1BC7FBE94(&unk_1EBCF5678);
        v29 = sub_1BC8F7B54();
        v30 = v2;
        v31 = ~(-1 << *(v2 + 32));
        do
        {
          v32 = v29 & v31;
          if (((*(v44 + (((v29 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v31)) & 1) == 0)
          {
            (*v21)(v46, v5);
            goto LABEL_20;
          }

          v27(v0, *(v30 + 48) + v32 * v43, v5);
          OUTLINED_FUNCTION_21_6();
          sub_1BC7FBE94(&unk_1EBCF6510);
          v33 = sub_1BC8F7BC4();
          v34 = *v21;
          (*v21)(v0, v5);
          v29 = v32 + 1;
        }

        while ((v33 & 1) == 0);
        v34(v46, v5);
        v2 = v30;
        v8 = v39;
        v4 = v40;
        v20 = v37;
        v15 = v38;
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v20)
      {
        goto LABEL_20;
      }

      ++v24;
      if (*(v36 + 8 * v16))
      {
        OUTLINED_FUNCTION_24_5();
        v41 = v25;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BC7F59BC(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = (v5 + 63) >> 6;
  v33 = a2 + 56;
  v29 = result;
  if ((v6 & *(result + 56)) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    OUTLINED_FUNCTION_82_0();
    v31 = v10;
LABEL_13:
    v13 = *(*(v8 + 48) + 8 * (v9 | (v3 << 6)));
    v14 = *(v2 + 40);
    sub_1BC8F8C04();
    v15 = *(v13 + 16);
    MEMORY[0x1BFB2A020](v15);
    if (v15)
    {

      v16 = (v13 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;

        sub_1BC8F7CD4();

        v16 += 2;
        --v15;
      }

      while (v15);
    }

    else
    {
    }

    v19 = sub_1BC8F8C64();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    if (((*(v33 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_36:

      return 0;
    }

    v32 = ~v20;
    v22 = *(v13 + 16);
    v23 = *(v2 + 48);
    while (1)
    {
      v24 = *(v23 + 8 * v21);
      if (*(v24 + 16) == v22)
      {
        break;
      }

LABEL_31:
      v21 = (v21 + 1) & v32;
      if (((*(v33 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if (v22 && v24 != v13)
    {
      v25 = (v24 + 40);
      v26 = (v13 + 40);
      v27 = v22;
      do
      {
        v28 = *(v25 - 1) == *(v26 - 1) && *v25 == *v26;
        if (!v28 && (sub_1BC8F8AA4() & 1) == 0)
        {
          goto LABEL_31;
        }

        v25 += 2;
        v26 += 2;
      }

      while (--v27);
    }

    result = v29;
    v2 = a2;
  }

  while (v31);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    ++v11;
    if (*(v4 + 8 * v3))
    {
      OUTLINED_FUNCTION_24_5();
      v31 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1BC7F5C04(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v3 = 0;
      v4 = a1 + 56;
      v5 = 1 << *(a1 + 32);
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(a1 + 56);
      v8 = (v5 + 63) >> 6;
      v9 = a2 + 56;
      v54 = a2 + 56;
      v48 = v8;
      v49 = a1 + 56;
      if (v7)
      {
LABEL_7:
        v10 = __clz(__rbit64(v7));
        v45 = (v7 - 1) & v7;
LABEL_13:
        v46 = v3;
        v47 = a1;
        v14 = (*(a1 + 48) + 32 * (v10 | (v3 << 6)));
        v16 = *v14;
        v15 = v14[1];
        v17 = v14[2];
        v18 = v14[3];
        v19 = *(v2 + 40);
        sub_1BC8F8C04();

        v57 = v17;

        Person.hash(into:)();
        v20 = sub_1BC8F8C64();
        v21 = -1 << *(v2 + 32);
        v22 = v20 & ~v21;
        if ((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          if ((v57 & 0x8000000000000000) != 0)
          {
            v24 = v57;
          }

          else
          {
            v24 = v57 & 0xFFFFFFFFFFFFFF8;
          }

          v25 = (v57 & 0xFFFFFFFFFFFFFF8) + 32;
          v26 = v57 >> 62;
          if (v57 >> 62)
          {
            v25 = v24;
          }

          v50 = v25;
          v52 = v16;
          v53 = v15;
          v51 = v23;
          do
          {
            v27 = (*(v2 + 48) + 32 * v22);
            v28 = v27[2];
            v56 = v27[3];
            if (*v27 != v16 || v27[1] != v15)
            {
              v30 = v27[1];
              if ((sub_1BC8F8AA4() & 1) == 0)
              {
                goto LABEL_53;
              }
            }

            if (v28 >> 62)
            {
              v31 = sub_1BC8F8504();
              if (v26)
              {
LABEL_56:
                v32 = sub_1BC8F8504();
                goto LABEL_28;
              }
            }

            else
            {
              v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v26)
              {
                goto LABEL_56;
              }
            }

            v32 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
            if (v31 == v32)
            {
              if (v31)
              {
                v33 = v28 & 0xFFFFFFFFFFFFFF8;
                v34 = (v28 & 0xFFFFFFFFFFFFFF8) + 32;
                if (v28 < 0)
                {
                  v33 = v28;
                }

                if (v28 >> 62)
                {
                  v34 = v33;
                }

                if (v34 != v50)
                {
                  if (v31 < 0)
                  {
                    goto LABEL_66;
                  }

                  sub_1BC7FBE50();

                  v35 = 4;
                  while (1)
                  {
                    v36 = v35 - 4;
                    v37 = v35 - 3;
                    if (__OFADD__(v35 - 4, 1))
                    {
                      break;
                    }

                    if ((v28 & 0xC000000000000001) != 0)
                    {
                      v38 = MEMORY[0x1BFB29A00](v35 - 4, v28);
                    }

                    else
                    {
                      if (v36 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_63;
                      }

                      v38 = *(v28 + 8 * v35);
                    }

                    v39 = v38;
                    if ((v57 & 0xC000000000000001) != 0)
                    {
                      v40 = MEMORY[0x1BFB29A00](v35 - 4, v57);
                    }

                    else
                    {
                      if (v36 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_64;
                      }

                      v40 = *(v57 + 8 * v35);
                    }

                    v41 = v40;
                    v42 = sub_1BC8F83A4();

                    if ((v42 & 1) == 0)
                    {

                      v9 = v54;
                      v2 = a2;
                      v16 = v52;
                      v15 = v53;
                      v26 = v57 >> 62;
                      v23 = v51;
                      goto LABEL_53;
                    }

                    ++v35;
                    if (v37 == v31)
                    {
                      goto LABEL_50;
                    }
                  }

                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
                  goto LABEL_65;
                }
              }

LABEL_50:
              sub_1BC7F56A4();
              v44 = v43;

              v9 = v54;
              v2 = a2;
              v16 = v52;
              v15 = v53;
              v26 = v57 >> 62;
              v23 = v51;
              if (v44)
              {

                v3 = v46;
                a1 = v47;
                v8 = v48;
                v4 = v49;
                v7 = v45;
                if (v45)
                {
                  goto LABEL_7;
                }

                goto LABEL_8;
              }
            }

LABEL_53:
            v22 = (v22 + 1) & v23;
          }

          while (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
        }
      }

      else
      {
LABEL_8:
        v11 = v3;
        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v8)
          {
            return;
          }

          ++v11;
          if (*(v4 + 8 * v12))
          {
            OUTLINED_FUNCTION_24_5();
            v45 = v13;
            goto LABEL_13;
          }
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
      }
    }
  }
}