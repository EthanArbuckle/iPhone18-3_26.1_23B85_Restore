uint64_t sub_22B3A8CD8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for BlackPearlModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[11] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for BloomFilterData(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[13];
      goto LABEL_3;
    }

    v15 = sub_22B3F6184();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[14];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_22B3A8E50(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for BlackPearlModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for BloomFilterData(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[13];
    goto LABEL_3;
  }

  v15 = sub_22B3F6184();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[14];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_22B3A8FF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22B3F6594();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_22B3A9034@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_blackPearlLevels;
  swift_beginAccess();
  return sub_22B3B2A74(v3 + v4, a2);
}

uint64_t sub_22B3A9098()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B3A90D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B3A9128(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B3F6184();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22B3A9194(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B3F6184();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22B3A9204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B3F6184();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A0, &qword_22B3F7FD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22B3A9334(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22B3F6184();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A0, &qword_22B3F7FD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22B3A9464()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B3A94B4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22B3A94FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22B3A9544(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22B3A9588()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B3A9760(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BlackPearlLevels();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22B3A980C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BlackPearlLevels();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id _MCCLogSystem()
{
  if (_MCCLogSystem_onceToken != -1)
  {
    _MCCLogSystem_cold_1();
  }

  v1 = _MCCLogSystem_log;

  return v1;
}

uint64_t type metadata accessor for BlackPearlLevels()
{
  result = qword_28140CD40;
  if (!qword_28140CD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BlackPearlLevels.init(modelMetadata:mCatModelMetadata:mCatCJKModelMetadata:senderModelMetadata:tsModelMetadata:mHIModelMetadata:mHICJKModelMetadata:version:threshold:bloomFilterData:domainLookupFile:tsSubjectLookupFile:tsSenderLookupFile:catLookupFile:personalDomainLookupFile:saasSenderLookupFile:mbertDomainLookupFile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22B3A9CCC(a1, a9, type metadata accessor for BlackPearlModel);
  v25 = type metadata accessor for BlackPearlLevels();
  sub_22B3A9CCC(a2, a9 + v25[5], type metadata accessor for BlackPearlModel);
  sub_22B3A9CCC(a3, a9 + v25[6], type metadata accessor for BlackPearlModel);
  sub_22B3A9CCC(a6, a9 + v25[9], type metadata accessor for BlackPearlModel);
  sub_22B3A9CCC(a7, a9 + v25[10], type metadata accessor for BlackPearlModel);
  sub_22B3A9CCC(a4, a9 + v25[7], type metadata accessor for BlackPearlModel);
  sub_22B3A9CCC(a5, a9 + v25[8], type metadata accessor for BlackPearlModel);
  v26 = (a9 + v25[11]);
  v27 = a8[1];
  *v26 = *a8;
  v26[1] = v27;
  v28 = a8[3];
  v26[2] = a8[2];
  v26[3] = v28;
  v29 = a8[7];
  v26[6] = a8[6];
  v26[7] = v29;
  v30 = a8[5];
  v26[4] = a8[4];
  v26[5] = v30;
  *(v26 + 169) = *(a8 + 169);
  v31 = a8[10];
  v26[9] = a8[9];
  v26[10] = v31;
  v26[8] = a8[8];
  v32 = a9 + v25[12];
  v33 = *(a10 + 48);
  *(v32 + 32) = *(a10 + 32);
  *(v32 + 48) = v33;
  *(v32 + 64) = *(a10 + 64);
  *(v32 + 80) = *(a10 + 80);
  v34 = *(a10 + 16);
  *v32 = *a10;
  *(v32 + 16) = v34;
  sub_22B3A9CCC(a11, a9 + v25[13], type metadata accessor for BloomFilterData);
  v35 = v25[14];
  v36 = sub_22B3F6184();
  v40 = *(*(v36 - 8) + 32);
  (v40)((v36 - 8), a9 + v35, a12, v36);
  v40(a9 + v25[15], a13, v36);
  v40(a9 + v25[16], a14, v36);
  v40(a9 + v25[17], a15, v36);
  v40(a9 + v25[18], a16, v36);
  v40(a9 + v25[19], a17, v36);
  v37 = a9 + v25[20];

  return (v40)(v37, a18, v36);
}

uint64_t sub_22B3A9CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void __swiftcall BlackPearlLevels.getThreshold()(MCCKitCategorization::BlackPearlThreshold *__return_ptr retstr)
{
  v3 = v1 + *(type metadata accessor for BlackPearlLevels() + 48);
  v4 = *(v3 + 48);
  *&retstr->thresholdP2C = *(v3 + 32);
  *&retstr->thresholdTS = v4;
  *&retstr->thresholdCorpEmployee = *(v3 + 64);
  retstr->tsSubjectMaxTokens = *(v3 + 80);
  v5 = *(v3 + 16);
  *&retstr->thresholdCommerce = *v3;
  *&retstr->thresholdEmployee = v5;
}

void __swiftcall BlackPearlLevels.getVersion()(MCCKitCategorization::BlackPearlVersion *__return_ptr retstr)
{
  v3 = (v1 + *(type metadata accessor for BlackPearlLevels() + 44));
  v4 = v3[9];
  v5 = v3[7];
  v26 = v3[8];
  v27 = v4;
  v6 = v3[9];
  v28[0] = v3[10];
  *(v28 + 9) = *(v3 + 169);
  v7 = v3[5];
  v9 = v3[3];
  v22 = v3[4];
  v8 = v22;
  v23 = v7;
  v10 = v3[5];
  v11 = v3[7];
  v24 = v3[6];
  v12 = v24;
  v25 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v20 = v3[2];
  v15 = v20;
  v21 = v14;
  v16 = v3[1];
  v19[0] = *v3;
  v17 = v19[0];
  v19[1] = v16;
  retstr->blackPearlRolloutFactorPackId = v26;
  retstr->blackPearlRolloutId = v6;
  *&retstr->blackPearlCategorizationVersion.value.major = v3[10];
  *(&retstr->blackPearlCategorizationVersion.value.minor + 1) = *(v3 + 169);
  retstr->blackPearlBreakthroughVersion = v8;
  retstr->blackPearlExperimentId = v10;
  retstr->blackPearlExperimentTreatmentId = v12;
  *&retstr->blackPearlExperimentDeploymentId = v5;
  retstr->blackPearlModelVersion = v17;
  retstr->blackPearlSenderModelVersion = v13;
  retstr->blackPearlTSModelVersion = v15;
  retstr->blackPearlFinalRuleVersion = v9;
  sub_22B3A9F54(v19, &v18);
}

uint64_t sub_22B3A9FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s20MCCKitCategorization16BlackPearlLevelsV16domainLookupFile10Foundation3URLVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlackPearlLevels() + 56);
  v4 = sub_22B3F6184();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlackPearlLevels.gettsSubjectLookupFile()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlackPearlLevels() + 60);
  v4 = sub_22B3F6184();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlackPearlLevels.gettsSenderLookupFile()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlackPearlLevels() + 64);
  v4 = sub_22B3F6184();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlackPearlLevels.getcatLookupFile()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlackPearlLevels() + 68);
  v4 = sub_22B3F6184();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _s20MCCKitCategorization16BlackPearlLevelsV24personalDomainLookupFile10Foundation3URLVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlackPearlLevels() + 72);
  v4 = sub_22B3F6184();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlackPearlLevels.getSaasSenderLookupFile()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlackPearlLevels() + 76);
  v4 = sub_22B3F6184();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlackPearlLevels.getMBertDomainLookupFile()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlackPearlLevels() + 80);
  v4 = sub_22B3F6184();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_22B3AA5FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701147238;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1937204590;
    }

    else
    {
      v4 = 0x726568746FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7761767;
    }

    else
    {
      v4 = 1701147238;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE400000000000000;
  v8 = 1937204590;
  if (a2 != 2)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 7761767;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22B3F6C84();
  }

  return v11 & 1;
}

uint64_t sub_22B3AA710(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6873696C676E65;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x726F707075536E75;
    }

    if (v3 == 2)
    {
      v5 = 0x800000022B3FA140;
    }

    else
    {
      v5 = 0xEB00000000646574;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6974616CLL;
    }

    else
    {
      v4 = 0x6873696C676E65;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000011;
  v8 = 0x800000022B3FA140;
  if (a2 != 2)
  {
    v7 = 0x726F707075536E75;
    v8 = 0xEB00000000646574;
  }

  if (a2)
  {
    v2 = 0x6E6974616CLL;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22B3F6C84();
  }

  return v11 & 1;
}

