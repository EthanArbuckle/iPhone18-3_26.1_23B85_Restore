uint64_t storeEnumTagSinglePayload for DeviceIdentityManager.Attestation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_251C4E0C4()
{
  result = qword_27F47CE50;
  if (!qword_27F47CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE50);
  }

  return result;
}

unint64_t sub_251C4E11C()
{
  result = qword_27F47CE58;
  if (!qword_27F47CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE58);
  }

  return result;
}

unint64_t sub_251C4E174()
{
  result = qword_27F47CE60;
  if (!qword_27F47CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE60);
  }

  return result;
}

uint64_t sub_251C4E1C8(uint64_t result)
{
  if ((result - 1) >= 0x11)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingOnboardingMetric()
{
  result = qword_27F47CE68;
  if (!qword_27F47CE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251C4E250()
{
  sub_251AE526C(319, &qword_2813E1DD0);
  if (v0 <= 0x3F)
  {
    sub_251AE526C(319, &qword_2813E1FA0);
    if (v1 <= 0x3F)
    {
      sub_251C4E36C(319, &qword_2813E1E20, sub_251AC5BAC, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_251C70014();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_251C4E36C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251C4E3D0()
{
  sub_251C4E36C(0, &qword_2813E1C58, sub_251B29AC0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000016;
  *(inited + 16) = xmmword_251C75810;
  *(inited + 40) = 0x8000000251C92840;
  *(inited + 72) = &type metadata for PairedWatchProductTypeMetricField;
  *(inited + 80) = &off_2863FF018;
  *(inited + 88) = 6645601;
  *(inited + 96) = 0xE300000000000000;
  v2 = *v0;
  v3 = *(v0 + 8);
  *(inited + 128) = &type metadata for AgeMetricField;
  *(inited + 136) = &off_2863F6BE8;
  *(inited + 104) = v2;
  *(inited + 112) = v3;
  *(inited + 144) = 0x747865746E6F63;
  *(inited + 152) = 0xE700000000000000;
  v4 = v0[6];
  v5 = v0[7];
  *(inited + 184) = &type metadata for ContextMetricField;
  *(inited + 192) = &off_2863FF000;
  *(inited + 160) = v4;
  *(inited + 168) = v5;
  *(inited + 200) = 0xD000000000000020;
  *(inited + 208) = 0x8000000251C92860;
  v6 = v0[8];
  *(inited + 240) = &type metadata for ClinicalHealthRecordsOnboardedMetricField;
  *(inited + 248) = &off_2863FEFE8;
  *(inited + 216) = v6;
  *(inited + 256) = 0xD000000000000021;
  *(inited + 264) = 0x8000000251C8B150;
  v7 = type metadata accessor for ClinicalSharingOnboardingMetric();
  v8 = *(v0 + *(v7 + 40));
  *(inited + 296) = &type metadata for IHAMetricField;
  *(inited + 304) = &off_2863F6BD0;
  *(inited + 272) = v8;
  *(inited + 312) = 0xD00000000000001DLL;
  *(inited + 320) = 0x8000000251C8B180;
  v9 = *(v0 + *(v7 + 44));
  *(inited + 352) = &type metadata for IHRMetricField;
  *(inited + 360) = &off_2863F6C30;
  *(inited + 328) = v9;
  *(inited + 368) = 0xD000000000000025;
  *(inited + 376) = 0x8000000251C92890;
  *(inited + 408) = &type metadata for NumberOfProvidersPreviouslySharedWithMetricField;
  *(inited + 416) = &off_2863FEFD0;
  *(inited + 384) = v6;
  *(inited + 424) = 7890291;
  *(inited + 432) = 0xE300000000000000;
  v11 = v0[2];
  v10 = v0[3];
  *(inited + 464) = &type metadata for SexMetricField;
  *(inited + 472) = &off_2863F6BB8;
  *(inited + 440) = v11;
  *(inited + 448) = v10;
  *(inited + 480) = 1885697139;
  *(inited + 488) = 0xE400000000000000;
  v12 = v0[4];
  v13 = v0[5];
  *(inited + 520) = &type metadata for StepMetricField;
  *(inited + 528) = &off_2863FEFB8;
  *(inited + 496) = v12;
  *(inited + 504) = v13;
  *(inited + 536) = 0x6E6F6973726576;
  *(inited + 544) = 0xE700000000000000;
  *(inited + 576) = &type metadata for VersionMetricField;
  *(inited + 584) = &off_2863FEFA0;

  swift_bridgeObjectRetain_n();

  v14 = sub_251C4C2A0(inited);
  swift_setDeallocating();
  sub_251B29AC0();
  swift_arrayDestroy();
  return v14;
}

double sub_251C4E6BC@<D0>(_OWORD *a1@<X8>)
{
  *&result = 3157553;
  *a1 = xmmword_251C89110;
  return result;
}

BOOL sub_251C4E6CC(_BOOL8 result)
{
  v1 = result;
  if (result)
  {
    v11 = MEMORY[0x277D84F90];
    if (result >> 62)
    {
LABEL_18:
      v2 = sub_251C717F4();
      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
LABEL_4:
        v3 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v4 = MEMORY[0x25308D460](v3, v1);
            v5 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              goto LABEL_14;
            }
          }

          else
          {
            if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_18;
            }

            v4 = *(v1 + 8 * v3 + 32);
            v5 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
LABEL_14:
              __break(1u);
LABEL_15:
              v9 = v11;
              if ((v11 & 0x8000000000000000) == 0)
              {
                goto LABEL_20;
              }

              goto LABEL_24;
            }
          }

          v6 = v4;
          v7 = sub_251C71474();

          if (v7)
          {
            sub_251C71734();
            v8 = *(v11 + 16);
            sub_251C71774();
            sub_251C71784();
            sub_251C71744();
          }

          else
          {
          }

          ++v3;
          if (v5 == v2)
          {
            goto LABEL_15;
          }
        }
      }
    }

    v9 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    if ((v9 & 0x4000000000000000) != 0)
    {
LABEL_24:
      v10 = sub_251C717F4();
    }

    else
    {
      v10 = *(v9 + 16);
    }

    return v10 != 0;
  }

  return result;
}

BOOL sub_251C4E844@<W0>(uint64_t a1@<X8>)
{
  result = sub_251C4E6CC(*v1);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

unint64_t HTTPError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_251C702A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HTTPError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BBB648(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v6, v10, v2);
      sub_251C4F8C8(&qword_27F47CE78, MEMORY[0x277CC9AE8]);
      v12 = sub_251C71A44();
      (*(v3 + 8))(v6, v2);
      return v12;
    }

    v18 = *v10;
    strcpy(v21, "HTTP status ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    v20[1] = v18;
    v16 = sub_251C719A4();
LABEL_8:
    MEMORY[0x25308CDA0](v16, v17);

    return v21[0];
  }

  if (EnumCaseMultiPayload == 2)
  {
    result = 0xD000000000000010;
    v14 = v10[1];
    if (!v14)
    {
      return result;
    }

    v15 = *v10;
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_251C716A4();

    v21[0] = 0xD000000000000012;
    v21[1] = 0x8000000251C928E0;
    v16 = v15;
    v17 = v14;
    goto LABEL_8;
  }

  result = *v10;
  v19 = v10[1];
  return result;
}

uint64_t type metadata accessor for HTTPError()
{
  result = qword_27F47CE88;
  if (!qword_27F47CE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HTTPError.safelyLoggableDescription.getter()
{
  v1 = v0;
  v2 = sub_251C702A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HTTPError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BBB648(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v6, v10, v2);
      v12 = sub_251C70294();
      v13 = sub_251C6FD74();

      v14 = [v13 hrs_safelyLoggableDescription];
      v15 = sub_251C70F14();

      (*(v3 + 8))(v6, v2);
      return v15;
    }

    v21 = *v10;
    strcpy(v25, "HTTP status ");
    BYTE5(v25[1]) = 0;
    HIWORD(v25[1]) = -5120;
    v24[1] = v21;
    v19 = sub_251C719A4();
LABEL_8:
    MEMORY[0x25308CDA0](v19, v20);

    return v25[0];
  }

  if (EnumCaseMultiPayload == 2)
  {
    result = 0xD000000000000010;
    v17 = v10[1];
    if (!v17)
    {
      return result;
    }

    v18 = *v10;
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_251C716A4();

    v25[0] = 0xD000000000000012;
    v25[1] = 0x8000000251C928E0;
    v19 = v18;
    v20 = v17;
    goto LABEL_8;
  }

  v22 = v10[1];
  v25[0] = *v10;
  v25[1] = v22;
  sub_251C719F4();
  v23 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_251C715C4();
  swift_unknownObjectRelease();
  return sub_251C70F74();
}

uint64_t sub_251C4EEAC()
{

  v0 = sub_251C71004();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_251C71004();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_251C719D4();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_251C71004();
      v3 = v5;
    }

    while (v5);
  }

  sub_251C71004();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

Swift::Bool __swiftcall HTTPError.isUnauthorizedErrorAskingForBearerToken()()
{
  v1 = type metadata accessor for HTTPError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BBB648(v0, v4);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_251C4F868(v4, type metadata accessor for HTTPError);
    goto LABEL_5;
  }

  if (!v4[1])
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v5 = *v4;
  v6 = v4[1];
  v7 = sub_251C4EEAC();

  return v7 & 1;
}

uint64_t NSHTTPURLResponse.asHTTPError()@<X0>(uint64_t *a1@<X8>)
{
  if ([v1 statusCode] >= 400)
  {
    if ([v1 statusCode] == 401)
    {
      v8 = sub_251C70EE4();
      v9 = [v1 valueForHTTPHeaderField_];

      if (v9)
      {
        v10 = sub_251C70F14();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      *a1 = v10;
      a1[1] = v12;
      v13 = type metadata accessor for HTTPError();
    }

    else
    {
      *a1 = [v1 statusCode];
      v13 = type metadata accessor for HTTPError();
    }

    swift_storeEnumTagMultiPayload();
    v4 = *(*(v13 - 8) + 56);
    v6 = a1;
    v7 = 0;
    v5 = v13;
  }

  else
  {
    v3 = type metadata accessor for HTTPError();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a1;
    v7 = 1;
  }

  return v4(v6, v7, 1, v5);
}

uint64_t _s19HealthRecordsDaemon9HTTPErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C702A4();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v47 - v8;
  v9 = type metadata accessor for HTTPError();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v47 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v47 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - v20;
  sub_251C4F804();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = &v26[*(v24 + 56)];
  sub_251BBB648(a1, v26);
  sub_251BBB648(a2, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_251BBB648(v26, v16);
      v30 = *v16;
      v29 = v16[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = *(v27 + 1);
        if (v29)
        {
          if (v31)
          {
            if (v30 == *v27 && v29 == v31)
            {

              v34 = 1;
            }

            else
            {
              v33 = *(v27 + 1);
              v34 = sub_251C719D4();
            }
          }

          else
          {
            v34 = 0;
          }
        }

        else
        {
          v36 = type metadata accessor for HTTPError;
          if (!v31)
          {
            v34 = 1;
            goto LABEL_34;
          }

          v34 = 0;
        }

        goto LABEL_32;
      }
    }

    else
    {
      sub_251BBB648(v26, v13);
      v38 = *v13;
      v37 = v13[1];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        if (v38 == *v27 && v37 == *(v27 + 1))
        {
          v34 = 1;
        }

        else
        {
          v40 = *(v27 + 1);
          v34 = sub_251C719D4();
        }

LABEL_32:

        goto LABEL_33;
      }
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload)
  {
    sub_251BBB648(v26, v19);
    v35 = swift_getEnumCaseMultiPayload();
    v36 = sub_251C4F804;
    if (v35 != 1)
    {
      v34 = 0;
      goto LABEL_34;
    }

    v34 = *v19 == *v27;
LABEL_33:
    v36 = type metadata accessor for HTTPError;
    goto LABEL_34;
  }

  sub_251BBB648(v26, v21);
  if (!swift_getEnumCaseMultiPayload())
  {
    v41 = v50;
    v42 = *(v50 + 32);
    v43 = v48;
    v42(v48, v21, v4);
    v44 = v49;
    v42(v49, v27, v4);
    sub_251C4F8C8(&qword_27F47BB40, MEMORY[0x277CC9AE8]);
    v34 = sub_251C6FD24();
    v45 = *(v41 + 8);
    v45(v44, v4);
    v45(v43, v4);
    goto LABEL_33;
  }

  (*(v50 + 8))(v21, v4);
LABEL_23:
  v34 = 0;
  v36 = sub_251C4F804;
LABEL_34:
  sub_251C4F868(v26, v36);
  return v34 & 1;
}

void sub_251C4F780()
{
  sub_251C702A4();
  if (v0 <= 0x3F)
  {
    sub_251AD56B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_251C4F804()
{
  if (!qword_27F47CE98)
  {
    type metadata accessor for HTTPError();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47CE98);
    }
  }
}

uint64_t sub_251C4F868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C4F8C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251C4FB08(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v23 = a1;
  v24 = a2;
  sub_251B050E4(0);
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251C717F4())
  {
    v11 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v11;
    }

    v26 = MEMORY[0x277D84F90];
    sub_251C0BBA8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v11 = v26;
    v20 = i;
    v21 = a3 & 0xC000000000000001;
    v19 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v21)
      {
        v14 = MEMORY[0x25308D460](v12, a3);
      }

      else
      {
        if (v12 >= *(v19 + 16))
        {
          goto LABEL_17;
        }

        v14 = *(a3 + 8 * v12 + 32);
      }

      v25 = v14;
      v23(&v25);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v26 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_251C0BBA8(v15 > 1, v16 + 1, 1);
        v11 = v26;
      }

      *(v11 + 16) = v16 + 1;
      sub_251C557C4(v9, v11 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v16, sub_251B050E4);
      ++v12;
      if (v13 == v20)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

