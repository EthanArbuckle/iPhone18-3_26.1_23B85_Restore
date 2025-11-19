unint64_t sub_22FF331A4()
{
  result = qword_27DAF2DD8;
  if (!qword_27DAF2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2DD8);
  }

  return result;
}

unint64_t sub_22FF331FC()
{
  result = qword_27DAF2DE0;
  if (!qword_27DAF2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2DE0);
  }

  return result;
}

unint64_t sub_22FF33254()
{
  result = qword_27DAF2DE8;
  if (!qword_27DAF2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2DE8);
  }

  return result;
}

unint64_t sub_22FF332DC()
{
  result = qword_27DAF2E00;
  if (!qword_27DAF2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E00);
  }

  return result;
}

unint64_t sub_22FF33334()
{
  result = qword_27DAF2E08;
  if (!qword_27DAF2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E08);
  }

  return result;
}

unint64_t sub_22FF3338C()
{
  result = qword_27DAF2E10;
  if (!qword_27DAF2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E10);
  }

  return result;
}

unint64_t sub_22FF33414()
{
  result = qword_27DAF2E28;
  if (!qword_27DAF2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E28);
  }

  return result;
}

unint64_t sub_22FF3346C()
{
  result = qword_27DAF2E30;
  if (!qword_27DAF2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E30);
  }

  return result;
}

unint64_t sub_22FF334C4()
{
  result = qword_27DAF2E38;
  if (!qword_27DAF2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E38);
  }

  return result;
}

unint64_t sub_22FF3354C()
{
  result = qword_27DAF2E50;
  if (!qword_27DAF2E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E50);
  }

  return result;
}

void sub_22FF33DA8()
{
  sub_22FF33F9C(319, &qword_27DAF2EE0, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22FF33F9C(319, &qword_27DAF2EE8, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22FFB0F88();
      if (v2 <= 0x3F)
      {
        sub_22FF33F9C(319, &qword_28148F1D8, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22FF33F9C(319, &qword_27DAF2EF0, MEMORY[0x277D21610], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_22FF33F9C(319, &qword_27DAF2EF8, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22FF33F9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22FF340A4()
{
  sub_22FFB0F88();
  if (v0 <= 0x3F)
  {
    sub_22FF33F9C(319, &qword_27DAF2F20, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22FF34194();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FF34194()
{
  if (!qword_281491340)
  {
    v0 = sub_22FFB1888();
    if (!v1)
    {
      atomic_store(v0, &qword_281491340);
    }
  }
}

uint64_t sub_22FF3421C()
{
  result = sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FF342B8()
{
  result = sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF3435C()
{
  sub_22FF33F9C(319, &qword_28148F148, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF34438()
{
  sub_22FFB0F88();
  if (v0 <= 0x3F)
  {
    sub_22FF33F9C(319, qword_28148F820, type metadata accessor for Proto_TransparencyProofs, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t PrivateCloudCompute_Environment.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >= 0xA)
  {
    if (result > 97)
    {
      if (result == 98)
      {
        v2 = 1;
        result = 12;
        goto LABEL_3;
      }

      if (result == 99)
      {
        v2 = 1;
        result = 13;
        goto LABEL_3;
      }
    }

    else
    {
      if (result == 96)
      {
        v2 = 1;
        result = 10;
        goto LABEL_3;
      }

      if (result == 97)
      {
        v2 = 1;
        result = 11;
        goto LABEL_3;
      }
    }

    v2 = 0;
    goto LABEL_3;
  }

  v2 = 1;
LABEL_3:
  *a2 = result;
  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t PrivateCloudCompute_Environment.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFBB5A8[result];
  }

  return result;
}

uint64_t sub_22FF34600()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFBB5A8[result];
  }

  return result;
}

void sub_22FF34638(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_22FFBB5A8[v2];
  }

  *a1 = v2;
}

uint64_t sub_22FF3465C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF05888();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22FF346C4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2FA8);
  __swift_project_value_buffer(v0, qword_27DAF2FA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_22FFBB3D0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 0;
  *v5 = "UNSPECIFIED";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v34 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PRODUCTION";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v34 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CARRY";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v34 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "STAGING";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v34 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "QA";
  *(v15 + 1) = 2;
  v15[16] = 2;
  v8();
  v16 = (v34 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "PERF";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v34 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "EPHEMERAL";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v34 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "DEV";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v8();
  v22 = v34 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "LIVEON";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  v8();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "QUARANTINE";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 96;
  *v26 = "QA1_PRIMARY";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 97;
  *v28 = "QA1_INTERNAL";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 98;
  *v30 = "QA2_PRIMARY";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v8();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 99;
  *v32 = "QA2_INTERNAL";
  *(v32 + 1) = 12;
  v32[16] = 2;
  v8();
  return sub_22FFB12A8();
}

uint64_t static PrivateCloudCompute_Environment._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAF13D0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB12C8();
  v3 = __swift_project_value_buffer(v2, qword_27DAF2FA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_22FF34C14()
{
  result = qword_27DAF2FC0;
  if (!qword_27DAF2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2FC0);
  }

  return result;
}

unint64_t sub_22FF34C6C()
{
  result = qword_27DAF2FC8;
  if (!qword_27DAF2FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2FC8);
  }

  return result;
}

unint64_t sub_22FF34CC4()
{
  result = qword_27DAF2FD0;
  if (!qword_27DAF2FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF2FD8, &qword_22FFBB428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2FD0);
  }

  return result;
}

unint64_t sub_22FF34D2C()
{
  result = qword_27DAF2FE0;
  if (!qword_27DAF2FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2FE0);
  }

  return result;
}

uint64_t sub_22FF34D80@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAF13D0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB12C8();
  v3 = __swift_project_value_buffer(v2, qword_27DAF2FA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t LogEntry.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = xmmword_22FFB33B0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v2 = type metadata accessor for LogEntry(0);
  v3 = a1 + *(v2 + 36);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(v2 + 40);
  v5 = type metadata accessor for SignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t SignedObject.init()@<X0>(char *a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  v2 = type metadata accessor for SignedObject(0);
  v3 = &a1[*(v2 + 20)];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Signature(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

BOOL LogEntry.hasSlh.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for LogEntry(0);
  sub_22FEBF3A4(v0 + *(v5 + 40), v4, &qword_27DAF2338, &unk_22FFBB620);
  v6 = type metadata accessor for SignedObject(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22FEAEA34(v4, &qword_27DAF2338, &unk_22FFBB620);
  return v7;
}

uint64_t LogEntry.slh.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for LogEntry(0);
  sub_22FEBF3A4(v1 + *(v7 + 40), v6, &qword_27DAF2338, &unk_22FFBB620);
  v8 = type metadata accessor for SignedObject(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF36190(v6, a1, type metadata accessor for SignedObject);
  }

  *a1 = xmmword_22FFB33B0;
  v10 = &a1[*(v8 + 20)];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v11 = *(v8 + 24);
  v12 = type metadata accessor for Signature(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

BOOL SignedObject.hasSignature.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for SignedObject(0);
  sub_22FEBF3A4(v0 + *(v5 + 24), v4, &qword_27DAF2A48, &qword_22FFB9178);
  v6 = type metadata accessor for Signature(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22FEAEA34(v4, &qword_27DAF2A48, &qword_22FFB9178);
  return v7;
}

uint64_t SignedObject.signature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for SignedObject(0);
  sub_22FEBF3A4(v1 + *(v7 + 24), v6, &qword_27DAF2A48, &qword_22FFB9178);
  v8 = type metadata accessor for Signature(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF36190(v6, a1, type metadata accessor for Signature);
  }

  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = xmmword_22FFB33B0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v10 = a1 + *(v8 + 28);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2A48, &qword_22FFB9178);
  }

  return result;
}

unint64_t ProtocolVersion.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 4;
  if (result != 999999999)
  {
    v2 = result;
  }

  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  v3 = result < 4 || result == 999999999;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t ProtocolVersion.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFBDB58[result];
  }

  return result;
}

uint64_t sub_22FF3554C()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFBDB58[result];
  }

  return result;
}

void sub_22FF35584(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_22FFBDB58[v2];
  }

  *a1 = v2;
}

uint64_t sub_22FF355A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF03C58();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_22FF355F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFBDB58[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_22FFBDB58[v3];
  }

  return v2 == v3;
}

unint64_t Application.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 7;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF35684(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF03CAC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Status.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 4)
  {
    switch(result)
    {
      case 5:
        v2 = 1;
        result = 4;
        goto LABEL_15;
      case 6:
        v2 = 1;
        result = 5;
        goto LABEL_15;
      case 7:
        v2 = 1;
        result = 6;
        goto LABEL_15;
    }

LABEL_12:
    v2 = 0;
    goto LABEL_15;
  }

  if (result < 2)
  {
    v2 = 1;
    goto LABEL_15;
  }

  if (result == 3)
  {
    v2 = 1;
    result = 2;
    goto LABEL_15;
  }

  if (result != 4)
  {
    goto LABEL_12;
  }

  v2 = 1;
  result = 3;
LABEL_15:
  *a2 = result;
  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Status.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFBDB20[result];
  }

  return result;
}

uint64_t sub_22FF357AC()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFBDB20[result];
  }

  return result;
}

void sub_22FF357E4(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_22FFBDB20[v2];
  }

  *a1 = v2;
}

uint64_t sub_22FF35808(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04D78();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t VRFType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  if (result)
  {
    v3 = result == 3;
  }

  else
  {
    v3 = 1;
  }

  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t VRFType.rawValue.getter()
{
  v1 = 3;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_22FF358CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result == 0;
  if (result == 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  *a2 = v3;
  if (result == 3)
  {
    v2 = 1;
  }

  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF358F8()
{
  v1 = 3;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t *sub_22FF35928@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result == 0;
  v4 = *result == 3;
  if (*result == 3)
  {
    v2 = 1;
  }

  *a2 = v2;
  v5 = v4 || v3;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

void sub_22FF35958(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 3;
  if (!*v1)
  {
    v3 = 0;
  }

  if (*(v1 + 8))
  {
    v2 = v3;
  }

  *a1 = v2;
}

uint64_t sub_22FF3597C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF46A04();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_22FF359C8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 8))
  {
    v2 = v3;
  }

  if (*a2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (!*(a2 + 8))
  {
    v4 = *a2;
  }

  return v2 == v4;
}

unint64_t LogType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF35A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4C33C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t MapType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t MapType.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_22FF35AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4C7C8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t NodeType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF35B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF058DC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void VRFWitness.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t VRFWitness.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t VRFWitness.output.getter()
{
  v1 = *(v0 + 16);
  sub_22FEA5608(v1, *(v0 + 24));
  return v1;
}

uint64_t VRFWitness.output.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t VRFWitness.proof.getter()
{
  v1 = *(v0 + 32);
  sub_22FEA5608(v1, *(v0 + 40));
  return v1;
}

uint64_t VRFWitness.proof.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t VRFWitness.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_22FFB33B0;
  *(a1 + 32) = xmmword_22FFB33B0;
  v1 = a1 + *(type metadata accessor for VRFWitness(0) + 28);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

void VRFPublicKey.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t VRFPublicKey.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void Signature.algorithm.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t Signature.algorithm.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_22FF35F78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF36014(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FF360F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE68();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Signature.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = xmmword_22FFB33B0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v1 = a1 + *(type metadata accessor for Signature(0) + 28);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF36190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SignedObject.object.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t SignedObject.object.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_22FF362C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for SignedObject(0);
  sub_22FEBF3A4(a1 + *(v8 + 24), v7, &qword_27DAF2A48, &qword_22FFB9178);
  v9 = type metadata accessor for Signature(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22FF36190(v7, a2, type metadata accessor for Signature);
  }

  *a2 = xmmword_22FFB33B0;
  *(a2 + 16) = xmmword_22FFB33B0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v11 = a2 + *(v9 + 28);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2A48, &qword_22FFB9178);
  }

  return result;
}

uint64_t sub_22FF36438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signature(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v8, type metadata accessor for Signature);
  v9 = *(type metadata accessor for SignedObject(0) + 24);
  sub_22FEAEA34(a2 + v9, &qword_27DAF2A48, &qword_22FFB9178);
  sub_22FF36190(v8, a2 + v9, type metadata accessor for Signature);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t SignedObject.signature.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SignedObject(0) + 24);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2A48, &qword_22FFB9178);
  sub_22FF36190(a1, v1 + v3, type metadata accessor for Signature);
  v4 = type metadata accessor for Signature(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*SignedObject.signature.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Signature(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for SignedObject(0) + 24);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2A48, &qword_22FFB9178);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    *(v14 + 16) = xmmword_22FFB33B0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    v17 = v14 + *(v9 + 28);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2A48, &qword_22FFB9178);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for Signature);
  }

  return sub_22FF3684C;
}

Swift::Void __swiftcall SignedObject.clearSignature()()
{
  v1 = *(type metadata accessor for SignedObject(0) + 24);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2A48, &qword_22FFB9178);
  v2 = type metadata accessor for Signature(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void LogHead.logType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t LogHead.logType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

void LogHead.application.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t LogHead.application.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t LogHead.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xC000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  v2 = type metadata accessor for LogHead(0);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v3 = a1 + *(v2 + 48);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF36C2C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for LogEntry(0);
  sub_22FEBF3A4(a1 + *(v8 + 40), v7, &qword_27DAF2338, &unk_22FFBB620);
  v9 = type metadata accessor for SignedObject(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22FF36190(v7, a2, type metadata accessor for SignedObject);
  }

  *a2 = xmmword_22FFB33B0;
  v11 = &a2[*(v9 + 20)];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Signature(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

uint64_t sub_22FF36DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v8, type metadata accessor for SignedObject);
  v9 = *(type metadata accessor for LogEntry(0) + 40);
  sub_22FEAEA34(a2 + v9, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FF36190(v8, a2 + v9, type metadata accessor for SignedObject);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t LogEntry.slh.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LogEntry(0) + 40);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FF36190(a1, v1 + v3, type metadata accessor for SignedObject);
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*LogEntry.slh.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SignedObject(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for LogEntry(0) + 40);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2338, &unk_22FFBB620);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    v17 = &v14[*(v9 + 20)];
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v18 = *(v9 + 24);
    v19 = type metadata accessor for Signature(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for SignedObject);
  }

  return sub_22FF4F568;
}