uint64_t getEnumTagSinglePayload for BlackPearlFactors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for BlackPearlFactors(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_22B3AACC4()
{
  result = type metadata accessor for BlackPearlModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BloomFilterData(319);
    if (v2 <= 0x3F)
    {
      result = sub_22B3F6184();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22B3AADC4()
{
  v1 = *v0;
  v2 = sub_22B3F6594();
  v3 = MEMORY[0x231890030](v2);

  return v3;
}

uint64_t sub_22B3AAE00()
{
  v1 = *v0;
  sub_22B3F6594();
  sub_22B3F6624();
}

uint64_t sub_22B3AAE54()
{
  v1 = *v0;
  sub_22B3F6594();
  sub_22B3F6D34();
  sub_22B3F6624();
  v2 = sub_22B3F6D54();

  return v2;
}

uint64_t sub_22B3AAEC8(uint64_t a1, id *a2)
{
  result = sub_22B3F6574();
  *a2 = 0;
  return result;
}

uint64_t sub_22B3AAF40(uint64_t a1, id *a2)
{
  v3 = sub_22B3F6584();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22B3AAFC0@<X0>(uint64_t *a1@<X8>)
{
  sub_22B3F6594();
  v2 = sub_22B3F6564();

  *a1 = v2;
  return result;
}

uint64_t sub_22B3AB004(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22B3F6594();
  v6 = v5;
  if (v4 == sub_22B3F6594() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22B3F6C84();
  }

  return v9 & 1;
}

uint64_t sub_22B3AB08C(uint64_t a1)
{
  v2 = sub_22B3AB294(&qword_27D8BE060, type metadata accessor for URLResourceKey);
  v3 = sub_22B3AB294(&qword_27D8BE068, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22B3AB148(uint64_t a1)
{
  v2 = sub_22B3AB294(&qword_27D8BE030, type metadata accessor for NLLanguage);
  v3 = sub_22B3AB294(&qword_27D8BE038, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22B3AB294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B3AB324@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22B3F6564();

  *a2 = v5;
  return result;
}

uint64_t sub_22B3AB36C(uint64_t a1)
{
  v2 = sub_22B3AB294(&qword_27D8BE020, type metadata accessor for NLScript);
  v3 = sub_22B3AB294(&qword_27D8BE028, type metadata accessor for NLScript);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_22B3AB528(uint64_t a1, unint64_t *a2)
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

uint64_t sub_22B3AB684()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0C8, &qword_22B3F7CA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v10 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0D0, &qword_22B3F7CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  v4 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v5 = v4;
  sub_22B3B3584(inited);
  swift_setDeallocating();
  sub_22B3B4ADC(inited + 32, type metadata accessor for URLResourceKey);
  sub_22B3F60C4();

  v6 = sub_22B3F6054();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v2, 0, 1, v6);
  v8 = sub_22B3F6044();
  (*(v7 + 8))(v2, v6);
  return v8 & 1;
}

void static TrialLoader.getModelFactors(forLanguageModel:)(_BYTE *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = 0xD000000000000011;
  v4 = *a1;
  if (v4 > 1 || *a1)
  {
    v11 = 0xEC00000053546C72;
    v5 = 0x6165506B63616C42;
    v12 = sub_22B3F6C84();

    v9 = "BlackPearlAssets";
    v10 = "BlackPearlTSModelVersion";
    if (v12)
    {
LABEL_5:
      v6 = 0xD000000000000016;
      v7 = 0xD000000000000018;
      v3 = 0x6165506B63616C42;
      v8 = 0xEA00000000006C72;
      goto LABEL_16;
    }

    if (v4 == 1)
    {
    }

    else
    {
      v13 = sub_22B3F6C84();

      if ((v13 & 1) == 0)
      {
        if (v4 > 1)
        {
          v11 = 0xEC00000053546C72;
          if (v4 == 2)
          {

            goto LABEL_15;
          }
        }

        else
        {
          v11 = 0xEC00000053546C72;
        }

        v14 = sub_22B3F6C84();

        if ((v14 & 1) == 0)
        {
          if (qword_28140BFC8 != -1)
          {
            swift_once();
          }

          v15 = sub_22B3F6464();
          __swift_project_value_buffer(v15, qword_28140D680);
          v16 = sub_22B3F6444();
          v17 = sub_22B3F68C4();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&dword_22B3A7000, v16, v17, "Unsupported Language model group requested. Returning default english model", v18, 2u);
            MEMORY[0x231890C40](v18, -1, -1);
          }

          goto LABEL_5;
        }

LABEL_15:
        v8 = 0x800000022B3FA4D0;
        v11 = 0x800000022B3FA4B0;
        v5 = 0xD000000000000010;
        v7 = 0xD00000000000001CLL;
        v9 = "BlackPearlMHIModelPackage";
        v10 = "BlackPearlMCatModelPackage";
        v6 = 0xD00000000000001DLL;
        goto LABEL_16;
      }
    }

    v7 = 0xD000000000000019;
    v6 = 0xD00000000000001ALL;
    v11 = 0xED000049484D6C72;
    v9 = "BlackPearlTSModelPackage";
    v10 = "BlackPearlModelPackage";
    v8 = 0xEE007461434D6C72;
    v3 = 0x6165506B63616C42;
    goto LABEL_16;
  }

  v5 = 0x6165506B63616C42;

  v6 = 0xD000000000000016;
  v7 = 0xD000000000000018;
  v8 = 0xEA00000000006C72;
  v9 = "BlackPearlAssets";
  v10 = "BlackPearlTSModelVersion";
  v11 = 0xEC00000053546C72;
  v3 = 0x6165506B63616C42;
LABEL_16:
  *a2 = v6;
  a2[1] = v10 | 0x8000000000000000;
  a2[2] = v3;
  a2[3] = v8;
  a2[4] = v7;
  a2[5] = v9 | 0x8000000000000000;
  a2[6] = v5;
  a2[7] = v11;
}

uint64_t sub_22B3AC168(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(type metadata accessor for BlackPearlLevels() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B3B2A74(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_blackPearlLevels;
  swift_beginAccess();
  sub_22B3B2AD8(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_22B3AC220@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_blackPearlLevels;
  swift_beginAccess();
  return sub_22B3B2A74(v1 + v3, a1);
}

uint64_t sub_22B3AC278(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_blackPearlLevels;
  swift_beginAccess();
  sub_22B3B2AD8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t TrialLoader.__allocating_init(withNLPLevel:)(unsigned __int8 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  TrialLoader.init(withNLPLevel:)(a1);
  return v5;
}

uint64_t TrialLoader.init(withNLPLevel:)(unsigned __int8 *a1)
{
  v2 = v1;
  v48 = type metadata accessor for BlackPearlTrialLevels();
  v4 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for BlackPearlLevels();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22B3F6244();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_22B3F68E4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_22B3F64A4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_22B3F68F4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v44[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = *a1;
  v1[2] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  sub_22B3B41C4(0, &qword_28140BF60, 0x277D85C78);
  (*(v20 + 104))(v23, *MEMORY[0x277D85268], v19);
  sub_22B3F6494();
  v52 = MEMORY[0x277D84F90];
  sub_22B3B42AC(&qword_28140BF68, MEMORY[0x277D85230]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE070, &unk_22B3F7A20);
  sub_22B3B2B84();
  sub_22B3F6A54();
  v1[3] = sub_22B3F6924();
  v25 = OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_nextTryTime;
  sub_22B3F6234();
  sub_22B3F6224();
  v27 = v26;
  (*(v49 + 8))(v12, v50);
  v28 = v27 * 1000.0;
  if (COERCE__INT64(fabs(v27 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v1 + v25) = v28;
  v24 = 312;
  v29 = [objc_opt_self() clientWithIdentifier_];
  v1[4] = v29;
  LOBYTE(v52) = v45;
  v30 = v29;
  v31 = v47;
  sub_22B3E5394(v30, &v52, v47);
  v32 = v46;
  sub_22B3B2A74(v31 + *(v48 + 20), v46);
  sub_22B3B4ADC(v31, type metadata accessor for BlackPearlTrialLevels);
  sub_22B3B2C30(v32, v2 + OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_blackPearlLevels);
  v12 = "MCCKit.categorization";
  v33 = v2[4];
  v34 = sub_22B3F6564();
  v16 = 0xD000000000000015;
  v35 = sub_22B3F6564();
  v36 = [v33 levelForFactor:v34 withNamespaceName:v35];

  if (v36)
  {
    v37 = [v36 stringValue];

    if (v37)
    {
      v38 = sub_22B3F6594();
      v40 = v39;

      v41 = (v2 + OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_forceDownloadOnLaunch);
      *v41 = v38;
      v41[1] = v40;
      return v2;
    }
  }

LABEL_10:
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_22B3F6AC4();

  v52 = v16 + 15;
  v53 = 0x800000022B3FA670;
  v51 = v24;
  v43 = sub_22B3F6C74();
  MEMORY[0x23188FF80](v43);

  MEMORY[0x23188FF80](0x20726F7463616620, 0xE800000000000000);
  MEMORY[0x23188FF80](0xD000000000000015, v12 | 0x8000000000000000);
  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

id *TrialLoader.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_blackPearlLevels;
  swift_beginAccess();
  v2 = type metadata accessor for BlackPearlModel(0);
  v3 = *(v2 + 32);
  v4 = *(v1 + v3);
  *(v1 + v3) = 0;
  *(v1 + *(v2 + 36)) = 0;
  v5 = type metadata accessor for BlackPearlLevels();
  v6 = v1 + v5[5];
  v7 = *(v2 + 32);
  v8 = *(v6 + v7);
  *(v6 + v7) = 0;
  *(v6 + *(v2 + 36)) = 0;
  v9 = v1 + v5[8];
  v10 = *(v2 + 32);
  v11 = *(v9 + v10);
  *(v9 + v10) = 0;
  *(v9 + *(v2 + 36)) = 0;
  v12 = v1 + v5[7];
  v13 = *(v2 + 32);
  v14 = *(v12 + v13);
  *(v12 + v13) = 0;
  *(v12 + *(v2 + 36)) = 0;
  v15 = v1 + v5[6];
  v16 = *(v2 + 32);
  v17 = *(v15 + v16);
  *(v15 + v16) = 0;
  *(v15 + *(v2 + 36)) = 0;
  v18 = v1 + v5[9];
  v19 = *(v2 + 32);
  v20 = *(v18 + v19);
  *(v18 + v19) = 0;
  *(v18 + *(v2 + 36)) = 0;
  v21 = v1 + v5[10];
  v22 = *(v2 + 32);
  v23 = *(v21 + v22);
  *(v21 + v22) = 0;
  *(v21 + *(v2 + 36)) = 0;

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v24 = sub_22B3F6464();
  __swift_project_value_buffer(v24, qword_28140D680);
  v25 = v48;

  v26 = sub_22B3F6444();
  v27 = sub_22B3F68B4();

  if (os_log_type_enabled(v26, v27))
  {
    v46 = v27;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138413826;
    v30 = *(v1 + *(v2 + 32));
    *(v28 + 4) = v30;
    *v29 = v30;
    *(v28 + 12) = 2112;
    v31 = *(v1 + v5[5] + *(v2 + 32));
    *(v28 + 14) = v31;
    v29[1] = v31;
    *(v28 + 22) = 2112;
    v32 = *(v1 + v5[7] + *(v2 + 32));
    *(v28 + 24) = v32;
    v29[2] = v32;
    *(v28 + 32) = 2112;
    v33 = *(v1 + v5[8] + *(v2 + 32));
    *(v28 + 34) = v33;
    v29[3] = v33;
    *(v28 + 42) = 2112;
    v34 = *(v1 + v5[6] + *(v2 + 32));
    *(v28 + 44) = v34;
    v29[4] = v34;
    *(v28 + 52) = 2112;
    v47 = v26;
    v35 = *(v1 + v5[9] + *(v2 + 32));
    *(v28 + 54) = v35;
    v29[5] = v35;
    *(v28 + 62) = 2112;
    v36 = *(v1 + v5[10] + *(v2 + 32));
    *(v28 + 64) = v36;
    v29[6] = v36;
    v37 = v30;
    v38 = v31;
    v25 = v48;
    v39 = v32;
    v40 = v33;
    v41 = v34;
    v42 = v35;
    v26 = v47;
    v43 = v36;
    _os_log_impl(&dword_22B3A7000, v47, v46, "Destroyed trial-loader model %@, %@, %@, %@, %@, %@, %@", v28, 0x48u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE078, &qword_22B3F8C50);
    swift_arrayDestroy();
    MEMORY[0x231890C40](v29, -1, -1);
    MEMORY[0x231890C40](v28, -1, -1);
  }

  sub_22B3B4ADC(v1, type metadata accessor for BlackPearlLevels);
  v44 = *(v25 + OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_forceDownloadOnLaunch + 8);

  return v25;
}

uint64_t TrialLoader.__deallocating_deinit()
{
  TrialLoader.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_22B3ACDBC()
{
  v1 = v0;
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v2 = sub_22B3F6464();
  __swift_project_value_buffer(v2, qword_28140D680);
  v3 = sub_22B3F6444();
  v4 = sub_22B3F68A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B3A7000, v3, v4, "Subscribing to Trial updates", v5, 2u);
    MEMORY[0x231890C40](v5, -1, -1);
  }

  v6 = *(v1 + 32);
  v7 = sub_22B3F6564();
  v10[4] = sub_22B3B2F78;
  v10[5] = v1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22B3AD070;
  v10[3] = &block_descriptor;
  v8 = _Block_copy(v10);

  v9 = [v6 addUpdateHandlerForNamespaceName:v7 usingBlock:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();
}

id sub_22B3ACF7C(uint64_t a1, uint64_t a2)
{
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v3 = sub_22B3F6464();
  __swift_project_value_buffer(v3, qword_28140D680);
  v4 = sub_22B3F6444();
  v5 = sub_22B3F68A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22B3A7000, v4, v5, "Refreshing trial factors with new levels", v6, 2u);
    MEMORY[0x231890C40](v6, -1, -1);
  }

  [*(a2 + 32) refresh];
  return sub_22B3AD0D0();
}

uint64_t sub_22B3AD070(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_22B3AD0D0()
{
  v1 = type metadata accessor for BlackPearlTrialLevels();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for BlackPearlLevels();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  [*(v0 + 16) lock];
  v10 = *(v0 + 32);
  v14[0] = 4;
  sub_22B3E5394(v10, v14, v5);
  sub_22B3B2A74(&v5[*(v2 + 28)], v9);
  sub_22B3B4ADC(v5, type metadata accessor for BlackPearlTrialLevels);
  v11 = OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_blackPearlLevels;
  swift_beginAccess();
  sub_22B3B2AD8(v9, v0 + v11);
  swift_endAccess();
  return sub_22B3AFEC4(v0);
}

id sub_22B3AD218()
{
  v1 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v2 = sub_22B3F6464();
  __swift_project_value_buffer(v2, qword_28140D680);
  v3 = sub_22B3F6444();
  v4 = sub_22B3F68A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22B3BDABC(0xD000000000000012, 0x800000022B3FA110, v30);
    _os_log_impl(&dword_22B3A7000, v3, v4, "Initiating immediate model download for namespace %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x231890C40](v6, -1, -1);
    MEMORY[0x231890C40](v5, -1, -1);
  }

  else
  {
  }

  sub_22B3B4D74(&unk_283F04F80);
  sub_22B3B4EDC(&unk_283F04FA0);
  v7 = *(v1 + 32);
  v8 = sub_22B3F6844();

  v30[0] = 0;
  v9 = [v7 immediateDownloadForNamespaceNames:v8 allowExpensiveNetworking:1 error:v30];

  if (v9)
  {
    v10 = v30[0];
    v11 = sub_22B3F6444();
    v12 = sub_22B3F68A4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_22B3BDABC(0xD000000000000012, 0x800000022B3FA110, v30);
      _os_log_impl(&dword_22B3A7000, v11, v12, "Completed immediate model download for namespace %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x231890C40](v14, -1, -1);
      MEMORY[0x231890C40](v13, -1, -1);
    }

    [v7 refresh];
    sub_22B3AD0D0();
    v15 = sub_22B3F6444();
    v16 = sub_22B3F68A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_22B3BDABC(0xD000000000000012, 0x800000022B3FA110, v30);
      _os_log_impl(&dword_22B3A7000, v15, v16, "Refresh completed for namespace %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x231890C40](v18, -1, -1);
      MEMORY[0x231890C40](v17, -1, -1);
    }
  }

  else
  {
    v19 = v30[0];
    v20 = sub_22B3F6064();

    swift_willThrow();
    v21 = v20;
    v15 = sub_22B3F6444();
    v22 = sub_22B3F68C4();

    if (!os_log_type_enabled(v15, v22))
    {

      goto LABEL_15;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30[0] = v25;
    *v23 = 136315394;
    *(v23 + 4) = sub_22B3BDABC(0xD000000000000012, 0x800000022B3FA110, v30);
    *(v23 + 12) = 2112;
    v26 = v20;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v27;
    *v24 = v27;
    _os_log_impl(&dword_22B3A7000, v15, v22, "Failed immediate model download for namespace %s error %@", v23, 0x16u);
    sub_22B3B4B3C(v24, &qword_27D8BE078, &qword_22B3F8C50);
    MEMORY[0x231890C40](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x231890C40](v25, -1, -1);
    MEMORY[0x231890C40](v23, -1, -1);
  }

LABEL_15:
  v28 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL sub_22B3AD718()
{
  v1 = v0 + OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_blackPearlLevels;
  swift_beginAccess();
  if (*(v1 + *(type metadata accessor for BlackPearlLevels() + 44) + 152))
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_forceDownloadOnLaunch);
  v4 = *(v0 + OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_forceDownloadOnLaunch + 8);
  if (sub_22B3F65D4() == 0x64656C62616E65 && v5 == 0xE700000000000000)
  {
    goto LABEL_14;
  }

  v7 = sub_22B3F6C84();

  if (v7)
  {
    return 1;
  }

  if (sub_22B3F65D4() == 0x65646F6D676E616CLL && v8 == 0xED0000796C6E6F6CLL)
  {
LABEL_14:

    return 1;
  }

  v10 = sub_22B3F6C84();

  return (v10 & 1) != 0;
}

uint64_t sub_22B3AD850(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE080, &qword_22B3F7A30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_22B3F67E4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;

  sub_22B3AE2BC(0, 0, v6, &unk_22B3F7A40, v8);

  return sub_22B3B4B3C(v6, &qword_27D8BE080, &qword_22B3F7A30);
}

uint64_t sub_22B3AD988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x2822009F8](sub_22B3AD9A8, 0, 0);
}

uint64_t sub_22B3AD9A8()
{
  v20 = v0;
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v1 = sub_22B3F6464();
  v0[20] = __swift_project_value_buffer(v1, qword_28140D680);
  v2 = sub_22B3F6444();
  v3 = sub_22B3F68A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_22B3BDABC(0xD000000000000012, 0x800000022B3FA110, &v19);
    _os_log_impl(&dword_22B3A7000, v2, v3, "Initiating download levels for namespace %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x231890C40](v5, -1, -1);
    MEMORY[0x231890C40](v4, -1, -1);
  }

  else
  {
  }

  v6 = v0[18];
  v7 = v0[19];
  v8 = [objc_allocWithZone(MEMORY[0x277D736A0]) initWithAllowsCellular:1 discretionaryBehavior:0];
  v0[21] = v8;
  v18 = *(v6 + 32);
  v17 = sub_22B3F6784();
  v0[22] = v17;
  v9 = sub_22B3F6564();
  v0[23] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v0[14] = sub_22B3B4F30;
  v0[15] = v10;
  v11 = MEMORY[0x277D85DD0];
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22B3AE19C;
  v0[13] = &block_descriptor_56;
  v12 = _Block_copy(v0 + 10);
  v0[24] = v12;
  v13 = v0[15];
  v14 = v8;

  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_22B3ADD00;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0E8, &qword_22B3F7CE8);
  v0[10] = v11;
  v0[11] = 1107296256;
  v0[12] = sub_22B3AE1F0;
  v0[13] = &block_descriptor_59;
  v0[14] = v15;
  [v18 downloadLevelsForFactors:v17 withNamespace:v9 queue:0 options:v14 progress:v12 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B3ADD00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_22B3ADE94;
  }

  else
  {
    v3 = sub_22B3ADE10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B3ADE10()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 144);
  _Block_release(*(v0 + 192));

  sub_22B3AD218();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22B3ADE94()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  swift_willThrow();

  _Block_release(v2);
  v7 = v1;
  v8 = sub_22B3F6444();
  v9 = sub_22B3F68C4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[25];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_22B3A7000, v8, v9, "Failed to download trial levels: %@", v12, 0xCu);
    sub_22B3B4B3C(v13, &qword_27D8BE078, &qword_22B3F8C50);
    MEMORY[0x231890C40](v13, -1, -1);
    MEMORY[0x231890C40](v12, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

void sub_22B3AE020(uint64_t a1, uint64_t a2)
{
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v4 = sub_22B3F6464();
  __swift_project_value_buffer(v4, qword_28140D680);

  oslog = sub_22B3F6444();
  v5 = sub_22B3F68B4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    v8 = MEMORY[0x2318900A0](a2, MEMORY[0x277D837D0]);
    v10 = sub_22B3BDABC(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = a1;
    _os_log_impl(&dword_22B3A7000, oslog, v5, "Downloading Trial levels for %s at progress: %lu", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x231890C40](v7, -1, -1);
    MEMORY[0x231890C40](v6, -1, -1);
  }
}

uint64_t sub_22B3AE19C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_22B3AE1F0(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22B3AE2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE080, &qword_22B3F7A30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22B3B4B9C(a3, v27 - v11, &qword_27D8BE080, &qword_22B3F7A30);
  v13 = sub_22B3F67E4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22B3B4B3C(v12, &qword_27D8BE080, &qword_22B3F7A30);
  }

  else
  {
    sub_22B3F67D4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22B3F67C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22B3F65F4() + 32;
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

void sub_22B3AE57C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE080, &qword_22B3F7A30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - v6;
  v8 = sub_22B3F6244();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  sub_22B3F6234();
  sub_22B3F6224();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v15, v8);
  v19 = v17 * 1000.0;
  if (COERCE__INT64(fabs(v17 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_nextTryTime;
  if (*(v1 + OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_nextTryTime) > v19)
  {
    if (qword_28140BFC8 == -1)
    {
LABEL_6:
      v21 = sub_22B3F6464();
      __swift_project_value_buffer(v21, qword_28140D680);
      v22 = sub_22B3F6444();
      v23 = sub_22B3F68B4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_22B3A7000, v22, v23, "retrieveOnDemandFilePath: Skipped as the last try was < 2mins", v24, 2u);
        MEMORY[0x231890C40](v24, -1, -1);
      }

      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_6;
  }

  sub_22B3F6234();
  sub_22B3F6214();
  v18(v13, v8);
  sub_22B3F6224();
  v26 = v25;
  v18(v15, v8);
  v27 = v26 * 1000.0;
  if (COERCE__INT64(fabs(v26 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v1 + v20) = v27;
  if (qword_28140BFC8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v28 = sub_22B3F6464();
  __swift_project_value_buffer(v28, qword_28140D680);

  v29 = sub_22B3F6444();
  v30 = sub_22B3F68A4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_22B3BDABC(0xD000000000000012, 0x800000022B3FA110, &v47);
    *(v31 + 12) = 2080;
    v33 = MEMORY[0x2318900A0](a1, &type metadata for ModelFactor);
    v35 = sub_22B3BDABC(v33, v34, &v47);

    *(v31 + 14) = v35;
    _os_log_impl(&dword_22B3A7000, v29, v30, "retrieveOnDemandFilePath(): namespace:%s factor:%s not found, calling downloadLevels", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231890C40](v32, -1, -1);
    MEMORY[0x231890C40](v31, -1, -1);
  }

  v36 = *(a1 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v47 = MEMORY[0x277D84F90];
    sub_22B3B791C(0, v36, 0);
    v37 = v47;
    v38 = (a1 + 40);
    do
    {
      v40 = *(v38 - 1);
      v39 = *v38;
      v47 = v37;
      v42 = *(v37 + 16);
      v41 = *(v37 + 24);

      if (v42 >= v41 >> 1)
      {
        sub_22B3B791C((v41 > 1), v42 + 1, 1);
        v37 = v47;
      }

      *(v37 + 16) = v42 + 1;
      v43 = v37 + 16 * v42;
      *(v43 + 32) = v40;
      *(v43 + 40) = v39;
      v38 += 4;
      --v36;
    }

    while (v36);
  }

  v44 = sub_22B3F67E4();
  (*(*(v44 - 8) + 56))(v7, 1, 1, v44);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v2;
  v45[5] = v37;

  sub_22B3AE2BC(0, 0, v7, &unk_22B3F7C88, v45);

  sub_22B3B4B3C(v7, &qword_27D8BE080, &qword_22B3F7A30);
}

void sub_22B3AEB48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    for (i = (a1 + 56); ; i += 4)
    {
      v3 = *(i - 1);
      v4 = *i;
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(v34 + 32);

      v8 = sub_22B3F6564();
      v9 = sub_22B3F6564();
      v10 = [v7 levelForFactor:v8 withNamespaceName:v9];

      if (!v10)
      {
        break;
      }

      v11 = [v10 directoryValue];
      if (!v11)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v12 = v11;
      v13 = [v11 path];

      if (!v13)
      {
        goto LABEL_22;
      }

      sub_22B3F6594();

      v38 = 47;
      v39 = 0xE100000000000000;
      sub_22B3F6754();
      sub_22B3F6664();
      v38 = v3;
      v39 = v4;
      sub_22B3F6754();
      sub_22B3F6664();

      v38 = 0x616B6361706C6D2ELL;
      v39 = 0xEA00000000006567;
      v36 = sub_22B3F6754();
      v37 = v14;
      sub_22B3F6664();
      v15 = [objc_opt_self() defaultManager];
      v16 = sub_22B3F6564();
      v17 = [v15 fileExistsAtPath_];

      if ((v17 & 1) == 0)
      {

        sub_22B3AE57C(a1);

        return;
      }

      v35 = v1;
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v18 = sub_22B3F6464();
      __swift_project_value_buffer(v18, qword_28140D680);
      v19 = v10;

      v20 = sub_22B3F6444();
      v21 = sub_22B3F68B4();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v38 = v24;
        *v22 = 136315650;
        *(v22 + 4) = sub_22B3BDABC(0xD000000000000012, 0x800000022B3FA110, &v38);
        *(v22 + 12) = 2112;
        *(v22 + 14) = v19;
        *v23 = v10;
        *(v22 + 22) = 2080;
        v25 = v19;
        v26 = sub_22B3BDABC(v36, v37, &v38);

        *(v22 + 24) = v26;
        _os_log_impl(&dword_22B3A7000, v20, v21, "retrieveOnDemandFilePath(): namespace:%s factor:%@  -> path:%s", v22, 0x20u);
        sub_22B3B4B3C(v23, &qword_27D8BE078, &qword_22B3F8C50);
        MEMORY[0x231890C40](v23, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x231890C40](v24, -1, -1);
        MEMORY[0x231890C40](v22, -1, -1);
      }

      else
      {
      }

      v1 = v35 - 1;
      if (v35 == 1)
      {
        return;
      }
    }

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v27 = sub_22B3F6464();
    __swift_project_value_buffer(v27, qword_28140D680);

    v28 = sub_22B3F6444();
    v29 = sub_22B3F68C4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315138;

      v32 = sub_22B3BDABC(v5, v6, &v38);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_22B3A7000, v28, v29, "Factor level for %s not found", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x231890C40](v31, -1, -1);
      MEMORY[0x231890C40](v30, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22B3AF120(char *a1, uint64_t (*a2)(uint64_t *))
{
  v3 = v2;
  v5 = *a1;
  type metadata accessor for TrialLoader();
  LOBYTE(v24) = v5;
  static TrialLoader.getModelFactors(forLanguageModel:)(&v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE088, &qword_22B3F7A48);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22B3F79C0;
  v7 = v25[1];
  v8 = v25[2];
  v9 = v25[3];
  *(v6 + 32) = v25[0];
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = v9;
  v10 = v25[5];
  v11 = v25[6];
  v12 = v25[7];
  *(v6 + 64) = v25[4];
  *(v6 + 72) = v10;
  *(v6 + 80) = v11;
  *(v6 + 88) = v12;

  sub_22B3B30A4(v25);
  sub_22B3AEB48(v6);
  if (v13)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v14 = sub_22B3F6464();
    __swift_project_value_buffer(v14, qword_28140D680);

    v15 = sub_22B3F6444();
    v16 = sub_22B3F68A4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_22B3BDABC(0xD000000000000012, 0x800000022B3FA110, &v24);
      *(v17 + 12) = 2080;
      v19 = MEMORY[0x2318900A0](v6, &type metadata for ModelFactor);
      v21 = v20;

      v22 = sub_22B3BDABC(v19, v21, &v24);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_22B3A7000, v15, v16, "retrieveOnDemandFilePath(): namespace:%s factor:%s found, refreshing", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231890C40](v18, -1, -1);
      MEMORY[0x231890C40](v17, -1, -1);
    }

    else
    {
    }

    [*(v3 + 32) refresh];
    sub_22B3AD0D0();
    LOWORD(v24) = 1;
  }

  else
  {

    LOWORD(v24) = 0;
  }

  return a2(&v24);
}

uint64_t sub_22B3AF3D0(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_blackPearlLevels;
  v5 = OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_forceDownloadOnLaunch;
  swift_beginAccess();
  if (a1 < 1)
  {
LABEL_20:
    sub_22B3B30D4();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
    return 1;
  }

  v6 = (v2 + v5);
  v33 = v4 + 152;
  v7 = type metadata accessor for BlackPearlLevels();
  v8 = 0;
  while (!*(v33 + *(v7 + 44)))
  {
    v10 = *v6;
    v9 = v6[1];
    if (sub_22B3F65D4() == 0x64656C62616E65 && v11 == 0xE700000000000000)
    {
      goto LABEL_12;
    }

    v13 = sub_22B3F6C84();

    if (v13)
    {
      goto LABEL_13;
    }

    if (sub_22B3F65D4() == 0x65646F6D676E616CLL && v14 == 0xED0000796C6E6F6CLL)
    {
LABEL_12:
    }

    else
    {
      v19 = sub_22B3F6C84();

      if ((v19 & 1) == 0)
      {
        break;
      }
    }

LABEL_13:
    if (sub_22B3AD218())
    {
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v30 = sub_22B3F6464();
      __swift_project_value_buffer(v30, qword_28140D680);
      v22 = sub_22B3F6444();
      v31 = sub_22B3F68A4();
      if (os_log_type_enabled(v22, v31))
      {
        v24 = swift_slowAlloc();
        *v24 = 67109120;
        *(v24 + 1) = 1;
        v25 = "Completed immediate download status=%{BOOL}d";
        v26 = v31;
        v27 = v22;
        v28 = v24;
        v29 = 8;
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v15 = sub_22B3F6464();
    __swift_project_value_buffer(v15, qword_28140D680);
    v16 = sub_22B3F6444();
    v17 = sub_22B3F68C4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v8;
      _os_log_impl(&dword_22B3A7000, v16, v17, "Attempt %ld failed", v18, 0xCu);
      MEMORY[0x231890C40](v18, -1, -1);
    }

    if (a1 == ++v8)
    {
      goto LABEL_20;
    }
  }

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v21 = sub_22B3F6464();
  __swift_project_value_buffer(v21, qword_28140D680);
  v22 = sub_22B3F6444();
  v23 = sub_22B3F68A4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Skipping immediate download";
    v26 = v23;
    v27 = v22;
    v28 = v24;
    v29 = 2;
LABEL_29:
    _os_log_impl(&dword_22B3A7000, v27, v26, v25, v28, v29);
    MEMORY[0x231890C40](v24, -1, -1);
  }

LABEL_30:

  return 1;
}

uint64_t sub_22B3AF7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE080, &qword_22B3F7A30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_22B3F67E4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  sub_22B3AFB54(0, 0, v10, &unk_22B3F7A58, v12);
}

uint64_t sub_22B3AF8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x2822009F8](sub_22B3AF91C, 0, 0);
}

uint64_t sub_22B3AF91C()
{
  v7 = v0;
  v1 = v0[3];
  sub_22B3AF3D0(v0[4]);
  v2 = v0[5];
  v3 = v0[6];
  v6[0] = 1;
  v2(v6);
  v4 = v0[1];

  return v4();
}

uint64_t sub_22B3AFB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE080, &qword_22B3F7A30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22B3B4B9C(a3, v27 - v11, &qword_27D8BE080, &qword_22B3F7A30);
  v13 = sub_22B3F67E4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22B3B4B3C(v12, &qword_27D8BE080, &qword_22B3F7A30);
  }

  else
  {
    sub_22B3F67D4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22B3F67C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22B3F65F4() + 32;
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

      sub_22B3B4B3C(a3, &qword_27D8BE080, &qword_22B3F7A30);

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

  sub_22B3B4B3C(a3, &qword_27D8BE080, &qword_22B3F7A30);
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

id sub_22B3AFE54@<X0>(uint64_t a1@<X8>)
{
  [*(v1 + 16) lock];
  v3 = OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_blackPearlLevels;
  swift_beginAccess();
  sub_22B3B2A74(v1 + v3, a1);
  return sub_22B3AFEC4(v1);
}

id sub_22B3AFEC4(uint64_t a1)
{
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v2 = sub_22B3F6464();
  __swift_project_value_buffer(v2, qword_28140D680);
  v3 = sub_22B3F6444();
  v4 = sub_22B3F68B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B3A7000, v3, v4, "Unlocking Trial levels refresher", v5, 2u);
    MEMORY[0x231890C40](v5, -1, -1);
  }

  v6 = *(a1 + 16);

  return [v6 unlock];
}

void sub_22B3AFFBC(uint64_t a1@<X8>)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22B3F6184();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v55 - v8;
  v59 = 1;
  v58 = 1;
  v10 = container_system_group_path_for_identifier();
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v10 isDirectory:1 relativeToURL:0];
    v13 = sub_22B3F6564();
    v14 = [v12 URLByAppendingPathComponent:v13 isDirectory:1];

    if (v14)
    {
      v56 = v12;
      v57 = v11;
      sub_22B3F6134();

      v15 = objc_opt_self();
      v16 = [v15 defaultManager];
      sub_22B3F6144();
      v17 = sub_22B3F6564();

      v18 = [v16 fileExistsAtPath:v17 isDirectory:&v59];

      if (v18)
      {
LABEL_6:
        v55 = a1;
        if (qword_28140BFC8 != -1)
        {
          swift_once();
        }

        v23 = sub_22B3F6464();
        __swift_project_value_buffer(v23, qword_28140D680);
        (*(v3 + 16))(v7, v9, v2);
        v24 = sub_22B3F6444();
        v25 = sub_22B3F68B4();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v60[0] = v27;
          *v26 = 136315138;
          sub_22B3B42AC(&qword_27D8BE0B0, MEMORY[0x277CC9260]);
          v28 = sub_22B3F6C74();
          v30 = v29;
          (*(v3 + 8))(v7, v2);
          v31 = sub_22B3BDABC(v28, v30, v60);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_22B3A7000, v24, v25, "Container path %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x231890C40](v27, -1, -1);
          MEMORY[0x231890C40](v26, -1, -1);
        }

        else
        {

          (*(v3 + 8))(v7, v2);
        }

        v41 = v55;
        v42 = v56;
        (*(v3 + 32))(v55, v9, v2);
        (*(v3 + 56))(v41, 0, 1, v2);
        free(v57);

        goto LABEL_29;
      }

      v19 = [v15 defaultManager];
      v20 = sub_22B3F60F4();
      v60[0] = 0;
      v21 = [v19 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:v60];

      if (v21)
      {
        v22 = v60[0];
        goto LABEL_6;
      }

      v43 = v60[0];
      v44 = sub_22B3F6064();

      swift_willThrow();
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v45 = sub_22B3F6464();
      __swift_project_value_buffer(v45, qword_28140D680);
      v46 = v44;
      v47 = sub_22B3F6444();
      v48 = sub_22B3F68C4();

      v49 = os_log_type_enabled(v47, v48);
      v12 = v56;
      if (v49)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        v52 = v44;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_22B3A7000, v47, v48, "Failed to create directory BlackPearl/mlmodelc %@", v50, 0xCu);
        sub_22B3B4B3C(v51, &qword_27D8BE078, &qword_22B3F8C50);
        MEMORY[0x231890C40](v51, -1, -1);
        MEMORY[0x231890C40](v50, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v9, v2);
      (*(v3 + 56))(a1, 1, 1, v2);
      v40 = v57;
    }

    else
    {
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v36 = sub_22B3F6464();
      __swift_project_value_buffer(v36, qword_28140D680);
      v37 = sub_22B3F6444();
      v38 = sub_22B3F68C4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_22B3A7000, v37, v38, "Failed to determine path to blackpearl cache", v39, 2u);
        MEMORY[0x231890C40](v39, -1, -1);
      }

      (*(v3 + 56))(a1, 1, 1, v2);
      v40 = v11;
    }

    free(v40);

    goto LABEL_29;
  }

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v32 = sub_22B3F6464();
  __swift_project_value_buffer(v32, qword_28140D680);
  v33 = sub_22B3F6444();
  v34 = sub_22B3F68C4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_22B3A7000, v33, v34, "Container path not found or entitled to the process", v35, 2u);
    MEMORY[0x231890C40](v35, -1, -1);
  }

  (*(v3 + 56))(a1, 1, 1, v2);