void sub_251C4FDA0(void (*a1)(id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v26 = a6;
  v27 = a1;
  v8 = v6;
  v28 = a2;
  v10 = a4(0);
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v30 = MEMORY[0x277D84F90];
    a5(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v15 = 0;
    v16 = v30;
    v23 = i;
    v24 = a3 & 0xC000000000000001;
    v21 = a5;
    v22 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a5 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v24)
      {
        v17 = MEMORY[0x25308D460](v15, a3);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v17 = *(a3 + 8 * v15 + 32);
      }

      i = v17;
      v29 = v17;
      v27(&v29);
      if (v8)
      {
        goto LABEL_20;
      }

      v8 = 0;

      v30 = v16;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        v21(v18 > 1, v19 + 1, 1);
        v16 = v30;
      }

      *(v16 + 16) = v19 + 1;
      sub_251C557C4(v13, v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19, v26);
      ++v15;
      if (a5 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_251C4FFD8(uint64_t a1, uint64_t a2)
{
  v23[5] = *MEMORY[0x277D85DE8];
  *&v22 = a1;
  *(&v22 + 1) = a2;
  sub_251C55CC4();
  sub_251C55DA0();

  if (swift_dynamicCast())
  {
    sub_251A7E8D8(v20, v23);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_251C6FCE4();
    v20[0] = v22;
    __swift_destroy_boxed_opaque_existential_1(v23);
    goto LABEL_33;
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v2 = sub_251C55938(v20, &qword_27F47CED0, sub_251C55DA0);
  v20[0] = xmmword_251C745D0;
  MEMORY[0x28223BE20](v2);
  v3 = sub_251C5527C(sub_251C55E04);
  v6 = v3;
  v7 = v4;
  v8 = *(&v20[0] + 1) >> 62;
  if ((*(&v20[0] + 1) >> 62) > 1)
  {
    if (v8 != 2)
    {
      if (!v5)
      {
        goto LABEL_18;
      }

      v13 = 0;
LABEL_30:
      if (v13 >= v5)
      {
        sub_251C6FEA4();
        goto LABEL_32;
      }

      goto LABEL_38;
    }

    v10 = *(*&v20[0] + 16);
    v9 = *(*&v20[0] + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (v11)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    if (v5 != v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!v8)
    {
      if (v5 == BYTE14(v20[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (__OFSUB__(DWORD1(v20[0]), v20[0]))
    {
      goto LABEL_40;
    }

    if (v5 != DWORD1(v20[0]) - LODWORD(v20[0]))
    {
LABEL_13:
      if (v8 == 2)
      {
        v13 = *(*&v20[0] + 24);
      }

      else if (v8 == 1)
      {
        v13 = *&v20[0] >> 32;
      }

      else
      {
        v13 = BYTE14(v20[0]);
      }

      goto LABEL_30;
    }
  }

LABEL_18:
  memset(v23, 0, 15);
  v14 = v3[2];
  if (v4 == v14)
  {
    goto LABEL_32;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if (v4 >= v3[2])
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  LOBYTE(v15) = 0;
  v16 = v14 - 1;
  while (1)
  {
    *(v23 + v15) = *(v6 + v7 + 32);
    v15 = v15 + 1;
    if ((v15 & 0x100) != 0)
    {
      goto LABEL_36;
    }

    if (v15 != 14)
    {
      break;
    }

    *&v22 = v23[0];
    *(&v22 + 6) = *(v23 + 6);
    sub_251C6FEB4();
    if (v16 == v7)
    {
      goto LABEL_32;
    }

    LOBYTE(v15) = 0;
LABEL_23:
    if (++v7 >= v6[2])
    {
      goto LABEL_35;
    }
  }

  if (v16 != v7)
  {
    goto LABEL_23;
  }

  *&v22 = v23[0];
  *(&v22 + 6) = *(v23 + 6);
  sub_251C6FEB4();
LABEL_32:

LABEL_33:
  v17 = v20[0];
  sub_251A858C4(*&v20[0], *(&v20[0] + 1));

  sub_251A83028(v17, *(&v17 + 1));
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_251C50344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  sub_251C56038(0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v146 = &Output - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v144 = &Output - v8;
  MEMORY[0x28223BE20](v7);
  v142 = &Output - v9;
  v10 = type metadata accessor for PBDateRange(0);
  v149 = *(v10 - 8);
  v11 = *(v149 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v147 = &Output - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v145 = (&Output - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v143 = (&Output - v17);
  MEMORY[0x28223BE20](v16);
  v141 = (&Output - v18);
  sub_251C56038(0, &qword_27F47C280, MEMORY[0x277CC53B0]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v162 = &Output - v21;
  v140 = type metadata accessor for PBTypedData(0);
  v22 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v159 = &Output - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PBPlainText(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v161 = (&Output - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_251C70C94();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v148 = &Output - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v163 = &Output - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &Output - v34;
  v150 = type metadata accessor for PBNode(0);
  v36 = *(*(v150 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v150);
  v160 = &Output - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &Output - v39;
  v157 = sub_251C70DE4();
  v155 = *(v157 - 8);
  v41 = *(v155 + 64);
  MEMORY[0x28223BE20](v157);
  v153 = &Output - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_251C70C64();
  v156 = *(v158 - 8);
  v43 = *(v156 + 64);
  MEMORY[0x28223BE20](v158);
  v154 = &Output - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for PBRevocationAuthorization();
  v45 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v47 = &Output - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  Output = type metadata accessor for ClinicalSharingQueryOutput(0);
  v48 = *(*(Output - 8) + 64);
  v49 = MEMORY[0x28223BE20](Output);
  v151 = &Output - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v52 = &Output - v51;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v53 = sub_251C70764();
  __swift_project_value_buffer(v53, qword_2813E8130);
  v164 = a1;
  sub_251C5582C(a1, v52, type metadata accessor for ClinicalSharingQueryOutput);
  v54 = sub_251C70744();
  v55 = sub_251C713C4();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v165 = v35;
    v166 = v28;
    v57 = v10;
    v58 = v56;
    *v56 = 134217984;
    v59 = v40;
    v60 = v27;
    v61 = nullsub_1(*v52, v52[8]);
    sub_251C55894(v52, type metadata accessor for ClinicalSharingQueryOutput);
    *(v58 + 1) = v61;
    v27 = v60;
    v40 = v59;
    _os_log_impl(&dword_251A6C000, v54, v55, "Preparing to upload ClinicalSharingDataNode. DataType: %ld", v58, 0xCu);
    v62 = v58;
    v10 = v57;
    v35 = v165;
    v28 = v166;
    MEMORY[0x25308E2B0](v62, -1, -1);
  }

  else
  {
    sub_251C55894(v52, type metadata accessor for ClinicalSharingQueryOutput);
  }

  v63 = v170;
  result = sub_251A82B44(3, 1, 0, 0xE000000000000000, v47);
  if (!v63)
  {
    v170 = v10;
    sub_251C55D58(&qword_27F479858, type metadata accessor for PBRevocationAuthorization);
    v65 = sub_251C70594();
    v67 = v66;
    sub_251C55894(v47, type metadata accessor for PBRevocationAuthorization);
    v165 = v35;
    v166 = v28;
    sub_251C55D58(&qword_27F47A020, MEMORY[0x277CC5540]);
    v68 = v153;
    v69 = v67;
    v70 = v157;
    sub_251C70C54();
    sub_251A858C4(v65, v67);
    sub_251B1C08C(v65, v67);
    v167 = v65;
    sub_251A83028(v65, v67);
    v71 = v154;
    sub_251C70C44();
    (*(v155 + 8))(v68, v70);
    sub_251C55D58(&qword_27F47CEA0, MEMORY[0x277CC5290]);
    v72 = v158;
    v73 = sub_251C70DD4();
    v75 = v74;
    (*(v156 + 8))(v71, v72);
    v76 = sub_251C4FFD8(v73, v75);
    v78 = v77;
    v79 = v159;
    sub_251C5582C(v164, v159, type metadata accessor for PBTypedData);
    v80 = v161;
    sub_251AD892C(v79, 0, 0, v161);
    v81 = sub_251C70CF4();
    v82 = v162;
    (*(*(v81 - 8) + 56))(v162, 1, 1, v81);
    v83 = v160;
    v84 = sub_251BFC488(v160, v163, v80, 3uLL, 1, v82, v76, v78, 0, 0);
    v158 = v76;
    v159 = v78;
    v157 = v69;
    sub_251A83028(v84, v85);
    sub_251C55938(v82, &qword_27F47C280, MEMORY[0x277CC53B0]);
    sub_251C55894(v80, type metadata accessor for PBPlainText);
    sub_251C557C4(v83, v40, type metadata accessor for PBNode);
    v87 = v165;
    v86 = v166;
    (*(v166 + 32))(v165, v163, v27);
    sub_251C5582C(v40, v152, type metadata accessor for PBNode);
    v88 = v151;
    sub_251C5582C(v164, v151, type metadata accessor for ClinicalSharingQueryOutput);
    sub_251C55D58(&qword_27F47B948, type metadata accessor for PBNode);
    v89 = sub_251C70594();
    v164 = v40;
    v90 = v89;
    v92 = v91;
    v93 = sub_251B1C34C(v89, v91);
    v162 = v94;
    v163 = v93;
    sub_251A83028(v90, v92);
    sub_251C55FC0(0, &qword_27F4799E8, type metadata accessor for ClinicalSharingDataNodeInfo);
    v96 = (v152 + *(v95 + 48));
    v97 = *(v86 + 16);
    v156 = v27;
    v97(v148, v87, v27);
    v98 = *(v88 + *(Output + 20));
    v161 = v96;
    *v96 = v98;

    sub_251C70C74();
    v160 = v169;
    v154 = *v88;
    v155 = v168;
    LODWORD(v153) = *(v88 + 8);
    v99 = *(v140 + 28);
    v100 = v142;
    sub_251B36FC4(v88 + v99, v142);
    v101 = *(v149 + 48);
    v102 = v170;
    if (v101(v100, 1, v170) == 1)
    {
      v103 = v141;
      *v141 = 0;
      v103[1] = 0xE000000000000000;
      v103[2] = 0;
      v103[3] = 0xE000000000000000;
      v103[4] = 0;
      *(v103 + 40) = 1;
      v104 = v103;
      v105 = v103 + *(v102 + 28);
      sub_251C703A4();
      if (v101(v100, 1, v102) != 1)
      {
        sub_251C55938(v100, qword_2813E6EE8, type metadata accessor for PBDateRange);
      }
    }

    else
    {
      v104 = v141;
      sub_251C557C4(v100, v141, type metadata accessor for PBDateRange);
    }

    v106 = v104[1];
    v150 = *v104;
    v152 = v106;

    sub_251C55894(v104, type metadata accessor for PBDateRange);
    v107 = v144;
    sub_251B36FC4(v88 + v99, v144);
    if (v101(v107, 1, v102) == 1)
    {
      v108 = v143;
      *v143 = 0;
      v108[1] = 0xE000000000000000;
      v108[2] = 0;
      v108[3] = 0xE000000000000000;
      v108[4] = 0;
      *(v108 + 40) = 1;
      v109 = v108;
      v110 = v108 + *(v102 + 28);
      sub_251C703A4();
      if (v101(v107, 1, v102) != 1)
      {
        sub_251C55938(v107, qword_2813E6EE8, type metadata accessor for PBDateRange);
      }
    }

    else
    {
      v109 = v143;
      sub_251C557C4(v107, v143, type metadata accessor for PBDateRange);
    }

    v111 = v109[3];
    v143 = v109[2];
    v144 = v111;

    sub_251C55894(v109, type metadata accessor for PBDateRange);
    v112 = v88 + v99;
    v113 = v146;
    sub_251B36FC4(v112, v146);
    if (v101(v113, 1, v102) == 1)
    {
      v114 = v145;
      *v145 = 0;
      v114[1] = 0xE000000000000000;
      v114[2] = 0;
      v114[3] = 0xE000000000000000;
      v114[4] = 0;
      *(v114 + 40) = 1;
      v115 = v114 + *(v102 + 28);
      sub_251C703A4();
      v116 = v102;
      if (v101(v113, 1, v102) != 1)
      {
        sub_251C55938(v113, qword_2813E6EE8, type metadata accessor for PBDateRange);
      }
    }

    else
    {
      v116 = v102;
      v114 = v145;
      sub_251C557C4(v113, v145, type metadata accessor for PBDateRange);
    }

    v146 = v114[4];
    LODWORD(v145) = *(v114 + 40);
    sub_251C55894(v114, type metadata accessor for PBDateRange);
    v170 = type metadata accessor for ClinicalSharingDataNodeInfo();
    v117 = v161 + *(v170 + 20);
    *(v117 + 1) = xmmword_251C745D0;
    v118 = type metadata accessor for PBReference(0);
    v119 = v118[7];
    v120 = type metadata accessor for PBReference.OneOf_Metadata(0);
    (*(*(v120 - 8) + 56))(&v117[v119], 1, 1, v120);
    v121 = &v117[v118[8]];
    sub_251C703A4();
    v122 = v118[9];
    v149 = *(v149 + 56);
    v123 = v116;
    (v149)(&v117[v122], 1, 1, v116);
    v124 = v162;
    *v117 = v163;
    *(v117 + 1) = v124;
    v126 = *(v117 + 2);
    v125 = *(v117 + 3);

    v127 = v155;
    v128 = v160;
    sub_251A858C4(v155, v160);
    sub_251A83028(v126, v125);
    *(v117 + 2) = v127;
    *(v117 + 3) = v128;
    *(v117 + 4) = v154;
    v117[40] = v153;
    v129 = v147;
    v130 = &v147[*(v123 + 28)];
    sub_251C703A4();
    sub_251A83028(v158, v159);
    sub_251A83028(v127, v128);
    v131 = *(v166 + 8);
    v132 = v156;
    v131(v148, v156);
    v131(v165, v132);
    sub_251C55894(v164, type metadata accessor for PBNode);
    v133 = v152;
    *v129 = v150;
    *(v129 + 8) = v133;
    v134 = v144;
    *(v129 + 16) = v143;
    *(v129 + 24) = v134;
    *(v129 + 32) = v146;
    *(v129 + 40) = v145;
    sub_251C55938(&v117[v122], qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251C557C4(v129, &v117[v122], type metadata accessor for PBDateRange);
    (v149)(&v117[v122], 0, 1, v123);
    v135 = v170;
    v136 = v161;
    v137 = (v161 + *(v170 + 24));
    *v137 = v163;
    v137[1] = v162;
    v137[2] = v167;
    v137[3] = v157;
    v138 = v151;
    sub_251C5582C(v151, v136 + *(v135 + 28), type metadata accessor for PBTypedData);
    return sub_251C55894(v138, type metadata accessor for ClinicalSharingQueryOutput);
  }

  return result;
}

uint64_t sub_251C515D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v184 = a2;
  v3 = type metadata accessor for PBDateRange(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v178 = &v172[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251C56038(0, &qword_27F47C280, MEMORY[0x277CC53B0]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v199 = &v172[-v9];
  sub_251C56038(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v196 = &v172[-v12];
  v203 = type metadata accessor for PBPlainText(0);
  v13 = *(*(v203 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v203);
  v194 = &v172[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v198 = &v172[-v16];
  v201 = sub_251C70014();
  v204 = *(v201 - 8);
  v17 = *(v204 + 64);
  MEMORY[0x28223BE20](v201);
  v200 = &v172[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v183 = sub_251C70C94();
  v182 = *(v183 - 8);
  v19 = *(v182 + 64);
  v20 = MEMORY[0x28223BE20](v183);
  v180 = &v172[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v197 = &v172[-v23];
  MEMORY[0x28223BE20](v22);
  v186 = &v172[-v24];
  v181 = type metadata accessor for PBNode(0);
  v25 = *(*(v181 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v181);
  v195 = &v172[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v185 = &v172[-v28];
  v191 = sub_251C70DE4();
  v189 = *(v191 - 8);
  v29 = *(v189 + 64);
  MEMORY[0x28223BE20](v191);
  v187 = &v172[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v192 = sub_251C70C64();
  v190 = *(v192 - 1);
  v31 = *(v190 + 64);
  MEMORY[0x28223BE20](v192);
  v188 = &v172[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v213 = type metadata accessor for ClinicalSharingDataNodeInfo();
  v33 = *(v213 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v213);
  v36 = &v172[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v177 = type metadata accessor for PBReference(0);
  v37 = *(v177 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v177);
  v40 = &v172[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v205 = type metadata accessor for PBRevocationAuthorization();
  v41 = *(*(v205 - 8) + 64);
  MEMORY[0x28223BE20](v205);
  v207 = &v172[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v206 = type metadata accessor for PBReferences(0);
  v43 = *(*(v206 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v206);
  v193 = &v172[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = MEMORY[0x28223BE20](v44);
  v202 = &v172[-v47];
  MEMORY[0x28223BE20](v46);
  v209 = &v172[-v48];
  v49 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v50 = sub_251C70764();
  __swift_project_value_buffer(v50, qword_2813E8130);

  v51 = sub_251C70744();
  v52 = sub_251C713C4();
  v53 = os_log_type_enabled(v51, v52);
  v179 = v3;
  if (v53)
  {
    v54 = v4;
    v55 = v49;
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    if (*(v55 + 16))
    {
      v57 = v55 + *(v213 + 20) + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v58 = nullsub_1(*(v57 + 32), *(v57 + 40));
    }

    else
    {
      v58 = 0;
    }

    *(v56 + 4) = v58;

    _os_log_impl(&dword_251A6C000, v51, v52, "Preparing to upload ClinicalSharingCategoryNode. DataType:  %ld", v56, 0xCu);
    MEMORY[0x25308E2B0](v56, -1, -1);

    v49 = v55;
    v4 = v54;
    v59 = *(v49 + 16);
    if (!v59)
    {
      goto LABEL_24;
    }
  }

  else
  {

    v59 = *(v49 + 16);
    if (!v59)
    {
LABEL_24:
      sub_251AC1148();
      swift_allocError();
      *v113 = 0xD000000000000018;
      *(v113 + 8) = 0x8000000251C92920;
      *(v113 + 16) = 0;
      *(v113 + 24) = 0;
      *(v113 + 32) = 5;
      return swift_willThrow();
    }
  }

  v175 = v4;
  v60 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v176 = v49;
  v61 = v49 + v60;
  v62 = v61 + *(v213 + 20);
  v174 = *(v62 + 32);
  v173 = *(v62 + 40);
  v212 = MEMORY[0x277D84F90];
  sub_251C0BEA4(0, v59, 0);
  v63 = v212;
  v64 = *(v33 + 72);
  do
  {
    sub_251C5582C(v61, v36, type metadata accessor for ClinicalSharingDataNodeInfo);
    sub_251C5582C(&v36[*(v213 + 20)], v40, type metadata accessor for PBReference);
    sub_251C55894(v36, type metadata accessor for ClinicalSharingDataNodeInfo);
    v212 = v63;
    v66 = *(v63 + 16);
    v65 = *(v63 + 24);
    if (v66 >= v65 >> 1)
    {
      sub_251C0BEA4(v65 > 1, v66 + 1, 1);
      v63 = v212;
    }

    *(v63 + 16) = v66 + 1;
    sub_251C557C4(v40, v63 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v66, type metadata accessor for PBReference);
    v61 += v64;
    --v59;
  }

  while (v59);
  v67 = v209;
  v68 = &v209[*(v206 + 20)];
  sub_251C703A4();
  *v67 = v63;
  v69 = v207;
  v70 = v208;
  sub_251A82B44(3, 1, 0, 0xE000000000000000, v207);
  if (v70)
  {
    v171 = v67;
  }

  else
  {
    sub_251C55D58(&qword_27F479858, type metadata accessor for PBRevocationAuthorization);
    v71 = sub_251C70594();
    v73 = v72;
    sub_251C55894(v69, type metadata accessor for PBRevocationAuthorization);
    sub_251C55D58(&qword_27F47A020, MEMORY[0x277CC5540]);
    v74 = v187;
    v75 = v191;
    sub_251C70C54();
    sub_251A858C4(v71, v73);
    sub_251B1C08C(v71, v73);
    v205 = v71;
    v206 = v73;
    sub_251A83028(v71, v73);
    v76 = v188;
    sub_251C70C44();
    (*(v189 + 8))(v74, v75);
    sub_251C55D58(&qword_27F47CEA0, MEMORY[0x277CC5290]);
    v77 = v192;
    v78 = sub_251C70DD4();
    v80 = v79;
    (*(v190 + 8))(v76, v77);
    v81 = sub_251C4FFD8(v78, v80);
    v83 = v82;
    if (qword_27F478930 != -1)
    {
      swift_once();
    }

    v84 = qword_27F4A2878;
    v85 = v200;
    sub_251C70004();
    v86 = sub_251C6FF94();
    v87 = *(v204 + 8);
    v204 += 8;
    v207 = v87;
    (v87)(v85, v201);
    v192 = v84;
    v88 = [v84 stringFromDate_];

    v89 = sub_251C70F14();
    v91 = v90;

    sub_251C5582C(v67, v202, type metadata accessor for PBReferences);
    v92 = v194;
    sub_251C703A4();
    v93 = v203[5];
    if (qword_27F478468 != -1)
    {
      swift_once();
    }

    v213 = v81;
    *&v92[v93] = qword_27F4794E0;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *&v92[v93];
    v208 = v83;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v96 = type metadata accessor for PBPlainText._StorageClass(0);
      v97 = *(v96 + 48);
      v98 = *(v96 + 52);
      swift_allocObject();
      v95 = sub_251AB6604(v95);
      *&v92[v93] = v95;
    }

    swift_beginAccess();
    *(v95 + 16) = 2;
    *(v95 + 24) = 1;

    v99 = *&v92[v93];
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v101 = *&v92[v93];
    if ((v100 & 1) == 0)
    {
      v102 = type metadata accessor for PBPlainText._StorageClass(0);
      v103 = *(v102 + 48);
      v104 = *(v102 + 52);
      swift_allocObject();
      v101 = sub_251AB6604(v101);
      *&v92[v93] = v101;
    }

    v105 = v193;
    swift_beginAccess();
    v106 = *(v101 + 72);
    *(v101 + 64) = v89;
    *(v101 + 72) = v91;

    v107 = v92;
    v108 = v198;
    sub_251C557C4(v107, v198, type metadata accessor for PBPlainText);
    v109 = v202;
    sub_251C5582C(v202, v105, type metadata accessor for PBReferences);
    v110 = v203[5];
    v111 = *&v108[v110];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_251C55894(v109, type metadata accessor for PBReferences);
      v112 = *&v108[v110];
    }

    else
    {
      v115 = *&v108[v110];
      v116 = type metadata accessor for PBPlainText._StorageClass(0);
      v117 = *(v116 + 48);
      v118 = *(v116 + 52);
      swift_allocObject();
      v119 = v109;

      v112 = sub_251AB6604(v120);
      sub_251C55894(v119, type metadata accessor for PBReferences);

      *&v108[v110] = v112;
    }

    v121 = v196;
    sub_251C557C4(v105, v196, type metadata accessor for PBReferences);
    v122 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
    v123 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
    swift_beginAccess();
    sub_251AB9B14(v121, v112 + v123);
    swift_endAccess();
    v124 = sub_251C70CF4();
    v125 = v199;
    (*(*(v124 - 8) + 56))(v199, 1, 1, v124);
    v126 = v195;
    v127 = v197;
    v128 = sub_251BFC488(v195, v197, v108, 2uLL, 1, v125, v213, v208, 0, 0);
    sub_251A83028(v128, v129);

    sub_251C55938(v125, &qword_27F47C280, MEMORY[0x277CC53B0]);
    sub_251C55894(v108, type metadata accessor for PBPlainText);
    v130 = v185;
    sub_251C557C4(v126, v185, type metadata accessor for PBNode);
    (*(v182 + 32))(v186, v127, v183);
    sub_251C5582C(v130, v184, type metadata accessor for PBNode);
    sub_251C55D58(&qword_27F47B948, type metadata accessor for PBNode);
    v131 = v176;

    v132 = sub_251C70594();
    v134 = v133;
    v135 = sub_251B1C34C(v132, v133);
    v137 = v136;
    sub_251A83028(v132, v134);
    sub_251C55FC0(0, &qword_27F479978, type metadata accessor for ClinicalSharingCategoryNodeInfo);
    v202 = (v184 + *(v138 + 48));
    v139 = v202;
    (*(v182 + 16))();
    *v139 = v131;
    v203 = type metadata accessor for ClinicalSharingCategoryNodeInfo();
    v140 = (v139 + v203[6]);
    *v140 = v135;
    v140[1] = v137;
    v141 = v205;
    v142 = v206;
    v140[2] = v205;
    v140[3] = v142;

    sub_251A858C4(v141, v142);

    sub_251C70C74();
    v198 = v211;
    v199 = v210;
    v197 = v135;
    v143 = v200;
    sub_251C6FF54();
    v144 = sub_251C6FF94();
    v145 = v192;
    v146 = [v192 stringFromDate_];

    v196 = sub_251C70F14();
    v195 = v147;

    v148 = v201;
    v149 = v207;
    (v207)(v143, v201);
    sub_251C6FF64();
    v150 = sub_251C6FF94();
    v151 = [v145 stringFromDate_];

    v194 = sub_251C70F14();
    v193 = v152;

    (v149)(v143, v148);
    v153 = &v202[v203[5]];
    *(v153 + 1) = xmmword_251C745D0;
    v154 = v177;
    v155 = *(v177 + 28);
    v156 = type metadata accessor for PBReference.OneOf_Metadata(0);
    (*(*(v156 - 8) + 56))(&v153[v155], 1, 1, v156);
    v157 = &v153[*(v154 + 32)];
    sub_251C703A4();
    v158 = *(v154 + 36);
    v207 = *(v175 + 56);
    v159 = v179;
    (v207)(&v153[v158], 1, 1, v179);
    *v153 = v197;
    *(v153 + 1) = v137;
    v160 = *(v153 + 2);
    v161 = *(v153 + 3);
    v163 = v198;
    v162 = v199;
    sub_251A858C4(v199, v198);
    sub_251A83028(v160, v161);
    *(v153 + 2) = v162;
    *(v153 + 3) = v163;
    *(v153 + 4) = v174;
    v153[40] = v173;
    v164 = v178;
    *(v178 + 4) = 0;
    *(v164 + 40) = 1;
    v165 = v164 + *(v159 + 28);
    sub_251C703A4();
    sub_251A83028(v162, v163);
    v166 = v195;
    *v164 = v196;
    *(v164 + 8) = v166;
    v167 = v193;
    *(v164 + 16) = v194;
    *(v164 + 24) = v167;
    sub_251C55938(&v153[v158], qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251C557C4(v164, &v153[v158], type metadata accessor for PBDateRange);
    (v207)(&v153[v158], 0, 1, v159);
    v168 = sub_251B19EF8(v176);

    sub_251A83028(v213, v208);
    sub_251A83028(v205, v206);
    v169 = *(v182 + 8);
    v170 = v183;
    v169(v180, v183);
    v169(v186, v170);
    sub_251C55894(v185, type metadata accessor for PBNode);
    *&v202[v203[7]] = v168;
    v171 = v209;
  }

  return sub_251C55894(v171, type metadata accessor for PBReferences);
}

uint64_t sub_251C52C6C@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6[2] = *a1;
  v6[3] = a3;
  result = sub_251C4FB08(sub_251C5525C, v6, a2);
  *a4 = result;
  return result;
}

void sub_251C52CD0(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v363 = a4;
  v357 = a3;
  v386 = a2;
  v359 = type metadata accessor for ClinicalSharingDataNodeInfo();
  v371 = *(v359 - 8);
  v5 = *(v371 + 64);
  MEMORY[0x28223BE20](v359);
  v358 = &v327 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = type metadata accessor for PBLookupInfo(0);
  v7 = *(*(v329 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v329);
  v330 = &v327 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v328 = &v327 - v10;
  sub_251C56038(0, &qword_27F47C280, MEMORY[0x277CC53B0]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v327 - v13;
  sub_251C56038(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v343 = &v327 - v17;
  v342 = type metadata accessor for PBPlainText(0);
  v18 = *(*(v342 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v342);
  v341 = &v327 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v327 - v21;
  v332 = sub_251C70C94();
  v23 = *(v332 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v332);
  v331 = &v327 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v327 - v27;
  v365 = type metadata accessor for PBNode(0);
  v362 = *(v365 - 8);
  v29 = *(v362 + 64);
  MEMORY[0x28223BE20](v365);
  v347 = &v327 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = sub_251C70DE4();
  v336 = *(v338 - 8);
  v31 = *(v336 + 64);
  MEMORY[0x28223BE20](v338);
  v334 = &v327 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_251C70C64();
  v337 = *(v339 - 8);
  v33 = *(v337 + 64);
  MEMORY[0x28223BE20](v339);
  v335 = &v327 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = type metadata accessor for PBRevocationAuthorization();
  v35 = *(*(v349 - 8) + 64);
  MEMORY[0x28223BE20](v349);
  v351 = &v327 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PBReference(0);
  v374 = *(v37 - 8);
  v38 = *(v374 + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v378 = &v327 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_251C70CF4();
  v41 = *(v40 - 8);
  v352 = v40;
  v353 = v41;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v360 = &v327 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = sub_251C70014();
  v377 = *(v379 - 8);
  v44 = *(v377 + 64);
  v45 = MEMORY[0x28223BE20](v379);
  v356 = &v327 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v355 = &v327 - v47;
  v354 = type metadata accessor for PBReferences(0);
  v48 = *(*(v354 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v354);
  v340 = &v327 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v348 = &v327 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = &v327 - v53;
  v376 = type metadata accessor for ClinicalSharingCategoryNodeInfo();
  v361 = *(v376 - 8);
  v55 = *(v361 + 64);
  v56 = MEMORY[0x28223BE20](v376);
  v333 = &v327 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v375 = (&v327 - v59);
  v60 = MEMORY[0x28223BE20](v58);
  v368 = &v327 - v61;
  MEMORY[0x28223BE20](v60);
  v382 = &v327 - v62;
  v402 = sub_251C70074();
  v370 = *(v402 - 1);
  v63 = *(v370 + 64);
  MEMORY[0x28223BE20](v402);
  v385 = (&v327 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v66 = sub_251C70764();
  v67 = __swift_project_value_buffer(v66, qword_2813E8130);

  v388 = v67;
  v68 = sub_251C70744();
  v69 = sub_251C713C4();

  v70 = os_log_type_enabled(v68, v69);
  v345 = v23;
  v346 = v28;
  v366 = v54;
  v344 = v14;
  v350 = v22;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v384 = v71;
    v387 = swift_slowAlloc();
    v391 = v387;
    *v71 = 136315138;
    v72 = v370;
    v73 = v385;
    v74 = v402;
    (*(v370 + 16))(v385, v65 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v402);
    sub_251C55D58(&qword_27F479418, MEMORY[0x277CC95F0]);
    v75 = v69;
    v76 = sub_251C719A4();
    v78 = v77;
    (*(v72 + 8))(v73, v74);
    v79 = sub_251B10780(v76, v78, &v391);

    v80 = v384;
    *(v384 + 1) = v79;
    v81 = v80;
    _os_log_impl(&dword_251A6C000, v68, v75, "Preparing ClinicalSharingRootNodeInfo. Account: %s", v80, 0xCu);
    v82 = v387;
    __swift_destroy_boxed_opaque_existential_1(v387);
    MEMORY[0x25308E2B0](v82, -1, -1);
    MEMORY[0x25308E2B0](v81, -1, -1);
  }

  v83 = sub_251B30EC0();
  v84 = v378;
  v85 = v379;
  if ((v83 & 1) == 0)
  {

    v106 = sub_251C70744();
    v107 = v65;
    v108 = sub_251C713C4();

    if (os_log_type_enabled(v106, v108))
    {
      v109 = swift_slowAlloc();
      v388 = swift_slowAlloc();
      v391 = v388;
      *v109 = 136315138;
      v110 = v370;
      v111 = *(v370 + 16);
      v112 = v65 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
      LODWORD(v387) = v108;
      v113 = v385;
      v114 = v402;
      v111(v385, v112, v402);
      sub_251C55D58(&qword_27F479418, MEMORY[0x277CC95F0]);
      v115 = sub_251C719A4();
      v117 = v116;
      (*(v110 + 8))(v113, v114);
      v118 = sub_251B10780(v115, v117, &v391);

      *(v109 + 4) = v118;
      _os_log_impl(&dword_251A6C000, v106, v387, "Sync is not required. Account: %s", v109, 0xCu);
      v119 = v388;
      __swift_destroy_boxed_opaque_existential_1(v388);
      MEMORY[0x25308E2B0](v119, -1, -1);
      MEMORY[0x25308E2B0](v109, -1, -1);
    }

    sub_251B050E4(0);
    v121 = *(v120 + 48);
    v122 = v363;
    (*(v362 + 56))(v363, 1, 1, v365);
    *(v122 + v121) = v107;
    goto LABEL_41;
  }

  v388 = v65;
  v373 = *(v386 + 16);
  if (v373)
  {
    v86 = 0;
    v387 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
    v367 = (*(v361 + 80) + 32) & ~*(v361 + 80);
    v372 = v386 + v367;
    v380 = *(v361 + 72);
    v384 = (v370 + 16);
    v369 = MEMORY[0x277D84F90];
    v383 = (v370 + 8);
    while (1)
    {
      v88 = v382;
      sub_251C5582C(v372 + v380 * v86, v382, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v89 = *v88;
      v90 = *(*v88 + 16);
      v381 = v86;
      if (v90)
      {
        v91 = *(v89 + ((*(v371 + 80) + 32) & ~*(v371 + 80)));

        if (!*(v91 + 16))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v91 = MEMORY[0x277D84FA0];
        if (!*(MEMORY[0x277D84FA0] + 16))
        {
          goto LABEL_8;
        }
      }

      v92 = *(v91 + 40);
      sub_251C55D58(&qword_2813E74E0, MEMORY[0x277CC95F0]);
      v93 = sub_251C70E84();
      v94 = -1 << *(v91 + 32);
      v95 = v93 & ~v94;
      v386 = v91 + 56;
      if ((*(v91 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95))
      {
        v96 = ~v94;
        v97 = *(v370 + 72);
        v98 = *(v370 + 16);
        while (1)
        {
          v99 = v385;
          v100 = v402;
          v98(v385, *(v91 + 48) + v97 * v95, v402);
          sub_251C55D58(&qword_27F4796A0, MEMORY[0x277CC95F0]);
          v101 = sub_251C70ED4();
          (*v383)(v99, v100);
          if (v101)
          {
            break;
          }

          v95 = (v95 + 1) & v96;
          if (((*(v386 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        sub_251C557C4(v382, v368, type metadata accessor for ClinicalSharingCategoryNodeInfo);
        v102 = v369;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v391 = v102;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_251C0BB1C(0, *(v102 + 16) + 1, 1);
          v102 = v391;
        }

        v87 = v377;
        v84 = v378;
        v105 = *(v102 + 16);
        v104 = *(v102 + 24);
        if (v105 >= v104 >> 1)
        {
          sub_251C0BB1C(v104 > 1, v105 + 1, 1);
          v102 = v391;
        }

        *(v102 + 16) = v105 + 1;
        v369 = v102;
        sub_251C557C4(v368, v102 + v367 + v105 * v380, type metadata accessor for ClinicalSharingCategoryNodeInfo);
        goto LABEL_9;
      }

LABEL_8:

      sub_251C55894(v382, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v87 = v377;
      v84 = v378;
LABEL_9:
      v86 = v381 + 1;
      v85 = v379;
      if ((v381 + 1) == v373)
      {
        goto LABEL_28;
      }
    }
  }

  v369 = MEMORY[0x277D84F90];
  v87 = v377;
LABEL_28:
  v123 = v369;
  v124 = *(v369 + 16);
  v125 = MEMORY[0x277D84F90];
  v402 = v124;
  if (v124)
  {
    v391 = MEMORY[0x277D84F90];
    sub_251C0BEA4(0, v124, 0);
    v125 = v391;
    v126 = v123 + ((*(v361 + 80) + 32) & ~*(v361 + 80));
    v127 = *(v361 + 72);
    do
    {
      v128 = v375;
      sub_251C5582C(v126, v375, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      sub_251C5582C(v128 + *(v376 + 20), v84, type metadata accessor for PBReference);
      sub_251C55894(v128, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v391 = v125;
      v130 = *(v125 + 16);
      v129 = *(v125 + 24);
      if (v130 >= v129 >> 1)
      {
        sub_251C0BEA4(v129 > 1, v130 + 1, 1);
        v125 = v391;
      }

      *(v125 + 16) = v130 + 1;
      sub_251C557C4(v84, v125 + ((*(v374 + 80) + 32) & ~*(v374 + 80)) + *(v374 + 72) * v130, type metadata accessor for PBReference);
      v126 += v127;
      --v124;
    }

    while (v124);
    v87 = v377;
  }

  v131 = v366;
  v132 = v366 + *(v354 + 20);
  sub_251C703A4();
  *v131 = v125;
  if (qword_27F478930 != -1)
  {
    swift_once();
  }

  v133 = qword_27F4A2878;
  v134 = v355;
  sub_251C70004();
  v135 = sub_251C6FF94();
  v136 = *(v87 + 8);
  v136(v134, v85);
  v137 = [v133 stringFromDate_];

  v138 = sub_251C70F14();
  v140 = v139;

  v141 = v356;
  sub_251C70004();
  v142 = v364;
  sub_251AFE074(v141, v360);
  v143 = v142;
  if (v142)
  {
    v136(v141, v85);

    v144 = v388;
LABEL_39:
    v149 = v366;
LABEL_40:
    sub_251B26C14(v143);

    sub_251C55894(v149, type metadata accessor for PBReferences);
    sub_251B050E4(0);
    v151 = *(v150 + 48);
    v152 = v363;
    (*(v362 + 56))(v363, 1, 1, v365);
    *(v152 + v151) = v144;
LABEL_41:

    return;
  }

  v386 = v140;
  v136(v141, v85);
  v145 = v388;
  v147 = v388[5];
  v146 = v388[6];

  v148 = v351;
  sub_251A82B44(3, 1, v147, v146, v351);
  sub_251C55D58(&qword_27F479858, type metadata accessor for PBRevocationAuthorization);
  v153 = sub_251C70594();
  v155 = v366;
  v380 = v138;
  v156 = v154;
  v157 = v153;
  sub_251C55894(v148, type metadata accessor for PBRevocationAuthorization);
  sub_251C55D58(&qword_27F47A020, MEMORY[0x277CC5540]);
  v385 = 0;
  v158 = v334;
  v159 = v338;
  sub_251C70C54();
  sub_251A858C4(v157, v156);
  v160 = v385;
  sub_251B1C08C(v157, v156);
  v387 = v160;
  v381 = v157;
  v382 = v156;
  sub_251A83028(v157, v156);
  v161 = v335;
  sub_251C70C44();
  (*(v336 + 8))(v158, v159);
  sub_251C55D58(&qword_27F47CEA0, MEMORY[0x277CC5290]);
  v162 = v339;
  v163 = sub_251C70DD4();
  v165 = v164;
  (*(v337 + 8))(v161, v162);
  v383 = sub_251C4FFD8(v163, v165);
  v384 = v166;
  sub_251C5582C(v155, v348, type metadata accessor for PBReferences);
  v167 = (v145 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo);
  swift_beginAccess();
  v169 = v167[3];
  v168 = v167[4];
  v170 = __swift_project_boxed_opaque_existential_1(v167, v169);
  v385 = &v327;
  v171 = *(v169 - 8);
  v172 = *(v171 + 64);
  MEMORY[0x28223BE20](v170);
  v174 = &v327 - v173;
  (*(v171 + 16))(&v327 - v173);
  v175 = (*(v168 + 8))(v169, v168);
  v177 = v176;
  (*(v171 + 8))(v174, v169);
  v178 = v341;
  sub_251C703A4();
  v179 = v342;
  v180 = *(v342 + 20);
  if (qword_27F478468 != -1)
  {
    swift_once();
  }

  *(v178 + v180) = qword_27F4794E0;

  v181 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *(v178 + v180);
  v183 = v360;
  if ((v181 & 1) == 0)
  {
    v184 = type metadata accessor for PBPlainText._StorageClass(0);
    v185 = *(v184 + 48);
    v186 = *(v184 + 52);
    swift_allocObject();
    v182 = sub_251AB6604(v182);
    *(v178 + v180) = v182;
  }

  swift_beginAccess();
  *(v182 + 16) = 1;
  *(v182 + 24) = 1;

  v187 = *(v178 + v180);
  v188 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *(v178 + v180);
  if ((v188 & 1) == 0)
  {
    v190 = type metadata accessor for PBPlainText._StorageClass(0);
    v191 = *(v190 + 48);
    v192 = *(v190 + 52);
    swift_allocObject();
    v189 = sub_251AB6604(v189);
    *(v178 + v180) = v189;
  }

  v193 = v350;
  swift_beginAccess();
  v194 = *(v189 + 72);
  v195 = v386;
  *(v189 + 64) = v380;
  *(v189 + 72) = v195;

  v196 = *(v178 + v180);
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *(v178 + v180);
  if ((v197 & 1) == 0)
  {
    v199 = type metadata accessor for PBPlainText._StorageClass(0);
    v200 = *(v199 + 48);
    v201 = *(v199 + 52);
    swift_allocObject();
    v198 = sub_251AB6604(v198);
    *(v178 + v180) = v198;
  }

  swift_beginAccess();
  v202 = *(v198 + 56);
  *(v198 + 48) = v175;
  *(v198 + 56) = v177;

  sub_251C557C4(v178, v193, type metadata accessor for PBPlainText);
  v203 = v348;
  v204 = v340;
  sub_251C5582C(v348, v340, type metadata accessor for PBReferences);
  v205 = *(v179 + 20);
  v206 = *(v193 + v205);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_251C55894(v203, type metadata accessor for PBReferences);
    v207 = *(v193 + v205);
  }

  else
  {
    v208 = *(v193 + v205);
    v209 = type metadata accessor for PBPlainText._StorageClass(0);
    v210 = *(v209 + 48);
    v211 = *(v209 + 52);
    swift_allocObject();

    v207 = sub_251AB6604(v212);
    sub_251C55894(v203, type metadata accessor for PBReferences);

    *(v193 + v205) = v207;
  }

  v144 = v388;
  v213 = v383;
  v214 = v343;
  sub_251C557C4(v204, v343, type metadata accessor for PBReferences);
  v215 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v215 - 8) + 56))(v214, 0, 1, v215);
  v216 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  sub_251AB9B14(v214, v207 + v216);
  swift_endAccess();
  v218 = v352;
  v217 = v353;
  v219 = v344;
  (*(v353 + 16))(v344, v183, v352);
  (*(v217 + 56))(v219, 0, 1, v218);
  v220 = v213;
  v221 = v183;
  v222 = v213;
  v223 = v384;
  v224 = v387;
  v225 = sub_251BFC488(v347, v346, v350, 1uLL, 1, v219, v220, v384, v144[5], v144[6]);
  v149 = v366;
  v385 = v224;
  if (v224)
  {
    sub_251A83028(v222, v223);

    sub_251A83028(v381, v382);
    sub_251C55938(v219, &qword_27F47C280, MEMORY[0x277CC53B0]);
    (*(v217 + 8))(v221, v218);
    sub_251C55894(v350, type metadata accessor for PBPlainText);
    goto LABEL_55;
  }

  v373 = v225;
  v374 = v226;
  sub_251C55938(v219, &qword_27F47C280, MEMORY[0x277CC53B0]);
  sub_251C55894(v350, type metadata accessor for PBPlainText);
  sub_251C55D58(&qword_27F47B948, type metadata accessor for PBNode);
  v227 = v385;
  v228 = sub_251C70594();
  if (v227)
  {
    v385 = v227;
    sub_251A83028(v383, v384);

    v230 = v332;
    sub_251A83028(v381, v382);
    sub_251A83028(v373, v374);
    (*(v345 + 8))(v346, v230);
    sub_251C55894(v347, type metadata accessor for PBNode);
    (*(v353 + 8))(v221, v352);
    v143 = v385;
    goto LABEL_40;
  }

  v231 = v228;
  v232 = v229;
  v233 = sub_251B1C34C(v228, v229);
  v234 = v332;
  v385 = 0;
  v370 = v233;
  v372 = v235;
  sub_251A83028(v231, v232);
  (*(v345 + 16))(v331, v346, v234);
  v236 = *(v144 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8);
  v368 = *(v144 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID);
  v237 = *(v144 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo);
  v238 = *(v144 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
  v239 = *(v144 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 16);
  v240 = *(v144 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 24);
  v241 = v144;
  v242 = *(v144 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 32);
  if (v238)
  {
    v243 = v242;
  }

  else
  {
    v243 = 0;
  }

  v367 = v236;

  sub_251B32888(v237, v238);
  sub_251B220A8(v237, v238);
  if (__OFADD__(v243, 1))
  {
    goto LABEL_109;
  }

  v364 = v243 + 1;
  v244 = v241[6];
  v357 = v241[5];
  v245 = v402;
  v356 = v244;
  if (v402)
  {
    sub_251A858C4(v381, v382);

    sub_251A858C4(v373, v374);
    v391 = MEMORY[0x277D84F90];
    sub_251C0B80C(0, v245, 0);
    v246 = v391;
    v247 = v369 + ((*(v361 + 80) + 32) & ~*(v361 + 80));
    v379 = *(v361 + 72);
    do
    {
      v402 = v245;
      v248 = v375;
      sub_251C5582C(v247, v375, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v249 = (v248 + *(v376 + 24));
      v250 = v249[1];
      v387 = *v249;
      v251 = v249[2];
      v252 = v249[3];

      sub_251A858C4(v251, v252);
      sub_251C55894(v248, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v391 = v246;
      v254 = *(v246 + 16);
      v253 = *(v246 + 24);
      if (v254 >= v253 >> 1)
      {
        sub_251C0B80C((v253 > 1), v254 + 1, 1);
        v246 = v391;
      }

      *(v246 + 16) = v254 + 1;
      v255 = (v246 + 32 * v254);
      v255[4] = v387;
      v255[5] = v250;
      v255[6] = v251;
      v255[7] = v252;
      v247 += v379;
      v245 = v402 - 1;
    }

    while (v402 != 1);
    v375 = v246;
  }

  else
  {
    sub_251A858C4(v381, v382);

    sub_251A858C4(v373, v374);
    v375 = MEMORY[0x277D84F90];
  }

  v256 = v369;
  v257 = MEMORY[0x277D84F90];
  v258 = v345;
  v259 = v333;
  v260 = v385;
  v377 = *(v369 + 16);
  if (v377)
  {
    v261 = 0;
    v376 = v369 + ((*(v361 + 80) + 32) & ~*(v361 + 80));
    v262 = MEMORY[0x277D84F90];
    while (v261 < *(v256 + 16))
    {
      v263 = *(v361 + 72);
      v379 = v261;
      sub_251C5582C(v376 + v263 * v261, v259, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v264 = *v259;
      v265 = *(*v259 + 16);
      if (v265)
      {
        v378 = v262;
        v391 = v257;
        sub_251C0B80C(0, v265, 0);
        v257 = v391;
        v266 = v264 + ((*(v371 + 80) + 32) & ~*(v371 + 80));
        v387 = *(v371 + 72);
        do
        {
          v267 = v358;
          sub_251C5582C(v266, v358, type metadata accessor for ClinicalSharingDataNodeInfo);
          v268 = v267 + *(v359 + 24);
          v269 = *(v268 + 8);
          v402 = *v268;
          v270 = *(v268 + 16);
          v271 = *(v268 + 24);

          sub_251A858C4(v270, v271);
          sub_251C55894(v267, type metadata accessor for ClinicalSharingDataNodeInfo);
          v391 = v257;
          v273 = *(v257 + 16);
          v272 = *(v257 + 24);
          if (v273 >= v272 >> 1)
          {
            sub_251C0B80C((v272 > 1), v273 + 1, 1);
            v257 = v391;
          }

          *(v257 + 16) = v273 + 1;
          v274 = (v257 + 32 * v273);
          v274[4] = v402;
          v274[5] = v269;
          v274[6] = v270;
          v274[7] = v271;
          v266 += v387;
          --v265;
        }

        while (v265);
        v259 = v333;
        sub_251C55894(v333, type metadata accessor for ClinicalSharingCategoryNodeInfo);
        v258 = v345;
        v262 = v378;
      }

      else
      {
        sub_251C55894(v259, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      }

      v275 = *(v257 + 16);
      v276 = *(v262 + 2);
      v277 = v276 + v275;
      if (__OFADD__(v276, v275))
      {
        goto LABEL_105;
      }

      v278 = swift_isUniquelyReferenced_nonNull_native();
      if (!v278 || v277 > *(v262 + 3) >> 1)
      {
        if (v276 <= v277)
        {
          v279 = v276 + v275;
        }

        else
        {
          v279 = v276;
        }

        v262 = sub_251C38FD0(v278, v279, 1, v262);
      }

      v260 = v385;
      if (*(v257 + 16))
      {
        if ((*(v262 + 3) >> 1) - *(v262 + 2) < v275)
        {
          goto LABEL_107;
        }

        swift_arrayInitWithCopy();

        v256 = v369;
        if (v275)
        {
          v280 = *(v262 + 2);
          v281 = __OFADD__(v280, v275);
          v282 = v280 + v275;
          if (v281)
          {
            goto LABEL_108;
          }

          *(v262 + 2) = v282;
        }
      }

      else
      {

        v256 = v369;
        if (v275)
        {
          goto LABEL_106;
        }
      }

      v261 = v379 + 1;
      v257 = MEMORY[0x277D84F90];
      if (v379 + 1 == v377)
      {
        goto LABEL_94;
      }
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v262 = MEMORY[0x277D84F90];
LABEL_94:
  v378 = v262;

  v283 = v372;

  sub_251C70C74();
  v387 = v260;
  v284 = v392;
  v402 = v391;
  v286 = v329;
  v285 = v330;
  *(v330 + 1) = xmmword_251C745D0;
  *(v285 + 2) = xmmword_251C745D0;
  v285[13] = 0;
  v285[14] = 0xE000000000000000;
  v287 = *(v286 + 52);
  v288 = v373;
  v289 = v374;
  sub_251A858C4(v373, v374);
  sub_251C703A4();
  v290 = *(v286 + 56);
  v291 = type metadata accessor for PBTestFlowData(0);
  (*(*(v291 - 8) + 56))(v285 + v290, 1, 1, v291);
  *v285 = v370;
  v285[1] = v283;
  sub_251A83028(v285[2], v285[3]);
  v285[2] = v402;
  v285[3] = v284;
  sub_251A83028(v285[4], v285[5]);
  v285[4] = v288;
  v285[5] = v289;
  v292 = [objc_opt_self() currentDeviceName];
  if (v292)
  {
    v293 = v292;
    v294 = sub_251C70F14();
    v296 = v295;
  }

  else
  {
    v296 = 0xEE00656369766544;
    v294 = 0x206E776F6E6B6E55;
  }

  v144 = v388;
  v149 = v366;
  v297 = v367;
  v298 = v328;
  v299 = v368;
  v300 = v330;
  *(v330 + 10) = v294;
  v300[11] = v296;
  v300[8] = v299;
  v300[9] = v297;
  v301 = v386;
  v300[6] = v380;
  v300[7] = v301;
  if (v364 < 0xFFFFFFFF80000000)
  {
    goto LABEL_110;
  }

  v302 = v384;
  if (v364 <= 0x7FFFFFFF)
  {
    v303 = v330;
    *(v330 + 24) = v364;
    v304 = v356;
    *(v303 + 120) = v357;
    *(v303 + 128) = v304;
    sub_251C557C4(v303, v298, type metadata accessor for PBLookupInfo);
    sub_251C55D58(&qword_27F4795D0, type metadata accessor for PBLookupInfo);
    v305 = v387;
    v306 = sub_251C70594();
    v385 = v305;
    if (!v305)
    {
      v314 = v306;
      v315 = v307;
      v316 = sub_251C6FED4();
      v318 = v317;
      sub_251A83028(v314, v315);
      v319 = sub_251B1A850(v369);

      sub_251A83028(v373, v374);
      sub_251C55894(v298, type metadata accessor for PBLookupInfo);
      v320 = v332;
      v402 = *(v258 + 8);
      (v402)(v331, v332);
      v391 = v375;
      v392 = v378;
      v393 = v370;
      v394 = v372;
      v321 = v381;
      v322 = v382;
      v395 = v381;
      v396 = v382;
      v397 = v316;
      v398 = v318;
      v399 = v380;
      v400 = v386;
      v401 = v319;
      v390[0] = v375;
      v390[1] = v378;
      v390[2] = v370;
      v390[3] = v372;
      v390[4] = v381;
      v390[5] = v382;
      v390[6] = v316;
      v390[7] = v318;
      v390[8] = v380;
      v390[9] = v386;
      v390[10] = v319;
      sub_251B29390(&v391, &v389);
      sub_251C55C20(v390);
      v323 = v385;
      sub_251B27054(&v391);
      v143 = v323;
      if (!v323)
      {
        sub_251A83028(v383, v384);
        sub_251C55C20(&v391);
        sub_251A83028(v321, v322);
        sub_251A83028(v373, v374);
        (v402)(v346, v320);
        (*(v353 + 8))(v360, v352);
        sub_251C55894(v366, type metadata accessor for PBReferences);
        sub_251B050E4(0);
        v325 = *(v324 + 48);
        v326 = v363;
        sub_251C557C4(v347, v363, type metadata accessor for PBNode);
        (*(v362 + 56))(v326, 0, 1, v365);
        *(v326 + v325) = v144;
        goto LABEL_41;
      }

      sub_251A83028(v383, v384);
      sub_251C55C20(&v391);
      sub_251A83028(v321, v322);
      sub_251A83028(v373, v374);
      (v402)(v346, v320);
      sub_251C55894(v347, type metadata accessor for PBNode);
      (*(v353 + 8))(v360, v352);
      goto LABEL_39;
    }

    sub_251A83028(v383, v302);

    v309 = v381;
    v308 = v382;
    sub_251A83028(v381, v382);
    v310 = v373;
    v311 = v374;
    sub_251A83028(v373, v374);

    sub_251A83028(v309, v308);
    sub_251A83028(v310, v311);
    sub_251C55894(v298, type metadata accessor for PBLookupInfo);
    v312 = *(v258 + 8);
    v313 = v332;
    v312(v331, v332);
    v312(v346, v313);
    sub_251C55894(v347, type metadata accessor for PBNode);
    (*(v353 + 8))(v360, v352);

LABEL_55:
    v143 = v385;
    goto LABEL_40;
  }

LABEL_111:
  __break(1u);
}

void *sub_251C5527C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_251A83028(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_251A83028(v6, v5);
    *v3 = xmmword_251C745D0;
    sub_251A83028(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_251C6FB74() && __OFSUB__(v6, sub_251C6FBA4()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_251C6FBB4();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_251C6FB54();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_251C55614(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_251A83028(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_251C745D0;
    sub_251A83028(0, 0xC000000000000000);
    sub_251C6FE74();
    result = sub_251C55614(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_251C55614(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_251C6FB74();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_251C6FBA4();
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

  v12 = sub_251C6FB94();
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

_BYTE *sub_251C556C8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_251C55994(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_251C55A4C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_251C55AC8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_251C5575C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251C557C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C5582C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C55894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_251C558F4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_251C55E8C(a1, a2, *a3, *(a3 + 8));
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_251C55938(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251C56038(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251C55994(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251C55A4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_251C6FBB4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_251C6FB64();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_251C6FE94();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_251C55AC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_251C6FBB4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_251C6FB64();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_251C55B4C(uint64_t a1)
{
  sub_251C55C74();
  v3 = v2;
  v10[3] = v2;
  v10[4] = sub_251C55D58(&qword_27F47CEB0, sub_251C55C74);
  v10[0] = a1;
  v4 = __swift_project_boxed_opaque_existential_1(v10, v3);
  v5 = (*v4 + 32);
  v6 = *(*v4 + 16);

  sub_251C556C8(v5, &v5[v6], &v9);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

void sub_251C55C74()
{
  if (!qword_27F47CEA8)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CEA8);
    }
  }
}

void sub_251C55CC4()
{
  if (!qword_27F47CEB8)
  {
    sub_251C55C74();
    sub_251C55D58(&qword_27F47CEC0, sub_251C55C74);
    v0 = sub_251C717D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CEB8);
    }
  }
}

uint64_t sub_251C55D58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_251C55DA0()
{
  result = qword_27F47CEC8;
  if (!qword_27F47CEC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F47CEC8);
  }

  return result;
}

void *sub_251C55E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v12[0] = v7;
  v12[1] = v6;
  v11[2] = v12;
  result = sub_251C5575C(sub_251C55E6C, v11, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  return result;
}

_OWORD *sub_251C55E8C(_OWORD *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = *(a3 + 16);
    if (v4 >= a4)
    {
      v5 = v4 - a4;
    }

    else
    {
      v5 = 0;
    }

    if (v4 != a4)
    {
      v6 = a4 ^ 0x7FFFFFFFFFFFFFFFLL;
      v7 = a2 - 1;
      v8 = v4 + ~a4;
      if (v8 >= v5)
      {
        v8 = v5;
      }

      if (v8 >= v6)
      {
        v8 = a4 ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v7 >= v8)
      {
        v7 = v8;
      }

      if (v7 > 0xF && result + -a4 - a3 - 32 >= 0x10)
      {
        v12 = v7 + 1;
        v13 = result;
        v14 = v12 & 0xF;
        if ((v12 & 0xF) == 0)
        {
          v14 = 16;
        }

        v9 = v12 - v14;
        v10 = v9 + 1;
        result = (result + v9);
        v11 = v9 + a4;
        v15 = (a3 + 32 + a4);
        v16 = v9;
        do
        {
          v17 = *v15++;
          *v13++ = v17;
          v16 -= 16;
        }

        while (v16);
      }

      else
      {
        v9 = 0;
        v10 = 1;
        v11 = a4;
      }

      v18 = 0;
      v19 = v10 + a4 + ~v4;
      while (v9 != v5)
      {
        if (v9 == v6)
        {
          goto LABEL_29;
        }

        v20 = v18;
        *(result + v18) = *(v11 + a3 + 32 + v18);
        if (v10 - a2 + v18)
        {
          v9 = v10 + v18++;
          if (v19 + v20 + 1)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    return a3;
  }

LABEL_30:
  __break(1u);
  return result;
}

void sub_251C55FC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for PBNode(255);
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_251C56038(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251C560A4(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v31 = a1;
  v34 = sub_251C701E4();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_251C70E34();
  v35 = *(v32 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C70014();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_251C6FAB4();
  v30 = v10[2];
  v30(v14, v16, v9);
  v26 = v2;
  v29 = *(v2 + 16);
  v29(v5, v33, v34);
  sub_251C70DF4();
  v17 = sub_251C70E14();
  v18 = *(v35 + 8);
  v35 += 8;
  v27 = v18;
  v28 = v17;
  v18(v8, v32);
  v19 = v10[1];
  v19(v16, v9);
  sub_251C6FA84();
  v30(v14, v16, v9);
  v20 = v33;
  v29(v5, v33, v34);
  sub_251C70DF4();
  v21 = sub_251C70E14();
  v22 = v28;
  v23 = v21;
  v27(v8, v32);
  result = (v19)(v16, v9);
  if (v23 < v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (__OFSUB__(v23, v22))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!__OFADD__(v23 - v22, 1))
  {
    (*(v26 + 8))(v20, v34);
    v25 = sub_251C6FAE4();
    (*(*(v25 - 8) + 8))(v31, v25);
    return v22;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_251C56428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_251AF4E18();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B346F4(a3, v12);
  v13 = sub_251C71214();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_251B34758(v12);
  }

  else
  {
    sub_251C71204();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_251C711C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_251C70F84() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_251B34758(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_251B34758(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_251C56700()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_251C56794;

  return sub_251AF3DDC();
}

uint64_t sub_251C56794()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_251C56888()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_251C568E4()
{
  sub_251AF4E18();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = sub_251C71214();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_251C56428(0, 0, v4, &unk_251C89470, v7);
}

uint64_t sub_251C569F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_251AF4F78;

  return sub_251C566E0(a1, v4, v5, v6);
}

uint64_t sub_251C56AA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_251B14FE8;

  return sub_251B3432C(a1, v5);
}

uint64_t sub_251C56B60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_251AF4F78;

  return sub_251B3432C(a1, v5);
}

uint64_t sub_251C56C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ClinicalSharingSyncTask();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_251C5BBA0(a1, &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ClinicalSharingSyncTask);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  sub_251C5BD98(&v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for ClinicalSharingSyncTask);
  v13 = (v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  v21 = *(v4 + 16);
  v22 = 0;
  v17 = sub_251C5BE64;
  v18 = v12;
  v19 = v4;
  v20 = &v22;
  sub_251C5B938(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();

  sub_251C702C4();
  if (v22)
  {

    sub_251C57358(v14);
  }
}

uint64_t sub_251C56E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251C5C4C8(0, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v20 - v12;
  sub_251C5BBA0(a2, &v20 - v12, type metadata accessor for ClinicalSharingSyncTask);
  v14 = &v13[*(v9 + 44)];
  *v14 = a3;
  *(v14 + 1) = a4;
  swift_beginAccess();
  v15 = *(a1 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_251C39580(0, v15[2] + 1, 1, v15);
    *(a1 + 24) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_251C39580(v17 > 1, v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  sub_251C5C448(v13, v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18);
  *(a1 + 24) = v15;
  return swift_endAccess();
}

uint64_t sub_251C56FD4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_251C5C0EC(0, &qword_2813E33C8, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper, sub_251C5C4C8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  sub_251C5C4C8(0, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v20 = &v32 - v19;
  if (a1)
  {

    a1(v21);
    result = sub_251A7EA4C(a1);
  }

  if (!*(a3 + 32))
  {
    swift_beginAccess();
    v22 = *(a3 + 24);
    if (*(v22 + 16))
    {
      sub_251C5C148(v22 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v10);
      sub_251C5C32C(0, 1);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    (*(v13 + 56))(v10, v23, 1, v12);
    swift_endAccess();
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      return sub_251C5C3EC(v10, &qword_2813E33C8, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper, sub_251C5C4C8);
    }

    else
    {
      sub_251C5C448(v10, v20);
      sub_251C5C448(v20, v17);
      sub_251C5C4C8(0, qword_2813E3458, type metadata accessor for SingleValuePublisherTaskQueue.ActiveTaskWrapper);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      v27 = swift_allocObject();
      v28 = (v27 + *(*v27 + 104));
      *v28 = 0;
      v28[1] = 0;
      v29 = v27 + *(*v27 + 112);
      *v29 = 0u;
      *(v29 + 16) = 0u;
      *(v29 + 32) = 0;
      sub_251C5BD98(v17, v27 + *(*v27 + 96), type metadata accessor for ClinicalSharingSyncTask);
      *(v27 + *(*v27 + 104)) = *&v17[*(v12 + 36)];
      v30 = *a4;
      *a4 = v27;

      v31 = *(a3 + 32);
      *(a3 + 32) = v27;
    }
  }

  return result;
}

uint64_t sub_251C57358(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ClinicalSharingSyncTask();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5BF04();
  v8 = *(v7 - 8);
  v24 = v7;
  v25 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = *(*a1 + 96);
  v29 = sub_251ADCA48();
  sub_251AE7918(0, &qword_2813E20E0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
  sub_251AE4104();
  sub_251C70B14();

  sub_251C5BBA0(a1 + v13, v6, type metadata accessor for ClinicalSharingSyncTask);
  v14 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v15 = (v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_251C5BD98(v6, v17 + v14, type metadata accessor for ClinicalSharingSyncTask);
  *(v17 + v15) = v12;
  *(v17 + v16) = v2;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_251C5BB58(&qword_2813E24D0, sub_251C5BF04);
  swift_retain_n();

  v18 = v24;
  v19 = sub_251C70AF4();

  (*(v25 + 8))(v11, v18);
  v20 = *(v2 + 16);
  v28 = v19;
  v29 = v20;
  v26 = a1;
  v27 = v2;
  sub_251C5B938(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();
  sub_251C702C4();
}

void sub_251C576F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7 = a1;
    sub_251C57870(a5, a1, 1);
  }

  else
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      v9 = *(a3 + 16);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    sub_251C57870(a5, v9, 0);
  }
}

uint64_t sub_251C577B0(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = v6 == result;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v10[9] = v3;
    v10[10] = v4;
    v10[3] = v5;
    v10[4] = MEMORY[0x277CBCDA0];
    v10[0] = a3;
    v8 = *(*result + 112);
    v9 = result;
    swift_beginAccess();

    sub_251C5BAC8(v10, v9 + v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_251C57870(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a2;
  v8 = a3 & 1;
  v4 = *(v3 + 16);
  sub_251C5B938(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();
  v5 = sub_251C702C4();
  MEMORY[0x28223BE20](v5);
  sub_251C702C4();
  return sub_251A7EA4C(0);
}

uint64_t sub_251C579FC(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = v4 == result;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = sub_251C57A70();
    v9 = *a3;
    v10 = a3[1];
    *a3 = v8;
    a3[1] = v11;
    sub_251A7EA4C(v9);
    v12 = *(a2 + 32);
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_251C57A70()
{
  v1 = (v0 + *(*v0 + 104));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(*v0 + 112);
  swift_beginAccess();
  sub_251C5C05C(v0 + v4, &v9);
  if (*(&v10 + 1))
  {
    sub_251A823B4(&v9, v8);
    sub_251A7E910(v2);
    sub_251C5C3EC(&v9, &qword_2813E2220, &qword_2813E2228, MEMORY[0x277CBCD78], sub_251AA98B0);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_251C70924();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_251A7E910(v2);
    sub_251C5C3EC(&v9, &qword_2813E2220, &qword_2813E2228, MEMORY[0x277CBCD78], sub_251AA98B0);
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  swift_beginAccess();
  sub_251C5BAC8(&v9, v0 + v4);
  swift_endAccess();
  v5 = *v1;
  v6 = v1[1];
  *v1 = 0;
  v1[1] = 0;
  sub_251A7EA4C(v5);
  return v2;
}

void sub_251C57C0C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_251A8223C(0, &qword_2813E1D38, 0x277D12438);
    v5 = sub_251C71144();
  }

  if (a2)
  {
    v6 = sub_251C6FD74();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_251C57CB8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_251C5B938(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v11 = Strong;
  v12 = sub_251C70014();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);

  sub_251C5D138(0, a1, v9, v11, a2, a3);

  return sub_251C5BC74(v9, &qword_2813E7500, MEMORY[0x277CC9578]);
}

void sub_251C57E34(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);

  oslog = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_251B10780(*(a2 + 72), *(a2 + 80), &v10);
    *(v6 + 12) = 2048;
    if (v3 >> 62)
    {
      v8 = sub_251C717F4();
    }

    else
    {
      v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 14) = v8;

    _os_log_impl(&dword_251A6C000, oslog, v5, "%s: Paused %ld accounts successfully", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_251C57FFC()
{
  sub_251AA8D3C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5C530();
  v8 = *(v7 - 8);
  v20 = v7;
  v21 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40))[2];
  v24[3] = &type metadata for ClinicalSharingAccountStore;
  v24[4] = &off_2863F67B8;
  v24[0] = v12;
  v23 = *__swift_project_boxed_opaque_existential_1(v24, &type metadata for ClinicalSharingAccountStore);
  v13 = off_2863F67E8;
  v14 = v12;
  v22 = v13();
  sub_251AE7918(0, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  sub_251AA8E98(0, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  sub_251AE79A4();
  sub_251C70AE4();

  sub_251C5BB58(&qword_2813E25B0, sub_251AA8D3C);
  v15 = sub_251C70A94();
  (*(v3 + 8))(v6, v2);
  v23 = v15;

  sub_251C70964();
  sub_251C70B94();

  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_251C5BB58(&qword_27F47CF10, sub_251C5C530);
  v16 = v20;
  v17 = sub_251C70A94();
  (*(v21 + 8))(v11, v16);
  return v17;
}

uint64_t sub_251C58354@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_251AC5AFC();
  v7 = v6;
  v43 = *(v6 - 1);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5C638();
  v49 = v10;
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v10);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5C6EC();
  v51 = v13;
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v45 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5C868();
  v52 = v16;
  v50 = *(v16 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16);
  v46 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v53 = MEMORY[0x277D84F90];
  if (v19 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v39 = v7;
    v40 = a2;
    v41 = a3;
    v21 = 0;
    a3 = (v19 & 0xC000000000000001);
    a2 = v19 & 0xFFFFFFFFFFFFFF8;
    v7 = &off_2796E0000;
    while (1)
    {
      if (a3)
      {
        v22 = MEMORY[0x25308D460](v21, v19);
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = [v22 clinicalSharingStatus];
      v26 = [v25 multiDeviceStatus];

      if (v26 == 1)
      {
        sub_251C71734();
        v27 = *(v53 + 16);
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
      }

      else
      {
      }

      ++v21;
      if (v24 == i)
      {
        v28 = v53;
        a3 = v41;
        v7 = v39;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_18:
  v53 = v28;
  sub_251AA8E98(0, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  sub_251C5C5C8();
  v29 = v42;
  sub_251C710D4();

  sub_251AA98B0(0, &qword_2813E1C30);
  v30 = v44;
  sub_251C708E4();
  (*(v43 + 8))(v29, v7);

  sub_251C70964();
  sub_251A8223C(0, &qword_2813E1D98, 0x277D123D8);
  sub_251C5C7D8();
  sub_251C5BB58(&qword_27F47CF38, sub_251C5C638);
  sub_251C5BB58(&qword_27F47CF30, sub_251C5C7D8);
  v31 = v45;
  v32 = v49;
  sub_251C70B94();

  (*(v47 + 8))(v30, v32);
  sub_251C5BB58(&qword_27F47CF48, sub_251C5C6EC);
  v33 = v46;
  v34 = v51;
  sub_251C70B64();
  (*(v48 + 8))(v31, v34);
  sub_251C5BB58(&qword_27F47CF50, sub_251C5C868);
  v35 = v52;
  v36 = sub_251C70A94();
  result = (*(v50 + 8))(v33, v35);
  *a3 = v36;
  return result;
}

uint64_t sub_251C58938@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_251C5C904();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C70074();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = sub_251C712A4();
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v16 = sub_251C70764();
  __swift_project_value_buffer(v16, qword_2813E8130);

  v17 = v14;
  v18 = sub_251C70744();
  v19 = sub_251C713F4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v46 = v15;
    v21 = v20;
    v22 = swift_slowAlloc();
    v47 = a3;
    v45 = v22;
    v52[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_251B10780(a2[9], a2[10], v52);
    *(v21 + 12) = 2080;
    v23 = [v17 identifier];
    sub_251C70054();

    sub_251C5BB58(&qword_27F479418, MEMORY[0x277CC95F0]);
    v24 = sub_251C719A4();
    v25 = v10;
    v26 = v9;
    v28 = v27;
    (*(v25 + 8))(v13, v26);
    v29 = sub_251B10780(v24, v28, v52);
    v9 = v26;
    v10 = v25;

    *(v21 + 14) = v29;
    _os_log_impl(&dword_251A6C000, v18, v19, "%s: Pausing sync for %s", v21, 0x16u);
    v30 = v45;
    swift_arrayDestroy();
    a3 = v47;
    MEMORY[0x25308E2B0](v30, -1, -1);
    v31 = v21;
    v15 = v46;
    MEMORY[0x25308E2B0](v31, -1, -1);

    v32 = &off_2796E0000;
  }

  else
  {

    v32 = &off_2796E0000;
  }

  v33 = __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5])[2];
  v52[3] = &type metadata for ClinicalSharingAccountStore;
  v52[4] = &off_2863F67B8;
  v52[0] = v33;
  v34 = __swift_project_boxed_opaque_existential_1(v52, &type metadata for ClinicalSharingAccountStore);
  v35 = v33;
  v36 = [v17 v32[448]];
  sub_251C70054();

  v37 = *v34;
  v38 = v15;
  v39 = sub_251AC4148(v13, v15, 0, 0, v37);

  (*(v10 + 8))(v13, v9);
  v51 = v39;
  *(swift_allocObject() + 16) = v17;
  sub_251AE5AC0(0, &qword_2813E20D0);
  sub_251A8223C(0, &qword_2813E1D98, 0x277D123D8);
  sub_251AE5F64(&qword_2813E20D8, &qword_2813E20D0);
  v40 = v17;
  v41 = v48;
  sub_251C70AE4();

  __swift_destroy_boxed_opaque_existential_1(v52);
  sub_251C5BB58(&qword_27F47CF60, sub_251C5C904);
  v42 = v50;
  v43 = sub_251C70A94();

  result = (*(v49 + 8))(v41, v42);
  *a3 = v43;
  return result;
}

uint64_t sub_251C58E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = a5;
  v136 = a4;
  v151 = a2;
  v7 = MEMORY[0x277D83D88];
  sub_251C5B938(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v139 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v142 = &v125 - v12;
  v146 = sub_251C6FE64();
  v143 = *(v146 - 8);
  v13 = *(v143 + 64);
  v14 = MEMORY[0x28223BE20](v146);
  v135 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v138 = &v125 - v16;
  v145 = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v17 = *(*(v145 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v145);
  v144 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v134 = &v125 - v20;
  v21 = type metadata accessor for ClinicalSharingSyncTask();
  v22 = *(*(v21 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v141 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v125 - v25;
  sub_251C5B938(0, &qword_2813E7500, MEMORY[0x277CC9578], v7);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v125 - v29;
  v31 = sub_251C70014();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AC553C(a3, v30);
  v36 = *(v32 + 48);
  if (v36(v30, 1, v31) == 1)
  {
    sub_251C70004();
    v37 = v36(v30, 1, v31);
    v38 = v32;
    if (v37 != 1)
    {
      sub_251C5BC74(v30, &qword_2813E7500, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v32 + 32))(v35, v30, v31);
    v38 = v32;
  }

  v152 = v35;
  v153 = swift_allocBox();
  v140 = v39;
  v40 = v154[8];
  sub_251A823B4((v154 + 2), v158);
  v41 = &v26[v21[15]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = v151;
  *v26 = a1;
  *(v26 + 1) = v42;
  v43 = *(v38 + 16);
  v148 = v21[6];
  v43(&v26[v148], v35, v31);
  v147 = v21[7];
  sub_251A823B4(v158, &v26[v147]);
  v44 = v21[8];
  v151 = v40;

  sub_251C70064();
  *&v156[0] = v21;
  sub_251AE1BDC();
  *&v156[0] = sub_251C70F74();
  *(&v156[0] + 1) = v45;
  MEMORY[0x25308CDA0](45, 0xE100000000000000);
  v149 = v44;
  sub_251C70024();
  v46 = sub_251AE3EAC(8);
  v48 = v47;
  v49 = v21;
  v50 = v38;
  v52 = v51;
  v54 = v53;

  v55 = MEMORY[0x25308CD40](v46, v48, v52, v54);
  v57 = v56;

  MEMORY[0x25308CDA0](v55, v57);

  MEMORY[0x25308CDA0](58, 0xE100000000000000);
  v58 = *(&v156[0] + 1);
  v59 = &v26[v49[9]];
  *v59 = *&v156[0];
  *(v59 + 1) = v58;
  v60 = v150;
  sub_251BBB9A4(0xD000000000000018, 0x8000000251C92A20, v156);
  v61 = v60;
  if (v60)
  {
    v62 = *(v50 + 8);
    v62(v152, v31);

    v63 = v49;
LABEL_30:
    __swift_destroy_boxed_opaque_existential_1(v158);
    v62(&v26[v148], v31);
    __swift_destroy_boxed_opaque_existential_1(&v26[v147]);
    v89 = sub_251C70074();
    (*(*(v89 - 8) + 8))(&v26[v149], v89);

    if (!v61)
    {
      sub_251C5BD44(&v26[v63[11]]);
    }

    return swift_deallocBox();
  }

  v129 = v58;
  v132 = v50;
  v64 = &v26[v49[11]];
  v65 = v156[3];
  *(v64 + 2) = v156[2];
  *(v64 + 3) = v65;
  *(v64 + 4) = v156[4];
  *(v64 + 10) = v157;
  v66 = v156[1];
  *v64 = v156[0];
  *(v64 + 1) = v66;
  v67 = HKHealthRecordsCurrentEnvironment();
  v68 = "com.apple.healthrecordsd";
  v63 = v49;
  if (v67 > 0xD)
  {
    v150 = 0xD000000000000023;
  }

  else
  {
    if (((1 << v67) & 0x820) != 0)
    {
      v69 = 0xD000000000000022;
    }

    else
    {
      v69 = 0xD000000000000023;
    }

    if (((1 << v67) & 0x820) != 0)
    {
      v68 = "taging.health.apple.com";
    }

    if (((1 << v67) & 3) != 0)
    {
      v70 = 0xD00000000000001FLL;
    }

    else
    {
      v70 = v69;
    }

    if (((1 << v67) & 3) != 0)
    {
      v68 = "ev.health.apple.com";
    }

    if (((1 << v67) & 0x2184) != 0)
    {
      v71 = 0xD000000000000027;
    }

    else
    {
      v71 = v70;
    }

    v150 = v71;
    if (((1 << v67) & 0x2184) != 0)
    {
      v68 = "https://chrswp.health.apple.com";
    }
  }

  v131 = v31;
  v133 = 0;
  v72 = v68 | 0x8000000000000000;
  v128 = sub_251A8223C(0, &qword_2813E1D40, 0x277CCAD38);
  v73 = sub_251B37FB0();
  v74 = HKSecPolicyNameAppleHealthProviderService();
  if (!v74)
  {
    sub_251C70F14();
    v74 = sub_251C70EE4();
  }

  [v73 set:v74 tlsTrustPinningPolicyName:?];

  v127 = objc_opt_self();
  v130 = [v127 sessionWithConfiguration_];

  v75 = v145;
  v76 = v144;
  v77 = &v144[*(v145 + 32)];
  *v77 = 1414745936;
  *(v77 + 1) = 0xE400000000000000;
  v78 = &v76[*(v75 + 36)];
  *v78 = 0xD000000000000016;
  *(v78 + 1) = 0x8000000251C90B20;
  v79 = v150;
  *&v156[0] = v150;
  *(&v156[0] + 1) = v72;

  MEMORY[0x25308CDA0](0x75702F626F6C622FLL, 0xEA00000000006873);
  v80 = v142;
  sub_251C6FE54();
  v81 = v80;

  v82 = v143;
  v83 = *(v143 + 48);
  v84 = v80;
  v85 = v146;
  if (v83(v84, 1, v146) == 1)
  {
    v61 = v133;
LABEL_29:
    sub_251C5BC74(v81, &qword_2813E7520, MEMORY[0x277CC9260]);
    sub_251AC1148();
    swift_allocError();
    *v88 = v150;
    *(v88 + 8) = v72;
    *(v88 + 16) = 0;
    *(v88 + 24) = 0;
    *(v88 + 32) = 0;
    swift_willThrow();

    v62 = *(v132 + 8);
    v31 = v131;
    v62(v152, v131);

    goto LABEL_30;
  }

  v126 = v63;
  v86 = v138;
  v142 = *(v82 + 32);
  (v142)(v138, v81, v85);
  *&v156[0] = v79;
  *(&v156[0] + 1) = v72;

  MEMORY[0x25308CDA0](0x65642F626F6C622FLL, 0xEC0000006574656CLL);
  v81 = v139;
  sub_251C6FE54();
  v87 = v146;

  if (v83(v81, 1, v87) == 1)
  {
    (*(v82 + 8))(v86, v87);
    v61 = v133;
    v63 = v126;
    goto LABEL_29;
  }

  v91 = v135;
  v92 = v142;
  (v142)(v135, v81, v87);
  v93 = v144;
  v92(v144, v86, v87);
  v94 = v145;
  v92((v93 + *(v145 + 20)), v91, v87);
  *(v93 + *(v94 + 24)) = v130;
  *(v93 + *(v94 + 28)) = 3;
  v95 = v134;
  sub_251C5BD98(v93, v134, type metadata accessor for ClinicalSharingCloudStandardAPI);
  v96 = v126;
  sub_251C5BD98(v95, &v26[v126[12]], type metadata accessor for ClinicalSharingCloudStandardAPI);
  v97 = sub_251B37FB0();
  v98 = [objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate()) init];
  v99 = [v127 sessionWithConfiguration:v97 delegate:v98 delegateQueue:0];

  *&v26[v96[13]] = v99;
  v100 = *__swift_project_boxed_opaque_existential_1(v158, v158[3]);
  v101 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v102 = v100;
  v103 = sub_251C70EE4();
  v104 = [v101 initWithCategory:3 domainName:v103 healthStore:v102];

  (*(v132 + 8))(v152, v131);
  *&v26[v96[10]] = v104;
  *&v26[v96[14]] = v151;
  v105 = v140;
  sub_251C5BBA0(v26, v140, type metadata accessor for ClinicalSharingSyncTask);
  __swift_destroy_boxed_opaque_existential_1(v158);
  sub_251C5BC14(v26, type metadata accessor for ClinicalSharingSyncTask);
  v106 = (v105 + v96[15]);
  v108 = *v106;
  v107 = v106[1];
  v109 = v154;
  *v106 = sub_251C5BE00;
  v106[1] = v109;

  sub_251A7EA4C(v108);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v110 = sub_251C70764();
  __swift_project_value_buffer(v110, qword_2813E8130);
  swift_retain_n();
  v111 = v153;

  v112 = sub_251C70744();
  v113 = sub_251C713F4();

  v114 = os_log_type_enabled(v112, v113);
  v115 = v141;
  if (v114)
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *&v156[0] = v117;
    *v116 = 136315650;
    *(v116 + 4) = sub_251B10780(v109[9], v109[10], v156);
    *(v116 + 12) = 2080;
    swift_beginAccess();
    sub_251C5BBA0(v140, v115, type metadata accessor for ClinicalSharingSyncTask);
    v118 = sub_251AE18FC();
    v120 = v119;
    sub_251C5BC14(v141, type metadata accessor for ClinicalSharingSyncTask);
    v121 = sub_251B10780(v118, v120, v156);

    *(v116 + 14) = v121;
    *(v116 + 22) = 2048;
    v155 = *(v109[12] + 16);
    sub_251C5B938(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
    sub_251B3F1EC();
    v105 = v140;
    v115 = v141;
    sub_251C702B4();

    *(v116 + 24) = v158[7];

    _os_log_impl(&dword_251A6C000, v112, v113, "%s: Enqueuing sync task %s (%ld tasks already enqueued)", v116, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v117, -1, -1);
    MEMORY[0x25308E2B0](v116, -1, -1);
  }

  else
  {
  }

  v122 = v109[12];
  swift_beginAccess();
  sub_251C5BBA0(v105, v115, type metadata accessor for ClinicalSharingSyncTask);
  v123 = swift_allocObject();
  v123[2] = v109;
  v123[3] = v111;
  v124 = v137;
  v123[4] = v136;
  v123[5] = v124;

  sub_251C56C18(v115, sub_251C5BE08, v123);

  sub_251C5BC14(v115, type metadata accessor for ClinicalSharingSyncTask);
}

void sub_251C59ED0(unint64_t a1, uint64_t a2)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = sub_251C70014();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C70004();
  v37 = v16;
  if (a1 >> 62)
  {
    v17 = sub_251C717F4();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x277D84F90];
  v38 = v13;
  if (!v17)
  {
LABEL_16:
    sub_251BFAE40(v18);

    v28 = objc_allocWithZone(MEMORY[0x277D12430]);
    v29 = v37;
    v30 = sub_251C6FF94();
    sub_251C5BB58(&qword_2813E74E0, MEMORY[0x277CC95F0]);
    v31 = sub_251C71274();

    v32 = [v28 initWithStartDate:v30 accountIdentifiers:v31];

    (*(v38 + 8))(v29, v12);
    v33 = *(a2 + 88);
    v39 = v32;
    v40 = 0;
    v34 = v32;
    sub_251C709B4();

    return;
  }

  v39 = MEMORY[0x277D84F90];
  sub_251C0B5E4(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v35 = v12;
    v36 = a2;
    v18 = v39;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v17; ++i)
      {
        MEMORY[0x25308D460](i, a1);
        v20 = [swift_unknownObjectRetain() identifier];
        sub_251C70054();
        swift_unknownObjectRelease_n();

        v39 = v18;
        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_251C0B5E4(v21 > 1, v22 + 1, 1);
          v18 = v39;
        }

        *(v18 + 16) = v22 + 1;
        (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v11, v4);
      }
    }

    else
    {
      v23 = (a1 + 32);
      do
      {
        v24 = *v23;
        v25 = [v24 identifier];
        sub_251C70054();

        v39 = v18;
        v27 = *(v18 + 16);
        v26 = *(v18 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_251C0B5E4(v26 > 1, v27 + 1, 1);
          v18 = v39;
        }

        *(v18 + 16) = v27 + 1;
        (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, v9, v4);
        ++v23;
        --v17;
      }

      while (v17);
    }

    v12 = v35;
    a2 = v36;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_251C5A30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *), uint64_t a5)
{
  v8 = type metadata accessor for ClinicalSharingSyncTask();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v13 = swift_projectBox();
  swift_beginAccess();
  sub_251C5BBA0(v13, v11, type metadata accessor for ClinicalSharingSyncTask);
  sub_251C5A410(v11, v12, a1, a4, a5);
  return sub_251C5BC14(v11, type metadata accessor for ClinicalSharingSyncTask);
}

uint64_t sub_251C5A410(uint64_t a1, void *a2, char a3, uint64_t (*a4)(void, void *), uint64_t a5)
{
  v6 = v5;
  v51 = a5;
  v11 = type metadata accessor for ClinicalSharingSyncTask();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = *(v5 + 56);
  sub_251BC8A04();
  v19 = 0;
  v20 = *(v5 + 88);
  if (a3)
  {
    v49 = v15;
    v50 = v18;
    v53 = a2;
    v21 = a2;
    sub_251AA98B0(0, &qword_2813E1C30);
    v22 = sub_251C719C4();
    if (v22)
    {
      v19 = v22;
      v23 = a2;
      sub_251B19EEC(a2, 1);
    }

    else
    {
      v19 = swift_allocError();
      v23 = a2;
      *v24 = a2;
    }

    a2 = v23;
    v15 = v49;
  }

  v53 = v19;
  v54 = 1;
  sub_251C709B4();

  v53 = 0;
  v54 = 2;
  sub_251C709B4();
  if (a3)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v25 = sub_251C70764();
    __swift_project_value_buffer(v25, qword_2813E8130);
    v50 = a1;
    sub_251C5BBA0(a1, v15, type metadata accessor for ClinicalSharingSyncTask);
    sub_251C5BC08(a2, 1);

    v26 = sub_251C70744();
    v27 = sub_251C713D4();

    sub_251B19EEC(a2, 1);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v53 = v29;
      *v28 = 136315650;
      *(v28 + 4) = sub_251B10780(*(v6 + 72), *(v6 + 80), &v53);
      *(v28 + 12) = 2080;
      v30 = sub_251AE18FC();
      v32 = v31;
      sub_251C5BC14(v15, type metadata accessor for ClinicalSharingSyncTask);
      v33 = sub_251B10780(v30, v32, &v53);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2080;
      v52 = a2;
      v34 = a2;
      sub_251AA98B0(0, &qword_2813E1C30);
      v35 = sub_251C70F74();
      v37 = sub_251B10780(v35, v36, &v53);

      *(v28 + 24) = v37;
      _os_log_impl(&dword_251A6C000, v26, v27, "%s: Sync task %s failed: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v29, -1, -1);
      MEMORY[0x25308E2B0](v28, -1, -1);
    }

    else
    {

      sub_251C5BC14(v15, type metadata accessor for ClinicalSharingSyncTask);
    }

    sub_251BC8034(a2, *(v50 + 8));
    return a4(0, a2);
  }

  else
  {
    v38 = a4;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v39 = sub_251C70764();
    __swift_project_value_buffer(v39, qword_2813E8130);
    sub_251C5BBA0(a1, v17, type metadata accessor for ClinicalSharingSyncTask);

    v40 = sub_251C70744();
    v41 = sub_251C713F4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v53 = v43;
      *v42 = 136315394;
      *(v42 + 4) = sub_251B10780(*(v6 + 72), *(v6 + 80), &v53);
      *(v42 + 12) = 2080;
      v44 = sub_251AE18FC();
      v46 = v45;
      sub_251C5BC14(v17, type metadata accessor for ClinicalSharingSyncTask);
      v47 = sub_251B10780(v44, v46, &v53);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_251A6C000, v40, v41, "%s: Sync task %s finished successfully", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v43, -1, -1);
      MEMORY[0x25308E2B0](v42, -1, -1);
    }

    else
    {

      sub_251C5BC14(v17, type metadata accessor for ClinicalSharingSyncTask);
    }

    return v38(a2, 0);
  }
}

uint64_t sub_251C5A9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a3;
  v67 = a4;
  v61 = a1;
  v6 = sub_251C6FE64();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C6FA14();
  v57 = *(v10 - 8);
  v11 = v57;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v10);
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  v14 = (DiagnosticsTask - 8);
  v63 = *(DiagnosticsTask - 8);
  v15 = *(v63 + 64);
  v16 = MEMORY[0x28223BE20](DiagnosticsTask);
  v65 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v60 = &v57 - v19;
  v64 = v20;
  MEMORY[0x28223BE20](v18);
  v22 = &v57 - v21;
  v23 = v14[10];
  v62 = v4;
  sub_251A823B4(v4 + 16, &v57 + v23 - v21);
  v24 = v14[12];
  v25 = sub_251C70014();
  (*(*(v25 - 8) + 16))(&v22[v24], a2, v25);
  sub_251C70064();
  v26 = v14[7];
  *&v22[v26] = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v27 = v14[8];
  v28 = sub_251C6FA54();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_251C6FA44();
  v32 = MEMORY[0x277CC8718];
  sub_251C5B938(0, &qword_27F47CED8, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
  v33 = *(v11 + 72);
  v34 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_251C74800;
  sub_251C6FA04();
  v68[0] = v35;
  sub_251C5BB58(&qword_27F47CEE0, MEMORY[0x277CC8718]);
  sub_251C5B938(0, &qword_27F47CEE8, v32, MEMORY[0x277D83940]);
  sub_251C5B99C();
  sub_251C715E4();
  sub_251C6FA24();
  *&v22[v27] = v31;
  v36 = NSTemporaryDirectory();
  sub_251C70F14();

  sub_251C6FDC4();

  sub_251C70024();
  v37 = &v22[v14[9]];
  sub_251C6FDE4();

  (*(v58 + 8))(v9, v59);
  *&v22[v14[11]] = v61;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v38 = sub_251C70764();
  __swift_project_value_buffer(v38, qword_2813E8130);
  v39 = v60;
  sub_251C5BBA0(v22, v60, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  v40 = v62;

  v41 = sub_251C70744();
  v42 = sub_251C713F4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v68[0] = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_251B10780(*(v40 + 72), *(v40 + 80), v68);
    *(v43 + 12) = 2080;
    sub_251C70074();
    sub_251C5BB58(&qword_27F479418, MEMORY[0x277CC95F0]);
    v45 = sub_251C719A4();
    v47 = v46;
    sub_251C5BC14(v39, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
    v48 = sub_251B10780(v45, v47, v68);

    *(v43 + 14) = v48;
    _os_log_impl(&dword_251A6C000, v41, v42, "%s: Diagnostic query task %s beginning", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v44, -1, -1);
    MEMORY[0x25308E2B0](v43, -1, -1);
  }

  else
  {

    sub_251C5BC14(v39, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  }

  v68[0] = sub_251AA0554();
  v49 = v65;
  sub_251C5BBA0(v22, v65, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  v50 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v51 = (v64 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v40;
  sub_251C5BD98(v49, v52 + v50, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  v53 = (v52 + v51);
  v54 = v67;
  *v53 = v66;
  v53[1] = v54;
  sub_251AE5AC0(0, &qword_27F47CEF8);
  sub_251AE5F64(&qword_27F47CF00, &qword_27F47CEF8);

  v55 = sub_251C70AF4();

  v68[3] = sub_251C709A4();
  v68[4] = MEMORY[0x277CBCDA0];
  v68[0] = v55;
  sub_251C5BC14(v22, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  swift_beginAccess();
  sub_251C5BAC8(v68, v40 + 104);
  return swift_endAccess();
}

uint64_t sub_251C5B198(void **a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v50 = a5;
  sub_251C5B938(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48 - v11;
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  v14 = *(*(DiagnosticsTask - 8) + 64);
  v15 = MEMORY[0x28223BE20](DiagnosticsTask);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = *a1;
  if (*a1)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v21 = sub_251C70764();
    __swift_project_value_buffer(v21, qword_2813E8130);
    sub_251C5BBA0(a3, v17, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);

    v22 = v20;
    v23 = sub_251C70744();
    v24 = sub_251C713D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51 = v26;
      *v25 = 136315650;
      *(v25 + 4) = sub_251B10780(*(a2 + 72), *(a2 + 80), &v51);
      *(v25 + 12) = 2080;
      sub_251C70074();
      v49 = a4;
      sub_251C5BB58(&qword_27F479418, MEMORY[0x277CC95F0]);
      v27 = sub_251C719A4();
      v29 = v28;
      sub_251C5BC14(v17, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
      v30 = sub_251B10780(v27, v29, &v51);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2080;
      swift_getErrorValue();
      v31 = sub_251C71A44();
      v33 = sub_251B10780(v31, v32, &v51);

      *(v25 + 24) = v33;
      a4 = v49;
      _os_log_impl(&dword_251A6C000, v23, v24, "%s: Query task %s failed: %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v26, -1, -1);
      MEMORY[0x25308E2B0](v25, -1, -1);
    }

    else
    {

      sub_251C5BC14(v17, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
    }

    v43 = sub_251C6FE64();
    (*(*(v43 - 8) + 56))(v12, 1, 1, v43);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v49 = a4;
    v34 = sub_251C70764();
    __swift_project_value_buffer(v34, qword_2813E8130);
    sub_251C5BBA0(a3, v19, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);

    v35 = sub_251C70744();
    v36 = sub_251C713F4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_251B10780(*(a2 + 72), *(a2 + 80), &v51);
      *(v37 + 12) = 2080;
      sub_251C70074();
      sub_251C5BB58(&qword_27F479418, MEMORY[0x277CC95F0]);
      v39 = sub_251C719A4();
      v41 = v40;
      sub_251C5BC14(v19, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
      v42 = sub_251B10780(v39, v41, &v51);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_251A6C000, v35, v36, "%s: Query task %s finished successfully", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v38, -1, -1);
      MEMORY[0x25308E2B0](v37, -1, -1);
    }

    else
    {

      sub_251C5BC14(v19, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
    }

    v44 = *(DiagnosticsTask + 28);
    v45 = sub_251C6FE64();
    v46 = *(v45 - 8);
    (*(v46 + 16))(v12, a3 + v44, v45);
    (*(v46 + 56))(v12, 0, 1, v45);
    v20 = 0;
    a4 = v49;
  }

  a4(v12, v20);
  return sub_251C5BC74(v12, &qword_2813E7520, MEMORY[0x277CC9260]);
}

uint64_t sub_251C5B830()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[12];

  sub_251C5C3EC((v0 + 13), &qword_2813E2220, &qword_2813E2228, MEMORY[0x277CBCD78], sub_251AA98B0);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon24ClinicalSharingSyncStateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_251C5B904(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_251C5B938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251C5B99C()
{
  result = qword_27F47CEF0;
  if (!qword_27F47CEF0)
  {
    sub_251C5B938(255, &qword_27F47CEE8, MEMORY[0x277CC8718], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CEF0);
  }

  return result;
}

uint64_t sub_251C5BA24(void **a1)
{
  v3 = *(type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_251C5B198(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_251C5BAC8(uint64_t a1, uint64_t a2)
{
  sub_251C5C0EC(0, &qword_2813E2220, &qword_2813E2228, MEMORY[0x277CBCD78], sub_251AA98B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C5BB58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251C5BBA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_251C5BC08(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_251C5BC14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C5BC74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C5B938(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251C5BCE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;
}

uint64_t sub_251C5BD98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C5BE14@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(*(v1 + 24) + 16);
  if (*(v1 + 32))
  {
    ++v4;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_251C5BE64()
{
  v1 = *(type metadata accessor for ClinicalSharingSyncTask() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_251C56E1C(v3, v0 + v2, v5, v6);
}

void sub_251C5BF04()
{
  if (!qword_2813E24C8)
  {
    sub_251AE7918(255, &qword_2813E20E0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
    sub_251AE4104();
    v0 = sub_251C70864();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E24C8);
    }
  }
}

void sub_251C5BF88(void **a1)
{
  v3 = *(type metadata accessor for ClinicalSharingSyncTask() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *a1;

  sub_251C576F0(v10, v1 + v4, v7, v8, v9);
}

uint64_t sub_251C5C05C(uint64_t a1, uint64_t a2)
{
  sub_251C5C0EC(0, &qword_2813E2220, &qword_2813E2228, MEMORY[0x277CBCD78], sub_251AA98B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251C5C0EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_251C71574();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_251C5C148(uint64_t a1, uint64_t a2)
{
  sub_251C5C4C8(0, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251C5C1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_251C5C4C8(0, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper);
  v10 = *(*(v8 - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(v8 - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      v17 = v13 + v15;
      v18 = v12 + v10 * a2;
      if (v13 + v15 < v18 || v17 >= v18 + (v16 - a2) * v10)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v17 != v18)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v7 + 16);
      v21 = __OFADD__(v20, v14);
      v22 = v20 + v14;
      if (!v21)
      {
        *(v7 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }
}

void sub_251C5C32C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = a1 - a2;
  if (__OFSUB__(0, a2 - a1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_251C39580(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  sub_251C5C1C8(a1, a2, 0);
  *v2 = v4;
}

uint64_t sub_251C5C3EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_251C5C0EC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_251C5C448(uint64_t a1, uint64_t a2)
{
  sub_251C5C4C8(0, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_251C5C4C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, _UNKNOWN **))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ClinicalSharingSyncTask();
    v7 = a3(a1, v6, &off_281CEA850);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_251C5C530()
{
  if (!qword_27F47CF08)
  {
    sub_251AE7918(255, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AE79A4();
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CF08);
    }
  }
}

unint64_t sub_251C5C5C8()
{
  result = qword_2813E1E28;
  if (!qword_2813E1E28)
  {
    sub_251AA8E98(255, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1E28);
  }

  return result;
}

void sub_251C5C638()
{
  if (!qword_27F47CF18)
  {
    sub_251AA8E98(255, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AA98B0(255, &qword_2813E1C30);
    sub_251C5C5C8();
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CF18);
    }
  }
}

void sub_251C5C6EC()
{
  if (!qword_27F47CF20)
  {
    sub_251C5C7D8();
    sub_251C5C638();
    sub_251C5BB58(&qword_27F47CF30, sub_251C5C7D8);
    sub_251C5BB58(&qword_27F47CF38, sub_251C5C638);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CF20);
    }
  }
}

void sub_251C5C7D8()
{
  if (!qword_27F47CF28)
  {
    sub_251A8223C(255, &qword_2813E1D98, 0x277D123D8);
    sub_251AA98B0(255, &qword_2813E1C30);
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CF28);
    }
  }
}

void sub_251C5C868()
{
  if (!qword_27F47CF40)
  {
    sub_251C5C6EC();
    sub_251C5BB58(&qword_27F47CF48, sub_251C5C6EC);
    v0 = sub_251C708C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CF40);
    }
  }
}

void sub_251C5C904()
{
  if (!qword_27F47CF58)
  {
    sub_251AE5AC0(255, &qword_2813E20D0);
    sub_251A8223C(255, &qword_2813E1D98, 0x277D123D8);
    sub_251AE5F64(&qword_2813E20D8, &qword_2813E20D0);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CF58);
    }
  }
}

id sub_251C5C9C0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void sub_251C5C9CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_251C5D6DC;
  *(v11 + 24) = v10;
  v12 = __swift_project_boxed_opaque_existential_1(a4 + 2, a4[5])[1];
  _Block_copy(a5);
  _Block_copy(a5);

  if ([v12 healthAppNotInstalled])
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v13 = sub_251C70764();
    __swift_project_value_buffer(v13, qword_2813E8130);

    v14 = sub_251C70744();
    v15 = sub_251C713F4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_251B10780(a4[9], a4[10], &v22);
      _os_log_impl(&dword_251A6C000, v14, v15, "%s: Health App is not installed", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x25308E2B0](v17, -1, -1);
      MEMORY[0x25308E2B0](v16, -1, -1);
    }

    v22 = sub_251C57FFC();
    sub_251C5D644();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();

    sub_251C70944();
    sub_251AE7918(0, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AE79A4();
    sub_251C5BB58(&qword_27F47CF70, sub_251C5D644);
    sub_251C70BB4();

    _Block_copy(a5);
    sub_251A8223C(0, &qword_2813E1D38, 0x277D12438);
    v21 = sub_251C71144();
    (a5)[2](a5, v21, 0);

    _Block_release(a5);
  }

  else
  {
    sub_251C58E70(a1, a2, a3, sub_251C5D6E4, v11);
  }

  _Block_release(a5);
}

uint64_t sub_251C5CF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_251A8223C(0, &qword_27F47BB70, 0x277D12478);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_251C717F4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_251C717F4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_251C5D060(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_251C717F4();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_251C717F4();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_251C00580(result, 1);

  return sub_251C5CF50(v4, v2, 0);
}

uint64_t sub_251C5D138(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = __swift_project_boxed_opaque_existential_1(a4 + 2, a4[5])[1];

  if ([v13 healthAppNotInstalled])
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v14 = sub_251C70764();
    __swift_project_value_buffer(v14, qword_2813E8130);

    v15 = sub_251C70744();
    v16 = sub_251C713F4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_251B10780(a4[9], a4[10], &v23);
      _os_log_impl(&dword_251A6C000, v15, v16, "%s: Health App is not installed", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x25308E2B0](v18, -1, -1);
      MEMORY[0x25308E2B0](v17, -1, -1);
    }

    v23 = sub_251C57FFC();
    sub_251C5D644();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();

    sub_251C70944();
    sub_251AE7918(0, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AE79A4();
    sub_251C5BB58(&qword_27F47CF70, sub_251C5D644);
    sub_251C70BB4();

    a5(0);
  }

  else
  {
    sub_251C58E70(a1, a2, a3, sub_251C5D610, v12);
  }
}

uint64_t sub_251C5D610(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

void sub_251C5D644()
{
  if (!qword_27F47CF68)
  {
    sub_251AA8E98(255, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AA98B0(255, &qword_2813E1C30);
    v0 = sub_251C70954();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CF68);
    }
  }
}

uint64_t sub_251C5D708(uint64_t a1)
{
  v2 = v1;
  sub_251C5F0A8();
  v5 = v4;
  v28 = *(v4 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5F1B8();
  v10 = *(v9 - 8);
  v29 = v9;
  v30 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5F4EC();
  v31 = v14;
  v33 = *(v14 - 8);
  v15 = *(v33 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5F580();
  v32 = v18;
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_251C5F3DC(0, &qword_2813E1F68, MEMORY[0x277CC95F0]);
  sub_251C5F144();
  sub_251C710D4();
  *(swift_allocObject() + 16) = v2;
  v22 = v2;
  sub_251C70964();
  sub_251C5F2A4();
  sub_251C5E8B4(&qword_2813E2270, sub_251C5F0A8);
  sub_251C5E8B4(&qword_2813E2560, sub_251C5F2A4);
  sub_251C70BD4();

  (*(v28 + 8))(v8, v5);
  sub_251C5E8B4(&qword_2813E2280, sub_251C5F1B8);
  v23 = v29;
  sub_251C70B64();
  (*(v30 + 8))(v13, v23);
  sub_251C5E8B4(&qword_2813E2440, sub_251C5F4EC);
  v24 = v31;
  sub_251C70AE4();
  (*(v33 + 8))(v17, v24);
  sub_251C5E8B4(&qword_2813E2530, sub_251C5F580);
  v25 = v32;
  v26 = sub_251C70A94();
  (*(v34 + 8))(v21, v25);
  return v26;
}

uint64_t sub_251C5DBC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_251C702E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_251C5E8B4(&qword_2813E74C0, MEMORY[0x277D11300]), v9 = sub_251C70E84(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_251C5E8B4(&qword_27F4797C8, MEMORY[0x277D11300]);
      v17 = sub_251C70ED4();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_251C5DDD8(uint64_t a1)
{
  v13 = MEMORY[0x277D84FA0];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_251C5DEC4(v12))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a1 + 56) + ((v9 << 9) | (8 * v10)));
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v13;
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251C5DEC4(uint64_t a1)
{
  v2 = sub_251C702E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_251BF5578(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251C5E0D4(void **a1, uint64_t a2, uint64_t a3)
{
  sub_251BFB7E4();
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_251C5DBC0(a3, *(a2 + *(v9 + 48)));
  if (result)
  {
    sub_251C5F624(a2, v11, sub_251BFB7E4);
    v13 = *&v11[*(v7 + 48)];

    v14 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_251C39A00(0, v14[2] + 1, 1, v14);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_251C39A00(v15 > 1, v16 + 1, 1, v14);
    }

    v14[2] = v16 + 1;
    v17 = sub_251C70074();
    result = (*(*(v17 - 8) + 32))(v14 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v16, v11, v17);
    *a1 = v14;
  }

  return result;
}

uint64_t sub_251C5E25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_251C70024();
  v7 = objc_allocWithZone(MEMORY[0x277CCD988]);
  v8 = sub_251C70EE4();

  v9 = [v7 initForClinicalAccountIdentifier_];

  v10 = [objc_allocWithZone(MEMORY[0x277CCD978]) initWithHealthStore:a2 recipientIdentifier:v9];
  v11 = sub_251C714F4();

  v15[1] = v11;
  (*(v5 + 16))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_251C5F350();
  sub_251C4D0B4();
  sub_251C5E8B4(&qword_2813E2018, sub_251C5F350);
  sub_251C70AE4();
}

uint64_t sub_251C5E49C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_251C4D0B4();
  v7 = *(v6 + 48);
  v8 = sub_251C70074();
  (*(*(v8 - 8) + 16))(a3, a2, v8);
  *(a3 + v7) = v5;
}

uint64_t sub_251C5E52C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  sub_251C4D0B4();
  v46 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = *a1;
  v15 = sub_251C4BC38(MEMORY[0x277D84F90]);
  v45 = *(v14 + 16);
  if (!v45)
  {
LABEL_16:
    v40 = sub_251C5E8FC(v15);

    *v43 = v40;
    return result;
  }

  v16 = 0;
  v44 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  while (v16 < *(v14 + 16))
  {
    v21 = v4;
    sub_251C5F624(v44 + *(v4 + 72) * v16, v13, sub_251C4D0B4);
    sub_251C5F624(v13, v11, sub_251C4D0B4);
    v22 = v46;
    v23 = *&v11[*(v46 + 48)];

    sub_251C5F624(v13, v8, sub_251C4D0B4);
    v24 = *&v8[*(v22 + 48)];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v15;
    v26 = sub_251AC8AFC(v11);
    v28 = v15[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_18;
    }

    v32 = v27;
    if (v15[3] < v31)
    {
      sub_251AC9F78(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_251AC8AFC(v11);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      v15 = v47;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v39 = v26;
    sub_251ACDDE4();
    v26 = v39;
    v15 = v47;
    if (v32)
    {
LABEL_3:
      v17 = v15[7];
      v18 = *(v17 + 8 * v26);
      *(v17 + 8 * v26) = v24;

      sub_251C5F68C(v13);
      goto LABEL_4;
    }

LABEL_12:
    v15[(v26 >> 6) + 8] |= 1 << v26;
    v34 = v15[6];
    v35 = v26;
    v36 = sub_251C70074();
    (*(*(v36 - 8) + 16))(v34 + *(*(v36 - 8) + 72) * v35, v11, v36);
    *(v15[7] + 8 * v35) = v24;
    sub_251C5F68C(v13);
    v37 = v15[2];
    v30 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v30)
    {
      goto LABEL_19;
    }

    v15[2] = v38;
LABEL_4:
    ++v16;
    v19 = sub_251C70074();
    v20 = *(*(v19 - 8) + 8);
    v20(v11, v19);
    v20(v8, v19);
    v4 = v21;
    if (v45 == v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_251C70074();
  result = sub_251C71A14();
  __break(1u);
  return result;
}

uint64_t sub_251C5E8B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251C5E8FC(uint64_t a1)
{
  v2 = sub_251C702E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = sub_251C70074();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5EFFC();
  result = sub_251C71804();
  v16 = result;
  v17 = 0;
  v57 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v46 = (v21 + 63) >> 6;
  v47 = v19;
  v48 = v3 + 16;
  v49 = v14;
  v50 = v10;
  v51 = v3;
  v24 = (v3 + 8);
  v53 = result + 64;
  v54 = v11 + 16;
  v55 = result;
  v56 = v11;
  v52 = (v11 + 32);
  if (v23)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v23));
      v60 = (v23 - 1) & v23;
LABEL_10:
      v28 = v25 | (v17 << 6);
      v29 = v57;
      v30 = *(v57 + 48);
      v31 = *(v56 + 16);
      v61 = *(v56 + 72) * v28;
      v31(v14, v30 + v61, v10);
      v32 = *(v29 + 56);
      v62 = v28;
      v33 = *(v32 + 8 * v28);
      v34 = *(v33 + 16);
      v35 = sub_251C5E8B4(&qword_2813E74C0, MEMORY[0x277D11300]);

      v36 = MEMORY[0x25308D030](v34, v2, v35);
      v37 = v33;
      v63 = v36;
      v38 = *(v33 + 16);
      if (v38)
      {
        v58 = v37;
        v59 = v17;
        v39 = v37 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
        v40 = *(v51 + 72);
        v41 = *(v51 + 16);
        do
        {
          v41(v9, v39, v2);
          sub_251BF5578(v7, v9);
          (*v24)(v7, v2);
          v39 += v40;
          --v38;
        }

        while (v38);

        v36 = v63;
        v14 = v49;
        v10 = v50;
        v17 = v59;
      }

      else
      {
      }

      v42 = v62;
      *(v53 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
      v16 = v55;
      result = (*v52)(*(v55 + 48) + v61, v14, v10);
      *(*(v16 + 56) + 8 * v42) = v36;
      v43 = *(v16 + 16);
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        break;
      }

      *(v16 + 16) = v45;
      v23 = v60;
      if (!v60)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v46)
      {
        return v16;
      }

      v27 = *(v47 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v60 = (v27 - 1) & v27;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251C5ECD8(uint64_t a1)
{
  v2 = sub_251C70074();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = sub_251C702D4();
  v11 = sub_251C4BC38(MEMORY[0x277D84F90]);
  v12 = *(a1 + 16);
  if (v12)
  {
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v15 = (a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
    v41 = *(v13 + 56);
    v42 = v14;
    v40 = (v13 - 8);
    while (1)
    {
      v19 = v42;
      v42(v9, v15, v2);
      v20 = v9;
      v21 = v9;
      v22 = v13;
      v19(v7, v21, v2);
      v23 = v10;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v11;
      v25 = sub_251AC8AFC(v7);
      v27 = v11[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        break;
      }

      v31 = v26;
      if (v11[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = v25;
          sub_251ACDDE4();
          v25 = v37;
        }
      }

      else
      {
        sub_251AC9F78(v30, isUniquelyReferenced_nonNull_native);
        v25 = sub_251AC8AFC(v7);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_17;
        }
      }

      v13 = v22;
      v11 = v43;
      v9 = v20;
      if (v31)
      {
        v16 = v43[7];
        v17 = *(v16 + 8 * v25);
        *(v16 + 8 * v25) = v23;

        v18 = *v40;
        (*v40)(v7, v2);
        v18(v20, v2);
      }

      else
      {
        v43[(v25 >> 6) + 8] |= 1 << v25;
        v33 = v25;
        v42((v11[6] + v25 * v41), v7, v2);
        *(v11[7] + 8 * v33) = v23;
        v34 = *v40;
        (*v40)(v7, v2);
        v34(v20, v2);
        v35 = v11[2];
        v29 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v29)
        {
          goto LABEL_16;
        }

        v11[2] = v36;
      }

      v15 += v41;
      --v12;
      v10 = v23;
      if (!v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_251C71A14();
    __break(1u);
  }

  else
  {
LABEL_14:

    v38 = sub_251C5E8FC(v11);

    return v38;
  }

  return result;
}

void sub_251C5EFFC()
{
  if (!qword_2813E1CD8)
  {
    sub_251C70074();
    sub_251BFB858();
    sub_251C5E8B4(&qword_2813E74E0, MEMORY[0x277CC95F0]);
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1CD8);
    }
  }
}

void sub_251C5F0A8()
{
  if (!qword_2813E2268)
  {
    sub_251C5F3DC(255, &qword_2813E1F68, MEMORY[0x277CC95F0]);
    sub_251C5F144();
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2268);
    }
  }
}

unint64_t sub_251C5F144()
{
  result = qword_2813E1F60;
  if (!qword_2813E1F60)
  {
    sub_251C5F3DC(255, &qword_2813E1F68, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1F60);
  }

  return result;
}

void sub_251C5F1B8()
{
  if (!qword_2813E2278)
  {
    sub_251C5F2A4();
    sub_251C5F430();
    sub_251C5E8B4(&qword_2813E2560, sub_251C5F2A4);
    sub_251C5E8B4(&unk_2813E2688, sub_251C5F430);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2278);
    }
  }
}

void sub_251C5F2A4()
{
  if (!qword_2813E2558)
  {
    sub_251C5F350();
    sub_251C4D0B4();
    sub_251C5E8B4(&qword_2813E2018, sub_251C5F350);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2558);
    }
  }
}

void sub_251C5F350()
{
  if (!qword_2813E2010)
  {
    sub_251C5F3DC(255, &qword_2813E1F58, MEMORY[0x277D11300]);
    sub_251A82284();
    v0 = sub_251C70A54();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2010);
    }
  }
}

void sub_251C5F3DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C711A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251C5F430()
{
  if (!qword_2813E2680)
  {
    sub_251C5F0A8();
    sub_251A82284();
    sub_251C5E8B4(&qword_2813E2270, sub_251C5F0A8);
    v0 = sub_251C707E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2680);
    }
  }
}

void sub_251C5F4EC()
{
  if (!qword_2813E2438)
  {
    sub_251C5F1B8();
    sub_251C5E8B4(&qword_2813E2280, sub_251C5F1B8);
    v0 = sub_251C708C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2438);
    }
  }
}

void sub_251C5F580()
{
  if (!qword_2813E2528)
  {
    sub_251C5F4EC();
    sub_251C5E8B4(&qword_2813E2440, sub_251C5F4EC);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2528);
    }
  }
}

uint64_t sub_251C5F624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C5F68C(uint64_t a1)
{
  sub_251C4D0B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C5F6E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_251C70074() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251C5E49C(a1, v6, a2);
}

uint64_t sub_251C5F768(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_251C5F7D8, 0, 0);
}

uint64_t sub_251C5F7D8()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = sub_251C70034();
  v0[22] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_251C5F900;
  v4 = swift_continuation_init();
  sub_251C5FE70();
  v0[17] = v5;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_251AB5E04;
  v0[13] = &block_descriptor_25;
  v0[14] = v4;
  [v2 refreshAccountConnectionInformationForAccountWithIdentifier:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_251C5F900()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_251C5FC68;
  }

  else
  {
    v3 = sub_251C5FA10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251C5FA10()
{
  v18 = v0;
  v1 = *(v0 + 144);

  v2 = [v1 authorization];
  if (v2)
  {
    v3 = v2;

    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v6 = sub_251C70764();
    __swift_project_value_buffer(v6, qword_2813E8130);
    v7 = sub_251C70744();
    v8 = sub_251C713D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 168);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      v12 = sub_251C71B64();
      v14 = sub_251B10780(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_251A6C000, v7, v8, "%s.refreshFHIRCredential. Call succeeded but return didn't include a credential, which should be impossible", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x25308E2B0](v11, -1, -1);
      MEMORY[0x25308E2B0](v10, -1, -1);
    }

    type metadata accessor for HKError(0);
    *(v0 + 144) = 11;
    sub_251C5FF44(MEMORY[0x277D84F90]);
    sub_251C60048();
    sub_251C6FD64();
    v15 = *(v0 + 80);
    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_251C5FC68()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[23];
  v4 = v0[1];

  return v4();
}

uint64_t sub_251C5FCD8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_251C5FD70;

  return sub_251C5F768(a1);
}

uint64_t sub_251C5FD70(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void sub_251C5FE70()
{
  if (!qword_27F47CF78)
  {
    sub_251C5FEE0();
    sub_251A82284();
    v0 = sub_251C71224();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CF78);
    }
  }
}

unint64_t sub_251C5FEE0()
{
  result = qword_2813E1D30;
  if (!qword_2813E1D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E1D30);
  }

  return result;
}

unint64_t sub_251C5FF44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C600A0();
    v3 = sub_251C71824();
    v4 = a1 + 32;

    while (1)
    {
      sub_251C60104(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_251AC8C58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_251ACFB54(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251C60048()
{
  result = qword_27F478C50;
  if (!qword_27F478C50)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478C50);
  }

  return result;
}

void sub_251C600A0()
{
  if (!qword_2813E1CB8)
  {
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1CB8);
    }
  }
}

uint64_t sub_251C60104(uint64_t a1, uint64_t a2)
{
  sub_251AFE93C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C60178()
{
  v1 = 25705;
  v2 = 0x746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 1635018093;
  }

  if (*v0)
  {
    v1 = 0x656372756F736572;
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

uint64_t sub_251C601E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251C602D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251C60210(uint64_t a1)
{
  v2 = sub_251C607C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C6024C(uint64_t a1)
{
  v2 = sub_251C607C0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_251C60288@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_251C60438(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_251C602D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_251C719D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEC00000065707954 || (sub_251C719D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_251C719D4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_251C60438@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251C60764();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C607C0();
  sub_251C71B04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  v12 = sub_251C718B4();
  v14 = v13;
  v24 = v12;
  LOBYTE(v25) = 1;
  v22 = sub_251C718B4();
  v23 = v15;
  sub_251C60814();
  v27 = 2;
  sub_251C60864();
  sub_251C718A4();
  v21 = v25;
  v27 = 3;
  sub_251C60930();
  sub_251C718A4();
  (*(v7 + 8))(v10, v6);
  v16 = v25;
  v17 = v26;
  v18 = v21;

  v19 = v23;

  sub_251AFF694(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);

  result = sub_251AFF7F4(v16, v17);
  *a2 = v24;
  a2[1] = v14;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v16;
  a2[6] = v17;
  return result;
}

void sub_251C60764()
{
  if (!qword_27F47CF80)
  {
    sub_251C607C0();
    v0 = sub_251C718E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CF80);
    }
  }
}

unint64_t sub_251C607C0()
{
  result = qword_27F47CF88;
  if (!qword_27F47CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CF88);
  }

  return result;
}

void sub_251C60814()
{
  if (!qword_27F47CF90)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CF90);
    }
  }
}

unint64_t sub_251C60864()
{
  result = qword_27F47CF98;
  if (!qword_27F47CF98)
  {
    sub_251C60814();
    sub_251C608DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CF98);
  }

  return result;
}

unint64_t sub_251C608DC()
{
  result = qword_27F47CFA0;
  if (!qword_27F47CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CFA0);
  }

  return result;
}

unint64_t sub_251C60930()
{
  result = qword_27F47CFA8;
  if (!qword_27F47CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CFA8);
  }

  return result;
}

unint64_t sub_251C60998()
{
  result = qword_27F47CFB0;
  if (!qword_27F47CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CFB0);
  }

  return result;
}

unint64_t sub_251C609F0()
{
  result = qword_27F47CFB8;
  if (!qword_27F47CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CFB8);
  }

  return result;
}

unint64_t sub_251C60A48()
{
  result = qword_27F47CFC0;
  if (!qword_27F47CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CFC0);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingMedicationDoseEventQuery()
{
  result = qword_27F47CFC8;
  if (!qword_27F47CFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251C60B10()
{
  result = type metadata accessor for ClinicalSharingQueryContext(319);
  if (v1 <= 0x3F)
  {
    result = sub_251A8223C(319, &qword_27F478D50, 0x277CCD8D8);
    if (v2 <= 0x3F)
    {
      result = sub_251C6FAE4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251C60BCC(unint64_t a1, void (*a2)(id *), uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v39 = a3;
  v37 = sub_251C70014();
  v34 = *(v37 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_26:
    v9 = sub_251C717F4();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v35 = a1 & 0xFFFFFFFFFFFFFF8;
      v36 = a1 & 0xC000000000000001;
      v32 = (v34 + 8);
      v33 = v34 + 32;
      v11 = MEMORY[0x277D84F98];
      v31 = xmmword_251C74560;
      while (1)
      {
        if (v36)
        {
          v14 = MEMORY[0x25308D460](v10, a1);
        }

        else
        {
          if (v10 >= *(v35 + 16))
          {
            goto LABEL_23;
          }

          v14 = *(a1 + 8 * v10 + 32);
        }

        v15 = v14;
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v41 = v14;
        v38(&v41);
        if (v4)
        {

          return v11;
        }

        v40 = 0;
        v4 = a1;
        a1 = v9;
        v18 = sub_251AC8F4C(v8);
        v19 = v11[2];
        v20 = (v17 & 1) == 0;
        v21 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_24;
        }

        v22 = v17;
        if (v11[3] < v21)
        {
          sub_251ACCA1C(v21, 1);
          v11 = v42;
          v23 = sub_251AC8F4C(v8);
          if ((v22 & 1) != (v24 & 1))
          {
            result = sub_251C71A14();
            __break(1u);
            return result;
          }

          v18 = v23;
        }

        if (v22)
        {
          v12 = (*v32)(v8, v37);
          v13 = (v11[7] + 8 * v18);
          MEMORY[0x25308CEE0](v12);
          v9 = a1;
          if (*((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v29 = *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_251C71174();
            v9 = a1;
          }

          sub_251C71194();
        }

        else
        {
          sub_251A82418();
          v25 = swift_allocObject();
          *(v25 + 16) = v31;
          *(v25 + 32) = v15;
          v11[(v18 >> 6) + 8] |= 1 << v18;
          (*(v34 + 32))(v11[6] + *(v34 + 72) * v18, v8, v37);
          *(v11[7] + 8 * v18) = v25;
          v26 = v11[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_25;
          }

          v11[2] = v28;
          v9 = a1;
        }

        ++v10;
        a1 = v4;
        v4 = v40;
        if (v16 == v9)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v11 = MEMORY[0x277D84F98];
LABEL_28:

  return v11;
}

uint64_t sub_251C60F38()
{
  v1 = v0;
  v2 = type metadata accessor for ClinicalSharingMedicationDoseEventQuery();
  v3 = v2 - 8;
  v47 = *(v2 - 8);
  v59 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C64310();
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C643D4();
  v54 = v10;
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10);
  v50 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C64530();
  v55 = v13;
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v13);
  v51 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_251C70014();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v3 + 36);
  v22 = objc_opt_self();
  sub_251C6FAB4();
  v23 = sub_251C6FF94();
  v24 = *(v17 + 8);
  v24(v20, v16);
  sub_251C6FA84();
  v25 = sub_251C6FF94();
  v24(v20, v16);
  v26 = [v22 predicateForSamplesWithStartDate:v23 endDate:v25 options:0];
  v49 = v26;

  v27 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v1[1] predicate:v26];
  sub_251A823B4(*v1 + 16, v62);
  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  sub_251A82418();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_251C74560;
  *(v28 + 32) = v27;
  v48 = v27;
  sub_251AFCF70();
  v29 = v1[2];
  v30 = off_2863FD760();
  v43[1] = v30;

  v61 = v30;
  v58 = type metadata accessor for ClinicalSharingMedicationDoseEventQuery;
  v45 = v1;
  sub_251C64FC8(v1, v5, type metadata accessor for ClinicalSharingMedicationDoseEventQuery);
  v31 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v32 = swift_allocObject();
  v44 = type metadata accessor for ClinicalSharingMedicationDoseEventQuery;
  sub_251C65030(v5, v32 + v31, type metadata accessor for ClinicalSharingMedicationDoseEventQuery);
  sub_251A82164();
  sub_251AA8E98(0, &qword_27F4796F8, &qword_27F479700, 0x277CCD650);
  v46 = MEMORY[0x277CBCD90];
  sub_251C64B2C(&qword_27F478D78, sub_251A82164);
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v62);
  sub_251C64FC8(v1, v5, v58);
  v33 = swift_allocObject();
  sub_251C65030(v5, v33 + v31, type metadata accessor for ClinicalSharingMedicationDoseEventQuery);
  sub_251C70964();
  type metadata accessor for PBTypedData(0);
  sub_251C644C0();
  v47 = MEMORY[0x277CBCB10];
  sub_251C64B2C(&qword_27F47CFE8, sub_251C64310);
  sub_251C64B2C(&qword_27F47C510, sub_251C644C0);
  v34 = v50;
  v35 = v52;
  v36 = v60;
  sub_251C70B94();

  (*(v53 + 8))(v36, v35);
  sub_251C64FC8(v45, v5, v58);
  v37 = swift_allocObject();
  sub_251C65030(v5, v37 + v31, v44);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251C64B2C(&qword_27F47CFF8, sub_251C643D4);
  v38 = v51;
  v39 = v54;
  sub_251C70AA4();

  (*(v56 + 8))(v34, v39);
  sub_251C64B2C(&qword_27F47D000, sub_251C64530);
  v40 = v55;
  v41 = sub_251C70A94();

  (*(v57 + 8))(v38, v40);
  return v41;
}

uint64_t sub_251C61718@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251B15154(*a1);
  if (result)
  {
    *a2 = result;
  }

  else
  {
    result = sub_251C717E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_251C6179C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for PBTypedData(0);
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C64840();
  v48 = v6;
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C649DC();
  v49 = v9;
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C648F0(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v43 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  v23 = *a1;
  sub_251C61D5C(*a1, &v43 - v21);
  v24 = sub_251C39A68(0, 1, 1, MEMORY[0x277D84F90]);
  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_251C39A68(v25 > 1, v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v28 = *(v13 + 72);
  sub_251C0A8BC(v22, v24 + v27 + v28 * v26);
  v54 = v24;
  v29 = sub_251C622E4(v23);
  sub_251BFFA98(v29);
  v30 = v54[2];
  if (v30)
  {
    v43 = v54;
    v31 = v54 + v27;
    v32 = (v51 + 48);
    v33 = MEMORY[0x277D84F90];
    v34 = v3;
    do
    {
      sub_251C64A98(v31, v20);
      sub_251C0A8BC(v20, v17);
      if ((*v32)(v17, 1, v3) == 1)
      {
        sub_251C64F38(v17, &qword_27F4793C8, type metadata accessor for PBTypedData);
      }

      else
      {
        sub_251C65030(v17, v52, type metadata accessor for PBTypedData);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_251C39A34(0, v33[2] + 1, 1, v33);
        }

        v36 = v33[2];
        v35 = v33[3];
        if (v36 >= v35 >> 1)
        {
          v33 = sub_251C39A34(v35 > 1, v36 + 1, 1, v33);
        }

        v33[2] = v36 + 1;
        sub_251C65030(v52, v33 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v36, type metadata accessor for PBTypedData);
        v3 = v34;
      }

      v31 += v28;
      --v30;
    }

    while (v30);
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v53 = v33;
  sub_251C648F0(0, &qword_27F47D010, type metadata accessor for PBTypedData, MEMORY[0x277D83940]);
  sub_251C64954();
  v37 = v44;
  sub_251C710D4();

  sub_251A82284();
  v38 = v45;
  v39 = v48;
  sub_251C708E4();
  (*(v46 + 8))(v37, v39);
  sub_251C64B2C(&qword_27F47D028, sub_251C649DC);
  v40 = v49;
  v41 = sub_251C70A94();
  result = (*(v47 + 8))(v38, v40);
  *v50 = v41;
  return result;
}

uint64_t sub_251C61D5C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251C648F0(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v43 - v7;
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PBMedicationTrackingDoseEvents(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v22 = (&v43 - v20);
  if (a1 >> 62)
  {
    v48 = (&v43 - v20);
    v49 = v21;
    v23 = sub_251C717F4();
    v22 = v48;
    if (v23)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_3:
      v47 = a2;
      MEMORY[0x28223BE20](v23);
      v49 = v24;
      *(&v43 - 2) = v2;
      sub_251C4FD4C(sub_251C64FA8, (&v43 - 4), a1);
      v26 = v25;
      v27 = *(v17 + 20);
      v48 = v22;
      sub_251C703A4();
      *v22 = v26;
      *v16 = 0;
      v16[8] = 1;
      v28 = *(v13 + 20);
      v29 = type metadata accessor for PBTypedData.OneOf_Raw(0);
      v30 = *(v29 - 8);
      v44 = *(v30 + 56);
      v45 = v30 + 56;
      v44(&v16[v28], 1, 1, v29);
      v31 = &v16[*(v13 + 24)];
      sub_251C703A4();
      v32 = v13;
      v46 = v13;
      v33 = v8;
      v34 = *(v32 + 28);
      v35 = *(v9 + 56);
      v35(&v16[v34], 1, 1, v33);
      v36 = sub_251C6FAE4();
      v37 = v50;
      (*(*(v36 - 8) + 56))(v50, 1, 1, v36);
      sub_251BFC464(5, 1, v37);
      sub_251C64F38(v37, &qword_27F478D90, MEMORY[0x277CC88A8]);
      sub_251C64F38(&v16[v34], qword_2813E6EE8, type metadata accessor for PBDateRange);
      sub_251C65030(v12, &v16[v34], type metadata accessor for PBDateRange);
      v35(&v16[v34], 0, 1, v33);
      *v16 = 128;
      v16[8] = 1;
      v38 = v48;
      v39 = v49;
      sub_251C64FC8(v48, v49, type metadata accessor for PBMedicationTrackingDoseEvents);
      sub_251C64F38(&v16[v28], qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
      sub_251C65030(v39, &v16[v28], type metadata accessor for PBMedicationTrackingDoseEvents);
      swift_storeEnumTagMultiPayload();
      v44(&v16[v28], 0, 1, v29);
      v40 = v47;
      sub_251C65030(v16, v47, type metadata accessor for PBTypedData);
      (*(v51 + 56))(v40, 0, 1, v46);
      return sub_251C65098(v38, type metadata accessor for PBMedicationTrackingDoseEvents);
    }
  }

  v42 = *(v51 + 56);

  return v42(a2, 1, 1, v13);
}

uint64_t sub_251C622E4(unint64_t a1)
{
  sub_251C648F0(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v34 - v4);
  v40 = type metadata accessor for PBTypedData(0);
  v38 = *(v40 - 8);
  v6 = *(v38 + 64);
  v7 = MEMORY[0x28223BE20](v40);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v35 = v11;
      v36 = v9;

      v13 = sub_251C64B74(v12);

      v9 = (v13 + 64);
      v14 = 1 << *(v13 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v11 = v15 & *(v13 + 64);
      v16 = (v14 + 63) >> 6;
      v39 = (v38 + 48);

      v17 = 0;
      v37 = MEMORY[0x277D84F90];
      while (1)
      {
        v18 = v17;
        if (!v11)
        {
          break;
        }

LABEL_10:
        v19 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v20 = v19 | (v17 << 6);
        v21 = *(v13 + 48) + 16 * v20;
        v23 = *v21;
        v22 = *(v21 + 8);
        v24 = *(*(v13 + 56) + 8 * v20);

        sub_251C628E0(v23, v22, v24, v5);

        if ((*v39)(v5, 1, v40) == 1)
        {
          sub_251C64F38(v5, &qword_27F4793C8, type metadata accessor for PBTypedData);
        }

        else
        {
          v25 = v35;
          sub_251C65030(v5, v35, type metadata accessor for PBTypedData);
          sub_251C65030(v25, v36, type metadata accessor for PBTypedData);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_251C39A34(0, v37[2] + 1, 1, v37);
          }

          v27 = v37[2];
          v26 = v37[3];
          v28 = v27 + 1;
          if (v27 >= v26 >> 1)
          {
            v34 = v27 + 1;
            v31 = sub_251C39A34(v26 > 1, v27 + 1, 1, v37);
            v28 = v34;
            v37 = v31;
          }

          v30 = v37;
          v29 = v38;
          v37[2] = v28;
          sub_251C65030(v36, v30 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27, type metadata accessor for PBTypedData);
        }
      }

      while (1)
      {
        v17 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v17 >= v16)
        {

          v32 = sub_251C0958C(v37);

          return v32;
        }

        v11 = *&v9[8 * v17];
        ++v18;
        if (v11)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_19:
      ;
    }

    while (sub_251C717F4());
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_251C626BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_251C702E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(*v2 + 56);
  (*(v6 + 104))(v9, *MEMORY[0x277D112F8], v5);
  v18 = v9;

  v11 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v17, v10);

  (*(v6 + 8))(v9, v5);
  if (*(v11 + 16))
  {
    sub_251C64FC8(a1, a2, type metadata accessor for PBTypedData);
    v12 = sub_251BFAE40(v11);

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a2 + *(Output + 20)) = v12;
    v14 = (a2 + *(Output + 24));
    *v14 = 0;
    v14[1] = 0;
    return (*(*(Output - 8) + 56))(a2, 0, 1, Output);
  }

  else
  {
    v16 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_251C628E0@<X0>(char *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  v86 = a2;
  v85 = a1;
  sub_251C64E90();
  v84 = v6;
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v83 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = &v69 - v10;
  v11 = type metadata accessor for PBHistogramSeries.Value(0);
  v81 = *(v11 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251C648F0(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = &v69 - v17;
  v18 = type metadata accessor for PBDateRange(0);
  v74 = *(v18 - 8);
  v19 = *(v74 + 64);
  MEMORY[0x28223BE20](v18);
  v72 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PBTypedData(0);
  v78 = *(v21 - 8);
  v22 = *(v78 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PBHistogramSeries(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v27);
  v30 = &v69 - v29;
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  v31 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v31)
  {
    while (1)
    {
      v69 = v28;
      v75 = v18;
      v70 = v24;
      v77 = v21;
      v71 = a4;
      v21 = &v69;
      MEMORY[0x28223BE20](v31);
      *(&v69 - 2) = v87;

      v33 = sub_251C60BCC(v32, sub_251C64F1C, (&v69 - 4));
      *(v30 + 8) = 0;
      *(v30 + 16) = 0xE000000000000000;
      v34 = *(v25 + 24);
      v76 = v30;
      sub_251C703A4();
      a4 = *(v33 + 16);
      if (!a4)
      {
        break;
      }

      v90 = MEMORY[0x277D84F90];
      sub_251C0BC9C(0, a4, 0);
      v35 = v90;
      v24 = (v33 + 64);
      v36 = -1 << *(v33 + 32);
      v25 = sub_251C715F4();
      v79 = (v33 + 64);
      v80 = v33;
      while ((v25 & 0x8000000000000000) == 0 && v25 < 1 << *(v33 + 32))
      {
        v21 = 1 << v25;
        if ((*&v24[8 * (v25 >> 6)] & (1 << v25)) == 0)
        {
          goto LABEL_18;
        }

        v88 = a4;
        LODWORD(v89) = *(v33 + 36);
        v37 = *(v33 + 48);
        v24 = v35;
        v38 = sub_251C70014();
        a4 = v14;
        v39 = *(v38 - 8);
        v18 = v82;
        (*(v39 + 16))(v82, v37 + *(v39 + 72) * v25, v38);
        v40 = *(*(v33 + 56) + 8 * v25);
        v41 = v83;
        v42 = v38;
        v35 = v24;
        (*(v39 + 32))(v83, v18, v42);
        v14 = a4;
        *(v41 + *(v84 + 48)) = v40;

        sub_251C634CC(v41, v40, v85, v86, a4);
        sub_251C65098(v41, sub_251C64E90);
        v90 = v24;
        v30 = *(v24 + 2);
        v43 = *(v24 + 3);
        if (v30 >= v43 >> 1)
        {
          sub_251C0BC9C(v43 > 1, v30 + 1, 1);
          v35 = v90;
        }

        *(v35 + 2) = v30 + 1;
        sub_251C65030(a4, &v35[((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v30], type metadata accessor for PBHistogramSeries.Value);
        v33 = v80;
        if (v25 >= -(-1 << *(v80 + 32)))
        {
          goto LABEL_19;
        }

        v24 = v79;
        if ((*&v79[8 * (v25 >> 6)] & v21) == 0)
        {
          goto LABEL_20;
        }

        if (v89 != *(v80 + 36))
        {
          goto LABEL_21;
        }

        v25 = sub_251C71614();
        a4 = (v88 - 1);
        if (v88 == 1)
        {

          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v66 = v14;
      v67 = v28;
      v31 = sub_251C717F4();
      v28 = v67;
      v14 = v66;
      if (!v31)
      {
        goto LABEL_23;
      }
    }

    v35 = MEMORY[0x277D84F90];
LABEL_16:
    *v76 = v35;
    v44 = v70;
    *v70 = 0;
    *(v44 + 8) = 1;
    v45 = *(v77 + 20);
    v46 = v77;
    v86 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v47 = *(v86 - 1);
    v88 = *(v47 + 56);
    v89 = v47 + 56;
    (v88)(v44 + v45, 1, 1, v86);
    v48 = v44 + *(v46 + 24);
    sub_251C703A4();
    v49 = *(v46 + 28);
    v85 = *(v74 + 56);
    (v85)(v44 + v49, 1, 1, v75);
    v50 = type metadata accessor for ClinicalSharingMedicationDoseEventQuery();
    v51 = *(v50 + 28);
    v52 = v87;
    v53 = v87 + *(v50 + 32);
    v54 = *v53;
    v55 = *(v53 + 8);
    v56 = sub_251C6FAE4();
    v57 = *(v56 - 8);
    v58 = v52 + v51;
    v59 = v73;
    (*(v57 + 16))(v73, v58, v56);
    (*(v57 + 56))(v59, 0, 1, v56);
    v60 = v72;
    sub_251BFC464(v54, v55, v59);
    sub_251C64F38(v59, &qword_27F478D90, MEMORY[0x277CC88A8]);
    sub_251C64F38(v44 + v49, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251C65030(v60, v44 + v49, type metadata accessor for PBDateRange);
    (v85)(v44 + v49, 0, 1, v75);
    *v44 = 128;
    *(v44 + 8) = 1;
    v61 = v76;
    v62 = v69;
    sub_251C64FC8(v76, v69, type metadata accessor for PBHistogramSeries);
    sub_251C64F38(v44 + v45, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251C65030(v62, v44 + v45, type metadata accessor for PBHistogramSeries);
    v63 = v86;
    swift_storeEnumTagMultiPayload();
    (v88)(v44 + v45, 0, 1, v63);
    v64 = v71;
    sub_251C65030(v44, v71, type metadata accessor for PBTypedData);
    (*(v78 + 56))(v64, 0, 1, v77);
    return sub_251C65098(v61, type metadata accessor for PBHistogramSeries);
  }

  else
  {
LABEL_23:
    v68 = *(v78 + 56);

    return v68(a4, 1, 1, v21);
  }
}

uint64_t sub_251C63284@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_251C70014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C701E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  (*(v12 + 16))(v15, *a2 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v11);
  v17 = [v16 startDate];
  sub_251C6FFE4();

  v18 = a2 + *(type metadata accessor for ClinicalSharingMedicationDoseEventQuery() + 32);
  if (v18[8] == 1 && (v19 = *v18, ((1 << v19) & 0x67) == 0))
  {
    if (v19 == 3)
    {
      sub_251B1C960(0, v10, a3);
    }

    else
    {
      sub_251B1D048(v10, a3);
    }
  }

  else
  {
    sub_251C700C4();
  }

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_251C634CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  v77 = a3;
  v78 = a4;
  v75 = a1;
  v76 = a5;
  v8 = type metadata accessor for PBBucket(0);
  v74 = *(v8 - 8);
  v9 = *(v74 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v79 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v83 = &v73 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v73 - v16;
  MEMORY[0x28223BE20](v15);
  v84 = &v73 - v18;
  v85 = a2 >> 62;
  v86 = MEMORY[0x277D84F90];
  v80 = v19;
  if (a2 >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251C717F4())
  {
    v21 = MEMORY[0x277D84F90];
    v22 = &selRef_dateComponentsValue;
    v23 = &selRef_dateComponentsValue;
    v81 = v17;
    v82 = v8;
    if (i)
    {
      v8 = 0;
      v6 = a2 & 0xC000000000000001;
      v17 = (a2 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v6)
        {
          v24 = MEMORY[0x25308D460](v8, a2);
        }

        else
        {
          if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          v24 = *(a2 + 8 * v8 + 32);
        }

        v25 = v24;
        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ([v24 logOrigin] == 2 && objc_msgSend(v25, v23[364]) == 5)
        {
          sub_251C71734();
          v26 = *(v86 + 16);
          sub_251C71774();
          v23 = &selRef_dateComponentsValue;
          sub_251C71784();
          sub_251C71744();
        }

        else
        {
        }

        ++v8;
        if (v5 == i)
        {
          v27 = v86;
          v17 = v81;
          v8 = v82;
          v21 = MEMORY[0x277D84F90];
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v27 = MEMORY[0x277D84F90];
LABEL_17:
    v28 = v84;
    *(v84 + 8) = 0;
    v29 = v28 + *(v8 + 28);
    sub_251C703A4();
    *v28 = 0;
    if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
    {
      v30 = sub_251C717F4();

      if (v30 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    else
    {
      v30 = *(v27 + 16);
    }

    if (v30 > 0x7FFFFFFF)
    {
      goto LABEL_97;
    }

    v31 = v85;
    *(v84 + 16) = v30;
    v86 = v21;
    if (v31)
    {
      v32 = sub_251C717F4();
      if (v32)
      {
LABEL_23:
        v8 = 0;
        v6 = a2 & 0xC000000000000001;
        v17 = (a2 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v6)
          {
            v33 = MEMORY[0x25308D460](v8, a2);
          }

          else
          {
            if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_89;
            }

            v33 = *(a2 + 8 * v8 + 32);
          }

          v34 = v33;
          v5 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if ([v33 logOrigin] == 2 && objc_msgSend(v34, v23[364]) == 4)
          {
            sub_251C71734();
            v35 = *(v86 + 16);
            sub_251C71774();
            v23 = &selRef_dateComponentsValue;
            sub_251C71784();
            sub_251C71744();
          }

          else
          {
          }

          ++v8;
          if (v5 == v32)
          {
            v36 = v86;
            v17 = v81;
            v8 = v82;
            v21 = MEMORY[0x277D84F90];
            goto LABEL_37;
          }
        }

LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }
    }

    else
    {
      v32 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        goto LABEL_23;
      }
    }

    v36 = v21;
LABEL_37:
    *(v17 + 1) = 0;
    v37 = &v17[*(v8 + 28)];
    sub_251C703A4();
    *v17 = 0x3FF0000000000000;
    if ((v36 & 0x8000000000000000) == 0 && (v36 & 0x4000000000000000) == 0)
    {
      v38 = *(v36 + 16);

      goto LABEL_40;
    }

LABEL_98:
    v38 = sub_251C717F4();

    if (v38 < 0xFFFFFFFF80000000)
    {
      break;
    }

LABEL_40:
    if (v38 > 0x7FFFFFFF)
    {
      goto LABEL_100;
    }

    *(v17 + 4) = v38;
    v86 = v21;
    if (v85)
    {
      v39 = sub_251C717F4();
      if (v39)
      {
LABEL_43:
        v8 = 0;
        v6 = a2 & 0xC000000000000001;
        v17 = (a2 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v6)
          {
            v40 = MEMORY[0x25308D460](v8, a2);
          }

          else
          {
            if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_91;
            }

            v40 = *(a2 + 8 * v8 + 32);
          }

          v41 = v40;
          v5 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if ([v40 logOrigin] == 1 && objc_msgSend(v41, v23[364]) == 4)
          {
            sub_251C71734();
            v42 = *(v86 + 16);
            sub_251C71774();
            v23 = &selRef_dateComponentsValue;
            sub_251C71784();
            sub_251C71744();
          }

          else
          {
          }

          ++v8;
          if (v5 == v39)
          {
            v43 = v86;
            v8 = v82;
            v21 = MEMORY[0x277D84F90];
            goto LABEL_57;
          }
        }

LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }
    }

    else
    {
      v39 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_43;
      }
    }

    v43 = v21;
LABEL_57:
    v44 = v83;
    *(v83 + 8) = 0;
    v45 = v44 + *(v8 + 28);
    sub_251C703A4();
    *v44 = 0x4000000000000000;
    if (v43 < 0 || (v43 & 0x4000000000000000) != 0)
    {
      goto LABEL_101;
    }

    v46 = *(v43 + 16);

LABEL_60:
    if (v46 > 0x7FFFFFFF)
    {
      goto LABEL_103;
    }

    *(v83 + 16) = v46;
    v86 = v21;
    if (v85)
    {
      v47 = sub_251C717F4();
      if (!v47)
      {
LABEL_75:
        v51 = MEMORY[0x277D84F90];
LABEL_76:
        v6 = v80;
        *(v80 + 8) = 0;
        v52 = v6 + *(v8 + 28);
        sub_251C703A4();
        *v6 = 0x4008000000000000;
        if (v51 < 0 || (v51 & 0x4000000000000000) != 0)
        {
          goto LABEL_104;
        }

        v53 = *(v51 + 16);

        goto LABEL_79;
      }
    }

    else
    {
      v47 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v47)
      {
        goto LABEL_75;
      }
    }

    v8 = 0;
    v17 = (a2 & 0xC000000000000001);
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17)
      {
        v48 = MEMORY[0x25308D460](v8, a2);
      }

      else
      {
        if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v48 = *(a2 + 8 * v8 + 32);
      }

      v49 = v48;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ([v48 logOrigin] == 2)
      {
        sub_251C71734();
        v50 = *(v86 + 16);
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
      }

      else
      {
      }

      ++v8;
      if (v6 == v47)
      {
        v51 = v86;
        v8 = v82;
        goto LABEL_76;
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  v46 = sub_251C717F4();

  if (v46 >= 0xFFFFFFFF80000000)
  {
    goto LABEL_60;
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  v53 = sub_251C717F4();

  if (v53 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

LABEL_79:
  if (v53 > 0x7FFFFFFF)
  {
    goto LABEL_106;
  }

  *(v6 + 16) = v53;
  v54 = v79;
  *(v79 + 1) = 0;
  v55 = *(v8 + 28);

  sub_251C703A4();
  *v54 = 0x4010000000000000;
  if (v85)
  {
    v56 = sub_251C717F4();

    if (v56 < 0xFFFFFFFF80000000)
    {
      goto LABEL_107;
    }
  }

  else
  {
    v56 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v56 > 0x7FFFFFFF)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v5 = v79;
  *(v79 + 4) = v56;
  v57 = type metadata accessor for PBHistogramSeries.Value(0);
  v22 = v76;
  v58 = v76 + *(v57 + 28);
  sub_251C703A4();
  sub_251C648F0(0, &qword_27F47C4A8, type metadata accessor for PBBucket, MEMORY[0x277D84560]);
  v59 = *(v74 + 72);
  v60 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v61 = 4 * v59;
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_251C747F0;
  v63 = v62 + v60;
  sub_251C64FC8(v84, v63, type metadata accessor for PBBucket);
  v6 = v81;
  sub_251C64FC8(v81, v63 + v59, type metadata accessor for PBBucket);
  a2 = v83;
  sub_251C64FC8(v83, v63 + 2 * v59, type metadata accessor for PBBucket);
  v64 = 3 * v59;
  v8 = v80;
  sub_251C64FC8(v80, v63 + v64, type metadata accessor for PBBucket);
  sub_251C64FC8(v5, v63 + v61, type metadata accessor for PBBucket);
  v22[2] = v62;
  if (qword_27F478930 == -1)
  {
    goto LABEL_85;
  }

LABEL_109:
  swift_once();
LABEL_85:
  v65 = qword_27F4A2878;
  v66 = sub_251C6FF94();
  v67 = [v65 stringFromDate_];

  v68 = sub_251C70F14();
  v70 = v69;

  sub_251C65098(v5, type metadata accessor for PBBucket);
  sub_251C65098(v8, type metadata accessor for PBBucket);
  sub_251C65098(a2, type metadata accessor for PBBucket);
  sub_251C65098(v6, type metadata accessor for PBBucket);
  sub_251C65098(v84, type metadata accessor for PBBucket);
  *v22 = v68;
  v22[1] = v70;
  v71 = v78;
  v22[3] = v77;
  v22[4] = v71;
}

id sub_251C63E28@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v72 = sub_251C70014();
  v65 = *(v72 - 8);
  v5 = *(v65 + 64);
  v6 = MEMORY[0x28223BE20](v72);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v61 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  v13 = *a1;
  v14 = 0xE000000000000000;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0xE000000000000000;
  v15 = a3 + *(type metadata accessor for PBMedicationTrackingDoseEvent(0) + 48);
  sub_251C703A4();
  v16 = [v13 scheduleItemIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_251C70F14();
    v14 = v19;
  }

  else
  {
    v18 = 0;
  }

  *(a3 + 32) = v18;
  *(a3 + 40) = v14;
  v20 = [v13 medicationIdentifier];
  v21 = sub_251C70F14();
  v23 = v22;

  v70 = v21;
  v71 = v23;
  v24 = *MEMORY[0x277CCCE50];
  v68 = sub_251C70F14();
  v69 = v25;
  v66 = 124;
  v67 = 0xE100000000000000;
  sub_251AD87E0();
  v26 = sub_251C715A4();
  v28 = v27;

  *(a3 + 48) = v26;
  *(a3 + 56) = v28;
  v29 = sub_251C714A4();
  v30 = *&v29;
  if (v31)
  {
    v30 = 0.0;
  }

  else if ((v29 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v30 <= -2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v30 >= 2147483650.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(a3 + 64) = v30;
  v32 = sub_251C714B4();
  v33 = *&v32;
  if (v34)
  {
    v33 = 0.0;
    goto LABEL_12;
  }

  if ((v32 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_12:
  if (v33 <= -2147483650.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v33 >= 2147483650.0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_20;
  }

  v62 = v10;
  *(a3 + 68) = v33;
  v35 = [v13 logStatus];
  if ((v35 - 1) >= 6)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35;
  }

  *(a3 + 16) = v36;
  *(a3 + 24) = 1;
  v37 = [v13 logOrigin];
  v38 = v37 == 1;
  if (v37 == 2)
  {
    v38 = 2;
  }

  *a3 = v38;
  *(a3 + 8) = 1;
  v39 = [v13 startDate];
  sub_251C6FFE4();

  if (qword_27F478930 != -1)
  {
    goto LABEL_29;
  }

LABEL_20:
  v40 = qword_27F4A2878;
  v41 = sub_251C6FF94();
  v42 = [v40 stringFromDate_];

  v43 = sub_251C70F14();
  v45 = v44;

  v46 = v65;
  v47 = *(v65 + 8);
  v48 = v12;
  v49 = v72;
  v47(v48, v72);
  *(a3 + 88) = v43;
  *(a3 + 96) = v45;
  result = [v13 scheduledDate];
  if (result)
  {
    v51 = v63;
    v52 = v46;
    v53 = result;
    sub_251C6FFE4();

    v54 = v62;
    (*(v52 + 32))(v62, v51, v49);
    v55 = *(*v64 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v56 = sub_251C6FF94();
    v57 = [v55 stringFromDate_];

    v58 = sub_251C70F14();
    v60 = v59;

    result = (v47)(v54, v49);
    *(a3 + 72) = v58;
    *(a3 + 80) = v60;
  }

  return result;
}

void sub_251C64310()
{
  if (!qword_27F47CFD8)
  {
    sub_251A82164();
    sub_251AA8E98(255, &qword_27F4796F8, &qword_27F479700, 0x277CCD650);
    sub_251C64B2C(&qword_27F478D78, sub_251A82164);
    v0 = sub_251C70784();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CFD8);
    }
  }
}

void sub_251C643D4()
{
  if (!qword_27F47CFE0)
  {
    sub_251C644C0();
    sub_251C64310();
    sub_251C64B2C(&qword_27F47C510, sub_251C644C0);
    sub_251C64B2C(&qword_27F47CFE8, sub_251C64310);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CFE0);
    }
  }
}

void sub_251C644C0()
{
  if (!qword_27F47C4F8)
  {
    type metadata accessor for PBTypedData(255);
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C4F8);
    }
  }
}

void sub_251C64530()
{
  if (!qword_27F47CFF0)
  {
    sub_251C643D4();
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251C64B2C(&qword_27F47CFF8, sub_251C643D4);
    v0 = sub_251C70784();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CFF0);
    }
  }
}

uint64_t sub_251C645DC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(type metadata accessor for ClinicalSharingMedicationDoseEventQuery() - 8) + 80);

  return sub_251C61718(a1, a2);
}

uint64_t sub_251C6465C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(type metadata accessor for ClinicalSharingMedicationDoseEventQuery() - 8) + 80);

  return sub_251C6179C(a1, a2);
}

uint64_t objectdestroyTm_12()
{
  v1 = (type metadata accessor for ClinicalSharingMedicationDoseEventQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[9];
  v7 = sub_251C6FAE4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251C647CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingMedicationDoseEventQuery() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_251C626BC(a1, a2);
}

void sub_251C64840()
{
  if (!qword_27F47D008)
  {
    sub_251C648F0(255, &qword_27F47D010, type metadata accessor for PBTypedData, MEMORY[0x277D83940]);
    sub_251C64954();
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47D008);
    }
  }
}

void sub_251C648F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251C64954()
{
  result = qword_27F47D018;
  if (!qword_27F47D018)
  {
    sub_251C648F0(255, &qword_27F47D010, type metadata accessor for PBTypedData, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47D018);
  }

  return result;
}

void sub_251C649DC()
{
  if (!qword_27F47D020)
  {
    sub_251C648F0(255, &qword_27F47D010, type metadata accessor for PBTypedData, MEMORY[0x277D83940]);
    sub_251A82284();
    sub_251C64954();
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47D020);
    }
  }
}

uint64_t sub_251C64A98(uint64_t a1, uint64_t a2)
{
  sub_251C648F0(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C64B2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251C64B74(unint64_t a1)
{
  v36 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_251C717F4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v34 = *MEMORY[0x277CCCE50];
      v4 = MEMORY[0x277D84F98];
      v33 = v2;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x25308D460](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v35 = v8;
        v9 = v7;
        v10 = [v7 medicationIdentifier];
        sub_251C70F14();

        sub_251C70F14();
        v31 = sub_251AD87E0();
        v32 = v31;
        v30 = v31;
        v29 = MEMORY[0x277D837D0];
        v11 = sub_251C715A4();
        v13 = v12;

        v15 = sub_251AC8C58(v11, v13);
        v16 = v4[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_22;
        }

        v19 = v14;
        if (v4[3] < v18)
        {
          sub_251ACCA04(v18, 1);
          v4 = v36;
          v20 = sub_251AC8C58(v11, v13);
          if ((v19 & 1) != (v21 & 1))
          {
            result = sub_251C71A14();
            __break(1u);
            return result;
          }

          v15 = v20;
        }

        if (v19)
        {

          v6 = (v4[7] + 8 * v15);
          MEMORY[0x25308CEE0](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_251C71174();
          }

          sub_251C71194();
        }

        else
        {
          sub_251A82418();
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_251C74560;
          *(v22 + 32) = v9;
          v4[(v15 >> 6) + 8] |= 1 << v15;
          v23 = (v4[6] + 16 * v15);
          *v23 = v11;
          v23[1] = v13;
          *(v4[7] + 8 * v15) = v22;
          v24 = v4[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_23;
          }

          v4[2] = v26;
        }

        ++v3;
        if (v35 == v33)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

void sub_251C64E90()
{
  if (!qword_27F47D030)
  {
    sub_251C70014();
    sub_251AA8E98(255, &qword_27F4796F8, &qword_27F479700, 0x277CCD650);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47D030);
    }
  }
}

uint64_t sub_251C64F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C648F0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251C64FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C65030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C65098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C650F8()
{
  v1 = type metadata accessor for PBBlobDeleteResult(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  while (v9 < *(v7 + 16))
  {
    sub_251C65224(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9, v6);
    v10 = *(v6 + 4);
    v11 = v6[40];
    result = sub_251C65288(v6);
    if (v11 == 1)
    {
      if (v10 >= 4)
      {
        return 1;
      }
    }

    else if (v10 == 5)
    {
      return 1;
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251C65224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBBlobDeleteResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C65288(uint64_t a1)
{
  v2 = type metadata accessor for PBBlobDeleteResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C652E4@<X0>(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v65 = a3;
  v63 = a2;
  v71 = a4;
  v5 = sub_251C70074();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2C00();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v8);
  v64 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2D3C();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v11);
  v66 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C66C04(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v59 - v18;
  v20 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v59 - v25;
  v72[0] = *a1;
  v27 = v72[0];
  type metadata accessor for ClinicalSharingSyncContext();

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v16 + 8))(v19, v15);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v20);
  v28 = sub_251C70A94();
  (*(v23 + 8))(v26, v22);
  v29 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v27 + v29, v72);
  v30 = v73;
  v31 = v74;
  __swift_project_boxed_opaque_existential_1(v72, v73);
  (*(v31 + 16))(v30, v31);
  v33 = v32;
  __swift_destroy_boxed_opaque_existential_1(v72);
  if (v33)
  {

    v72[0] = v28;
    *(swift_allocObject() + 16) = v63 & 1;
    v34 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB2CCC();
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v34);
    v35 = v64;
    sub_251C70B54();

    v36 = swift_allocObject();
    v37 = v65;
    *(v36 + 16) = v65;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_251C66A44;
    *(v38 + 24) = v36;
    v39 = v37;
    sub_251C70964();
    sub_251C66DAC(&qword_27F479440, sub_251AB2C00);
    v40 = v66;
    v41 = v68;
    sub_251C70B94();

    (*(v67 + 8))(v35, v41);
    sub_251C66DAC(&qword_27F479450, sub_251AB2D3C);
    v42 = v70;
    v43 = sub_251C70A94();

    result = (*(v69 + 8))(v40, v42);
  }

  else
  {
    v45 = v60;
    v46 = v61;
    v47 = v62;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v48 = sub_251C70764();
    __swift_project_value_buffer(v48, qword_2813E8130);

    v49 = sub_251C70744();
    v50 = sub_251C713C4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v72[0] = v52;
      *v51 = 136315138;
      (*(v46 + 16))(v45, v27 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v47);
      sub_251C66DAC(&qword_27F479418, MEMORY[0x277CC95F0]);
      v53 = sub_251C719A4();
      v54 = v45;
      v56 = v55;
      (*(v46 + 8))(v54, v47);
      v57 = sub_251B10780(v53, v56, v72);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_251A6C000, v49, v50, "No DocRef exists to read. Account: %s. ResourceID is missing", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x25308E2B0](v52, -1, -1);
      MEMORY[0x25308E2B0](v51, -1, -1);
    }

    v72[0] = v28;
    v58 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v58);
    v43 = sub_251C70A94();
  }

  *v71 = v43;
  return result;
}

uint64_t sub_251C65B6C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v37 = a2;
  v7 = sub_251C70074();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v13 = sub_251C70764();
  __swift_project_value_buffer(v13, qword_2813E8130);

  v14 = sub_251C70744();
  v15 = sub_251C713C4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32 = v3;
    v19 = v18;
    v34[0] = v18;
    *v17 = 136315138;
    (*(v8 + 16))(v11, v12 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v7);
    sub_251C66DAC(&qword_27F479418, MEMORY[0x277CC95F0]);
    v20 = sub_251C719A4();
    v21 = v8;
    v23 = v22;
    (*(v21 + 8))(v11, v7);
    v24 = sub_251B10780(v20, v23, v34);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_251A6C000, v14, v15, "Preparing read request. Account: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v25 = v19;
    v4 = v32;
    MEMORY[0x25308E2B0](v25, -1, -1);
    v26 = v17;
    a3 = v33;
    MEMORY[0x25308E2B0](v26, -1, -1);
  }

  v27 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v12 + v27, v34);
  v28 = v35;
  v29 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  sub_251BBBE70(v37 & 1, v28, v29, a3);
  if (!v4)
  {
    sub_251AB2CCC();
    *(a3 + *(v30 + 48)) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_251C65E84(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_251C6F9A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_251AB31B0();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C66A4C();
  v16 = *(v15 - 8);
  v37 = v15;
  v38 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v35 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C66C68(0);
  v20 = *(v19 - 8);
  v39 = v19;
  v40 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v36 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_251C66E04(a1, a2, 3, a3);
  (*(v7 + 16))(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  (*(v7 + 32))(v24 + v23, &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_251AB354C;
  *(v25 + 24) = v24;
  sub_251C66AE8(0, &qword_27F479470, &qword_27F479478, &qword_27F479480, 0x277CCAD28);
  sub_251AB3264(0, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251AB32E4();
  sub_251C70B54();

  sub_251C66DAC(&qword_27F4794B8, sub_251AB31B0);
  v26 = sub_251C70A94();
  (*(v11 + 8))(v14, v10);
  v41 = v26;
  sub_251C66AE8(0, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251C66B64();
  sub_251AB34D4();
  v27 = v35;
  sub_251C70B54();

  sub_251C70964();
  type metadata accessor for ClinicalSharingSyncContext();
  v28 = MEMORY[0x277CBCD88];
  sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
  sub_251C66DAC(&qword_27F47D050, sub_251C66A4C);
  sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v28);
  v30 = v36;
  v29 = v37;
  sub_251C70B94();
  (*(v38 + 8))(v27, v29);
  sub_251C66DAC(&qword_27F47D058, sub_251C66C68);
  v31 = v39;
  v32 = sub_251C70A94();
  (*(v40 + 8))(v30, v31);
  return v32;
}

uint64_t sub_251C6642C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_251C70EE4();
  v11 = [a4 valueForHTTPHeaderField_];

  if (v11)
  {
    v41 = sub_251C70F14();
    v13 = v12;

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v14 = sub_251C70764();
    __swift_project_value_buffer(v14, qword_2813E8130);

    v15 = sub_251C70744();
    v16 = sub_251C713C4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v40 = a1;
      v18 = swift_slowAlloc();
      v46 = v18;
      *v17 = 136315394;
      sub_251C70074();
      sub_251C66DAC(&qword_27F479418, MEMORY[0x277CC95F0]);
      v19 = sub_251C719A4();
      v21 = sub_251B10780(v19, v20, &v46);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *&v42[0] = v41;
      *(&v42[0] + 1) = v13;

      sub_251C719F4();
      v22 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v23 = sub_251C70F74();
      v25 = sub_251B10780(v23, v24, &v46);

      *(v17 + 14) = v25;
      v6 = v5;
      _os_log_impl(&dword_251A6C000, v15, v16, "ETag found while reading DocRef. Account: %s eTag: %s", v17, 0x16u);
      swift_arrayDestroy();
      v26 = v18;
      a1 = v40;
      MEMORY[0x25308E2B0](v26, -1, -1);
      MEMORY[0x25308E2B0](v17, -1, -1);
    }

    v27 = sub_251C6F9F4();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_251C6F9E4();
    sub_251C48AD0();
    sub_251C6F9D4();

    if (v6)
    {
    }

    else
    {
      v44[0] = v42[0];
      v44[1] = v42[1];
      v44[2] = v42[2];
      v45 = v43;
      sub_251B27734(v41, v13);

      sub_251C187AC(a1);
      sub_251C18EEC(v44);
    }
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v30 = sub_251C70764();
    __swift_project_value_buffer(v30, qword_2813E8130);

    v31 = sub_251C70744();
    v32 = sub_251C713D4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v42[0] = v34;
      *v33 = 136315138;
      sub_251C70074();
      sub_251C66DAC(&qword_27F479418, MEMORY[0x277CC95F0]);
      v35 = sub_251C719A4();
      v37 = sub_251B10780(v35, v36, v42);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_251A6C000, v31, v32, "No eTag found while reading DocRef. Account: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x25308E2B0](v34, -1, -1);
      MEMORY[0x25308E2B0](v33, -1, -1);
    }

    sub_251B26550();
    swift_allocError();
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
    *v38 = 0;
    *(v38 + 24) = 3;
    swift_willThrow();
  }

  return a5;
}

uint64_t sub_251C66974@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  sub_251C66B64();
  result = sub_251C6642C(a2 + *(v8 + 48), v4, v5, v6, v7);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_251C669E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_251C66B64();
  result = sub_251B27990(a1 + *(v5 + 48));
  *a2 = result;
  return result;
}

void sub_251C66A4C()
{
  if (!qword_27F47D038)
  {
    sub_251C66AE8(255, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
    sub_251C66B64();
    sub_251AB34D4();
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47D038);
    }
  }
}

void sub_251C66AE8(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_251AB3264(255, a3, a4, a5);
    sub_251A82284();
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251C66B64()
{
  if (!qword_27F47D040)
  {
    type metadata accessor for ClinicalSharingSyncContext();
    sub_251C66C04(255, &qword_27F47A170, type metadata accessor for PBLookupInfo, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47D040);
    }
  }
}

void sub_251C66C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251C66CA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    v9 = MEMORY[0x277CBCD88];
    sub_251AFD990(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    a3(255);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v9);
    sub_251C66DAC(a4, a5);
    v10 = sub_251C708D4();
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_251C66DAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251C66E04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = a4;
  v54 = a3;
  v59 = a2;
  v6 = sub_251C6F9A4();
  v7 = *(v6 - 8);
  v49 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C712C4();
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v60 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C67574();
  v15 = *(v14 - 8);
  v55 = v14;
  v56 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C67698();
  v19 = *(v18 - 8);
  v57 = v18;
  v58 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v53 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = swift_allocBox();
  v23 = v22;
  v24 = *(v7 + 16);
  v48 = a1;
  v24(v22, a1, v6);
  v25 = a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken;
  v26 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken);
  v27 = *(v25 + 8);
  v63 = 0x20726572616542;
  v64 = 0xE700000000000000;

  MEMORY[0x25308CDA0](v26, v27);

  sub_251C6F994();

  v24(v9, v23, v6);
  sub_251C712D4();
  (*(v7 + 8))(v9, v6);
  v24(v9, a1, v6);
  v28 = *(v7 + 80);
  v29 = (v28 + 16) & ~v28;
  v47 = v49 + 7;
  v30 = &v49[v29 + 7] & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v49 = *(v7 + 32);
  (v49)(v31 + v29, v9, v6);
  *(v31 + v30) = v59;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_251C67D10;
  *(v32 + 24) = v31;
  sub_251C67620();
  sub_251C68A98(&qword_27F479BE0, MEMORY[0x277CC9D10]);

  v33 = v51;
  v34 = v60;
  sub_251C70B54();

  (*(v52 + 8))(v34, v33);
  v24(v9, v48, v6);
  v35 = (v28 + 24) & ~v28;
  v36 = &v47[v35] & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = v54;
  (v49)(v38 + v35, v9, v6);
  *(v38 + v36) = v59;
  v39 = v61;
  *(v38 + v37) = v61;
  *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v50;
  sub_251C67784();
  sub_251C68A98(&qword_27F47D070, sub_251C67574);
  sub_251C68A98(&qword_27F479498, sub_251C67784);

  v40 = v39;

  v41 = v53;
  v42 = v55;
  v43 = v62;
  sub_251C70BA4();

  (*(v56 + 8))(v43, v42);
  sub_251C68A98(&qword_27F47D078, sub_251C67698);
  v44 = v57;
  v45 = sub_251C70A94();
  (*(v58 + 8))(v41, v44);

  return v45;
}

uint64_t sub_251C67474(uint64_t a1, unint64_t a2, void *a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6 && (v7 = a3, [v6 statusCode] - 200 < 0x64))
  {
    sub_251A858C4(a1, a2);
  }

  else
  {
    v8 = sub_251C6F904();
    v10 = v9;
    sub_251B26550();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    *(v11 + 16) = v6;
    *(v11 + 24) = 1;
    swift_willThrow();
  }

  return a1;
}

void sub_251C67574()
{
  if (!qword_27F47D060)
  {
    sub_251C712C4();
    sub_251C67620();
    sub_251C68A98(&qword_27F479BE0, MEMORY[0x277CC9D10]);
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47D060);
    }
  }
}

void sub_251C67620()
{
  if (!qword_27F479478)
  {
    sub_251ADB644();
    type metadata accessor for ClinicalSharingSyncContext();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F479478);
    }
  }
}

void sub_251C67698()
{
  if (!qword_27F47D068)
  {
    sub_251C67574();
    sub_251C67784();
    sub_251C68A98(&qword_27F47D070, sub_251C67574);
    sub_251C68A98(&qword_27F479498, sub_251C67784);
    v0 = sub_251C70914();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47D068);
    }
  }
}

void sub_251C67784()
{
  if (!qword_27F479470)
  {
    sub_251C67620();
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479470);
    }
  }
}

uint64_t sub_251C677F4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v53 = a1;
  v54 = a2;
  v7 = sub_251C6F9A4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v52 = &v48[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v48[-v15];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v51 = a3;
    if ([v18 statusCode] == 401)
    {
      v19 = sub_251C70EE4();
      v20 = [v18 valueForHTTPHeaderField_];

      if (v20)
      {
        sub_251C70F14();
        v50 = a4;

        v21 = sub_251C71064();
        a4 = v50;

        if (v21)
        {
          v22 = 0;
LABEL_8:
          v23 = sub_251C6F904();
          v25 = v24;
          sub_251B26550();
          swift_allocError();
          *v26 = v23;
          *(v26 + 8) = v25;
          *(v26 + 16) = 0;
          *(v26 + 24) = v22;
          swift_willThrow();

          return v22;
        }
      }
    }

    if ([v18 statusCode] == 409)
    {
      v22 = 2;
      goto LABEL_8;
    }
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v27 = sub_251C70764();
  __swift_project_value_buffer(v27, qword_2813E8130);
  v28 = v8[2];
  v28(v16, a4, v7);
  v29 = a3;
  v30 = sub_251C70744();
  v31 = sub_251C713C4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v49 = v31;
    v33 = v32;
    v50 = swift_slowAlloc();
    v56 = v50;
    *v33 = 136315394;
    v51 = v29;
    v34 = v52;
    v28(v52, v16, v7);
    v28(v12, v34, v7);
    sub_251C719F4();
    v35 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v36 = sub_251C70F74();
    v38 = v37;
    v39 = v8[1];
    v40 = v34;
    v29 = v51;
    v39(v40, v7);
    v39(v16, v7);
    v41 = sub_251B10780(v36, v38, &v56);

    *(v33 + 4) = v41;
    *(v33 + 12) = 2080;
    v42 = HKSensitiveLogItem();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v43 = sub_251C70F74();
    v45 = sub_251B10780(v43, v44, &v56);

    *(v33 + 14) = v45;
    _os_log_impl(&dword_251A6C000, v30, v49, "HTTPURLResponse received. Request: %s. Response: %s", v33, 0x16u);
    v46 = v50;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v46, -1, -1);
    MEMORY[0x25308E2B0](v33, -1, -1);
  }

  else
  {

    (v8[1])(v16, v7);
  }

  v29;
  v22 = v53;
  sub_251A858C4(v53, v54);

  return v22;
}

uint64_t sub_251C67D10(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(sub_251C6F9A4() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_251C677F4(a1, a2, a3, v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_251C67DC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1, a1[1], a1[2]);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
  }

  return result;
}

void sub_251C67E04(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v82 = a5;
  v83 = a6;
  v81 = a4;
  sub_251C687DC();
  v12 = v11;
  v84 = *(v11 - 8);
  v13 = *(v84 + 64);
  MEMORY[0x28223BE20](v11);
  v80 = &v75[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_251C6F9A4();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v75[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18);
  v86 = &v75[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v87 = &v75[-v24];
  MEMORY[0x28223BE20](v23);
  v26 = &v75[-v25];
  v27 = *a1;
  v95 = v27;
  v28 = v27;
  v85 = sub_251A82284();
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  if (v94)
  {
    sub_251AB2F88(v91, v92, v93, v94);
LABEL_4:

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v29 = sub_251C70764();
    __swift_project_value_buffer(v29, qword_2813E8130);
    v30 = v16[2];
    v30(v20, a3, v15);
    v31 = v27;
    v32 = sub_251C70744();
    v33 = sub_251C713C4();

    v88 = v32;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v91 = v84;
      *v34 = 136315394;
      v35 = v87;
      v30(v87, v20, v15);
      LODWORD(v83) = v33;
      v30(v86, v35, v15);
      sub_251C719F4();
      v36 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v37 = sub_251C70F74();
      v39 = v38;
      v40 = v16[1];
      v40(v35, v15);
      v40(v20, v15);
      v41 = sub_251B10780(v37, v39, &v91);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2080;
      v90 = v27;
      v42 = v27;
      sub_251C719F4();
      v43 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v44 = sub_251C70F74();
      v46 = sub_251B10780(v44, v45, &v91);

      *(v34 + 14) = v46;
      v47 = v88;
      _os_log_impl(&dword_251A6C000, v88, v83, "Error received for request. Request: %s. Error: %s", v34, 0x16u);
      v48 = v84;
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v48, -1, -1);
      MEMORY[0x25308E2B0](v34, -1, -1);
    }

    else
    {

      (v16[1])(v20, v15);
    }

    swift_willThrow();
    v49 = v27;
    return;
  }

  sub_251AB2F88(v91, v92, v93, 0);
  if (a2 < 1)
  {
    swift_willThrow();
    v64 = v95;
    v65 = v27;
  }

  else
  {
    v79 = v12;
    v85 = a7;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v50 = sub_251C70764();
    __swift_project_value_buffer(v50, qword_2813E8130);
    v51 = v16[2];
    v51(v26, a3, v15);
    v52 = sub_251C70744();
    v53 = sub_251C713C4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v89 = v78;
      *v54 = 134218242;
      *(v54 + 4) = a2;
      *(v54 + 12) = 2080;
      v77 = v52;
      v55 = v87;
      v51(v87, v26, v15);
      v76 = v53;
      v51(v86, v55, v15);
      sub_251C719F4();
      v56 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v57 = sub_251C70F74();
      v59 = v58;
      v60 = v16[1];
      v60(v55, v15);
      v60(v26, v15);
      v61 = sub_251B10780(v57, v59, &v89);

      *(v54 + 14) = v61;
      v62 = v77;
      _os_log_impl(&dword_251A6C000, v77, v76, "Access denied. Refresh access token and trying again. Retries left: %ld. Request: %s", v54, 0x16u);
      v63 = v78;
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x25308E2B0](v63, -1, -1);
      MEMORY[0x25308E2B0](v54, -1, -1);
    }

    else
    {

      (v16[1])(v26, v15);
    }

    v66 = v81;
    v67 = __swift_project_boxed_opaque_existential_1((v81 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore), *(v81 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore + 24));
    v90 = sub_251AC38B8(v66 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, *v67);
    v68 = swift_allocObject();
    v70 = v82;
    v69 = v83;
    v68[2] = v66;
    v68[3] = v70;
    v68[4] = v69;
    v68[5] = a2;

    v71 = v70;

    sub_251C70964();
    sub_251C688C4();
    sub_251C67620();
    sub_251C67784();
    sub_251C68A98(&qword_2813E2168, sub_251C688C4);
    sub_251C68A98(&qword_27F479498, sub_251C67784);
    v72 = v80;
    sub_251C70B94();

    sub_251C68A98(&qword_27F47D088, sub_251C687DC);
    v73 = v79;
    v74 = sub_251C70A94();
    (*(v84 + 8))(v72, v73);
    *v85 = v74;
  }
}

void sub_251C68718(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_251C6F9A4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_251C67E04(a1, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), a2);
}

void sub_251C687DC()
{
  if (!qword_27F47D080)
  {
    sub_251C67784();
    sub_251C688C4();
    sub_251C68A98(&qword_27F479498, sub_251C67784);
    sub_251C68A98(&qword_2813E2168, sub_251C688C4);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47D080);
    }
  }
}

void sub_251C688C4()
{
  if (!qword_2813E2160)
  {
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2160);
    }
  }
}

uint64_t sub_251C6892C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = sub_251C6F9A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  v17 = swift_projectBox();
  sub_251B27540(v16, v15);
  swift_beginAccess();
  result = (*(v11 + 16))(v14, v17, v10);
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    v19 = sub_251C66E04(v14, a2, a4 - 1, a3);
    result = (*(v11 + 8))(v14, v10);
    *a5 = v19;
  }

  return result;
}

uint64_t sub_251C68A98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WebRequestPerformer.__allocating_init(sessionConfiguration:attribution:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    sub_251BB4D50();
    v4 = sub_251B37FB0();
  }

  v5 = objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate());
  v6 = a1;
  v7 = [v5 init];
  v8 = swift_allocObject();
  v9 = [objc_opt_self() sessionWithConfiguration:v4 delegate:v7 delegateQueue:0];

  *(v8 + 16) = v9;
  *(v8 + 24) = a2;
  return v8;
}

uint64_t _s19HealthRecordsDaemon19WebRequestPerformerC19performFileDownload3for15timeoutInterval11cachePolicy10Foundation3URLVAA0dE0_p_SdSgSo017NSURLRequestCacheN0VSgtYaAA0dE13ResponseErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 48) = v7;
  *(v8 + 56) = a7;
  *(v8 + 97) = a6;
  *(v8 + 96) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*(type metadata accessor for WebRequestResponseError.ErrorType(0) - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C68C70, 0, 0);
}

void sub_251C68C70()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 97);
  v3 = *(v0 + 96);

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_251C68D54;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v11 = *(v0 + 72);

  JUMPOUT(0x251C6A968);
}

uint64_t sub_251C68D54(void *a1)
{
  v4 = *(*v2 + 88);
  v7 = *v2;

  if (v1)
  {
    v5 = sub_251C68EE4;
  }

  else
  {

    v5 = sub_251C68E6C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251C68E6C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_251C68EE4()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[3];
  sub_251C17EA8(v0[9], v1, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C17EA8(v1, v2, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4(v4, v3);
  v5 = type metadata accessor for WebRequestResponseError(0);
  sub_251C6CA78(v2, v3 + *(v5 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C6C980(&qword_27F478E50, type metadata accessor for WebRequestResponseError);
  swift_willThrowTypedImpl();
  sub_251C6CAE0(v2, type metadata accessor for WebRequestResponseError.ErrorType);

  v6 = v0[1];

  return v6();
}

uint64_t _s19HealthRecordsDaemon19WebRequestPerformerC4data3for15timeoutInterval11cachePolicyAA0dE8ResponseVAA0dE0_p_SdSgSo017NSURLRequestCacheL0VSgtYaAA0deM5ErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 88) = v7;
  *(v8 + 96) = a7;
  *(v8 + 137) = a6;
  *(v8 + 136) = a4;
  *(v8 + 72) = a3;
  *(v8 + 80) = a5;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v9 = *(*(type metadata accessor for WebRequestResponseError.ErrorType(0) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C690F0, 0, 0);
}

void sub_251C690F0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 137);
  v3 = *(v0 + 136);

  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_251C691D4;
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 112);

  JUMPOUT(0x251C695F4);
}

uint64_t sub_251C691D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[16];
  v8 = *v2;

  if (v1)
  {
    v6 = sub_251C693EC;
  }

  else
  {
    v6 = sub_251C692EC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_251C692EC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v3)
    {
      if ((v1 & 0xFF000000000000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v4 = v2;
    v5 = v2 >> 32;
LABEL_8:
    if (v4 != v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v3 == 2)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    goto LABEL_8;
  }

LABEL_9:
  sub_251A83028(v0[5], v0[6]);
  v2 = 0;
  v1 = 0xF000000000000000;
LABEL_10:
  v6 = v0[3];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v10 = v0[7];
  sub_251A823B4(v0[8], v10);
  v10[5] = v2;
  v10[6] = v1;
  v10[7] = v6;

  v11 = v0[1];

  return v11();
}

uint64_t sub_251C693EC()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[8];
  sub_251C17EA8(v0[14], v1, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C17EA8(v1, v2, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4(v4, v3);
  v5 = type metadata accessor for WebRequestResponseError(0);
  sub_251C6CA78(v2, v3 + *(v5 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C6C980(&qword_27F478E50, type metadata accessor for WebRequestResponseError);
  swift_willThrowTypedImpl();
  sub_251C6CAE0(v2, type metadata accessor for WebRequestResponseError.ErrorType);

  v6 = v0[1];

  return v6();
}

uint64_t WebRequestPerformer.copy(with:)(uint64_t a1)
{
  v3 = *v1;
  v4 = [v1[2] configuration];
  swift_getObjectType();
  swift_unknownObjectRetain();
  v5 = sub_251C6C5E0(v4, a1, 1);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_251C695F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = a8;
  *(v8 + 200) = v21;
  *(v8 + 176) = a5;
  *(v8 + 184) = a7;
  *(v8 + 393) = a6;
  *(v8 + 392) = a4;
  *(v8 + 160) = a2;
  *(v8 + 168) = a3;
  *(v8 + 152) = a1;
  sub_251C6CA24(0, &qword_27F4798C8, type metadata accessor for WebRequestResponseError.ErrorType);
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v11 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  *(v8 + 216) = v11;
  v12 = *(v11 - 8);
  *(v8 + 224) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  sub_251C6CA24(0, &qword_2813E7520, MEMORY[0x277CC9260]);
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v16 = sub_251C6F9A4();
  *(v8 + 264) = v16;
  v17 = *(v16 - 8);
  *(v8 + 272) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C69804, 0, 0);
}

uint64_t sub_251C69804()
{
  v55 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 393);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 392);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = v6[3];
  v9 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v8);
  WebRequest.urlRequest(attribution:timeoutInterval:cachePolicy:)(*(v4 + 24), v7, v5 & 1, v3, v2 & 1, v8, v9);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 304);
  v11 = *(v0 + 312);
  v12 = *(v0 + 296);
  v13 = *(v0 + 264);
  v14 = *(v0 + 272);
  v15 = sub_251C70764();
  *(v0 + 320) = __swift_project_value_buffer(v15, qword_2813E8130);
  v16 = *(v14 + 16);
  *(v0 + 328) = v16;
  *(v0 + 336) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v10, v11, v13);
  v16(v12, v11, v13);
  v17 = sub_251C70744();
  v18 = sub_251C713C4();
  v19 = os_log_type_enabled(v17, v18);
  v21 = *(v0 + 296);
  v20 = *(v0 + 304);
  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  if (v19)
  {
    v52 = v18;
    log = v17;
    v24 = *(v0 + 256);
    v25 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v54 = v51;
    *v25 = 136315394;
    v26 = sub_251C6F904();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xD000000000000010;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0x8000000251C92BF0;
    }

    v30 = *(v22 + 8);
    v30(v20, v23);
    v31 = sub_251B10780(v28, v29, &v54);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    sub_251C6F964();
    v32 = sub_251C6FE64();
    v33 = *(v32 - 8);
    v34 = (*(v33 + 48))(v24, 1, v32);
    v35 = *(v0 + 256);
    if (v34 == 1)
    {
      sub_251C6C9C8(*(v0 + 256), &qword_2813E7520, MEMORY[0x277CC9260]);
      v36 = 0;
      v37 = 0;
    }

    else
    {
      v36 = sub_251C6FDA4();
      v37 = v38;
      (*(v33 + 8))(v35, v32);
    }

    v39 = *(v0 + 296);
    v40 = *(v0 + 264);
    *(v0 + 120) = v36;
    *(v0 + 128) = v37;
    sub_251AD56B0();
    sub_251C719F4();
    v41 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v42 = sub_251C70F74();
    v44 = v43;
    v30(v39, v40);
    v45 = sub_251B10780(v42, v44, &v54);

    *(v25 + 14) = v45;
    _os_log_impl(&dword_251A6C000, log, v52, "WebRequestPerformer: making request: %s %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v51, -1, -1);
    MEMORY[0x25308E2B0](v25, -1, -1);
  }

  else
  {

    v30 = *(v22 + 8);
    v30(v21, v23);
    v30(v20, v23);
  }

  *(v0 + 344) = v30;
  v46 = *(*(v0 + 192) + 16);
  v47 = *(MEMORY[0x277CC9D18] + 4);
  v48 = swift_task_alloc();
  *(v0 + 352) = v48;
  *v48 = v0;
  v48[1] = sub_251C69C78;
  v49 = *(v0 + 312);

  return MEMORY[0x28211ECF8](v49, 0);
}

uint64_t sub_251C69C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 352);
  v9 = *v4;
  v5[45] = a1;
  v5[46] = a2;
  v5[47] = a3;
  v5[48] = v3;

  if (v3)
  {
    v7 = sub_251C6A654;
  }

  else
  {
    v7 = sub_251C69D90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_251C69D90()
{
  v116 = v0;
  v1 = *(v0 + 376);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v8 = *(v0 + 368);
    v15 = *(v0 + 376);
    v10 = *(v0 + 360);
    v16 = *(v0 + 240);
    v17 = *(v0 + 216);
    *v16 = v15;
    swift_storeEnumTagMultiPayload();
    sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType);
    v18 = v15;
    swift_willThrowTypedImpl();
    v13 = swift_allocError();
    sub_251C17EA8(v16, v19, type metadata accessor for WebRequestResponseError.ErrorType);

    goto LABEL_5;
  }

  v3 = v2;
  v4 = *(v0 + 384);
  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v7 = *(v0 + 232);
  sub_251A858C4(v6, v5);
  sub_251C6BD18(v6, v5, v7);
  if (v4)
  {
    v8 = *(v0 + 368);
    v9 = *(v0 + 376);
    v10 = *(v0 + 360);
    v11 = *(v0 + 232);
    v12 = *(v0 + 216);
    sub_251A83028(v10, v8);
    sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType);
    v13 = swift_allocError();
    sub_251C17EA8(v11, v14, type metadata accessor for WebRequestResponseError.ErrorType);

LABEL_5:
    sub_251A83028(v10, v8);
    v20 = *(v0 + 320);
    v21 = *(v0 + 272) + 8;
    (*(v0 + 344))(*(v0 + 312), *(v0 + 264));
    v22 = v13;
    v23 = sub_251C70744();
    v24 = sub_251C713D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v115[0] = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = *(v0 + 80);
      v28 = *(v0 + 96);
      v29 = sub_251BBFFA4(*(v0 + 88));
      v31 = sub_251B10780(v29, v30, v115);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_251A6C000, v23, v24, "WebRequestPerformer: error response: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x25308E2B0](v26, -1, -1);
      MEMORY[0x25308E2B0](v25, -1, -1);
    }

    v33 = *(v0 + 208);
    v32 = *(v0 + 216);
    *(v0 + 136) = v13;
    v34 = v13;
    v35 = v13;
    sub_251A82284();
    v36 = swift_dynamicCast();
    v37 = *(v0 + 216);
    v38 = *(v0 + 224);
    v39 = *(v0 + 200);
    v40 = *(v0 + 208);
    if (v36)
    {

      (*(v38 + 56))(v40, 0, 1, v37);
      sub_251C17EA8(v40, v39, type metadata accessor for WebRequestResponseError.ErrorType);
    }

    else
    {
      (*(v38 + 56))(*(v0 + 208), 1, 1, *(v0 + 216));
      *v39 = v13;
      swift_storeEnumTagMultiPayload();
    }

    v42 = *(v0 + 304);
    v41 = *(v0 + 312);
    v44 = *(v0 + 288);
    v43 = *(v0 + 296);
    v45 = *(v0 + 280);
    v107 = *(v0 + 256);
    v108 = *(v0 + 248);
    v110 = *(v0 + 240);
    v112 = *(v0 + 232);
    v46 = *(v0 + 216);
    v113 = *(v0 + 208);
    v47 = *(v0 + 192);
    v48 = *(v0 + 200);
    sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType);
    swift_willThrowTypedImpl();

    v49 = *(v0 + 8);

    return v49();
  }

  v114 = v3;
  v52 = *(v0 + 328);
  v51 = *(v0 + 336);
  v54 = *(v0 + 312);
  v53 = *(v0 + 320);
  v56 = *(v0 + 280);
  v55 = *(v0 + 288);
  v57 = *(v0 + 264);
  sub_251A83028(*(v0 + 360), *(v0 + 368));
  v52(v55, v54, v57);
  v52(v56, v54, v57);
  v58 = sub_251C70744();
  v59 = sub_251C713C4();
  v60 = os_log_type_enabled(v58, v59);
  v61 = *(v0 + 344);
  if (v60)
  {
    v111 = v59;
    v62 = *(v0 + 288);
    v105 = *(v0 + 280);
    v64 = *(v0 + 264);
    v63 = *(v0 + 272);
    v65 = *(v0 + 248);
    v66 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v115[0] = v109;
    *v66 = 136315394;
    v67 = sub_251C6F904();
    if (v68)
    {
      v69 = v67;
    }

    else
    {
      v69 = 0xD000000000000010;
    }

    if (v68)
    {
      v70 = v68;
    }

    else
    {
      v70 = 0x8000000251C92BF0;
    }

    v61(v62, v64);
    v71 = sub_251B10780(v69, v70, v115);

    *(v66 + 4) = v71;
    *(v66 + 12) = 2080;
    sub_251C6F964();
    v72 = sub_251C6FE64();
    v73 = *(v72 - 8);
    v74 = (*(v73 + 48))(v65, 1, v72);
    v75 = *(v0 + 248);
    if (v74 == 1)
    {
      sub_251C6C9C8(*(v0 + 248), &qword_2813E7520, MEMORY[0x277CC9260]);
      v76 = 0;
      v77 = 0;
    }

    else
    {
      v76 = sub_251C6FDA4();
      v77 = v84;
      (*(v73 + 8))(v75, v72);
    }

    v85 = *(v0 + 344);
    v86 = *(v0 + 280);
    v87 = *(v0 + 264);
    v104 = *(v0 + 312);
    v106 = *(v0 + 192);
    *(v0 + 104) = v76;
    *(v0 + 112) = v77;
    sub_251AD56B0();
    sub_251C719F4();
    v88 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v89 = sub_251C70F74();
    v91 = v90;
    v85(v86, v87);
    v92 = sub_251B10780(v89, v91, v115);

    *(v66 + 14) = v92;
    _os_log_impl(&dword_251A6C000, v58, v111, "WebRequestPerformer: request succeeded for: %s %s", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v109, -1, -1);
    MEMORY[0x25308E2B0](v66, -1, -1);

    v85(v104, v87);
  }

  else
  {
    v78 = *(v0 + 312);
    v80 = *(v0 + 280);
    v79 = *(v0 + 288);
    v81 = *(v0 + 264);
    v82 = *(v0 + 272);
    v83 = *(v0 + 192);

    v61(v80, v81);
    v61(v79, v81);
    v61(v78, v81);
  }

  v94 = *(v0 + 304);
  v93 = *(v0 + 312);
  v96 = *(v0 + 288);
  v95 = *(v0 + 296);
  v97 = *(v0 + 280);
  v99 = *(v0 + 248);
  v98 = *(v0 + 256);
  v101 = *(v0 + 232);
  v100 = *(v0 + 240);
  v102 = *(v0 + 208);
  **(v0 + 152) = *(v0 + 360);

  v103 = *(v0 + 8);

  return v103(v114);
}

uint64_t sub_251C6A654()
{
  v39 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 320);
  v3 = *(v0 + 272) + 8;
  (*(v0 + 344))(*(v0 + 312), *(v0 + 264));
  v4 = v1;
  v5 = sub_251C70744();
  v6 = sub_251C713D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 80);
    v10 = *(v0 + 96);
    v11 = sub_251BBFFA4(*(v0 + 88));
    v13 = sub_251B10780(v11, v12, &v38);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_251A6C000, v5, v6, "WebRequestPerformer: error response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }

  v15 = *(v0 + 208);
  v14 = *(v0 + 216);
  *(v0 + 136) = v1;
  v16 = v1;
  v17 = v1;
  sub_251A82284();
  v18 = swift_dynamicCast();
  v19 = *(v0 + 216);
  v20 = *(v0 + 224);
  v21 = *(v0 + 200);
  v22 = *(v0 + 208);
  if (v18)
  {

    (*(v20 + 56))(v22, 0, 1, v19);
    sub_251C17EA8(v22, v21, type metadata accessor for WebRequestResponseError.ErrorType);
  }

  else
  {
    (*(v20 + 56))(*(v0 + 208), 1, 1, *(v0 + 216));
    *v21 = v1;
    swift_storeEnumTagMultiPayload();
  }

  v24 = *(v0 + 304);
  v23 = *(v0 + 312);
  v26 = *(v0 + 288);
  v25 = *(v0 + 296);
  v27 = *(v0 + 280);
  v33 = *(v0 + 256);
  v34 = *(v0 + 248);
  v35 = *(v0 + 240);
  v36 = *(v0 + 232);
  v28 = *(v0 + 216);
  v37 = *(v0 + 208);
  v29 = *(v0 + 192);
  v30 = *(v0 + 200);
  sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType);
  swift_willThrowTypedImpl();

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_251C6A968(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = a8;
  *(v8 + 200) = v24;
  *(v8 + 176) = a5;
  *(v8 + 184) = a7;
  *(v8 + 401) = a6;
  *(v8 + 400) = a4;
  *(v8 + 160) = a2;
  *(v8 + 168) = a3;
  *(v8 + 152) = a1;
  sub_251C6CA24(0, &qword_27F4798C8, type metadata accessor for WebRequestResponseError.ErrorType);
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v11 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  *(v8 + 216) = v11;
  v12 = *(v11 - 8);
  *(v8 + 224) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v14 = sub_251C6FE64();
  *(v8 + 248) = v14;
  v15 = *(v14 - 8);
  *(v8 + 256) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  sub_251C6CA24(0, &qword_2813E7520, MEMORY[0x277CC9260]);
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v19 = sub_251C6F9A4();
  *(v8 + 288) = v19;
  v20 = *(v19 - 8);
  *(v8 + 296) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C6ABD4, 0, 0);
}

uint64_t sub_251C6ABD4()
{
  v59 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 401);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 400);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = v6[3];
  v9 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v8);
  WebRequest.urlRequest(attribution:timeoutInterval:cachePolicy:)(*(v4 + 24), v7, v5 & 1, v3, v2 & 1, v8, v9);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 328);
  v11 = *(v0 + 336);
  v12 = *(v0 + 320);
  v13 = *(v0 + 288);
  v14 = *(v0 + 296);
  v15 = sub_251C70764();
  *(v0 + 344) = __swift_project_value_buffer(v15, qword_2813E8130);
  v16 = *(v14 + 16);
  *(v0 + 352) = v16;
  *(v0 + 360) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v10, v11, v13);
  v16(v12, v11, v13);
  v17 = sub_251C70744();
  v18 = sub_251C713C4();
  v19 = os_log_type_enabled(v17, v18);
  v21 = *(v0 + 320);
  v20 = *(v0 + 328);
  v23 = *(v0 + 288);
  v22 = *(v0 + 296);
  if (v19)
  {
    v56 = v18;
    log = v17;
    v24 = *(v0 + 256);
    v53 = *(v0 + 280);
    v54 = *(v0 + 248);
    v25 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58 = v55;
    *v25 = 136315394;
    v26 = sub_251C6F904();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xD000000000000010;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0x8000000251C92BF0;
    }

    v30 = *(v22 + 8);
    v30(v20, v23);
    v31 = sub_251B10780(v28, v29, &v58);
    v32 = v25;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    sub_251C6F964();
    v33 = (*(v24 + 48))(v53, 1, v54);
    v34 = *(v0 + 280);
    if (v33 == 1)
    {
      sub_251C6C9C8(*(v0 + 280), &qword_2813E7520, MEMORY[0x277CC9260]);
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v38 = *(v0 + 248);
      v37 = *(v0 + 256);
      v35 = sub_251C6FDA4();
      v36 = v39;
      (*(v37 + 8))(v34, v38);
    }

    v40 = *(v0 + 320);
    v41 = *(v0 + 288);
    *(v0 + 120) = v35;
    *(v0 + 128) = v36;
    sub_251AD56B0();
    sub_251C719F4();
    v42 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v43 = sub_251C70F74();
    v45 = v44;
    v30(v40, v41);
    v46 = sub_251B10780(v43, v45, &v58);

    *(v32 + 14) = v46;
    _os_log_impl(&dword_251A6C000, log, v56, "WebRequestPerformer: making request: %s %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v55, -1, -1);
    MEMORY[0x25308E2B0](v32, -1, -1);
  }

  else
  {

    v30 = *(v22 + 8);
    v30(v21, v23);
    v30(v20, v23);
  }

  *(v0 + 368) = v30;
  v47 = *(*(v0 + 192) + 16);
  v48 = *(MEMORY[0x277CC9D48] + 4);
  v49 = swift_task_alloc();
  *(v0 + 376) = v49;
  *v49 = v0;
  v49[1] = sub_251C6B028;
  v50 = *(v0 + 336);
  v51 = *(v0 + 264);

  return MEMORY[0x28211ED28](v51, v50, 0);
}

uint64_t sub_251C6B028(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v7 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v5 = sub_251C6B9F8;
  }

  else
  {
    v5 = sub_251C6B13C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251C6B13C()
{
  v117 = v0;
  v1 = *(v0 + 384);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v13 = *(v0 + 384);
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v17 = *(v0 + 240);
    v16 = *(v0 + 248);
    v18 = *(v0 + 216);
    *v17 = v13;
    swift_storeEnumTagMultiPayload();
    sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType);
    v19 = v13;
    swift_willThrowTypedImpl();
    v11 = swift_allocError();
    sub_251C17EA8(v17, v20, type metadata accessor for WebRequestResponseError.ErrorType);

    (*(v15 + 8))(v14, v16);
    goto LABEL_5;
  }

  v3 = v2;
  v4 = *(v0 + 392);
  sub_251C6BD18(0, 0xC000000000000000, *(v0 + 232));
  if (v4)
  {
    v5 = *(v0 + 384);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    v9 = *(v0 + 232);
    v10 = *(v0 + 216);
    sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType);
    v11 = swift_allocError();
    sub_251C17EA8(v9, v12, type metadata accessor for WebRequestResponseError.ErrorType);

    (*(v7 + 8))(v6, v8);
LABEL_5:
    v21 = *(v0 + 344);
    v22 = *(v0 + 296) + 8;
    (*(v0 + 368))(*(v0 + 336), *(v0 + 288));
    v23 = v11;
    v24 = sub_251C70744();
    v25 = sub_251C713D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v116[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = *(v0 + 80);
      v29 = *(v0 + 96);
      v30 = sub_251BBFFA4(*(v0 + 88));
      v32 = sub_251B10780(v30, v31, v116);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_251A6C000, v24, v25, "WebRequestPerformer: error response: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x25308E2B0](v27, -1, -1);
      MEMORY[0x25308E2B0](v26, -1, -1);
    }

    v34 = *(v0 + 208);
    v33 = *(v0 + 216);
    *(v0 + 136) = v11;
    v35 = v11;
    v36 = v11;
    sub_251A82284();
    v37 = swift_dynamicCast();
    v38 = *(v0 + 216);
    v39 = *(v0 + 224);
    v40 = *(v0 + 200);
    v41 = *(v0 + 208);
    if (v37)
    {

      (*(v39 + 56))(v41, 0, 1, v38);
      sub_251C17EA8(v41, v40, type metadata accessor for WebRequestResponseError.ErrorType);
    }

    else
    {
      (*(v39 + 56))(*(v0 + 208), 1, 1, *(v0 + 216));
      *v40 = v11;
      swift_storeEnumTagMultiPayload();
    }

    v43 = *(v0 + 328);
    v42 = *(v0 + 336);
    v44 = *(v0 + 312);
    v45 = *(v0 + 320);
    v46 = *(v0 + 304);
    v100 = *(v0 + 280);
    v102 = *(v0 + 272);
    v105 = *(v0 + 264);
    v108 = *(v0 + 240);
    v47 = *(v0 + 216);
    v111 = *(v0 + 232);
    loga = *(v0 + 208);
    v48 = *(v0 + 192);
    v49 = *(v0 + 200);
    sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType);
    swift_willThrowTypedImpl();

    v50 = *(v0 + 8);

    return v50();
  }

  v53 = *(v0 + 352);
  v52 = *(v0 + 360);
  v54 = *(v0 + 336);
  v55 = *(v0 + 304);
  v56 = *(v0 + 288);
  v53(*(v0 + 312), v54, v56);
  v53(v55, v54, v56);
  v57 = sub_251C70744();
  v58 = sub_251C713C4();
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 368);
  if (v59)
  {
    v112 = v58;
    log = v57;
    v61 = *(v0 + 312);
    v62 = *(v0 + 296);
    v106 = *(v0 + 288);
    v63 = *(v0 + 272);
    v64 = *(v0 + 256);
    v101 = *(v0 + 304);
    v103 = *(v0 + 248);
    v65 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v116[0] = v109;
    *v65 = 136315394;
    v66 = sub_251C6F904();
    if (v67)
    {
      v68 = v66;
    }

    else
    {
      v68 = 0xD000000000000010;
    }

    if (v67)
    {
      v69 = v67;
    }

    else
    {
      v69 = 0x8000000251C92BF0;
    }

    v60(v61, v106);
    v70 = sub_251B10780(v68, v69, v116);

    *(v65 + 4) = v70;
    *(v65 + 12) = 2080;
    sub_251C6F964();
    v71 = (*(v64 + 48))(v63, 1, v103);
    v72 = *(v0 + 272);
    if (v71 == 1)
    {
      sub_251C6C9C8(*(v0 + 272), &qword_2813E7520, MEMORY[0x277CC9260]);
      v73 = 0;
      v74 = 0;
    }

    else
    {
      v81 = *(v0 + 248);
      v80 = *(v0 + 256);
      v73 = sub_251C6FDA4();
      v74 = v82;
      (*(v80 + 8))(v72, v81);
    }

    v83 = *(v0 + 368);
    v104 = *(v0 + 336);
    v84 = *(v0 + 304);
    v85 = *(v0 + 288);
    *(v0 + 104) = v73;
    *(v0 + 112) = v74;
    sub_251AD56B0();
    sub_251C719F4();
    v86 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v87 = sub_251C70F74();
    v89 = v88;
    v83(v84, v85);
    v90 = sub_251B10780(v87, v89, v116);

    *(v65 + 14) = v90;
    _os_log_impl(&dword_251A6C000, log, v112, "WebRequestPerformer: request succeeded for: %s %s", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v109, -1, -1);
    MEMORY[0x25308E2B0](v65, -1, -1);

    v83(v104, v85);
  }

  else
  {
    v75 = *(v0 + 336);
    v77 = *(v0 + 304);
    v76 = *(v0 + 312);
    v79 = *(v0 + 288);
    v78 = *(v0 + 296);

    v60(v77, v79);
    v60(v76, v79);
    v60(v75, v79);
  }

  v92 = *(v0 + 328);
  v91 = *(v0 + 336);
  v94 = *(v0 + 312);
  v93 = *(v0 + 320);
  v95 = *(v0 + 304);
  v96 = *(v0 + 280);
  v107 = *(v0 + 272);
  v110 = *(v0 + 240);
  v97 = *(v0 + 232);
  logb = *(v0 + 208);
  v98 = *(v0 + 192);
  (*(*(v0 + 256) + 32))(*(v0 + 152), *(v0 + 264), *(v0 + 248));

  v99 = *(v0 + 8);

  return v99(v3);
}