uint64_t sub_22FF37224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF3728C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall LogEntry.clearSlh()()
{
  v1 = *(type metadata accessor for LogEntry(0) + 40);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2338, &unk_22FFBB620);
  v2 = type metadata accessor for SignedObject(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t LogEntry.hashesOfPeersInPathToRoot.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t LogEntry.nodeBytes.getter()
{
  v1 = *(v0 + 24);
  sub_22FEA5608(v1, *(v0 + 32));
  return v1;
}

uint64_t LogEntry.nodeBytes.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t LogEntry.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LogEntry(0) + 36);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LogEntry.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LogEntry(0) + 36);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MapHead.mapHeadHash.getter()
{
  v1 = *(v0 + 8);
  sub_22FEA5608(v1, *(v0 + 16));
  return v1;
}

uint64_t MapHead.mapHeadHash.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void MapHead.application.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t MapHead.application.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t MapHead.changeLogHead.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for MapHead(0);
  sub_22FEBF3A4(v1 + *(v7 + 52), v6, &qword_27DAF31A8, &qword_22FFBB630);
  v8 = type metadata accessor for LogHead(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF36190(v6, a1, type metadata accessor for LogHead);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xC000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v10 = a1 + *(v8 + 48);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF31A8, &qword_22FFBB630);
  }

  return result;
}

uint64_t sub_22FF37868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogHead(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v8, type metadata accessor for LogHead);
  v9 = *(type metadata accessor for MapHead(0) + 52);
  sub_22FEAEA34(a2 + v9, &qword_27DAF31A8, &qword_22FFBB630);
  sub_22FF36190(v8, a2 + v9, type metadata accessor for LogHead);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t MapHead.changeLogHead.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MapHead(0) + 52);
  sub_22FEAEA34(v1 + v3, &qword_27DAF31A8, &qword_22FFBB630);
  sub_22FF36190(a1, v1 + v3, type metadata accessor for LogHead);
  v4 = type metadata accessor for LogHead(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*MapHead.changeLogHead.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for LogHead(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for MapHead(0) + 52);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF31A8, &qword_22FFBB630);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0xC000000000000000;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 1;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    *(v14 + 72) = 0;
    *(v14 + 80) = 0;
    v17 = v14 + *(v9 + 48);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF31A8, &qword_22FFBB630);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for LogHead);
  }

  return sub_22FF37C88;
}

BOOL MapHead.hasChangeLogHead.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for MapHead(0);
  sub_22FEBF3A4(v0 + *(v5 + 52), v4, &qword_27DAF31A8, &qword_22FFBB630);
  v6 = type metadata accessor for LogHead(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22FEAEA34(v4, &qword_27DAF31A8, &qword_22FFBB630);
  return v7;
}

Swift::Void __swiftcall MapHead.clearChangeLogHead()()
{
  v1 = *(type metadata accessor for MapHead(0) + 52);
  sub_22FEAEA34(v0 + v1, &qword_27DAF31A8, &qword_22FFBB630);
  v2 = type metadata accessor for LogHead(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void MapHead.mapType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t MapHead.mapType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_22FF37F54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 48);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF37FF0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t MapHead.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_22FFB6370;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v2 = type metadata accessor for MapHead(0);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v3 = a1 + *(v2 + 48);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(v2 + 52);
  v5 = type metadata accessor for LogHead(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t MapEntry.smh.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for MapEntry(0);
  sub_22FEBF3A4(v1 + *(v7 + 28), v6, &qword_27DAF2338, &unk_22FFBB620);
  v8 = type metadata accessor for SignedObject(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF36190(v6, a1, type metadata accessor for SignedObject);
  }

  *a1 = xmmword_22FFB33B0;
  v10 = &a1[*(v8 + 20)];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v11 = *(v8 + 24);
  v12 = type metadata accessor for Signature(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

uint64_t sub_22FF38330@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for MapEntry(0);
  sub_22FEBF3A4(a1 + *(v8 + 28), v7, &qword_27DAF2338, &unk_22FFBB620);
  v9 = type metadata accessor for SignedObject(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22FF36190(v7, a2, type metadata accessor for SignedObject);
  }

  *a2 = xmmword_22FFB33B0;
  v11 = &a2[*(v9 + 20)];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Signature(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

uint64_t sub_22FF384DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v8, type metadata accessor for SignedObject);
  v9 = *(type metadata accessor for MapEntry(0) + 28);
  sub_22FEAEA34(a2 + v9, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FF36190(v8, a2 + v9, type metadata accessor for SignedObject);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t MapEntry.smh.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MapEntry(0) + 28);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FF36190(a1, v1 + v3, type metadata accessor for SignedObject);
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*MapEntry.smh.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SignedObject(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for MapEntry(0) + 28);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2338, &unk_22FFBB620);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    v17 = &v14[*(v9 + 20)];
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v18 = *(v9 + 24);
    v19 = type metadata accessor for Signature(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for SignedObject);
  }

  return sub_22FF4F568;
}

uint64_t MapEntry.hashesOfPeersInPathToRoot.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_22FF38A2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF38AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t MapEntry.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_22FFB33B0;
  v2 = type metadata accessor for MapEntry(0);
  v3 = a1 + *(v2 + 24);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for SignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t InclusionProof.mapEntry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for InclusionProof(0) + 20));
  v8 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEBF3A4(v7 + v8, v6, &qword_27DAF31B0, &unk_22FFBB638);
  v9 = type metadata accessor for MapEntry(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22FF36190(v6, a1, type metadata accessor for MapEntry);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_22FFB33B0;
  v11 = a1 + *(v9 + 24);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v12 = *(v9 + 28);
  v13 = type metadata accessor for SignedObject(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF31B0, &unk_22FFBB638);
  }

  return result;
}

uint64_t sub_22FF38E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for MapEntry(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v12, type metadata accessor for MapEntry);
  v13 = *(type metadata accessor for InclusionProof(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for InclusionProof._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22FF44578(v16);
    *(a2 + v13) = v16;
  }

  sub_22FF36190(v12, v7, type metadata accessor for MapEntry);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v16 + v20, &qword_27DAF31B0, &unk_22FFBB638);
  return swift_endAccess();
}

uint64_t InclusionProof.mapEntry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for InclusionProof(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for InclusionProof._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22FF44578(v11);
    *(v2 + v8) = v11;
  }

  sub_22FF36190(a1, v7, type metadata accessor for MapEntry);
  v15 = type metadata accessor for MapEntry(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v11 + v16, &qword_27DAF31B0, &unk_22FFBB638);
  return swift_endAccess();
}

void (*InclusionProof.mapEntry.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for MapEntry(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for InclusionProof(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF31B0, &unk_22FFBB638);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = xmmword_22FFB33B0;
    v19 = v14 + *(v9 + 24);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v20 = *(v9 + 28);
    v21 = type metadata accessor for SignedObject(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF31B0, &unk_22FFBB638);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for MapEntry);
  }

  return sub_22FF39454;
}

void sub_22FF39454(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF37224(*(v2 + 120), *(v2 + 112), type metadata accessor for MapEntry);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for InclusionProof._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22FF44578(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF36190(v14, v18, type metadata accessor for MapEntry);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v7 + v19, &qword_27DAF31B0, &unk_22FFBB638);
    swift_endAccess();
    sub_22FF3728C(v13, type metadata accessor for MapEntry);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for InclusionProof._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22FF44578(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF36190(v13, v18, type metadata accessor for MapEntry);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v23 + v31, &qword_27DAF31B0, &unk_22FFBB638);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t InclusionProof.index.getter()
{
  v1 = *(v0 + *(type metadata accessor for InclusionProof(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index;
  swift_beginAccess();
  v2 = *v1;
  sub_22FEA5608(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_22FF39770@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for InclusionProof(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_22FEA5608(v4, v5);
}

uint64_t sub_22FF397D8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for InclusionProof(0) + 20);
  sub_22FEA5608(v3, v4);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for InclusionProof._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_22FF44578(v8);
    *(a2 + v5) = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v3;
  v12[1] = v4;
  return sub_22FEA55AC(v13, v14);
}

uint64_t InclusionProof.index.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for InclusionProof(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for InclusionProof._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_22FF44578(v9);
    *(v3 + v6) = v9;
  }

  v13 = (v9 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = a1;
  v13[1] = a2;
  return sub_22FEA55AC(v14, v15);
}

void (*InclusionProof.index.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for InclusionProof(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  sub_22FEA5608(v7, v8);
  return sub_22FF399F8;
}

void sub_22FF399F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_22FEA5608(*(*a1 + 72), v5);
    v7 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v2 + 96);
      v11 = *(v2 + 88);
      v12 = type metadata accessor for InclusionProof._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v9 = sub_22FF44578(v9);
      *(v11 + v10) = v9;
    }

    v15 = (v9 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
    swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];
    *v15 = v3;
    v15[1] = v5;
    sub_22FEA55AC(v16, v17);
    v18 = *(v2 + 72);
    v19 = *(v2 + 80);
  }

  else
  {
    v20 = *(v6 + v4);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v4);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 96);
      v24 = *(v2 + 88);
      v25 = type metadata accessor for InclusionProof._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v22 = sub_22FF44578(v22);
      *(v24 + v23) = v22;
    }

    v28 = (v22 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
    swift_beginAccess();
    v18 = *v28;
    v19 = v28[1];
    *v28 = v3;
    v28[1] = v5;
  }

  sub_22FEA55AC(v18, v19);

  free(v2);
}