LABEL_29:
  v54 = *MEMORY[0x277D85DE8];
}

uint64_t static TrialLoader.compileModel(packageURL:modelName:modelVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char *a6@<X8>)
{
  v130 = a1;
  v134 = a6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE098, &unk_22B3F7A60);
  v10 = *(*(v124 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v124);
  v126 = (&v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v125 = (&v114 - v14);
  MEMORY[0x28223BE20](v13);
  v123 = (&v114 - v15);
  v16 = sub_22B3F60A4();
  v122 = *(v16 - 8);
  v17 = v122[8];
  MEMORY[0x28223BE20](v16);
  v128 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22B3F6184();
  v129 = *(v19 - 8);
  v20 = v129[8];
  v21 = MEMORY[0x28223BE20](v19);
  v117 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v120 = &v114 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v119 = &v114 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v121 = &v114 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v114 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A0, &qword_22B3F7FD0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v118 = (&v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x28223BE20](v33);
  v127 = &v114 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v114 - v38;
  MEMORY[0x28223BE20](v37);
  v136 = &v114 - v40;
  v137 = a3;
  v140 = 95;
  v141 = 0xE100000000000000;
  v131 = a2;
  v138 = a2;
  v139 = a3;

  v138 = sub_22B3F6754();
  v139 = v41;
  sub_22B3F6664();
  v132 = a4;
  v133 = a5;
  v140 = a4;
  v141 = a5;
  v138 = sub_22B3F6754();
  v139 = v42;
  sub_22B3F6664();
  v43 = v129;
  v44 = v138;
  v45 = v139;
  type metadata accessor for TrialLoader();
  sub_22B3AFFBC(v39);
  v135 = v43[6];
  if (v135(v39, 1, v19) == 1)
  {
    sub_22B3B4B3C(v39, &qword_27D8BE0A0, &qword_22B3F7FD0);
    v46 = 1;
    v47 = v19;
    v48 = v136;
  }

  else
  {
    v140 = v44;
    v141 = v45;
    v49 = v122;
    v50 = v128;
    (v122[13])(v128, *MEMORY[0x277CC91D8], v16);
    sub_22B3B4258();
    sub_22B3F6174();
    (v49[1])(v50, v16);
    v51 = v43[1];
    v51(v39, v19);
    v48 = v136;
    sub_22B3F6114();
    v51(v30, v19);
    v46 = 0;
    v47 = v19;
  }

  v128 = v43[7];
  v129 = v43 + 7;
  (v128)(v48, v46, 1, v47);
  v52 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  [v52 setComputeUnits_];
  [v52 setExperimentalMLE5BNNSGraphBackendUsage_];
  v53 = v127;
  sub_22B3B4B9C(v48, v127, &qword_27D8BE0A0, &qword_22B3F7FD0);
  v54 = v43;
  if (v135(v53, 1, v47) == 1)
  {

    sub_22B3B4B3C(v53, &qword_27D8BE0A0, &qword_22B3F7FD0);
  }

  else
  {
    v55 = sub_22B3AB684();
    v56 = v43[1];
    v127 = (v43 + 1);
    v122 = v56;
    (v56)(v53, v47);
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v57 = sub_22B3F6464();
    v116 = __swift_project_value_buffer(v57, qword_28140D680);
    v58 = sub_22B3F6444();
    v59 = sub_22B3F68B4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 67109120;
      *(v60 + 4) = v55 & 1;
      _os_log_impl(&dword_22B3A7000, v58, v59, "Compile model exists %{BOOL}d", v60, 8u);
      MEMORY[0x231890C40](v60, -1, -1);
    }

    if (v55)
    {
      v61 = v118;
      sub_22B3B4B9C(v136, v118, &qword_27D8BE0A0, &qword_22B3F7FD0);
      if (v135(v61, 1, v47) == 1)
      {
        sub_22B3B4B3C(v61, &qword_27D8BE0A0, &qword_22B3F7FD0);
        result = sub_22B3F6B14();
        __break(1u);
      }

      else
      {

        v62 = v54[4];
        v63 = v121;
        v118 = v54 + 4;
        v115 = v62;
        v62(v121, v61, v47);
        v64 = v54[2];
        v65 = v119;
        v64(v119, v63, v47);
        v66 = sub_22B3F6444();
        v67 = v47;
        v68 = sub_22B3F68A4();
        v69 = os_log_type_enabled(v66, v68);
        v135 = v64;
        if (v69)
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v140 = v71;
          *v70 = 136315138;
          v72 = sub_22B3F60B4();
          v74 = v73;
          (v122)(v65, v67);
          v75 = sub_22B3BDABC(v72, v74, &v140);
          v63 = v121;

          *(v70 + 4) = v75;
          _os_log_impl(&dword_22B3A7000, v66, v68, "Using complied Model from cache %s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v71);
          MEMORY[0x231890C40](v71, -1, -1);
          v76 = v70;
          v64 = v135;
          MEMORY[0x231890C40](v76, -1, -1);
        }

        else
        {

          (v122)(v65, v67);
        }

        v100 = v67;
        sub_22B3B41C4(0, &qword_28140BF50, 0x277CBFF20);
        v101 = v120;
        v64(v120, v63, v67);
        v102 = v64;
        v103 = v52;
        v127 = sub_22B3B3778(v101, v103);

        sub_22B3B4B3C(v136, &qword_27D8BE0A0, &qword_22B3F7FD0);
        v104 = v115;
        v115(v117, v63, v100);
        v105 = type metadata accessor for BlackPearlModel(0);
        v106 = v134;
        v102(&v134[v105[6]], v130, v100);
        v107 = v105[7];
        v108 = v128;
        (v128)(&v106[v107], 1, 1, v100);
        v109 = v100;
        v110 = v105[8];
        v111 = v132;
        v112 = v137;
        *v106 = v131;
        *(v106 + 1) = v112;
        v113 = v133;
        *(v106 + 2) = v111;
        *(v106 + 3) = v113;

        sub_22B3B4B3C(&v106[v107], &qword_27D8BE0A0, &qword_22B3F7FD0);
        v104(&v106[v107], v117, v109);
        result = (v108)(&v106[v107], 0, 1, v109);
        *&v106[v110] = v127;
        v106[v105[9]] = 1;
      }

      return result;
    }

    v48 = v136;
  }

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v135 = v47;
  v77 = sub_22B3F6464();
  __swift_project_value_buffer(v77, qword_28140D680);
  v78 = sub_22B3F6444();
  v79 = sub_22B3F68A4();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_22B3A7000, v78, v79, "Compiled model not found in cache", v80, 2u);
    MEMORY[0x231890C40](v80, -1, -1);
  }

  v81 = v131;
  _s20MCCKitCategorization11TrialLoaderC16cleanCachedModel9modelNameySS_tFZ_0(v131, v137);
  v82 = v123;
  v83 = v124;
  v84 = v130;
  v85 = static TrialLoader.compileAndCacheModel(config:packageURL:compiledModelCachePath:)(v123 + *(v124 + 48), v52, v130, v48);

  sub_22B3B4B3C(v48, &qword_27D8BE0A0, &qword_22B3F7FD0);
  *v82 = v85;
  v86 = v125;
  sub_22B3B4B9C(v82, v125, &qword_27D8BE098, &unk_22B3F7A60);

  v136 = *(v83 + 48);
  v87 = type metadata accessor for BlackPearlModel(0);
  v88 = v54[2];
  v89 = v54;
  v91 = v134;
  v90 = v135;
  v88(&v134[v87[6]], v84, v135);
  v92 = v126;
  sub_22B3B4154(v82, v126);
  v127 = *v92;
  v130 = *(v83 + 48);
  v93 = v90;
  v94 = v87[7];
  v95 = v90;
  v96 = v128;
  (v128)(v91 + v94, 1, 1, v95);
  v124 = v87[8];
  v97 = v137;
  *v91 = v81;
  v91[1] = v97;
  v98 = v133;
  v91[2] = v132;
  v91[3] = v98;

  sub_22B3B4B3C(v91 + v94, &qword_27D8BE0A0, &qword_22B3F7FD0);
  (v89[4])(v91 + v94, v86 + v136, v93);
  (v96)(v91 + v94, 0, 1, v93);
  *(v91 + v124) = v127;
  *(v91 + v87[9]) = 1;
  return (v89[1])(v92 + v130, v93);
}