uint64_t sub_251C6B9F8()
{
  v40 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 344);
  v3 = *(v0 + 296) + 8;
  (*(v0 + 368))(*(v0 + 336), *(v0 + 288));
  v4 = v1;
  v5 = sub_251C70744();
  v6 = sub_251C713D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v39 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 80);
    v10 = *(v0 + 96);
    v11 = sub_251BBFFA4(*(v0 + 88));
    v13 = sub_251B10780(v11, v12, &v39);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_251A6C000, v5, v6, "WebRequestPerformer: error response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }

  v15 = *(v0 + 208);
  v14 = *(v0 + 216);
  *(v0 + 136) = v1;
  v16 = v1;
  v17 = v1;
  sub_251A82284();
  v18 = swift_dynamicCast();
  v19 = *(v0 + 216);
  v20 = *(v0 + 224);
  v21 = *(v0 + 200);
  v22 = *(v0 + 208);
  if (v18)
  {

    (*(v20 + 56))(v22, 0, 1, v19);
    sub_251C17EA8(v22, v21, type metadata accessor for WebRequestResponseError.ErrorType);
  }

  else
  {
    (*(v20 + 56))(*(v0 + 208), 1, 1, *(v0 + 216));
    *v21 = v1;
    swift_storeEnumTagMultiPayload();
  }

  v24 = *(v0 + 328);
  v23 = *(v0 + 336);
  v25 = *(v0 + 312);
  v26 = *(v0 + 320);
  v27 = *(v0 + 304);
  v33 = *(v0 + 280);
  v34 = *(v0 + 272);
  v35 = *(v0 + 264);
  v36 = *(v0 + 240);
  v28 = *(v0 + 216);
  v37 = *(v0 + 232);
  v38 = *(v0 + 208);
  v29 = *(v0 + 192);
  v30 = *(v0 + 200);
  sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType);
  swift_willThrowTypedImpl();

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_251C6BD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v3 = sub_251C70F64();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_251C6CA24(0, &qword_27F47D090, type metadata accessor for HTTPError);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v38 - v7);
  v9 = type metadata accessor for HTTPError();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  NSHTTPURLResponse.asHTTPError()(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251C6C9C8(v8, &qword_27F47D090, type metadata accessor for HTTPError);
  }

  sub_251C17EA8(v8, v16, type metadata accessor for HTTPError);
  sub_251C70F54();
  v18 = sub_251C70F34();
  v20 = v16;
  if (v19)
  {
    v21 = v18;
    v22 = v19;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v23 = sub_251C70764();
    __swift_project_value_buffer(v23, qword_2813E8130);
    sub_251C6CA78(v16, v14, type metadata accessor for HTTPError);

    v24 = sub_251C70744();
    v25 = sub_251C713D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v20;
      v28 = v27;
      v42 = v27;
      *v26 = 136315394;
      v29 = HTTPError.safelyLoggableDescription.getter();
      v31 = v30;
      sub_251C6CAE0(v14, type metadata accessor for HTTPError);
      v32 = sub_251B10780(v29, v31, &v42);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      v40 = v21;
      v41 = v22;
      sub_251C719F4();
      v33 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v34 = sub_251C70F74();
      v36 = sub_251B10780(v34, v35, &v42);

      *(v26 + 14) = v36;
      _os_log_impl(&dword_251A6C000, v24, v25, "HTTP error: %s data: %s", v26, 0x16u);
      swift_arrayDestroy();
      v37 = v28;
      v20 = v38;
      MEMORY[0x25308E2B0](v37, -1, -1);
      MEMORY[0x25308E2B0](v26, -1, -1);
    }

    else
    {

      sub_251C6CAE0(v14, type metadata accessor for HTTPError);
    }
  }

  sub_251C6CA78(v20, v39, type metadata accessor for HTTPError);
  type metadata accessor for WebRequestResponseError.ErrorType(0);
  swift_storeEnumTagMultiPayload();
  sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType);
  swift_willThrowTypedImpl();
  return sub_251C6CAE0(v20, type metadata accessor for HTTPError);
}