uint64_t sub_22FF39B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for LogEntry(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v12, type metadata accessor for LogEntry);
  v13 = *(type metadata accessor for InclusionProof(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for InclusionProof._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22FF44578(v16);
    *(a2 + v13) = v16;
  }

  sub_22FF36190(v12, v7, type metadata accessor for LogEntry);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v16 + v20, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

uint64_t InclusionProof.perApplicationTreeEntry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for InclusionProof(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for InclusionProof._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22FF44578(v11);
    *(v2 + v8) = v11;
  }

  sub_22FF36190(a1, v7, type metadata accessor for LogEntry);
  v15 = type metadata accessor for LogEntry(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v11 + v16, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

void (*InclusionProof.perApplicationTreeEntry.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for LogEntry(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for InclusionProof(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = xmmword_22FFB33B0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    v19 = v14 + *(v9 + 36);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v20 = *(v9 + 40);
    v21 = type metadata accessor for SignedObject(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for LogEntry);
  }

  return sub_22FF3A184;
}

void sub_22FF3A184(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF37224(*(v2 + 120), *(v2 + 112), type metadata accessor for LogEntry);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for InclusionProof._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22FF44578(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF36190(v14, v18, type metadata accessor for LogEntry);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v7 + v19, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
    sub_22FF3728C(v13, type metadata accessor for LogEntry);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for InclusionProof._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22FF44578(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF36190(v13, v18, type metadata accessor for LogEntry);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v23 + v31, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL sub_22FF3A404(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for InclusionProof(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_22FEBF3A4(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_22FEAEA34(v12, a1, a2);
  return v16;
}

uint64_t sub_22FF3A54C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for InclusionProof(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for InclusionProof._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = sub_22FF44578(v17);
    *(v9 + v14) = v17;
  }

  v21 = a3(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_22FEFF0DC(v13, v17 + v22, a1, a2);
  return swift_endAccess();
}

uint64_t sub_22FF3A6B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for LogEntry(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v12, type metadata accessor for LogEntry);
  v13 = *(type metadata accessor for InclusionProof(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for InclusionProof._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22FF44578(v16);
    *(a2 + v13) = v16;
  }

  sub_22FF36190(v12, v7, type metadata accessor for LogEntry);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v16 + v20, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

uint64_t InclusionProof.topLevelTreeEntry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for InclusionProof(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for InclusionProof._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22FF44578(v11);
    *(v2 + v8) = v11;
  }

  sub_22FF36190(a1, v7, type metadata accessor for LogEntry);
  v15 = type metadata accessor for LogEntry(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v11 + v16, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

void (*InclusionProof.topLevelTreeEntry.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for LogEntry(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for InclusionProof(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = xmmword_22FFB33B0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    v19 = v14 + *(v9 + 36);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v20 = *(v9 + 40);
    v21 = type metadata accessor for SignedObject(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for LogEntry);
  }

  return sub_22FF3ACD8;
}

void sub_22FF3ACD8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF37224(*(v2 + 120), *(v2 + 112), type metadata accessor for LogEntry);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for InclusionProof._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22FF44578(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF36190(v14, v18, type metadata accessor for LogEntry);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v7 + v19, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
    sub_22FF3728C(v13, type metadata accessor for LogEntry);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for InclusionProof._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22FF44578(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF36190(v13, v18, type metadata accessor for LogEntry);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v23 + v31, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t sub_22FF3B008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for LogEntry(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v12, type metadata accessor for LogEntry);
  v13 = *(type metadata accessor for PatInclusionProof(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for PatInclusionProof._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22FF4676C(v16);
    *(a2 + v13) = v16;
  }

  sub_22FF36190(v12, v7, type metadata accessor for LogEntry);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v16 + v20, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

uint64_t PatInclusionProof.perApplicationTreeEntry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for PatInclusionProof(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for PatInclusionProof._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22FF4676C(v11);
    *(v2 + v8) = v11;
  }

  sub_22FF36190(a1, v7, type metadata accessor for LogEntry);
  v15 = type metadata accessor for LogEntry(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v11 + v16, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

void (*PatInclusionProof.perApplicationTreeEntry.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for LogEntry(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for PatInclusionProof(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = xmmword_22FFB33B0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    v19 = v14 + *(v9 + 36);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v20 = *(v9 + 40);
    v21 = type metadata accessor for SignedObject(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for LogEntry);
  }

  return sub_22FF3B628;
}

void sub_22FF3B628(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF37224(*(v2 + 120), *(v2 + 112), type metadata accessor for LogEntry);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for PatInclusionProof._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22FF4676C(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF36190(v14, v18, type metadata accessor for LogEntry);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v7 + v19, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
    sub_22FF3728C(v13, type metadata accessor for LogEntry);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for PatInclusionProof._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22FF4676C(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF36190(v13, v18, type metadata accessor for LogEntry);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v23 + v31, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t sub_22FF3B8B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = *(v3 + *(a1(0) + 20));
  v12 = *a2;
  swift_beginAccess();
  sub_22FEBF3A4(v11 + v12, v10, &qword_27DAF2150, &qword_22FFB5CA0);
  v13 = type metadata accessor for LogEntry(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v10, 1, v13) != 1)
  {
    return sub_22FF36190(v10, a3, type metadata accessor for LogEntry);
  }

  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = MEMORY[0x277D84F90];
  *(a3 + 24) = xmmword_22FFB33B0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  v15 = a3 + *(v13 + 36);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v16 = *(v13 + 40);
  v17 = type metadata accessor for SignedObject(0);
  (*(*(v17 - 8) + 56))(a3 + v16, 1, 1, v17);
  result = (v14)(v10, 1, v13);
  if (result != 1)
  {
    return sub_22FEAEA34(v10, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  return result;
}

uint64_t sub_22FF3BAAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for LogEntry(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v12, type metadata accessor for LogEntry);
  v13 = *(type metadata accessor for PatInclusionProof(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for PatInclusionProof._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22FF4676C(v16);
    *(a2 + v13) = v16;
  }

  sub_22FF36190(v12, v7, type metadata accessor for LogEntry);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v16 + v20, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

uint64_t PatInclusionProof.topLevelTreeEntry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for PatInclusionProof(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for PatInclusionProof._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22FF4676C(v11);
    *(v2 + v8) = v11;
  }

  sub_22FF36190(a1, v7, type metadata accessor for LogEntry);
  v15 = type metadata accessor for LogEntry(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v11 + v16, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

void (*PatInclusionProof.topLevelTreeEntry.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for LogEntry(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for PatInclusionProof(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = xmmword_22FFB33B0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    v19 = v14 + *(v9 + 36);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v20 = *(v9 + 40);
    v21 = type metadata accessor for SignedObject(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for LogEntry);
  }

  return sub_22FF3C0CC;
}

void sub_22FF3C0CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF37224(*(v2 + 120), *(v2 + 112), type metadata accessor for LogEntry);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for PatInclusionProof._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22FF4676C(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF36190(v14, v18, type metadata accessor for LogEntry);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v7 + v19, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
    sub_22FF3728C(v13, type metadata accessor for LogEntry);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for PatInclusionProof._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22FF4676C(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF36190(v13, v18, type metadata accessor for LogEntry);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v23 + v31, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL sub_22FF3C328(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for PatInclusionProof(0) + 20));
  v8 = *a1;
  swift_beginAccess();
  sub_22FEBF3A4(v7 + v8, v6, &qword_27DAF2150, &qword_22FFB5CA0);
  v9 = type metadata accessor for LogEntry(0);
  v10 = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  sub_22FEAEA34(v6, &qword_27DAF2150, &qword_22FFB5CA0);
  return v10;
}

uint64_t sub_22FF3C454(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for PatInclusionProof(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for PatInclusionProof._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22FF4676C(v11);
    *(v3 + v8) = v11;
  }

  v15 = type metadata accessor for LogEntry(0);
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = *a1;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v11 + v16, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

uint64_t sub_22FF3C5F8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_22FF3C6B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF3C754(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ChangeLogNodeV2.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  v1 = a1 + *(type metadata accessor for ChangeLogNodeV2(0) + 20);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t (*PerApplicationTreeNode.objectMapHead.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SignedObject(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PerApplicationTreeNode(0) + 20);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2338, &unk_22FFBB620);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    v17 = &v14[*(v9 + 20)];
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v18 = *(v9 + 24);
    v19 = type metadata accessor for Signature(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for SignedObject);
  }

  return sub_22FF4F568;
}

uint64_t sub_22FF3CB6C@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = a1(0);
  sub_22FEBF3A4(v2 + *(v9 + 20), v8, &qword_27DAF2338, &unk_22FFBB620);
  v10 = type metadata accessor for SignedObject(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_22FF36190(v8, a2, type metadata accessor for SignedObject);
  }

  *a2 = xmmword_22FFB33B0;
  v12 = &a2[*(v10 + 20)];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Signature(0);
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

uint64_t sub_22FF3CD1C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = a2(0);
  sub_22FEBF3A4(a1 + *(v10 + 20), v9, &qword_27DAF2338, &unk_22FFBB620);
  v11 = type metadata accessor for SignedObject(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_22FF36190(v9, a3, type metadata accessor for SignedObject);
  }

  *a3 = xmmword_22FFB33B0;
  v13 = &a3[*(v11 + 20)];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v14 = *(v11 + 24);
  v15 = type metadata accessor for Signature(0);
  (*(*(v15 - 8) + 56))(&a3[v14], 1, 1, v15);
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_22FEAEA34(v9, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

uint64_t sub_22FF3CED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for SignedObject(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v12, type metadata accessor for SignedObject);
  v13 = *(a5(0) + 20);
  sub_22FEAEA34(a2 + v13, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FF36190(v12, a2 + v13, type metadata accessor for SignedObject);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

uint64_t sub_22FF3D024(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_22FEAEA34(v2 + v4, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FF36190(a1, v2 + v4, type metadata accessor for SignedObject);
  v5 = type metadata accessor for SignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*TopLevelTreeNode.patHead.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SignedObject(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for TopLevelTreeNode(0) + 20);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2338, &unk_22FFBB620);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    v17 = &v14[*(v9 + 20)];
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v18 = *(v9 + 24);
    v19 = type metadata accessor for Signature(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for SignedObject);
  }

  return sub_22FF3D340;
}

BOOL sub_22FF3D394(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = a1(0);
  sub_22FEBF3A4(v1 + *(v7 + 20), v6, &qword_27DAF2338, &unk_22FFBB620);
  v8 = type metadata accessor for SignedObject(0);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_22FEAEA34(v6, &qword_27DAF2338, &unk_22FFBB620);
  return v9;
}

uint64_t sub_22FF3D4B0(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 20);
  sub_22FEAEA34(v1 + v2, &qword_27DAF2338, &unk_22FFBB620);
  v3 = type metadata accessor for SignedObject(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t sub_22FF3D57C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for SignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t PerApplicationTreeConfigNode.vrfPublicKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PerApplicationTreeConfigNode(0);
  sub_22FEBF3A4(v1 + *(v7 + 28), v6, &qword_27DAF31E8, &qword_22FFBB648);
  v8 = type metadata accessor for VRFPublicKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF36190(v6, a1, type metadata accessor for VRFPublicKey);
  }

  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v10 = a1 + *(v8 + 24);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF31E8, &qword_22FFBB648);
  }

  return result;
}

uint64_t sub_22FF3D770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PerApplicationTreeConfigNode(0);
  sub_22FEBF3A4(a1 + *(v8 + 28), v7, &qword_27DAF31E8, &qword_22FFBB648);
  v9 = type metadata accessor for VRFPublicKey(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22FF36190(v7, a2, type metadata accessor for VRFPublicKey);
  }

  *a2 = xmmword_22FFB33B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v11 = a2 + *(v9 + 24);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF31E8, &qword_22FFBB648);
  }

  return result;
}

uint64_t sub_22FF3D8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VRFPublicKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v8, type metadata accessor for VRFPublicKey);
  v9 = *(type metadata accessor for PerApplicationTreeConfigNode(0) + 28);
  sub_22FEAEA34(a2 + v9, &qword_27DAF31E8, &qword_22FFBB648);
  sub_22FF36190(v8, a2 + v9, type metadata accessor for VRFPublicKey);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t PerApplicationTreeConfigNode.vrfPublicKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PerApplicationTreeConfigNode(0) + 28);
  sub_22FEAEA34(v1 + v3, &qword_27DAF31E8, &qword_22FFBB648);
  sub_22FF36190(a1, v1 + v3, type metadata accessor for VRFPublicKey);
  v4 = type metadata accessor for VRFPublicKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*PerApplicationTreeConfigNode.vrfPublicKey.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for VRFPublicKey(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PerApplicationTreeConfigNode(0) + 28);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF31E8, &qword_22FFBB648);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 24);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF31E8, &qword_22FFBB648);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for VRFPublicKey);
  }

  return sub_22FF3DCF8;
}

void sub_22FF3DD34(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_22FF37224(v12, v11, a6);
    sub_22FEAEA34(v15 + v10, a3, a4);
    sub_22FF36190(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_22FF3728C(v12, a6);
  }

  else
  {
    sub_22FEAEA34(v15 + v10, a3, a4);
    sub_22FF36190(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL sub_22FF3DEAC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_22FEBF3A4(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_22FEAEA34(v12, a1, a2);
  return v15;
}

uint64_t sub_22FF3DFE4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_22FEAEA34(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t PerApplicationTreeConfigNode.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for PerApplicationTreeConfigNode(0);
  v3 = a1 + *(v2 + 24);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for VRFPublicKey(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t sub_22FF3E2B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v2 = a2 + *(a1(0) + 24);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

void LogClosedNode.earliestVersionForNextTree.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t LogClosedNode.earliestVersionForNextTree.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t LogClosedNode.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = a1 + *(type metadata accessor for LogClosedNode(0) + 24);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF3E43C()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2FE8);
  __swift_project_value_buffer(v0, qword_27DAF2FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN_VERSION";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "V1";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "V2";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "V3";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 999999999;
  *v15 = "FUTURE";
  *(v15 + 8) = 6;
  *(v15 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3E70C()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3000);
  __swift_project_value_buffer(v0, qword_27DAF3000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB7C40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN_APPLICATION";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IDS_MESSAGING";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CLOUDKIT";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "IDS_MULTIPLEX_ICLOUD";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "IDS_FACETIME";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PRIVATE_CLOUD_COMPUTE";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PRIVATE_CLOUD_COMPUTE_INTERNAL";
  *(v20 + 1) = 30;
  v20[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3EA58()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3018);
  __swift_project_value_buffer(v0, qword_27DAF3018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22FFB7C40;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "UNKNOWN_STATUS";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FFB1298();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "OK";
  *(v8 + 8) = 2;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "MUTATION_PENDING";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "ALREADY_EXISTS";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "INTERNAL_ERROR";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "INVALID_REQUEST";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "NOT_FOUND";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3ED9C()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3030);
  __swift_project_value_buffer(v0, qword_27DAF3030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN_VRF";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "ECVRF_ED25519_SHA512_Elligator2";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3EFAC()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148F5B0);
  __swift_project_value_buffer(v0, qword_28148F5B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22FFB6380;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 0;
  *v5 = "UNKNOWN_LOG";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PER_APPLICATION_CHANGE_LOG";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "PER_APPLICATION_TREE";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TOP_LEVEL_TREE";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "CT_LOG";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "AT_LOG";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3F2B4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3048);
  __swift_project_value_buffer(v0, qword_27DAF3048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN_MAP";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PER_APP_OBJECT_MAP";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3F4C4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148F3D8);
  __swift_project_value_buffer(v0, qword_28148F3D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22FFB6390;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "PACL_NODE";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PAT_NODE";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "PAT_CONFIG_NODE";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TLT_NODE";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "TLT_CONFIG_NODE";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "LOG_CLOSED_NODE";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "CT_NODE";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ATL_NODE";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3F864()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3060);
  __swift_project_value_buffer(v0, qword_27DAF3060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "output";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "proof";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t VRFWitness.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_22FFB10C8();
      }

      else if (result == 1)
      {
        sub_22FF46A04();
        sub_22FFB1098();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t VRFWitness.traverse<A>(visitor:)()
{
  if (!*v0 || (v14 = *v0, v15 = *(v0 + 8), sub_22FF46A04(), result = sub_22FFB1208(), !v1))
  {
    v3 = v0[2];
    v4 = v0[3];
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
    }

    else
    {
      if (!v5)
      {
        if ((v4 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v6 = v3;
      v7 = v3 >> 32;
    }

    if (v6 == v7)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = sub_22FFB1228();
    if (v1)
    {
      return result;
    }

LABEL_12:
    v8 = v0[4];
    v9 = v0[5];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_21;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        result = sub_22FFB1228();
        if (v1)
        {
          return result;
        }

        goto LABEL_21;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 != v12)
    {
      goto LABEL_20;
    }

LABEL_21:
    v13 = v0 + *(type metadata accessor for VRFWitness(0) + 28);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF3FD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_22FFB33B0;
  *(a2 + 32) = xmmword_22FFB33B0;
  v2 = a2 + *(a1 + 28);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF3FD9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3648, type metadata accessor for VRFWitness);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF3FE3C(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3380, type metadata accessor for VRFWitness);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF3FEA8()
{
  sub_22FF4BE20(&qword_27DAF3380, type metadata accessor for VRFWitness);

  return sub_22FFB11A8();
}

uint64_t sub_22FF3FF48()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3078);
  __swift_project_value_buffer(v0, qword_27DAF3078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "vrfKey";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t VRFPublicKey.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FFB10C8();
      }

      else if (result == 2)
      {
        sub_22FF46A04();
        sub_22FFB1098();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF402D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3640, type metadata accessor for VRFPublicKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF40378(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3398, type metadata accessor for VRFPublicKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF403E4()
{
  sub_22FF4BE20(&qword_27DAF3398, type metadata accessor for VRFPublicKey);

  return sub_22FFB11A8();
}

uint64_t sub_22FF40480()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148F358);
  __swift_project_value_buffer(v0, qword_28148F358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "signature";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "signingKeySPKIHash";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "algorithm";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t Signature.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        sub_22FF4BE68();
        sub_22FFB1098();
      }

      else if (result == 2 || result == 1)
      {
        sub_22FFB10C8();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t Signature.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_22FFB1228();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = sub_22FFB1228();
      if (v1)
      {
        return result;
      }

      goto LABEL_19;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (!*(v0 + 32) || (v14 = *(v0 + 32), v15 = *(v0 + 40), sub_22FF4BE68(), result = sub_22FFB1208(), !v1))
  {
    v13 = v0 + *(type metadata accessor for Signature(0) + 28);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF40934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  *(a2 + 16) = xmmword_22FFB33B0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v2 = a2 + *(a1 + 28);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF409B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3638, type metadata accessor for Signature);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF40A58(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_28148F348, type metadata accessor for Signature);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF40AC4()
{
  sub_22FF4BE20(&qword_28148F348, type metadata accessor for Signature);

  return sub_22FFB11A8();
}

uint64_t sub_22FF40B44()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148F398);
  __swift_project_value_buffer(v0, qword_28148F398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ECDSA_SHA256";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF40D74()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_2814909F8);
  __swift_project_value_buffer(v0, qword_2814909F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "object";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "signature";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t SignedObject.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FFB10C8();
    }

    else if (result == 2)
    {
      sub_22FF40FF0();
    }
  }

  return result;
}

uint64_t sub_22FF40FF0()
{
  v0 = *(type metadata accessor for SignedObject(0) + 24);
  type metadata accessor for Signature(0);
  sub_22FF4BE20(&qword_28148F348, type metadata accessor for Signature);
  return sub_22FFB1128();
}

uint64_t SignedObject.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_8:
    if (v11 == v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FFB1228();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_22FF4117C(v3, a1, a2, a3);
  if (!v4)
  {
    v14 = v3 + *(type metadata accessor for SignedObject(0) + 20);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF4117C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Signature(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SignedObject(0);
  sub_22FEBF3A4(a1 + *(v14 + 24), v8, &qword_27DAF2A48, &qword_22FFB9178);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2A48, &qword_22FFB9178);
  }

  sub_22FF36190(v8, v13, type metadata accessor for Signature);
  sub_22FF4BE20(&qword_28148F348, type metadata accessor for Signature);
  sub_22FFB1288();
  return sub_22FF3728C(v13, type metadata accessor for Signature);
}

uint64_t sub_22FF413E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  v4 = &a2[*(a1 + 20)];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Signature(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_22FF414C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3630, type metadata accessor for SignedObject);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF41560(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF415CC()
{
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject);

  return sub_22FFB11A8();
}

uint64_t sub_22FF41664()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3090);
  __swift_project_value_buffer(v0, qword_27DAF3090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB6390;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "logBeginningMs";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "logSize";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "logHeadHash";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "revision";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "logType";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "application";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "treeId";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "timestampMs";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t LogHead.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7 || result == 8)
          {
LABEL_4:
            sub_22FFB1108();
          }
        }

        else
        {
          if (result == 5)
          {
            sub_22FF4C33C();
          }

          else
          {
            sub_22FF03CAC();
          }

          sub_22FFB1098();
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          goto LABEL_4;
        }

        sub_22FFB10C8();
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_4;
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t LogHead.traverse<A>(visitor:)()
{
  if (*v0)
  {
    result = sub_22FFB1268();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + 8))
  {
    result = sub_22FFB1268();
    if (v1)
    {
      return result;
    }
  }

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_14;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_12;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_12:
    if (v6 == v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_13:
  result = sub_22FFB1228();
  if (v1)
  {
    return result;
  }

LABEL_14:
  if (!*(v0 + 32) || (result = sub_22FFB1268(), !v1))
  {
    v8 = v1;
    if (*(v0 + 40))
    {
      v11 = *(v0 + 40);
      v13 = *(v0 + 48);
      sub_22FF4C33C();
      result = sub_22FFB1208();
      if (v1)
      {
        return result;
      }

      v8 = 0;
    }

    if (*(v0 + 56))
    {
      v12 = *(v0 + 56);
      v14 = *(v0 + 64);
      sub_22FF03CAC();
      v9 = v8;
      result = sub_22FFB1208();
      if (v8)
      {
        return result;
      }
    }

    else
    {
      v9 = v8;
    }

    if (!*(v0 + 72) || (result = sub_22FFB1268(), !v9))
    {
      if (!*(v0 + 80) || (result = sub_22FFB1268(), !v9))
      {
        v10 = v0 + *(type metadata accessor for LogHead(0) + 48);
        return sub_22FFB0F68();
      }
    }
  }

  return result;
}

uint64_t sub_22FF41D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xC000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v2 = a2 + *(a1 + 48);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF41E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3628, type metadata accessor for LogHead);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF41EAC(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF33C0, type metadata accessor for LogHead);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF41F18()
{
  sub_22FF4BE20(&qword_27DAF33C0, type metadata accessor for LogHead);

  return sub_22FFB11A8();
}

uint64_t sub_22FF41FB0()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148F4B8);
  __swift_project_value_buffer(v0, qword_28148F4B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22FFB6380;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "logType";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FFB1298();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "slh";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "hashesOfPeersInPathToRoot";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "nodeBytes";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "nodePosition";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "nodeType";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return sub_22FFB12A8();
}

uint64_t LogEntry.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          sub_22FFB10C8();
          goto LABEL_5;
        }

        if (result != 5)
        {
          if (result != 6)
          {
            goto LABEL_5;
          }

          v3 = v0;
          sub_22FF058DC();
          goto LABEL_17;
        }

        sub_22FFB1108();
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            sub_22FF4C33C();
LABEL_17:
            v0 = v3;
            sub_22FFB1098();
            break;
          case 2:
            sub_22FF423F0();
            break;
          case 3:
            sub_22FFB10A8();
            break;
        }
      }

LABEL_5:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF423F0()
{
  v0 = *(type metadata accessor for LogEntry(0) + 40);
  type metadata accessor for SignedObject(0);
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject);
  return sub_22FFB1128();
}

uint64_t LogEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    v15 = *v3;
    v17 = *(v3 + 8);
    sub_22FF4C33C();
    result = sub_22FFB1208();
    if (v4)
    {
      return result;
    }
  }

  result = sub_22FF42658(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  if (*(*(v3 + 16) + 16))
  {
    sub_22FFB1218();
  }

  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
  }

  else
  {
    if (!v11)
    {
      if ((v10 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v12 = v9;
    v13 = v9 >> 32;
  }

  if (v12 != v13)
  {
LABEL_15:
    sub_22FFB1228();
  }

LABEL_16:
  if (*(v3 + 40))
  {
    sub_22FFB1268();
  }

  if (*(v3 + 48))
  {
    v16 = *(v3 + 48);
    v18 = *(v3 + 56);
    sub_22FF058DC();
    sub_22FFB1208();
  }

  v14 = v3 + *(type metadata accessor for LogEntry(0) + 36);
  return sub_22FFB0F68();
}

uint64_t sub_22FF42658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedObject(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LogEntry(0);
  sub_22FEBF3A4(a1 + *(v14 + 40), v8, &qword_27DAF2338, &unk_22FFBB620);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
  }

  sub_22FF36190(v8, v13, type metadata accessor for SignedObject);
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject);
  sub_22FFB1288();
  return sub_22FF3728C(v13, type metadata accessor for SignedObject);
}

uint64_t sub_22FF428C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = xmmword_22FFB33B0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v4 = a2 + *(a1 + 36);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v5 = *(a1 + 40);
  v6 = type metadata accessor for SignedObject(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_22FF429B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3620, type metadata accessor for LogEntry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF42A54(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF42AC0()
{
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry);

  return sub_22FFB11A8();
}

uint64_t sub_22FF42B58()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF30A8);
  __swift_project_value_buffer(v0, qword_27DAF30A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22FFB7C30;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "logBeginningMs";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mapHeadHash";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "application";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "changeLogHead";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "revision";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "mapType";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "treeId";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "timestampMs";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "populating";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  return sub_22FFB12A8();
}

uint64_t MapHead.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result != 3)
          {
            sub_22FF43098();
            goto LABEL_5;
          }

          v3 = v0;
          sub_22FF03CAC();
          goto LABEL_22;
        }

        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          sub_22FFB10C8();
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

          v3 = v0;
          sub_22FF4C7C8();
LABEL_22:
          v0 = v3;
          sub_22FFB1098();
          goto LABEL_5;
        }

        if (result == 7 || result == 8)
        {
LABEL_4:
          sub_22FFB1108();
          goto LABEL_5;
        }

        if (result == 9)
        {
          sub_22FFB1088();
        }
      }

LABEL_5:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF43098()
{
  v0 = *(type metadata accessor for MapHead(0) + 52);
  type metadata accessor for LogHead(0);
  sub_22FF4BE20(&qword_27DAF33C0, type metadata accessor for LogHead);
  return sub_22FFB1128();
}

uint64_t MapHead.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    result = sub_22FFB1268();
    if (v4)
    {
      return result;
    }
  }

  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_12;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
LABEL_10:
    if (v12 == v13)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = sub_22FFB1228();
    if (v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v11)
  {
    v12 = v9;
    v13 = v9 >> 32;
    goto LABEL_10;
  }

  if ((v10 & 0xFF000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!*(v3 + 24) || (v15 = *(v3 + 24), v17 = *(v3 + 32), sub_22FF03CAC(), result = sub_22FFB1208(), !v4))
  {
    result = sub_22FF4336C(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 40))
      {
        sub_22FFB1268();
      }

      if (*(v3 + 48))
      {
        v16 = *(v3 + 48);
        v18 = *(v3 + 56);
        sub_22FF4C7C8();
        sub_22FFB1208();
      }

      if (*(v3 + 64))
      {
        sub_22FFB1268();
      }

      if (*(v3 + 72))
      {
        sub_22FFB1268();
      }

      if (*(v3 + 80) == 1)
      {
        sub_22FFB11F8();
      }

      v14 = v3 + *(type metadata accessor for MapHead(0) + 48);
      return sub_22FFB0F68();
    }
  }

  return result;
}

uint64_t sub_22FF4336C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for LogHead(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MapHead(0);
  sub_22FEBF3A4(a1 + *(v14 + 52), v8, &qword_27DAF31A8, &qword_22FFBB630);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF31A8, &qword_22FFBB630);
  }

  sub_22FF36190(v8, v13, type metadata accessor for LogHead);
  sub_22FF4BE20(&qword_27DAF33C0, type metadata accessor for LogHead);
  sub_22FFB1288();
  return sub_22FF3728C(v13, type metadata accessor for LogHead);
}

uint64_t sub_22FF435D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_22FFB6370;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v4 = a2 + *(a1 + 48);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v5 = *(a1 + 52);
  v6 = type metadata accessor for LogHead(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_22FF436C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3618, type metadata accessor for MapHead);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF43764(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF33E0, type metadata accessor for MapHead);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF437D0()
{
  sub_22FF4BE20(&qword_27DAF33E0, type metadata accessor for MapHead);

  return sub_22FFB11A8();
}

uint64_t sub_22FF43868()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF30C0);
  __swift_project_value_buffer(v0, qword_27DAF30C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "smh";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hashesOfPeersInPathToRoot";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "mapLeaf";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t MapEntry.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22FFB10C8();
        break;
      case 2:
        sub_22FFB10A8();
        break;
      case 1:
        sub_22FF43B50();
        break;
    }
  }

  return result;
}