uint64_t static TrialLoader.compileAndCacheModel(config:packageURL:compiledModelCachePath:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v80 = a1;
  v81 = a4;
  v84[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A0, &qword_22B3F7FD0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v79 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - v9;
  v11 = sub_22B3F6184();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v76 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v75 = (&v70 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v77 = &v70 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v70 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v70 - v23;
  v25 = objc_opt_self();
  v26 = sub_22B3F60F4();
  v84[0] = 0;
  v27 = [v25 compileModelAtURL:v26 error:v84];

  v28 = v84[0];
  if (v27)
  {
    sub_22B3F6134();
    v29 = v28;

    sub_22B3B41C4(0, &qword_28140BF50, 0x277CBFF20);
    v30 = v24;
    v31 = *(v12 + 16);
    v82 = v30;
    v31(v22);
    v32 = a2;
    v78 = sub_22B3B3778(v22, v32);

    v33 = *(v12 + 48);
    v34 = v81;
    if (v33(v81, 1, v11) == 1)
    {
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v35 = sub_22B3F6464();
      __swift_project_value_buffer(v35, qword_28140D680);
      v36 = sub_22B3F6444();
      v37 = sub_22B3F68C4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_22B3A7000, v36, v37, "Compiled Model Caching path is nil, returning non cached instance", v38, 2u);
        MEMORY[0x231890C40](v38, -1, -1);
      }
    }

    else
    {
      sub_22B3B4B9C(v34, v10, &qword_27D8BE0A0, &qword_22B3F7FD0);
      if (v33(v10, 1, v11) == 1)
      {
        sub_22B3B4B3C(v10, &qword_27D8BE0A0, &qword_22B3F7FD0);
      }

      else
      {
        v39 = v77;
        (*(v12 + 32))();
        v40 = [objc_opt_self() defaultManager];
        v41 = sub_22B3B322C();

        if (v41)
        {
          (*(v12 + 8))(v39, v11);
        }

        else
        {
          if (qword_28140BFC8 != -1)
          {
            swift_once();
          }

          v42 = sub_22B3F6464();
          __swift_project_value_buffer(v42, qword_28140D680);
          v43 = v75;
          (v31)(v75, v39, v11);
          (v31)(v76, v82, v11);
          v44 = sub_22B3F6444();
          v45 = sub_22B3F68C4();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v84[0] = v74;
            *v46 = 136315394;
            v73 = v45;
            v47 = sub_22B3F60B4();
            v49 = v48;
            v71 = *(v12 + 8);
            v72 = v12 + 8;
            v71(v43, v11);
            v50 = sub_22B3BDABC(v47, v49, v84);
            v75 = v44;
            v51 = v50;
            v34 = v81;

            *(v46 + 4) = v51;
            *(v46 + 12) = 2080;
            sub_22B3B42AC(&qword_27D8BE0B0, MEMORY[0x277CC9260]);
            v52 = v76;
            v53 = sub_22B3F6C74();
            v55 = v54;
            v56 = v71;
            v71(v52, v11);
            v57 = sub_22B3BDABC(v53, v55, v84);

            *(v46 + 14) = v57;
            v58 = v75;
            _os_log_impl(&dword_22B3A7000, v75, v73, "Failed to copy model to permanent cache path %s from %s", v46, 0x16u);
            v59 = v74;
            swift_arrayDestroy();
            MEMORY[0x231890C40](v59, -1, -1);
            MEMORY[0x231890C40](v46, -1, -1);

            v56(v77, v11);
          }

          else
          {

            v60 = *(v12 + 8);
            v60(v76, v11);
            v60(v43, v11);
            v60(v39, v11);
          }
        }
      }
    }

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v61 = sub_22B3F6464();
    __swift_project_value_buffer(v61, qword_28140D680);
    v62 = sub_22B3F6444();
    v63 = sub_22B3F68A4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_22B3A7000, v62, v63, "Complied Model at runtime as no cache exists", v64, 2u);
      MEMORY[0x231890C40](v64, -1, -1);
    }

    v65 = v79;
    sub_22B3B4B9C(v34, v79, &qword_27D8BE0A0, &qword_22B3F7FD0);
    if (v33(v65, 1, v11) == 1)
    {
      (*(v12 + 32))(v80, v82, v11);
      if (v33(v65, 1, v11) != 1)
      {
        sub_22B3B4B3C(v65, &qword_27D8BE0A0, &qword_22B3F7FD0);
      }
    }

    else
    {
      (*(v12 + 8))(v82, v11);
      (*(v12 + 32))(v80, v65, v11);
    }

    v66 = *MEMORY[0x277D85DE8];
    return v78;
  }

  else
  {
    v68 = v84[0];
    v69 = sub_22B3F6064();

    swift_willThrow();
    v84[0] = 0;
    v84[1] = 0xE000000000000000;
    sub_22B3F6AC4();
    MEMORY[0x23188FF80](0xD000000000000014, 0x800000022B3FA6F0);
    v83 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
    sub_22B3F6B04();
    result = sub_22B3F6B14();
    __break(1u);
  }

  return result;
}

uint64_t sub_22B3B2568@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_blackPearlLevels;
  swift_beginAccess();
  return sub_22B3B2A74(v3 + v4, a1);
}

uint64_t sub_22B3B25C4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_blackPearlLevels;
  swift_beginAccess();
  sub_22B3B2AD8(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t (*sub_22B3B2628())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_22B3B268C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *a1;
  v3 = type metadata accessor for TrialLoader();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  result = TrialLoader.init(withNLPLevel:)(&v8);
  *a2 = v6;
  return result;
}

id sub_22B3B26E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  [*(v3 + 16) lock];
  v4 = OBJC_IVAR____TtC20MCCKitCategorization11TrialLoader_blackPearlLevels;
  swift_beginAccess();
  sub_22B3B2A74(v3 + v4, a1);
  return sub_22B3AFEC4(v3);
}

uint64_t sub_22B3B27A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE080, &qword_22B3F7A30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = *v3;
  v12 = sub_22B3F67E4();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;

  sub_22B3AFB54(0, 0, v10, &unk_22B3F7C90, v13);
}

uint64_t TrialLoader.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22B3F6D34();
  MEMORY[0x231890640](v1);
  return sub_22B3F6D54();
}

uint64_t sub_22B3B2990()
{
  v1 = *v0;
  sub_22B3F6D34();
  MEMORY[0x231890640](v1);
  return sub_22B3F6D54();
}