uint64_t WebRequestPerformer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_251C6C24C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  v8[2] = a7;
  v15 = *(*(type metadata accessor for WebRequestResponseError(0) - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v8[3] = v16;
  v17 = *v7;
  v18 = swift_task_alloc();
  v8[4] = v18;
  *v18 = v8;
  v18[1] = sub_251C6CB40;

  return _s19HealthRecordsDaemon19WebRequestPerformerC4data3for15timeoutInterval11cachePolicyAA0dE8ResponseVAA0dE0_p_SdSgSo017NSURLRequestCacheL0VSgtYaAA0deM5ErrorVYKF(a1, a2, a3, a4 & 1, a5, a6 & 1, v16);
}

uint64_t sub_251C6C364(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  v8[2] = a7;
  v15 = *(*(type metadata accessor for WebRequestResponseError(0) - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v8[3] = v16;
  v17 = *v7;
  v18 = swift_task_alloc();
  v8[4] = v18;
  *v18 = v8;
  v18[1] = sub_251C6C47C;

  return _s19HealthRecordsDaemon19WebRequestPerformerC19performFileDownload3for15timeoutInterval11cachePolicy10Foundation3URLVAA0dE0_p_SdSgSo017NSURLRequestCacheN0VSgtYaAA0dE13ResponseErrorVYKF(a1, a2, a3, a4 & 1, a5, a6 & 1, v16);
}

uint64_t sub_251C6C47C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    sub_251C17EA8(*(v2 + 24), *(v2 + 16), type metadata accessor for WebRequestResponseError);
  }

  else
  {
    v6 = *(v2 + 24);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_251C6C5B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = WebRequestPerformer.copy(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_251C6C5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = [objc_opt_self() sessionWithConfiguration:a1 delegate:a2 delegateQueue:0];
  *(v6 + 24) = a3;
  return v6;
}

uint64_t _s19HealthRecordsDaemon20WebRequestPerformingP4data3for15timeoutInterval11cachePolicyAA0dE8ResponseVAA0dE0_p_SdSgSo017NSURLRequestCacheL0VSgtYaAA0deM5ErrorVYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_251B14FE8;

  return (v21)(a1, a2, a3, a4 & 1, a5, a6 & 1, a7, a8, a9);
}

uint64_t _s19HealthRecordsDaemon20WebRequestPerformingP19performFileDownload3for15timeoutInterval11cachePolicy10Foundation3URLVAA0dE0_p_SdSgSo017NSURLRequestCacheN0VSgtYaAA0dE13ResponseErrorVYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 16);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_251AF4F78;

  return (v21)(a1, a2, a3, a4 & 1, a5, a6 & 1, a7, a8, a9);
}