uint64_t sub_22FF43B50()
{
  v0 = *(type metadata accessor for MapEntry(0) + 28);
  type metadata accessor for SignedObject(0);
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject);
  return sub_22FFB1128();
}

uint64_t MapEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FF43CFC(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_22FFB1218();
    }

    v6 = v3[1];
    v7 = v3[2];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_13;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
LABEL_12:
      sub_22FFB1228();
    }

LABEL_13:
    v11 = v3 + *(type metadata accessor for MapEntry(0) + 24);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF43CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedObject(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MapEntry(0);
  sub_22FEBF3A4(a1 + *(v14 + 28), v8, &qword_27DAF2338, &unk_22FFBB620);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
  }

  sub_22FF36190(v8, v13, type metadata accessor for SignedObject);
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject);
  sub_22FFB1288();
  return sub_22FF3728C(v13, type metadata accessor for SignedObject);
}

uint64_t sub_22FF43F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = xmmword_22FFB33B0;
  v4 = a2 + *(a1 + 24);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for SignedObject(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_22FF44044(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3610, type metadata accessor for MapEntry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF440E4(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF33F8, type metadata accessor for MapEntry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF44150()
{
  sub_22FF4BE20(&qword_27DAF33F8, type metadata accessor for MapEntry);

  return sub_22FFB11A8();
}

uint64_t sub_22FF441F4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF30D8);
  __swift_project_value_buffer(v0, qword_27DAF30D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "mapEntry";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "index";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "perApplicationTreeEntry";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "topLevelTreeEntry";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF44460()
{
  v0 = type metadata accessor for InclusionProof._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  v5 = type metadata accessor for MapEntry(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index) = xmmword_22FFB33B0;
  v6 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  v7 = type metadata accessor for LogEntry(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v3 + v6, 1, 1, v7);
  result = (v8)(v3 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry, 1, 1, v7);
  qword_27DAF30F0 = v3;
  return result;
}

uint64_t sub_22FF44578(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  v12 = type metadata accessor for MapEntry(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = (v1 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  *(v1 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index) = xmmword_22FFB33B0;
  v14 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  v15 = type metadata accessor for LogEntry(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v1 + v14, 1, 1, v15);
  v27 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  v16(v1 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry, 1, 1, v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v17, v10, &qword_27DAF31B0, &unk_22FFBB638);
  swift_beginAccess();
  sub_22FEFF0DC(v10, v1 + v11, &qword_27DAF31B0, &unk_22FFBB638);
  swift_endAccess();
  v18 = (a1 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];
  swift_beginAccess();
  v21 = *v13;
  v22 = v13[1];
  *v13 = v20;
  v13[1] = v19;
  sub_22FEA5608(v20, v19);
  sub_22FEA55AC(v21, v22);
  v23 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v23, v6, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_beginAccess();
  sub_22FEFF0DC(v6, v1 + v14, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v24, v6, &qword_27DAF2150, &qword_22FFB5CA0);

  v25 = v27;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v1 + v25, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_endAccess();
  return v1;
}

uint64_t sub_22FF44918()
{
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry, &qword_27DAF31B0, &unk_22FFBB638);
  sub_22FEA55AC(*(v0 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index), *(v0 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index + 8));
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry, &qword_27DAF2150, &qword_22FFB5CA0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22FF44A58()
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        sub_22FF44CA4();
      }

      else if (result == 5)
      {
        sub_22FF44D80();
      }
    }

    else if (result == 2)
    {
      sub_22FF44B3C();
    }

    else if (result == 3)
    {
      sub_22FF44C18();
    }
  }

  return result;
}

uint64_t sub_22FF44B3C()
{
  swift_beginAccess();
  type metadata accessor for MapEntry(0);
  sub_22FF4BE20(&qword_27DAF33F8, type metadata accessor for MapEntry);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF44C18()
{
  swift_beginAccess();
  sub_22FFB10C8();
  return swift_endAccess();
}

uint64_t sub_22FF44CA4()
{
  swift_beginAccess();
  type metadata accessor for LogEntry(0);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF44D80()
{
  swift_beginAccess();
  type metadata accessor for LogEntry(0);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF44E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22FF44FCC(a1, a2, a3, a4);
  if (!v4)
  {
    v10 = (a1 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2 || *(v11 + 16) == *(v11 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v13)
    {
      if (v11 == v11 >> 32)
      {
        goto LABEL_11;
      }
    }

    else if ((v12 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    sub_22FEA5608(v11, v12);
    sub_22FFB1228();
    sub_22FEA55AC(v11, v12);
LABEL_11:
    sub_22FF451F4(a1, a2, a3, a4);
    return sub_22FF4541C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22FF44FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for MapEntry(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v14, v8, &qword_27DAF31B0, &unk_22FFBB638);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF31B0, &unk_22FFBB638);
  }

  sub_22FF36190(v8, v13, type metadata accessor for MapEntry);
  sub_22FF4BE20(&qword_27DAF33F8, type metadata accessor for MapEntry);
  sub_22FFB1288();
  return sub_22FF3728C(v13, type metadata accessor for MapEntry);
}

uint64_t sub_22FF451F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for LogEntry(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v14, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  sub_22FF36190(v8, v13, type metadata accessor for LogEntry);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry);
  sub_22FFB1288();
  return sub_22FF3728C(v13, type metadata accessor for LogEntry);
}

uint64_t sub_22FF4541C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for LogEntry(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v14, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  sub_22FF36190(v8, v13, type metadata accessor for LogEntry);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry);
  sub_22FFB1288();
  return sub_22FF3728C(v13, type metadata accessor for LogEntry);
}

BOOL sub_22FF45688(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v87 = type metadata accessor for LogEntry(0);
  v86 = *(v87 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v81 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2158, &unk_22FFB7B80);
  v5 = *(*(v89 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v89);
  v82 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v80 = (&v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v84 = &v80 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v83 = (&v80 - v16);
  MEMORY[0x28223BE20](v15);
  v90 = &v80 - v17;
  v18 = type metadata accessor for MapEntry(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v88 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3658, &qword_22FFBDB00);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v80 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v91 = (&v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v32 = &v80 - v31;
  v33 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v33, v32, &qword_27DAF31B0, &unk_22FFBB638);
  v34 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  v35 = v92;
  swift_beginAccess();
  v36 = *(v23 + 56);
  sub_22FEBF3A4(v32, v26, &qword_27DAF31B0, &unk_22FFBB638);
  v37 = v35 + v34;
  v38 = v35;
  sub_22FEBF3A4(v37, &v26[v36], &qword_27DAF31B0, &unk_22FFBB638);
  v39 = *(v19 + 48);
  if (v39(v26, 1, v18) == 1)
  {

    sub_22FEAEA34(v32, &qword_27DAF31B0, &unk_22FFBB638);
    v40 = a1;
    if (v39(&v26[v36], 1, v18) == 1)
    {
      sub_22FEAEA34(v26, &qword_27DAF31B0, &unk_22FFBB638);
      goto LABEL_9;
    }

LABEL_6:
    v42 = &qword_27DAF3658;
    v43 = &qword_22FFBDB00;
LABEL_7:
    sub_22FEAEA34(v26, v42, v43);
    goto LABEL_20;
  }

  v40 = a1;
  v41 = v91;
  sub_22FEBF3A4(v26, v91, &qword_27DAF31B0, &unk_22FFBB638);
  if (v39(&v26[v36], 1, v18) == 1)
  {

    sub_22FEAEA34(v32, &qword_27DAF31B0, &unk_22FFBB638);
    sub_22FF3728C(v41, type metadata accessor for MapEntry);
    goto LABEL_6;
  }

  v44 = v88;
  sub_22FF36190(&v26[v36], v88, type metadata accessor for MapEntry);

  v45 = _s16CloudAttestation8MapEntryV2eeoiySbAC_ACtFZ_0(v41, v44);
  sub_22FF3728C(v44, type metadata accessor for MapEntry);
  sub_22FEAEA34(v32, &qword_27DAF31B0, &unk_22FFBB638);
  sub_22FF3728C(v41, type metadata accessor for MapEntry);
  sub_22FEAEA34(v26, &qword_27DAF31B0, &unk_22FFBB638);
  if ((v45 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  v46 = (v40 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v48 = *v46;
  v47 = v46[1];
  v49 = (v38 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v51 = *v49;
  v50 = v49[1];
  sub_22FEA5608(v48, v47);
  sub_22FEA5608(v51, v50);
  v52 = sub_22FEC3DC8(v48, v47, v51, v50);
  sub_22FEA55AC(v51, v50);
  sub_22FEA55AC(v48, v47);
  if ((v52 & 1) == 0)
  {
    goto LABEL_20;
  }

  v53 = v38;
  v54 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  v55 = v90;
  sub_22FEBF3A4(v40 + v54, v90, &qword_27DAF2150, &qword_22FFB5CA0);
  v56 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  v57 = *(v89 + 48);
  v26 = v85;
  sub_22FEBF3A4(v55, v85, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEBF3A4(v53 + v56, &v26[v57], &qword_27DAF2150, &qword_22FFB5CA0);
  v58 = *(v86 + 48);
  v59 = v87;
  if ((v58)(v26, 1, v87) != 1)
  {
    v60 = v83;
    sub_22FEBF3A4(v26, v83, &qword_27DAF2150, &qword_22FFB5CA0);
    if ((v58)(&v26[v57], 1, v59) != 1)
    {
      v91 = v58;
      v61 = &v26[v57];
      v62 = v81;
      sub_22FF36190(v61, v81, type metadata accessor for LogEntry);
      v63 = _s16CloudAttestation8LogEntryV2eeoiySbAC_ACtFZ_0(v60, v62);
      sub_22FF3728C(v62, type metadata accessor for LogEntry);
      sub_22FEAEA34(v90, &qword_27DAF2150, &qword_22FFB5CA0);
      sub_22FF3728C(v60, type metadata accessor for LogEntry);
      sub_22FEAEA34(v26, &qword_27DAF2150, &qword_22FFB5CA0);
      if (v63)
      {
        goto LABEL_17;
      }

LABEL_20:

      return 0;
    }

    sub_22FEAEA34(v90, &qword_27DAF2150, &qword_22FFB5CA0);
    sub_22FF3728C(v60, type metadata accessor for LogEntry);
    goto LABEL_15;
  }

  sub_22FEAEA34(v55, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((v58)(&v26[v57], 1, v59) != 1)
  {
LABEL_15:
    v42 = &qword_27DAF2158;
    v43 = &unk_22FFB7B80;
    goto LABEL_7;
  }

  v91 = v58;
  sub_22FEAEA34(v26, &qword_27DAF2150, &qword_22FFB5CA0);
LABEL_17:
  v64 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v65 = v84;
  sub_22FEBF3A4(v40 + v64, v84, &qword_27DAF2150, &qword_22FFB5CA0);
  v66 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v67 = v59;
  v68 = *(v89 + 48);
  v69 = v82;
  sub_22FEBF3A4(v65, v82, &qword_27DAF2150, &qword_22FFB5CA0);
  v70 = v53 + v66;
  v71 = v68;
  v72 = v69 + v68;
  v73 = v67;
  sub_22FEBF3A4(v70, v72, &qword_27DAF2150, &qword_22FFB5CA0);
  v74 = v67;
  v75 = v91;
  if ((v91)(v69, 1, v74) == 1)
  {

    sub_22FEAEA34(v65, &qword_27DAF2150, &qword_22FFB5CA0);
    if ((v75)(v69 + v71, 1, v73) == 1)
    {
      sub_22FEAEA34(v69, &qword_27DAF2150, &qword_22FFB5CA0);
      return 1;
    }

    goto LABEL_25;
  }

  v77 = v80;
  sub_22FEBF3A4(v69, v80, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((v75)(v69 + v71, 1, v73) == 1)
  {

    sub_22FEAEA34(v84, &qword_27DAF2150, &qword_22FFB5CA0);
    sub_22FF3728C(v77, type metadata accessor for LogEntry);
LABEL_25:
    sub_22FEAEA34(v69, &qword_27DAF2158, &unk_22FFB7B80);
    return 0;
  }

  v78 = v81;
  sub_22FF36190(v69 + v71, v81, type metadata accessor for LogEntry);
  v79 = _s16CloudAttestation8LogEntryV2eeoiySbAC_ACtFZ_0(v77, v78);

  sub_22FF3728C(v78, type metadata accessor for LogEntry);
  sub_22FEAEA34(v84, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FF3728C(v77, type metadata accessor for LogEntry);
  sub_22FEAEA34(v69, &qword_27DAF2150, &qword_22FFB5CA0);
  return (v79 & 1) != 0;
}

uint64_t sub_22FF462DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3608, type metadata accessor for InclusionProof);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF4637C(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3410, type metadata accessor for InclusionProof);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF463E8()
{
  sub_22FF4BE20(&qword_27DAF3410, type metadata accessor for InclusionProof);

  return sub_22FFB11A8();
}

uint64_t sub_22FF464C4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF30F8);
  __swift_project_value_buffer(v0, qword_27DAF30F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "perApplicationTreeEntry";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topLevelTreeEntry";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF466B0()
{
  v0 = type metadata accessor for PatInclusionProof._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  v5 = type metadata accessor for LogEntry(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  result = (v6)(v3 + OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry, 1, 1, v5);
  qword_27DAF3110 = v3;
  return result;
}

uint64_t sub_22FF4676C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  v8 = type metadata accessor for LogEntry(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v1 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  v9(v1 + OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry, 1, 1, v8);
  v11 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v11, v6, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_beginAccess();
  sub_22FEFF0DC(v6, v1 + v7, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v12, v6, &qword_27DAF2150, &qword_22FFB5CA0);

  swift_beginAccess();
  sub_22FEFF0DC(v6, v1 + v10, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_endAccess();
  return v1;
}

unint64_t sub_22FF46A04()
{
  result = qword_27DAF31F0;
  if (!qword_27DAF31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF31F0);
  }

  return result;
}

uint64_t sub_22FF46A58()
{
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry, &qword_27DAF2150, &qword_22FFB5CA0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22FF46B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v17 = a6(v18);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_22FF46C34()
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FF46CC8();
    }

    else if (result == 2)
    {
      sub_22FF46DA4();
    }
  }

  return result;
}

uint64_t sub_22FF46CC8()
{
  swift_beginAccess();
  type metadata accessor for LogEntry(0);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF46DA4()
{
  swift_beginAccess();
  type metadata accessor for LogEntry(0);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF46EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF46F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22FF46F90(a1, a2, a3, a4);
  if (!v4)
  {
    return sub_22FF471B8(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22FF46F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for LogEntry(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v14, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  sub_22FF36190(v8, v13, type metadata accessor for LogEntry);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry);
  sub_22FFB1288();
  return sub_22FF3728C(v13, type metadata accessor for LogEntry);
}

uint64_t sub_22FF471B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for LogEntry(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v14, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  sub_22FF36190(v8, v13, type metadata accessor for LogEntry);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry);
  sub_22FFB1288();
  return sub_22FF3728C(v13, type metadata accessor for LogEntry);
}

BOOL sub_22FF47424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogEntry(0);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2158, &unk_22FFB7B80);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v42[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v44 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v47 = &v42[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v49 = &v42[-v20];
  MEMORY[0x28223BE20](v19);
  v22 = &v42[-v21];
  v23 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v23, v22, &qword_27DAF2150, &qword_22FFB5CA0);
  v24 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  v46 = v7;
  v25 = *(v7 + 48);
  sub_22FEBF3A4(v22, v12, &qword_27DAF2150, &qword_22FFB5CA0);
  v26 = v50;
  sub_22FEBF3A4(a2 + v24, &v12[v25], &qword_27DAF2150, &qword_22FFB5CA0);
  v29 = *(v26 + 48);
  v27 = v26 + 48;
  v28 = v29;
  if (v29(v12, 1, v4) != 1)
  {
    v30 = v49;
    sub_22FEBF3A4(v12, v49, &qword_27DAF2150, &qword_22FFB5CA0);
    if (v28(&v12[v25], 1, v4) != 1)
    {
      v50 = v27;
      v31 = &v12[v25];
      v32 = v45;
      sub_22FF36190(v31, v45, type metadata accessor for LogEntry);

      v43 = _s16CloudAttestation8LogEntryV2eeoiySbAC_ACtFZ_0(v30, v32);
      sub_22FF3728C(v32, type metadata accessor for LogEntry);
      sub_22FEAEA34(v22, &qword_27DAF2150, &qword_22FFB5CA0);
      sub_22FF3728C(v30, type metadata accessor for LogEntry);
      sub_22FEAEA34(v12, &qword_27DAF2150, &qword_22FFB5CA0);
      if (v43)
      {
        goto LABEL_9;
      }

LABEL_7:

      return 0;
    }

    sub_22FEAEA34(v22, &qword_27DAF2150, &qword_22FFB5CA0);
    sub_22FF3728C(v30, type metadata accessor for LogEntry);
LABEL_6:
    sub_22FEAEA34(v12, &qword_27DAF2158, &unk_22FFB7B80);
    goto LABEL_7;
  }

  sub_22FEAEA34(v22, &qword_27DAF2150, &qword_22FFB5CA0);
  if (v28(&v12[v25], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v50 = v27;
  sub_22FEAEA34(v12, &qword_27DAF2150, &qword_22FFB5CA0);
LABEL_9:
  v33 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v34 = v47;
  sub_22FEBF3A4(a1 + v33, v47, &qword_27DAF2150, &qword_22FFB5CA0);
  v35 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v36 = *(v46 + 48);
  v37 = v48;
  sub_22FEBF3A4(v34, v48, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEBF3A4(a2 + v35, &v37[v36], &qword_27DAF2150, &qword_22FFB5CA0);
  if (v28(v37, 1, v4) == 1)
  {

    sub_22FEAEA34(v34, &qword_27DAF2150, &qword_22FFB5CA0);
    if (v28(&v37[v36], 1, v4) == 1)
    {
      sub_22FEAEA34(v37, &qword_27DAF2150, &qword_22FFB5CA0);
      return 1;
    }

    goto LABEL_14;
  }

  v38 = v44;
  sub_22FEBF3A4(v37, v44, &qword_27DAF2150, &qword_22FFB5CA0);
  if (v28(&v37[v36], 1, v4) == 1)
  {

    sub_22FEAEA34(v34, &qword_27DAF2150, &qword_22FFB5CA0);
    sub_22FF3728C(v38, type metadata accessor for LogEntry);
LABEL_14:
    sub_22FEAEA34(v37, &qword_27DAF2158, &unk_22FFB7B80);
    return 0;
  }

  v40 = v45;
  sub_22FF36190(&v37[v36], v45, type metadata accessor for LogEntry);
  v41 = _s16CloudAttestation8LogEntryV2eeoiySbAC_ACtFZ_0(v38, v40);

  sub_22FF3728C(v40, type metadata accessor for LogEntry);
  sub_22FEAEA34(v34, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FF3728C(v38, type metadata accessor for LogEntry);
  sub_22FEAEA34(v37, &qword_27DAF2150, &qword_22FFB5CA0);
  return (v41 & 1) != 0;
}

uint64_t sub_22FF47B60@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_22FF47C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3600, type metadata accessor for PatInclusionProof);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF47CC8(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3428, type metadata accessor for PatInclusionProof);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF47D34()
{
  sub_22FF4BE20(&qword_27DAF3428, type metadata accessor for PatInclusionProof);

  return sub_22FFB11A8();
}

uint64_t ChangeLogNodeV2.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FFB10C8();
    }
  }

  return result;
}

uint64_t ChangeLogNodeV2.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v2 == v2 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FFB1228();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v0 + *(type metadata accessor for ChangeLogNodeV2(0) + 20);
  return sub_22FFB0F68();
}

uint64_t static ChangeLogNodeV2.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for ChangeLogNodeV2(0) + 20);
  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF480E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF35F8, type metadata accessor for ChangeLogNodeV2);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF48180(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3440, type metadata accessor for ChangeLogNodeV2);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF481EC()
{
  sub_22FF4BE20(&qword_27DAF3440, type metadata accessor for ChangeLogNodeV2);

  return sub_22FFB11A8();
}

uint64_t sub_22FF48268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t PerApplicationTreeNode.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22FFB1058();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22FF488FC(a1, v5, a2, a3, type metadata accessor for PerApplicationTreeNode);
    }
  }

  return result;
}

uint64_t sub_22FF484EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF35F0, type metadata accessor for PerApplicationTreeNode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF4858C(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3458, type metadata accessor for PerApplicationTreeNode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF485F8()
{
  sub_22FF4BE20(&qword_27DAF3458, type metadata accessor for PerApplicationTreeNode);

  return sub_22FFB11A8();
}

uint64_t sub_22FF486DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22FFB2D10;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = a3;
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = sub_22FFB1298();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_22FFB12A8();
}

uint64_t TopLevelTreeNode.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22FFB1058();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FF488FC(a1, v5, a2, a3, type metadata accessor for TopLevelTreeNode);
    }
  }

  return result;
}

uint64_t sub_22FF488FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 20);
  type metadata accessor for SignedObject(0);
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject);
  return sub_22FFB1128();
}