uint64_t sub_22B3B29D8()
{
  v1 = *v0;
  sub_22B3F6D34();
  MEMORY[0x231890640](v1);
  return sub_22B3F6D54();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22B3B2A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlackPearlLevels();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B3B2AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlackPearlLevels();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_22B3B2B84()
{
  result = qword_28140BFA0;
  if (!qword_28140BFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BE070, &unk_22B3F7A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140BFA0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22B3B2C30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlackPearlLevels();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B3B2C94(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_22B3B2CF4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B3B2DEC;

  return v7(a1);
}

uint64_t sub_22B3B2DEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_22B3B2EE4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_22B3B2F04(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B3B2F98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B3B4FF4;

  return sub_22B3AD988(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for TrialLoader()
{
  result = qword_28140D240;
  if (!qword_28140D240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22B3B30D4()
{
  result = qword_27D8BE090;
  if (!qword_27D8BE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE090);
  }

  return result;
}

uint64_t sub_22B3B3128@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22B3B3158(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B3B4FF4;

  return sub_22B3AF8F8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22B3B322C()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_22B3F6154();
  v2 = sub_22B3F6564();

  v3 = [v1 fileExistsAtPath_];

  if (v3)
  {
    v4 = [v0 defaultManager];
    v5 = sub_22B3F60F4();
    v23 = 0;
    v6 = [v4 removeItemAtURL:v5 error:&v23];

    v7 = v23;
    if (!v6)
    {
LABEL_6:
      v15 = v7;
      v16 = sub_22B3F6064();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0C0, qword_22B3F8B70);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22B3F79B0;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_22B3F6AC4();
      MEMORY[0x23188FF80](0xD000000000000014, 0x800000022B3FA7D0);
      sub_22B3F6184();
      sub_22B3B42AC(&qword_27D8BE0B0, MEMORY[0x277CC9260]);
      v18 = sub_22B3F6C74();
      MEMORY[0x23188FF80](v18);

      MEMORY[0x23188FF80](544175136, 0xE400000000000000);
      v19 = sub_22B3F6C74();
      MEMORY[0x23188FF80](v19);

      MEMORY[0x23188FF80](8250, 0xE200000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
      sub_22B3F6B04();
      v20 = v23;
      v21 = v24;
      *(v17 + 56) = MEMORY[0x277D837D0];
      *(v17 + 32) = v20;
      *(v17 + 40) = v21;
      sub_22B3F6D14();

      result = 0;
      goto LABEL_7;
    }

    v8 = v23;
  }

  v9 = [v0 defaultManager];
  v10 = sub_22B3F60F4();
  v11 = sub_22B3F60F4();
  v23 = 0;
  v12 = [v9 copyItemAtURL:v10 toURL:v11 error:&v23];

  v7 = v23;
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = v23;
  result = 1;
LABEL_7:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B3B3584(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0D8, &qword_22B3F7CB0);
    v3 = sub_22B3F6A84();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_22B3F6594();
      sub_22B3F6D34();
      v29 = v7;
      sub_22B3F6624();
      v9 = sub_22B3F6D54();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_22B3F6594();
        v20 = v19;
        if (v18 == sub_22B3F6594() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_22B3F6C84();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_22B3B3778(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22B3F60F4();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_22B3F6184();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_22B3F6064();

    swift_willThrow();
    v11 = sub_22B3F6184();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

void _s20MCCKitCategorization11TrialLoaderC16cleanCachedModel9modelNameySS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v81[2] = *MEMORY[0x277D85DE8];
  v3 = sub_22B3F6184();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v64 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A0, &qword_22B3F7FD0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  v20 = [objc_opt_self() defaultManager];
  type metadata accessor for TrialLoader();
  sub_22B3AFFBC(v19);
  sub_22B3B4B9C(v19, v17, &qword_27D8BE0A0, &qword_22B3F7FD0);
  v77 = v4;
  if ((*(v4 + 48))(v17, 1, v3) == 1)
  {
    sub_22B3B4B3C(v19, &qword_27D8BE0A0, &qword_22B3F7FD0);

    v21 = v17;
LABEL_18:
    sub_22B3B4B3C(v21, &qword_27D8BE0A0, &qword_22B3F7FD0);
    goto LABEL_19;
  }

  v65 = v19;
  (*(v77 + 32))(v12, v17, v3);
  v22 = sub_22B3F60F4();
  v81[0] = 0;
  v23 = [v20 contentsOfDirectoryAtURL:v22 includingPropertiesForKeys:0 options:0 error:v81];

  v24 = v81[0];
  if (v23)
  {
    v64 = v12;
    v25 = sub_22B3F6794();
    v26 = v24;

    v81[0] = 95;
    v81[1] = 0xE100000000000000;
    v79 = v78;
    v80 = a2;

    v79 = sub_22B3F6754();
    v80 = v27;
    sub_22B3F6664();
    v29 = v70;
    v76 = *(v25 + 16);
    if (!v76)
    {
LABEL_17:

      (*(v77 + 8))(v64, v3);
      v21 = v65;
      goto LABEL_18;
    }

    v30 = 0;
    v73 = v25 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v74 = v79;
    v78 = v77 + 16;
    v75 = (v77 + 8);
    *&v28 = 136315138;
    v66 = v28;
    v68 = v10;
    v69 = v20;
    v71 = v25;
    v72 = v3;
    v67 = v80;
    while (v30 < *(v25 + 16))
    {
      v31 = *(v77 + 16);
      v31(v10, v73 + *(v77 + 72) * v30, v3);
      sub_22B3F60E4();
      v32 = sub_22B3F6714();

      if (v32)
      {
        v33 = sub_22B3F60F4();
        v81[0] = 0;
        v34 = [v20 removeItemAtURL:v33 error:v81];

        if (!v34)
        {
          v54 = v81[0];

          v29 = sub_22B3F6064();

          swift_willThrow();
          v55 = *v75;
          (*v75)(v10, v3);
          v55(v64, v3);
          goto LABEL_22;
        }

        v35 = qword_28140BFC8;
        v36 = v81[0];
        if (v35 != -1)
        {
          swift_once();
        }

        v37 = sub_22B3F6464();
        __swift_project_value_buffer(v37, qword_28140D680);
        v31(v29, v10, v3);
        v38 = v29;
        v39 = sub_22B3F6444();
        v40 = sub_22B3F68A4();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v81[0] = v42;
          *v41 = v66;
          v43 = sub_22B3F6154();
          v45 = v44;
          v46 = *v75;
          (*v75)(v38, v72);
          v47 = sub_22B3BDABC(v43, v45, v81);
          v10 = v68;

          *(v41 + 4) = v47;
          _os_log_impl(&dword_22B3A7000, v39, v40, "Cleaned old model from cache : %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x231890C40](v42, -1, -1);
          v48 = v41;
          v20 = v69;
          MEMORY[0x231890C40](v48, -1, -1);

          v46(v10, v72);
          v3 = v72;
        }

        else
        {

          v49 = *v75;
          (*v75)(v38, v3);
          v49(v10, v3);
        }

        v29 = v38;
        v25 = v71;
      }

      else
      {
        (*v75)(v10, v3);
      }

      if (v76 == ++v30)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v51 = v81[0];
    v52 = sub_22B3F6064();
    v53 = v77;
    v29 = v52;

    swift_willThrow();
    (*(v53 + 8))(v12, v3);
LABEL_22:
    sub_22B3B4B3C(v65, &qword_27D8BE0A0, &qword_22B3F7FD0);
    if (qword_28140BFC8 == -1)
    {
      goto LABEL_23;
    }
  }

  swift_once();
LABEL_23:
  v56 = sub_22B3F6464();
  __swift_project_value_buffer(v56, qword_28140D680);
  v57 = v29;
  v58 = sub_22B3F6444();
  v59 = sub_22B3F68C4();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138412290;
    v62 = v29;
    v63 = _swift_stdlib_bridgeErrorToNSError();
    *(v60 + 4) = v63;
    *v61 = v63;
    _os_log_impl(&dword_22B3A7000, v58, v59, "Failed old model cache cleanup : %@", v60, 0xCu);
    sub_22B3B4B3C(v61, &qword_27D8BE078, &qword_22B3F8C50);
    MEMORY[0x231890C40](v61, -1, -1);
    MEMORY[0x231890C40](v60, -1, -1);
  }

  else
  {
  }

LABEL_19:
  v50 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B3B4154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE098, &unk_22B3F7A60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B3B41C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_22B3B4258()
{
  result = qword_28140BFC0;
  if (!qword_28140BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140BFC0);
  }

  return result;
}

uint64_t sub_22B3B42AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B3B42F8()
{
  result = qword_27D8BE0B8;
  if (!qword_27D8BE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE0B8);
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

uint64_t sub_22B3B435C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22B3B43A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B3B4408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_22B3B4450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B3B44B8()
{
  result = type metadata accessor for BlackPearlLevels();
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

uint64_t getEnumTagSinglePayload for TrialLoader.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TrialLoader.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B3B48E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B3B49A0;

  return sub_22B3AD988(a1, v4, v5, v7, v6);
}

uint64_t sub_22B3B49A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_3Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B3B4ADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B3B4B3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22B3B4B9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B3B4C04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B3B4FF4;

  return sub_22B3B2CF4(a1, v5);
}

uint64_t sub_22B3B4CBC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B3B49A0;

  return sub_22B3B2CF4(a1, v5);
}

uint64_t sub_22B3B4D74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0E0, &qword_22B3F7CD0);
    v3 = sub_22B3F6A84();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_22B3F6D34();

      sub_22B3F6624();
      result = sub_22B3F6D54();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_22B3F6C84();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22B3B4F48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t TrialDeploymentType.hashValue.getter()
{
  v1 = *v0;
  sub_22B3F6D34();
  MEMORY[0x231890640](v1);
  return sub_22B3F6D54();
}

unint64_t sub_22B3B508C()
{
  result = qword_27D8BE0F0;
  if (!qword_27D8BE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE0F0);
  }

  return result;
}

uint64_t sub_22B3B50F0()
{
  type metadata accessor for DomainHelper();
  swift_allocObject();
  result = sub_22B3B5330();
  qword_27D8BE0F8 = result;
  return result;
}

uint64_t static DomainHelper.sharedInstance.getter()
{
  if (qword_27D8BDFD0 != -1)
  {
    swift_once();
  }
}

uint64_t *DomainHelper.__allocating_init(domainMap:personalDomains:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = sub_22B3B6248(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *DomainHelper.init(domainMap:personalDomains:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_22B3B61D0(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t sub_22B3B5330()
{
  v1 = v0;
  v2 = sub_22B3F6184();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() clientWithIdentifier_];
  v7 = sub_22B3F6564();
  v8 = sub_22B3F6564();
  v9 = [v6 levelForFactor:v7 withNamespaceName:v8];

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = [v9 fileValue];
  if (!v10)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 path];

  if (!v12)
  {
    goto LABEL_10;
  }

  sub_22B3F6594();

  v13 = sub_22B3F6564();
  v14 = sub_22B3F6564();
  v15 = [v6 levelForFactor:v13 withNamespaceName:v14];

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = [v15 fileValue];
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v16;
  v18 = [v16 path];

  if (v18)
  {
    sub_22B3F6594();

    sub_22B3F60D4();

    v19 = type metadata accessor for DomainMapDataFrame();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = DomainMapDataFrame.init(withFileAtPath:)(v5);
    v1[5] = v19;
    v1[6] = &protocol witness table for DomainMapDataFrame;
    v1[2] = v22;
    sub_22B3F60D4();

    v23 = *(v19 + 48);
    v24 = *(v19 + 52);
    swift_allocObject();
    v25 = DomainMapDataFrame.init(withFileAtPath:)(v5);

    v1[7] = v25;
    return v1;
  }

LABEL_10:
  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

uint64_t sub_22B3B568C()
{
  v1 = sub_22B3B4258();
  result = MEMORY[0x231890330](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v1);
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    while (*(v3 + 16) >= v4)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE100, &qword_22B3F7DB0);
      sub_22B3B635C();
      sub_22B3B63C0();
      v6 = sub_22B3F6774();
      v8 = v7;

      v10 = v0[5];
      v9 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v10);
      v11 = (*(v9 + 16))(v6, v8, v10, v9);
      if ((v12 & 1) == 0)
      {
        v13 = v11;

        return v13;
      }

      ++v5;

      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t sub_22B3B5820()
{
  v0 = sub_22B3B568C();

  return v0;
}

uint64_t sub_22B3B5870(uint64_t a1, unint64_t a2)
{
  sub_22B3B6414(a1, a2);
  sub_22B3B568C();
  v3 = v2;

  return v3;
}

unint64_t sub_22B3B58BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_22B3F6744() != a1 || v9 != a2)
  {
    v10 = sub_22B3F6C84();

    if (v10)
    {
      return v8;
    }

    v8 = sub_22B3F6644();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_22B3B59AC(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return -1;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return -1;
  }

  sub_22B3B6414(a1, a2);
  v3 = sub_22B3B568C();

  return v3;
}

uint64_t sub_22B3B5A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4 || (sub_22B3F6C84() & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    sub_22B3B568C();
    v6 = v5;
    v8 = v7;
    sub_22B3B568C();
    if (v6 == v10 && v8 == v9)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_22B3F6C84();
    }
  }

  return v4 & 1;
}

uint64_t sub_22B3B5AF0()
{
  sub_22B3B568C();
  v0 = sub_22B3B4258();
  v1 = MEMORY[0x231890330](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v0);

  v2 = *(v1 + 16);
  if (v2 >= 2)
  {
    v4 = v1 + 32 * v2;
    v5 = *(v4 - 32);
    v6 = *(v4 - 24);
    v7 = *(v4 - 16);
    v8 = *(v4 - 8);

    v9 = MEMORY[0x23188FF00](v5, v6, v7, v8);

    return v9;
  }

  else
  {

    return 0;
  }
}

void *sub_22B3B5BCC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22B3F5F94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B3B6414(a1, a2);
  v13 = v12;
  v57 = a1;
  v58 = a2;
  v14 = sub_22B3B4258();
  result = MEMORY[0x231890330](64, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v14);
  if (!result[2])
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v47 = v10;
  v48 = v7;
  v49 = v6;
  v16 = result[4];
  v17 = result[5];
  v18 = result[6];
  v19 = result[7];

  v50 = MEMORY[0x23188FF00](v16, v17, v18, v19);
  v21 = v20;

  v51 = v11;
  v57 = v11;
  v58 = v13;
  result = MEMORY[0x231890330](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v14);
  v22 = result;
  v23 = result[2];
  if (v23)
  {
    v44 = v21;
    v45 = v13;
    v46 = v14;
    v24 = 0;
    v52 = result + 4;
    while (v22[2] >= v23)
    {
      v57 = v22;
      v58 = v52;
      v59 = v24;
      v60 = (2 * v23) | 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE100, &qword_22B3F7DB0);
      sub_22B3B635C();
      sub_22B3B63C0();
      v25 = sub_22B3F6774();
      v27 = v26;

      v29 = v3[5];
      v28 = v3[6];
      __swift_project_boxed_opaque_existential_0(v3 + 2, v29);
      (*(v28 + 16))(v25, v27, v29, v28);
      if ((v30 & 1) == 0)
      {
        goto LABEL_8;
      }

      ++v24;

      if (v23 == v24)
      {
        v25 = 0;
        v27 = 0xE000000000000000;
LABEL_8:
        v13 = v45;
        v21 = v44;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v25 = 0;
  v27 = 0xE000000000000000;
LABEL_10:

  v31 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v31 = v25 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v51;
  if (v31)
  {
    v57 = v50;
    v58 = v21;

    MEMORY[0x23188FF80](32, 0xE100000000000000);

    v34 = v57;
    v33 = v58;
    v57 = v32;
    v58 = v13;
    v55 = v25;
    v56 = v27;
    v53 = 0;
    v54 = 0xE000000000000000;
    v35 = sub_22B3F6A04();
    v37 = v36;

    v57 = v35;
    v58 = v37;
    v55 = 46;
    v56 = 0xE100000000000000;
    v53 = 32;
    v54 = 0xE100000000000000;
    v38 = sub_22B3F6A04();
    v40 = v39;

    v57 = v34;
    v58 = v33;

    MEMORY[0x23188FF80](v38, v40);

    v41 = v47;
    sub_22B3F5F64();
    v42 = sub_22B3F69E4();
    (*(v48 + 8))(v41, v49);
  }

  else
  {

    return v50;
  }

  return v42;
}

uint64_t sub_22B3B6010()
{
  v0 = sub_22B3B568C();

  return sub_22B3D2AE0(v0);
}

uint64_t sub_22B3B6050(uint64_t a1, unint64_t a2)
{
  sub_22B3B6414(a1, a2);
  v2 = sub_22B3B568C();

  return sub_22B3D2AE0(v2);
}

uint64_t sub_22B3B60AC(uint64_t a1, unint64_t a2)
{
  sub_22B3B6414(a1, a2);
  v3 = sub_22B3F65D4();
  v5 = v4;

  v6 = *(v2 + 56);
  v7 = sub_22B3D0178(v3, v5);
  LODWORD(v6) = v8;

  return (v7 > 0) & ~v6;
}

uint64_t sub_22B3B6118()
{
  v1 = sub_22B3F65D4();
  v2 = *(v0 + 56);
  v4 = sub_22B3D0178(v1, v3);
  v6 = v5;

  return (v4 > 0) & ~v6;
}

uint64_t DomainHelper.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t DomainHelper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t *sub_22B3B61D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  a3[7] = a2;
  return a3;
}

uint64_t *sub_22B3B6248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DomainHelper();
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  v13[5] = a4;
  v13[6] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13 + 2);
  (*(v9 + 32))(boxed_opaque_existential_1, v12, a4);
  v13[7] = a2;
  return v13;
}

unint64_t sub_22B3B635C()
{
  result = qword_28140BF20;
  if (!qword_28140BF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BE100, &qword_22B3F7DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140BF20);
  }

  return result;
}

unint64_t sub_22B3B63C0()
{
  result = qword_28140BFB8;
  if (!qword_28140BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140BFB8);
  }

  return result;
}