uint64_t sub_251C6C980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251C6C9C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251C6CA24(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251C6CA24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251C6CA78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C6CAE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C6CB44@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1 || (v5 = a2 - a1, a2 == a1))
  {
    v6 = MEMORY[0x277D84F90];
LABEL_7:
    v9 = sub_251C55B4C(v6);
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
    return result;
  }

  result = sub_251C6CBEC(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove((result + 32), a1, v5);
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_251C6CBEC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_251B11094();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_251C6CC54()
{
  v1 = [v0 primaryConcept];
  v2 = [v1 localizedPreferredName];

  if (v2)
  {
    v3 = sub_251C70F14();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }
  }

  result = sub_251C6CD64();
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    result = sub_251C6CF54();
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {

      v12 = [v0 fallbackDisplayString];
      v13 = sub_251C70F14();

      return v13;
    }
  }

  return result;
}

uint64_t sub_251C6CD64()
{
  v1 = [v0 medicalRecordCodings];
  sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
  v2 = sub_251C71154();

  if (v2 >> 62)
  {
LABEL_18:
    v3 = sub_251C717F4();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:

    return 0;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x25308D460](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = [v5 codingSystem];
    v9 = [objc_opt_self() textSystem];
    v10 = v9;
    if (v8)
    {
      break;
    }

LABEL_5:
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_19;
    }
  }

  sub_251A8223C(0, &qword_27F47C6A0, 0x277CCD5D0);
  v11 = sub_251C71534();

  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = [v6 displayString];

  if (v12)
  {
    v13 = sub_251C70F14();

    return v13;
  }

  return 0;
}