uint64_t sub_22FF489E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  result = sub_22FF48A44(v5, a1, a2, a3, a4, a5);
  if (!v6)
  {
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF48A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for SignedObject(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_22FEBF3A4(a1 + *(v17 + 20), v11, &qword_27DAF2338, &unk_22FFBB620);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_22FEAEA34(v11, &qword_27DAF2338, &unk_22FFBB620);
  }

  sub_22FF36190(v11, v16, type metadata accessor for SignedObject);
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject);
  sub_22FFB1288();
  return sub_22FF3728C(v16, type metadata accessor for SignedObject);
}

uint64_t sub_22FF48CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for SignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22FF48DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF35E8, type metadata accessor for TopLevelTreeNode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF48E44(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3470, type metadata accessor for TopLevelTreeNode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF48EB0()
{
  sub_22FF4BE20(&qword_27DAF3470, type metadata accessor for TopLevelTreeNode);

  return sub_22FFB11A8();
}

uint64_t sub_22FF48F78()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3160);
  __swift_project_value_buffer(v0, qword_27DAF3160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "vrfPublicKey";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "publicKeyBytes";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "earliestVersion";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PerApplicationTreeConfigNode.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_22FF03C58();
          sub_22FFB1098();
          break;
        case 2:
          sub_22FFB10C8();
          break;
        case 1:
          sub_22FF49290();
          break;
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF49290()
{
  v0 = *(type metadata accessor for PerApplicationTreeConfigNode(0) + 28);
  type metadata accessor for VRFPublicKey(0);
  sub_22FF4BE20(&qword_27DAF3398, type metadata accessor for VRFPublicKey);
  return sub_22FFB1128();
}

uint64_t PerApplicationTreeConfigNode.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FF49468(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_11;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
  }

  else
  {
    if (!v8)
    {
      if ((v7 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v9 = v6;
    v10 = v6 >> 32;
  }

  if (v9 != v10)
  {
LABEL_10:
    sub_22FFB1228();
  }

LABEL_11:
  if (*(v3 + 16))
  {
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    sub_22FF03C58();
    sub_22FFB1208();
  }

  v11 = v3 + *(type metadata accessor for PerApplicationTreeConfigNode(0) + 24);
  return sub_22FFB0F68();
}

uint64_t sub_22FF49468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for VRFPublicKey(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PerApplicationTreeConfigNode(0);
  sub_22FEBF3A4(a1 + *(v14 + 28), v8, &qword_27DAF31E8, &qword_22FFBB648);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF31E8, &qword_22FFBB648);
  }

  sub_22FF36190(v8, v13, type metadata accessor for VRFPublicKey);
  sub_22FF4BE20(&qword_27DAF3398, type metadata accessor for VRFPublicKey);
  sub_22FFB1288();
  return sub_22FF3728C(v13, type metadata accessor for VRFPublicKey);
}

uint64_t sub_22FF496D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = a2 + *(a1 + 24);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for VRFPublicKey(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_22FF497B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF35E0, type metadata accessor for PerApplicationTreeConfigNode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF49854(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3488, type metadata accessor for PerApplicationTreeConfigNode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF498C0()
{
  sub_22FF4BE20(&qword_27DAF3488, type metadata accessor for PerApplicationTreeConfigNode);

  return sub_22FFB11A8();
}

uint64_t sub_22FF4995C()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3178);
  __swift_project_value_buffer(v0, qword_27DAF3178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "publicKeyBytes";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "earliestVersion";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t TopLevelTreeConfigNode.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FFB10C8();
      }

      else if (result == 3)
      {
        sub_22FF03C58();
        sub_22FFB1098();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF49C54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  result = *v7;
  v11 = *(v7 + 8);
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_11;
    }

    v13 = *(result + 16);
    v14 = *(result + 24);
    goto LABEL_8;
  }

  if (v12)
  {
    v13 = result;
    v14 = result >> 32;
LABEL_8:
    if (v13 == v14)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ((v11 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v15 = a4;
  result = sub_22FFB1228();
  if (v8)
  {
    return result;
  }

  a4 = v15;
LABEL_11:
  if (!*(v7 + 16) || (v17 = *(v7 + 16), v18 = *(v7 + 24), a4(result), result = sub_22FFB1208(), !v8))
  {
    v16 = v7 + *(a7(0) + 24);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF49E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF35D8, type metadata accessor for TopLevelTreeConfigNode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF49EC0(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF34A0, type metadata accessor for TopLevelTreeConfigNode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF49F2C()
{
  sub_22FF4BE20(&qword_27DAF34A0, type metadata accessor for TopLevelTreeConfigNode);

  return sub_22FFB11A8();
}

uint64_t sub_22FF49FD0()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3190);
  __swift_project_value_buffer(v0, qword_27DAF3190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestampMs";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "earliestVersionForNextTree";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t LogClosedNode.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FFB1108();
      }

      else if (result == 3)
      {
        sub_22FF03C58();
        sub_22FFB1098();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t LogClosedNode.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_22FFB1268(), !v1))
  {
    if (!*(v0 + 8) || (v4 = *(v0 + 8), v5 = *(v0 + 16), sub_22FF03C58(), result = sub_22FFB1208(), !v1))
    {
      v3 = v0 + *(type metadata accessor for LogClosedNode(0) + 24);
      return sub_22FFB0F68();
    }
  }

  return result;
}

uint64_t sub_22FF4A39C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22FFB1CA8();
  a1(0);
  sub_22FF4BE20(a2, a3);
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF4A424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = a2 + *(a1 + 24);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF4A4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF35D0, type metadata accessor for LogClosedNode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF4A544(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF34B8, type metadata accessor for LogClosedNode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF4A5B0()
{
  sub_22FF4BE20(&qword_27DAF34B8, type metadata accessor for LogClosedNode);

  return sub_22FFB11A8();
}

uint64_t _s16CloudAttestation7MapHeadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogHead(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v32 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3660, &qword_22FFBDB08);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_45;
  }

  v18 = v15;
  if ((sub_22FEC3DC8(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_45;
  }

  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (*(a2 + 32) == 1)
  {
    if (v20 <= 2)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          if (v19 != 1)
          {
            goto LABEL_45;
          }
        }

        else if (v19 != 2)
        {
          goto LABEL_45;
        }
      }

      else if (v19)
      {
        goto LABEL_45;
      }
    }

    else if (v20 > 4)
    {
      if (v20 == 5)
      {
        if (v19 != 5)
        {
          goto LABEL_45;
        }
      }

      else if (v19 != 6)
      {
        goto LABEL_45;
      }
    }

    else if (v20 == 3)
    {
      if (v19 != 3)
      {
        goto LABEL_45;
      }
    }

    else if (v19 != 4)
    {
      goto LABEL_45;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_45;
  }

  v33 = type metadata accessor for MapHead(0);
  v21 = *(v33 + 52);
  v22 = *(v18 + 48);
  sub_22FEBF3A4(a1 + v21, v17, &qword_27DAF31A8, &qword_22FFBB630);
  v23 = a2 + v21;
  v24 = v22;
  sub_22FEBF3A4(v23, &v17[v22], &qword_27DAF31A8, &qword_22FFBB630);
  v25 = *(v5 + 48);
  if (v25(v17, 1, v4) != 1)
  {
    sub_22FEBF3A4(v17, v12, &qword_27DAF31A8, &qword_22FFBB630);
    if (v25(&v17[v24], 1, v4) != 1)
    {
      sub_22FF36190(&v17[v24], v8, type metadata accessor for LogHead);
      v26 = _s16CloudAttestation7LogHeadV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_22FF3728C(v8, type metadata accessor for LogHead);
      sub_22FF3728C(v12, type metadata accessor for LogHead);
      sub_22FEAEA34(v17, &qword_27DAF31A8, &qword_22FFBB630);
      if ((v26 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_24;
    }

    sub_22FF3728C(v12, type metadata accessor for LogHead);
LABEL_15:
    sub_22FEAEA34(v17, &qword_27DAF3660, &qword_22FFBDB08);
    goto LABEL_45;
  }

  if (v25(&v17[v24], 1, v4) != 1)
  {
    goto LABEL_15;
  }

  sub_22FEAEA34(v17, &qword_27DAF31A8, &qword_22FFBB630);
LABEL_24:
  if (*(a1 + 40) == *(a2 + 40))
  {
    v27 = *(a1 + 48);
    v28 = *(a2 + 48);
    if (*(a1 + 56))
    {
      v27 = v27 != 0;
    }

    if (*(a2 + 56) == 1)
    {
      if (v28)
      {
        if (v27 != 1)
        {
          goto LABEL_45;
        }
      }

      else if (v27)
      {
        goto LABEL_45;
      }
    }

    else if (v27 != v28)
    {
      goto LABEL_45;
    }

    if (*(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
    {
      v31 = *(v33 + 48);
      sub_22FFB0F88();
      sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
      v29 = sub_22FFB1478();
      return v29 & 1;
    }
  }

LABEL_45:
  v29 = 0;
  return v29 & 1;
}

uint64_t _s16CloudAttestation7LogHeadV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  if (*a1 != *a2 || a1[1] != *(a2 + 8) || (sub_22FEC3DC8(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) & 1) == 0 || a1[4] != *(a2 + 32))
  {
    return 0;
  }

  v4 = a1[5];
  v5 = *(a2 + 40);
  if (*(a2 + 48) == 1)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[7];
  v7 = *(a2 + 56);
  if (*(a2 + 64) == 1)
  {
    if (v7 <= 2)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          if (v6 != 1)
          {
            return 0;
          }
        }

        else if (v6 != 2)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }
    }

    else if (v7 > 4)
    {
      if (v7 == 5)
      {
        if (v6 != 5)
        {
          return 0;
        }
      }

      else if (v6 != 6)
      {
        return 0;
      }
    }

    else if (v7 == 3)
    {
      if (v6 != 3)
      {
        return 0;
      }
    }

    else if (v6 != 4)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (a1[9] == *(a2 + 72) && a1[10] == *(a2 + 80))
  {
    v8 = *(type metadata accessor for LogHead(0) + 48);
    sub_22FFB0F88();
    sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation28PerApplicationTreeConfigNodeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VRFPublicKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3650, &qword_22FFBDAE8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v35 = type metadata accessor for PerApplicationTreeConfigNode(0);
  v17 = *(v35 + 28);
  v18 = *(v13 + 56);
  v37 = a1;
  sub_22FEBF3A4(a1 + v17, v16, &qword_27DAF31E8, &qword_22FFBB648);
  sub_22FEBF3A4(a2 + v17, &v16[v18], &qword_27DAF31E8, &qword_22FFBB648);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_22FEBF3A4(v16, v11, &qword_27DAF31E8, &qword_22FFBB648);
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_22FF3728C(v11, type metadata accessor for VRFPublicKey);
      goto LABEL_15;
    }

    v25 = v36;
    sub_22FF36190(&v16[v18], v36, type metadata accessor for VRFPublicKey);
    if (sub_22FEC3DC8(*v11, *(v11 + 1), *v25, *(v25 + 8)))
    {
      v26 = *(v11 + 2);
      v27 = *(v25 + 16);
      v28 = 3;
      if (!v26)
      {
        v28 = 0;
      }

      if (v11[24])
      {
        v26 = v28;
      }

      if (*(v25 + 24) == 1)
      {
        if (v27)
        {
          if (v26 != 3)
          {
            goto LABEL_24;
          }
        }

        else if (v26)
        {
          goto LABEL_24;
        }
      }

      else if (v26 != v27)
      {
        goto LABEL_24;
      }

      v32 = *(v4 + 24);
      sub_22FFB0F88();
      sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
      v33 = sub_22FFB1478();
      sub_22FF3728C(v25, type metadata accessor for VRFPublicKey);
      sub_22FF3728C(v11, type metadata accessor for VRFPublicKey);
      sub_22FEAEA34(v16, &qword_27DAF31E8, &qword_22FFBB648);
      if ((v33 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

LABEL_24:
    sub_22FF3728C(v25, type metadata accessor for VRFPublicKey);
    sub_22FF3728C(v11, type metadata accessor for VRFPublicKey);
    v23 = &qword_27DAF31E8;
    v24 = &qword_22FFBB648;
    goto LABEL_25;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_15:
    v23 = &qword_27DAF3650;
    v24 = &qword_22FFBDAE8;
LABEL_25:
    sub_22FEAEA34(v16, v23, v24);
    goto LABEL_26;
  }

  sub_22FEAEA34(v16, &qword_27DAF31E8, &qword_22FFBB648);
LABEL_4:
  v20 = v37;
  if (sub_22FEC3DC8(*v37, *(v37 + 8), *a2, *(a2 + 8)))
  {
    v21 = *(v20 + 16);
    if (*(v20 + 24) == 1)
    {
      v21 = qword_22FFBDB58[v21];
    }

    v22 = *(a2 + 16);
    if (*(a2 + 24))
    {
      if (v22 <= 1)
      {
        if (v22)
        {
          if (v21 == 1)
          {
            goto LABEL_29;
          }
        }

        else if (!v21)
        {
          goto LABEL_29;
        }
      }

      else if (v22 == 2)
      {
        if (v21 == 2)
        {
          goto LABEL_29;
        }
      }

      else if (v22 == 3)
      {
        if (v21 == 3)
        {
          goto LABEL_29;
        }
      }

      else if (v21 == 999999999)
      {
        goto LABEL_29;
      }
    }

    else if (v21 == v22)
    {
LABEL_29:
      v31 = *(v35 + 24);
      sub_22FFB0F88();
      sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
      v29 = sub_22FFB1478();
      return v29 & 1;
    }
  }

LABEL_26:
  v29 = 0;
  return v29 & 1;
}

uint64_t _s16CloudAttestation22TopLevelTreeConfigNodeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    v4 = qword_22FFBDB58[v4];
  }

  v5 = *(a2 + 16);
  if (!*(a2 + 24))
  {
LABEL_16:
    if (v4 != v5)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (v4 == 2)
      {
        goto LABEL_17;
      }

      return 0;
    }

    if (v5 == 3)
    {
      if (v4 == 3)
      {
        goto LABEL_17;
      }

      return 0;
    }

    v5 = 999999999;
    goto LABEL_16;
  }

  if (v5)
  {
    if (v4 == 1)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_17:
  v7 = *(type metadata accessor for TopLevelTreeConfigNode(0) + 24);
  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF4B314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v26 = a1;
  v5 = type metadata accessor for SignedObject(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2648, &unk_22FFBDAF0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = *(a3(0) + 20);
  v19 = *(v14 + 56);
  sub_22FEBF3A4(v26 + v18, v17, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FEBF3A4(a2 + v18, &v17[v19], &qword_27DAF2338, &unk_22FFBB620);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) == 1)
  {
    if (v20(&v17[v19], 1, v5) == 1)
    {
      sub_22FEAEA34(v17, &qword_27DAF2338, &unk_22FFBB620);
LABEL_9:
      sub_22FFB0F88();
      sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
      v21 = sub_22FFB1478();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_22FEBF3A4(v17, v12, &qword_27DAF2338, &unk_22FFBB620);
  if (v20(&v17[v19], 1, v5) == 1)
  {
    sub_22FF3728C(v12, type metadata accessor for SignedObject);
LABEL_6:
    sub_22FEAEA34(v17, &qword_27DAF2648, &unk_22FFBDAF0);
    goto LABEL_7;
  }

  v22 = v25;
  sub_22FF36190(&v17[v19], v25, type metadata accessor for SignedObject);
  v23 = _s16CloudAttestation12SignedObjectV2eeoiySbAC_ACtFZ_0(v12, v22);
  sub_22FF3728C(v22, type metadata accessor for SignedObject);
  sub_22FF3728C(v12, type metadata accessor for SignedObject);
  sub_22FEAEA34(v17, &qword_27DAF2338, &unk_22FFBB620);
  if (v23)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s16CloudAttestation8MapEntryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2648, &unk_22FFBDAF0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for MapEntry(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_22FEBF3A4(a1 + v17, v16, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FEBF3A4(a2 + v17, &v16[v18], &qword_27DAF2338, &unk_22FFBB620);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_22FEBF3A4(v16, v11, &qword_27DAF2338, &unk_22FFBB620);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_22FF36190(&v16[v18], v28, type metadata accessor for SignedObject);
      v21 = _s16CloudAttestation12SignedObjectV2eeoiySbAC_ACtFZ_0(v11, v20);
      sub_22FF3728C(v20, type metadata accessor for SignedObject);
      sub_22FF3728C(v11, type metadata accessor for SignedObject);
      sub_22FEAEA34(v16, &qword_27DAF2338, &unk_22FFBB620);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_11:
      v24 = 0;
      return v24 & 1;
    }

    sub_22FF3728C(v11, type metadata accessor for SignedObject);
LABEL_6:
    sub_22FEAEA34(v16, &qword_27DAF2648, &unk_22FFBDAF0);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22FEAEA34(v16, &qword_27DAF2338, &unk_22FFBB620);
LABEL_8:
  v22 = v29;
  if ((sub_22FEE7C00(*v29, *a2) & 1) == 0 || (sub_22FEC3DC8(v22[1], v22[2], *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_11;
  }

  v23 = *(v27 + 24);
  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
  v24 = sub_22FFB1478();
  return v24 & 1;
}

uint64_t sub_22FF4BA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation13LogClosedNodeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v2 = qword_22FFBDB58[v2];
  }

  v3 = *(a2 + 8);
  if (!*(a2 + 16))
  {
LABEL_16:
    if (v2 != v3)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v2 == 2)
      {
        goto LABEL_17;
      }

      return 0;
    }

    if (v3 == 3)
    {
      if (v2 == 3)
      {
        goto LABEL_17;
      }

      return 0;
    }

    v3 = 999999999;
    goto LABEL_16;
  }

  if (v3)
  {
    if (v2 == 1)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

LABEL_17:
  v5 = *(type metadata accessor for LogClosedNode(0) + 24);
  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation12VRFPublicKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = 3;
  if (!v4)
  {
    v6 = 0;
  }

  if (*(a1 + 24))
  {
    v4 = v6;
  }

  if (*(a2 + 24) == 1)
  {
    if (v5)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v8 = *(type metadata accessor for VRFPublicKey(0) + 24);
  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation10VRFWitnessV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = 3;
  if (!*a1)
  {
    v6 = 0;
  }

  if (*(a1 + 8))
  {
    v4 = v6;
  }

  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_22FEC3DC8(*(a1 + 16), *(a1 + 24), a2[2], a2[3]) & 1) != 0 && (sub_22FEC3DC8(*(a1 + 32), *(a1 + 40), a2[4], a2[5]))
  {
    v7 = *(type metadata accessor for VRFWitness(0) + 28);
    sub_22FFB0F88();
    sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t sub_22FF4BE20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22FF4BE68()
{
  result = qword_28148F388;
  if (!qword_28148F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F388);
  }

  return result;
}

uint64_t _s16CloudAttestation9SignatureV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_22FEC3DC8(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (*(a1 + 40))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 40) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Signature(0) + 28);
  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation12SignedObjectV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signature(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3668, &unk_22FFBDB10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = v8;
  v26 = type metadata accessor for SignedObject(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  sub_22FEBF3A4(a1 + v17, v16, &qword_27DAF2A48, &qword_22FFB9178);
  sub_22FEBF3A4(a2 + v17, &v16[v18], &qword_27DAF2A48, &qword_22FFB9178);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_22FEAEA34(v16, &qword_27DAF2A48, &qword_22FFB9178);
LABEL_11:
      v24 = *(v26 + 20);
      sub_22FFB0F88();
      sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
      v20 = sub_22FFB1478();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_22FEBF3A4(v16, v12, &qword_27DAF2A48, &qword_22FFB9178);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_22FF3728C(v12, type metadata accessor for Signature);
LABEL_7:
    sub_22FEAEA34(v16, &qword_27DAF3668, &unk_22FFBDB10);
    goto LABEL_8;
  }

  v22 = v25;
  sub_22FF36190(&v16[v18], v25, type metadata accessor for Signature);
  v23 = _s16CloudAttestation9SignatureV2eeoiySbAC_ACtFZ_0(v12, v22);
  sub_22FF3728C(v22, type metadata accessor for Signature);
  sub_22FF3728C(v12, type metadata accessor for Signature);
  sub_22FEAEA34(v16, &qword_27DAF2A48, &qword_22FFB9178);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_22FF4C33C()
{
  result = qword_28148F5A0;
  if (!qword_28148F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F5A0);
  }

  return result;
}

uint64_t _s16CloudAttestation8LogEntryV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2648, &unk_22FFBDAF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        if (v17 != 3)
        {
          goto LABEL_31;
        }
      }

      else if (v18 == 4)
      {
        if (v17 != 4)
        {
          goto LABEL_31;
        }
      }

      else if (v17 != 5)
      {
        goto LABEL_31;
      }
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        if (v17 != 1)
        {
          goto LABEL_31;
        }
      }

      else if (v17 != 2)
      {
        goto LABEL_31;
      }
    }

    else if (v17)
    {
      goto LABEL_31;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_31;
  }

  v19 = type metadata accessor for LogEntry(0);
  v20 = *(v19 + 40);
  v21 = a1;
  v22 = *(v13 + 48);
  v30 = v19;
  v31 = v21;
  sub_22FEBF3A4(v21 + v20, v16, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FEBF3A4(a2 + v20, &v16[v22], &qword_27DAF2338, &unk_22FFBB620);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    sub_22FEBF3A4(v16, v12, &qword_27DAF2338, &unk_22FFBB620);
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_22FF3728C(v12, type metadata accessor for SignedObject);
      goto LABEL_17;
    }

    sub_22FF36190(&v16[v22], v8, type metadata accessor for SignedObject);
    v24 = _s16CloudAttestation12SignedObjectV2eeoiySbAC_ACtFZ_0(v12, v8);
    sub_22FF3728C(v8, type metadata accessor for SignedObject);
    sub_22FF3728C(v12, type metadata accessor for SignedObject);
    sub_22FEAEA34(v16, &qword_27DAF2338, &unk_22FFBB620);
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_31:
    v28 = 0;
    return v28 & 1;
  }

  if (v23(&v16[v22], 1, v4) != 1)
  {
LABEL_17:
    sub_22FEAEA34(v16, &qword_27DAF2648, &unk_22FFBDAF0);
    goto LABEL_31;
  }

  sub_22FEAEA34(v16, &qword_27DAF2338, &unk_22FFBB620);
LABEL_19:
  v25 = v31;
  if ((sub_22FEE7C00(v31[2], *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((sub_22FEC3DC8(v25[3], v25[4], *(a2 + 24), *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (v25[5] != *(a2 + 40))
  {
    goto LABEL_31;
  }

  v26 = *(a2 + 56);
  if (!sub_22FEDA098(v25[6], *(v25 + 56), *(a2 + 48)))
  {
    goto LABEL_31;
  }

  v27 = *(v30 + 36);
  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8]);
  v28 = sub_22FFB1478();
  return v28 & 1;
}

unint64_t sub_22FF4C7C8()
{
  result = qword_27DAF3228;
  if (!qword_27DAF3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3228);
  }

  return result;
}

unint64_t sub_22FF4C820()
{
  result = qword_27DAF3280;
  if (!qword_27DAF3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3280);
  }

  return result;
}

unint64_t sub_22FF4C878()
{
  result = qword_27DAF3288;
  if (!qword_27DAF3288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3288);
  }

  return result;
}

unint64_t sub_22FF4C900()
{
  result = qword_27DAF32A0;
  if (!qword_27DAF32A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32A0);
  }

  return result;
}