unint64_t sub_22B3B6414(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (sub_22B3B4258(), (sub_22B3F6A24() & 1) == 0) || (sub_22B3B58BC(64, 0xE100000000000000, v3, a2), (v5 & 1) != 0))
  {

    return v3;
  }

  result = sub_22B3F6654();
  if (4 * v4 >= result >> 14)
  {
    v7 = sub_22B3F6764();
    v3 = MEMORY[0x23188FF00](v7);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t TokenMapDataFrame.__allocating_init(withFileAtPath:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TokenMapDataFrame.init(withFileAtPath:)(a1);
  return v2;
}

uint64_t TokenMapDataFrame.init(withFileAtPath:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B3F65C4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B3F64D4();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22B3F6504();
  v12 = *(v76 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v76);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22B3F6184();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = MEMORY[0x277D84F98];
  v81 = v20;
  v82 = (v2 + 16);
  v21 = *(v20 + 16);
  v75 = a1;
  v80 = v22;
  v21(v19, a1);
  v23 = [objc_opt_self() defaultManager];
  sub_22B3F6144();
  v24 = sub_22B3F6564();

  v25 = [v23 fileExistsAtPath_];

  if (!v25)
  {
LABEL_32:
    (*(v81 + 8))(v19, v80);
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_22B3F6AC4();

    v84 = 0xD000000000000023;
    v85 = 0x800000022B3FA9A0;
    sub_22B3BA3DC(&qword_27D8BE0B0, MEMORY[0x277CC9260]);
    v73 = sub_22B3F6C74();
    MEMORY[0x23188FF80](v73);

    goto LABEL_33;
  }

  v26 = sub_22B3F6194();
  v28 = v27;
  v79 = v7;
  v74 = v2;
  sub_22B3B7874(v26, v27);
  sub_22B3B7564(v26, v28);
  v84 = sub_22B3CCF0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE108, &qword_22B3F7E10);
  sub_22B3BA2E4();
  sub_22B3F64C4();
  v29 = sub_22B3F64E4();
  v31 = v30;
  sub_22B3B78C8(v26, v28);
  (*(v77 + 8))(v11, v78);
  (*(v12 + 8))(v15, v76);
  v32 = v81 + 8;
  v77 = *(v81 + 8);
  (v77)(v19, v80);
  v19 = v79;
  sub_22B3F65B4();
  v33 = sub_22B3F65A4();
  if (v34)
  {
    v78 = v31;
    v79 = v29;
    v81 = v32;
    v36 = sub_22B3B7014(0x7FFFFFFFFFFFFFFFuLL, 1, v33, v34, v35);
    v37 = *(v36 + 16);
    if (!v37)
    {

      v40 = MEMORY[0x277D84F90];
      v51 = *(MEMORY[0x277D84F90] + 16);
      if (!v51)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }

    v84 = MEMORY[0x277D84F90];
    v19 = &v84;
    v38 = v36;
    sub_22B3B791C(0, v37, 0);
    v39 = 0;
    v40 = v84;
    v41 = (v38 + 56);
    while (v39 < *(v38 + 16))
    {
      v19 = *(v41 - 3);
      v42 = *(v41 - 2);
      v43 = *(v41 - 1);
      v44 = *v41;

      v45 = MEMORY[0x23188FF00](v19, v42, v43, v44);
      v47 = v46;

      v84 = v40;
      v49 = v40[2];
      v48 = v40[3];
      if (v49 >= v48 >> 1)
      {
        v19 = &v84;
        sub_22B3B791C((v48 > 1), v49 + 1, 1);
        v40 = v84;
      }

      ++v39;
      v40[2] = v49 + 1;
      v50 = &v40[2 * v49];
      v50[4] = v45;
      v50[5] = v47;
      v41 += 4;
      if (v37 == v39)
      {

        v51 = v40[2];
        if (!v51)
        {
LABEL_26:
          sub_22B3B78C8(v79, v78);

          (v77)(v75, v80);
          return v74;
        }

LABEL_12:
        v52 = 0;
        v53 = v40 + 5;
        while (2)
        {
          if (v52 >= v40[2])
          {
            goto LABEL_28;
          }

          v56 = *(v53 - 1);
          v55 = *v53;
          v57 = v82;
          swift_beginAccess();

          v58 = *v57;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = *v57;
          v19 = v83;
          *v57 = 0x8000000000000000;
          v60 = sub_22B3B79DC(v56, v55);
          v62 = *(v19 + 16);
          v63 = (v61 & 1) == 0;
          v64 = __OFADD__(v62, v63);
          v65 = v62 + v63;
          if (v64)
          {
            goto LABEL_29;
          }

          v66 = v61;
          if (*(v19 + 24) >= v65)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_21;
            }

            v19 = &v83;
            v71 = v60;
            sub_22B3B9360();
            v60 = v71;
            ++v52;
            if (v66)
            {
              goto LABEL_13;
            }

LABEL_22:
            v54 = v83;
            v83[(v60 >> 6) + 8] |= 1 << v60;
            v68 = (v54[6] + 16 * v60);
            *v68 = v56;
            v68[1] = v55;
            *(v54[7] + 8 * v60) = v52;
            v69 = v54[2];
            v64 = __OFADD__(v69, 1);
            v70 = v69 + 1;
            if (v64)
            {
              goto LABEL_30;
            }

            v54[2] = v70;
          }

          else
          {
            sub_22B3B7C94(v65, isUniquelyReferenced_nonNull_native);
            v19 = v83;
            v60 = sub_22B3B79DC(v56, v55);
            if ((v66 & 1) != (v67 & 1))
            {
              goto LABEL_31;
            }

LABEL_21:
            ++v52;
            if ((v66 & 1) == 0)
            {
              goto LABEL_22;
            }

LABEL_13:
            v19 = v60;

            v54 = v83;
            *(v83[7] + 8 * v19) = v52;
          }

          *v82 = v54;
          swift_endAccess();
          v53 += 2;
          if (v51 == v52)
          {
            goto LABEL_26;
          }

          continue;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    sub_22B3F6CC4();
    __break(1u);
    goto LABEL_32;
  }

LABEL_33:
  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

unint64_t sub_22B3B7014@<X0>(unint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    result = sub_22B3C1890((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v32 = (result + 32 * v5);
    v32[4] = v7;
    v32[5] = v8;
    v32[6] = v9;
    v32[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22B3F6764();
    v8 = v29;
    v9 = v30;
    v10 = v31;

    result = sub_22B3C1890(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v43 = MEMORY[0x277D84F90];
  v15 = 15;
  v16 = 4294959064;
  v42 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (2)
    {
      v10 = v15;
      while (1)
      {
        v18 = sub_22B3F6744();
        v9 = v19;
        result = sub_22B3B9D18(v18, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        v20 = result;

        if ((v20 - 14) > 0xFFFFFFFB || (v20 - 8232) < 2 || v20 == 133)
        {
          break;
        }

        v10 = sub_22B3F6644();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

      if (v15 >> 14 == v17 && (a2 & 1) != 0)
      {
        v15 = sub_22B3F6644();
        v17 = v15 >> 14;
        if (v15 >> 14 != v14)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v21 = sub_22B3F6764();
    v39 = v23;
    v40 = v22;
    v24 = v43;
    v41 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_22B3C1890(0, *(v43 + 2) + 1, 1, v43);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v43 = v24;
    if (v27 >= v26 >> 1)
    {
      v43 = sub_22B3C1890((v26 > 1), v27 + 1, 1, v24);
    }

    v9 = v43;
    *(v43 + 2) = v27 + 1;
    v28 = &v43[32 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v41;
    *(v28 + 6) = v40;
    *(v28 + 7) = v39;
    v15 = sub_22B3F6644();
  }

  while (*(v43 + 2) != v42);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v43;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = sub_22B3F6764();
  v16 = v33;
  v9 = v34;
  v10 = v35;

  v14 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = sub_22B3C1890(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v43;
LABEL_40:
  v37 = *(result + 16);
  v36 = *(result + 24);
  if (v37 >= v36 >> 1)
  {
    result = sub_22B3C1890((v36 > 1), v37 + 1, 1, result);
  }

  *(result + 16) = v37 + 1;
  v38 = (result + 32 * v37);
  v38[4] = v11;
  v38[5] = v16;
  v38[6] = v9;
  v38[7] = v10;
  return result;
}

uint64_t sub_22B3B73FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_22B3B79DC(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t TokenMapDataFrame.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TokenMapDataFrame.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22B3B74F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TokenMapDataFrame();
  v4 = swift_allocObject();
  result = TokenMapDataFrame.init(withFileAtPath:)(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_22B3B7564(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x277CC9318];
      v30[4] = MEMORY[0x277CC9300];
      v30[0] = a1;
      v30[1] = a2;
      v10 = __swift_project_boxed_opaque_existential_0(v30, MEMORY[0x277CC9318]);
      v11 = *v10;
      v12 = v10[1];
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v28, 0, 14);
          v15 = v28;
          v14 = v28;
          goto LABEL_33;
        }

        v16 = *(v11 + 16);
        v17 = *(v11 + 24);
        v18 = sub_22B3F5FB4();
        if (v18)
        {
          v19 = sub_22B3F5FD4();
          v11 = v16 - v19;
          if (__OFSUB__(v16, v19))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v18 += v11;
        }

        v5 = __OFSUB__(v17, v16);
        v20 = v17 - v16;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v28[0] = *v10;
        LOWORD(v28[1]) = v12;
        BYTE2(v28[1]) = BYTE2(v12);
        BYTE3(v28[1]) = BYTE3(v12);
        BYTE4(v28[1]) = BYTE4(v12);
        BYTE5(v28[1]) = BYTE5(v12);
        v14 = v28 + BYTE6(v12);
        v15 = v28;
LABEL_33:
        sub_22B3BA098(v15, v14, &v29);
        __swift_destroy_boxed_opaque_existential_0(v30);
        result = sub_22B3F64F4();
        goto LABEL_34;
      }

      v21 = v11;
      v22 = v11 >> 32;
      v20 = v22 - v21;
      if (v22 >= v21)
      {
        v18 = sub_22B3F5FB4();
        if (!v18)
        {
LABEL_25:
          v24 = sub_22B3F5FC4();
          if (v24 >= v20)
          {
            v25 = v20;
          }

          else
          {
            v25 = v24;
          }

          v26 = (v25 + v18);
          if (v18)
          {
            v14 = v26;
          }

          else
          {
            v14 = 0;
          }

          v15 = v18;
          goto LABEL_33;
        }

        v23 = sub_22B3F5FD4();
        if (!__OFSUB__(v21, v23))
        {
          v18 += v21 - v23;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_22B3B78C8(a1, a2);
  v7 = sub_22B3F64B4();
  sub_22B3BA3DC(&qword_27D8BE148, MEMORY[0x277CC51E8]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  result = swift_willThrow();
LABEL_34:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B3B7874(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22B3B78C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_22B3B791C(char *a1, int64_t a2, char a3)
{
  result = sub_22B3E058C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B3B793C(char *a1, int64_t a2, char a3)
{
  result = sub_22B3E0698(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B3B795C(char *a1, int64_t a2, char a3)
{
  result = sub_22B3E078C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B3B797C(char *a1, int64_t a2, char a3)
{
  result = sub_22B3E0890(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B3B799C(char *a1, int64_t a2, char a3)
{
  result = sub_22B3E0AD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B3B79BC(void *a1, int64_t a2, char a3)
{
  result = sub_22B3E0D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_22B3B79DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22B3F6D34();
  sub_22B3F6624();
  v6 = sub_22B3F6D54();

  return sub_22B3B8F00(a1, a2, v6);
}

unint64_t sub_22B3B7A54(char a1)
{
  v3 = *(v1 + 40);
  sub_22B3F6D34();
  MEMORY[0x231890640](qword_22B3F7EB8[a1]);
  v4 = sub_22B3F6D54();

  return sub_22B3B8FB8(a1, v4);
}

unint64_t sub_22B3B7ACC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22B3F6D34();
  sub_22B3F6624();

  v4 = sub_22B3F6D54();

  return sub_22B3B9038(a1, v4);
}

unint64_t sub_22B3B7BC0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22B3F6D24();

  return sub_22B3B91F0(a1, v4);
}

unint64_t sub_22B3B7C04(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22B3F6594();
  sub_22B3F6D34();
  sub_22B3F6624();
  v4 = sub_22B3F6D54();

  return sub_22B3B925C(a1, v4);
}

uint64_t sub_22B3B7C94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE140, &unk_22B3F7EA8);
  v38 = a2;
  result = sub_22B3F6B44();
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
      sub_22B3F6D34();
      sub_22B3F6624();
      result = sub_22B3F6D54();
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

uint64_t sub_22B3B7F34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE138, &qword_22B3F7EA0);
  v35 = a2;
  result = sub_22B3F6B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + 40 * v21;
      v24 = *v23;
      v38 = *(v23 + 8);
      v37 = *(v23 + 24);
      v36 = *(v23 + 32);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_22B3F6D34();
      MEMORY[0x231890640](qword_22B3F7EB8[v22]);
      result = sub_22B3F6D54();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = *(v8 + 56) + 40 * v16;
      *v17 = v24;
      *(v17 + 8) = v38;
      *(v17 + 24) = v37;
      *(v17 + 32) = v36;
      ++*(v8 + 16);
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

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B3B8210(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE130, &qword_22B3F7E98);
  v38 = a2;
  result = sub_22B3F6B44();
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
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = *(v8 + 40);
      sub_22B3F6594();
      sub_22B3F6D34();
      sub_22B3F6624();
      v27 = sub_22B3F6D54();

      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
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

uint64_t sub_22B3B84D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE128, &qword_22B3F7E90);
  v36 = a2;
  result = sub_22B3F6B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v37 = *(v21 + v20);
      if ((v36 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_22B3F6594();
      sub_22B3F6D34();
      sub_22B3F6624();
      v25 = sub_22B3F6D54();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + v16) = v37;
      ++*(v8 + 16);
      v5 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B3B8790(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE120, &qword_22B3F7E88);
  result = sub_22B3F6B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_22B3F6D24();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22B3B89F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE118, &qword_22B3F7E80);
  result = sub_22B3F6B44();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      result = sub_22B3F6D24();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22B3B8C5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE110, &qword_22B3F7E78);
  v37 = a2;
  result = sub_22B3F6B44();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22B3F6D34();
      sub_22B3F6624();
      result = sub_22B3F6D54();
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_22B3B8F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22B3F6C84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22B3B8FB8(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_22B3F7EB8[*(*(v2 + 48) + result)] == qword_22B3F7EB8[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22B3B9038(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0xD000000000000011 : 0x726F707075536E75;
      v8 = v6 == 2 ? 0x800000022B3FA140 : 0xEB00000000646574;
      v9 = *(*(v23 + 48) + v4) ? 0x6E6974616CLL : 0x6873696C676E65;
      v10 = *(*(v23 + 48) + v4) ? 0xE500000000000000 : 0xE700000000000000;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0xD000000000000011 : 0x726F707075536E75;
      v14 = v5 == 2 ? 0x800000022B3FA140 : 0xEB00000000646574;
      v15 = v5 ? 0x6E6974616CLL : 0x6873696C676E65;
      v16 = v5 ? 0xE500000000000000 : 0xE700000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_22B3F6C84();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22B3B91F0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22B3B925C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22B3F6594();
      v9 = v8;
      if (v7 == sub_22B3F6594() && v9 == v10)
      {
        break;
      }

      v12 = sub_22B3F6C84();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_22B3B9360()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE140, &unk_22B3F7EA8);
  v2 = *v0;
  v3 = sub_22B3F6B34();
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

void *sub_22B3B94C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE138, &qword_22B3F7EA0);
  v2 = *v0;
  v3 = sub_22B3F6B34();
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
        v18 = *(v2 + 56) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *(v18 + 8);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v23 = *(v4 + 56) + 40 * v17;
        *v23 = v19;
        *(v23 + 8) = v22;
        *(v23 + 24) = v20;
        *(v23 + 32) = v21;
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

id sub_22B3B964C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE130, &qword_22B3F7E98);
  v2 = *v0;
  v3 = sub_22B3F6B34();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

id sub_22B3B97AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE128, &qword_22B3F7E90);
  v2 = *v0;
  v3 = sub_22B3F6B34();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        result = v18;
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

void *sub_22B3B9908()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE120, &qword_22B3F7E88);
  v2 = *v0;
  v3 = sub_22B3F6B34();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_22B3B9A54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE118, &qword_22B3F7E80);
  v2 = *v0;
  v3 = sub_22B3F6B34();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_22B3B9BB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE110, &qword_22B3F7E78);
  v2 = *v0;
  v3 = sub_22B3F6B34();
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

unint64_t sub_22B3B9D18(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_22B3B9E68(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_22B3F6AB4();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_22B3F6AF4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_22B3B9E68(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_22B3B9F00(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_22B3B9F74(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22B3B9F00(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_22B3CB7B0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22B3B9F74(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_22B3F6AF4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

_BYTE *sub_22B3BA098@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_22B3BA12C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22B3BA1E4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22B3BA260(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_22B3BA12C(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_22B3BA1E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22B3F5FF4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22B3F5FA4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22B3F61A4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22B3BA260(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22B3F5FF4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22B3F5FA4();
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

unint64_t sub_22B3BA2E4()
{
  result = qword_28140BF90;
  if (!qword_28140BF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BE108, &qword_22B3F7E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140BF90);
  }

  return result;
}

uint64_t sub_22B3BA3DC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_22B3BA428()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A0, &qword_22B3F7FD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v13 - v2;
  v0[3] = 0xD000000000000016;
  v0[4] = 0x800000022B3FA2B0;
  v0[5] = 0xD00000000000001CLL;
  v0[6] = 0x800000022B3FA2D0;
  v0[7] = 0xD000000000000018;
  v0[8] = 0x800000022B3FA2F0;
  v0[9] = 0xD00000000000001ALL;
  v0[10] = 0x800000022B3FA390;
  v0[11] = 0xD00000000000001DLL;
  v0[12] = 0x800000022B3FA3B0;
  v0[13] = 0xD000000000000016;
  v0[14] = 0x800000022B3FAC50;
  v0[15] = 0xD00000000000001FLL;
  v0[16] = 0x800000022B3FAC70;
  v0[17] = 0xD000000000000020;
  v0[18] = 0x800000022B3FAC90;
  v0[19] = 0xD00000000000001DLL;
  v0[20] = 0x800000022B3FACC0;
  v0[21] = 0xD00000000000001DLL;
  v0[22] = 0x800000022B3FACE0;
  v0[23] = 0xD000000000000013;
  v0[24] = 0x800000022B3FAD00;
  v4 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v5 = sub_22B3F6564();
  v6 = [v4 containerURLForSecurityApplicationGroupIdentifier_];

  if (v6)
  {
    sub_22B3F6134();

    v7 = sub_22B3F6184();
    (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  }

  else
  {
    v8 = sub_22B3F6184();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  }

  sub_22B3B4B3C(v3, &qword_27D8BE0A0, &qword_22B3F7FD0);
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_22B3F6564();
  v11 = [v9 initWithSuiteName_];

  v0[2] = v11;
  return v0;
}

void sub_22B3BA6F4(uint64_t *a1)
{
  v2 = v1[2];
  if (v2)
  {
    v55 = a1[10];
    v56 = a1[12];
    v62 = a1[11];
    v63 = a1[13];
    v64 = a1[14];
    v65 = a1[15];
    v66 = a1[17];
    v57 = a1[16];
    v58 = a1[18];
    v67 = a1[19];
    v60 = a1[8];
    v61 = a1[9];
    v3 = a1[6];
    v59 = a1[7];
    v5 = a1[4];
    v4 = a1[5];
    v6 = a1[2];
    v7 = a1[3];
    v8 = *a1;
    v9 = a1[1];
    v10 = v2;
    v11 = sub_22B3F6564();
    v12 = v1[3];
    v13 = v1[4];
    v14 = sub_22B3F6564();
    [v10 setObject:v11 forKey:v14];

    v15 = sub_22B3F6564();
    v16 = v1[5];
    v17 = v1[6];
    v18 = sub_22B3F6564();
    [v10 setObject:v15 forKey:v18];

    v19 = sub_22B3F6564();
    v20 = v1[7];
    v21 = v1[8];
    v22 = sub_22B3F6564();
    [v10 setObject:v19 forKey:v22];

    v23 = sub_22B3F6564();
    v24 = v1[9];
    v25 = v1[10];
    v26 = sub_22B3F6564();
    [v10 setObject:v23 forKey:v26];

    v27 = sub_22B3F6564();
    v28 = v1[11];
    v29 = v1[12];
    v30 = sub_22B3F6564();
    [v10 setObject:v27 forKey:v30];

    if (v62)
    {
      v31 = sub_22B3F6564();
    }

    else
    {
      v31 = 0;
    }

    v35 = v1[13];
    v36 = v1[14];
    v37 = sub_22B3F6564();
    [v10 setObject:v31 forKey:v37];
    swift_unknownObjectRelease();

    if (v63)
    {
      v38 = sub_22B3F6564();
    }

    else
    {
      v38 = 0;
    }

    v39 = v1[15];
    v40 = v1[16];
    v41 = sub_22B3F6564();
    [v10 setObject:v38 forKey:v41];
    swift_unknownObjectRelease();

    v42 = v1[17];
    v43 = v1[18];
    v44 = sub_22B3F6564();
    [v10 setInteger:v64 forKey:v44];

    v45 = v1[19];
    v46 = v1[20];
    v47 = sub_22B3F6564();
    [v10 setInteger:v65 forKey:v47];

    if (v66)
    {
      v48 = sub_22B3F6564();
    }

    else
    {
      v48 = 0;
    }

    v49 = v1[21];
    v50 = v1[22];
    v51 = sub_22B3F6564();
    [v10 setObject:v48 forKey:v51];
    swift_unknownObjectRelease();

    if (v67)
    {
      v52 = sub_22B3F6564();
    }

    else
    {
      v52 = 0;
    }

    v53 = v1[23];
    v54 = v1[24];
    v68 = sub_22B3F6564();
    [v10 setObject:v52 forKey:?];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v32 = sub_22B3F6464();
    __swift_project_value_buffer(v32, qword_28140D680);
    v68 = sub_22B3F6444();
    v33 = sub_22B3F68C4();
    if (os_log_type_enabled(v68, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22B3A7000, v68, v33, "Failed to load user defaults for suite group.com.apple.mail", v34, 2u);
      MEMORY[0x231890C40](v34, -1, -1);
    }
  }
}

void sub_22B3BAAE0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = sub_22B3F6564();
    v9 = [v7 valueForKey_];

    if (v9)
    {
      sub_22B3F6A44();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      sub_22B3BADA8(&v17, v19);
      sub_22B3BADA8(v19, a3);
      return;
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  sub_22B3B4B3C(&v17, &qword_27D8BE150, &qword_22B3F7F10);
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v10 = sub_22B3F6464();
  __swift_project_value_buffer(v10, qword_28140D680);

  v11 = sub_22B3F6444();
  v12 = sub_22B3F68C4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v19[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_22B3BDABC(a1, a2, v19);
    _os_log_impl(&dword_22B3A7000, v11, v12, "Unable to find the value for key: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x231890C40](v14, -1, -1);
    MEMORY[0x231890C40](v13, -1, -1);
  }

  *(a3 + 24) = MEMORY[0x277D837D0];
  *a3 = 16718;
  *(a3 + 8) = 0xE200000000000000;
}

uint64_t BlackPearlSharedDefaults.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 128);

  v8 = *(v0 + 144);

  v9 = *(v0 + 160);

  v10 = *(v0 + 176);

  v11 = *(v0 + 192);

  return v0;
}

uint64_t BlackPearlSharedDefaults.__deallocating_deinit()
{
  BlackPearlSharedDefaults.deinit();

  return MEMORY[0x2821FE8D8](v0, 200, 7);
}

_OWORD *sub_22B3BADA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

Swift::Bool __swiftcall BlackPearlModel.isModelAssetAvailable()()
{
  v1 = v0;
  v2 = type metadata accessor for BlackPearlModel(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v6 = sub_22B3F6464();
  __swift_project_value_buffer(v6, qword_28140D680);
  sub_22B3BD92C(v0, v5);
  v7 = sub_22B3F6444();
  v8 = sub_22B3F68A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    v11 = &v5[*(v2 + 24)];
    v12 = sub_22B3F6154();
    v14 = v13;
    sub_22B3BD990(v5);
    v15 = sub_22B3BDABC(v12, v14, &v22);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_22B3A7000, v7, v8, "Checking if model exists at %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x231890C40](v10, -1, -1);
    MEMORY[0x231890C40](v9, -1, -1);
  }

  else
  {

    sub_22B3BD990(v5);
  }

  v16 = [objc_opt_self() defaultManager];
  v17 = v1 + *(v2 + 24);
  sub_22B3F6154();
  v18 = sub_22B3F6564();

  v19 = [v16 fileExistsAtPath_];

  return v19;
}

Swift::Void __swiftcall BlackPearlModel.destroy()()
{
  v1 = type metadata accessor for BlackPearlModel(0);
  v2 = *(v1 + 32);

  *(v0 + v2) = 0;
  *(v0 + *(v1 + 36)) = 0;
}

uint64_t BlackPearlModel.init(name:version:compilePath:modelPath:model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v11 = type metadata accessor for BlackPearlModel(0);
  v12 = v11[7];
  v13 = sub_22B3F6184();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(&a8[v12], 1, 1, v13);
  v16 = v11[8];
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  sub_22B3BDED0(&a8[v12]);
  v17 = *(v14 + 32);
  v17(&a8[v12], a5, v13);
  v15(&a8[v12], 0, 1, v13);
  result = (v17)(&a8[v11[6]], a6, v13);
  *&a8[v16] = a7;
  a8[v11[9]] = 1;
  return result;
}

uint64_t sub_22B3BB2B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22B3B4258();
  v3 = MEMORY[0x231890330](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v2);

  if (v3[2] != 3)
  {
    goto LABEL_13;
  }

  v4 = v3[4];
  v5 = v3[5];
  if (!((v5 ^ v4) >> 14))
  {
    goto LABEL_13;
  }

  v7 = v3[6];
  v6 = v3[7];
  v8 = sub_22B3BF584(v3[4], v3[5], v7, v6, 10);
  if ((v9 & 0x100) != 0)
  {

    v10 = sub_22B3BEBF4(v4, v5, v7, v6, 10);
    v12 = v11;

    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v9)
    {
      goto LABEL_13;
    }

    v10 = v8;
  }

  if (v3[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  v13 = v3[8];
  v14 = v3[9];
  if (!((v14 ^ v13) >> 14))
  {
LABEL_13:

    goto LABEL_14;
  }

  v16 = v3[10];
  v15 = v3[11];
  v17 = sub_22B3BF584(v3[8], v3[9], v16, v15, 10);
  if ((v18 & 0x100) == 0)
  {
    if ((v18 & 1) == 0)
    {
      v19 = v17;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v19 = sub_22B3BEBF4(v13, v14, v16, v15, 10);
  v21 = v20;

  if (v21)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (v3[2] < 3uLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_13;
  }

  v23 = v3[12];
  v24 = v3[13];
  v26 = v3[14];
  v25 = v3[15];

  if (!((v24 ^ v23) >> 14))
  {
    goto LABEL_13;
  }

  v27 = sub_22B3BF584(v23, v24, v26, v25, 10);
  if ((v28 & 0x100) != 0)
  {
    v27 = sub_22B3BEBF4(v23, v24, v26, v25, 10);
  }

  v29 = v27;
  v30 = v28;

  if ((v30 & 1) == 0)
  {
    *a1 = v10;
    *(a1 + 8) = v19;
    *(a1 + 16) = v29;
    *(a1 + 24) = 0;
    return result;
  }

LABEL_14:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlModelVersion()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlSenderModelVersion()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlTSModelVersion()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlFinalRuleVersion()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlBreakthroughVersion()()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlTreatmentId()()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlExperimentId()()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlRolloutFactorPackId()()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlRolloutId()()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::Bool __swiftcall BlackPearlVersion.isCatModelInMLModelFormat()()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22B3F6724();
}

Swift::Bool __swiftcall BlackPearlVersion.isSenderModelInMLModelFormat()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22B3F6724();
}

Swift::Bool __swiftcall BlackPearlVersion.isTSModelInMLModelFormat()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_22B3F6724();
}

MCCKitCategorization::BlackPearlCategorizationVersion_optional __swiftcall BlackPearlVersion.getBlackPearlCategorizationVersion()()
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  *v0 = *(v1 + 160);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return result;
}

unint64_t sub_22B3BB718(unsigned __int8 a1)
{
  v1 = 0xD00000000000001DLL;
  if (a1 > 5u)
  {
    v6 = 0xD000000000000013;
    if (a1 != 10)
    {
      v6 = 0xD00000000000001FLL;
    }

    if (a1 == 9)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (a1 == 7)
    {
      v1 = 0xD000000000000020;
    }

    if (a1 == 6)
    {
      v1 = 0xD00000000000001FLL;
    }

    if (a1 <= 8u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v3 = 0xD00000000000001DLL;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000018;
    if (a1 == 1)
    {
      v4 = 0xD00000000000001CLL;
    }

    if (!a1)
    {
      v4 = 0xD000000000000016;
    }

    if (a1 <= 2u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22B3BB868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B3BFABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B3BB8A8(uint64_t a1)
{
  v2 = sub_22B3BDF38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B3BB8E4(uint64_t a1)
{
  v2 = sub_22B3BDF38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlackPearlVersion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE158, &qword_22B3F7FD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v43 = v1[3];
  v44 = v10;
  v11 = v1[4];
  v41 = v1[5];
  v42 = v11;
  v12 = v1[6];
  v39 = v1[7];
  v40 = v12;
  v13 = v1[8];
  v37 = v1[9];
  v38 = v13;
  v14 = v1[11];
  v35 = v1[10];
  v36 = v14;
  v15 = v1[13];
  v33 = v1[12];
  v34 = v15;
  v16 = v1[14];
  v31 = v1[15];
  v32 = v16;
  v17 = v1[17];
  v29 = v1[16];
  v30 = v17;
  v18 = v1[19];
  v27 = v1[18];
  v28 = v18;
  v19 = v1[21];
  v24 = v1[20];
  v25 = v19;
  v26 = v1[22];
  v50 = *(v1 + 184);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22B3BDF38();
  sub_22B3F6D74();
  LOBYTE(v46) = 0;
  v21 = v45;
  sub_22B3F6C14();
  if (!v21)
  {
    LOBYTE(v46) = 1;
    sub_22B3F6C14();
    LOBYTE(v46) = 2;
    sub_22B3F6C14();
    v45 = v4;
    LOBYTE(v46) = 3;
    sub_22B3F6C14();
    LOBYTE(v46) = 4;
    sub_22B3F6C14();
    LOBYTE(v46) = 5;
    sub_22B3F6BF4();
    LOBYTE(v46) = 6;
    sub_22B3F6BF4();
    LOBYTE(v46) = 7;
    sub_22B3F6C34();
    LOBYTE(v46) = 8;
    sub_22B3F6C34();
    LOBYTE(v46) = 9;
    sub_22B3F6BF4();
    LOBYTE(v46) = 10;
    sub_22B3F6BF4();
    v46 = v24;
    v47 = v25;
    v48 = v26;
    v49 = v50;
    v51 = 11;
    sub_22B3BDF8C();
    sub_22B3F6C04();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t BlackPearlVersion.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE170, &qword_22B3F7FE0);
  v5 = *(v59 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v59);
  v8 = &v37 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22B3BDF38();
  sub_22B3F6D64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  LOBYTE(v71[0]) = 0;
  v11 = sub_22B3F6BA4();
  v13 = v12;
  v58 = v11;
  LOBYTE(v71[0]) = 1;
  v14 = sub_22B3F6BA4();
  v57 = v15;
  v51 = v14;
  LOBYTE(v71[0]) = 2;
  v50 = sub_22B3F6BA4();
  v56 = v16;
  LOBYTE(v71[0]) = 3;
  v49 = sub_22B3F6BA4();
  v55 = v17;
  LOBYTE(v71[0]) = 4;
  v48 = sub_22B3F6BA4();
  v54 = v18;
  LOBYTE(v71[0]) = 5;
  v47 = sub_22B3F6B84();
  v53 = v19;
  LOBYTE(v71[0]) = 6;
  v46 = sub_22B3F6B84();
  v52 = v20;
  LOBYTE(v71[0]) = 7;
  v45 = sub_22B3F6BC4();
  LOBYTE(v71[0]) = 8;
  v44 = sub_22B3F6BC4();
  LOBYTE(v71[0]) = 9;
  v42 = sub_22B3F6B84();
  v22 = v21;
  LOBYTE(v71[0]) = 10;
  v41 = sub_22B3F6B84();
  v43 = v23;
  v77 = 11;
  sub_22B3BDFE0();
  sub_22B3F6B94();
  (*(v10 + 8))(v8, v59);
  v39 = v74;
  v40 = *(&v73 + 1);
  v76 = v75;
  v24 = v57;
  v25 = v58;
  v59 = v73;
  *&v60 = v58;
  *(&v60 + 1) = v13;
  *&v61 = v51;
  *(&v61 + 1) = v57;
  *&v62 = v50;
  v26 = v56;
  *(&v62 + 1) = v56;
  *&v63 = v49;
  *(&v63 + 1) = v55;
  *&v64 = v48;
  *(&v64 + 1) = v54;
  *&v65 = v47;
  *(&v65 + 1) = v53;
  *&v66 = v46;
  *(&v66 + 1) = v52;
  *&v67 = v45;
  *(&v67 + 1) = v44;
  *&v68 = v42;
  *(&v68 + 1) = v22;
  *&v69 = v41;
  *(&v69 + 1) = v43;
  v70[0] = v73;
  *&v70[1] = v74;
  v38 = v75;
  BYTE8(v70[1]) = v75;
  v27 = v64;
  v28 = v65;
  v29 = v67;
  a2[6] = v66;
  a2[7] = v29;
  a2[4] = v27;
  a2[5] = v28;
  v30 = v60;
  v31 = v61;
  v32 = v63;
  a2[2] = v62;
  a2[3] = v32;
  *a2 = v30;
  a2[1] = v31;
  v33 = v68;
  v34 = v69;
  v35 = v70[0];
  *(a2 + 169) = *(v70 + 9);
  a2[9] = v34;
  a2[10] = v35;
  a2[8] = v33;
  sub_22B3A9F54(&v60, v71);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v71[0] = v25;
  v71[1] = v13;
  v71[2] = v51;
  v71[3] = v24;
  v71[4] = v50;
  v71[5] = v26;
  v71[6] = v49;
  v71[7] = v55;
  v71[8] = v48;
  v71[9] = v54;
  v71[10] = v47;
  v71[11] = v53;
  v71[12] = v46;
  v71[13] = v52;
  v71[14] = v45;
  v71[15] = v44;
  v71[16] = v42;
  v71[17] = v22;
  v71[18] = v41;
  v71[19] = v43;
  v71[20] = v59;
  v71[21] = v40;
  v71[22] = v39;
  v72 = v38;
  return sub_22B3BE034(v71);
}

void __swiftcall BlackPearlThreshold.init(thresholdCommerce:thresholdEmployeeNews:thresholdEmployee:thresholdPersonal:thresholdP2C:thresholdSender:thresholdTS:thresholdCategoryTS:thresholdCorpEmployee:tsSenderMaxTokens:tsSubjectMaxTokens:)(MCCKitCategorization::BlackPearlThreshold *__return_ptr retstr, Swift::Double thresholdCommerce, Swift::Double thresholdEmployeeNews, Swift::Double thresholdEmployee, Swift::Double thresholdPersonal, Swift::Double thresholdP2C, Swift::Double thresholdSender, Swift::Double thresholdTS, Swift::Double thresholdCategoryTS, Swift::Double thresholdCorpEmployee, Swift::Int tsSenderMaxTokens, Swift::Int tsSubjectMaxTokens)
{
  retstr->thresholdCommerce = thresholdCommerce;
  retstr->thresholdEmployeeNews = thresholdEmployeeNews;
  retstr->thresholdEmployee = thresholdEmployee;
  retstr->thresholdPersonal = thresholdPersonal;
  retstr->thresholdP2C = thresholdP2C;
  retstr->thresholdSender = thresholdSender;
  retstr->thresholdTS = thresholdTS;
  retstr->thresholdCategoryTS = thresholdCategoryTS;
  retstr->thresholdCorpEmployee = thresholdCorpEmployee;
  retstr->tsSenderMaxTokens = tsSenderMaxTokens;
  retstr->tsSubjectMaxTokens = tsSubjectMaxTokens;
}

unint64_t sub_22B3BC570(unsigned __int8 a1)
{
  v1 = 0x6C6F687365726874;
  if (a1 <= 4u)
  {
    if (a1 == 3)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000011;
    }

    v6 = 0xD000000000000011;
    if (a1)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (a1 == 9)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000013;
    if (a1 == 6)
    {
      v4 = 0x6C6F687365726874;
    }

    if (a1 != 5)
    {
      v1 = v4;
    }

    if (a1 <= 7u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22B3BC6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B3BFE74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B3BC718(uint64_t a1)
{
  v2 = sub_22B3BE064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B3BC754(uint64_t a1)
{
  v2 = sub_22B3BE064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlackPearlThreshold.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE180, &qword_22B3F7FE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = *v1;
  v25 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v13 = v1[4];
  v12 = v1[5];
  v15 = v1[6];
  v14 = v1[7];
  v16 = v1[8];
  v17 = v1[9];
  v18 = v1[10];
  v19 = a1[3];
  v20 = a1[4];
  v21 = a1;
  v23 = v22;
  __swift_project_boxed_opaque_existential_0(v21, v19);
  sub_22B3BE064();
  sub_22B3F6D74();
  v36 = 0;
  sub_22B3F6C24();
  if (!v2)
  {
    v35 = 1;
    sub_22B3F6C24();
    v34 = 2;
    sub_22B3F6C24();
    v33 = 3;
    sub_22B3F6C24();
    v32 = 4;
    sub_22B3F6C24();
    v31 = 5;
    sub_22B3F6C24();
    v30 = 6;
    sub_22B3F6C24();
    v29 = 7;
    sub_22B3F6C24();
    v28 = 8;
    sub_22B3F6C24();
    v27 = 9;
    sub_22B3F6C34();
    v26 = 10;
    sub_22B3F6C34();
  }

  return (*(v5 + 8))(v8, v23);
}

uint64_t BlackPearlThreshold.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE190, &qword_22B3F7FF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22B3BE064();
  sub_22B3F6D64();
  if (!v2)
  {
    v43 = 0;
    sub_22B3F6BB4();
    v12 = v11;
    v42 = 1;
    sub_22B3F6BB4();
    v14 = v13;
    v41 = 2;
    sub_22B3F6BB4();
    v16 = v15;
    v40 = 3;
    sub_22B3F6BB4();
    v18 = v17;
    v39 = 4;
    sub_22B3F6BB4();
    v20 = v19;
    v38 = 5;
    sub_22B3F6BB4();
    v22 = v21;
    v37 = 6;
    sub_22B3F6BB4();
    v24 = v23;
    v36 = 7;
    sub_22B3F6BB4();
    v32 = v26;
    v35 = 8;
    sub_22B3F6BB4();
    v28 = v27;
    v34 = 9;
    v29 = sub_22B3F6BC4();
    v33 = 10;
    v30 = sub_22B3F6BC4();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v16;
    a2[3] = v18;
    a2[4] = v20;
    a2[5] = v22;
    v31 = v32;
    a2[6] = v24;
    a2[7] = v31;
    a2[8] = v28;
    a2[9] = v29;
    a2[10] = v30;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t BloomFilterData.init(commerceFilePath:guaranteeListFilePath:nerFilePath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22B3F6184();
  v12 = *(*(v8 - 8) + 32);
  (v12)((v8 - 8), a4, a1, v8);
  v9 = type metadata accessor for BloomFilterData(0);
  v12(a4 + *(v9 + 20), a2, v8);
  v10 = a4 + *(v9 + 24);

  return (v12)(v10, a3, v8);
}

uint64_t BloomFilterData.getCommerceFilePath()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22B3F6184();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BloomFilterData.getGuaranteeListFilePath()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BloomFilterData(0) + 20);
  v4 = sub_22B3F6184();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlackPearlModel.init(name:version:modelPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = type metadata accessor for BlackPearlModel(0);
  v9 = v8[7];
  v10 = sub_22B3F6184();
  v11 = *(*(v10 - 8) + 56);
  v11(&a5[v9], 1, 1, v10);
  v12 = v8[8];
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  *(a5 + 3) = a4;
  v13 = &a5[v8[6]];
  sub_22B3F60D4();

  sub_22B3BDED0(&a5[v9]);
  result = (v11)(&a5[v9], 1, 1, v10);
  *&a5[v12] = 0;
  a5[v8[9]] = 0;
  return result;
}

Swift::Void __swiftcall BlackPearlModel.loadModel()()
{
  v1 = v0;
  v2 = type metadata accessor for BlackPearlModel(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  if (BlackPearlModel.isModelAssetAvailable()())
  {
    type metadata accessor for TrialLoader();
    static TrialLoader.compileModel(packageURL:modelName:modelVersion:)(v0 + v2[6], v7, v6, v0[2], v0[3], v5);
    sub_22B3BE110(&v5[v2[7]], v0 + v2[7]);
    v8 = *&v5[v2[8]];
    v9 = v8;
    sub_22B3BD990(v5);
    v10 = v2[8];

    *(v1 + v10) = v8;
    *(v1 + v2[9]) = 1;
  }

  else
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v11 = sub_22B3F6464();
    __swift_project_value_buffer(v11, qword_28140D680);

    v17 = sub_22B3F6444();
    v12 = sub_22B3F68C4();
    if (os_log_type_enabled(v17, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      v15 = sub_22B3BDABC(v7, v6, &v18);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_22B3A7000, v17, v12, "No model asset found for %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x231890C40](v14, -1, -1);
      MEMORY[0x231890C40](v13, -1, -1);
    }

    else
    {

      v16 = v17;
    }
  }
}

uint64_t sub_22B3BD300@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_22B3F6184();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

MLModel_optional __swiftcall BlackPearlModel.getModel()()
{
  v1 = type metadata accessor for BlackPearlModel(0);
  if ((*(v0 + *(v1 + 36)) & 1) == 0)
  {
    BlackPearlModel.loadModel()();
  }

  v2 = *(v0 + *(v1 + 32));
  v3 = v2;
  v5 = v2;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

Swift::String __swiftcall BlackPearlCategorizationVersion.getVersionString()()
{
  v1 = v0[1];
  v2 = v0[2];
  v9 = *v0;
  v10 = sub_22B3F6C74();
  v11 = v3;
  MEMORY[0x23188FF80](46, 0xE100000000000000);
  v4 = sub_22B3F6C74();
  MEMORY[0x23188FF80](v4);

  MEMORY[0x23188FF80](46, 0xE100000000000000);
  v5 = sub_22B3F6C74();
  MEMORY[0x23188FF80](v5);

  v6 = v10;
  v7 = v11;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_22B3BD4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B3C01F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B3BD508(uint64_t a1)
{
  v2 = sub_22B3BE180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B3BD544(uint64_t a1)
{
  v2 = sub_22B3BE180();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlackPearlCategorizationVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE198, &qword_22B3F7FF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22B3BE180();
  sub_22B3F6D74();
  v16 = 0;
  sub_22B3F6C34();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_22B3F6C34();
  v14 = 2;
  sub_22B3F6C34();
  return (*(v5 + 8))(v8, v4);
}

uint64_t BlackPearlCategorizationVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE1A8, &qword_22B3F8000);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22B3BE180();
  sub_22B3F6D64();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_22B3F6BC4();
    v18 = 1;
    v16 = sub_22B3F6BC4();
    v17 = 2;
    v13 = sub_22B3F6BC4();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22B3BD92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlackPearlModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B3BD990(uint64_t a1)
{
  v2 = type metadata accessor for BlackPearlModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B3BD9EC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22B3BDA60(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_22B3BDABC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_22B3BDABC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22B3BDB88(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22B3B4F48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22B3BDB88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22B3BDC94(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22B3F6AF4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22B3BDC94(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B3C20EC(a1, a2);
  sub_22B3BDCE0(&unk_283F04F58);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22B3BDCE0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22B3BDDCC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_22B3BDDCC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE200, &qword_22B3F88F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_22B3BDEC0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}