uint64_t sub_251C6CF54()
{
  v1 = [v0 medicalRecordCodings];
  sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
  v2 = sub_251C71154();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:

    return 0;
  }

LABEL_19:
  v3 = sub_251C717F4();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x25308D460](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = [v5 displayString];
    if (v8)
    {
      v9 = v8;
      v10 = sub_251C70F14();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        break;
      }
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_20;
    }
  }

  v14 = [v6 displayString];

  if (v14)
  {
    v15 = sub_251C70F14();

    return v15;
  }

  return 0;
}

uint64_t WebRequestError.errorDescription.getter()
{
  v1 = sub_251C6FB44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WebRequestError();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251C6D570(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v21 = *v14;
      v22 = v14[1];
      strcpy(v24, "Invalid URL: ");
      HIWORD(v24[1]) = -4864;
      MEMORY[0x25308CDA0](v21, v22);
    }

    else
    {
      v18 = *v14;
      v19 = v14[1];
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_251C716A4();

      v24[0] = 0xD000000000000015;
      v24[1] = 0x8000000251C92C50;
      MEMORY[0x25308CDA0](v18, v19);
    }

    return v24[0];
  }

  else if (EnumCaseMultiPayload == 2)
  {
    (*(v7 + 32))(v10, v14, v6);
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_251C716A4();

    v24[0] = 0xD000000000000012;
    v24[1] = 0x8000000251C92C30;
    sub_251C6D61C(&qword_27F478E68, MEMORY[0x277CC9260]);
    v20 = sub_251C719A4();
    MEMORY[0x25308CDA0](v20);

    v17 = v24[0];
    (*(v7 + 8))(v10, v6);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    (*(v2 + 32))(v5, v14, v1);
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_251C716A4();

    v24[0] = 0xD000000000000018;
    v24[1] = 0x8000000251C92C10;
    sub_251C6D61C(&qword_27F47D098, MEMORY[0x277CC8958]);
    v16 = sub_251C719A4();
    MEMORY[0x25308CDA0](v16);

    v17 = v24[0];
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    return 0x2065736162206F4ELL;
  }

  return v17;
}