unint64_t sub_22FF4C958()
{
  result = qword_27DAF32A8;
  if (!qword_27DAF32A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32A8);
  }

  return result;
}

unint64_t sub_22FF4C9B0()
{
  result = qword_27DAF32B0;
  if (!qword_27DAF32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32B0);
  }

  return result;
}

unint64_t sub_22FF4CA38()
{
  result = qword_27DAF32C8;
  if (!qword_27DAF32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32C8);
  }

  return result;
}

unint64_t sub_22FF4CA90()
{
  result = qword_27DAF32D0;
  if (!qword_27DAF32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32D0);
  }

  return result;
}

unint64_t sub_22FF4CAE8()
{
  result = qword_27DAF32D8;
  if (!qword_27DAF32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32D8);
  }

  return result;
}

unint64_t sub_22FF4CB70()
{
  result = qword_27DAF32F0;
  if (!qword_27DAF32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32F0);
  }

  return result;
}

unint64_t sub_22FF4CBC8()
{
  result = qword_27DAF32F8;
  if (!qword_27DAF32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32F8);
  }

  return result;
}

unint64_t sub_22FF4CC20()
{
  result = qword_27DAF3300;
  if (!qword_27DAF3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3300);
  }

  return result;
}

unint64_t sub_22FF4CCA8()
{
  result = qword_27DAF3318;
  if (!qword_27DAF3318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3318);
  }

  return result;
}

unint64_t sub_22FF4CD00()
{
  result = qword_28148F598;
  if (!qword_28148F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F598);
  }

  return result;
}

unint64_t sub_22FF4CD58()
{
  result = qword_28148F588;
  if (!qword_28148F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F588);
  }

  return result;
}

unint64_t sub_22FF4CDE0()
{
  result = qword_28148F590;
  if (!qword_28148F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F590);
  }

  return result;
}

unint64_t sub_22FF4CE38()
{
  result = qword_27DAF3330;
  if (!qword_27DAF3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3330);
  }

  return result;
}

unint64_t sub_22FF4CE90()
{
  result = qword_27DAF3338;
  if (!qword_27DAF3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3338);
  }

  return result;
}

unint64_t sub_22FF4CF18()
{
  result = qword_27DAF3350;
  if (!qword_27DAF3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3350);
  }

  return result;
}

unint64_t sub_22FF4CF70()
{
  result = qword_28148F3C0;
  if (!qword_28148F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F3C0);
  }

  return result;
}

unint64_t sub_22FF4CFC8()
{
  result = qword_28148F3B0;
  if (!qword_28148F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F3B0);
  }

  return result;
}

unint64_t sub_22FF4D050()
{
  result = qword_28148F3B8;
  if (!qword_28148F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F3B8);
  }

  return result;
}