uint64_t type metadata accessor for WebRequestError()
{
  result = qword_27F47D0A0;
  if (!qword_27F47D0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251C6D570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebRequestError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C6D61C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251C6D668()
{
  result = sub_251C6FE64();
  if (v1 <= 0x3F)
  {
    result = sub_251C6FB44();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_251C6D6E8(unint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v40 = sub_251C70074();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v40);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v15 = sub_251C70764();
  __swift_project_value_buffer(v15, qword_2813E8130);

  v16 = sub_251C70744();
  v17 = sub_251C713F4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v18 = 136315394;
    *(v18 + 4) = sub_251B10780(a2, a3, &v42);
    v39 = v18;
    *(v18 + 12) = 2080;
    if (v14 >> 62)
    {
      v19 = sub_251C717F4();
    }

    else
    {
      v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = MEMORY[0x277D84F90];
    if (v19)
    {
      v41 = MEMORY[0x277D84F90];
      sub_251C0B5E4(0, v19 & ~(v19 >> 63), 0);
      if (v19 < 0)
      {
        __break(1u);
        return;
      }

      v34 = v17;
      v35 = v16;
      v36 = a4;
      v37 = a5;
      v21 = 0;
      v20 = v41;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x25308D460](v21, v14);
        }

        else
        {
          v22 = *(v14 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = [v23 identifier];
        sub_251C70054();

        v41 = v20;
        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_251C0B5E4(v25 > 1, v26 + 1, 1);
          v20 = v41;
        }

        ++v21;
        *(v20 + 16) = v26 + 1;
        (*(v10 + 32))(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, v13, v40);
      }

      while (v19 != v21);
      a4 = v36;
      v16 = v35;
      LOBYTE(v17) = v34;
    }

    v27 = MEMORY[0x25308CF10](v20, v40);
    v29 = v28;

    v30 = sub_251B10780(v27, v29, &v42);

    v31 = v39;
    *(v39 + 14) = v30;
    _os_log_impl(&dword_251A6C000, v16, v17, "%s Found accounts %s with SharingToProvider feature", v31, 0x16u);
    v32 = v38;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v32, -1, -1);
    MEMORY[0x25308E2B0](v31, -1, -1);
  }

  if (a4)
  {

    a4(v14);
    sub_251C5D6EC(a4);
  }
}