unint64_t sub_22FF4D0A8()
{
  result = qword_28148F380;
  if (!qword_28148F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F380);
  }

  return result;
}

unint64_t sub_22FF4D134()
{
  result = qword_28148F378;
  if (!qword_28148F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F378);
  }

  return result;
}

uint64_t sub_22FF4E4AC()
{
  result = sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF4E568()
{
  sub_22FFB0F88();
  if (v0 <= 0x3F)
  {
    sub_22FF4E840(319, qword_28148F2F8, type metadata accessor for Signature);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22FF4E640()
{
  result = sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF4E70C()
{
  sub_22FF4E7F0();
  if (v0 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v1 <= 0x3F)
    {
      sub_22FF4E840(319, qword_281490998, type metadata accessor for SignedObject);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FF4E7F0()
{
  if (!qword_28148F158)
  {
    v0 = sub_22FFB1738();
    if (!v1)
    {
      atomic_store(v0, &qword_28148F158);
    }
  }
}

void sub_22FF4E840(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22FFB1888();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22FF4E8BC()
{
  sub_22FFB0F88();
  if (v0 <= 0x3F)
  {
    sub_22FF4E840(319, &qword_27DAF3508, type metadata accessor for LogHead);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF4E9C4()
{
  sub_22FF4E7F0();
  if (v0 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v1 <= 0x3F)
    {
      sub_22FF4E840(319, qword_281490998, type metadata accessor for SignedObject);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_159Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0F88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_160Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFB0F88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FF4EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_22FFB0F88();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_186Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0F88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_187Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22FFB0F88();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_22FF4EF80()
{
  sub_22FFB0F88();
  if (v0 <= 0x3F)
  {
    sub_22FF4E840(319, qword_281490998, type metadata accessor for SignedObject);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF4F048()
{
  sub_22FFB0F88();
  if (v0 <= 0x3F)
  {
    sub_22FF4E840(319, &qword_27DAF3580, type metadata accessor for VRFPublicKey);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_90Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_91Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22FF4F2E4()
{
  sub_22FF4E840(319, &qword_27DAF35B8, type metadata accessor for MapEntry);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22FF4E840(319, qword_28148F448, type metadata accessor for LogEntry);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22FF4F3F4()
{
  sub_22FF4E840(319, qword_28148F448, type metadata accessor for LogEntry);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t ProvisioningCertificate.fingerprint<A>(using:)()
{
  v1 = SecCertificateCopyData(*v0);
  v2 = sub_22FFB07E8();
  v4 = v3;

  sub_22FEB0E54();
  sub_22FFB1378();
  return sub_22FEA55AC(v2, v4);
}

uint64_t ProvisioningCertificate.init<A>(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_22FEC4190(a1, a2, *(*(*(*(a3 + 8) + 8) + 8) + 8));
  v10 = v9;
  v11 = sub_22FFB07B8();
  sub_22FEA55AC(v8, v10);
  v12 = SecCertificateCreateWithData(0, v11);

  if (v12)
  {
    ProvisioningCertificate.init(from:)(v12, v15);
    result = (*(*(a2 - 8) + 8))(a1, a2);
    if (!v4)
    {
      v14 = v15[1];
      *a4 = v15[0];
      a4[1] = v14;
      a4[2] = v15[2];
    }
  }

  else
  {
    type metadata accessor for ProvisioningCertificate.Error();
    sub_22FF50A14(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  return result;
}

uint64_t ProvisioningCertificate.chassisID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t ProvisioningCertificate.deviceIdentity.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t ProvisioningCertificate.data.getter()
{
  v1 = SecCertificateCopyData(*v0);
  v2 = sub_22FFB07E8();

  return v2;
}

void ProvisioningCertificate.init(from:)(__SecCertificate *a1@<X0>, __SecCertificate **a2@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = sub_22FFB0D38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = SecCertificateCopyKey(a1);
  if (!v16)
  {
    type metadata accessor for ProvisioningCertificate.Error();
    sub_22FF50A14(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_25;
  }

  v47 = v6;
  v48 = v15;
  v50 = v16;
  v51 = 0;
  v17 = qword_28148F890;
  v18 = a1;
  if (v17 != -1)
  {
    swift_once();
  }

  v49 = v5;
  v19 = sub_22FFB0C98();
  __swift_project_value_buffer(v19, qword_28148F898);
  sub_22FFB0C78();
  v20 = sub_22FFB1488();

  v21 = SecCertificateCopyExtensionValue();

  if (!v21)
  {
    goto LABEL_13;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_13;
  }

  v52 = xmmword_22FFB2D00;
  sub_22FFB07D8();

  v22 = *(&v52 + 1);
  if (*(&v52 + 1) >> 60 == 15)
  {
LABEL_13:
    v29 = 0;
    v30 = 0;
    goto LABEL_14;
  }

  v23 = v52;
  sub_22FEA5608(v52, *(&v52 + 1));
  sub_22FF4FFE0(v23, v22, &v52);
  if (v2)
  {

    *&v52 = v2;
    v24 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
    v25 = v49;
    if (swift_dynamicCast())
    {

      v26 = v47;
      v27 = v48;
      (*(v47 + 32))(v48, v13, v25);
      type metadata accessor for ProvisioningCertificate.Error();
      sub_22FF50A14(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error);
      swift_allocError();
      (*(v26 + 16))(v28, v27, v25);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_22FEA56EC(v23, v22);
      (*(v26 + 8))(v27, v25);
    }

    else
    {

      type metadata accessor for ProvisioningCertificate.Error();
      sub_22FF50A14(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error);
      swift_allocError();
      *v44 = v2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_22FEA56EC(v23, v22);
    }

    goto LABEL_25;
  }

  sub_22FEA56EC(v23, v22);
  v29 = *(&v52 + 1);
  v30 = v52;
LABEL_14:
  if (qword_28148F8B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v19, qword_28148F8B8);
  sub_22FFB0C78();
  v31 = sub_22FFB1488();

  v32 = SecCertificateCopyExtensionValue();

  if (!v32)
  {
    goto LABEL_23;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_23;
  }

  v52 = xmmword_22FFB2D00;
  sub_22FFB07D8();

  v33 = *(&v52 + 1);
  if (*(&v52 + 1) >> 60 == 15)
  {
LABEL_23:
    v40 = 0;
    v41 = 0;
LABEL_24:
    v42 = v50;
    *a2 = v18;
    a2[1] = v42;
    a2[2] = v30;
    a2[3] = v29;
    a2[4] = v40;
    a2[5] = v41;
    goto LABEL_25;
  }

  v34 = v52;
  sub_22FEA5608(v52, *(&v52 + 1));
  sub_22FF5053C(v34, v33, &v52);
  if (!v2)
  {
    sub_22FEA56EC(v34, v33);
    v41 = *(&v52 + 1);
    v40 = v52;
    goto LABEL_24;
  }

  v46 = v34;
  *&v52 = v2;
  v35 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  v36 = v49;
  if (swift_dynamicCast())
  {

    v37 = v47;
    (*(v47 + 32))(v48, v10, v36);
    type metadata accessor for ProvisioningCertificate.Error();
    sub_22FF50A14(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error);
    swift_allocError();
    v38 = v48;
    (*(v37 + 16))(v39, v48, v36);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEA56EC(v46, v33);
    (*(v37 + 8))(v38, v36);
  }

  else
  {

    type metadata accessor for ProvisioningCertificate.Error();
    sub_22FF50A14(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error);
    swift_allocError();
    *v45 = v2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEA56EC(v46, v33);
  }

LABEL_25:
  v43 = *MEMORY[0x277D85DE8];
}

void sub_22FF4FFE0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v43 = sub_22FFB0D38();
  v40 = *(v43 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFB14F8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_22FFB0BE8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22FFB0C28();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = (2 * *(sub_22FF6C960(a1, a2) + 16)) | 1;
  sub_22FFB0DB8();
  v19 = v44;
  sub_22FFB0DD8();
  v20 = v19;
  if (v19)
  {
    v21 = v43;
  }

  else
  {
    (*(v41 + 16))(v15, v17, v11);
    v25 = sub_22FFB0C18();
    sub_22FF960FC(v25, v26, v27, v28);
    v30 = v29;
    v32 = v31;
    sub_22FFB14E8();
    v33 = sub_22FFB14B8();
    v35 = v34;
    sub_22FEA55AC(v30, v32);
    if (v35)
    {
      v36 = *(v41 + 8);
      v36(v15, v11);
      v36(v17, v11);
      v37 = v39;
      *v39 = v33;
      v37[1] = v35;
      return;
    }

    sub_22FF50A14(&qword_27DAF1CA0, MEMORY[0x277D6A9C0]);
    v21 = v43;
    v20 = swift_allocError();
    sub_22FFB0D28();
    swift_willThrow();
    v38 = *(v41 + 8);
    v38(v15, v11);
    v38(v17, v11);
  }

  v45 = v20;
  v22 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  v23 = v42;
  if (swift_dynamicCast())
  {
    (*(v40 + 8))(v23, v21);
    v45 = v20;
    sub_22FF50A14(&qword_27DAF1CA0, MEMORY[0x277D6A9C0]);
    swift_allocError();
    v24 = v20;
    swift_dynamicCast();
  }

  else
  {
    swift_getErrorValue();
    sub_22FFB1C48();
    sub_22FF50A14(&qword_27DAF1CA0, MEMORY[0x277D6A9C0]);
    swift_allocError();
    sub_22FFB0D18();
  }

  swift_willThrow();
}