uint64_t sub_251C6DAA8@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_251AC3C64(v4, *v5);
  *a3 = result;
  return result;
}

uint64_t sub_251C6DAEC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v14[0] = a3;
  sub_251C6E2AC();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v14[1] = sub_251B01218(a2);
  *(swift_allocObject() + 16) = v11;
  sub_251C688C4();
  sub_251AE7634(0);
  sub_251C6E264(&qword_2813E2168, sub_251C688C4);

  sub_251C70AE4();

  sub_251C6E264(&qword_2813E25E0, sub_251C6E2AC);
  v12 = sub_251C70A94();
  result = (*(v7 + 8))(v10, v6);
  *v14[0] = v12;
  return result;
}

uint64_t sub_251C6DCE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v23 = MEMORY[0x277D84F90];
    sub_251C71764();
    for (i = (a1 + 40); ; i += 2)
    {
      v11 = *(i - 1);
      v12 = *i;
      sub_251A823B4(a4, v22);
      v13 = type metadata accessor for ClinicalSharingSyncContext();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = v11;
      v17 = v12;
      v18 = v16;
      v19 = v17;

      sub_251B304E4(v18, v19, v22, a2, a3);
      if (v4)
      {
        break;
      }

      sub_251C71734();
      v20 = *(v23 + 16);
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      if (!--v6)
      {
        return v23;
      }
    }
  }

  return result;
}

uint64_t sub_251C6DE3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251AE52B8();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B066C4();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *a1;
  sub_251C6E358(0, &qword_2813E1EA0, type metadata accessor for ClinicalSharingSyncContext);
  sub_251AE5338();
  sub_251C710D4();
  sub_251A82284();
  sub_251C708E4();
  (*(v6 + 8))(v9, v5);
  sub_251C6E264(&qword_2813E2250, sub_251B066C4);
  v16 = sub_251C70A94();
  result = (*(v12 + 8))(v15, v11);
  *a2 = v16;
  return result;
}

void sub_251C6E060(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v6 = sub_251C70764();
  __swift_project_value_buffer(v6, qword_2813E8130);

  oslog = sub_251C70744();
  v7 = sub_251C713F4();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_251B10780(a2, a3, &v14);
    *(v8 + 12) = 2080;
    sub_251C70074();
    sub_251C6E264(&qword_27F479418, MEMORY[0x277CC95F0]);
    v10 = sub_251C719A4();
    v12 = sub_251B10780(v10, v11, &v14);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_251A6C000, oslog, v7, "%s Fetching multi device details for  %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }
}

uint64_t sub_251C6E264(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251C6E2AC()
{
  if (!qword_2813E25D8)
  {
    sub_251C688C4();
    sub_251AE7634(255);
    sub_251C6E264(&qword_2813E2168, sub_251C688C4);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E25D8);
    }
  }
}

void sub_251C6E358(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C711A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251C6E3AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a2 = *(v2 + 16);
  a2[1] = v3;
  a2[2] = v4;
}

unint64_t sub_251C6E3F8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_251C716A4();

    strcpy(v8, "Feature flag ");
    HIWORD(v8[1]) = -4864;
    MEMORY[0x25308CDA0](a1, a2);
    v6 = 0x20746F6E20736920;
    v5 = 0xEF64656C62616E65;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_251C716A4();

    v8[0] = a1;
    v8[1] = a2;
    v5 = 0x8000000251C92C70;
    v6 = 0xD000000000000010;
LABEL_5:
    MEMORY[0x25308CDA0](v6, v5);
    return v8[0];
  }

  if (a1 | a2)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon0C5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_251C6E570(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_251C6E5B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_251C6E5FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id sub_251C6E624(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = objc_allocWithZone(MEMORY[0x277D10BF0]);
    v4 = sub_251C70EE4();

    v5 = [v3 initWithMachServiceName_];
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x277D10BF0]);
    v4 = sub_251C70EE4();
    v5 = [v6 initWithLabel_];
  }

  v7 = v5;

  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_listener] = v7;
  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_serviceMap] = sub_251C4C61C(MEMORY[0x277D84F90]);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for DaemonXPCConnectionManager();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_251C6E71C()
{
  sub_251C6E9E8();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonXPCConnectionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_251C6E7E8()
{
  v1 = OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_serviceMap;
  swift_beginAccess();
  v21 = v0;
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_12:
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v13 = v12 | (v9 << 6);
      v14 = (*(v2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      sub_251A823B4(*(v2 + 56) + 40 * v13, v22);
      *&v23 = v16;
      *(&v23 + 1) = v15;
      sub_251A7E8D8(v22, &v24);

      v11 = v9;
LABEL_13:
      v27 = v23;
      v28[0] = v24;
      v28[1] = v25;
      v29 = v26;
      if (!*(&v23 + 1))
      {
        break;
      }

      sub_251A7E8D8(v28, &v23);
      v17 = __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
      v18 = *v17;
      v19 = OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener;
      [*(*v17 + OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener) setDelegate_];
      [*(v18 + v19) resume];
      result = __swift_destroy_boxed_opaque_existential_1(&v23);
      v8 = v11;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v20 = *(v21 + OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_listener);
    [v20 setDelegate_];
    return [v20 resume];
  }

  else
  {
LABEL_5:
    if (v6 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        v5 = 0;
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_13;
      }

      v5 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_251C6E9E8()
{
  [*(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_listener) invalidate];
  v1 = OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_serviceMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_12:
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v13 = v12 | (v9 << 6);
      v14 = (*(v2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      sub_251A823B4(*(v2 + 56) + 40 * v13, v20);
      *&v21 = v16;
      *(&v21 + 1) = v15;
      sub_251A7E8D8(v20, &v22);

      v11 = v9;
LABEL_13:
      v25 = v21;
      v26[0] = v22;
      v26[1] = v23;
      v27 = v24;
      if (!*(&v21 + 1))
      {
      }

      sub_251A7E8D8(v26, &v21);
      v17 = __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
      v18 = *v17;
      v19 = OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener;
      [*(*v17 + OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener) setDelegate_];
      [*(v18 + v19) invalidate];
      result = __swift_destroy_boxed_opaque_existential_1(&v21);
      v8 = v11;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v6 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        v5 = 0;
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_13;
      }

      v5 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_251C6ED04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonConnectionServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_251C6EE78(uint64_t a1, id a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  if (a2)
  {
    v12 = a2;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v13 = sub_251C70764();
    __swift_project_value_buffer(v13, qword_2813E8130);
    v14 = a2;

    v15 = a5;
    v16 = sub_251C70744();
    v17 = sub_251C713D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136315650;
      *(v18 + 4) = sub_251B10780(a3, a4, &v32);
      *(v18 + 12) = 2080;
      v20 = *&v15[OBJC_IVAR____TtC19HealthRecordsDaemon22DaemonConnectionServer_client];
      v21 = [v20 description];
      v22 = sub_251C70F14();
      v31 = a1;
      v24 = v23;

      v25 = sub_251B10780(v22, v24, &v32);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2080;
      v26 = a2;
      sub_251A82284();
      v27 = sub_251C70F74();
      v29 = sub_251B10780(v27, v28, &v32);
      a1 = v31;

      *(v18 + 24) = v29;
      _os_log_impl(&dword_251A6C000, v16, v17, "Not returning endpoint for %s to %s: %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v19, -1, -1);
      MEMORY[0x25308E2B0](v18, -1, -1);
    }

    else
    {
    }

    v30 = sub_251C6FD74();
  }

  else
  {
    v30 = 0;
  }

  (*(a6 + 16))(a6, a1, v30);
}

void sub_251C6F118(uint64_t a1, unint64_t a2, char *a3, void *aBlock)
{
  v8 = *&a3[OBJC_IVAR____TtC19HealthRecordsDaemon22DaemonConnectionServer_serviceMap];
  v9 = *(v8 + 16);
  _Block_copy(aBlock);
  _Block_copy(aBlock);
  _Block_copy(aBlock);
  if (v9)
  {
    v10 = sub_251AC8C58(a1, a2);
    if (v11)
    {
      sub_251A823B4(*(v8 + 56) + 40 * v10, v34);
      sub_251A7E8D8(v34, v35);
      v12 = (*__swift_project_boxed_opaque_existential_1(v35, v36) + OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_requiredEntitlementOverride);
      if (v12[1])
      {
        v13 = *v12;
        v14 = v12[1];
      }

      else
      {
        v14 = 0x8000000251C92D70;
        v13 = 0xD000000000000020;
      }

      v18 = *&a3[OBJC_IVAR____TtC19HealthRecordsDaemon22DaemonConnectionServer_client];

      v19 = [v18 connection];
      if (v19)
      {
        v20 = v19;
        v21 = sub_251C70EE4();
        v22 = [v20 valueForEntitlement_];

        if (v22)
        {
          sub_251C715C4();
          swift_unknownObjectRelease();
        }

        else
        {
          *v30 = 0u;
          v31 = 0u;
        }

        v32 = *v30;
        v33 = v31;
        if (*(&v31 + 1))
        {
          sub_251ACFB54(&v32, v34);
          sub_251A83384(v34, &v32);
          sub_251AB6108();
          if (swift_dynamicCast())
          {
            if ([v30[0] BOOLValue])
            {

              v23 = [*(*__swift_project_boxed_opaque_existential_1(v35 v36) + OBJC:sel_endpoint IVAR:? :? :? :? TtC19HealthRecordsDaemon23DefaultDaemonXPCService:?listener)];
              (*(aBlock + 2))(aBlock, v23, 0);

LABEL_21:
              __swift_destroy_boxed_opaque_existential_1(v34);
              goto LABEL_22;
            }
          }

          v27 = objc_opt_self();
          *&v32 = 0;
          *(&v32 + 1) = 0xE000000000000000;
          sub_251C716A4();

          *&v32 = 0xD000000000000013;
          *(&v32 + 1) = 0x8000000251C92DA0;
          MEMORY[0x25308CDA0](v13, v14);

          MEMORY[0x25308CDA0](0x6C7469746E652022, 0xED0000746E656D65);
          v28 = sub_251C70EE4();

          v29 = [v27 hk:4 error:v28 description:?];

          _Block_copy(aBlock);
          sub_251C6EE78(0, v29, a1, a2, a3, aBlock);
          _Block_release(aBlock);

          goto LABEL_21;
        }
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
      }

      sub_251AFEC38(&v32);
      v24 = objc_opt_self();
      *&v34[0] = 0;
      *(&v34[0] + 1) = 0xE000000000000000;
      sub_251C716A4();

      *&v34[0] = 0x20676E697373694DLL;
      *(&v34[0] + 1) = 0xE900000000000022;
      MEMORY[0x25308CDA0](v13, v14);

      MEMORY[0x25308CDA0](0x6C7469746E652022, 0xED0000746E656D65);
      v25 = sub_251C70EE4();

      v26 = [v24 hk:4 error:v25 description:?];

      _Block_copy(aBlock);
      sub_251C6EE78(0, v26, a1, a2, a3, aBlock);
      _Block_release(aBlock);

LABEL_22:
      __swift_destroy_boxed_opaque_existential_1(v35);
      _Block_release(aBlock);
      _Block_release(aBlock);
      _Block_release(aBlock);
      return;
    }
  }

  v15 = objc_opt_self();
  sub_251C716A4();

  v35[0] = 0x2065636976726553;
  v35[1] = 0xE900000000000022;
  MEMORY[0x25308CDA0](a1, a2);
  MEMORY[0x25308CDA0](0x6F6620746F6E2022, 0xEB00000000646E75);
  v16 = sub_251C70EE4();

  v17 = [v15 hk:3 error:v16 description:?];

  _Block_copy(aBlock);
  sub_251C6EE78(0, v17, a1, a2, a3, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

void sub_251C6F6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(MEMORY[0x277D11578]);

  v8 = [v7 initWithHealthStore_];
  v9 = swift_allocObject();
  *(v9 + 16) = sub_251AD96B8;
  *(v9 + 24) = v6;
  v11[4] = sub_251C3B924;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_251C6F80C;
  v11[3] = &block_descriptor_26;
  v10 = _Block_copy(v11);

  [v8 fetchAllSchedulesWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_251C6F80C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_251C6F8B8();
    v4 = sub_251C71154();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251C6F8B8()
{
  result = qword_27F4797F0;
  if (!qword_27F4797F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4797F0);
  }

  return result;
}